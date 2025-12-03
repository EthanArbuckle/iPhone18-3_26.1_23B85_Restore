@interface NSTask
+ (BOOL)runTaskWithLaunchPath:(id)path arguments:(id)arguments timeout:(double)timeout outputData:(id)data errorData:(id)errorData launchHandler:(id)handler didLaunch:(BOOL *)launch error:(id *)self0;
+ (BOOL)runTaskWithLaunchPath:(id)path arguments:(id)arguments timeout:(double)timeout outputFileHandle:(id)handle errorFileHandle:(id)fileHandle launchHandler:(id)handler didLaunch:(BOOL *)launch error:(id *)self0;
+ (void)runTaskWithLaunchPath:(id)path arguments:(id)arguments outputData:(id)data reply:(id)reply;
+ (void)runTaskWithLaunchPath:(id)path arguments:(id)arguments outputFileHandle:(id)handle reply:(id)reply;
+ (void)runTaskWithLaunchPath:(id)path arguments:(id)arguments outputFilePath:(id)filePath reply:(id)reply;
+ (void)runTaskWithLaunchPath:(id)path arguments:(id)arguments reply:(id)reply;
+ (void)runTaskWithLaunchPath:(id)path arguments:(id)arguments timeout:(double)timeout outputData:(id)data errorData:(id)errorData launchHandler:(id)handler reply:(id)reply;
+ (void)runTaskWithLaunchPath:(id)path arguments:(id)arguments timeout:(double)timeout outputFileHandle:(id)handle errorFileHandle:(id)fileHandle launchHandler:(id)handler reply:(id)reply;
+ (void)runTaskWithLaunchPath:(id)path arguments:(id)arguments timeout:(double)timeout outputFilePath:(id)filePath errorFilePath:(id)errorFilePath redirectErrorToOutput:(BOOL)output launchHandler:(id)handler reply:(id)self0;
+ (void)runTaskWithLaunchPath:(id)path arguments:(id)arguments timeout:(double)timeout startBlock:(id)block updateBlock:(id)updateBlock endBlock:(id)endBlock;
@end

@implementation NSTask

+ (void)runTaskWithLaunchPath:(id)path arguments:(id)arguments reply:(id)reply
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100018FB4;
  v5[3] = &unk_1000E1830;
  v5[4] = reply;
  [NSTask runTaskWithLaunchPath:path arguments:arguments timeout:0 outputData:0 errorData:0 launchHandler:v5 reply:10.0];
}

+ (void)runTaskWithLaunchPath:(id)path arguments:(id)arguments outputData:(id)data reply:(id)reply
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001906C;
  v6[3] = &unk_1000E1830;
  v6[4] = reply;
  [NSTask runTaskWithLaunchPath:path arguments:arguments timeout:data outputData:0 errorData:0 launchHandler:v6 reply:10.0];
}

+ (void)runTaskWithLaunchPath:(id)path arguments:(id)arguments timeout:(double)timeout outputData:(id)data errorData:(id)errorData launchHandler:(id)handler reply:(id)reply
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100019198;
  v11[3] = &unk_1000E1858;
  v11[4] = reply;
  v11[5] = handler;
  v9[4] = reply;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000191D0;
  v10[3] = &unk_1000E1880;
  v10[4] = data;
  v10[5] = errorData;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100019228;
  v9[3] = &unk_1000E18A8;
  [NSTask runTaskWithLaunchPath:path arguments:arguments timeout:v11 startBlock:v10 updateBlock:v9 endBlock:timeout];
}

+ (void)runTaskWithLaunchPath:(id)path arguments:(id)arguments outputFilePath:(id)filePath reply:(id)reply
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000192CC;
  v6[3] = &unk_1000E1830;
  v6[4] = reply;
  [NSTask runTaskWithLaunchPath:path arguments:arguments timeout:filePath outputFilePath:0 errorFilePath:0 redirectErrorToOutput:0 launchHandler:10.0 reply:v6];
}

