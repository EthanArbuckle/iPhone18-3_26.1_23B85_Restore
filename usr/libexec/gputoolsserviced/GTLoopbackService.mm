@interface GTLoopbackService
- (GTLoopbackService)init;
- (id)echo:(id)echo;
- (void)echo:(id)echo completionHandler:(id)handler;
- (void)echo:(id)echo repeat:(unint64_t)repeat callback:(id)callback;
- (void)echo:(id)echo repeat:(unint64_t)repeat callback:(id)callback complete:(id)complete;
@end

@implementation GTLoopbackService

- (GTLoopbackService)init
{
  v6.receiver = self;
  v6.super_class = GTLoopbackService;
  v2 = [(GTLoopbackService *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.gputools.loopback", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;
  }

  return v2;
}

- (id)echo:(id)echo
{
  echoCopy = echo;
  if (GTCoreLogUseOsLog())
  {
    v4 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10001CCD4(echoCopy);
    }
  }

  else
  {
    v5 = __stdoutp;
    v6 = [echoCopy description];
    v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Sync: %s", [v6 UTF8String]);
    fprintf(v5, "%s\n", [v7 UTF8String]);
  }

  return echoCopy;
}

- (void)echo:(id)echo completionHandler:(id)handler
{
  echoCopy = echo;
  handlerCopy = handler;
  if (GTCoreLogUseOsLog())
  {
    v7 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10001CD6C(echoCopy);
    }
  }

  else
  {
    v8 = __stdoutp;
    v9 = [echoCopy description];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Async: %s", [v9 UTF8String]);
    fprintf(v8, "%s\n", [v10 UTF8String]);
  }

  handlerCopy[2](handlerCopy, echoCopy);
}

- (void)echo:(id)echo repeat:(unint64_t)repeat callback:(id)callback
{
  echoCopy = echo;
  callbackCopy = callback;
  if (!GTCoreLogUseOsLog())
  {
    v10 = __stdoutp;
    v11 = [echoCopy description];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Repeat (%llu): %s", repeat, [v11 UTF8String]);
    fprintf(v10, "%s\n", [v12 UTF8String]);

    if (!repeat)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = gt_tagged_log(0x10u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10001CE04(echoCopy);
  }

  for (; repeat; --repeat)
  {
LABEL_7:
    callbackCopy[2](callbackCopy, echoCopy);
  }

LABEL_8:
}

- (void)echo:(id)echo repeat:(unint64_t)repeat callback:(id)callback complete:(id)complete
{
  echoCopy = echo;
  callbackCopy = callback;
  completeCopy = complete;
  if (GTCoreLogUseOsLog())
  {
    v13 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10001CE04(echoCopy);
    }
  }

  else
  {
    v14 = __stdoutp;
    v15 = [echoCopy description];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Repeat (%llu): %s", repeat, [v15 UTF8String]);
    fprintf(v14, "%s\n", [v16 UTF8String]);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BB6C;
  block[3] = &unk_100040EB0;
  v22 = echoCopy;
  v23 = callbackCopy;
  v24 = completeCopy;
  repeatCopy = repeat;
  v18 = completeCopy;
  v19 = echoCopy;
  v20 = callbackCopy;
  dispatch_async(serialQueue, block);
}

@end