@interface MIIPAPatcherFileManager
+ (id)defaultManager;
- (BOOL)copyFromURL:(id)l toURL:(id)rL withError:(id *)error;
- (BOOL)createDirectoryAtURL:(id)l mode:(unsigned __int16)mode withError:(id *)error;
- (BOOL)enumerateDirectoryAtURL:(id)l includeTypes:(unint64_t)types withError:(id *)error enumerator:(id)enumerator;
- (BOOL)moveSourceURL:(id)l toDestinationURL:(id)rL fallBackToCopy:(BOOL)copy withError:(id *)error;
- (BOOL)removeURL:(id)l withError:(id *)error;
- (BOOL)syncEnumerateLinesFromFileURL:(id)l options:(unint64_t)options error:(id *)error enumerator:(id)enumerator;
- (BOOL)syncReadBytesFromFileURL:(id)l chunkSize:(unint64_t)size error:(id *)error handler:(id)handler;
- (id)_hexOfHashBuffer:(const char *)buffer length:(unint64_t)length upperCase:(BOOL)case;
- (id)_md5OfFileURL:(id)l chunkSize:(unint64_t)size withError:(id *)error;
- (id)_sha256OfFileURL:(id)l chunkSize:(unint64_t)size withError:(id *)error;
- (id)createTempDirectoryWithPrefix:(id)prefix relativeToURL:(id)l mode:(unsigned __int16)mode withError:(id *)error;
- (id)dataFromPlistRepresentation:(id)representation format:(unint64_t)format withError:(id *)error;
- (id)directoriesOrderedByDepthFromFilePaths:(id)paths;
- (id)hashType:(unint64_t)type ofFileURL:(id)l chunkSize:(unint64_t)size withError:(id *)error;
- (id)plistRepresentationFromData:(id)data withError:(id *)error;
- (id)realpathForURL:(id)l withError:(id *)error;
- (unint64_t)nodeTypeWithURL:(id)l withError:(id *)error;
@end

@implementation MIIPAPatcherFileManager

+ (id)defaultManager
{
  if (qword_1000A95D0 != -1)
  {
    sub_100057BB0();
  }

  v3 = qword_1000A95C8;

  return v3;
}

