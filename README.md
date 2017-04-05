# db_reformatter
Script to reformat the [EzBioCloud](http://www.ezbiocloud.net/resources/pipelines) database to be used with [mg_classifier](https://github.com/GenomicaMicrob/mg_classifier).

The EzBioCloud database is not publicly available (although it is free for academia); you can ask for it here:  http://www.ezbiocloud.net/resources/pipelines.

You´ll have to formatted to be able to used it with [mg_classifier](https://github.com/GenomicaMicrob/mg_classifier).

## Usage

You have to make the script executable (`chmod +x db_reformatter.sh`) and then run it:

`$  ./db_reformatter.sh eztaxon_qiime_full.fasta eztaxon_id_taxonomy.txt`

The order of files is important, first the fasta file and then the taxonomy file.

You will get a new fasta file in the following format:

```
>100000:Eukarya;Viridiplantae;Streptophyta;Jungermanniopsida;Pallaviciniales;Pallaviciniaceae;Pallavicinia;Pallavicinia_lyellii
TTACCTAATTGGTGAGGCAATGGCTCACCAAGGCGACGATCACTAGCTGGTCTGAGAGGATGATCAGCCACACTGGGACTGAGACACGGCCCAGACTCTTACGGGAGGCAGCAGTGGGGAATTTTCCGCAATGGGCGAGAGCCTGACGGAGCAATGCCGCGTGGAGGTACAAGGCTCACGGGTCGTAAACTCCTTTTCTCGGAGAAGATGCAATGACGGTATCCGAGGAATAAGCATCGGCTAACTCTGTGCCACCAGCCGCGGTAAGACAGAGGA
>100001:Eukarya;Viridiplantae;Streptophyta;Jungermanniopsida;Pallaviciniales;Pallaviciniaceae;Symphyogyna;Symphyogyna_circinata
GTACACATGCAAGTCGGACGGGGAGCATCCTAGTGATGTTTTCAGTGGCGGACGGGTGAGTAACGCGTAAGAACCTGCCCCTGGGAGGGGGACAACAGCTGGAAACGGTTGCTAATACCCCGTAGGCTGAGGAGCAAAAGGAGGGATCCGCCCAAGGAGGGGCTTGCGTCTGATTAGCTAGTTGGTGGGGTAATGGCTCACCAAGGCGACGATCAGTAGCTGGTCTGAGAGGATGATCAGCCACACTGGGACTGAGACACGGCCCAGACTCTTACGGGAGGCAGCAGTGGGGAATTTTCCGCAATGGGCGAGAGCCTGACGGAGCAATGCCGCGTGGAGGTAGAAGGCTCACGGGTCGTAAACTCCTTTTCTCGGAGAAGATGCAATGACGGTATCCGAGGAATAAGCATCGGC

```
