1. samtools view --threads 5 m84089_230913_121354_s3.hifi_reads.bc2008.bam | awk -F "\t" '{print ">"$1"\n"$10}' > hifi-reasd.fasta

2. hifiasm -o asm -t 10 hifi-reads.fasta
awk '/^S/{print ">"$2;print $3}' asm.bp.p_ctg.gfa >name.p_ctg.fa

3. 