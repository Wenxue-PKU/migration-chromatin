#!/bin/zsh
#

for i in ../results/*bed
do
	out=$(echo $i | sed 's|\.bed|\_PC1\.txt|')
	bedtools intersect -wa -wb -a $i -b ../data/100kb_14mig.PC1.bed > $out
done