+ (void)runTaskWithLaunchPath:(id)path arguments:(id)arguments timeout:(double)timeout outputFilePath:(id)filePath errorFilePath:(id)errorFilePath redirectErrorToOutput:(BOOL)output launchHandler:(id)handler reply:(id)self0
{
  if (filePath | errorFilePath)
  {
    outputCopy = output;
    filePathCopy = filePath;
    if (filePath)
    {
      [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:filePath, 0];
      [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:filePathCopy attributes:0, 0];
      v17 = [NSFileHandle fileHandleForUpdatingAtPath:filePathCopy];
      if (v17)
      {
        v18 = v17;
        filePathCopy = 0;
        if (!errorFilePath)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }

      v19 = sub_100098A04();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 136316162;
        v32 = "+[NSTask(WiFiVelocity) runTaskWithLaunchPath:arguments:timeout:outputFilePath:errorFilePath:redirectErrorToOutput:launchHandler:reply:]";
        v33 = 2080;
        v34 = "W5TaskUtil.m";
        v35 = 1024;
        v36 = 146;
        v37 = 2114;
        lastPathComponent = [path lastPathComponent];
        v39 = 2114;
        errorFilePathCopy = filePathCopy;
        LODWORD(v25) = 48;
        v24 = &v31;
        _os_log_send_and_compose_impl();
      }

      v29 = NSLocalizedFailureReasonErrorKey;
      v30 = @"W5ResourceErr";
      filePathCopy = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:7 userInfo:[NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1, v24, v25]];
    }

    v18 = 0;
    if (!errorFilePath)
    {
      goto LABEL_20;
    }

LABEL_13:
    [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:errorFilePath, 0];
    [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:errorFilePath attributes:0, 0];
    v20 = [NSFileHandle fileHandleForUpdatingAtPath:errorFilePath];
    if (v20)
    {
      if (!filePathCopy)
      {
LABEL_21:
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10001977C;
        v26[3] = &unk_1000E18D0;
        if (outputCopy)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        v26[4] = v18;
        v26[5] = v20;
        v26[6] = reply;
        [NSTask runTaskWithLaunchPath:path arguments:arguments timeout:v18 outputFileHandle:v23 errorFileHandle:handler launchHandler:v26 reply:timeout];
        return;
      }

      goto LABEL_15;
    }

    v21 = sub_100098A04();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      lastPathComponent2 = [path lastPathComponent];
      v31 = 136316162;
      v32 = "+[NSTask(WiFiVelocity) runTaskWithLaunchPath:arguments:timeout:outputFilePath:errorFilePath:redirectErrorToOutput:launchHandler:reply:]";
      v33 = 2080;
      v34 = "W5TaskUtil.m";
      v35 = 1024;
      v36 = 160;
      v37 = 2114;
      lastPathComponent = lastPathComponent2;
      v39 = 2114;
      errorFilePathCopy = errorFilePath;
      LODWORD(v25) = 48;
      v24 = &v31;
      _os_log_send_and_compose_impl();
    }

    v27 = NSLocalizedFailureReasonErrorKey;
    v28 = @"W5ResourceErr";
    filePathCopy = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:7 userInfo:[NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1, v24, v25]];
LABEL_20:
    v20 = 0;
    if (!filePathCopy)
    {
      goto LABEL_21;
    }

LABEL_15:
    [(NSFileHandle *)v18 closeFile];
    [(NSFileHandle *)v20 closeFile];
    if (reply)
    {
      (*(reply + 2))(reply, filePathCopy, 0);
    }

    return;
  }

  [NSTask runTaskWithLaunchPath:path arguments:arguments timeout:0 outputData:0 errorData:handler launchHandler:reply reply:?];
}

+ (void)runTaskWithLaunchPath:(id)path arguments:(id)arguments outputFileHandle:(id)handle reply:(id)reply
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100019874;
  v6[3] = &unk_1000E1830;
  v6[4] = reply;
  [NSTask runTaskWithLaunchPath:path arguments:arguments timeout:handle outputFileHandle:0 errorFileHandle:0 launchHandler:v6 reply:10.0];
}

