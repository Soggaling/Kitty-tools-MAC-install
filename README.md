# Kitty-Tools Setup and Automation 
* Credits to 0u44 for making the tool.
This repository provides a streamlined automation script for setting up the Kitty-Tools environment on Windows systems. It handles the installation of core dependencies, retrieves the latest toolset from the source repository, and executes the primary application logic. 
 
## Overview 
 
The included Batch script automates the following processes: 
* System environment detection. 
* Installation of core programming runtimes and version control tools via Winget. 
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
 
1. **Download the script**: Save the provided .bat code to your local machine as setup.bat. 
2. **Run the script**: Right-click setup.bat and select "Run as Administrator" to begin the automated setup. 
 
## Script Logic Detail 
 
The automation utilizes the Windows Package Manager (Winget) to install dependencies. If a dependency like Node.js or Python is already detected, the script moves to the next step. Once the environment is verified, it clones the source code into a directory named Kitty-Tools and initiates the main Python script. 
 
## Maintenance 
 
To update the tools in the future, you can rerun the script. It is designed to detect the existing directory and pull only the latest changes from the Git repository rather than re-cloning the entire project. 
