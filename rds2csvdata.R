rm(list=ls())
library(SingleCellExperiment)

setwd('/Users/chenx/Documents/Exp/n2d/')

# Import necessary libraries and functions required for preporcessing
suppressMessages(source("./pre-processing/functions.R"))
suppressMessages(source("./pre-processing/libraries.R"))


#process 1: deal  with raw data
RAW_DIR <- file.path(getwd(), "raw/")       # SPECIFY HERE
DATA_DIR  <- file.path(getwd(),"data/")

#biase.rds
rdsname <- 'biase.rds'
exprfilename <- paste0(rdsname, ".expr.csv")
annotationfilename <- paste0(rdsname, ".label.csv")

sce <- readRDS(file.path(RAW_DIR, rdsname))
exprfile <- file.path(DATA_DIR, exprfilename)
annotationfile <- file.path(DATA_DIR, annotationfilename)

texpr.logcounts <-  t(as.matrix(logcounts(sce)))

texpr.logcounts = 2 ^ texpr.logcounts - 1
print(paste0("Max:", max(texpr.logcounts), " | Min:", min(texpr.logcounts)))
# Pre-process
l <- normalize_by_umi_2(texpr.logcounts)
texpr.logcounts.processed <- matrix.subset(l,1000)

write.csv(as.matrix(texpr.logcounts.processed), file=exprfile, sep = ",", row.names=FALSE, col.names=FALSE)
write.csv(sce$cell_type1, file=annotationfile, sep = ",", row.names=FALSE, col.names=FALSE)

print(paste0(rdsname, ' write finished!'))

#pollen.rds
rdsname <- 'pollen.rds'
exprfilename <- paste0(rdsname, ".expr.csv")
annotationfilename <- paste0(rdsname, ".label.csv")

sce <- readRDS(file.path(RAW_DIR, rdsname))
exprfile <- file.path(DATA_DIR, exprfilename)
annotationfile <- file.path(DATA_DIR, annotationfilename)

texpr.logcounts <-  t(as.matrix(logcounts(sce)))

texpr.logcounts = 2 ^ texpr.logcounts - 1
print(paste0("Max:", max(texpr.logcounts), " | Min:", min(texpr.logcounts)))
# Pre-process
l <- normalize_by_umi_2(texpr.logcounts)
texpr.logcounts.processed <- matrix.subset(l,1000)

write.csv(as.matrix(texpr.logcounts.processed), file=exprfile, sep = ",", row.names=FALSE, col.names=FALSE)
write.csv(sce$cell_type1, file=annotationfile, sep = ",", row.names=FALSE, col.names=FALSE)

print(paste0(rdsname, ' write finished!'))


#treutlein.rds
rdsname <- 'treutlein.rds'
exprfilename <- paste0(rdsname, ".expr.csv")
annotationfilename <- paste0(rdsname, ".label.csv")

sce <- readRDS(file.path(RAW_DIR, rdsname))
exprfile <- file.path(DATA_DIR, exprfilename)
annotationfile <- file.path(DATA_DIR, annotationfilename)

texpr.logcounts <-  t(as.matrix(logcounts(sce)))

texpr.logcounts = 2 ^ texpr.logcounts - 1
print(paste0("Max:", max(texpr.logcounts), " | Min:", min(texpr.logcounts)))
# Pre-process
l <- normalize_by_umi_2(texpr.logcounts)
texpr.logcounts.processed <- matrix.subset(l,1000)

write.csv(as.matrix(texpr.logcounts.processed), file=exprfile, sep = ",", row.names=FALSE, col.names=FALSE)
write.csv(sce$cell_type1, file=annotationfile, sep = ",", row.names=FALSE, col.names=FALSE)

print(paste0(rdsname, ' write finished!'))


#kolod.rds
rdsname <- 'kolod.rds'
exprfilename <- paste0(rdsname, ".expr.csv")
annotationfilename <- paste0(rdsname, ".label.csv")

sce <- readRDS(file.path(RAW_DIR, rdsname))
exprfile <- file.path(DATA_DIR, exprfilename)
annotationfile <- file.path(DATA_DIR, annotationfilename)

texpr.logcounts <-  t(as.matrix(logcounts(sce)))

texpr.logcounts = 2 ^ texpr.logcounts - 1
print(paste0("Max:", max(texpr.logcounts), " | Min:", min(texpr.logcounts)))
# Pre-process
l <- normalize_by_umi_2(texpr.logcounts)
texpr.logcounts.processed <- matrix.subset(l,1000)

write.csv(as.matrix(texpr.logcounts.processed), file=exprfile, sep = ",", row.names=FALSE, col.names=FALSE)
write.csv(sce$cell_type1, file=annotationfile, sep = ",", row.names=FALSE, col.names=FALSE)

print(paste0(rdsname, ' write finished!'))

#zeisel.rds
rdsname <- 'zeisel.rds'
exprfilename <- paste0(rdsname, ".expr.csv")
annotationfilename <- paste0(rdsname, ".label.csv")

sce <- readRDS(file.path(RAW_DIR, rdsname))
exprfile <- file.path(DATA_DIR, exprfilename)
annotationfile <- file.path(DATA_DIR, annotationfilename)

texpr.logcounts <-  t(as.matrix(logcounts(sce)))

texpr.logcounts = 2 ^ texpr.logcounts - 1
print(paste0("Max:", max(texpr.logcounts), " | Min:", min(texpr.logcounts)))
# Pre-process
l <- normalize_by_umi_2(texpr.logcounts)
texpr.logcounts.processed <- matrix.subset(l,1000)