- (BOOL)syncEnumerateLinesFromFileURL:(id)l options:(unint64_t)options error:(id *)error enumerator:(id)enumerator
{
  optionsCopy = options;
  lCopy = l;
  enumeratorCopy = enumerator;
  v11 = open([lCopy fileSystemRepresentation], 0x1000000);
  if (v11 < 0)
  {
    v24 = *__error();
    v74[0] = NSLocalizedDescriptionKey;
    errorCopy = error;
    v25 = enumeratorCopy;
    v26 = [NSString alloc];
    path = [lCopy path];
    v28 = [v26 initWithFormat:@"Could open file [%@] for reading", path];
    v75[0] = v28;
    v75[1] = &off_10009B4A0;
    v74[1] = @"line";
    v74[2] = @"function";
    v29 = [NSString stringWithUTF8String:"[MIIPAPatcherFileManager syncEnumerateLinesFromFileURL:options:error:enumerator:]"];
    v75[2] = v29;
    v30 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:3];
    v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v24 userInfo:v30];

    enumeratorCopy = v25;
    error = errorCopy;

    v23 = 0;
    if (!errorCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v12 = v11;
  memset(&v65, 0, sizeof(v65));
  if (fstat(v11, &v65))
  {
    v63 = enumeratorCopy;
    v13 = *__error();
    v72[0] = NSLocalizedDescriptionKey;
    v14 = [NSString alloc];
    path2 = [lCopy path];
    v16 = [v14 initWithFormat:@"Could not stat file [%@]", path2];
    v73[0] = v16;
    v73[1] = &off_10009B4B8;
    v72[1] = @"line";
    v72[2] = @"function";
    v17 = [NSString stringWithUTF8String:"[MIIPAPatcherFileManager syncEnumerateLinesFromFileURL:options:error:enumerator:]"];
    v73[2] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:3];
    v19 = NSPOSIXErrorDomain;
    v20 = v13;
LABEL_4:
    v21 = [NSError errorWithDomain:v19 code:v20 userInfo:v18];
    v22 = 0;
    goto LABEL_5;
  }

  st_size = v65.st_size;
  if (!v65.st_size)
  {
    v22 = 0;
    goto LABEL_18;
  }

  v63 = enumeratorCopy;
  if (v65.st_size <= -2)
  {
    v70[0] = NSLocalizedDescriptionKey;
    v34 = [NSString alloc];
    path2 = [lCopy path];
    v16 = [v34 initWithFormat:@"File too large (%lld) to read into single buffer [%@]", st_size, path2];
    v71[0] = v16;
    v71[1] = &off_10009B4D0;
    v70[1] = @"line";
    v70[2] = @"function";
    v17 = [NSString stringWithUTF8String:"[MIIPAPatcherFileManager syncEnumerateLinesFromFileURL:options:error:enumerator:]"];
    v71[2] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:3];
    v19 = NSPOSIXErrorDomain;
    v20 = 12;
    goto LABEL_4;
  }

  v35 = malloc_type_calloc(v65.st_size + 1, 1uLL, 0x100004077774924uLL);
  if (!v35)
  {
    v61 = *__error();
    v68[0] = NSLocalizedDescriptionKey;
    v53 = [NSString alloc];
    path2 = [lCopy path];
    v16 = [v53 initWithFormat:@"Could not allocate %lld bytes to read file [%@]", st_size, path2];
    v69[0] = v16;
    v69[1] = &off_10009B4E8;
    v68[1] = @"line";
    v68[2] = @"function";
    v17 = [NSString stringWithUTF8String:"[MIIPAPatcherFileManager syncEnumerateLinesFromFileURL:options:error:enumerator:]"];
    v69[2] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:3];
    v19 = NSPOSIXErrorDomain;
    v20 = v61;
    goto LABEL_4;
  }

  v22 = v35;
  if (read(v12, v35, st_size) != st_size)
  {
    v62 = *__error();
    v66[0] = NSLocalizedDescriptionKey;
    v54 = [NSString alloc];
    path2 = [lCopy path];
    v16 = [v54 initWithFormat:@"Could not read %lld bytes from file [%@]", st_size, path2];
    v67[0] = v16;
    v67[1] = &off_10009B500;
    v66[1] = @"line";
    v66[2] = @"function";
    v17 = [NSString stringWithUTF8String:"[MIIPAPatcherFileManager syncEnumerateLinesFromFileURL:options:error:enumerator:]"];
    v67[2] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:3];
    v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v62 userInfo:v18];
LABEL_5:

LABEL_6:
    v23 = 0;
    goto LABEL_7;
  }

  if (st_size < 1)
  {
LABEL_18:
    v21 = 0;
    v23 = 1;
    goto LABEL_8;
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  do
  {
    if ((optionsCopy & 1) != 0 && v37 < st_size)
    {
      while (1)
      {
        v40 = v22[v37];
        if (v40 != 13 && v40 != 10)
        {
          break;
        }

        ++v37;
        v23 = 1;
        if (st_size == v37)
        {
          goto LABEL_57;
        }
      }
    }

    if (v37 < st_size)
    {
      v42 = v37 + 1;
      v43 = v37;
      while (1)
      {
        v44 = v22[v43];
        v45 = v44 > 0xD;
        v46 = (1 << v44) & 0x2401;
        if (!v45 && v46 != 0)
        {
          break;
        }

        ++v43;
        ++v42;
        if (st_size == v43)
        {
          goto LABEL_50;
        }
      }

      v56 = v38;
      v59 = v39;
      context = objc_autoreleasePoolPush();
      v22[v43] = 0;
      v48 = [NSString stringWithUTF8String:&v22[v37]];
      if ((optionsCopy & 2) != 0)
      {
        v49 = [NSCharacterSet characterSetWithCharactersInString:@" "];
        [v48 stringByTrimmingCharactersInSet:v49];
        v50 = v55 = v36;

        v48 = v50;
        v36 = v55;
      }

      if ((optionsCopy & 1) != 0 && ![v48 length])
      {

        objc_autoreleasePoolPop(context);
        if ((v56 & 1) == 0)
        {
          v23 = 0;
          v21 = v59;
LABEL_7:
          enumeratorCopy = v63;
          goto LABEL_8;
        }

        v39 = v59;
      }

      else
      {
        v64 = v59;
        v51 = v36 + 1;
        v57 = v63[2](v63, v36 + 1, v48, &v64);
        v21 = v64;

        objc_autoreleasePoolPop(context);
        if ((v57 & 1) == 0)
        {
          goto LABEL_6;
        }

        v39 = v21;
        v36 = v51;
      }

      do
      {
        v37 = v42;
        if (v42 >= st_size)
        {
          break;
        }

        v52 = v22[v42++];
      }

      while (v52 == 13);
      v38 = 1;
LABEL_50:
      enumeratorCopy = v63;
    }

    v23 = 1;
  }

  while (v37 < st_size);
LABEL_57:
  v21 = v39;
LABEL_8:
  free(v22);
  close(v12);
  if (error)
  {
LABEL_11:
    if (!v23)
    {
      v31 = v21;
      *error = v21;
    }
  }

LABEL_13:

  return v23;
}

