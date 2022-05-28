#!/bin/bash
pushd .

rm -rf raw
mkdir raw
cd raw

curl -ko 'z1-visualization.zip' 'https://www.federalreserve.gov/releases/z1/dataviz/download/zips/z1-visualization.zip'
unzip 'z1-visualization.zip'
rm 'z1-visualization.zip' z1-visualization-data.csv *.txt

curl -ko 'scf.zip' 'https://www.federalreserve.gov/econres/scf/dataviz/download/zips/scf.zip'
unzip 'scf.zip'
rm -f 'scf.zip' *_have.*

curl -ko 'world_gdp.zip' 'https://api.worldbank.org/v2/en/indicator/NY.GDP.MKTP.CD?downloadformat=csv'
unzip 'world_gdp.zip'
rm -f 'world_gdp.zip'

popd
