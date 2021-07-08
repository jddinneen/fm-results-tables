setwd("/hone/")


#Drawing CDFs of different categories by OS in the present study
Data_all <- read.csv("File_sizes_os_all.csv", header=FALSE, sep=",")
Data_win32 <- read.csv("File_sizes_os_win32.csv", header=FALSE, sep=",")
Data_darwin <- read.csv("File_sizes_os_darwin.csv", header=FALSE, sep=",")
Data_linux <- read.csv("File_sizes_os_linux.csv", header=FALSE, sep=",")

All_array <- Data_all[,2]
win32_array <- Data_win32[,2]
darwin_array <- Data_darwin[,2]
linux_array <- Data_linux[,2]

All_array <- All_array[All_array>0]
win32_array <- win32_array[win32_array>0]
darwin_array <- darwin_array[darwin_array>0]
linux_array <- linux_array[linux_array>0]

All_log <- log2(All_array)  
win32_log <- log2(win32_array)  
darwin_log <- log2(darwin_array)
linux_log <- log2(linux_array) 

P_All <- ecdf(All_log)
P_win32 <- ecdf(win32_log) 
P_darwin <- ecdf(darwin_log) 
P_linux <- ecdf(linux_log)


plot(P_darwin, main="CDFs of files by size", xlab="File size (bytes, log scale)", ylab="Cumulative % of file size", xaxt = "n", xlim=c(5,29), yaxt="n", col="blue", lty=1)
plot(P_win32, col="red", add=TRUE, lty=1)
plot(P_linux, col="green", add=TRUE, lty=1)
legend(
  "bottomright", 
  lty=c(1,1,1), 
  col=c("blue", "green", "red"), 
  legend = c("Mac OS", "GNU/Linux", "Windows")
)
axis(1, at=c(5,7,9,11,13,15,17,19,21,23,25,27,29), labels=c("32","128","512","2K","8K","32K"," 128K"," 512K","2M","8M","32M"," 128M"," 512M"),las=2)
axis(2, at=c(0,0.2,0.4,0.6,0.8,1), labels=c("0%","20%","40%","60%","80%","100%"),las=2)
abline(a = NULL, b = NULL, h = 0.5, v = NULL, reg = NULL, coef = NULL, untf = FALSE, lty = 2, col = "grey")


#Drawing CDFs of different occupations in the present study
Data_artist <- read.csv("File_sizes_oc_artist.csv", header=FALSE, sep=",")
Data_IT <- read.csv("File_sizes_oc_IT.csv", header=FALSE, sep=",")
Data_knowledge <- read.csv("File_sizes_oc_knowledge.csv", header=FALSE, sep=",")
Data_service <- read.csv("File_sizes_oc_service.csv", header=FALSE, sep=",")
Data_student <- read.csv("File_sizes_oc_student.csv", header=FALSE, sep=",")
Data_other <- read.csv("File_sizes_oc_other.csv", header=FALSE, sep=",")

artist_array <- as.matrix(Data_artist)[,1]
IT_array <- as.matrix(Data_IT)[,1]
knowledge_array <- as.matrix(Data_knowledge)[,1]
service_array <- as.matrix(Data_service)[,1]
student_array <- as.matrix(Data_student)[,1]
other_array <- as.matrix(Data_other)[,1]

artist_log <- log2(artist_array)  
IT_log <- log2(IT_array)
knowledge_log <- log2(knowledge_array) 
service_log <- log2(service_array) 
student_log <- log2(student_array) 
other_log <- log2(other_array) 

P_artist <- ecdf(artist_log) 
P_IT <- ecdf(IT_log) 
P_knowledge <- ecdf(knowledge_log)
P_service <- ecdf(service_log)
P_student <- ecdf(student_log)
P_other <- ecdf(other_log)

