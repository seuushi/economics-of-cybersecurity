tob <- X2016_Privacy_Rights_Clearinghouse_Data_Breaches_Export$`Type of breach`
tob_table <- table(tob)
malicious <- as.numeric(tob_table[1]) + as.numeric(tob_table[3]) + as.numeric(tob_table[4])
negligent <- as.numeric(tob_table[2]) + as.numeric(tob_table[5]) + as.numeric(tob_table[6]) + as.numeric(tob_table[7]) + as.numeric(tob_table[8])
                                                                                                        
bpb <- matrix(c(malicious, negligent),ncol=2,byrow=TRUE)
colnames(bpb) <- c("Malicious", "Negligent")
rownames(bpb) <- c("Breaches")
bpb <- as.table(bpb)

#plot
barplot(bpb, main="Breaches per breach type",
        xlab="Type of breach", ylab="Amount", ylim=c(0, 500), cex.names=0.8)

# Add text at top of bars
xx <- barplot(bpb[1,], main="Breaches per breach type", xlab="Type of breach", ylab="Amount", ylim=c(0, 500), cex.names=0.8)
text(x=xx, y=bpb[1,], label=bpb[1,], pos=3, cex=0.8)