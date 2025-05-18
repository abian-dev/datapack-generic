## Description
This is a reusable functions folder designed to simplify the use of generic utilities and visual effects (VFX) through a single macro command. Originally created for projects like Minecraft SSB, this library is now available for other datapack creators to integrate into their own work.

If you use this in your project, please provide proper credit.
Optional but appreciated: link back to this repository.

## Setup Instructions
*Assumes you already know how to set up datapacks.*

1. Place the `generic` folder inside your datapack's `functions` directory.

2. Run the setup function once using this in-game command:
   ```mcfunction
   /function <datapackName>:setup

3. Add the following to your `tick` function:
   ```mcfunction
   execute as @e[type=area_effect_cloud] at @s run function <datapackName>:generic/vfx/assign_tasks/to_aecs

Replace `datapackName` with your own namespace.

## How to Use
To use the generic functions or VFX:
1. Browse the folders to find the feature you want.
2. Open the file named `play` or `start` inside that folder.
3. Copy the example function call provided in the file.
4. Adjust the parameters as needed for your specific use case.

**Note:** Any parameter labeled as 'function' in the example call must be replaced with a complete, syntactically correct command.