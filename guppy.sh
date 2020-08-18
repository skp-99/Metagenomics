#!/bin/bash
#PBS -q ram1t
#PBS -N guppy 
#PBS -l nodes=1:ppn=12,mem=100GB,walltime=12:00:00
#PBS -e guppy.err
#PBS -o guppy.out
#PBS -S /bin/bash -V
#PBS -m abe 
#PBS -M spadhi@umn.edu 

cd `pwd` 
work_dir=`pwd`

module load guppy

guppy_basecaller --compress_fastq -i /home/phelpsn0/spadhi/MinION/Soto_Ian/KS4449/20200816_2317_MN32849_FAN14806_ae696aae/fast5/ -s /home/phelpsn0/spadhi/MinION/Soto_Ian/ --cpu_threads_per_caller 12 --num_callers 1 --flowcell FLO-MIN106 --kit SQK-LSK109 --barcode_kits EXP-NBD104 --trim_barcodes --num_extra_bases_trim 4