+ (void)runTaskWithLaunchPath:(id)path arguments:(id)arguments timeout:(double)timeout outputFileHandle:(id)handle errorFileHandle:(id)fileHandle launchHandler:(id)handler reply:(id)reply
{
  if (handle | fileHandle)
  {
    [handle seekToEndOfFile];
    [fileHandle seekToEndOfFile];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100019A50;
    v18[3] = &unk_1000E1858;
    v18[4] = reply;
    v18[5] = handler;
    v16[4] = reply;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100019A88;
    v17[3] = &unk_1000E1880;
    v17[4] = handle;
    v17[5] = fileHandle;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100019C90;
    v16[3] = &unk_1000E18A8;
    [NSTask runTaskWithLaunchPath:path arguments:arguments timeout:v18 startBlock:v17 updateBlock:v16 endBlock:timeout];
  }

  else
  {

    [NSTask runTaskWithLaunchPath:"runTaskWithLaunchPath:arguments:timeout:outputData:errorData:launchHandler:reply:" arguments:path timeout:arguments outputData:0 errorData:0 launchHandler:? reply:?];
  }
}

+ (void)runTaskWithLaunchPath:(id)path arguments:(id)arguments timeout:(double)timeout startBlock:(id)block updateBlock:(id)updateBlock endBlock:(id)endBlock
{
  v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.wifivelocity.task.%@", [path lastPathComponent]);
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x3052000000;
  v69[3] = sub_10001A8C4;
  v69[4] = sub_10001A8D4;
  [(NSString *)v13 UTF8String];
  v14 = os_transaction_create();
  [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];
  v69[5] = v14;
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x2020000000;
  v68 = 0;
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x2020000000;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3052000000;
  v62 = sub_10001A8C4;
  v63 = sub_10001A8D4;
  v64 = 0;
  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = &off_1000B2000;
  identifier = dispatch_queue_create(0, v15);
  if (!identifier)
  {
    v91 = NSLocalizedFailureReasonErrorKey;
    v92 = @"W5NoMemErr";
    v36 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
    v35 = 2;
LABEL_33:
    v37 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:v35 userInfo:v36];
    v26 = 0;
    v24 = 0;
    v45 = 0;
    v21 = 0;
    v30 = 0;
    v48 = 0;
    goto LABEL_34;
  }

  pathCopy = path;
  if ([path isEqualToString:@"/bin/sh"])
  {
    pathCopy = [arguments firstObject];
  }

  if ((([pathCopy hasPrefix:@"/usr/local/"] & 1) != 0 || objc_msgSend(pathCopy, "hasPrefix:", @"/AppleInternal/")) && (os_variant_allows_internal_security_policies() & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      uTF8String = [pathCopy UTF8String];
      *buf = 136446210;
      v77 = uTF8String;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] '%{public}s' not allowed on non-internal install variants, will not run task", buf, 0xCu);
    }

    v89 = NSLocalizedFailureReasonErrorKey;
    v90 = @"W5NotPermittedErr";
    v36 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
    v35 = 5;
    goto LABEL_33;
  }

  if (!path || ![+[NSFileManager isExecutableFileAtPath:"isExecutableFileAtPath:"]
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      uTF8String2 = [path UTF8String];
      *buf = 136446210;
      v77 = uTF8String2;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] '%{public}s' does not exist, will not run task", buf, 0xCu);
    }

    v87 = NSLocalizedFailureReasonErrorKey;
    v88 = @"W5ParamErr";
    v35 = 1;
    v36 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    goto LABEL_33;
  }

  v48 = objc_alloc_init(NSTask);
  [v48 setLaunchPath:path];
  if (arguments)
  {
    [v48 setArguments:arguments];
  }

  *v58 = 0;
  handle = 0;
  memset(&v86, 0, sizeof(v86));
  v18 = openpty(&v58[1], v58, 0, &v86, 0);
  if (v18)
  {
    v84 = NSLocalizedFailureReasonErrorKey;
    v85 = @"err";
    v37 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v18 userInfo:[NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1]];
    v38 = sub_100098A04();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *__error();
      *buf = 136315906;
      v77 = "+[NSTask(WiFiVelocity) runTaskWithLaunchPath:arguments:timeout:startBlock:updateBlock:endBlock:]";
      v78 = 2080;
      v79 = "W5TaskUtil.m";
      v80 = 1024;
      v81 = 335;
      v82 = 1024;
      v83 = v39;
