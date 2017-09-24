bpo <- matrix(c(23, 131, 3, 10, 15, 227, 2, 12, 24, 0, 9, 11, 340, 1),ncol=7,byrow=TRUE)
colnames(bpo) <- c("BSF", "BSO", "BSR", "EDU", "GOV", "MED", "NGO")
rownames(bpo) <- c("Malicious", "Negligent")
bpo <- as.table(bpo)

#plot
barplot(bpo, main="Amount of breaches per type of industry",
        xlab="Industries", ylab="Amount", col=c("red", "blue"),
        legend = rownames(bpo), args.legend = list(x=7, y=400), beside=TRUE, ylim=c(0, 420), cex.names=0.8)