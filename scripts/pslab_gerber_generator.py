from __future__ import print_function

import os
import glob

from gerber import common 
from gerber.layers import PCBLayer, DrillLayer
from gerber.render import RenderSettings
from gerber.render.cairo_backend import GerberCairoContext

from PIL import Image

cwd = os.getcwd()
GER_path = cwd + "/output/Gerber/"
IMG_path = cwd + "/output/Images/"
files = glob.glob(IMG_path + '*')
for f in files:
    os.remove(f)
try:
    os.mkdir(IMG_path)
except Exception as e:
    pass

Cairo = GerberCairoContext(scale=30)

front_layer_png = os.path.join(IMG_path, 'front-layer.png')
bottom_layer_png = os.path.join(IMG_path, 'bottom-layer.png')
signal_layer_png = os.path.join(IMG_path, 'signal-layer.png')
power_layer_png = os.path.join(IMG_path, 'power-layer.png')

eco_path = os.path.join(GER_path, 'PSLab_Eco1_User.gbr')
eco_layer = PCBLayer(eco_path, 'eco', common.read(eco_path))

edge_path = os.path.join(GER_path, 'PSLab_Edge_Cuts.gbr')
edge_layer = PCBLayer(edge_path, 'edgecut', common.read(edge_path))

drill_path = os.path.join(GER_path, 'PSLab.drl')
drill_layer = DrillLayer(drill_path, common.read(drill_path))

front_path = os.path.join(GER_path, 'PSLab_L1_Front.gbr')
front_layer = PCBLayer(front_path, 'top', common.read(front_path))

frontm_path = os.path.join(GER_path, 'PSLab_F_Mask.gbr')
frontm_layer = PCBLayer(frontm_path, 'topmask', common.read(frontm_path))

fronts_path = os.path.join(GER_path, 'PSLab_F_SilkS.gbr')
fronts_layer = PCBLayer(fronts_path, 'topsilk', common.read(fronts_path))

Cairo.render_layer(eco_layer)
Cairo.render_layer(front_layer)
Cairo.render_layer(frontm_layer)
Cairo.render_layer(fronts_layer)
Cairo.render_layer(drill_layer)
Cairo.render_layer(edge_layer)
Cairo.dump(front_layer_png)
Cairo.clear()
Image.open(front_layer_png)

print('Front layer image ready')

bottom_path = os.path.join(GER_path, 'PSLab_L4_Ground.gbr')
bottom_layer = PCBLayer(bottom_path, 'bottom', common.read(bottom_path))

bottomm_path = os.path.join(GER_path, 'PSLab_B_Mask.gbr')
bottomm_layer = PCBLayer(bottomm_path, 'bottommask', common.read(bottomm_path))

bottoms_path = os.path.join(GER_path, 'PSLab_B_SilkS.gbr')
bottoms_layer = PCBLayer(bottoms_path, 'bottomsilk', common.read(bottoms_path))

Cairo.render_layer(eco_layer, settings=RenderSettings(mirror=True))
Cairo.render_layer(bottom_layer)
Cairo.render_layer(bottomm_layer)
Cairo.render_layer(bottoms_layer)
Cairo.render_layer(edge_layer, settings=RenderSettings(mirror=True))
Cairo.render_layer(drill_layer, settings=RenderSettings(mirror=True))
Cairo.dump(bottom_layer_png)
Cairo.clear()
Image.open(bottom_layer_png)

print('Bottom layer image ready')

signal_path = os.path.join(GER_path, 'PSLab_L2_Signal.gbr')
signal_layer = PCBLayer(signal_path, 'internal_2', common.read(signal_path))

#Cairo.render_layer(eco_layer)
Cairo.render_layer(signal_layer)
Cairo.render_layer(drill_layer)
Cairo.render_layer(edge_layer)
Cairo.dump(signal_layer_png)
Cairo.clear()
Image.open(signal_layer_png)

print('Signal layer image ready')

power_path = os.path.join(GER_path, 'PSLab_L3_Power.gbr')
power_layer = PCBLayer(power_path, 'internal_3', common.read(power_path))

#Cairo.render_layer(eco_layer)
Cairo.render_layer(power_layer)
Cairo.render_layer(drill_layer)
Cairo.render_layer(edge_layer)
Cairo.dump(power_layer_png)
Cairo.clear()
Image.open(power_layer_png)

print('Power layer image ready')
