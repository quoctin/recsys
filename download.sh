#!/bin/bash


mkdir -p datasets
wget -O datasets/ml-1m.zip https://files.grouplens.org/datasets/movielens/ml-1m.zip
unzip datasets/ml-1m.zip -d datasets