plot(P_IT, main="CDFs of files by size", xlab="File size (bytes, log scale)", ylab="Cumulative % of file size", xaxt = "n", xlim=c(5,29), yaxt="n", col="blue", lty=1)
plot(P_student, col="red", add=TRUE, lty=1)
plot(P_artist, col="green", add=TRUE, lty=1)
plot(P_knowledge, col="yellow", add=TRUE, lty=1)
plot(P_other, col="orange", add=TRUE, lty=1)
plot(P_service, col="purple", add=TRUE, lty=1)
legend(
  "bottomright", 
  lty=c(1,1,1,1,1,1), 
  col=c("blue", "red", "green","yellow","orange","purple"), 
  legend = c("IT occupations (n=31)", "students (n=147)", "artist occupations (n=10)",  "knowledge worker occupations (n=105)", "other occupations (n=42)", "service occupations (n=12)")
)
axis(1, at=c(5,7,9,11,13,15,17,19,21,23,25,27,29), labels=c("32","128","512","2K","8K","32K"," 128K"," 512K","2M","8M","32M"," 128M"," 512M"),las=2)
axis(2, at=c(0,0.2,0.4,0.6,0.8,1), labels=c("0%","20%","40%","60%","80%","100%"),las=2)




#Drawing CDFs of different uses in the present study
Data_personal <- read.csv("File_sizes_use_personal.csv", header=FALSE, sep=",")
Data_workschool <- read.csv("File_sizes_use_workschool.csv", header=FALSE, sep=",")
Data_both <- read.csv("File_sizes_use_both.csv", header=FALSE, sep=",")

personal_array <- Data_personal[,2]
workschool_array <- Data_workschool[,2]
both_array <- Data_both[,2]

personal_array <- personal_array[personal_array>0]
workschool_array <- workschool_array[workschool_array>0]
both_array <- both_array[both_array>0]

personal_log <- log2(personal_array)  
workschool_log <- log2(workschool_array)
both_log <- log2(both_array) 


P_personal <- ecdf(personal_log) 
P_workschool <- ecdf(workschool_log) 
P_both <- ecdf(both_log)


plot(P_workschool, main="CDFs of files by size", xlab="File size (bytes, log scale)", ylab="Cumulative % of file size", xaxt = "n", xlim=c(5,29), yaxt="n", col="blue", lty=1)
plot(P_both, col="red", add=TRUE, lty=1)
plot(P_personal, col="green", add=TRUE, lty=1)
legend(
  "bottomright", 
  lty=c(1,1,1), 
  col=c("blue", "red", "green"), 
  legend = c("Work/School use (n=55)", "Work/School & Personal use (n=253)", "Personal use (n=39)")
)
axis(1, at=c(5,7,9,11,13,15,17,19,21,23,25,27,29), labels=c("32","128","512","2K","8K","32K"," 128K"," 512K","2M","8M","32M"," 128M"," 512M"),las=2)
axis(2, at=c(0,0.2,0.4,0.6,0.8,1), labels=c("0%","20%","40%","60%","80%","100%"),las=2)




#Drawing CDFs of the present study in comparison to other studies
Data_all <- read.csv("File_sizes_os_all.csv", header=FALSE, sep=",")
All_array <- Data_all[,2]
All_array <- All_array[All_array>0]
All_log <- log2(All_array)  
P_All <- ecdf(All_log)

Data_notPersonal_knowledge <- read.csv("File_sizes_notPersonal_knowledge.csv", header=FALSE, sep=",")
notPersonal_knowledge_array <- Data_notPersonal_knowledge[,2]
notPersonal_knowledge_log <- log2(notPersonal_knowledge_array)  
P_notPersonal_knowledge <- ecdf(notPersonal_knowledge_log) 

oldData <- read.csv("old_CDFs.csv",
                    header=FALSE, sep=",")

file_sizes <- as.double(oldData[1,2:34])

Skondric_files <- as.double(oldData[2,2:34]) 
Agrawal_files <- as.double(oldData[3,2:34])
Tanenbaum_files <- as.double(oldData[4,2:34])

Skondric_file_sizes <- NULL
Agrawal_file_sizes <- NULL
Tanenbaum_file_sizes <- NULL

file_sizes_log <- log2(as.double(file_sizes))

for (n in 1:25){
  Skondric_gap_percentage <-  Skondric_files[n+1]-Skondric_files[n]
  Agrawal_gap_percentage <-  Agrawal_files[n+1]-Agrawal_files[n]
  Tanenbaum_gap_percentage <-  Tanenbaum_files[n+1]-Tanenbaum_files[n]
  if (Skondric_gap_percentage>0)
  {
    n_in_Skondric_percentage <- Skondric_gap_percentage*10000
    Skondric_file_sizes <- c(Skondric_file_sizes,runif(n_in_Skondric_percentage, min=file_sizes[n], max=file_sizes[n+1]))
  }
  if (Agrawal_gap_percentage>0)
  {
    n_in_Agrawal_percentage <- Agrawal_gap_percentage*10000
    Agrawal_file_sizes <- c(Agrawal_file_sizes,runif(n_in_Agrawal_percentage, min=file_sizes[n], max=file_sizes[n+1]))
  }  
  if (Tanenbaum_gap_percentage>0)
  {
    n_in_Tanenbaum_percentage <- Tanenbaum_gap_percentage*10000
    Tanenbaum_file_sizes <- c(Tanenbaum_file_sizes,runif(n_in_Tanenbaum_percentage, min=file_sizes[n], max=file_sizes[n+1]))
  }
}

