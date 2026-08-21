# Fin-whale-movs

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.XXXXXXX.svg)](https://doi.org/10.5281/zenodo.XXXXXXX)
<!-- Este badge se genera automáticamente desde Zenodo una vez creado el release. Sustituye XXXXXXX por tu DOI real. -->

## Description

This repository contains the code used to perform the hierarchical switching state-space model described in subsection 2.3.1. as reported in:

> [ARTICLE REFERENCE]

## Correspondence with the manuscript

| Script | Manuscript section |
|---|---|
| `ER.R` | [Encounter Rate — Methods, subsection 2.1.] |
| `hDCRWS.R` | [hDCRWS model — Methods, subsection 2.3.1.] |

## Repository structure

```
[Fin-whale-movs]/
├── README.md
├── LICENSE
├── CITATION.cff
├── environment.yml / requirements.txt
├── data/
│   └── [describir qué contiene, o indicar "not included — see Data availability"]
├── scripts/
│   ├── 01_[nombre].R
│   ├── 02_[nombre].R
│   └── ...
└── outputs/
    └── [ejemplos de salida, opcional]
```

## Requirements

- R version 4.3.1 (2023-06-16 ucrt)
- Key packages/libraries:
  - `readr` (v[X.X.X])
  - `[paquete]` (v[X.X.X])
  - `[paquete]` (v[X.X.X])

Full dependency versions are listed in [`environment.yml` / `requirements.txt` / `renv.lock`].

## Installation

```bash
# Clone the repository
git clone https://github.com/[usuario]/[nombre-repo].git
cd [nombre-repo]

# R example (using renv)
R -e "renv::restore()"

# Python example
pip install -r requirements.txt
```

## Usage

1. [Paso 1 — p. ej. "Place input tracking data in `data/raw/` following the format described below"]
2. [Paso 2 — p. ej. "Run scripts in numerical order: `Rscript scripts/01_[nombre].R`"]
3. [Paso 3 — resultado esperado]

## Input data format

[Describir el formato esperado de los datos de entrada aunque no se incluyan los datos reales, p. ej.:]

- Format: `.csv`
- Required columns: `individual_id`, `datetime` (UTC, ISO 8601), `latitude`, `longitude`, `[otras columnas]`
- Units: [especificar]

> **Note:** Raw tracking data are not included in this repository due to the sensitivity of precise geolocation data for a protected species. [Ajustar o eliminar esta nota según corresponda — indicar si los datos están disponibles bajo petición razonada, en un repositorio de datos separado con DOI propio, o con qué restricciones.]

## Reproducibility notes

- Random seeds are fixed (`set.seed([valor])`) in scripts where applicable to ensure reproducible results.
- All file paths are relative; no local/absolute paths are required to run the code.
- [Indicar cualquier paso manual, revisión visual, o parámetro ajustado a mano durante el análisis original, si lo hay.]

## License

This code is released under the MIT License. See [`LICENSE`](./LICENSE) for details.

## How to cite

If you use this code, please cite both the associated article and this repository:

> [AUTORES]. ([AÑO]). [TÍTULO DEL ARTÍCULO]. *Scientific Reports*. https://doi.org/[DOI ARTÍCULO]

> [AUTORES]. ([AÑO]). [NOMBRE DEL REPOSITORIO] (Version v1.0.0) [Software]. Zenodo. https://doi.org/10.5281/zenodo.XXXXXXX

## Contact

[Blanca Feliu Tena] — [blanca.feliu@ieo.csic.es]

Centro Oceanográfico de Murcia (COMU-IEO), CSIC / Instituto de Investigación para la Gestión Integrada de Zonas Costeras, Universitat Politècnica de València
