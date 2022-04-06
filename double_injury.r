#download R and RStudio

#install the packages for seurat umap
install.packages("dplyr")
install.packages("Seurat")
install.packages("igraph") #error
install.packages("patchwork")

#install packages for the anndata
install.packages("anndata")
install.packages("knitr")

#install packages for featureplot
install.packages("ISLR")
install.packages("ggplot2")
install.packages("caret")



#install zellkonvertor
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("zellkonverter")

#install biocstyle:
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("BiocStyle")

#install scrnaseq
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("scRNAseq")

#install basilisk
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("basilisk")

#install sce
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("SingleCellExperiment")

#download igraph
install.packages("igraph", type="binary")


#############################################################################

#change to working directory (find using os.getcwd() in terminal)
getwd()
setwd('/Volumes/Butt plug/Macintosh HD/src/Ping Lab Data Engineering Fall 2020/Multi-Omics Integration/data_convert')

#load in seurat object/cluster markers
CM_all_TTN_clusters_35clusters_1.8res <- readRDS("CM_all_TTN_clusters_35clusters_1.8res.rds")
CM_all_TTN_cluster_markers <- read.csv("CM_all_TTN_cluster_markers.csv")

#use packages in session
library(dplyr)
library(Seurat) #error
library(patchwork)
library(anndata)
library(ISLR)
library(ggplot2)
library(caret)

#setup for zelkconvertor
require(knitr)
library(BiocStyle)
library(basilisk)
library(zellkonverter)
library(anndata)
library(SingleCellExperiment)
opts_chunk$set(error = FALSE, message = FALSE, warning = FALSE)

#start converting
library(Seurat)
CM_all_TTN_clusters_35clusters_1.8res.sce = Seurat::as.SingleCellExperiment(CM_all_TTN_clusters_35clusters_1.8res)
writeH5AD(CM_all_TTN_clusters_35clusters_1.8res.sce, file = "double_injury.h5ad")
