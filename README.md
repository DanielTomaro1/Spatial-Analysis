# README: Spatial Point Pattern Analysis Project

## Overview
This project involves the analysis and visualization of spatial point patterns using R and various spatial statistics libraries. It explores point processes, intensity functions, quadrat analysis, kernel density estimation, and statistical tests. The project covers simulated data and real-world datasets like *mucosa*, *nbfires*, and *NSWschool*.

---

## Prerequisites

- **R Programming Language**: Ensure R is installed on your system.
- **Required Libraries**: Install the following R packages:
  - `spatstat`
  - `stpp`

To install a package, use the command:
```R
install.packages("package_name")
```

- **Datasets**:
  - *mucosa*: Included in the `spatstat` package.
  - *nbfires*: Included in the `spatstat` package.
  - *NSWschool.csv*: Needs to be placed in the working directory.

---

## Project Structure

### 1. Simulated Point Processes (Q1)
- Generates random spatial points within a predefined window.
- Visualizes intensity-based point processes with varying lambda functions.
- Demonstrates overlapping intensity regions.

### 2. Analysis of the *mucosa* Dataset (Q2)
- Summary and visualization of spatial data.
- Quadrat analysis to explore point distribution.
- Kernel density estimation for intensity visualization.
- Statistical cross-analysis between marks.
- Empirical cumulative distribution functions for spatial trends.

### 3. Analysis of the *nbfires* Dataset (Q3)
- Visualization and density estimation for different fire types.
- Analysis of empty space distances.
- Exploratory data analysis using F and G functions.
- Polynomial model fitting for spatial trend estimation.

### 4. Spatiotemporal Point Processes (Q4)
- Defines a spatiotemporal intensity function.
- Simulates a spatiotemporal point process.
- Visualizes the process in 3D and over time.

### 5. NSW School Locations Analysis (Q5)
- Reads and processes the *NSWschool.csv* dataset.
- Creates a spatial point pattern object.
- Quadrat and kernel density analysis.
- Simulation of a random point process using dataset intensity.

## Key Results

- Simulated spatial patterns highlight the flexibility of intensity functions.
- Analysis of real datasets provides insights into spatial structures and trends.
- Spatiotemporal simulations demonstrate advanced capabilities for dynamic data.

---

## Notes

- Ensure all file paths are correctly set when running the script.
- Adjust `sigma` and grid parameters for finer analysis.
- For animations, ensure runtime and plot dimensions are appropriate.

---

## Contact
For any questions or issues, feel free to reach out.
