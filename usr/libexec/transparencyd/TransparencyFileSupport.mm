@interface TransparencyFileSupport
+ (BOOL)deleteFile:(id)file error:(id *)error;
+ (BOOL)deleteFile:(id)file inDirectory:(id)directory error:(id *)error;
+ (BOOL)setProtectionToClassDForURL:(id)l error:(id *)error;
+ (BOOL)writeDictionaryToFile:(id)file fileName:(id)name error:(id *)error;
+ (BOOL)writeDictionaryToFile:(id)file fileName:(id)name inDirectory:(id)directory error:(id *)error;
+ (id)applicationSupportPath:(id *)path;
+ (id)readDataFromFile:(id)file error:(id *)error;
+ (id)readDictionaryFromFile:(id)file error:(id *)error;
+ (id)readDictionaryFromFile:(id)file inDirectory:(id)directory error:(id *)error;
+ (int64_t)directorySizeInKB:(id *)b;
@end

@implementation TransparencyFileSupport

+ (BOOL)setProtectionToClassDForURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = open([lCopy fileSystemRepresentation], 0);
  v7 = v6;
  if (v6)
  {
    if (fcntl(v6, 64, 4) < 0)
    {
      if (error)
      {
        v8 = *__error();
        v9 = __error();
        v10 = strerror(*v9);
        *error = [TransparencyError errorWithDomain:NSPOSIXErrorDomain code:v8 description:@"set protection class error for file %@: %s(%d)", lCopy, v10, *__error()];
      }

      if (qword_10039CE68 != -1)
      {
        sub_100260024();
      }

      v11 = qword_10039CE70;
      if (os_log_type_enabled(qword_10039CE70, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        v13 = __error();
        v14 = strerror(*v13);
        v15 = *__error();
        *buf = 138412802;
        v26 = lCopy;
        v27 = 2080;
        v28 = v14;
        v29 = 1024;
        v30 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "set protection class error for file %@: %s(%d)", buf, 0x1Cu);
      }
    }

    close(v7);
  }

  else
  {
    if (error)
    {
      v16 = *__error();
      v17 = __error();
      v18 = strerror(*v17);
      *error = [TransparencyError errorWithDomain:NSPOSIXErrorDomain code:v16 description:@"open error for file %@: %s(%d)", lCopy, v18, *__error()];
    }

    if (qword_10039CE68 != -1)
    {
      sub_100260010();
    }

    v19 = qword_10039CE70;
    if (os_log_type_enabled(qword_10039CE70, OS_LOG_TYPE_ERROR))
    {
      v20 = v19;
      v21 = __error();
      v22 = strerror(*v21);
      v23 = *__error();
      *buf = 138412802;
      v26 = lCopy;
      v27 = 2080;
      v28 = v22;
      v29 = 1024;
      v30 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "open error for file %@: %s(%d)", buf, 0x1Cu);
    }
  }

  return v7 != 0;
}

+ (id)applicationSupportPath:(id *)path
{
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 URLsForDirectory:14 inDomains:1];

  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 URLByAppendingPathComponent:@"com.apple.transparencyd" isDirectory:1];

    v8 = +[NSFileManager defaultManager];
    v15 = NSFileProtectionKey;
    v16 = NSFileProtectionNone;
    v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v10 = [v8 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:v9 error:path];

    v11 = 0;
    if (v10)
    {
      v11 = v7;
    }
  }

  else
  {
    if (path)
    {
      *path = [TransparencyError errorWithDomain:kTransparencyErrorFile code:-37 description:@"failed to get Application Support dir"];
    }

    if (qword_10039CE68 != -1)
    {
      sub_100260038();
    }

    v12 = qword_10039CE70;
    if (os_log_type_enabled(qword_10039CE70, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "failed to get Application Support dir", v14, 2u);
    }

    v11 = 0;
  }

  return v11;
}

+ (int64_t)directorySizeInKB:(id *)b
{
  v4 = +[NSFileManager defaultManager];
  v5 = [TransparencyFileSupport transparencyFilesPath:b];
  if (v5)
  {
    v26 = NSURLFileSizeKey;
    v6 = [NSArray arrayWithObjects:&v26 count:1];
    v7 = [v4 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v6 options:0 error:b];

    if (v7)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        v10 = v9;
        v19 = v4;
        v11 = 0;
        v12 = *v22;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v21 + 1) + 8 * i);
            v20 = 0;
            [v14 getResourceValue:&v20 forKey:NSURLFileSizeKey error:{b, v19}];
            v15 = v20;
            if (!v15)
            {
              v17 = -1;
              goto LABEL_14;
            }

            v16 = v15;
            v11 += [v15 unsignedIntegerValue];
          }

          v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }

        v17 = v11 / 1000;
LABEL_14:
        v4 = v19;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = -1;
    }
  }

  else
  {
    v17 = -1;
  }

  return v17;
}

+ (id)readDictionaryFromFile:(id)file inDirectory:(id)directory error:(id *)error
{
  v6 = [directory URLByAppendingPathComponent:file];
  if (v6)
  {
    v7 = [NSDictionary dictionaryWithContentsOfURL:v6 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)readDictionaryFromFile:(id)file error:(id *)error
{
  fileCopy = file;
  v7 = [self transparencyFilesPath:error];
  if (v7)
  {
    v8 = [self readDictionaryFromFile:fileCopy inDirectory:v7 error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)readDataFromFile:(id)file error:(id *)error
{
  fileCopy = file;
  v6 = [TransparencyFileSupport transparencyFilesPath:error];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 URLByAppendingPathComponent:fileCopy];
    v9 = [NSData dataWithContentsOfURL:v8 options:0 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)writeDictionaryToFile:(id)file fileName:(id)name inDirectory:(id)directory error:(id *)error
{
  fileCopy = file;
  v10 = [directory URLByAppendingPathComponent:name];
  LODWORD(name) = [fileCopy writeToURL:v10 error:error];

  v11 = name && [TransparencyFileSupport setProtectionToClassDForURL:v10 error:error];
  return v11;
}

+ (BOOL)writeDictionaryToFile:(id)file fileName:(id)name error:(id *)error
{
  fileCopy = file;
  nameCopy = name;
  v10 = [TransparencyFileSupport transparencyFilesPath:error];
  if (v10)
  {
    v11 = [self writeDictionaryToFile:fileCopy fileName:nameCopy inDirectory:v10 error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)deleteFile:(id)file inDirectory:(id)directory error:(id *)error
{
  v6 = [directory URLByAppendingPathComponent:file];
  v7 = +[NSFileManager defaultManager];
  LOBYTE(error) = [v7 removeItemAtURL:v6 error:error];

  return error;
}

+ (BOOL)deleteFile:(id)file error:(id *)error
{
  fileCopy = file;
  v7 = [TransparencyFileSupport transparencyFilesPath:error];
  if (v7)
  {
    v8 = [self deleteFile:fileCopy inDirectory:v7 error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end