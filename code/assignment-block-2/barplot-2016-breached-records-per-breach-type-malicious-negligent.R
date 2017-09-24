brpbt <- matrix(c(3640782, 7490233),ncol=2,byrow=TRUE)
colnames(brpbt) <- c("Malicious", "Negligent")
rownames(brpbt) <- c("Breached records")
brpbt <- as.table(brpbt)

#plot
barplot(brpbt, main="Breached records per breach type",
        xlab="Type of breach", ylab="Amount", ylim=c(0, 8000000), cex.names=0.8)

# Add text at top of bars
xx <- barplot(brpbt[1,], main="Breached records per breach type", xlab="Type of breach", ylab="Amount", ylim=c(0, 8000000), cex.names=0.8)
text(x=xx, y=brpbt[1,], label=brpbt[1,], pos=3, cex=0.8)