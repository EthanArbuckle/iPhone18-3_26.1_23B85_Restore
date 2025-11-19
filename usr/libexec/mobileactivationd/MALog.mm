@interface MALog
+ (id)getSharedInstance;
- (MALog)init;
- (void)dealloc;
- (void)deleteExpiredLogFiles;
- (void)logMessage:(id)a3 toSyslog:(BOOL)a4;
@end

@implementation MALog

+ (id)getSharedInstance
{
  if (getSharedInstance_once != -1)
  {
    +[MALog getSharedInstance];
  }

  v3 = getSharedInstance_sharedInstance;

  return v3;
}

void __26__MALog_getSharedInstance__block_invoke(id a1)
{
  v1 = objc_opt_new();
  v2 = getSharedInstance_sharedInstance;
  getSharedInstance_sharedInstance = v1;
}

- (MALog)init
{
  v8.receiver = self;
  v8.super_class = MALog;
  v2 = [(MALog *)&v8 init];
  if (v2 && (v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v4 = dispatch_queue_create("com.apple.mobileactivationd.log", v3), queue = v2->_queue, v2->_queue = v4, queue, v3, !v2->_queue))
  {
    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  return v6;
}

- (void)dealloc
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __16__MALog_dealloc__block_invoke;
  block[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
  block[4] = self;
  dispatch_sync(queue, block);
  v4.receiver = self;
  v4.super_class = MALog;
  [(MALog *)&v4 dealloc];
}

uint64_t __16__MALog_dealloc__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    return MOLogClose();
  }

  return result;
}

- (void)deleteExpiredLogFiles
{
  v3 = [(MALog *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __30__MALog_deleteExpiredLogFiles__block_invoke;
  block[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
  block[4] = self;
  dispatch_async(v3, block);
}

void __30__MALog_deleteExpiredLogFiles__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) logHandle])
  {
    [*(a1 + 32) logHandle];
    MOLogClose();
    [*(a1 + 32) setLogHandle:0];
  }

  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = copy_sorted_file_list(gPersistentLogFilePath[0]);
  v2 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (!v2)
  {
    v23 = 0;
    goto LABEL_24;
  }

  v4 = v2;
  v5 = 0;
  v27 = 0;
  v6 = *v31;
  v7 = NSURLContentModificationDateKey;
  v8 = &_CTServerConnectionCopyPostponementStatus_ptr;
  *&v3 = 138412546;
  v24 = v3;
  do
  {
    v9 = 0;
    v25 = v4;
    do
    {
      v10 = v5;
      if (*v31 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v30 + 1) + 8 * v9);
      v29 = 0;
      [v11 getResourceValue:&v29 forKey:v7 error:{0, v24}];
      v5 = v29;

      v12 = [v8[301] date];
      v13 = numberOfDaysBetweenDates(v5, v12);

      if (gPersistentLogTTL < 0)
      {
        v21 = copyLoggingHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          __30__MALog_deleteExpiredLogFiles__block_invoke_cold_1(v38, v39, v21);
        }
      }

      else
      {
        if (v13 < gPersistentLogTTL)
        {
          goto LABEL_20;
        }

        v14 = v6;
        v15 = v8;
        v16 = copyLoggingHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v11 path];
          *buf = 138412802;
          v35 = v17;
          v36 = 1024;
          LODWORD(v37[0]) = gPersistentLogTTL;
          WORD2(v37[0]) = 2048;
          *(v37 + 6) = v13;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Log file (%@) is greater than %d days old (%lld), deleting.", buf, 0x1Cu);
        }

        v18 = +[NSFileManager defaultManager];
        v28 = v27;
        v19 = [(NSFileManager *)v18 removeItemAtURL:v11 error:&v28];
        v20 = v28;

        if (v19)
        {
          v27 = v20;
          v8 = v15;
          v6 = v14;
          v7 = NSURLContentModificationDateKey;
          v4 = v25;
          goto LABEL_20;
        }

        v21 = copyLoggingHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          v22 = [v11 path];
          *buf = v24;
          v35 = v22;
          v36 = 2112;
          v37[0] = v20;
          _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "Failed to delete %@: %@", buf, 0x16u);
        }

        v27 = v20;
        v8 = v15;
        v6 = v14;
        v7 = NSURLContentModificationDateKey;
        v4 = v25;
      }

LABEL_20:
      v9 = v9 + 1;
    }

    while (v4 != v9);
    v4 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  }

  while (v4);

  v23 = v27;
LABEL_24:
}

- (void)logMessage:(id)a3 toSyslog:(BOOL)a4
{
  v6 = a3;
  v7 = [(MALog *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __29__MALog_logMessage_toSyslog___block_invoke;
  block[3] = &__block_descriptor_49_e8_32s40s_e5_v8__0l;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void __29__MALog_logMessage_toSyslog___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) logHandle])
  {
    goto LABEL_4;
  }

  [gPersistentLogLabel UTF8String];
  [*(a1 + 32) setLogHandle:MOLogOpen()];
  if ([*(a1 + 32) logHandle])
  {
    [*(a1 + 32) logHandle];
    v2 = [(__CFString *)gPersistentLogFilePath[0] stringByAppendingPathComponent:gPersistentLogFileName[0]];
    [v2 UTF8String];
    MOLogEnableDiskLogging();

LABEL_4:
    [gPersistentLogLabel UTF8String];
    MOLogGetLogLevel();
    [*(a1 + 32) logHandle];
    [gPersistentLogLabel UTF8String];
    MOLogWrite();
    return;
  }

  v3 = copyLoggingHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __29__MALog_logMessage_toSyslog___block_invoke_cold_1(v3);
  }
}

void __30__MALog_deleteExpiredLogFiles__block_invoke_cold_1(uint8_t *buf, int *a2, os_log_t log)
{
  v3 = gPersistentLogTTL;
  *buf = 67109120;
  *a2 = v3;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Invalid TTL: %u", buf, 8u);
}

void __29__MALog_logMessage_toSyslog___block_invoke_cold_1(os_log_t log)
{
  v1 = 138412290;
  v2 = gPersistentLogLabel;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "MOLogOpen failed for %@.", &v1, 0xCu);
}

@end