Skondric_log <- log2(Skondric_file_sizes)
Agrawal_log <- log2(Agrawal_file_sizes)  
Tanenbaum_log <- log2(Tanenbaum_file_sizes)  

P_Skondric <- ecdf(Skondric_log)
P_Agrawal <- ecdf(Agrawal_log)
P_Tanenbaum <- ecdf(Tanenbaum_log)

#CDF plot for Agrawal, Skondric and the present study
plot(P_All, main="CDFs of files by size", xlab="File size (bytes, log scale)", ylab="Cumulative % of file size", xaxt = "n", xlim=c(5,29), yaxt="n", pch = 15, cex=0.3)
plot(P_Skondric, col="blue", pch = 20, cex=0.3, add=TRUE)
plot(P_Agrawal, col="green", pch = 24, cex=0.3, add=TRUE)
legend(
  "bottomright", 
  lty=c(1,1,1), 
  cex=1,
  col=c(#"red", #
    "green", "blue", "black"), 
  legend = c("Agrawal 2007", 
             "Skondric 2020",
             "present study") 
)
axis(1, at=c(5,7,9,11,13,15,17,19,21,23,25,27,29), labels=c("32","128","512","2K","8K","32K"," 128K"," 512K","2M","8M","32M"," 128M"," 512M"),las=2)
axis(2, at=c(0,0.2,0.4,0.6,0.8,1), labels=c("0%","20%","40%","60%","80%","100%"),las=2)

plot(P_notPersonal_knowledge, main="CDFs of files by size", xlab="File size (bytes, log scale)", ylab="Cumulative % of file size", xaxt = "n", xlim=c(5,29), yaxt="n", lty=1, col="red")
plot(P_Agrawal, col="blue", lty=1, add=TRUE)
plot(P_Tanenbaum, col="green", lty=1, add=TRUE)
plot(P_Skondric, col="purple", lty=1, add=TRUE)

legend(
  "bottomright", 
  lty=c(1,1,1,1), 
  #cex=1,
  col=c("green", "blue","purple", "red"), 
  legend = c("Tanenbaum (2006), mechanical engineers",
             "Agrawal (2007), Microsoft employees",
             "Skondric (2020), university admins",
             "present study, knowledge workers") 
)
axis(1, at=c(5,7,9,11,13,15,17,19,21,23,25,27,29), labels=c("32","128","512","2K","8K","32K"," 128K"," 512K","2M","8M","32M"," 128M"," 512M"),las=2)
axis(2, at=c(0,0.2,0.4,0.6,0.8,1), labels=c("0%","20%","40%","60%","80%","100%"),las=2)
abline(a = NULL, b = NULL, h = 0.5, v = NULL, reg = NULL, coef = NULL, untf = FALSE, lty = 2, col = "grey")



#Drawing CDFs of the present study in comparison to only Agrawal
Data_all <- read.csv("File_sizes_os_all.csv", header=FALSE, sep=",")
All_array <- Data_all[,2]
All_array <- All_array[All_array>0]
All_log <- log2(All_array)  
P_All <- ecdf(All_log)

oldData <- read.csv("old_CDFs.csv",
                    header=FALSE, sep=",")

file_sizes <- as.double(oldData[1,2:34])
file_sizes_log <- log2(as.double(file_sizes))

Agrawal_files <- as.double(oldData[3,2:34])
Agrawal_file_sizes <- NULL


for (n in 1:25){
  Agrawal_gap_percentage <-  Agrawal_files[n+1]-Agrawal_files[n]

  if (Agrawal_gap_percentage>0)
  {
    n_in_Agrawal_percentage <- Agrawal_gap_percentage*1000
    Agrawal_file_sizes <- c(Agrawal_file_sizes,runif(n_in_Agrawal_percentage, min=file_sizes[n], max=file_sizes[n+1]))
  }  
}

