@interface HRCEventLoggerIOHelper
+ (void)deleteOldFilesInLoggingDirectory:(id)a3 isInternalVariant:(BOOL)a4;
- (HRCEventLoggerIOHelper)initWithRootDirectory:(id)a3 withQueue:(id)a4 isInternalVariant:(BOOL)a5;
- (void)_createFileForDate:(id)a3;
- (void)_writeSegment;
- (void)flush;
- (void)flushAndClose;
- (void)handleEncodedData:(id)a3;
- (void)startLogging;
- (void)stopLogging;
@end

@implementation HRCEventLoggerIOHelper

- (void)startLogging
{
  if (self->_fileHandle)
  {
    v2 = sub_10000132C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_100005D38(v2);
    }
  }

  else
  {
    v4 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v4;

    v6 = +[NSDate now];
    [(HRCEventLoggerIOHelper *)self _createFileForDate:v6];

    v7 = [[NSMutableData alloc] initWithCapacity:0x20000];
    segment = self->_segment;
    self->_segment = v7;
  }
}

+ (void)deleteOldFilesInLoggingDirectory:(id)a3 isInternalVariant:(BOOL)a4
{
  v4 = a4;
  v38 = a3;
  if (v4)
  {
    v5 = 7;
  }

  else
  {
    v5 = 5;
  }

  v39 = v5;
  v6 = sub_10000132C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100005BC0(v39, v6);
  }

  v40 = objc_opt_new();
  v63 = NSURLAttributeModificationDateKey;
  v37 = [NSArray arrayWithObjects:&v63 count:1];
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 enumeratorAtURL:v38 includingPropertiesForKeys:v37 options:1 errorHandler:0];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v9)
  {
    v10 = *v53;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v52 + 1) + 8 * i);
        v13 = [v12 pathExtension];
        v14 = [v13 isEqualToString:@"lp5"];

        if (v14)
        {
          v51 = 0;
          [v12 getResourceValue:&v51 forKey:NSURLAttributeModificationDateKey error:0];
          v15 = v51;
          v16 = v15;
          if (v15)
          {
            v60[0] = @"url";
            v60[1] = @"modification_date";
            v61[0] = v12;
            v61[1] = v15;
            v17 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
            [v40 addObject:v17];
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v9);
  }

  [v40 sortUsingComparator:&stru_100040750];
  v18 = objc_opt_new();
  v42 = +[NSDate date];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v19 = v40;
  v20 = [v19 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v20)
  {
    v21 = *v48;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v48 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v47 + 1) + 8 * j);
        v24 = [v23 objectForKeyedSubscript:@"modification_date"];
        [v42 timeIntervalSinceDate:v24];
        if (v25 > (86400 * v39) || (v26 = [v19 count], (v26 - objc_msgSend(v18, "count")) >= 0x65))
        {
          v27 = [v23 objectForKeyedSubscript:@"url"];
          [v18 addObject:v27];
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v20);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v28 = v18;
  v29 = [v28 countByEnumeratingWithState:&v43 objects:v58 count:16];
  if (v29)
  {
    v30 = *v44;
    do
    {
      for (k = 0; k != v29; k = k + 1)
      {
        if (*v44 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v32 = *(*(&v43 + 1) + 8 * k);
        v33 = +[NSFileManager defaultManager];
        v34 = [v33 removeItemAtURL:v32 error:0];

        if (v34)
        {
          v35 = sub_10000132C();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = [v32 lastPathComponent];
            *buf = 138543362;
            v57 = v36;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "HRCEventLogger deleted old logging file: %{public}@", buf, 0xCu);
          }
        }
      }

      v29 = [v28 countByEnumeratingWithState:&v43 objects:v58 count:16];
    }

    while (v29);
  }
}

