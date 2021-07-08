setwd("/home/")

Data_all <- read.csv("File_sizes_os_all.csv", header=FALSE, sep=",")
Data_win32 <- read.csv("File_sizes_os_win32.csv", header=FALSE, sep=",")
Data_darwin <- read.csv("File_sizes_os_darwin.csv", header=FALSE, sep=",")
Data_linux <- read.csv("File_sizes_os_linux.csv", header=FALSE, sep=",")

All_array <- as.numeric(Data_all[Data_all[2]>=0,2]/1024)
win32_array <- as.numeric(Data_win32[Data_win32[2]>=0,2]/1024)
darwin_array <- as.numeric(Data_darwin[Data_darwin[2]>=0,2]/1024)
linux_array <- as.numeric(Data_linux[Data_linux[2]>=0,2]/1024)

All_log <- log (All_array[All_array>0])  
  win32_log <- log (win32_array[win32_array>0])  
  darwin_log <- log (darwin_array[darwin_array>0])
  linux_log <- log (linux_array[linux_array>0])    

All_lnMu <- mean(All_log)
  win32_lnMu <- mean(win32_log)
  darwin_lnMu <- mean(darwin_log)
  linux_lnMu <- mean(linux_log)
  
All_lnSig <- sd(All_log)
  win32_lnSig <- sd(win32_log)
  darwin_lnSig <- sd(darwin_log)
  linux_lnSig <- sd(linux_log)

