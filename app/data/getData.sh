#!/bin/bash
pushd .
if [-d raw]
then
  rm -rf raw
  mkdir raw
fi

# RAW
# TODO: Delete this section as it is duplicated by SECTOR_FINANCIAL_DATA
cd raw
curl -ko 'z1-visualization.zip' 'https://www.federalreserve.gov/releases/z1/dataviz/download/zips/z1-visualization.zip'
unzip 'z1-visualization.zip'
rm 'z1-visualization.zip' z1-visualization-data.csv *.txt
curl -ko 'scf.zip' 'https://www.federalreserve.gov/econres/scf/dataviz/download/zips/scf.zip'
unzip 'scf.zip'
rm -f 'scf.zip' *_have.*
cd ..

# WORLD_GDP
mkdir world_gdp
cd world_gdp
curl -ko 'world_gdp.zip' 'https://api.worldbank.org/v2/en/indicator/NY.GDP.MKTP.CD?downloadformat=csv'
unzip 'world_gdp.zip'
rm -f 'world_gdp.zip'
cd ..

# SECTOR_FINANCIAL_DATA
mkdir sector_financial_data
cd sector_financial_data
curl -ko 'z1_csv_files.zip' 'https://www.federalreserve.gov/releases/z1/20220310/z1_csv_files.zip'
unzip z1_csv_files.zip
rm -f z1_csv_files.zip

# DONE
popd
