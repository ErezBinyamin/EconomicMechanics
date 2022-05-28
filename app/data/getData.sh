#!/bin/bash
pushd .
cd /tmp
rm *.zip *.csv *.txt

wget 'https://www.federalreserve.gov/releases/z1/dataviz/download/zips/z1-visualization.zip'
unzip /tmp/z1-visualization.zip

wget 'https://www.federalreserve.gov/econres/scf/dataviz/download/zips/scf.zip'
unzip /tmp/scf.zip

popd
