setwd("/home/")
data_directory<-"FileSize"
current_folder <- "All"

participant_file <- "participant-occupations.csv"
participant_data <- read.csv(participant_file, header = TRUE)
print(head(participant_data))

os_list <- c("win32", "darwin", "linux")
oc_list <- c("artist", "IT", "knowledge worker", "service", "student", "other")
use_list <- c("Personal", "Work/School", "Personal AND Work/School")

csv_file_list <-list.files(paste(data_directory,current_folder,"/",sep=""))
print(paste(data_directory,current_folder,"/",""))
print(csv_file_list)

for(csv_file in csv_file_list)
{
  file_count <- file_count +1
  print(paste("File: ", file_count, "/",length(list.files())," - ", csv_file))
  input_file <- paste(data_directory,current_folder,"/",csv_file,sep="")

  MyData <- read.csv(input_file, header=FALSE, sep=",")
  n_row <- nrow(MyData)
  for (i in 1:n_row)
  {
    this_id <- MyData[i,1]
    this_OS <- MyData[i,2]
    this_file_size <- MyData[i,4]
    this_occupation <- participant_data[participant_data[1]==this_id,2]
    this_use <- participant_data[participant_data[1]==this_id,3]
    
    if (is.null(MyData[i,4])|is.na(MyData[i,4]))
    {
      write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                  file=paste("File_sizes_os_error-",current_folder,".csv"),
                  sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
    }
    else
    {
      write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                  file=paste("File_sizes_os_All-",current_folder,".csv"),
                  sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)

      if (this_OS == os_list[1])
      {
        #win32_count <- win32_count + 1
        #win32_array[win32_count] <- this_file_size
        write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                    file=paste("File_sizes_os_win32-",current_folder,".csv"),
                    sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
      }
      else{
        if (this_OS == os_list[2])
        {
          write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                      file=paste("File_sizes_os_darwin-",current_folder,".csv"),
                      sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
        }
        else{
          if (this_OS == os_list[3])
          {
            write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                        file=paste("File_sizes_os_linux-",current_folder,".csv"),
                        sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
          }else
          {
            write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                        file=paste("File_sizes_os_error-",current_folder,".csv"),
                        sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
          }
        }
      }
      
      if (length(this_occupation)==0)
      {
        this_id <- gsub("_",":",substrLeft(csv_file,nchar(csv_file)-4))
        this_occupation <- participant_data[participant_data[1]==this_id,2]
      }
      if (length(this_use)==0)
      {
        this_id <- gsub("_",":",substrLeft(csv_file,nchar(csv_file)-4))
        this_use <- participant_data[participant_data[1]==this_id,3]
      }
      
      
      if (is.null(this_occupation)|is.na(this_occupation))
      {
        write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                    file=paste("File_sizes_oc_NullNA-",current_folder,".csv"),
                    sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
      }
      else
      {
        if (this_occupation == oc_list[1])
        {
          write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                      file=paste("File_sizes_oc_artist-",current_folder,".csv"),
                      sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
        }
        else{
          if (this_occupation == oc_list[2])
          {
            write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                        file=paste("File_sizes_oc_IT-",current_folder,".csv"),
                        sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
          }
          else{
            if (this_occupation == oc_list[3])
            {
              write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                          file=paste("File_sizes_oc_knowledge-",current_folder,".csv"),
                          sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
            }
            else{
              if (this_occupation == oc_list[4])
              {
                write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                            file=paste("File_sizes_oc_service-",current_folder,".csv"),
                            sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
                
              }
              else{
                if (this_occupation == oc_list[5])
                {
                  oc_student_count <- oc_student_count + 1
                  oc_student_array[oc_student_count] <- this_file_size
                  write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                              file=paste("File_sizes_oc_student-",current_folder,".csv"),
                              sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
                  
                }
                else{
                  if (this_occupation == oc_list[6])
                  {
                    write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                                file=paste("File_sizes_oc_other-",current_folder,".csv"),
                                sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
                  }
                  else
                  {
                    write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                                file=paste("File_sizes_oc_error-",current_folder,".csv"),
                                sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
                  }
                }
              }
            }
          }
        }
      }
      
      
      if (is.null(this_use)|is.na(this_use))
      {
        write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                    file=paste("File_sizes_use_NullNA-",current_folder,".csv"),
                    sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
      }
      else
      {
        if (this_use == use_list[1])
        {
          write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                      file=paste("File_sizes_use_personal-",current_folder,".csv"),
                      sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
        }
        else{ 
          
          if (this_use == use_list[2])
          {
            write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                        file=paste("File_sizes_use_workschool-",current_folder,".csv"),
                        sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
          }
          else{
            if (this_use == use_list[3])
            {
              write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                          file=paste("File_sizes_use_both-",current_folder,".csv"),
                          sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
            }
            else
            {
              write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                          file=paste("File_sizes_use_error-",current_folder,".csv"),
                          sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
            }
          }
          

          if (is.null(this_occupation)|is.na(this_occupation))
          {
            write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                        file=paste("File_sizes_notpersonal_NullNA-",current_folder,".csv"),
                        sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
          }
          else
          {
            if (this_occupation == oc_list[5])
            {
              write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                          file=paste("File_sizes_notPersonal_student-",current_folder,".csv"),
                          sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)              
            }else
            {
              if (this_occupation == oc_list[3])
              {
                write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                            file=paste("File_sizes_notPersonal_knowledge-",current_folder,".csv"),
                            sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
              }else
              {
                if (this_occupation == oc_list[2])
                {
                  write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                              file=paste("File_sizes_notPersonal_IT-",current_folder,".csv"),
                              sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
                }else
                {
                  write.table(data.frame(this_id, this_file_size, stringsAsFactors = F),
                              file=paste("File_sizes_notPersonal_allother-",current_folder,".csv"),
                              sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
                }
              }
            }
          }
          
        }
      }
      
    }
  }
}
