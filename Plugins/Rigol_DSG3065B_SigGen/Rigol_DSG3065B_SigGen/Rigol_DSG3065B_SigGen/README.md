# TDS Plugin Template Instructions

This document provides a step-by-step guide to creating instrument driver plugins for the TDS Instruments Framework using this template.

**IMPORTANT:** Replace this README with a description of your plugin implementation using the template at the end of this README.

## Prerequisites

- **LabVIEW**: Version 2025 Q3 (32-bit)

## Creating a New Plugin

Follow these steps to create a new instrument driver plugin from this template:

1. **Name the Plugin**  
   Choose a descriptive name for the plugin that reflects the instrument's manufacturer, model, and any customizations. Use underscores instead of spaces (e.g., `Manufacturer_Model_Custom`).

2. **Set Up the Project Directory**  
   - Copy the template directory.  
   - Rename the root folder to match the plugin name.

3. **Configure the LabVIEW Project**  
   - Open the LabVIEW project file in the copied directory.  
   - Rename the project to match the plugin name.

4. **Update Build Specifications**  
   - **Plugin PPL Build Specification**:  
     - Set the **Target filename** to the plugin name with the `.lvlibp` extension.  
     - Set the **Destination Directory** to a folder named after the plugin.  
   - **Plugin Source Zip Build Specification**:  
     - Set the **Destination** to the same folder as the PPL.  
     - Name the zip file as `<plugin_name>_Source.zip`.

5. **Include Third-Party Drivers (if applicable)**  
   - If the plugin requires a third-party driver that is used in `instr.lib`, copy the driver zip file to the `instr.lib` directory for this plugin.

## Implementing Plugin Functionality

1. **Explore Interface Functions**  
   - Open the `Interface Functions.lvlib` branch in the LabVIEW project to view the available plugin interface functions.

2. **Update Reference Conversion**  
   - Modify `TDS Base Get Reference.vi` to convert the input `Address` string into the appropriate reference type (e.g., VISA resource name or DAQ Channel).

3. **Implement Initialization**  
   - In `TDS Base Initialize.vi`, configure the instrument using the optional `InstSpecific` configuration string from the configuration file.  
   - At a minimum, reset the instrument.  
   - Optionally, open the communication channel here and close it in `TDS Base Close.vi`. Alternatively, manage the communication channel within each interface function.

4. **Implement Close Functionality**  
   - In `TDS Base Close.vi`, add code to properly close the instrument, such as terminating the communication channel.

5. **Customize Interface Functions**  
   - Review the interface functions in `Interface Functions.lvlib`.  
   - Delete any functions that the instrument does not support. Most instruments will implement only a subset of the provided functions.  
   - For each remaining function:  
     - Use `TDS Base Get Reference.vi` to convert the `Address` to a reference.  
     - Utilize the optional `Signal InstSpecific` configuration string for any custom configurations, parsing it as needed.  
     - Use the provided controls and indicators for input/output to/from the instrument.  
     - Do not modify or delete controls, indicators, or the connector pane.

6. **Test Interface Functions**  
   - Test each interface function by passing the instrument address as a string.  
   - Debug and validate functionality during development.

7. **Optional Cleanup**  
   - Delete unused interface function VIs from the disk if they will not be implemented in the future. Alternatively, retain them for potential future use.

8. **Save the Project**  
   - Save all changes to the LabVIEW project.

## Building the Plugin

1. **Build the Plugin and Source Code**  
   - Right-click on `Build Specifications` in the LabVIEW project and select **Build All**.  
   - Verify that the PPL file (`.lvlibp`) and source zip file are created in the designated directory.  
   - Ensure the destination directory name matches the PPL filename (without the `.lvlibp` extension).

2. **Verify Output**  
   - Confirm that the PPL file and `<plugin_name>_Source.zip` are correctly generated in the specified directory.