- (BOOL)syncReadBytesFromFileURL:(id)l chunkSize:(unint64_t)size error:(id *)error handler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v10 = [NSMutableData dataWithCapacity:size];
  [v10 setLength:size];
  mutableBytes = [v10 mutableBytes];
  v12 = open([lCopy fileSystemRepresentation], 256);
  v49 = lCopy;
  if ((v12 & 0x80000000) == 0)
  {
    v13 = v12;
    errorCopy = error;
    if (fcntl(v12, 48, 1) == -1)
    {
      v14 = __error();
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100057BC4(v14, lCopy);
      }
    }

    v15 = 0;
    v16 = 1;
    do
    {
      v17 = objc_autoreleasePoolPush();
      v18 = read(v13, mutableBytes, size);
      if (v18 == -1)
      {
        v46 = *__error();
        v54[0] = NSLocalizedDescriptionKey;
        v33 = [NSString alloc];
        path = [v49 path];
        v35 = [v33 initWithFormat:@"Could not read file [%@].", path];
        v55[0] = v35;
        v55[1] = &off_10009B530;
        v54[1] = @"line";
        v54[2] = @"function";
        v36 = [NSString stringWithUTF8String:"[MIIPAPatcherFileManager syncReadBytesFromFileURL:chunkSize:error:handler:]"];
        v55[2] = v36;
        v37 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:3];
        v38 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v46 userInfo:v37];

        objc_autoreleasePoolPop(v17);
        v23 = 0;
        v15 = v38;
        goto LABEL_21;
      }

      if (!v18)
      {
        objc_autoreleasePoolPop(v17);
        v23 = 1;
        goto LABEL_21;
      }

      [v10 setLength:v18];
      v51 = v15;
      v19 = handlerCopy[2](handlerCopy, v16, v10, &v51);
      v20 = v51;

      [v10 setLength:size];
      if (v20)
      {
        v21 = 2;
      }

      else
      {
        v21 = 4;
      }

      if (v19)
      {
        v22 = 0;
      }

      else
      {
        v22 = v21;
      }

      objc_autoreleasePoolPop(v17);
      ++v16;
      v15 = v20;
    }

    while (!v22);
    if (v22 == 4)
    {
      v23 = 1;
      v15 = v20;
LABEL_21:
      v31 = errorCopy;
      goto LABEL_23;
    }

    v31 = errorCopy;
    v23 = 0;
    v15 = v20;
LABEL_23:
    close(v13);
    if (v31)
    {
      goto LABEL_24;
    }

LABEL_18:
    v32 = v49;
    goto LABEL_28;
  }

  v24 = *__error();
  v56[0] = NSLocalizedDescriptionKey;
  errorCopy2 = error;
  v26 = [NSString alloc];
  path2 = [lCopy path];
  v28 = [v26 initWithFormat:@"Could not open file [%@] for reading.", path2];
  v57[0] = v28;
  v57[1] = &off_10009B518;
  v56[1] = @"line";
  v56[2] = @"function";
  v29 = [NSString stringWithUTF8String:"[MIIPAPatcherFileManager syncReadBytesFromFileURL:chunkSize:error:handler:]"];
  v57[2] = v29;
  v30 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:3];
  v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v24 userInfo:v30];

  v31 = errorCopy2;
  v23 = 0;
  if (!errorCopy2)
  {
    goto LABEL_18;
  }

