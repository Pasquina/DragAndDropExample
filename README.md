# DragAndDropExample
Illustrates Firemonkey Drag and Drop Between Listboxes/Edit Boxes

1. Dowload anbd unzip or clone the repo.
2. Open the project group in Delphi.
3. Run the project.
4. Enter some text in the edit box.
5. Click on the edit box and drag it to the right listbox.
6. Repeat a couple of times to populate the list with a few items.
7. Click on a line in the right listbox.
8. Drag the item to the left list box.

Some things to note.

1. This is far from perfect and doesn't work between both list boxes. (That feature is left as a proof for the reader!)
2. When you click on an item, you may have to hesitate to get the "start drag" to begin working.
3. You may also have to click more than once on an item to get the "start drag" to begin working.
4. Overall, Firemonkey's implementation is far from ideal, but it does seem to work.
5. The only events used for drag and drop are
    a. Mouse Down
    b. Drag Over
    c. Drag Drop

No warranties. No promises. This is intended to be explorative in nature. Embarcadero's explanations are really bad and not very comprehensive. This tries to close that gap a bit.
