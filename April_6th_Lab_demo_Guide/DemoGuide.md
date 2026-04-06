# Ibex RISC-V Demo: Simulation Guide

This folder contains prewritten C codes and their corresponding compiled `.vmem` files. Follow the instructions below to run the simulation in Vivado using these files. 

## Prerequisites
Before starting, ensure you have followed the setup steps in the **Main README**. 
* You should have successfully generated a `.vmem` file located in the `sw/output` folder.

## Step 1: Load the Memory File into Vivado
1. Copy the absolute file path of your generated `.vmem` file.
2. Open the top simulation file of the Ibex demo system in Vivado (`tb_ibex_demo`).
3. Navigate to **line 22** and paste the copied path into the `SRAMInitFile` parameter.

> **⚠️ WINDOWS USER WARNING:** > If you copied the path in Windows, it will use backslashes (`\`). Vivado requires forward slashes. You **must** manually change all `\` to `/` in the path string, or the simulation will fail to load the memory.
> *Incorrect:* `C:\path\to\sw\output\program.vmem`
> *Correct:* `C:/path/to/sw/output/program.vmem`

---

## Step 2: Running the "In-Place Sort" Demo
If you are running the sorting algorithm demo, the array must be sorted in place per the classroom instructions. Ensure your C code defines the array as a **global variable** before compiling. 

*(The following steps use the pre-made `sort.vmem` included in this folder as an example).*

1. **Locate the Array in Memory:** Open your `.vmem` file in a text editor and find the starting address of your global array. 
   * *Example:* In `sort.vmem`, the array is stored at `@00000469` (which is index **1129** in decimal).
2. **Run the Initial Simulation:** Start the simulation in Vivado.
3. **Add Signals to the Wave Viewer:** Navigate to the memory instance in the Vivado scope window using this exact path:
   `/tb_ibex_demo/uut/u_ram/u_ram/gen_generic.u_impl_generic/mem`

> **🚨 CRITICAL WARNING: DO NOT ADD THE ENTIRE MEMORY TO THE WAVEFORM 🚨**
> Dragging the entire `mem` array into the wave viewer will likely crash the Vivado window. You must selectively add only the specific memory addresses containing your array.

4. **Select Specific Indices:** Based on the decimal address found in step 1, drag only the relevant indices into the wave viewer. 
   * *Example:* For `sort.vmem`, manually add `mem[1129][31:0]` through `mem[1135][31:0]` to the waveform.
5. **Rerun the Simulation:** Click the **Reload/Restart** button at the top of the Vivado simulation window to run it again with the signals visible.
6. **Observe the Output:** Watch the wave viewer as the simulation progresses to see the array values being sorted in place in real-time.

---

## Step 3: Running the "Find Maximum" Demo
This demo executes C code that serially compares array elements to find the maximum value.

**Why is the global `maximum` variable initialized to `-1` in the C code?**
The first step in the C code (`maximum = max(numbers[0], numbers[1]);`) immediately overwrites the initialized value, so the starting number doesn't matter for the logic. However, explicitly initializing it guarantees the compiler assigns it a dedicated, easily observable memory location in the generated `.vmem` file!

*(The following steps use `max.vmem` as an example).*

1. **Locate the Variable in Memory:** Open `max.vmem` in a text editor and scroll to the bottom. You will see `@00000469` followed by `FFFFFFFF` (which is `-1` in two's complement). This means our `maximum` variable is stored at memory index **1129** (decimal).
2. **Run the Initial Simulation:** Start the simulation in Vivado.
3. **Add the Signal to the Wave Viewer:** Navigate to the memory instance and drag **only** this specific signal into the wave viewer:
   `/tb_ibex_demo/uut/u_ram/u_ram/gen_generic.u_impl_generic/mem[1129][31:0]`
4. **Rerun and Observe:** Click the **Reload/Restart** button at the top of the Vivado simulation window. As the simulation runs, you will see this memory location update in real-time as the C code serially compares the array elements, eventually holding the final maximum value.
