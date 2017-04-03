#!/bin/bash
# AUTHOR: Bruno Gomez-Gil, Laboratorio de Genomica Microbiana, CIAD.
# Script to reformat the EzBioCloud database to be used by mg_classifier.
# USAGE: db_reformatter.sh db.fasta taxonomy.file

display_usage(){
	echo
	echo Script 
	echo
	echo -e "\e[1mERROR\e[0m: missing filename(s)"
	echo
	echo "USAGE: db_reformatter.sh fasta_file taxonomy_file"
	echo "EXAMPLE: ./db_reformater.sh eztaxon_qiime_full.fasta eztaxon_id_taxonomy.txt"
	echo "The order of files is important, first the fasta file and then the taxonomy file."
	echo
}
# if less than two arguments supplied, display usage 
	if [  $# -le 1 ] 
	then 
		display_usage
		exit 1
	fi
	# Script starts
mkdir tmp
# Make fasta file a single liner per sequence
fasta_formatter -i $1 -w 0 -o tmp/$1.bak
tr '\n' '@' < tmp/$1.bak | tr '>@' '\n@' | sed 's/@/\t/; s/@//' | sort | sed -e'1d' > tmp/db.bak

# sort taxafile
sort $2 -o tmp/$2.bak

# Joins files and cleans
join tmp/$2.bak tmp/db.bak > $1.parsed.fna
sed -i 's/^/>/; s/ /:/; s/ /\n/' $1.parsed.fna
rm -fr tmp
echo "Done"
NUMSEQS=$(grep -ch ">" $1.parsed.fna)
echo "A total of $NUMSEQS sequences were reformated."
echo "The new databse is called $1.parsed.fna"
echo
# This is the end.