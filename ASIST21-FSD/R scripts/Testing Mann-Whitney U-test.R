setwd("/home/")

#Calculating MWU p-values for OS categories
Data_all <- read.csv("File_sizes_os_all.csv", header=FALSE, sep=",")
Data_win32 <- read.csv("File_sizes_os_win32.csv", header=FALSE, sep=",")
Data_darwin <- read.csv("File_sizes_os_darwin.csv", header=FALSE, sep=",")
Data_linux <- read.csv("File_sizes_os_linux.csv", header=FALSE, sep=",")

All_array <- as.matrix(Data_all)[,1]
win32_array <- as.matrix(Data_win32)[,1]
darwin_array <- as.matrix(Data_darwin)[,1]
linux_array <- as.matrix(Data_linux)[,1]

All_win32 <- wilcox.test(All_array, win32_array, alternative = "two.sided")
All_darwin <- wilcox.test(All_array, darwin_array, alternative = "two.sided")
All_linux <- wilcox.test(All_array, linux_array, alternative = "two.sided")

win32_darwin <- wilcox.test(win32_array, darwin_array, alternative = "two.sided")
win32_linux <- wilcox.test(win32_array, linux_array, alternative = "two.sided")

darwin_linux <- wilcox.test(darwin_array, linux_array, alternative = "two.sided")

write.table(data.frame(All_win32$p.value, All_darwin$p.value, All_linux$p.value, win32_darwin$p.value, win32_linux$p.value, darwin_linux$p.value, stringsAsFactors = F), 
            file = "U-test-OS.csv", 
            sep=",",append = T,row.names = F, col.names = F)    



#Calculating MWU p-values for hybrid categories
Data_personal <- read.csv("File_sizes_use_personal.csv", header=FALSE, sep=",")
Data_student_notPersonal <- read.csv("File_sizes_oc_student_notPersonal.csv", header=FALSE, sep=",")
Data_knowledge_notPersonal <- read.csv("File_sizes_oc_knowledge_notPersonal.csv", header=FALSE, sep=",")
Data_IT_notPersonal <- read.csv("File_sizes_oc_IT_notPersonal.csv", header=FALSE, sep=",")
Data_allother_notPersonal <- read.csv("File_sizes_oc_allother_notPersonal.csv", header=FALSE, sep=",")

personal_array <- as.matrix(Data_personal)[,1]
student_array <- as.matrix(Data_student_notPersonal)[,1]
knowledge_array <- as.matrix(Data_knowledge_notPersonal)[,1]
IT_array <- as.matrix(Data_IT_notPersonal)[,1]
allother_array <- as.matrix(Data_allother_notPersonal)[,1]

personal_student <- wilcox.test(personal_array, student_array, alternative = "two.sided", exact = TRUE)
personal_knowledge <- wilcox.test(personal_array, knowledge_array, alternative = "two.sided")
personal_IT <- wilcox.test(personal_array, IT_array, alternative = "two.sided")
personal_allother <- wilcox.test(personal_array, allother_array, alternative = "two.sided")

student_knowledge <- wilcox.test(student_array, knowledge_array, alternative = "two.sided")
student_IT <- wilcox.test(student_array, IT_array, alternative = "two.sided")
student_allother <- wilcox.test(student_array, allother_array, alternative = "two.sided")

knowledge_IT <- wilcox.test(knowledge_array, IT_array, alternative = "two.sided")
knowledge_allother <- wilcox.test(knowledge_array, allother_array, alternative = "two.sided")

IT_allother <- wilcox.test(IT_array, allother_array, alternative = "two.sided")

write.table(data.frame(personal_student$p.value, personal_knowledge$p.value, personal_IT$p.value, personal_allother$p.value, student_knowledge$p.value, student_IT$p.value, 
                       student_allother$p.value, knowledge_IT$p.value , knowledge_allother$p.value, IT_allother$p.value, stringsAsFactors = F), 
            file = "U-test-hybrid.csv", 
            sep=",",append = T,row.names = F, col.names = F)    