write.csv(as.matrix(texpr.logcounts.processed), file=exprfile, sep = ",", row.names=FALSE, col.names=FALSE)
write.csv(sce$cell_type1, file=annotationfile, sep = ",", row.names=FALSE, col.names=FALSE)

print(paste0(rdsname, ' write finished!'))



#darmanis.rds
rdsname <- 'darmanis.rds'
exprfilename <- paste0(rdsname, ".expr.csv")
annotationfilename <- paste0(rdsname, ".label.csv")

sce <- readRDS(file.path(RAW_DIR, rdsname))
exprfile <- file.path(DATA_DIR, exprfilename)
annotationfile <- file.path(DATA_DIR, annotationfilename)

texpr.logcounts <-  t(as.matrix(logcounts(sce)))

texpr.logcounts = 2 ^ texpr.logcounts - 1
print(paste0("Max:", max(texpr.logcounts), " | Min:", min(texpr.logcounts)))
# Pre-process
l <- normalize_by_umi_2(texpr.logcounts)
texpr.logcounts.processed <- matrix.subset(l,1000)

write.csv(as.matrix(texpr.logcounts.processed), file=exprfile, sep = ",", row.names=FALSE, col.names=FALSE)
write.csv(sce$cell_type1, file=annotationfile, sep = ",", row.names=FALSE, col.names=FALSE)

print(paste0(rdsname, ' write finished!'))


#tasic.rds
rdsname <- 'tasic.rds'
exprfilename <- paste0(rdsname, ".expr.csv")
annotationfilename <- paste0(rdsname, ".label.csv")

sce <- readRDS(file.path(RAW_DIR, rdsname))
exprfile <- file.path(DATA_DIR, exprfilename)
annotationfile <- file.path(DATA_DIR, annotationfilename)

texpr.logcounts <-  t(as.matrix(logcounts(sce)))

texpr.logcounts = 2 ^ texpr.logcounts - 1
print(paste0("Max:", max(texpr.logcounts), " | Min:", min(texpr.logcounts)))
# Pre-process
l <- normalize_by_umi_2(texpr.logcounts)
texpr.logcounts.processed <- matrix.subset(l,1000)

write.csv(as.matrix(texpr.logcounts.processed), file=exprfile, sep = ",", row.names=FALSE, col.names=FALSE)
write.csv(sce$cell_type1, file=annotationfile, sep = ",", row.names=FALSE, col.names=FALSE)

print(paste0(rdsname, ' write finished!'))


#goolam.rds
rdsname <- 'goolam.rds'
exprfilename <- paste0(rdsname, ".expr.csv")
annotationfilename <- paste0(rdsname, ".label.csv")

sce <- readRDS(file.path(RAW_DIR, rdsname))
exprfile <- file.path(DATA_DIR, exprfilename)
annotationfile <- file.path(DATA_DIR, annotationfilename)

texpr.logcounts <-  t(as.matrix(logcounts(sce)))

texpr.logcounts = 2 ^ texpr.logcounts - 1
print(paste0("Max:", max(texpr.logcounts), " | Min:", min(texpr.logcounts)))
# Pre-process
l <- normalize_by_umi_2(texpr.logcounts)
texpr.logcounts.processed <- matrix.subset(l,1000)

write.csv(as.matrix(texpr.logcounts.processed), file=exprfile, sep = ",", row.names=FALSE, col.names=FALSE)
write.csv(sce$cell_type1, file=annotationfile, sep = ",", row.names=FALSE, col.names=FALSE)

print(paste0(rdsname, ' write finished!'))

#li.rds
rdsname <- 'li.rds'
exprfilename <- paste0(rdsname, ".expr.csv")
annotationfilename <- paste0(rdsname, ".label.csv")

sce <- readRDS(file.path(RAW_DIR, rdsname))
exprfile <- file.path(DATA_DIR, exprfilename)
annotationfile <- file.path(DATA_DIR, annotationfilename)

texpr.logcounts <-  t(as.matrix(logcounts(sce)))

texpr.logcounts = 2 ^ texpr.logcounts - 1
print(paste0("Max:", max(texpr.logcounts), " | Min:", min(texpr.logcounts)))
# Pre-process
l <- normalize_by_umi_2(texpr.logcounts)
texpr.logcounts.processed <- matrix.subset(l,1000)

write.csv(as.matrix(texpr.logcounts.processed), file=exprfile, sep = ",", row.names=FALSE, col.names=FALSE)
write.csv(sce$cell_type1, file=annotationfile, sep = ",", row.names=FALSE, col.names=FALSE)

print(paste0(rdsname, ' write finished!'))


#usoskin.rds
rdsname <- 'usoskin.rds'
exprfilename <- paste0(rdsname, ".expr.csv")
annotationfilename <- paste0(rdsname, ".label.csv")

sce <- readRDS(file.path(RAW_DIR, rdsname))
exprfile <- file.path(DATA_DIR, exprfilename)
annotationfile <- file.path(DATA_DIR, annotationfilename)

texpr.logcounts <-  t(as.matrix(logcounts(sce)))

texpr.logcounts = 2 ^ texpr.logcounts - 1
print(paste0("Max:", max(texpr.logcounts), " | Min:", min(texpr.logcounts)))
# Pre-process
l <- normalize_by_umi_2(texpr.logcounts)
texpr.logcounts.processed <- matrix.subset(l,1000)

write.csv(as.matrix(texpr.logcounts.processed), file=exprfile, sep = ",", row.names=FALSE, col.names=FALSE)
write.csv(sce$cell_type1, file=annotationfile, sep = ",", row.names=FALSE, col.names=FALSE)

print(paste0(rdsname, ' write finished!'))