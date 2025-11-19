@interface NSFileManager
- (id)_srGetCreationDateForFile:(id)a3;
- (id)dateSuffix;
- (id)outputPath:(int)a3 bundleID:(id)a4;
- (id)trimmedOutputPath:(id)a3;
- (int64_t)_srDeleteFilesOlderThanTimeToLiveInSeconds:(double)a3 deleteSystemFiles:(BOOL)a4;
- (int64_t)_srSizeOfTempDir:(id *)a3;
- (unint64_t)_srDeviceFreeDiskSpace;
- (void)_srDeleteFilesWithPrefix:(id)a3;
- (void)_srMoveFileFromURL:(id)a3 toURL:(id)a4 completion:(id)a5;
- (void)_srRemoveFile:(id)a3 completion:(id)a4;
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

  v3 = [(NSFileManager *)self _srTempPath];
  v4 = [(NSFileManager *)self fileExistsAtPath:v3 isDirectory:0];

  if (v4)
  {
    [(NSFileManager *)self _srDeleteAllAndSystemTempFiles];
  }

  else
  {
    v5 = [(NSFileManager *)self _srTempPath];
    v7 = 0;
    [(NSFileManager *)self createDirectoryAtPath:v5 withIntermediateDirectories:0 attributes:0 error:&v7];
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

- (id)outputPath:(int)a3 bundleID:(id)a4
{
  v6 = a4;
  v7 = [(NSFileManager *)self dateSuffix];
  v8 = +[NSFileManager defaultManager];
  v9 = [v8 _srTempPath];
  v10 = v9;
  switch(a3)
  {
    case 1:
      [NSString stringWithFormat:@"%@/ClipRecording_%@.mp4", v9, v7];
      goto LABEL_7;
    case 3:
      [NSString stringWithFormat:@"%@/LocalCapture_%@.mp4", v9, v7];
      goto LABEL_7;
    case 2:
      [NSString stringWithFormat:@"%@/ScreenRecording_%@.mp4", v9, v7];
      v11 = LABEL_7:;
      goto LABEL_9;
  }

  v12 = [NSBundle _rpLocalizedAppNameFromBundleID:v6];
  v11 = [NSString stringWithFormat:@"%@/%@_%@.mp4", v10, v12, v7];

LABEL_9:

  return v11;
}

- (id)trimmedOutputPath:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 _srTempPath];
  v6 = [NSBundle _rpLocalizedAppNameFromBundleID:v3];

  v7 = [NSString stringWithFormat:@"%@/%@_trimmed.mp4", v5, v6];

  return v7;
}

- (int64_t)_srSizeOfTempDir:(id *)a3
{
  v5 = +[NSFileManager defaultManager];
  v6 = [(NSFileManager *)self _srTempPath];
  v7 = [v5 attributesOfItemAtPath:v6 error:a3];

  v8 = [v7 fileSize];
  return v8;
}

- (int64_t)_srDeleteFilesOlderThanTimeToLiveInSeconds:(double)a3 deleteSystemFiles:(BOOL)a4
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v42 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "_srDeleteFilesOlderThanTimeToLiveInSeconds: %i", buf, 8u);
  }

  v7 = +[NSFileManager defaultManager];
  v8 = [(NSFileManager *)self _srTempPath];
  v39 = 0;
  v9 = [v7 contentsOfDirectoryAtPath:v8 error:&v39];
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
        if (a4 || ([*(*(&v35 + 1) + 8 * i) containsString:@"ScreenRecording_"] & 1) == 0)
        {
          v17 = [(NSFileManager *)self _srTempPath];
          v18 = [NSString stringWithFormat:@"%@/%@", v17, v16];

          v34 = v10;
          v19 = [(NSFileManager *)self attributesOfItemAtPath:v18 error:&v34];
          v20 = v34;

          sub_100004B08(v21, v20);
          v22 = +[NSDate date];
          v23 = [v19 fileModificationDate];
          [v22 timeIntervalSinceDate:v23];
          v25 = v24;

          v26 = [v19 fileSize];
          if (a3 == 0.0 || v25 > a3)
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
              v29 = v26;
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

- (void)_srRemoveFile:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(-32768, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004C48;
  block[3] = &unk_1000A10D8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_srMoveFileFromURL:(id)a3 toURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100004E08;
  v15[3] = &unk_1000A1100;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (void)_srDeleteFilesWithPrefix:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004F84;
  v7[3] = &unk_1000A1128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)_srGetCreationDateForFile:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [v3 path];

  v6 = [v4 attributesOfItemAtPath:v5 error:0];

  v7 = [v6 objectForKey:NSFileCreationDate];

  return v7;
}

- (unint64_t)_srDeviceFreeDiskSpace
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(NSFileManager *)self _srTempPath];
  v5 = [v3 attributesOfFileSystemForPath:v4 error:0];

  v6 = [v5 objectForKeyedSubscript:NSFileSystemFreeSize];
  v7 = [v6 unsignedLongValue];

  return v7;
}

@end