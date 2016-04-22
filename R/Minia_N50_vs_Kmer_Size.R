metrics_kmer_m<-read.table(file = "Desktop/Cartwright_Lab_Stuff/metrics_file_kmerminia.txt",header=TRUE)
minia_N50 <- c(metrics_kmer_m$N50)
minia_kmer <- c(metrics_kmer_m$kmer_size)

metrics_kmer<-read.table(file = "Desktop/metrics_file_kmer.txt",header=TRUE)
velvet_N50 <- c(metrics_kmer$N50)
velvet_kmer <- c(metrics_kmer$kmer_size)

g_range <- range(0, minia_N50, velvet_N50)

plot(velvet_kmer, velvet_N50, type="o", col="blue", ylim=g_range, axes=FALSE, ann=FALSE)
box()
title(xlab="Kmer Size", col.lab=rgb(0,0.5,0))
title(ylab="N50", col.lab=rgb(0,0.5,0))

axis(1, las=1)
axis(2, las=1)

lines(minia_kmer, minia_N50, type="o", pch=22, col="red")

title(main="N50 vs Kmer Size", col.main="black")
legend(15,400, legend=c("Velvet", "Minia"), col=c("blue","red"), lty=1:1, cex=0.8)