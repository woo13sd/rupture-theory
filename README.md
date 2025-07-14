# Rupture Theory Repository

[![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/woo13sd/rupture-theory/blob/main/notebooks/Rupture.ipynb)  
![GitHub release (latest by date)](https://img.shields.io/github/v/release/woo13sd/rupture-theory)  
![License](https://img.shields.io/github/license/woo13sd/rupture-theory)

## 📖 Overview

This repo contains all code, notebooks, and CAMB configuration files needed to reproduce the CMB and matter-power spectra results in the “Rupture Theory” manuscript.  

Key assets:  
- **Colab notebook**: `notebooks/Rupture.ipynb`  
- **CAMB support files**: `camb_utils/params_camb.ini`, `initialpower.f90`, `reionization.f90`  

## 🔍 Repository Structure

## 🚀 Quick Start

1. **Open in Colab**  
   Click the badge at the top to launch the notebook.

2. **Install dependencies** (if running locally)  
   ```bash
   pip install camb numpy matplotlib

---

### 3. Add a “Citation” section  
Just after Quick Start, include:

```markdown
###📝 Citation

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