All_lnMean = exp(All_lnMu+(All_lnSig**2)/2)
All_lnSD = exp(All_lnSig)
All_lnMedian = exp(All_lnMu)
write.table(data.frame("All files",All_lnMean, All_lnSD, All_lnMedian, stringsAsFactors = F), 
            file = "Log_normal_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)        

win32_lnMean = exp(win32_lnMu+(win32_lnSig**2)/2)
win32_lnSD = exp(win32_lnSig)
win32_lnMedian = exp(win32_lnMu)
write.table(data.frame("win32",win32_lnMean, win32_lnSD, win32_lnMedian, stringsAsFactors = F), 
            file = "Log_normal_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)        

darwin_lnMean = exp(darwin_lnMu+(darwin_lnSig**2)/2)
darwin_lnSD = exp(darwin_lnSig)
darwin_lnMedian = exp(darwin_lnMu)
write.table(data.frame("darwin",darwin_lnMean, darwin_lnSD, darwin_lnMedian, stringsAsFactors = F), 
            file = "Log_normal_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)        

linux_lnMean = exp(linux_lnMu+(linux_lnSig**2)/2)
linux_lnSD = exp(linux_lnSig)
linux_lnMedian = exp(linux_lnMu)
write.table(data.frame("linux",linux_lnMean, linux_lnSD, linux_lnMedian, stringsAsFactors = F), 
            file = "Log_normal_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)    



Data_use_personal <- read.csv("File_sizes_use_personal.csv", header=FALSE, sep=",")
Data_use_both <- read.csv("File_sizes_use_both.csv", header=FALSE, sep=",")
Data_use_workschool <- read.csv("File_sizes_use_workschool.csv", header=FALSE, sep=",")
Data_notPersonal_student <- read.csv("File_sizes_notPersonal_student.csv", header=FALSE, sep=",")
Data_notPersonal_knowledge <- read.csv("File_sizes_notPersonal_knowledge.csv", header=FALSE, sep=",")
Data_notPersonal_allother <- read.csv("File_sizes_notPersonal_allother.csv", header=FALSE, sep=",")
Data_notPersonal_IT <- read.csv("File_sizes_notPersonal_IT.csv", header=FALSE, sep=",")

use_personal_array <- as.numeric(Data_use_personal[Data_use_personal[2]>=0,2]/1024)
use_both_array <- as.numeric(Data_use_both[Data_use_both[2]>=0,2]/1024)
use_workschool_array <- as.numeric(Data_use_workschool[Data_use_workschool[2]>=0,2]/1024)
notPersonal_student_array <- as.numeric(Data_notPersonal_student[Data_notPersonal_student[2]>=0,2]/1024)
notPersonal_knowledge_array <- as.numeric(Data_notPersonal_knowledge[Data_notPersonal_knowledge[2]>=0,2]/1024)
notPersonal_allother_array <- as.numeric(Data_notPersonal_allother[Data_notPersonal_allother[2]>=0,2]/1024)
notPersonal_IT_array <- as.numeric(Data_notPersonal_IT[Data_notPersonal_IT[2]>=0,2]/1024)

use_personal_log <- log(use_personal_array[use_personal_array>0])  
use_both_log <- log(use_both_array[use_both_array>0])  
use_workschool_log <- log(use_workschool_array[use_workschool_array>0])  
notPersonal_student_log <- log(notPersonal_student_array[notPersonal_student_array>0])  
notPersonal_knowledge_log <- log (notPersonal_knowledge_array[notPersonal_knowledge_array>0])
notPersonal_IT_log <- log (notPersonal_IT_array[notPersonal_IT_array>0])    
notPersonal_allother_log <- log (notPersonal_allother_array[notPersonal_allother_array>0])    

use_personal_lnMu <- mean(use_personal_log)
use_both_lnMu <- mean(use_both_log)
use_workschool_lnMu <- mean(use_workschool_log)
notPersonal_student_lnMu <- mean(notPersonal_student_log)
notPersonal_knowledge_lnMu <- mean(notPersonal_knowledge_log)
notPersonal_IT_lnMu <- mean(notPersonal_IT_log)
notPersonal_allother_lnMu <- mean(notPersonal_allother_log)

use_personal_lnSig <- sd(use_personal_log)
use_both_lnSig <- sd(use_both_log)
use_workschool_lnSig <- sd(use_workschool_log)
notPersonal_student_lnSig <- sd(notPersonal_student_log)
notPersonal_knowledge_lnSig <- sd(notPersonal_knowledge_log)
notPersonal_IT_lnSig <- sd(notPersonal_IT_log)
notPersonal_allother_lnSig <- sd(notPersonal_allother_log)

use_personal_lnMean = exp(use_personal_lnMu+(use_personal_lnSig**2)/2)
use_personal_lnSD = exp(use_personal_lnSig)
use_personal_lnMedian = exp(use_personal_lnMu)
write.table(data.frame("use_personal files",use_personal_lnMean, use_personal_lnSD, use_personal_lnMedian, stringsAsFactors = F), 
            file = "Log_normal_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)        

use_both_lnMean = exp(use_both_lnMu+(use_both_lnSig**2)/2)
use_both_lnSD = exp(use_both_lnSig)
use_both_lnMedian = exp(use_both_lnMu)
write.table(data.frame("use_both files",use_both_lnMean, use_both_lnSD, use_both_lnMedian, stringsAsFactors = F), 
            file = "Log_normal_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F) 

use_workschool_lnMean = exp(use_workschool_lnMu+(use_workschool_lnSig**2)/2)
use_workschool_lnSD = exp(use_workschool_lnSig)
use_workschool_lnMedian = exp(use_workschool_lnMu)
write.table(data.frame("use_workschool files",use_workschool_lnMean, use_workschool_lnSD, use_workschool_lnMedian, stringsAsFactors = F), 
            file = "Log_normal_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F) 

notPersonal_student_lnMean = exp(notPersonal_student_lnMu+(notPersonal_student_lnSig**2)/2)
notPersonal_student_lnSD = exp(notPersonal_student_lnSig)
notPersonal_student_lnMedian = exp(notPersonal_student_lnMu)
write.table(data.frame("notPersonal_student_ files",notPersonal_student_lnMean, notPersonal_student_lnSD, notPersonal_student_lnMedian, stringsAsFactors = F), 
            file = "Log_normal_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)  

notPersonal_knowledge_lnMean = exp(notPersonal_knowledge_lnMu+(notPersonal_knowledge_lnSig**2)/2)
notPersonal_knowledge_lnSD = exp(notPersonal_knowledge_lnSig)
notPersonal_knowledge_lnMedian = exp(notPersonal_knowledge_lnMu)
write.table(data.frame("notPersonal_knowledge files",notPersonal_knowledge_lnMean, notPersonal_knowledge_lnSD, notPersonal_knowledge_lnMedian, stringsAsFactors = F), 
            file = "Log_normal_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)  

notPersonal_allother_lnMean = exp(notPersonal_allother_lnMu+(notPersonal_allother_lnSig**2)/2)
notPersonal_allother_lnSD = exp(notPersonal_allother_lnSig)
notPersonal_allother_lnMedian = exp(notPersonal_allother_lnMu)
write.table(data.frame("notPersonal_allother files",notPersonal_allother_lnMean, notPersonal_allother_lnSD, notPersonal_allother_lnMedian, stringsAsFactors = F), 
            file = "Log_normal_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)  

notPersonal_IT_lnMean = exp(notPersonal_IT_lnMu+(notPersonal_IT_lnSig**2)/2)
notPersonal_IT_lnSD = exp(notPersonal_IT_lnSig)
notPersonal_IT_lnMedian = exp(notPersonal_IT_lnMu)
write.table(data.frame("notPersonal_IT files",notPersonal_IT_lnMean, notPersonal_IT_lnSD, notPersonal_IT_lnMedian, stringsAsFactors = F), 
            file = "Log_normal_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)        

notPersonal_allother_lnMean = exp(notPersonal_allother_lnMu+(notPersonal_allother_lnSig**2)/2)
notPersonal_allother_lnSD = exp(notPersonal_allother_lnSig)
notPersonal_allother_lnMedian = exp(notPersonal_allother_lnMu)
write.table(data.frame("notPersonal_allother files",notPersonal_allother_lnMean, notPersonal_allother_lnSD, notPersonal_allother_lnMedian, stringsAsFactors = F), 
            file = "Log_normal_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)        