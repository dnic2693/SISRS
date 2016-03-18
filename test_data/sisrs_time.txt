 #!/bin/sh
for k in 15 17 19 21 23 25 27 29 31 33 35
do
    /usr/bin/time -f "%M" ../source/bin/sisrs sites -g 1745690 -p 20 -a minia -k ${k} 2> output.txt
    perl -pi -e 'chomp if eof' metrics_file.txt
    tail -1 output.txt >> metrics_file.txt
done
    
#    for m in 8 7 6 5 4 3 2 1 0
#    do
#         ../source/bin/sisrs changeMissing -g 1745690 -p 20 -a ${a} -m ${m}
#         perl -pi -e 'chomp if eof' metrics_file.txt
#         head -n1 alignment_m${m}.phylip-relaxed | awk -v x=2 '{print $x}' >> metrics_file.txt
#         perl -pi -e 'chomp if eof' metrics_file.txt
#         echo " x" >> metrics_file.txt
#    done
#done

#When prompted in shell: Type '1' then 'enter' for yes or Type '2' then 'enter' for no

#${a}