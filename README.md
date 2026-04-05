# Ibex RISC-V Demo System

This repository contains the hardware and software stack for our Ibex RISC-V processor.

## ⚠️ Prerequisites (READ THIS FIRST)
To compile the C code, your machine must have the RISC-V GNU Toolchain installed. 

**How to check if you have it:**
Open a terminal and run `riscv64-unknown-elf-gcc --version` or `riscv-none-elf-gcc --version`. If it prints a version number, skip to Step 1. If it says "command not found," follow the instructions below.

**If you DO NOT have the toolchain:**
1. Go to the [xPack RISC-V GCC Releases page](https://github.com/xpack-dev-tools/riscv-none-elf-gcc-xpack/releases/).
2. Download the pre-compiled binary for your system:
   * **Windows:** Download the `win32-x64.zip` file.
   * **Linux/WSL:** Download the `linux-x64.tar.gz` file.
3. Extract the downloaded file into a folder on your machine (e.g., `C:\riscv` for Windows, or `~/riscv` for Linux).
4. Open the `tools/setup_env.bat` (Windows) or `tools/setup_env.sh` (Linux) file in a text editor.
5. Change the path inside that script to point to the `bin` folder inside the folder you just extracted.

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
