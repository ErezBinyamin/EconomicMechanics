#!/bin/bash
rm *.zip *.csv *.txt
pushd .
rm -rf raw; mkdir raw
cd raw
wget 'https://www.federalreserve.gov/releases/z1/dataviz/download/zips/z1-visualization.zip'
unzip z1-visualization.zip; rm z1-visualization.zip
wget 'https://www.federalreserve.gov/econres/scf/dataviz/download/zips/scf.zip'
unzip scf.zip; rm scf.zip
rm -f *.txt z1-visualization-data.csv *_have.*
popd
