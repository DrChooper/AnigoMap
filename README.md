# Anigozanthos Chloroplast Map

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

## Description
Plant cells contain subcellular structures known as plastid organelles, which mature into chloroplasts in leaves, responsible for the green color and essential functions like photosynthesis. Plastids carry their own DNA (pDNA or plastome), with a small number of genes for crucial functions, while the remaining genes are in the nuclear DNA (nDNA). The interplay between nucleus and plastid, known as plastid incompatibility, is vital for plant health, and disruptions can be lethal or impact fertility.

This study employs GetOrganelle for the assembly of chloroplast genomes from low-coverage Genome-Wide Sequencing (GWS) data, followed by annotation using Chloe. This approach ensures accurate representation and comprehensive analysis of chloroplast genomic sequences, offering insights into their organization and functionality. The use of low-coverage GWS data, coupled with efficient tools, enhances the exploration of chloroplast genomics across the Anigozanthos genus.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Installation
Requires GetOrganelle installation
```bash
micromamba install -c bioconda getorganelle
```
After installation of GetOrganelle v1.7+, please download and initialize the database for assembling chloroplast genomes:
```bash
get_organelle_config.py --add embplant_pt,embplant_mt
```

The repository contains 2 test files in the test_files folder that can be used for testing the assembly pipeline:
```bash
get_organelle_from_reads.py -1 test/Arabidopsis_simulated.1.fq.gz -2 test/Arabidopsis_simulated.2.fq.gz -t 1 -o test/Arabidopsis_simulated.plastome -F embplant_pt -R 10
```

## Assembly