- (HRCEventLoggerIOHelper)initWithRootDirectory:(id)a3 withQueue:(id)a4 isInternalVariant:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v44.receiver = self;
  v44.super_class = HRCEventLoggerIOHelper;
  v10 = [(HRCEventLoggerIOHelper *)&v44 init];
  v11 = [v8 URLByAppendingPathComponent:@"EventLogger"];
  v13 = (v10 + 64);
  v12 = *(v10 + 8);
  *(v10 + 8) = v11;

  objc_storeStrong(v10 + 4, a4);
  v14 = +[NSFileManager defaultManager];
  v15 = *(v10 + 1);
  *(v10 + 1) = v14;

  v16 = sub_10000132C();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *v13;
    *buf = 138543362;
    v48 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "HRCEventLoggerIOHelper directory path : %{public}@", buf, 0xCu);
  }

  v18 = *(v10 + 1);
  v19 = [*(v10 + 8) path];
  if ([v18 fileExistsAtPath:v19])
  {

    v20 = 0;
LABEL_7:
    v45 = NSURLIsExcludedFromBackupKey;
    v46 = &__kCFBooleanTrue;
    v25 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v26 = *v13;
    v42 = v20;
    v27 = [v26 setResourceValues:v25 error:&v42];
    v24 = v42;

    if ((v27 & 1) == 0)
    {
      v28 = sub_10000132C();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100005CAC(v10 + 8, v24, v28);
      }
    }

    v29 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v10 + 4));
    v30 = *(v10 + 3);
    *(v10 + 3) = v29;

    dispatch_source_set_timer(*(v10 + 3), 0, 0xD18C2E2800uLL, 0xDF8475800uLL);
    objc_initWeak(buf, v10);
    v31 = *(v10 + 3);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100004F10;
    handler[3] = &unk_100040778;
    objc_copyWeak(&v40, buf);
    v41 = a5;
    dispatch_source_set_event_handler(v31, handler);
    dispatch_activate(*(v10 + 3));
    v32 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, *(v10 + 4));
    v33 = *(v10 + 5);
    *(v10 + 5) = v32;

    v34 = *(v10 + 5);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100004FA8;
    v37[3] = &unk_1000407A0;
    objc_copyWeak(&v38, buf);
    dispatch_source_set_event_handler(v34, v37);
    dispatch_activate(*(v10 + 5));
    v35 = v10;
    objc_destroyWeak(&v38);
    objc_destroyWeak(&v40);
    objc_destroyWeak(buf);
    goto LABEL_15;
  }

  v21 = *(v10 + 1);
  v22 = *(v10 + 8);
  v43 = 0;
  v23 = [v21 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:&v43];
  v24 = v43;

  if (v23)
  {
    v20 = v24;
    goto LABEL_7;
  }

  v25 = sub_10000132C();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    sub_100005C38();
  }

  v35 = 0;
LABEL_15:

  return v35;
}

- (void)stopLogging
{
  if (self->_fileHandle)
  {
    objc_initWeak(&location, self);
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_loggingQueue);
    v4 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000051D4;
    handler[3] = &unk_1000406E8;
    objc_copyWeak(&v9, &location);
    v8 = v3;
    v5 = v3;
    dispatch_source_set_event_handler(v5, handler);
    dispatch_activate(v5);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = sub_10000132C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100005D7C(v6);
    }
  }
}

- (void)handleEncodedData:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_loggingQueue);
  transaction = self->_transaction;
  os_transaction_needs_more_time();
  if ([v4 length])
  {
    v6 = [(NSMutableData *)self->_segment length];
    if ([v4 length] + v6 > 0x20000)
    {
      [(HRCEventLoggerIOHelper *)self _writeSegment];
    }

    [(NSMutableData *)self->_segment appendData:v4];
  }

  else
  {
    v7 = sub_10000132C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100005DC0(v7);
    }
  }
}

- (void)flush
{
  dispatch_assert_queue_V2(self->_loggingQueue);
  transaction = self->_transaction;
  os_transaction_needs_more_time();

  [(HRCEventLoggerIOHelper *)self _writeSegment];
}

- (void)flushAndClose
{
  dispatch_assert_queue_V2(self->_loggingQueue);
  transaction = self->_transaction;
  os_transaction_needs_more_time();
  [(HRCEventLoggerIOHelper *)self _writeSegment];
  v4 = +[NSDate now];
  [(HRCEventLoggerIOHelper *)self _createFileForDate:?];
}