LABEL_24:
  v32 = v49;
  if (!v23)
  {
    if (!v15)
    {
      v52[0] = NSLocalizedDescriptionKey;
      v48 = v31;
      v39 = [NSString alloc];
      path3 = [v49 path];
      v41 = [v39 initWithFormat:@"File [%@] was empty.", path3];
      v53[0] = v41;
      v53[1] = &off_10009B548;
      v52[1] = @"line";
      v52[2] = @"function";
      v42 = [NSString stringWithUTF8String:"[MIIPAPatcherFileManager syncReadBytesFromFileURL:chunkSize:error:handler:]"];
      v53[2] = v42;
      v43 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:3];
      v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v43];

      v31 = v48;
    }

    v44 = v15;
    v23 = 0;
    *v31 = v15;
  }

LABEL_28:

  return v23;
}

- (BOOL)enumerateDirectoryAtURL:(id)l includeTypes:(unint64_t)types withError:(id *)error enumerator:(id)enumerator
{
  lCopy = l;
  enumeratorCopy = enumerator;
  v11 = opendir([lCopy fileSystemRepresentation]);
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      do
      {
        v13 = readdir(v11);
        if (!v13)
        {
LABEL_28:
          closedir(v11);
          goto LABEL_31;
        }
      }

      while (v13->d_name[0] == 46);
      d_type = v13->d_type;
      v15 = [NSString stringWithUTF8String:v13->d_name];
      v16 = [lCopy URLByAppendingPathComponent:v15 isDirectory:0];

      if (!d_type)
      {
        memset(&v29, 0, sizeof(v29));
        if (stat([v16 fileSystemRepresentation], &v29))
        {
          goto LABEL_7;
        }

        v19 = v29.st_mode & 0xF000;
        switch(v19)
        {
          case 16384:
            d_type = 4;
            break;
          case 32768:
            d_type = 8;
            break;
          case 40960:
            d_type = 10;
            break;
          default:
LABEL_7:
            d_type = 0;
            break;
        }
      }

      if (!types)
      {
        goto LABEL_17;
      }

      switch(d_type)
      {
        case 4:
          if ((types & 2) != 0)
          {
            goto LABEL_17;
          }

          break;
        case 10:
          if ((types & 4) != 0)
          {
            goto LABEL_17;
          }

          break;
        case 8:
          if (types)
          {
            goto LABEL_17;
          }

          break;
        default:
          if ((types & 8) != 0)
          {
LABEL_17:
            v28 = v12;
            v17 = enumeratorCopy[2](enumeratorCopy, v16, &v28);
            v18 = v28;

            v12 = v18;
            goto LABEL_18;
          }

          break;
      }

      v17 = 1;
LABEL_18:

      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  v27 = *__error();
  v30[0] = NSLocalizedDescriptionKey;
  v20 = [NSString alloc];
  path = [lCopy path];
  v22 = [v20 initWithFormat:@"Failed to open [%@] for enumeration", path];
  v31[0] = v22;
  v31[1] = &off_10009B560;
  v30[1] = @"line";
  v30[2] = @"function";
  v23 = [NSString stringWithUTF8String:"[MIIPAPatcherFileManager enumerateDirectoryAtURL:includeTypes:withError:enumerator:]"];
  v31[2] = v23;
  v24 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:3];
  v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v27 userInfo:v24];

  if (error)
  {
    v25 = v12;
    *error = v12;
  }

LABEL_31:

  return v11 != 0;
}

