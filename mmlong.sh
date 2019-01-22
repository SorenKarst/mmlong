#!/bin/bash
# mmlong toolbox
# By Søren Karst and Rasmus Kirkegaard
# Version
MMLONG_VERSION=0.1.2

################################################################################
### Preparation ----------------------------------------------------------------
################################################################################

### Description ----------------------------------------------------------------

USAGE="$(basename "$0") [-h] [ name ...]

-- mmlong v. ${MMLONG_VERSION}: workflows and tools for short and long
                    read microbial metagenomics.

where:
    -h   Show this help text.
    name Name of tool.
    ...  Commands for tool.

Workflows:
* hybrid-metaflow:   Metagenomic long read assembly and binning from
                     using short and long read data.
* short-metaflow:    Metagenomic assembly and binning from short
                     read data.
* bin-reassembly:    Reassembly of metagenome bins using unicycler.

Tools:
* miniasm-racon:     Long read assembly with miniasm and racon polishing.
* readcoverage:      Read mapping and read coverage estimation.
* links:             Read mapping and detection of putative links between
                     scaffolds in an assembly.
* basic-annotation:  Basic annotation of genomic data includes calling
                     and classification of essential genes and 16S rRNA
                     gene.

For help with a specific tool type: mmlong <name> -h
"

### Terminal Arguments ---------------------------------------------------------


# Import user arguments
while getopts ':hz' OPTION; do
  case $OPTION in
    h) echo "$USAGE"; exit 1;;
    :) printf "missing argument for -$OPTARG\n" >&2; exit 1;;
    \?) printf "invalid option for -$OPTARG\n" >&2; exit 1;;
  esac
done
TOOL=$1
TOOL_ARG="${*:2}"

# Check missing arguments
if [ -z "${TOOL}" ]; then printf "\n No tool selected!\n\n"; echo "$USAGE"; exit 1; fi; 
if [ -z "${TOOL_ARG}" ]; then
  printf "\n No arguments provided to $TOOL!\n\n"
  TOOL_ARG="-h"
fi

# Paths
SCRIPT_PATH=`readlink ${BASH_SOURCE[0]}`
export MMLONG_DIR=${SCRIPT_PATH%/*}

### Call tool ------------------------------------------------------------------

$MMLONG_DIR/mmlong_tools/mmlong_$TOOL $TOOL_ARG
