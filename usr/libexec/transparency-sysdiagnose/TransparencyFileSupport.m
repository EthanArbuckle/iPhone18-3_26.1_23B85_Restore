@interface TransparencyFileSupport
+ (BOOL)deleteFile:(id)a3 error:(id *)a4;
+ (BOOL)deleteFile:(id)a3 inDirectory:(id)a4 error:(id *)a5;
+ (BOOL)setProtectionToClassDForURL:(id)a3 error:(id *)a4;
+ (BOOL)writeDictionaryToFile:(id)a3 fileName:(id)a4 error:(id *)a5;
+ (BOOL)writeDictionaryToFile:(id)a3 fileName:(id)a4 inDirectory:(id)a5 error:(id *)a6;
+ (id)applicationSupportPath:(id *)a3;
+ (id)readDataFromFile:(id)a3 error:(id *)a4;
+ (id)readDictionaryFromFile:(id)a3 error:(id *)a4;
+ (id)readDictionaryFromFile:(id)a3 inDirectory:(id)a4 error:(id *)a5;
+ (int64_t)directorySizeInKB:(id *)a3;
@end

@implementation TransparencyFileSupport

+ (BOOL)setProtectionToClassDForURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = open([v5 fileSystemRepresentation], 0);
  v7 = v6;
  if (v6)
  {
    if (fcntl(v6, 64, 4) < 0)
    {
      if (a4)
      {
        v8 = *__error();
        v9 = __error();
        v10 = strerror(*v9);
        *a4 = [TransparencyError errorWithDomain:NSPOSIXErrorDomain code:v8 description:@"set protection class error for file %@: %s(%d)", v5, v10, *__error()];
      }

      if (qword_1000084E8 != -1)
      {
        sub_100001B5C();
      }

      v11 = qword_1000084F0;
      if (os_log_type_enabled(qword_1000084F0, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        v13 = __error();
        v14 = strerror(*v13);
        v15 = *__error();
        *buf = 138412802;
        v26 = v5;
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
    if (a4)
    {
      v16 = *__error();
      v17 = __error();
      v18 = strerror(*v17);
      *a4 = [TransparencyError errorWithDomain:NSPOSIXErrorDomain code:v16 description:@"open error for file %@: %s(%d)", v5, v18, *__error()];
    }

    if (qword_1000084E8 != -1)
    {
      sub_100001B48();
    }

    v19 = qword_1000084F0;
    if (os_log_type_enabled(qword_1000084F0, OS_LOG_TYPE_ERROR))
    {
      v20 = v19;
      v21 = __error();
      v22 = strerror(*v21);
      v23 = *__error();
      *buf = 138412802;
      v26 = v5;
      v27 = 2080;
      v28 = v22;
      v29 = 1024;
      v30 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "open error for file %@: %s(%d)", buf, 0x1Cu);
    }
  }

  return v7 != 0;
}

+ (id)applicationSupportPath:(id *)a3
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
    v10 = [v8 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:v9 error:a3];

    v11 = 0;
    if (v10)
    {
      v11 = v7;
    }
  }

  else
  {
    if (a3)
    {
      *a3 = [TransparencyError errorWithDomain:kTransparencyErrorFile code:-37 description:@"failed to get Application Support dir"];
    }

    if (qword_1000084E8 != -1)
    {
      sub_100001B70();
    }

    v12 = qword_1000084F0;
    if (os_log_type_enabled(qword_1000084F0, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "failed to get Application Support dir", v14, 2u);
    }

    v11 = 0;
  }

  return v11;
}

+ (int64_t)directorySizeInKB:(id *)a3
{
  v4 = +[NSFileManager defaultManager];
  v5 = [TransparencyFileSupport transparencyFilesPath:a3];
  if (v5)
  {
    v26 = NSURLFileSizeKey;
    v6 = [NSArray arrayWithObjects:&v26 count:1];
    v7 = [v4 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v6 options:0 error:a3];

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
            [v14 getResourceValue:&v20 forKey:NSURLFileSizeKey error:{a3, v19}];
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

+ (id)readDictionaryFromFile:(id)a3 inDirectory:(id)a4 error:(id *)a5
{
  v6 = [a4 URLByAppendingPathComponent:a3];
  if (v6)
  {
    v7 = [NSDictionary dictionaryWithContentsOfURL:v6 error:a5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)readDictionaryFromFile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 transparencyFilesPath:a4];
  if (v7)
  {
    v8 = [a1 readDictionaryFromFile:v6 inDirectory:v7 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)readDataFromFile:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [TransparencyFileSupport transparencyFilesPath:a4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 URLByAppendingPathComponent:v5];
    v9 = [NSData dataWithContentsOfURL:v8 options:0 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)writeDictionaryToFile:(id)a3 fileName:(id)a4 inDirectory:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [a5 URLByAppendingPathComponent:a4];
  LODWORD(a4) = [v9 writeToURL:v10 error:a6];

  v11 = a4 && [TransparencyFileSupport setProtectionToClassDForURL:v10 error:a6];
  return v11;
}

+ (BOOL)writeDictionaryToFile:(id)a3 fileName:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [TransparencyFileSupport transparencyFilesPath:a5];
  if (v10)
  {
    v11 = [a1 writeDictionaryToFile:v8 fileName:v9 inDirectory:v10 error:a5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)deleteFile:(id)a3 inDirectory:(id)a4 error:(id *)a5
{
  v6 = [a4 URLByAppendingPathComponent:a3];
  v7 = +[NSFileManager defaultManager];
  LOBYTE(a5) = [v7 removeItemAtURL:v6 error:a5];

  return a5;
}

+ (BOOL)deleteFile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [TransparencyFileSupport transparencyFilesPath:a4];
  if (v7)
  {
    v8 = [a1 deleteFile:v6 inDirectory:v7 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end