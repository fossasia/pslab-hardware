from __future__ import print_function

import pcbnew
import os
import glob

from gerber import common 
from gerber.layers import PCBLayer, DrillLayer
from gerber.render import RenderSettings
from gerber.render.cairo_backend import GerberCairoContext

from PIL import Image

cwd = os.getcwd()
print(cwd)
PCB_path = cwd + "/schematics/PSLab.kicad_pcb"
GER_path = cwd + "/output/Gerber/"
files = glob.glob(GER_path + '*')
for f in files:
    os.remove(f)
try:
    os.mkdir(GER_path)
except Exception as e:
    pass

IMG_path = cwd + "/output/Images/"
files = glob.glob(IMG_path + '*')
for f in files:
    os.remove(f)
try:
    os.mkdir(IMG_path)
except Exception as e:
    pass

PCB = pcbnew.LoadBoard(PCB_path)

driller = pcbnew.EXCELLON_WRITER(PCB)
driller.SetFormat(
    True, # Metric units
    pcbnew.GENDRILL_WRITER_BASE.DECIMAL_FORMAT, # Format
    3, # Integers 
    3) # Mantissa
driller.SetOptions(
    False, # Y axis mirror
    True, # Set header
    pcbnew.wxPoint(0,0), # Zero offset
    True) # Merge NPTH and PTH
driller.CreateDrillandMapFilesSet(
    GER_path, # Path
    True, # Enable drill file 
    True, # Enable map file
    None)

gerber_plotter = pcbnew.PLOT_CONTROLLER(PCB)
plotter = gerber_plotter.GetPlotOptions()
plotter.SetOutputDirectory(GER_path)
plotter.SetPlotFrameRef(False)
plotter.SetPlotValue(True)
plotter.SetPlotReference(True)
plotter.SetPlotViaOnMaskLayer(True)
plotter.SetExcludeEdgeLayer(False)
plotter.SetMirror(False)
plotter.SetAutoScale(False)

layers = [('L1.Front', pcbnew.F_Cu),
          ('F.Paste', pcbnew.F_Paste),
          ('F.SilkS', pcbnew.F_SilkS),
          ('F.Mask', pcbnew.F_Mask),
          ('L2.Signal', pcbnew.In1_Cu),
          ('L3.Power', pcbnew.In2_Cu),
          ('L4.Ground', pcbnew.B_Cu),
          ('B.Paste', pcbnew.B_Paste),
          ('B.SilkS', pcbnew.B_SilkS),
          ('B.Mask', pcbnew.B_Mask),
          ('Edge.Cuts', pcbnew.Edge_Cuts)]

for layer in layers:
    gerber_plotter.SetLayer(layer[1])
    gerber_plotter.OpenPlotfile(layer[0], pcbnew.PLOT_FORMAT_GERBER, layer[0])
    gerber_plotter.PlotLayer()

gerber_plotter.ClosePlot()

print('Gerber files generated. Image rendering in progress ...')

Cairo = GerberCairoContext(scale=30)

front_layer_png = os.path.join(IMG_path, 'front-layer.png')
bottom_layer_png = os.path.join(IMG_path, 'bottom-layer.png')
signal_layer_png = os.path.join(IMG_path, 'signal-layer.png')
power_layer_png = os.path.join(IMG_path, 'power-layer.png')

drill_path = os.path.join(GER_path, 'PSLab.drl')
drill_layer = DrillLayer(drill_path, common.read(drill_path))

front_path = os.path.join(GER_path, 'PSLab-L1.Front.gbr')
front_layer = PCBLayer(front_path, 'top', common.read(front_path))

frontm_path = os.path.join(GER_path, 'PSLab-F.Mask.gbr')
frontm_layer = PCBLayer(frontm_path, 'topmask', common.read(frontm_path))

fronts_path = os.path.join(GER_path, 'PSLab-F.SilkS.gbr')
fronts_layer = PCBLayer(fronts_path, 'topsilk', common.read(fronts_path))

Cairo.render_layer(front_layer)
Cairo.render_layer(frontm_layer)
Cairo.render_layer(fronts_layer)
Cairo.render_layer(drill_layer)
Cairo.dump(front_layer_png)
Cairo.clear()
Image.open(front_layer_png)

print('Front layer image ready')

bottom_path = os.path.join(GER_path, 'PSLab-L4.Ground.gbr')
bottom_layer = PCBLayer(bottom_path, 'bottom', common.read(bottom_path))

bottomm_path = os.path.join(GER_path, 'PSLab-B.Mask.gbr')
bottomm_layer = PCBLayer(bottomm_path, 'bottommask', common.read(bottomm_path))

bottoms_path = os.path.join(GER_path, 'PSLab-B.SilkS.gbr')
bottoms_layer = PCBLayer(bottoms_path, 'bottomsilk', common.read(bottoms_path))

Cairo.render_layer(bottom_layer)
Cairo.render_layer(bottomm_layer)
Cairo.render_layer(bottoms_layer)
Cairo.render_layer(drill_layer, settings=RenderSettings(mirror=True))
Cairo.dump(bottom_layer_png)
Cairo.clear()
Image.open(bottom_layer_png)

print('Bottom layer image ready')

signal_path = os.path.join(GER_path, 'PSLab-L2.Signal.gbr')
signal_layer = PCBLayer(signal_path, 'internal', common.read(signal_path))

Cairo.render_layer(signal_layer)
Cairo.render_layer(drill_layer)
Cairo.dump(signal_layer_png)
Cairo.clear()
Image.open(signal_layer_png)

print('Signal layer image ready')

power_path = os.path.join(GER_path, 'PSLab-L3.Power.gbr')
power_layer = PCBLayer(power_path, 'internal', common.read(power_path))

Cairo.render_layer(power_layer)
Cairo.render_layer(drill_layer)
Cairo.dump(power_layer_png)
Cairo.clear()
Image.open(power_layer_png)

print('Power layer image ready')
