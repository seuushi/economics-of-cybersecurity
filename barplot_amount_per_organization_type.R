too <- Privacy_Rights_Clearinghouse_Data_Breaches_Export$`Type of organization`
too_table <- table(too)
t_too_table <- t(too_table)
barplot(t_too_table[1,], main="Amount of breaches per type of Organization", xlab="Type of organization", ylab="Amount", ylim=c(0, 1700))

# Add text at top of bars
xx <- barplot(t_too_table[1,], main="Amount of breaches per type of Organization", xlab="Type of organization", ylab="Amount", ylim=c(0, 1700))
text(x=xx, y=t_too_table[1,], label=t_too_table[1,], pos=3, cex=0.8)