LABEL_25:
      _os_log_send_and_compose_impl();
    }

LABEL_26:
    v26 = 0;
    v24 = 0;
    v45 = 0;
    v21 = 0;
LABEL_28:
    v30 = 0;
    goto LABEL_34;
  }

  memset(&v86, 0, sizeof(v86));
  v19 = openpty(&handle + 1, &handle, 0, &v86, 0);
  if (v19)
  {
    v74 = NSLocalizedFailureReasonErrorKey;
    v75 = @"err";
    v37 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v19 userInfo:[NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1]];
    v40 = sub_100098A04();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *__error();
      *buf = 136315906;
      v77 = "+[NSTask(WiFiVelocity) runTaskWithLaunchPath:arguments:timeout:startBlock:updateBlock:endBlock:]";
      v78 = 2080;
      v79 = "W5TaskUtil.m";
      v80 = 1024;
      v81 = 339;
      v82 = 1024;
      v83 = v41;
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v20 = [NSFileHandle alloc];
  v21 = [v20 initWithFileDescriptor:v58[1] closeOnDealloc:1];
  v22 = [NSFileHandle alloc];
  v45 = [v22 initWithFileDescriptor:v58[0] closeOnDealloc:1];
  v23 = [NSFileHandle alloc];
  v24 = [v23 initWithFileDescriptor:HIDWORD(handle) closeOnDealloc:1];
  v25 = [NSFileHandle alloc];
  v26 = [v25 initWithFileDescriptor:handle closeOnDealloc:1];
  [v48 setStandardOutput:v45];
  [v48 setStandardError:v26];
  [v48 setStandardInput:0];
  fcntl(v58[1], 4, 4);
  fcntl(SHIDWORD(handle), 4, 4);
  v27 = v58[1];
  global_queue = dispatch_get_global_queue(0, 0);
  v29 = dispatch_source_create(&_dispatch_source_type_read, v27, 0, global_queue);
  if (!v29)
  {
    v72 = NSLocalizedFailureReasonErrorKey;
    v73 = @"W5NoMemErr";
    v37 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:2 userInfo:[NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1]];
    goto LABEL_28;
  }

  v30 = v29;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001A8E0;
  handler[3] = &unk_1000E1920;
  v56 = v58[1];
  handler[7] = v65;
  handler[6] = updateBlock;
  handler[4] = identifier;
  handler[5] = v48;
  dispatch_source_set_event_handler(v29, handler);
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_10001AA48;
  v54[3] = &unk_1000E1948;
  v54[4] = v45;
  v54[5] = v21;
  v54[6] = v30;
  dispatch_source_set_cancel_handler(v30, v54);
  dispatch_resume(v30);
  v31 = dispatch_source_create(&_dispatch_source_type_read, SHIDWORD(handle), 0, global_queue);
  if (v31)
  {
    v32 = v31;
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_10001AA8C;
    v52[3] = &unk_1000E1920;
    v53 = HIDWORD(handle);
    v52[6] = updateBlock;
    v52[7] = v65;
    v52[4] = identifier;
    v52[5] = v48;
    dispatch_source_set_event_handler(v31, v52);
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10001ABF4;
    v51[3] = &unk_1000E1948;
    v51[4] = v26;
    v51[5] = v24;
    v51[6] = v32;
    dispatch_source_set_cancel_handler(v32, v51);
    dispatch_resume(v32);
    v33 = +[NSNotificationCenter defaultCenter];
    +[NSOperationQueue mainQueue];
    block[15] = _NSConcreteStackBlock;
    block[16] = 3221225472;
    block[17] = sub_10001AC38;
    block[18] = &unk_1000E1970;
    block[27] = v65;
    block[28] = v67;
    block[19] = identifier;
    block[20] = v48;
    block[21] = path;
    block[22] = arguments;
    block[25] = endBlock;
    block[26] = &v59;
    block[29] = v69;
    block[23] = v32;
    block[24] = v30;
    v34 = [NSNotificationCenter addObserverForName:v33 object:"addObserverForName:object:queue:usingBlock:" queue:NSTaskDidTerminateNotification usingBlock:?];
    v60[5] = v34;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001B174;
    block[3] = &unk_1000E1A10;
    block[4] = v48;
    block[5] = path;
    block[6] = v32;
    block[7] = v30;
    block[8] = identifier;
    block[9] = arguments;
    block[10] = 0;
    block[11] = block;
    *&block[14] = timeout;
    block[12] = v69;
    block[13] = v67;
    dispatch_async(&_dispatch_main_q, block);
    goto LABEL_16;
  }

  v70 = NSLocalizedFailureReasonErrorKey;
  v71 = @"W5NoMemErr";
  v16 = &off_1000B2000;
  v37 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:2 userInfo:[NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1]];
