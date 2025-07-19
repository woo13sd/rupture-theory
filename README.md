# Rupture Theory Repository

[![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/woo13sd/rupture-theory/blob/main/notebooks/Rupture.ipynb)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/woo13sd/rupture-theory)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![DOI](https://zenodo.org/badge/1019375539.svg)](https://doi.org/10.5281/zenodo.15890401)

## 🚀 Overview

This repository contains all code, data files, and Jupyter/Colab notebooks necessary to **reproduce the results** of the “Rupture Theory” manuscript—namely the CMB and matter power spectrum comparisons with ΛCDM.

**Key assets:**
- **Colab notebook:** `notebooks/Rupture.ipynb`
- **CAMB support files:**  
  - `camb_utils/params_camb.ini`  
  - `camb_utils/initialpower.f90`  
  - `camb_utils/reionization.f90`
- **Data:** All processed `.dat` files for figures in `/data`
- **Figures:** All publication-ready figures in `/images`

## 📂 Repository Structure
,,,
.
├── notebooks/
│   └── Rupture.ipynb
├── camb_utils/
│   ├── params_camb.ini
│   ├── initialpower.f90
│   └── reionization.f90
├── data/
│   ├── primordial_power.dat
│   ├── primordial_power_lcdm.dat
│   ├── LCDM_TT.dat
│   ├── Rupture_TT.dat
│   ├── LCDM_EE.dat
│   ├── Rupture_CAMB_EE.dat
│   ├── LCDM_Clpp.dat
│   ├── Rupture_Clpp.dat
│   ├── LCDM_Pk.dat
│   └── Rupture_Pk.dat
├── images/
│   ├── tt_rt_vs_lcdm.png
│   ├── ee_rt_vs_lcdm.png
│   ├── tt_fr.png
│   ├── ee_fr.png
│   ├── lensing_residual.png
│   └── matter_power.png
├── LICENSE
├── README.md
└── CITATION.cff
,,,
## 🔬 Reproducing the Results

1. **Open in Colab**
   - Click the badge at the top or [launch here](https://colab.research.google.com/github/woo13sd/rupture-theory/blob/main/notebooks/Rupture.ipynb).
2. **Install dependencies**
   - The notebook will install required packages (CAMB, NumPy, matplotlib, seaborn, etc.) automatically, but you can run:
     ```bash
     pip install camb numpy matplotlib seaborn
     ```
3. **Run the notebook**
   - Step through `notebooks/Rupture.ipynb` to generate and plot all data files and publication figures.
   - All figures and .dat files will be saved to `/images` and `/data` respectively.
4. **(Optional) Modify parameters**
   - Edit `camb_utils/params_camb.ini` or the relevant `.f90` modules to test variant cosmologies.

## 📝 Citation

If you use this code, please cite:

```bibtex
@misc{rupture-theory-camb-2025,
  title        = {Rupture Theory CAMB Reproduction},
  author       = {Woodbyrne, Robert C.},
  howpublished = {GitHub repository},
  year         = {2025},
  doi          = {10.5281/zenodo.15890401},
  url          = {https://github.com/woo13sd/rupture-theory}
}

📜 License

This project is licensed under the MIT License.

🗂️ Data & Figure Reference
	•	All raw and processed .dat files: /data
	•	Publication-ready figures (as in the manuscript): /images
	•	Main notebook: notebooks/Rupture.ipynb
	•	Custom CAMB modules: camb_utils/

ℹ️ Further Information
	•	Appendix in the manuscript documents all parameter choices and data outputs.
	•	For detailed usage and configuration, see the usage_guide.md in the docs/ folder (if available).
	•	Archival DOI for peer review and reference: 10.5281/zenodo.15890401

⸻

Last updated: July 2025

---

**You can further edit the “Repository Structure” and “Data & Figure Reference” to match exactly what’s in your repo as needed.**  
This version is **fully consistent** with your reproducible workflow and makes the repo plug-and-play for Colab, peer reviewers, or future users.
