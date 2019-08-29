## deepMate: Deep Clustering via the Local Manifold of an Autoencoded Embedding for scRNA-seq data

## Introduction

Local manifold learning on an autoencoded embedding is effective for discovering higher quality clusters, for scRNA-seq data. The datasets in the `raw` directory can be obtained via the url: https://hemberg-lab.github.io/scRNA.seq.datasets. You can download the *.rds file there, and use the R script `rds2csvdata.R` to get the filtered expression data. In this repository, to be more efficient, I have already put all the filtered dataset in the `data` directory for easy access.

## Install

```sh
pip install -r requirements.txt
```

## Run

```sh
bash run.sh
```
