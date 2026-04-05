# Ibex RISC-V Demo System

This repository contains the hardware and software stack for our Ibex RISC-V processor.

## Lab Assignment Instructions

### Step 1: Add the TA's Code
1. Navigate to the `sw/` directory.
2. Replace the contents of `main.c` with the C code provided by the TAs.
3. Ensure `boot.S` remains untouched.

---

### Step 2: Toolchain Setup & Compilation

**For Windows Users:**
1. Open Command Prompt and run the setup script (edit the path inside the file first to point to your local RISC-V toolchain):
   ```cmd
   tools\setup_env.bat
   ```
2. Navigate to the software directory:
   ```cmd
   cd sw
   ```
3. Run the build script:
   ```cmd
   build.bat
   ```

**For Linux/Ubuntu Users:**
1. Initialize the tools (edit the path inside the file first if needed):
   ```bash
   source tools/setup_env.sh
   ```
2. Navigate to the software directory:
   ```bash
   cd sw
   ```
3. Compile using Make:
   ```bash
   make
   ```

---

### Step 3: Verification
If successful, the generated files will be in the `sw/output/` directory:
* `standard_c.elf` (The compiled binary)
* `standard_c.vmem` (The Verilog memory file to be loaded into the Ibex simulation)

To clean the directory for a fresh build (Linux only):
```bash
make clean
```
