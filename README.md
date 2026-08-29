# Fin-whale-movs

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22162495.svg)](https://doi.org/10.5281/zenodo.22162495)

## Description

This repository contains the code used to perform the hierarchical switching state-space model described in subsection 2.3.1., as reported in:

> (not definitive) Viola Panigada, Blanca Feliu-Tena, Eduardo J. Belda, Eduard Degollada, Victor Gallego, Douglas P. Nowacek, Pablo Santonja, Beatriu Tort & Simone Panigada. (2026). Fin Whale Departures from the North-West Mediterranean Sea Reveal Summer Habitat Use in the North Atlantic and Potential Feeding Opportunities. *Scientific Reports*. [DOI ARTÍCULO]

## Correspondence with the manuscript

| Script | Manuscript section |
|---|---|
| `hDCRWS.R` | hDCRWS model — Methods, subsection 2.3.1. |

## Repository structure

```
Fin-whale-movs/
├── README.md
├── LICENSE
├── CITATION.cff
├── data/
│   └── not included — see Data availability statements
├── scripts/
│   ├── hDCRWS.R
```

## Requirements

- R version 4.3.1 (2023-06-16 ucrt)
- Libraries:
  - `readr` (v2.1.5)
  - `rgdal` (v1.6-7)
  - `rworldxtra` (v1.01)
  - `latticeExtra` (v0.6-30)
  - `dplyr` (v1.1.4)
  - `lubridate` (v1.9.3)
  - `rjags` (v4-16)
  - `bsam` (v1.1.3)

## Input data format

- Format: `.csv`
- Required columns: `id`, `date` (UTC, ISO 8601), `lc`, `latitude`, `longitude`

> **Note:** Raw tracking data are not included in this repository. The datasets analyzed during the current study – satellite telemetry data and land-based observations – are available from the corresponding authors upon reasonable request. The satellite telemetry data is available for view-only on the BlueCorridors.org website.

## Reproducibility notes

- The code is ready to work with cleaned data: locations classified as Argos class Z, as well as raw positions falling on land, have already been excluded prior to running the pipeline.

## License

This code is released under the MIT License. See [`LICENSE`](./LICENSE) for details.

## How to cite

If you use this code, please cite both the associated article and this repository:

> (not definitive) Viola Panigada, Blanca Feliu-Tena, Eduardo J. Belda, Eduard Degollada, Victor Gallego, Douglas P. Nowacek, Pablo Santonja, Beatriu Tort & Simone Panigada. (2026). Fin Whale Departures from the North-West Mediterranean Sea Reveal Summer Habitat Use in the North Atlantic and Potential Feeding Opportunities. *Scientific Reports*. [DOI ARTÍCULO]

> (not definitive) Blanca Feliu-Tena & Eduardo J. Belda. (2026). Fin-whale-movs (Version v1.0.0) R. Zenodo. [DOI ZENODO]

## Contact

Blanca Feliu Tena — blanca.feliu@ieo.csic.es

Centro Oceanográfico de Murcia (COMU-IEO), CSIC / Instituto de Investigación para la Gestión Integrada de Zonas Costeras, Universitat Politècnica de València
