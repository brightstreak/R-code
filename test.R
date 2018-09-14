#Read input data
stat1_interactions <- read.csv("string_interactions2.tsv",sep="\t")
#Extract the proper columns
statsmall<-stat1_interactions[c(1,2,15)]
#Choose only those records with a sufficient score
statsmallfiltered <- subset(statsmall, combined_score >= 0.5)
#Write the table
write.table(statsmallfiltered, "statsmallfiltered.text", sep = "\t", quote = FALSE, row.names = FALSE)
#Print the combined scores to a picture
png('statsmall.png')
plot(statsmall$combined_score)
dev.off()
#Print success story
message("Script working, congratulations")
