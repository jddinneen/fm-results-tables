setwd("/home/")

Data_all <- read.csv("File_sizes_os_all.csv", header=FALSE, sep=",")
Data_win32 <- read.csv("File_sizes_os_win32.csv", header=FALSE, sep=",")
Data_darwin <- read.csv("File_sizes_os_darwin.csv", header=FALSE, sep=",")
Data_linux <- read.csv("File_sizes_os_linux.csv", header=FALSE, sep=",")

All_array <- as.numeric(Data_all[Data_all[2]>=0,2])
win32_array <- as.numeric(Data_win32[Data_win32[2]>=0,2])
darwin_array <- as.numeric(Data_darwin[Data_darwin[2]>=0,2])
linux_array <- as.numeric(Data_linux[Data_linux[2]>=0,2])

All_Mean = mean(All_array/1024, na.rm = TRUE)
All_SD = sd(All_array/1024, na.rm = TRUE)
All_Median = median(All_array/1024, na.rm = TRUE)
All_Min = min(All_array/1024, na.rm = TRUE)
All_Max = max(All_array/1024, na.rm = TRUE)
write.table(data.frame("All files",All_Mean, All_SD, All_Median, All_Min, All_Max, stringsAsFactors = F), 
            file = "Standard_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)        

win32_Mean = mean(win32_array/1024, na.rm = TRUE)
win32_SD = sd(win32_array/1024, na.rm = TRUE)
win32_Median = median(win32_array/1024, na.rm = TRUE)
win32_Min = min(win32_array/1024, na.rm = TRUE)
win32_Max = max(win32_array/1024, na.rm = TRUE)
write.table(data.frame("win32",win32_Mean, win32_SD, win32_Median, win32_Min, win32_Max, stringsAsFactors = F), 
            file = "Standard_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)        

darwin_Mean = mean(darwin_array/1024, na.rm = TRUE)
darwin_SD = sd(darwin_array/1024, na.rm = TRUE)
darwin_Median = median(darwin_array/1024, na.rm = TRUE)
darwin_Min = min(darwin_array/1024, na.rm = TRUE)
darwin_Max = max(darwin_array/1024, na.rm = TRUE)
write.table(data.frame("darwin", darwin_Mean, darwin_SD, darwin_Median, darwin_Min, darwin_Max, stringsAsFactors = F), 
            file = "Standard_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)        

linux_Mean = mean(linux_array/1024, na.rm = TRUE)
linux_SD = sd(linux_array/1024, na.rm = TRUE)
linux_Median = median(linux_array/1024, na.rm = TRUE)
linux_Min = min(linux_array/1024, na.rm = TRUE)
linux_Max = max(linux_array/1024, na.rm = TRUE)
write.table(data.frame("linux",linux_Mean, linux_SD, linux_Median, linux_Min, linux_Max, stringsAsFactors = F), 
            file = "Standard_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)    




Data_use_personal <- read.csv("File_sizes_use_personal.csv", header=FALSE, sep=",")
Data_use_both <- read.csv("File_sizes_use_both.csv", header=FALSE, sep=",")
Data_use_workschool <- read.csv("File_sizes_use_workschool.csv", header=FALSE, sep=",")
Data_notPersonal_student <- read.csv("File_sizes_notPersonal_student.csv", header=FALSE, sep=",")
Data_notPersonal_knowledge <- read.csv("File_sizes_notPersonal_knowledge.csv", header=FALSE, sep=",")
Data_notPersonal_allother <- read.csv("File_sizes_notPersonal_allother.csv", header=FALSE, sep=",")
Data_notPersonal_IT <- read.csv("File_sizes_notPersonal_IT.csv", header=FALSE, sep=",")

use_personal_array <- as.numeric(Data_use_personal[Data_use_personal[2]>=0,2])
use_both_array <- as.numeric(Data_use_both[Data_use_both[2]>=0,2])
use_workschool_array <- as.numeric(Data_use_workschool[Data_use_workschool[2]>=0,2])
notPersonal_student_array <- as.numeric(Data_notPersonal_student[Data_notPersonal_student[2]>=0,2])
notPersonal_knowledge_array <- as.numeric(Data_notPersonal_knowledge[Data_notPersonal_knowledge[2]>=0,2])
notPersonal_allother_array <- as.numeric(Data_notPersonal_allother[Data_notPersonal_allother[2]>=0,2])
notPersonal_IT_array <- as.numeric(Data_notPersonal_IT[Data_notPersonal_IT[2]>=0,2])

use_personal_Mean = mean(use_personal_array/1024, na.rm = TRUE)
use_personal_SD = sd(use_personal_array/1024, na.rm = TRUE)
use_personal_Median = median(use_personal_array/1024, na.rm = TRUE)
use_personal_Min = min(use_personal_array/1024, na.rm = TRUE)
use_personal_Max = max(use_personal_array/1024, na.rm = TRUE)
write.table(data.frame("use_personal files",use_personal_Mean, use_personal_SD, use_personal_Median, use_personal_Min, use_personal_Max, stringsAsFactors = F), 
            file = "Standard_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)        

use_both_Mean = mean(use_both_array/1024, na.rm = TRUE)
use_both_SD = sd(use_both_array/1024, na.rm = TRUE)
use_both_Median = median(use_both_array/1024, na.rm = TRUE)
use_both_Min = min(use_both_array/1024, na.rm = TRUE)
use_both_Max = max(use_both_array/1024, na.rm = TRUE)
write.table(data.frame("use_both files",use_both_Mean, use_both_SD, use_both_Median, use_both_Min, use_both_Max, stringsAsFactors = F), 
            file = "Standard_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)   

use_workschool_Mean = mean(use_workschool_array/1024, na.rm = TRUE)
use_workschool_SD = sd(use_workschool_array/1024, na.rm = TRUE)
use_workschool_Median = median(use_workschool_array/1024, na.rm = TRUE)
use_workschool_Min = min(use_workschool_array/1024, na.rm = TRUE)
use_workschool_Max = max(use_workschool_array/1024, na.rm = TRUE)
write.table(data.frame("use_workschool files",use_workschool_Mean, use_workschool_SD, use_workschool_Median, use_workschool_Min, use_workschool_Max, stringsAsFactors = F), 
            file = "Standard_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)        


notPersonal_student_Mean = mean(notPersonal_student_array/1024, na.rm = TRUE)
notPersonal_student_SD = sd(notPersonal_student_array/1024, na.rm = TRUE)
notPersonal_student_Median = median(notPersonal_student_array/1024, na.rm = TRUE)
notPersonal_student_Min = min(notPersonal_student_array/1024, na.rm = TRUE)
notPersonal_student_Max = max(notPersonal_student_array/1024, na.rm = TRUE)
write.table(data.frame("notPersonal_student files",notPersonal_student_Mean, notPersonal_student_SD, notPersonal_student_Median, notPersonal_student_Min, notPersonal_student_Max, stringsAsFactors = F), 
            file = "Standard_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)        

notPersonal_knowledge_Mean = mean(notPersonal_knowledge_array/1024, na.rm = TRUE)
notPersonal_knowledge_SD = sd(notPersonal_knowledge_array/1024, na.rm = TRUE)
notPersonal_knowledge_Median = median(notPersonal_knowledge_array/1024, na.rm = TRUE)
notPersonal_knowledge_Min = min(notPersonal_knowledge_array/1024, na.rm = TRUE)
notPersonal_knowledge_Max = max(notPersonal_knowledge_array/1024, na.rm = TRUE)
write.table(data.frame("notPersonal_knowledge files",notPersonal_knowledge_Mean, notPersonal_knowledge_SD, notPersonal_knowledge_Median, notPersonal_knowledge_Min, notPersonal_knowledge_Max, stringsAsFactors = F), 
            file = "Standard_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)    

notPersonal_allother_Mean = mean(notPersonal_allother_array/1024, na.rm = TRUE)
notPersonal_allother_SD = sd(notPersonal_allother_array/1024, na.rm = TRUE)
notPersonal_allother_Median = median(notPersonal_allother_array/1024, na.rm = TRUE)
notPersonal_allother_Min = min(notPersonal_allother_array/1024, na.rm = TRUE)
notPersonal_allother_Max = max(notPersonal_allother_array/1024, na.rm = TRUE)
write.table(data.frame("notPersonal_allother files",notPersonal_allother_Mean, notPersonal_allother_SD, notPersonal_allother_Median, notPersonal_allother_Min, notPersonal_allother_Max, stringsAsFactors = F), 
            file = "Standard_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)        

notPersonal_IT_Mean = mean(notPersonal_IT_array/1024, na.rm = TRUE)
notPersonal_IT_SD = sd(notPersonal_IT_array/1024, na.rm = TRUE)
notPersonal_IT_Median = median(notPersonal_IT_array/1024, na.rm = TRUE)
notPersonal_IT_Min = min(notPersonal_IT_array/1024, na.rm = TRUE)
notPersonal_IT_Max = max(notPersonal_IT_array/1024, na.rm = TRUE)
write.table(data.frame("notPersonal_IT files",notPersonal_IT_Mean, notPersonal_IT_SD, notPersonal_IT_Median, notPersonal_IT_Min, notPersonal_IT_Max, stringsAsFactors = F), 
            file = "Standard_descriptive_stat_wo_2outliers.csv", 
            sep=",",append = T,row.names = F, col.names = F)        