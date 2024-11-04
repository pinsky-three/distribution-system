
# Universal Distribution System

This project contains code and 3D designs created using OpenSCAD for a modular lattice structure. The structure features a perforated pattern, with customizable parameters for dimensions and support configurations. This lattice system could be useful for distribution applications, where the design offers a structural yet open framework.

## Files
- **README.md**: This document.
- **foundations.scad**: The OpenSCAD file containing the modular lattice and support structures.

## Design Overview

The system comprises:
1. **Lattice Panel**: A flat panel with a grid of holes, configurable with height, width, and spacing between the holes.
2. **Supports**: Angled supports designed to hold the lattice panel at an inclination. Configurable thickness and angle parameters for structural adjustments.

## Modules

### 1. `lattice_holes`
This module creates a grid of holes on the panel.

**Parameters**:
- `h_h`: Height of each hole.
- `h_w`: Width of each hole.
- `d_h`: Vertical distance between holes.
- `d_w`: Horizontal distance between holes.
- `n`: Number of holes horizontally.
- `m`: Number of holes vertically.

### 2. `lattice`
Creates the main lattice panel with a thickness and grid of holes.

**Parameters**:
- `thickness`: Thickness of the panel.
- Other parameters are derived from `lattice_holes`.

### 3. `support`
Generates two side supports to hold the lattice panel at a specific angle.

**Parameters**:
- `thickness`: Thickness of the support.
- `alpha`: Angle of inclination for the support structure.

## Usage
To view or modify the design:
1. Open `foundations.scad` in OpenSCAD.
2. Adjust parameters in the code to customize the lattice and support dimensions.
3. Render and export as desired.

The design includes:
- A rotated view to present the lattice with support structures at an inclined angle.

## Requirements
- [OpenSCAD](https://openscad.org/): For rendering and modifying the 3D design.
