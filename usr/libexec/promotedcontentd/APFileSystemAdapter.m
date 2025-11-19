@interface APFileSystemAdapter
- (APFileSystemAdapter)init;
- (BOOL)fileExists:(id)a3;
- (BOOL)removeFile:(id)a3 error:(id *)a4;
- (BOOL)setLastModifiedDate:(id)a3 toFile:(id)a4 error:(id *)a5;
- (BOOL)writeData:(id)a3 toFile:(id)a4 error:(id *)a5;
- (id)enumeratorForFilesWithExtension:(id)a3;
- (id)getFileLastModifiedDate:(id)a3 error:(id *)a4;
- (id)getStorageInfo;
- (id)readDataFromFile:(id)a3 error:(id *)a4;
@end

@implementation APFileSystemAdapter

- (APFileSystemAdapter)init
{
  v6.receiver = self;
  v6.super_class = APFileSystemAdapter;
  v2 = [(APFileSystemAdapter *)&v6 init];
  if (v2)
  {
    v3 = [[APStorageManager alloc] initWithPathPrefix:@"y"];
    secureFileManager = v2->_secureFileManager;
    v2->_secureFileManager = v3;
  }

  return v2;
}

- (BOOL)writeData:(id)a3 toFile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v10 = [NSString stringWithFormat:@"%@ name cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  v11 = [(APFileSystemAdapter *)self fileToFilePath:v9 error:a5];
  if (v11)
  {
    v12 = [(APFileSystemAdapter *)self secureFileManager];
    v22 = 0;
    v13 = [v12 fileForWritingAtKeyPath:v11 error:&v22];
    v14 = v22;

    if (!v13 || v14)
    {
      if (a5)
      {
LABEL_14:
        v19 = v14;
        *a5 = v14;
LABEL_19:

        v16 = 0;
        goto LABEL_20;
      }

      v17 = APLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543619;
        v24 = v9;
        v25 = 2113;
        v26 = v14;
        v18 = "Failed to open (w) file for object '%{public}@'. %{private}@";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x16u);
      }
    }

    else
    {
      v21 = 0;
      v15 = [v13 addData:v8 error:&v21];
      v14 = v21;
      [v13 close];
      if (v15 && !v14)
      {
        v16 = 1;
LABEL_20:

        goto LABEL_21;
      }

      if (a5)
      {
        goto LABEL_14;
      }

      v17 = APLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543619;
        v24 = v9;
        v25 = 2113;
        v26 = v14;
        v18 = "Failed to write file for object '%{public}@'. %{private}@";
        goto LABEL_17;
      }
    }

    goto LABEL_19;
  }

  v16 = 0;
LABEL_21:

  return v16;
}

- (id)readDataFromFile:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    v7 = [NSString stringWithFormat:@"%@ name cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  v8 = [(APFileSystemAdapter *)self fileToFilePath:v6 error:a4];
  if (v8)
  {
    v9 = [(APFileSystemAdapter *)self secureFileManager];
    v17 = 0;
    v10 = [v9 fileForReadingAtKeyPath:v8 error:&v17];
    v11 = v17;

    if (!v10 || v11)
    {
      if (a4)
      {
        v14 = v11;
        v12 = 0;
        *a4 = v11;
      }

      else
      {
        v15 = APLogForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543619;
          v19 = v6;
          v20 = 2113;
          v21 = v11;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to open (r) file for object '%{public}@'. %{private}@", buf, 0x16u);
        }

        v12 = 0;
      }
    }

    else
    {
      v12 = [v10 nextObjectData];
      [v10 close];
      if (!v12)
      {
        v13 = APLogForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v19 = v6;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to read file for object '%{public}@'.", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)removeFile:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    v7 = [NSString stringWithFormat:@"%@ name cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  v8 = [(APFileSystemAdapter *)self fileToFilePath:v6 error:a4];
  if (v8)
  {
    v9 = [(APFileSystemAdapter *)self secureFileManager];
    v15 = 0;
    v10 = [v9 removeObjectAtPath:v8 error:&v15];
    v11 = v15;

    if (!v10 || v11)
    {
      if (a4)
      {
        v12 = v11;
        *a4 = v11;
      }

      else
      {
        v13 = APLogForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v17 = v6;
          v18 = 2112;
          v19 = v11;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to remove file for object '%{public}@'. %{object}@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (id)getFileLastModifiedDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    v7 = [NSString stringWithFormat:@"%@ name cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  v8 = [(APFileSystemAdapter *)self fileToFilePath:v6 error:a4];
  if (v8)
  {
    v9 = [(APFileSystemAdapter *)self secureFileManager];
    v15 = 0;
    v10 = [v9 lastModifiedDateForFileAtPath:v8 error:&v15];
    v11 = v15;

    if (!v10 || v11)
    {
      if (a4)
      {
        v12 = v11;
        *a4 = v11;
      }

      else
      {
        v13 = APLogForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543619;
          v17 = v6;
          v18 = 2113;
          v19 = v11;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to get last modified date for object '%{public}@'. %{private}@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)setLastModifiedDate:(id)a3 toFile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v10 = [NSString stringWithFormat:@"%@ name cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  v11 = [(APFileSystemAdapter *)self fileToFilePath:v9 error:a5];
  if (v11)
  {
    v12 = [(APFileSystemAdapter *)self secureFileManager];
    v18 = 0;
    v13 = [v12 touchFileAtPath:v11 error:&v18];
    v14 = v18;

    if (!v13 || v14)
    {
      if (a5)
      {
        v15 = v14;
        *a5 = v14;
      }

      else
      {
        v16 = APLogForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543619;
          v20 = v9;
          v21 = 2113;
          v22 = v14;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to update last modified date for object '%{public}@'. %{private}@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (BOOL)fileExists:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [NSString stringWithFormat:@"%@ name cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  v6 = [(APFileSystemAdapter *)self fileToFilePath:v4 error:0];
  if (v6)
  {
    v7 = [(APFileSystemAdapter *)self secureFileManager];
    v12 = 0;
    v8 = [v7 fileExistsAtPath:v6 error:&v12];
    v9 = v12;

    if (v9)
    {
      v10 = APLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543619;
        v14 = v4;
        v15 = 2113;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to get file exists status for object '%{public}@'. %{private}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)enumeratorForFilesWithExtension:(id)a3
{
  v4 = a3;
  v5 = [(APFileSystemAdapter *)self secureFileManager];
  v6 = [v5 iterateObjectsIncludingFolders:0];

  v7 = [APFilesEnumerator alloc];
  v8 = [(APFileSystemAdapter *)self secureFileManager];
  v9 = [(APFilesEnumerator *)v7 initWithObjectsIterator:v6 fileManager:v8 extension:v4];

  return v9;
}

- (id)getStorageInfo
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(APFileSystemStorageInfo);
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v5 = [(APFileSystemAdapter *)self secureFileManager];
  [v5 getStorageSize:&v9 allocatedSize:&v8 files:&v7];

  [(APFileSystemStorageInfo *)v4 setTotalSize:v9];
  [(APFileSystemStorageInfo *)v4 setAllocatedSize:v8];
  [(APFileSystemStorageInfo *)v4 setFilesCount:v7];
  objc_autoreleasePoolPop(v3);

  return v4;
}

@end