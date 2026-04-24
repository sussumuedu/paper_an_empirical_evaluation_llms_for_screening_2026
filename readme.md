# An Empirical Evaluation of LLMs for Screening in Systematic Literature Reviews — Reproducibility Package

This repository contains the code and artifacts used in the manuscript **“An Empirical Evaluation of LLMs for Screening in Systematic Literature Reviews: Variability, Metadata Dependence, and Comparison with Classical Machine Learning”** The workflow is organized into **four experimental phases (Phase 0–3)**, aligned with the manuscript’s methodological structure:

- **Phase 0 — Dataset preparation:** consolidation of SLR1/SLR2 candidate sets and metadata (title, abstract, keywords) with original include/exclude decisions.
- **Phase 1 — LLM screening (cross-provider):** comparative screening runs across multiple LLM providers/models under a controlled protocol.
- **Phase 2 — Feature composition analysis:** sensitivity analysis of different input feature combinations (e.g., title/abstract/keywords) on LLM screening outcomes.
- **Phase 3 — Baseline comparison (ML):** comparison between LLM-based screening and classical machine learning baselines.

## Repository layout

```text
.
├── codigos/
│   ├── dados/
│   │   ├── SLR1-results-keys.xlsx
│   │   ├── SLR2-results-keys.xlsx
│   │   ├── titulo_resumo_palavras_slr1_v2.xlsx
│   │   └── titulo_resumo_palavras_slr2_v2.xlsx
│   ├── Phase1_*.ipynb
│   ├── Phase2_*.ipynb
│   ├── Phase3_*.ipynb
│   └── ...
├── docker-compose.yml
├── Dockerfile
├── requirements.txt
└── request.json



## Notebooks (by phase)

- **Phase 1 (`Phase1_*.ipynb`)**: LLM screening experiments by provider/model and dataset (SLR1/SLR2).
- **Phase 2 (`Phase2_*.ipynb`)**: analyses that vary the input feature set (metadata composition) and estimate its effect on screening performance/variability.
- **Phase 3 (`Phase3_*.ipynb`)**: classical ML baselines (e.g., TF–IDF-based classifiers) and comparisons against LLM results.

## Data artifacts

All core data artifacts are stored under `codigos/dados/`, including:
- Consolidated metadata tables used as inputs for the notebooks.
- Result tables used to generate figures/tables reported in the manuscript.
