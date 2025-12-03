@interface SDLog
- (BOOL)supportsPartialCollection;
- (SDLog)initWithPath:(id)path subdirectory:(id)subdirectory error:(id *)error;
- (int64_t)compareLogDateDescending:(id)descending;
@end

@implementation SDLog

- (SDLog)initWithPath:(id)path subdirectory:(id)subdirectory error:(id *)error
{
  pathCopy = path;
  subdirectoryCopy = subdirectory;
  v33.receiver = self;
  v33.super_class = SDLog;
  v11 = [(SDLog *)&v33 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_path, path);
    objc_storeStrong(&v12->_subdirectory, subdirectory);
    offsets = v12->_offsets;
    v12->_offsets = 0;

    sizes = v12->_sizes;
    v12->_sizes = 0;

    lastPathComponent = [(NSString *)v12->_path lastPathComponent];
    filename = v12->_filename;
    v12->_filename = lastPathComponent;

    v17 = +[NSFileManager defaultManager];
    v18 = [v17 attributesOfItemAtPath:v12->_path error:error];
    v19 = v18;
    if (v18)
    {
      fileType = [v18 fileType];
      fileType = v12->_fileType;
      v12->_fileType = fileType;

      if (v12->_fileType == NSFileTypeDirectory)
      {
        fileSize = sub_100025370(v12->_path);
      }

      else
      {
        fileSize = [v19 fileSize];
      }

      v12->_sizeBytes = fileSize;
      fileCreationDate = [v19 fileCreationDate];
      creationDate = v12->_creationDate;
      v12->_creationDate = fileCreationDate;

      fileModificationDate = [v19 fileModificationDate];
      modificationDate = v12->_modificationDate;
      v12->_modificationDate = fileModificationDate;

      fileOwner = v12->_fileOwner;
      v12->_fileOwner = 0;

      v30 = [v19 objectForKey:NSFileOwnerAccountName];
      v31 = v12->_fileOwner;
      v12->_fileOwner = v30;

      v23 = v12;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        path = v12->_path;
        *buf = 138412290;
        pathCopy2 = path;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "couldn't get file attributes for %@", buf, 0xCu);
      }

      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (int64_t)compareLogDateDescending:(id)descending
{
  creationDate = [descending creationDate];
  creationDate2 = [(SDLog *)self creationDate];
  v6 = [creationDate compare:creationDate2];

  return v6;
}

- (BOOL)supportsPartialCollection
{
  path = [(SDLog *)self path];
  pathExtension = [path pathExtension];
  if ([pathExtension containsString:@"log"])
  {
    v5 = 1;
  }

  else
  {
    path2 = [(SDLog *)self path];
    pathExtension2 = [path2 pathExtension];
    v5 = [pathExtension2 containsString:@"txt"];
  }

  return v5;
}

@end