- (id)directoriesOrderedByDepthFromFilePaths:(id)paths
{
  pathsCopy = paths;
  v31 = objc_alloc_init(NSMutableArray);
  context = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(NSMutableSet);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = pathsCopy;
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        if ([v10 hasSuffix:@"/"])
        {
          [v10 stringByStandardizingPath];
        }

        else
        {
          [v10 stringByDeletingLastPathComponent];
        }
        v11 = ;
        if ([v11 length])
        {
          pathComponents = [v11 pathComponents];
          [v4 addObject:pathComponents];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v7);
  }

  v27 = v5;

  v30 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);
  if ([v4 count])
  {
    v13 = 0;
    v29 = v4;
    do
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v14 = v4;
      v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v33;
        ++v13;
        do
        {
          for (j = 0; j != v16; j = j + 1)
          {
            if (*v33 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v32 + 1) + 8 * j);
            v20 = [v19 objectAtIndexedSubscript:0];
            v21 = [v20 isEqual:@"/"];

            v22 = v13 + v21;
            if ([v19 count] >= v22)
            {
              v23 = [v19 subarrayWithRange:{0, v13 + v21}];
              v24 = [NSString pathWithComponents:v23];
              if (([v31 containsObject:v24] & 1) == 0)
              {
                [v31 addObject:v24];
              }
            }

            if ([v19 count] <= v22)
            {
              [v30 addObject:v19];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v16);
        v4 = v29;
      }

      else
      {
        ++v13;
      }

      [v14 minusSet:v30];
      [v30 removeAllObjects];
    }

    while ([v14 count]);
  }

  objc_autoreleasePoolPop(context);
  v25 = [v31 copy];

  return v25;
}

- (BOOL)createDirectoryAtURL:(id)l mode:(unsigned __int16)mode withError:(id *)error
{
  lCopy = l;
  if (mkdir([lCopy fileSystemRepresentation], mode) && (v8 = *__error(), v8 != 17))
  {
    v11 = [NSString alloc];
    path = [lCopy path];
    nSLocalizedDescriptionKey = [v11 initWithFormat:@"Could not create directory at [%@]", path, NSLocalizedDescriptionKey];
    v19[0] = nSLocalizedDescriptionKey;
    v19[1] = &off_10009B578;
    v18[1] = @"line";
    v18[2] = @"function";
    v14 = [NSString stringWithUTF8String:"[MIIPAPatcherFileManager createDirectoryAtURL:mode:withError:]"];
    v19[2] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v8 userInfo:v15];

    if (error)
    {
      v16 = v9;
      v10 = 0;
      *error = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = 1;
  }

  return v10;
}

- (id)createTempDirectoryWithPrefix:(id)prefix relativeToURL:(id)l mode:(unsigned __int16)mode withError:(id *)error
{
  lCopy = l;
  prefix = [NSString stringWithFormat:@"%@.XXXXXX", prefix];
  v11 = [lCopy URLByAppendingPathComponent:prefix isDirectory:1];

  v12 = strndup([v11 fileSystemRepresentation], 0x400uLL);
  v13 = mkdtemp(v12);
  if (v13 == v12)
  {
    v22 = v13;
    if (!chmod(v13, mode))
    {
      v27 = [NSURL fileURLWithFileSystemRepresentation:v22 isDirectory:1 relativeToURL:0];
      v21 = 0;
      goto LABEL_6;
    }

    v23 = *__error();
    v32[0] = NSLocalizedDescriptionKey;
    errorCopy = error;
    v24 = [NSString alloc];
    path = [v11 path];
    v16 = [v24 initWithFormat:@"Could not chmod newly created temp directory at [%@]", path];
    v33[0] = v16;
    v33[1] = &off_10009B5A8;
    v32[1] = @"line";
    v32[2] = @"function";
    v25 = [NSString stringWithUTF8String:"[MIIPAPatcherFileManager createTempDirectoryWithPrefix:relativeToURL:mode:withError:]"];
    v33[2] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:3];
    v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v23 userInfo:v26];

    error = errorCopy;
  }

  else
  {
    v30 = *__error();
    v34[0] = NSLocalizedDescriptionKey;
    v14 = [NSString alloc];
    path = [v11 path];
    v16 = [v14 initWithFormat:@"Could not create temp directory at [%@]", path];
    v35[0] = v16;
    v35[1] = &off_10009B590;
    v34[1] = @"line";
    v34[2] = @"function";
    v17 = [NSString stringWithUTF8String:"[MIIPAPatcherFileManager createTempDirectoryWithPrefix:relativeToURL:mode:withError:]"];
    v35[2] = v17;
    [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];
    v18 = prefix;
    v20 = v19 = error;
    v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v30 userInfo:v20];

    error = v19;
    prefix = v18;
  }

  v27 = 0;