LABEL_34:

  if (v30)
  {
    dispatch_source_cancel(v30);
  }

  else
  {
  }

  v42 = identifier;
  if (!identifier)
  {
    v42 = dispatch_get_global_queue(0, 0);
  }

  v49[0] = _NSConcreteStackBlock;
  v49[1] = *(v16 + 240);
  v49[2] = sub_10001B83C;
  v49[3] = &unk_1000E1998;
  v49[4] = path;
  v49[5] = v37;
  v49[6] = arguments;
  v49[7] = v48;
  v49[8] = block;
  v49[9] = v69;
  dispatch_async(v42, v49);
  if (identifier)
  {
    dispatch_release(identifier);
  }

LABEL_16:
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(v65, 8);
  _Block_object_dispose(v67, 8);
  _Block_object_dispose(v69, 8);
}

+ (BOOL)runTaskWithLaunchPath:(id)path arguments:(id)arguments timeout:(double)timeout outputData:(id)data errorData:(id)errorData launchHandler:(id)handler didLaunch:(BOOL *)launch error:(id *)self0
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3052000000;
  v32 = sub_10001A8C4;
  v33 = sub_10001A8D4;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v17 = dispatch_semaphore_create(0);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001BD48;
  v24[3] = &unk_1000E1A38;
  v24[5] = &v29;
  v24[6] = &v25;
  v24[4] = v17;
  [NSTask runTaskWithLaunchPath:path arguments:arguments timeout:data outputData:errorData errorData:handler launchHandler:v24 reply:timeout];
  v18 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v17, v18) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v36 = 0x4082C00000000000;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v19 = v30[5];
  if (launch)
  {
    *launch = *(v26 + 24);
  }

  v20 = v30;
  if (error)
  {
    v21 = v30[5];
    if (v21)
    {
      *error = v21;
    }
  }

  v22 = v20[5] == 0;
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return v22;
}

+ (BOOL)runTaskWithLaunchPath:(id)path arguments:(id)arguments timeout:(double)timeout outputFileHandle:(id)handle errorFileHandle:(id)fileHandle launchHandler:(id)handler didLaunch:(BOOL *)launch error:(id *)self0
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3052000000;
  v32 = sub_10001A8C4;
  v33 = sub_10001A8D4;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v17 = dispatch_semaphore_create(0);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001C3C8;
  v24[3] = &unk_1000E1A38;
  v24[5] = &v29;
  v24[6] = &v25;
  v24[4] = v17;
  [NSTask runTaskWithLaunchPath:path arguments:arguments timeout:handle outputFileHandle:fileHandle errorFileHandle:handler launchHandler:v24 reply:timeout];
  v18 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v17, v18) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v36 = 0x4082C00000000000;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v19 = v30[5];
  if (launch)
  {
    *launch = *(v26 + 24);
  }

  v20 = v30;
  if (error)
  {
    v21 = v30[5];
    if (v21)
    {
      *error = v21;
    }
  }

  v22 = v20[5] == 0;
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return v22;
}

@end