# Kitty-Tools Setup and Automation 
This repository provides a streamlined automation script for setting up the Kitty-Tools environment. It handles the installation of core dependencies, retrieves the latest toolset from the source repository, and executes the primary application logic. 

- Credits to 0u44 for making this tool. this is just an automation script for macOS 
## Overview 
 
The included Zsh script automates the following processes: 
* System environment detection. 
* Installation of core programming runtimes and version control tools.
* Cloning of the Kitty-Tools repository. 
* Execution of the main Python application. 
 
## Prerequisites 
 
Before running the script, ensure you have: 
* An active internet connection. 
* Administrator privileges (required for software installation). 
 
## Dependencies 
 
The script ensures the following software is present on your system: 
* **Git**: For repository cloning and version management. 
* **Python 3**: The primary runtime for the application logic. 
* **Node.js**: Required for specific backend or client-side operations within the tools. 
 
## Installation and Usage 
 
To deploy the tools, follow these steps: 
 
1. **Download the script**: Save the provided file to your local machine
2. **Directory**: Change your directory in your terminal to where the script is located
3. **Script**: do chmod +x [script name]
4. **Run**: then do ./[script name]
 
## Script Logic Detail 
 
 If a dependency like Node.js or Python is already detected, the script moves to the next step. Once the environment is verified, it clones the source code into a directory named Kitty-Tools and initiates the main Python script. 
 
## Maintenance 
 
To update the tools in the future, you can rerun the script. It is designed to detect the existing directory and pull only the latest changes from the Git repository rather than re-cloning the entire project. 
