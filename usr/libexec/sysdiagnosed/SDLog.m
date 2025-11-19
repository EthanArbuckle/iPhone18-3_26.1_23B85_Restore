@interface SDLog
- (BOOL)supportsPartialCollection;
- (SDLog)initWithPath:(id)a3 subdirectory:(id)a4 error:(id *)a5;
- (int64_t)compareLogDateDescending:(id)a3;
@end

@implementation SDLog

- (SDLog)initWithPath:(id)a3 subdirectory:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v33.receiver = self;
  v33.super_class = SDLog;
  v11 = [(SDLog *)&v33 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_path, a3);
    objc_storeStrong(&v12->_subdirectory, a4);
    offsets = v12->_offsets;
    v12->_offsets = 0;

    sizes = v12->_sizes;
    v12->_sizes = 0;

    v15 = [(NSString *)v12->_path lastPathComponent];
    filename = v12->_filename;
    v12->_filename = v15;

    v17 = +[NSFileManager defaultManager];
    v18 = [v17 attributesOfItemAtPath:v12->_path error:a5];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 fileType];
      fileType = v12->_fileType;
      v12->_fileType = v20;

      if (v12->_fileType == NSFileTypeDirectory)
      {
        v22 = sub_100025370(v12->_path);
      }

      else
      {
        v22 = [v19 fileSize];
      }

      v12->_sizeBytes = v22;
      v25 = [v19 fileCreationDate];
      creationDate = v12->_creationDate;
      v12->_creationDate = v25;

      v27 = [v19 fileModificationDate];
      modificationDate = v12->_modificationDate;
      v12->_modificationDate = v27;

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
        v35 = path;
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

- (int64_t)compareLogDateDescending:(id)a3
{
  v4 = [a3 creationDate];
  v5 = [(SDLog *)self creationDate];
  v6 = [v4 compare:v5];

  return v6;
}

- (BOOL)supportsPartialCollection
{
  v3 = [(SDLog *)self path];
  v4 = [v3 pathExtension];
  if ([v4 containsString:@"log"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(SDLog *)self path];
    v7 = [v6 pathExtension];
    v5 = [v7 containsString:@"txt"];
  }

  return v5;
}

@end