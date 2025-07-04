# send-to-bambu-connect
If you’re using **Orca Slicer** with the newer **Bambu Connect** ecosystem, you’ve probably noticed that sliced files don’t auto-load into Connect anymore. Instead, you’re expected to export the .3mf and manually drag it into the Bambu Connect app before printing. 😒

I found that a bit clunky, so I wrote a small **post-processing script** that launches Bambu Connect automatically with the sliced file ready to go — no extra clicking or dragging. Here is my **MacOS script,** make sure python is installed.`dfg`

In Orca Slicer–> Process Panel –> Others-> Post-processing scripts:

    /Users/your-path-to-script/send-to-bambu.sh "$OUTPUT_FILE"

Make it exicutible

    chmod +x /Users/your-path-to-script/send-to-bambu.sh

Slice model and Bambu Connect should open automatically.
