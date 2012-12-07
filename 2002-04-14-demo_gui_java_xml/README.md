# DEMO Dynamically generated GUI
(c) 2000 - 2002 by Martin Bohun

- java
- javax.swing.*
- XML (xerces, sax)

## Figure 1.
Most of the widgets the GUIs consists of are constructed from external config files (mostly in XML), the XML file (right) describes the structure of the tree browser (left). The XML config files are parsed/read (using
the xcerces parser) and the widgets are created on run time. 

![Alt text](https://raw.github.com/mbohun/misc/master/2002-04-14-demo_gui_java_xml/tree_view_xml_config.gif "tree view and it's XML configuration file")

## Figure 2.
Shows the GUI (in this case the editor for a binary structure called TRUConf). User can view/edit the data and save the result. The CVS menu on menubar is used to commit the created/changed binary to CVS repository (in real application the binary structures are stored because of version control in CVS repository or in a database).

![Alt text](https://raw.github.com/mbohun/misc/master/2002-04-14-demo_gui_java_xml/binary_open_editor.gif "TRUConf binary editor")

## Figure 3.
The binary data could be saved to an output file...

![Alt text](https://raw.github.com/mbohun/misc/master/2002-04-14-demo_gui_java_xml/binary_save_as.gif "TRUConf binary save")

## Figure 4.
... and tested or examined by third party tools. 

![Alt text](https://raw.github.com/mbohun/misc/master/2002-04-14-demo_gui_java_xml/binary_hexdump.gif "xterm with binary hexdump")

## Figure 5.
Shows the viewer for a binary structure called HotList. HotLists are not created manually, but they are results of the database "end of day" report.

![Alt text](https://raw.github.com/mbohun/misc/master/2002-04-14-demo_gui_java_xml/hotlist_viewer.gif "HotList viewer")

## Figure 6.1.
Figures 6.1-4. shows the generator/editor for the bianry structure called Calendar in action. Calendar generator take the number of days, and the date of the first day in calendar and creates the data (note: the first three columns of the table are read-only, the fourth column represents a special day flag.

![Alt text](https://raw.github.com/mbohun/misc/master/2002-04-14-demo_gui_java_xml/calendar_before.gif "Calendar generator")

## Figure 6.2.
Shows the creation of the new special day type - in this case ANZAC.

![Alt text](https://raw.github.com/mbohun/misc/master/2002-04-14-demo_gui_java_xml/calendar_creating_new_special_day.gif "Calendar, creating new special day type")

## Figure 6.3.
The use of the newly created special day type.

![Alt text](https://raw.github.com/mbohun/misc/master/2002-04-14-demo_gui_java_xml/calendar_choosing_new_day_type.gif "Calendar, using newly created special day type")

## Figure 6.4.
And the final result.

![Alt text](https://raw.github.com/mbohun/misc/master/2002-04-14-demo_gui_java_xml/calendar_the_result.gif "Calendar - the result")

## Figure 7.1.
Figures 7.1. -3. shows column filter in action. (The right side of the GUI is a tabbed pane with 3 big tables: products, contracts and transfers - what represent complex set of business rules of the SanFrancisco Translink system). The column filter could be used to hide/show columns of those tables. Each table has its own associated column filter.

![Alt text](https://raw.github.com/mbohun/misc/master/2002-04-14-demo_gui_java_xml/column_filter_invoked.gif "column filter")

## Figure 7.2.
Five columns: "productType", "operator", "productDescription", "name", "device" are being set to be hidden.

![Alt text](https://raw.github.com/mbohun/misc/master/2002-04-14-demo_gui_java_xml/column_filter_in_action.gif "colum filter in use")

## Figure 7.3.
The result.

![Alt text](https://raw.github.com/mbohun/misc/master/2002-04-14-demo_gui_java_xml/column_filter_result.gif "column filter - the result")

## Figure 8.
Shows again the GUI for TRUConf binary, but this time, the piece of code where the GUI is created, note the simplicity and readibility - one really doesn't has to be an advanced JAVA programmer to maintain/understand and make some changes.
But even this approach could be improved - replaced with a builder class, what takes as input a description of a binary structure from external config file (e.g. in XML) and creates editor - that way there is no need to change the actual JAVA code therefore no need for recompilation.

![Alt text](https://raw.github.com/mbohun/misc/master/2002-04-14-demo_gui_java_xml/tru_conf_construction_code.gif "TRUConf constructor")

## Figure 9.
It's another GUI - for binary caled SystemConf, but this time the binary contains among "primitive types" (integers, booleans, strings ) an array. For the purpose of viewing/editing array structures I've created a generic widget called ArrayElement, and CounterElement (note: Counters and Offsets are not editable, they are updated by another widget, counter is increased or decreased after each add/remove action). In this case the ArrayElement is called "sysFareCategoryNames" and it will create a view of an array of strings of length 9. ArrayElement provides user with a simple right click popup menu, with 4 basic operations: add, insert, edit and remove - see figure 13.1-3 for more details.

![Alt text](https://raw.github.com/mbohun/misc/master/2002-04-14-demo_gui_java_xml/system_conf_construction.gif "SystemConf construction")

## Figure 10.1.
As described in previous part, "sysFareCategoryNames" is an array of strings, therefore the add, insert, edit menu item opens a simple detail dialog for creating/changing a simple string.

![Alt text](https://raw.github.com/mbohun/misc/master/2002-04-14-demo_gui_java_xml/array_element_editor_add_dialog.gif "ArrayElement - add")

## Figure 10.2.
add, insert, edit, remove in action...

![Alt text](https://raw.github.com/mbohun/misc/master/2002-04-14-demo_gui_java_xml/array_element_editor_pop_menu.gif "ArrayElement - popup menu")

## Figure 10.3.
This figure shows again the generic ArrayElement widget but this time deployed as a part of a differen binary structure - this array consists of more complex data type than just a simple string like the previous example. 

![Alt text](https://raw.github.com/mbohun/misc/master/2002-04-14-demo_gui_java_xml/array_element_add_dialog_diff.gif "ArrayElement - more complex example")

 ---

## misc figures/diagrams
I created back in 2000 - 2001 but ended up not using in the 'final' version of the index.html from 2002

![Alt text](https://raw.github.com/mbohun/misc/master/2002-04-14-demo_gui_java_xml/gui_design_modular.gif "modular GUI app design")

![Alt text](https://raw.github.com/mbohun/misc/master/2002-04-14-demo_gui_java_xml/gui_design_plugins.gif "modular GUI app impl. concept - plugins for diff GUI libs & frameworks")
