#!/bin/bash

folder=$1
dim=$2

mkdir $folder
cd $folder
wget http://diamond.mccombs.utexas.edu/edgar/mongodb/data/years/$folder/config.dim$dim.json
wget http://diamond.mccombs.utexas.edu/edgar/mongodb/data/years/$folder/corpus.raw.txt.$folder.doc2vec.dim$dim\_metadata.tsv
wget http://diamond.mccombs.utexas.edu/edgar/mongodb/data/years/$folder/corpus.raw.txt.$folder.doc2vec.dim$dim\_tensor.tsv
cd ..