- (void)_createFileForDate:(id)a3
{
  v24 = a3;
  dispatch_assert_queue_V2(self->_loggingQueue);
  [v24 timeIntervalSinceReferenceDate];
  v5 = [NSString stringWithFormat:@"%.8f.lp5", v4];
  v6 = [(NSURL *)self->_loggingDirectory URLByAppendingPathComponent:v5 isDirectory:0];
  v7 = [v6 path];
  v8 = sub_10000132C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "file path created : %{public}@", buf, 0xCu);
  }

  v9 = v7;
  v10 = open_dprotected_np([v7 UTF8String], 1793, 2, 0, 420);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = sub_10000132C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v21 = __error();
      sub_100005ED4(v6, v21, buf, v11);
    }

    goto LABEL_16;
  }

  v11 = [[NSFileHandle alloc] initWithFileDescriptor:v10 closeOnDealloc:1];
  if (v11)
  {
    v12 = objc_opt_new();
    v26 = 5;
    [v12 appendBytes:&v26 length:2];
    v28 = 1310925;
    mach_timebase_info(&info);
    *buf = mach_continuous_time();
    *&buf[8] = 1000000000 * info.denom / info.numer;
    +[NSDate timeIntervalSinceReferenceDate];
    v30 = v13;
    v14 = [[NSMutableData alloc] initWithCapacity:24];
    [v14 appendBytes:&v28 length:4];
    [v14 appendBytes:buf length:20];
    [v12 appendData:v14];

    v15 = +[NSTimeZone localTimeZone];
    v16 = [v15 name];
    v17 = [v16 dataUsingEncoding:4];
    v18 = [v17 mutableCopy];

    *buf = 212;
    *&buf[2] = [v18 length];
    v19 = objc_opt_new();
    [v19 appendBytes:buf length:4];
    [v19 appendData:v18];

    [v12 appendData:v19];
    v25 = 0;
    LOBYTE(v17) = [v11 writeData:v12 error:&v25];
    v20 = v25;

    if (v17)
    {
      objc_storeStrong(&self->_fileHandle, v11);
    }

    else
    {
      v23 = sub_10000132C();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100005E04();
      }

      v11 = 0;
      [(NSFileManager *)self->_fileManager removeItemAtURL:v6 error:0];
    }

LABEL_16:
    goto LABEL_17;
  }

  v22 = sub_10000132C();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_100005E6C();
  }

  close(v10);
  [(NSFileManager *)self->_fileManager removeItemAtURL:v6 error:0];
LABEL_17:
}

- (void)_writeSegment
{
  dispatch_assert_queue_V2(self->_loggingQueue);
  if (self->_fileHandle)
  {
    v3 = [(NSMutableData *)self->_segment length];
    if ([(NSFileHandle *)self->_fileHandle offsetInFile]+ v3 > 0x500000)
    {
      v4 = sub_10000132C();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HRCEventLogger file size limit reached: closing the current file", buf, 2u);
      }

      fileHandle = self->_fileHandle;
      self->_fileHandle = 0;
    }

    v6 = self->_fileHandle;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  v7 = +[NSDate now];
  [(HRCEventLoggerIOHelper *)self _createFileForDate:v7];

  v6 = self->_fileHandle;
  if (v6)
  {
LABEL_8:
    segment = self->_segment;
    v17 = 0;
    v9 = [(NSFileHandle *)v6 writeData:segment error:&v17];
    v10 = v17;
    if (v9)
    {
      v11 = self->_fileHandle;
      v16 = 0;
      v12 = [(NSFileHandle *)v11 synchronizeAndReturnError:&v16];
      v13 = v16;

      if (v12)
      {
LABEL_17:

        goto LABEL_18;
      }

      p_super = sub_10000132C();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
      {
        sub_100005F98();
      }

      v10 = v13;
    }

    else
    {
      v15 = sub_10000132C();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100005F30();
      }

      p_super = &self->_fileHandle->super;
      self->_fileHandle = 0;
    }

    v13 = v10;
    goto LABEL_17;
  }

LABEL_18:
  [(NSMutableData *)self->_segment setLength:0];
}

@end