#!/bin/bash
# mmlong dependencies
# By Søren Karst
# Version
VERSION=0.1.6

### Paths to mmlong scripts
MMLONG_LINKS=$MMLONG_DIR/mmlong_tools/mmlong_links;
MMLONG_READCOVERAGE=$MMLONG_DIR/mmlong_tools/mmlong_readcoverage;
MMLONG_MINIASM_RACON=$MMLONG_DIR/mmlong_tools/mmlong_miniasm-racon;
MMLONG_WTDBG2=$MMLONG_DIR/mmlong_tools/mmlong_wtdbg2;
MMLONG_BASIC_ANNOTATION=$MMLONG_DIR/mmlong_tools/mmlong_basic-annotation;

### Paths to dependencies
FILTLONG=/space/sharedbin/bin/filtlong;
RACON=/space/users/smk/Software/racon/build/bin/racon;
MINIASM=/space/users/smk/Software/miniasm-0.3/miniasm;
MINIMAP2=/space/users/smk/Software/minimap2-2.12/minimap2;
SAMTOOLS=/space/users/smk/Software/samtools_1.9/bin/samtools;
PARALLEL=/space/users/smk/bin/parallel;
SPADES=/space/users/smk/Software/Spades3.11/SPAdes-3.11.1-Linux/bin/spades.py;
WTDBG2=/space/users/smk/Software/wtdbg2/wtdbg2;
WTPOA_CNS=/space/users/smk/Software/wtdbg2/wtpoa-cns;

CUTADAPT=/usr/local/bin/cutadapt;
PORECHOP=/space/users/smk/bin/porechop;
PRODIGAL=/space/sharedbin/bin/prodigal;
FRAGGENESCAN=/space/users/smk/Software/FragGeneScan1.30/run_FragGeneScan.pl;
HMMSEARCH=/usr/bin/hmmsearch;
ESSENTIAL=/space/users/smk/Desktop/2017_long_read/pipeline/mmlong/mmlong_tools/databases/essential.hmm;
KAIJU=/space/users/smk/Software/kaiju/bin;
KAIJU_DB=/space/users/smk/Software/kaiju/database;
BARRNAP=/space/sharedbin/bin/barrnap;
MOTHUR=/space/sharedbin/bin/mothur;
MOTHUR_DB=/space/users/smk/Desktop/2017_long_read/pipeline/mmlong/mmlong_tools/databases/silva.seed_v132.align;
MOTHUR_TAX=/space/users/smk/Desktop/2017_long_read/pipeline/mmlong/mmlong_tools/databases/silva.seed_v132.tax;
RSCRIPT=/usr/bin/Rscript;
METABAT2_COV=/space/sharedbin/bin/jgi_summarize_bam_contig_depths;
METABAT2=/space/sharedbin/bin/metabat2;
MEGAHIT=/space/users/smk/bin/megahit;

UNICYCLER=/space/users/smk/bin/unicycler;

QUAST=/space/sharedbin/bin/quast;
