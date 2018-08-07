#!/bin/zsh
#

wc -l ../data/*domains.bed | grep -v total | sed 's| \.\.\/data\/|	|g' | sed 's|\_domains\.bed|	total|g' | sed 's|\_ds||g' > ../results/domain_intersect_numbers.txt
wc -l ../results/*domains_in* | grep -v total | sed 's| \.\.\/results\/|	|g' | sed 's|\_domains\_in\_|	|' | sed 's|\.bed||' >> ../results/domain_intersect_numbers.txt

