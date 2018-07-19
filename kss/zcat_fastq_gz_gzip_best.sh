#!/bin/bash

# Usage:
# zcat_fastq_gz_gzip_best.sh ChIP-REC8HA-rep2-180622_S1 R1 REC8_HA_Rep2_ChIP_R1

inName=$1
readN=$2
outName=$3

if [ ! -f "$outName.fastq.gz" ]; then
  zcat $inName"_L001_"$readN"_001.fastq.gz" \
       $inName"_L002_"$readN"_001.fastq.gz" \
       $inName"_L003_"$readN"_001.fastq.gz" \
       $inName"_L004_"$readN"_001.fastq.gz" \
       | gzip -c -k --best > $outName.fastq.gz;
else
  echo "skipping $outName"
fi

