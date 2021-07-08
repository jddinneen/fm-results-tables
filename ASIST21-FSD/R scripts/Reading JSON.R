library(jsonlite)            	# for opening json files
library(readr)

setwd("/home/")

data_directory <- "JSON"
json_file_list <-list.files(paste("/home/", data_directory, sep = ""))

my_count<- 0

for(json_file in json_file_list)
{
  file_name <- json_file
  my_count <- my_count + 1
  
  con = file(file_name, "r")
  
  file_catergories <- list()
  file_catergories[[1]] <- c('textFiles', 'doc', 'docx', 'docm', 'odt', 'pdf', 'txt', 'rtf', 'pages', 'pfb', 'mobi', 'chm', 'tex', 'bib', 'dvi', 'abw', 'text', 'epub', 'nfo', 'log', 'log1', 'log2', 'wks', 'wps', 'wpd', 'emlx', 'utf8', 'ichat', 'asc', 'ott', 'fra', 'opf')
  file_catergories[[2]] <- c('imageFiles', 'img','jpg', 'jpeg', 'png', 'png0', 'ai', 'cr2', 'ico', 'icon', 'jfif', 'tiff', 'tif', 'gif', 'bmp', 'odg', 'djvu', 'odg', 'ai', 'fla', 'pic', 'ps', 'psb', 'svg', 'dds', 'hdr', 'ithmb', 'rds', 'heic', 'aae', 'apalbum', 'apfolder', 'xmp', 'dng', 'px', 'catalog', 'ita', 'photoscachefile', 'visual', 'shape', 'appicon', 'icns')
  file_catergories[[3]] <- c('devFiles', 'py', 'h', 'm', 'jar', 'cs', 'c', 'c#', 'cpp', 'c++', 'class', 'java', 'php', 'phps', 'php5', 'htm', 'html', 'css', 'xml', '3mf', 'o', 'obj', 'json', 'jsonp', 'blg', 'bbl', 'j', 'jav', 'bash', 'bsh', 'sh', 'rb', 'vb', 'vbscript', 'vbs', 'vhd', 'vmwarevm', 'js', 'jsp', 'xhtml','md5', 'nib', 'strings', 'frm', 'myd', 'myi', 'props', 'vcxproj', 'vs', 'lst', 'sol', 'vbox', 'vbox-prev', 'pch', 'pdb', 'lib', 'nas', 'assets', 'sql', 'sqlite-wal', 'rss', 'swift', 'xsl', 'manifest', 'up_meta', 'down_meta', 'woff', 'dist', 'sublime-snippet', 'd', 'ashx', 'tpm', 'dsw', 'hpp', 'tga', 'kf', 'rq', 'rdf', 'ttl', 'pyc', 'pyo', 's', 'lua', 'vim', 'p', 'dashtoc', 'org%2f2000%2fsvg%22%20width%3d%2232%22', 'md', 'mo', 'make', 'cmake', 'makefile', 'options', 'def', 'cc', 'f90', 'dcp', 'cxx', 'seto', 'f', 'simt')
  file_catergories[[4]] <- c('spreadsheetFiles', 'csv', 'odf', 'ods', 'xlr', 'xls', 'xlsx', 'numbers', 'xlk')
  file_catergories[[5]] <- c('systemFiles', 'bif','shs', 'ds_store', 'gadget', 'so', 'idx', 'ipmeta', 'sys', 'dll', 'dylib', 'etl', 'regtrans-ms', 'key', 'lock', 'man', 'inf', 'x86', 'dev', 'config', 'cfg', 'cpl', 'cur', 'dmp', 'drv', 'mot', 'ko', 'supported', 'pxe', 'cgz', '0', 'file', 'install', 'desktop', 'ttc', 'ttf', 'fnt', 'fon', 'otf', 'download', 'acsm', 'ini', 'opt', 'dat', 'sav', 'save', 'aux', 'raw', 'temp', 'tmp', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'cache', 'ipsw', 'stt', 'part', 'appcache', 'sbstore', 'gpd', 'sqm', 'emf', 'jrs', 'pri', 'vcrd', 'mui', 'localstorage', 'localstorage-journal', 'data', 'crash', 'webhistory', 'settingcontent-ms', 'itc', 'atx', 'apversion', 'apmaster', 'apdetected', 'pos', 'glk', 'blob', 'cat', 'sns', 'adv', 'asd', 'lrprev', 'csl', 'rdl', 'sthlp', 'tm2', 'mcdb', 'fragment', 'nif', 'blockdata', 'continuousdata', 'upk', 'znb', 'xnb', 'idrc', 'model', 'primitives', 'ovl', 'sid', 'stringtable', 'foliage', 'civ4savedgame', 'cgs', 'thewitchersave', 'pssg', 'pac', 'unity3d', 'ifi', 'vmt', 'vtf' ,'pfm', 'deu', 'map', 'simss')
  file_catergories[[6]] <- c('executableFiles', 'exe', 'bat', 'dmg', 'msi', 'bin', 'pak', 'app', 'com', 'application')
  file_catergories[[7]] <- c('archiveFiles', 'zip', 'gz', 'rar', 'cab', 'iso', 'tar', 'lzma', 'bz2', 'pkg', 'xz', '7z', 'vdi', 'ova', 'rpm', 'z', 'tgz', 'deb', 'vcd', 'ost', 'vmdk', '001', '002', '003', '004', '005', '006', '007', '008', '009', 'arj', 'package', 'ims')
  file_catergories[[8]] <- c('backupFiles', 'bak', 'backup', 'back')
  file_catergories[[9]] <- c('audioFiles', 'mp3', 'm3u', 'm4a', 'wav', 'ogg', 'flac', 'midi', 'oct', 'aac', 'aiff', 'aif', 'wma', 'pcm', 'cda', 'mid', 'mpa', 'ens', 'adg', 'dmpatch', 'sngw', 'seq', 'wem', 'mtp', 'l6t', 'lng', 'adx', 'link')
  file_catergories[[10]]<- c('databaseFiles', 'accdb', 'accde', 'mdb', 'mde', 'odb', 'db', 'gdbtable', 'gdbtablx', 'gdbindexes', 'sqlite', 'enz', 'enl', 'sdf', 'hdb', 'cdb', 'gdb', 'cif', 'xyz', 'mat', 'bgl', 'r', 'exp', 'asy', 'info', 'meta', 'adf', 'appinfo', 'xg0', 'yg0')
  file_catergories[[12]]<- c('videoFiles', 'mpg', 'mpeg', 'avi', 'mp4', 'flv', 'h264', 'mov', 'mk4', 'swf', 'wmv', 'mkv', 'plist', 'm4v', 'trec', '3g2', '3gp', 'rm', 'vob')
  file_catergories[[13]]<- c('bookmarkFiles', 'torrent', 'url')
  file_catergories[[14]]<- c('PIMFiles', 'dbx', 'eml', 'msg', 'ics', 'pst', 'vcf', 'gdb', 'ofx', 'qif', 'rem', 'tax', 'qbmb', 'one', 'note', 'olk14message', 'olk14msgattach', 'olk14folder', 'olkmsgsource', 'olk14msgsource','olk15message', 'olk15messageattachment', 'olk14event', 'olk15msgattachment', 'olk15msgsource', 'vcs', 'hbk')
  file_catergories[[15]]<- c('shortcutFiles', 'lnk')
  file_catergories[[16]]<- c('unidentifiableFiles', 'error')
  
  substrRight <- function(x, n){
    substr(x, nchar(x)-n+1, nchar(x))}
  substrLeft = function(text, num_char) {
    substr(text, 1, num_char)
  }
  
  
  categorize_file_type <- function(file_ext){
    my_result <- file_catergories[[16]][1]
    
    tryCatch( { lower_file_ext <- tolower(file_ext); 
    for (i in 1:15)
    {
      if (lower_file_ext %in% file_catergories[[i]])
      {
        my_result <- file_catergories[[i]][1]
        break
      }
    }
    }
    , error = function(e) {my_result <<- file_catergories[[16]][2]})
    
    return(my_result)
  }
  
  my_string <- gsub(".txt", "",gsub(".json", "", file_name))
  
  new_file <- paste("/home/", data_directory, "/", my_string, ".csv", sep = "")
  error_file <- paste("/home/", data_directory,"-error.csv", sep = "")
  
  pstart <- gregexpr(" ", my_string)
  user_id <<- trimws(substrRight(my_string, nchar(my_string)-pstart[[1]]))
  
  json <- lapply(paste(readLines(file_name, warn=FALSE), collapse=""), jsonlite::fromJSON) 
  
  os <- json[[1]]$operating_system
  os_version <-  json[[1]]$computer_description$version
  
  use <- json[[1]]$computer_description$use 
  occupation <- json[[1]]$demographics$occupation
  
  number_node_lists <- nrow(json[[1]]$node_lists)
  if (number_node_lists>0)
  {
    for (i in 1: number_node_lists)
    {
      number_of_node <- length(json[[1]]$node_lists)
      if (number_of_node>0)
      {
        for (j in 1: number_of_node)
        {
          if (!is.null(json[[1]]$node_lists[i,j]$file_list))
          {
            number_of_file<-nrow(json[[1]]$node_lists[i,j]$file_list[[1]])
            if (!is.null(number_of_file))
            {
              if (number_of_file>0)
              {
                depth <-  json[[1]]$node_lists[i,j]$depth
                for(k in 1:number_of_file)
                {
                  size <-  json[[1]]$node_lists[i,j]$file_list[[1]]$file_size[k]
                  extension <-  json[[1]]$node_lists[i,j]$file_list[[1]]$extension[k]
                  category <-  categorize_file_type(extension)
                  c_time <-  json[[1]]$node_lists[i,j]$file_list[[1]]$c_time[k]
                  a_time <-  json[[1]]$node_lists[i,j]$file_list[[1]]$a_time[k]
                  m_time <-  json[[1]]$node_lists[i,j]$file_list[[1]]$m_time[k]
                  write.table(data.frame(user_id, os, os_version, use, occupation, depth, size, extension, category, c_time, a_time, m_time,stringsAsFactors = F), file = new_file, sep=",",append = T,row.names = F, col.names = F)
                } 
              }else
              {
              write_csv(c(data_directory, my_string, user_id,i,j,"5. NOT number_of_file>0"), file = error_file, sep=",",append = T,row.names = F, col.names = F)
              }
            }else
            {
              write_csv(c(data_directory, my_string, user_id,i,j,"4. is.null(number_of_file)"), file = error_file, sep=",",append = T,row.names = F, col.names = F)
            }
          }else
          {
            write_csv(c(data_directory, my_string, user_id,i,j,"3. is.null(json[[1]]$node_lists[i,j]$file_list)"), file = error_file, sep=",",append = T,row.names = F, col.names = F)
          }
        }
      }else
      {
        write_csv(c(data_directory, my_string, user_id,i,NA,"2. NOT number_of_node>0"), file = error_file, sep=",",append = T,row.names = F, col.names = F)
      }
    }
  }else
  {
    write_csv(c(data_directory, my_string, user_id,NA,NA,"1. NOT number_node_lists>0"), file = error_file, sep=",",append = T,row.names = F, col.names = F)
  }
  
  close(con)
  
}
