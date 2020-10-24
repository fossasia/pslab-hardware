#
# Example python script to generate a BOM from a KiCad generic netlist
#
# Example: Sorted and Grouped HTML BOM
#
"""
    @package
    Generate a CSV BOM list.
    Components are sorted by ref and grouped by value
    Fields are (if exist)
    #, Description, Part Number, Quantity, Footprint, Value, Reference, Datasheet, Avg Price, Subtotal

    Command line:
    python "pathToFile/pslab_bom_generator.py" "%I" "%O"
"""

from __future__ import print_function

# Import the KiCad python helper module and the csv formatter
import kicad_netlist_reader
import sys
import string

H1 = "#,Description,Part Number,Quantity,Footprint,Value,Reference,Datasheet,Avg Price,Subtotal\n"
LB = "----,---------------------------------------------------------,-----------------------------\
-----------,--------------------------------------------------------------------------------------\
-----------------------------------------------------------------,--------------------------------\
--------------------------------------,-------------------------------,--------------,------------\
--------------------------------------------------------------------------------------------------\
----------------------------------------------------------------------------,---------------,-----\
--------\n"
SB = "----------------------------------------,---------------------------------------------------\
--------------------------------------------------------------------------------------------------\
--,----------------------------------------------------------------------,------------------------\
-------,--------------,---------------------------------------------------------------------------\
--------------------------------------------------------------------------------------------------\
-------------,---------------,-------------\n"

CSV = H1
# Generate an instance of a generic netlist, and load the netlist tree from
# the command line option. If the file doesn't exist, execution will stop
net = kicad_netlist_reader.netlist(sys.argv[1])

# Open a file to write to, if the file cannot be opened output to stdout
# instead
try:
    f = open(sys.argv[2] + '.csv', 'w')
except IOError:
    e = "Can't open output file for writing: " + sys.argv[2]
    print(__file__, ":", e, file=sys.stderr)
    f = sys.stdout

components = net.getInterestingComponents()

# Get all of the components in groups of matching parts + values
# (see kicad_netlist_reader.py)
grouped = net.groupComponents(components)

# Output all of the component information
runningIndex = 0
mainIndex = -1
mainIndices = list(string.ascii_uppercase[:len(grouped)])

itemDescriptions = {'J': 'Sockets', 
                    'R':'Resistors', 
                    'L':'Inductors', 
                    'D':'Diodes',
                    'Q':'Transistors', 
                    'C':'Capacitors',
                    'U':'Integrated Circuits',
                    'X':'Crystals',
                    'F':'Fuse',
                    'M':'Mounts',
                    'S':'Switches and Plugs',
                    'Z':'Accessories'}

oldGroup = '0'
totalQ = 0
for group in grouped:
    
    # Group is something like C1, C2, ...
    componentGroup = '"'
    refs = ""

    runningIndex = runningIndex + 1
    # Add the reference of every component in the group and keep a reference
    # to the component so that the other data can be filled in once per group
    for component in group:
        if len(componentGroup) > 1:
            componentGroup += ", "
        componentGroup += component.getRef()
        c = component

    if (list(c.getRef())[0] == 'Z'):
        break

    try:
        itemDescription = itemDescriptions[list(c.getRef())[0]]
    except Exception as e:
        itemDescription = itemDescriptions['Z']

    if oldGroup is not list(c.getRef())[0]:
        oldGroup = list(c.getRef())[0]
        mainIndex = mainIndex + 1
        nCSV = LB + str(mainIndices[mainIndex]) + ',' + itemDescription + ',' + SB + LB
        CSV = CSV + nCSV

    componentGroup = componentGroup + '"'
    
    try:
        unitPrice = float(c.getField("Price"))
    except Exception as e:
        unitPrice = 0.00

    tID = str(runningIndex)
    tDe = '"' + c.getField("Description") + '"'
    tPa = '"' + c.getField("PartNumber") + '"'
    tFo = '"' + c.getFootprint() + '"'
    tVa = '"' + c.getValue() + '"'
    tDa = '"' + c.getDatasheet() + '"'

    tCSV = tID + ',' + tDe + ',' + tPa + ',' + str(len(group)) + ',' + tFo  + ',' + tVa +\
           ',' + componentGroup  + ',' + tDa + ',$' + str("{:.2f}".format(unitPrice)) + ',$' + "{:.2f}".format(unitPrice * len(group)) + '\n'
    CSV = CSV + tCSV
    totalQ = totalQ + (unitPrice * len(group))


# Print the formatted html to the file
CSV = CSV + LB + 'Z, Total,' + ','.join(SB.split(',')[:-1]) + ',$' + str("{:.2f}".format(totalQ)) + '\n' + LB
print(CSV, file=f)
f.close()
