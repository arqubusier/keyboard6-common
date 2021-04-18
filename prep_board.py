import pcbnew
from math import pi
import re
import os
import wx

board = pcbnew.GetBoard()

num = r'([-0-9.]+)'
pos_regex = r'\s*'.join([r'\[', num, r',', num, r',', num])
def place_connector(module_name, l, mirror):
    module = board.FindModuleByReference(module_name)
    for pos in re.findall(pos_regex, l):
        x = float(pos[0])
        if (mirror):
            x = -x
        y = -float(pos[1])
        point = pcbnew.wxPoint(FromMM(float(x)), FromMM(float(y)))
        module.SetPosition(point)
        module.SetOrientationDegrees(270)

def place_switches(l, mirror):
    n = 1
    for pos in re.findall(pos_regex, l):
        x = float(pos[0])
        if (mirror):
            x = -x
        y = -float(pos[1])
        sw = 'SW' + str(n)
        sw_module = board.FindModuleByReference(sw)
        point = pcbnew.wxPoint(FromMM(x), FromMM(y))
        if (sw_module.IsFlipped()):
            sw_module.SetPosition(point)
        else:
            sw_module.Flip(point)
        sw_module.SetOrientationDegrees(180)

        x_offset = 3.2
        y_offset = 4
        d_x = x + x_offset
        d_y = y + y_offset
        d = 'D' + str(n)
        d_module = board.FindModuleByReference(d)
        point = pcbnew.wxPoint(FromMM(d_x), FromMM(d_y))
        d_module.SetOrientationDegrees(270)
        d_module.SetPosition(point)

        n += 1
        
def place_thumbs(l, mirror):
    n = 27
    for pos in re.findall(pos_regex, l):
        x = float(pos[0])
        if (mirror):
            x = -x
        y = -float(pos[1])
        sw = 'SW' + str(n)
        module = board.FindModuleByReference(sw)
        point = pcbnew.wxPoint(FromMM(x), FromMM(y))
        module.SetPosition(point)
        if (module.IsFlipped()):
            module.SetPosition(point)
        else:
            module.Flip(point)
        n += 1

def orient_thumbs(l, mirror):
    n = 27
    for match in re.findall(num, l):
        angle = float(match) + 180
        if (mirror):
            angle = -angle
        sw = 'SW' + str(n)
        module = board.FindModuleByReference(sw)
        module.SetOrientationDegrees(angle)
        n += 1

class Keyboard6Gui(wx.Frame):
    def __init__(self, parent):
        wx.Frame.__init__(self, parent, title="Keyboard6 prep")
        self.panel = wx.Panel(self)

        path_label = wx.StaticText(self.panel, label="Path to 'positions' file")
        self.path_text = wx.TextCtrl(self.panel, value="./positions.echo")
        path_box = wx.BoxSizer(wx.HORIZONTAL)
        path_box.Add(path_label, proportion=1)
        path_box.Add(self.path_text, proportion=3, flag=wx.EXPAND)

        mirror_label = wx.StaticText(self.panel, label="Mirror")
        self.mirror_check = wx.CheckBox(self.panel)
        mirror_box = wx.BoxSizer(wx.HORIZONTAL)
        mirror_box.Add(mirror_label, proportion=0)
        mirror_box.Add(self.mirror_check, proportion=0)

        button = wx.Button(self.panel, label="Run")

        box = wx.BoxSizer(wx.VERTICAL)
        box.Add(path_box, proportion=0)
        box.Add(mirror_box, proportion=0)
        box.Add(button, proportion=0)

        self.panel.SetSizer(box)
        self.Bind(wx.EVT_BUTTON, self.Run, id=button.GetId())

    def Run(self, event):
        print(os.getcwd())
        path = self.path_text.GetLineText(0)
        mirror = self.mirror_check.GetValue()
        print("positions: {}, mirror {}".format(path, mirror))
        f = open(path, "r")
        for l in  f:
            type = l.split(',')[0]
            print(l)
            if "trrs" in type:
                place_connector("J1", l, mirror)
            elif "usbminib" in type:
                place_connector("J2", l, mirror)
            elif "switches" in type:
                place_switches(l, mirror)
            elif "thumb_angles" in type:
                orient_thumbs(l, mirror)
            elif "thumb_positions" in type:
                place_thumbs(l, mirror)
        
        f.close()
        pcbnew.Refresh()

class Keyboard6Prep(ActionPlugin):
    def defaults(self):
        self.name = "Prepare keyboard6 layout."
        self.category = "N/A"
        self.description = "N/A"

    def Run(self):
        gui = Keyboard6Gui(None)
        gui.Show(True)
        return gui

Keyboard6Prep().register()
