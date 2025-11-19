@interface GTLoopbackService
- (GTLoopbackService)init;
- (id)echo:(id)a3;
- (void)echo:(id)a3 completionHandler:(id)a4;
- (void)echo:(id)a3 repeat:(unint64_t)a4 callback:(id)a5;
- (void)echo:(id)a3 repeat:(unint64_t)a4 callback:(id)a5 complete:(id)a6;
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

- (id)echo:(id)a3
{
  v3 = a3;
  if (GTCoreLogUseOsLog())
  {
    v4 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10001CCD4(v3);
    }
  }

  else
  {
    v5 = __stdoutp;
    v6 = [v3 description];
    v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Sync: %s", [v6 UTF8String]);
    fprintf(v5, "%s\n", [v7 UTF8String]);
  }

  return v3;
}

- (void)echo:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (GTCoreLogUseOsLog())
  {
    v7 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10001CD6C(v5);
    }
  }

  else
  {
    v8 = __stdoutp;
    v9 = [v5 description];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Async: %s", [v9 UTF8String]);
    fprintf(v8, "%s\n", [v10 UTF8String]);
  }

  v6[2](v6, v5);
}

- (void)echo:(id)a3 repeat:(unint64_t)a4 callback:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (!GTCoreLogUseOsLog())
  {
    v10 = __stdoutp;
    v11 = [v7 description];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Repeat (%llu): %s", a4, [v11 UTF8String]);
    fprintf(v10, "%s\n", [v12 UTF8String]);

    if (!a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = gt_tagged_log(0x10u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10001CE04(v7);
  }

  for (; a4; --a4)
  {
LABEL_7:
    v8[2](v8, v7);
  }

LABEL_8:
}

- (void)echo:(id)a3 repeat:(unint64_t)a4 callback:(id)a5 complete:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (GTCoreLogUseOsLog())
  {
    v13 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10001CE04(v10);
    }
  }

  else
  {
    v14 = __stdoutp;
    v15 = [v10 description];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Repeat (%llu): %s", a4, [v15 UTF8String]);
    fprintf(v14, "%s\n", [v16 UTF8String]);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BB6C;
  block[3] = &unk_100040EB0;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = a4;
  v18 = v12;
  v19 = v10;
  v20 = v11;
  dispatch_async(serialQueue, block);
}

@end