Agrawal_log <- log2(Agrawal_file_sizes)  
P_Agrawal <- ecdf(Agrawal_log)

plot(P_All, main="CDFs of files by size", xlab="File size (bytes, log scale)", ylab="Cumulative % of file size", xaxt = "n", xlim=c(5,29), yaxt="n", pch = 15, cex=0.3, col="red")
plot(P_Agrawal, col="blue", pch = 15, cex=0.3, add=TRUE)
legend(
  "bottomright", 
  lty=c(1,1), 
  cex=1,
  col=c("blue", "red"), 
  legend = c(
    "Agrawal 2007", 
    "present study") 
)
axis(1, at=c(5,7,9,11,13,15,17,19,21,23,25,27,29), labels=c("32","128","512","2K","8K","32K"," 128K"," 512K","2M","8M","32M"," 128M"," 512M"),las=2)
axis(2, at=c(0,0.2,0.4,0.6,0.8,1), labels=c("0%","20%","40%","60%","80%","100%"),las=2)



#Drawing hybrid plot in the present study
Data_personal <- read.csv("File_sizes_use_personal.csv", header=FALSE, sep=",")
Data_notPersonal_student <- read.csv("File_sizes_notPersonal_student.csv", header=FALSE, sep=",")
Data_notPersonal_knowledge <- read.csv("File_sizes_notPersonal_knowledge.csv", header=FALSE, sep=",")
Data_notPersonal_allother <- read.csv("File_sizes_notPersonal_allother.csv", header=FALSE, sep=",")
Data_notPersonal_IT <- read.csv("File_sizes_notPersonal_IT.csv", header=FALSE, sep=",")

personal_array <- Data_personal[,2]
notPersonal_student_array <- Data_notPersonal_student[,2]
notPersonal_knowledge_array <- Data_notPersonal_knowledge[,2]
notPersonal_allother_array <- Data_notPersonal_allother[,2]
notPersonal_IT_array <- Data_notPersonal_IT[,2]

personal_array <- personal_array[personal_array>0]
notPersonal_student_array <- notPersonal_student_array[notPersonal_student_array>0]
notPersonal_knowledge_array <- notPersonal_knowledge_array[notPersonal_knowledge_array>0]
notPersonal_allother_array <- notPersonal_allother_array[notPersonal_allother_array>0]
notPersonal_IT_array <- notPersonal_IT_array[notPersonal_IT_array>0]

personal_log <- log2(personal_array)  
notPersonal_student_log <- log2(notPersonal_student_array)  
notPersonal_knowledge_log <- log2(notPersonal_knowledge_array)  
notPersonal_allother_log <- log2(notPersonal_allother_array)  
notPersonal_IT_log <- log2(notPersonal_IT_array)  

P_personal <- ecdf(personal_log) 
P_notPersonal_student <- ecdf(notPersonal_student_log)
P_notPersonal_knowledge <- ecdf(notPersonal_knowledge_log) 
P_notPersonal_allother <- ecdf(notPersonal_allother_log) 
P_notPersonal_IT <- ecdf(notPersonal_IT_log) 

plot(P_notPersonal_IT, main="CDFs of files by size", xlab="File size (bytes, log scale)", ylab="Cumulative % of file size", xaxt = "n", xlim=c(5,29), yaxt="n", col="purple", lty=1)
plot(P_notPersonal_student, col="orange", add=TRUE, lty=1)
plot(P_notPersonal_knowledge, col="green", add=TRUE, lty=1)
plot(P_personal, col="blue", add=TRUE, lty=1)
plot(P_notPersonal_allother, col="red", add=TRUE, lty=1)
legend(
  "bottomright", 
  lty=c(1,1,1,1,1), 
  col=c("purple", "orange", "green", "blue", "red"), 
  legend = c("IT work", "studies", "knowledge work", "personal use", "other work")
)
axis(1, at=c(5,7,9,11,13,15,17,19,21,23,25,27,29), labels=c("32","128","512","2K","8K","32K"," 128K"," 512K","2M","8M","32M"," 128M"," 512M"),las=2)
axis(2, at=c(0,0.2,0.4,0.6,0.8,1), labels=c("0%","20%","40%","60%","80%","100%"),las=2)
abline(a = NULL, b = NULL, h = 0.5, v = NULL, reg = NULL, coef = NULL, untf = FALSE, lty = 2, col = "grey")