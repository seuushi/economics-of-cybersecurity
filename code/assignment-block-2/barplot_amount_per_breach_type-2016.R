tob <- X2016_Privacy_Rights_Clearinghouse_Data_Breaches_Export$`Type of breach`
tob_table <- table(tob)
t_tob_table <- t(tob_table)
barplot(t_tob_table[1,], main="Amount of breaches per breach type", xlab="Type of breach", ylab="Amount", ylim=c(0, 500), cex.names=0.8)

# Add text at top of bars
xx <- barplot(t_tob_table[1,], main="Amount of breaches per breach type", xlab="Type of breach", ylab="Amount", ylim=c(0, 500), cex.names=0.8)
text(x=xx, y=t_tob_table[1,], label=t_tob_table[1,], pos=3, cex=0.8)