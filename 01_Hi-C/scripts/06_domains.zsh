#!/bin/zsh
#

bedtools intersect -f 0.80 -wa -a ../data/5mig_ds_domains.bed -b ../data/ctrlmig_ds_domains.bed > ../results/5mig_domains_in_ctrlmig.bed 

bedtools intersect -f 0.80 -wa -a ../data/14mig_domains.bed -b ../data/ctrlmig_ds_domains.bed > ../results/14mig_domains_in_ctrlmig.bed 

bedtools intersect -f 0.80 -wa -a ../data/5mig_ds_domains.bed -b ../data/14mig_domains.bed > ../results/5mig_domains_in_14mig.bed 

bedtools intersect -v -f 0.80 -wa -a ../data/5mig_ds_domains.bed -b ../data/14mig_domains.bed > ../results/5mig_domains_not_in_14mig.bed 