LABEL_6:
  free(v12);
  if (error && !v27)
  {
    v28 = v21;
    *error = v21;
  }

  return v27;
}

- (id)plistRepresentationFromData:(id)data withError:(id *)error
{
  v16 = 0;
  v5 = [NSPropertyListSerialization propertyListWithData:data options:0 format:0 error:&v16];
  v6 = v16;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }

    v17[0] = NSLocalizedDescriptionKey;
    v7 = [NSString alloc];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 initWithFormat:@"Plist data is not a dictionary, got [%@]", v9];
    v18[0] = v10;
    v18[1] = &off_10009B5C0;
    v17[1] = @"line";
    v17[2] = @"function";
    v11 = [NSString stringWithUTF8String:"[MIIPAPatcherFileManager plistRepresentationFromData:withError:]"];
    v18[2] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
    v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v12];

    v6 = v13;
  }

  if (error)
  {
    v14 = v6;
    v5 = 0;
    *error = v6;
  }

  else
  {
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (id)dataFromPlistRepresentation:(id)representation format:(unint64_t)format withError:(id *)error
{
  if (format == 1)
  {
    v5 = 100;
  }

  else
  {
    v5 = 200;
  }

  return [NSPropertyListSerialization dataWithPropertyList:representation format:v5 options:0 error:error];
}

- (BOOL)copyFromURL:(id)l toURL:(id)rL withError:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  v9 = copyfile([lCopy fileSystemRepresentation], objc_msgSend(rLCopy, "fileSystemRepresentation"), 0, 0xC800Fu);
  if (v9)
  {
    v19 = *__error();
    errorCopy = error;
    v21[0] = NSLocalizedDescriptionKey;
    v10 = [NSString alloc];
    path = [lCopy path];
    path2 = [rLCopy path];
    v13 = [v10 initWithFormat:@"Could not copy file from [%@] to [%@]", path, path2];
    v22[0] = v13;
    v22[1] = &off_10009B5D8;
    v21[1] = @"line";
    v21[2] = @"function";
    v14 = [NSString stringWithUTF8String:"[MIIPAPatcherFileManager copyFromURL:toURL:withError:]"];
    v22[2] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v19 userInfo:v15];

    if (errorCopy)
    {
      v17 = v16;
      *errorCopy = v16;
    }
  }

  else
  {
    v16 = 0;
  }

  return v9 == 0;
}

- (unint64_t)nodeTypeWithURL:(id)l withError:(id *)error
{
  lCopy = l;
  memset(&v19, 0, sizeof(v19));
  if (lstat([lCopy fileSystemRepresentation], &v19))
  {
    v6 = *__error();
    v20[0] = NSLocalizedDescriptionKey;
    v7 = [NSString alloc];
    path = [lCopy path];
    v9 = [v7 initWithFormat:@"Failed to lstat [%@]", path];
    v21[0] = v9;
    v21[1] = &off_10009B5F0;
    v20[1] = @"line";
    v20[2] = @"function";
    v10 = [NSString stringWithUTF8String:"[MIIPAPatcherFileManager nodeTypeWithURL:withError:]"];
    v21[2] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v6 userInfo:v11];

    if (error)
    {
      v13 = v12;
      v14 = 0;
      *error = v12;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v15 = v19.st_mode & 0xF000;
    v16 = 1;
    v17 = 8;
    if (v15 == 40960)
    {
      v17 = 4;
    }

    if (v15 != 0x8000)
    {
      v16 = v17;
    }

    if (v15 == 0x4000)
    {
      v14 = 2;
    }

    else
    {
      v14 = v16;
    }

    v12 = 0;
  }

  return v14;
}

