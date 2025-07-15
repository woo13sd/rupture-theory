Your current README (which I pulled from GitHub) is all running together because it’s missing the blank lines that Markdown needs to separate headings, lists, and code blocks. Here’s a cleaned-up version you can copy & paste *in its entirety* into `README.md`. It fixes:

* **Blank lines** before and after each `##` heading
* Proper **code fence** syntax around the repository tree and the install snippet
* A separate code fence for the BibTeX block
* Consistent spacing for lists

````markdown
# Rupture Theory Repository

[![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/woo13sd/rupture-theory/blob/main/notebooks/Rupture.ipynb)  
![GitHub release (latest by date)](https://img.shields.io/github/v/release/woo13sd/rupture-theory)  
![License](https://img.shields.io/github/license/woo13sd/rupture-theory)

## 📖 Overview

This repository contains all code, notebooks, and CAMB configuration files needed to reproduce the CMB and matter-power spectra results in the “Rupture Theory” manuscript.

Key assets:
- **Colab notebook**: `notebooks/Rupture.ipynb`  
- **CAMB support files**: `camb_utils/params_camb.ini`, `camb_utils/initialpower.f90`, `camb_utils/reionization.f90`

## 🔍 Repository Structure

```text
.
├── notebooks/
│   └── Rupture.ipynb         # Main Colab notebook for CAMB runs
├── camb_utils/
│   ├── params_camb.ini       # Rupture-specific CAMB parameters
│   ├── initialpower.f90      # Custom primordial power module
│   └── reionization.f90      # Modified reionization history module
├── data/
│   └── raw/                  # (git-ignored) CAMB output files
├── docs/
│   ├── CAMB_output_details.md# Appendix tables & FITS metadata
│   └── usage_guide.md        # Local run instructions
├── images/
│   └── colab_badge.pdf       # “Open in Colab” badge asset
├── CITATION.cff              # Citation metadata for this code
├── LICENSE                   # License terms
└── README.md                 # ← this file
````

## 🚀 Quick Start

1. **Open in Colab**
   Click the badge at the top to launch `notebooks/Rupture.ipynb` in Google Colab.

2. **Install dependencies** (if running locally)

   ```bash
   pip install camb numpy matplotlib
   ```

3. **Configure parameters**
   Edit the top cell of `notebooks/Rupture.ipynb` or modify `camb_utils/params_camb.ini`.

4. **Run & Visualize**
   Execute all cells to generate and plot the CMB and matter-power spectra.

## 📝 Citation

If you use this code, please cite:

```bibtex
@misc{rupture-theory-camb-2025,
  title        = {Rupture Theory CAMB Reproduction},
  author       = {Woodbyrne, Robert C.},
  howpublished = {GitHub repository},
  year         = {2025},
  doi          = {10.5281/zenodo.YOUR_DOI},
  url          = {https://github.com/woo13sd/rupture-theory}
}
```

*(Replace `YOUR_DOI` with the DOI minted via Zenodo once available.)*

## 📜 License

This project is licensed under the [MIT License](LICENSE).

---

*Last updated: July 14, 2025*

```
This single snippet should render cleanly. Just replace your existing README contents with it and commit. :contentReference[oaicite:0]{index=0}
::contentReference[oaicite:1]{index=1}
```
