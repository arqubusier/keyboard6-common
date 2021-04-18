from pcbnew import *
from math import pi
import re
board = GetBoard()

num = r'([-0-9.]+)'
pos_regex = r'\s*'.join([r'\[', num, r',', num, r',', num])
def place_connector(module_name, l):
    module = board.FindModuleByReference(module_name)
    for pos in re.findall(pos_regex, l):
        x = float(pos[0])
        y = -float(pos[1])
        point = pcbnew.wxPoint(FromMM(float(x)), FromMM(float(y)))
        module.SetPosition(point)
        module.SetOrientationDegrees(270)

def place_switches(l):
    n = 1
    for pos in re.findall(pos_regex, l):
        x = float(pos[0])
        y = -float(pos[1])
        sw = 'SW' + str(n)
        sw_module = board.FindModuleByReference(sw)
        point = pcbnew.wxPoint(FromMM(x), FromMM(y))
        if (sw_module.IsFlipped()):
            sw_module.SetPosition(point)
        else:
            sw_module.Flip(point)
        sw_module.SetOrientationDegrees(180)

        d_x = x + 3.2
        d_y = y + 4
        d = 'D' + str(n)
        d_module = board.FindModuleByReference(d)
        point = pcbnew.wxPoint(FromMM(d_x), FromMM(d_y))
        d_module.SetOrientationDegrees(270)
        d_module.SetPosition(point)

        n += 1
        
def place_thumbs(l):
    n = 27
    for pos in re.findall(pos_regex, l):
        x = float(pos[0])
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

def orient_thumbs(l):
    n = 27
    for match in re.findall(num, l):
        angle = float(match) + 180
        sw = 'SW' + str(n)
        module = board.FindModuleByReference(sw)
        module.SetOrientationDegrees(angle)
        n += 1

class Keyboard6Prep(pcbnew.ActionPlugin):
    def defaults(self):
        self.name = "Flip Board along a dimension and reference point."
        self.category = "N/A"
        self.description = "N/A"

    def Run(self):
        f = open("../positions.echo", "r")
        for l in  f:
            type = l.split(',')[0]
            print(l)
            if "trrs" in type:
                place_connector("J1", l)
            elif "usbminib" in type:
                place_connector("J2", l)
            elif "switches" in type:
                place_switches(l)
            elif "thumb_angles" in type:
                orient_thumbs(l)
            elif "thumb_positions" in type:
                place_thumbs(l)
        
        f.close()

FlipBoard().register()