- (id)realpathForURL:(id)l withError:(id *)error
{
  lCopy = l;
  v17 = xmmword_1000659A8;
  v18 = 0;
  bzero(v21, 0x414uLL);
  v6 = getattrlist([lCopy fileSystemRepresentation], &v17, v21, 0x413uLL, 0x20u);
  v23[1024] = 0;
  if (v6)
  {
    v7 = *__error();
    v19[0] = NSLocalizedDescriptionKey;
    v8 = [NSString alloc];
    path = [lCopy path];
    v10 = [v8 initWithFormat:@"Failed to get details about path [%@]", path];
    v20[0] = v10;
    v20[1] = &off_10009B608;
    v19[1] = @"line";
    v19[2] = @"function";
    v11 = [NSString stringWithUTF8String:"[MIIPAPatcherFileManager realpathForURL:withError:]"];
    v20[2] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
    v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:v12];

    v14 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = [NSURL fileURLWithFileSystemRepresentation:v23 isDirectory:(v22 & 0xF000) == 0x4000 relativeToURL:0];
    v13 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v14)
  {
    v15 = v13;
    *error = v13;
  }

LABEL_7:

  return v14;
}

- (BOOL)removeURL:(id)l withError:(id *)error
{
  lCopy = l;
  v6 = 1;
  if (removefile([lCopy fileSystemRepresentation], 0, 1u) < 0 && (v7 = *__error(), v7 != 2))
  {
    v10 = [NSString alloc];
    path = [lCopy path];
    nSLocalizedDescriptionKey = [v10 initWithFormat:@"Failed to remove [%@].", path, NSLocalizedDescriptionKey];
    v17[0] = nSLocalizedDescriptionKey;
    v17[1] = &off_10009B620;
    v16[1] = @"line";
    v16[2] = @"function";
    v13 = [NSString stringWithUTF8String:"[MIIPAPatcherFileManager removeURL:withError:]"];
    v17[2] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:v14];

    if (error)
    {
      v15 = v8;
      v6 = 0;
      *error = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v6;
}

- (BOOL)moveSourceURL:(id)l toDestinationURL:(id)rL fallBackToCopy:(BOOL)copy withError:(id *)error
{
  copyCopy = copy;
  lCopy = l;
  rLCopy = rL;
  v12 = renamex_np([lCopy fileSystemRepresentation], objc_msgSend(rLCopy, "fileSystemRepresentation"), 4u);
  if (v12 == -1 && !copyCopy)
  {
    errorCopy2 = error;
    v13 = *__error();
    v14 = NSPOSIXErrorDomain;
    v33[0] = NSLocalizedDescriptionKey;
    v15 = [NSString alloc];
    path = [lCopy path];
    path2 = [rLCopy path];
    v18 = [v15 initWithFormat:@"Failed to rename [%@] -> [%@].", path, path2];
    v34[0] = v18;
    v34[1] = &off_10009B638;
    v33[1] = @"line";
    v33[2] = @"function";
    v19 = [NSString stringWithUTF8String:"[MIIPAPatcherFileManager moveSourceURL:toDestinationURL:fallBackToCopy:withError:]"];
    v34[2] = v19;
    v20 = v34;
    v21 = v33;
    goto LABEL_4;
  }

  v23 = 0;
  v25 = 1;
  if (v12 == -1 && copyCopy)
  {
    if ((copyfile([lCopy fileSystemRepresentation], objc_msgSend(rLCopy, "fileSystemRepresentation"), 0, 0x2800Fu) & 0x80000000) == 0)
    {
      v30 = 0;
      v26 = [(MIIPAPatcherFileManager *)self removeURL:lCopy withError:&v30];
      v23 = v30;
      if (v26)
      {
        goto LABEL_13;
      }

      goto LABEL_5;
    }

    errorCopy2 = error;
    v13 = *__error();
    v14 = NSPOSIXErrorDomain;
    v31[0] = NSLocalizedDescriptionKey;
    v28 = [NSString alloc];
    path = [lCopy path];
    path2 = [rLCopy path];
    v18 = [v28 initWithFormat:@"Failed to move [%@] -> [%@].", path, path2];
    v32[0] = v18;
    v32[1] = &off_10009B650;
    v31[1] = @"line";
    v31[2] = @"function";
    v19 = [NSString stringWithUTF8String:"[MIIPAPatcherFileManager moveSourceURL:toDestinationURL:fallBackToCopy:withError:]"];
    v32[2] = v19;
    v20 = v32;
    v21 = v31;
LABEL_4:
    v22 = [NSDictionary dictionaryWithObjects:v20 forKeys:v21 count:3];
    v23 = [NSError errorWithDomain:v14 code:v13 userInfo:v22];

    error = errorCopy2;
LABEL_5:
    if (error)
    {
      v24 = v23;
      v25 = 0;
      *error = v23;
    }

    else
    {
      v25 = 0;
    }
  }

LABEL_13:

  return v25;
}

- (id)hashType:(unint64_t)type ofFileURL:(id)l chunkSize:(unint64_t)size withError:(id *)error
{
  lCopy = l;
  if (type == 1)
  {
    v19 = 0;
    v11 = [(MIIPAPatcherFileManager *)self _md5OfFileURL:lCopy chunkSize:size withError:&v19];
    v12 = v19;
LABEL_5:
    v13 = v12;
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (!type)
  {
    v20 = 0;
    v11 = [(MIIPAPatcherFileManager *)self _sha256OfFileURL:lCopy chunkSize:size withError:&v20];
    v12 = v20;
    goto LABEL_5;
  }

  v21[0] = NSLocalizedDescriptionKey;
  type = [[NSString alloc] initWithFormat:@"Invalid hash selection (%lu)", type];
  v22[0] = type;
  v22[1] = &off_10009B668;
  v21[1] = @"line";
  v21[2] = @"function";
  v15 = [NSString stringWithUTF8String:"[MIIPAPatcherFileManager hashType:ofFileURL:chunkSize:withError:]"];
  v22[2] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
  v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v16];

  v11 = 0;
  if (!error)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (!v11)
  {
    v17 = v13;
    *error = v13;
  }

LABEL_10:

  return v11;
}

- (id)_md5OfFileURL:(id)l chunkSize:(unint64_t)size withError:(id *)error
{
  lCopy = l;
  *md = 0;
  v22 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x8010000000;
  v19 = "";
  memset(&v20, 0, sizeof(v20));
  CC_MD5_Init(&v20);
  v14[4] = &v16;
  v15 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100007188;
  v14[3] = &unk_100090BD8;
  v9 = [(MIIPAPatcherFileManager *)self syncReadBytesFromFileURL:lCopy chunkSize:size error:&v15 handler:v14];
  v10 = v15;
  if (v9)
  {
    CC_MD5_Final(md, (v17 + 4));
    v11 = [(MIIPAPatcherFileManager *)self _hexOfHashBuffer:md length:16 upperCase:0];
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v11)
  {
    v12 = v10;
    *error = v10;
  }

LABEL_7:
  _Block_object_dispose(&v16, 8);

  return v11;
}

- (id)_sha256OfFileURL:(id)l chunkSize:(unint64_t)size withError:(id *)error
{
  lCopy = l;
  memset(md, 0, sizeof(md));
  v16 = 0;
  v17 = &v16;
  v18 = 0x8810000000;
  v19 = "";
  memset(&v20, 0, sizeof(v20));
  CC_SHA256_Init(&v20);
  v14[4] = &v16;
  v15 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000073C4;
  v14[3] = &unk_100090BD8;
  v9 = [(MIIPAPatcherFileManager *)self syncReadBytesFromFileURL:lCopy chunkSize:size error:&v15 handler:v14];
  v10 = v15;
  if (v9)
  {
    CC_SHA256_Final(md, (v17 + 4));
    v11 = [(MIIPAPatcherFileManager *)self _hexOfHashBuffer:md length:32 upperCase:1];
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v11)
  {
    v12 = v10;
    *error = v10;
  }

LABEL_7:
  _Block_object_dispose(&v16, 8);

  return v11;
}

- (id)_hexOfHashBuffer:(const char *)buffer length:(unint64_t)length upperCase:(BOOL)case
{
  if (case)
  {
    v7 = "0123456789ABCDEF";
  }

  else
  {
    v7 = "0123456789abcdef";
  }

  v8 = &v14 - ((2 * length + 16) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, (2 * length) | 1);
  if (length)
  {
    v9 = 0;
    do
    {
      v10 = *buffer++;
      v11 = &v8[2 * v9];
      *v11 = v7[v10 >> 4];
      v11[1] = v7[v10 & 0xF];
      ++v9;
    }

    while (length > v9);
  }

  v12 = [[NSString alloc] initWithUTF8String:v8];

  return v12;
}

@end