@interface NSFileManager
- (id)_srGetCreationDateForFile:(id)file;
- (id)dateSuffix;
- (id)outputPath:(int)path bundleID:(id)d;
- (id)trimmedOutputPath:(id)path;
- (int64_t)_srDeleteFilesOlderThanTimeToLiveInSeconds:(double)seconds deleteSystemFiles:(BOOL)files;
- (int64_t)_srSizeOfTempDir:(id *)dir;
- (unint64_t)_srDeviceFreeDiskSpace;
- (void)_srDeleteFilesWithPrefix:(id)prefix;
- (void)_srMoveFileFromURL:(id)l toURL:(id)rL completion:(id)completion;
- (void)_srRemoveFile:(id)file completion:(id)completion;
- (void)_srSetupTempDirectory;
@end

@implementation NSFileManager

- (void)_srSetupTempDirectory
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "_srSetupTempDirectory", buf, 2u);
  }

  _srTempPath = [(NSFileManager *)self _srTempPath];
  v4 = [(NSFileManager *)self fileExistsAtPath:_srTempPath isDirectory:0];

  if (v4)
  {
    [(NSFileManager *)self _srDeleteAllAndSystemTempFiles];
  }

  else
  {
    _srTempPath2 = [(NSFileManager *)self _srTempPath];
    v7 = 0;
    [(NSFileManager *)self createDirectoryAtPath:_srTempPath2 withIntermediateDirectories:0 attributes:0 error:&v7];
    v6 = v7;

    if (v6)
    {
      NSLog(@"error: %@", v6);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005E7C0();
      }
    }
  }
}

- (id)dateSuffix
{
  v2 = +[NSDate date];
  v3 = objc_alloc_init(NSDateFormatter);
  [v3 setDateFormat:@"MM-dd-yyyy HH:mm:ss"];
  v4 = [v3 stringFromDate:v2];
  v5 = [v4 stringByReplacingOccurrencesOfString:@":" withString:@"-"];

  return v5;
}

- (id)outputPath:(int)path bundleID:(id)d
{
  dCopy = d;
  dateSuffix = [(NSFileManager *)self dateSuffix];
  v8 = +[NSFileManager defaultManager];
  _srTempPath = [v8 _srTempPath];
  v10 = _srTempPath;
  switch(path)
  {
    case 1:
      [NSString stringWithFormat:@"%@/ClipRecording_%@.mp4", _srTempPath, dateSuffix];
      goto LABEL_7;
    case 3:
      [NSString stringWithFormat:@"%@/LocalCapture_%@.mp4", _srTempPath, dateSuffix];
      goto LABEL_7;
    case 2:
      [NSString stringWithFormat:@"%@/ScreenRecording_%@.mp4", _srTempPath, dateSuffix];
      v11 = LABEL_7:;
      goto LABEL_9;
  }

  v12 = [NSBundle _rpLocalizedAppNameFromBundleID:dCopy];
  v11 = [NSString stringWithFormat:@"%@/%@_%@.mp4", v10, v12, dateSuffix];

LABEL_9:

  return v11;
}

- (id)trimmedOutputPath:(id)path
{
  pathCopy = path;
  v4 = +[NSFileManager defaultManager];
  _srTempPath = [v4 _srTempPath];
  v6 = [NSBundle _rpLocalizedAppNameFromBundleID:pathCopy];

  v7 = [NSString stringWithFormat:@"%@/%@_trimmed.mp4", _srTempPath, v6];

  return v7;
}

- (int64_t)_srSizeOfTempDir:(id *)dir
{
  v5 = +[NSFileManager defaultManager];
  _srTempPath = [(NSFileManager *)self _srTempPath];
  v7 = [v5 attributesOfItemAtPath:_srTempPath error:dir];

  fileSize = [v7 fileSize];
  return fileSize;
}

- (int64_t)_srDeleteFilesOlderThanTimeToLiveInSeconds:(double)seconds deleteSystemFiles:(BOOL)files
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    secondsCopy = seconds;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "_srDeleteFilesOlderThanTimeToLiveInSeconds: %i", buf, 8u);
  }

  v7 = +[NSFileManager defaultManager];
  _srTempPath = [(NSFileManager *)self _srTempPath];
  v39 = 0;
  v9 = [v7 contentsOfDirectoryAtPath:_srTempPath error:&v39];
  v10 = v39;

  sub_100004B08(v11, v10);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v9;
  v12 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v32 = 0;
    v14 = *v36;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v35 + 1) + 8 * i);
        if (files || ([*(*(&v35 + 1) + 8 * i) containsString:@"ScreenRecording_"] & 1) == 0)
        {
          _srTempPath2 = [(NSFileManager *)self _srTempPath];
          v18 = [NSString stringWithFormat:@"%@/%@", _srTempPath2, v16];

          v34 = v10;
          v19 = [(NSFileManager *)self attributesOfItemAtPath:v18 error:&v34];
          v20 = v34;

          sub_100004B08(v21, v20);
          v22 = +[NSDate date];
          fileModificationDate = [v19 fileModificationDate];
          [v22 timeIntervalSinceDate:fileModificationDate];
          v25 = v24;

          fileSize = [v19 fileSize];
          if (seconds == 0.0 || v25 > seconds)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "deleting old file", buf, 2u);
            }

            v33 = v20;
            [(NSFileManager *)self removeItemAtPath:v18 error:&v33];
            v27 = v33;

            sub_100004B08(v28, v27);
            if (v27)
            {
              v29 = 0;
            }

            else
            {
              v29 = fileSize;
            }

            v32 += v29;
            v20 = v27;
          }

          v10 = v20;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v13);
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (void)_srRemoveFile:(id)file completion:(id)completion
{
  fileCopy = file;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(-32768, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004C48;
  block[3] = &unk_1000A10D8;
  v12 = fileCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = fileCopy;
  dispatch_async(v8, block);
}

- (void)_srMoveFileFromURL:(id)l toURL:(id)rL completion:(id)completion
{
  lCopy = l;
  rLCopy = rL;
  completionCopy = completion;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100004E08;
  v15[3] = &unk_1000A1100;
  v15[4] = self;
  v16 = rLCopy;
  v17 = lCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = lCopy;
  v14 = rLCopy;
  dispatch_async(v11, v15);
}

- (void)_srDeleteFilesWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004F84;
  v7[3] = &unk_1000A1128;
  v7[4] = self;
  v8 = prefixCopy;
  v6 = prefixCopy;
  dispatch_async(v5, v7);
}

- (id)_srGetCreationDateForFile:(id)file
{
  fileCopy = file;
  v4 = +[NSFileManager defaultManager];
  path = [fileCopy path];

  v6 = [v4 attributesOfItemAtPath:path error:0];

  v7 = [v6 objectForKey:NSFileCreationDate];

  return v7;
}

- (unint64_t)_srDeviceFreeDiskSpace
{
  v3 = +[NSFileManager defaultManager];
  _srTempPath = [(NSFileManager *)self _srTempPath];
  v5 = [v3 attributesOfFileSystemForPath:_srTempPath error:0];

  v6 = [v5 objectForKeyedSubscript:NSFileSystemFreeSize];
  unsignedLongValue = [v6 unsignedLongValue];

  return unsignedLongValue;
}

@end