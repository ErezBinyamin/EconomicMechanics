#!/bin/bash
# For all z1_csv_files with file name not ending with "a":
# 	Replace column names with column descriptions in data_dictionary
# 	Combine all files
# 
# <csv>
# |-- *1.csv       : Replace col_keys from 1.csv with col_vals from 1.txt. col_vals truncate at "\tLine"
# |-- 2.csv
# 
# <data_dictionary>
# |-- 1.txt
# |-- 2.txt
pushd .
cd data/sector_financial_data/
rm -f file_list.txt; touch file_list.txt
for f in $(ls csv)
do
	if ! echo ${f} | grep -o '.\.csv' | sed 's/csv//' | grep -q 'a'
	then
		echo ${f} >> file_list.txt
		dict="data_dictionary/$(echo ${f} | sed 's/csv/txt/')"
		while read line
		do
			KEY=$(echo "$line" | tr '\t' '#' | cut -d'#' -f1)
			VAL=$(echo "$line" | tr '\t' '#' | cut -d'#' -f2)
			sed -i "s/${KEY}/${VAL}/" csv/${f}
		done <${dict}
	fi
done
popd
