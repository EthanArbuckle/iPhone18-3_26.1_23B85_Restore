@interface FSKitHelper
- (id)createQueue:(id)queue;
- (id)getResourceQueue:(id)queue;
- (void)openDevice:(id)device devicePath:(id)path flags:(int)flags auditToken:(id)token replyHandler:(id)handler;
- (void)revoke:(id)revoke replyHandler:(id)handler;
- (void)wipeFS:(id)s replyHandler:(id)handler;
@end

@implementation FSKitHelper

- (id)getResourceQueue:(id)queue
{
  queueCopy = queue;
  if (queueCopy)
  {
    v4 = qword_1000085F8;
    objc_sync_enter(v4);
    v5 = [qword_1000085F8 objectForKeyedSubscript:queueCopy];
    objc_sync_exit(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)createQueue:(id)queue
{
  queueCopy = queue;
  if (queueCopy)
  {
    v4 = qword_1000085F8;
    objc_sync_enter(v4);
    v5 = [qword_1000085F8 objectForKeyedSubscript:queueCopy];
    if (!v5)
    {
      queueCopy = [NSString stringWithFormat:@"com.apple.fskit_helper.queue.%@", queueCopy];
      v5 = dispatch_queue_create([queueCopy UTF8String], 0);
      [qword_1000085F8 setObject:v5 forKeyedSubscript:queueCopy];
    }

    objc_sync_exit(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)openDevice:(id)device devicePath:(id)path flags:(int)flags auditToken:(id)token replyHandler:(id)handler
{
  deviceCopy = device;
  pathCopy = path;
  tokenCopy = token;
  handlerCopy = handler;
  v16 = [(FSKitHelper *)self createQueue:deviceCopy];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000010DC;
  block[3] = &unk_1000041C8;
  v22 = pathCopy;
  v23 = tokenCopy;
  flagsCopy = flags;
  v24 = deviceCopy;
  v25 = handlerCopy;
  v17 = deviceCopy;
  v18 = handlerCopy;
  v19 = tokenCopy;
  v20 = pathCopy;
  dispatch_sync(v16, block);
}

- (void)wipeFS:(id)s replyHandler:(id)handler
{
  sCopy = s;
  handlerCopy = handler;
  bSDName = [sCopy BSDName];
  v9 = [(FSKitHelper *)self getResourceQueue:bSDName];

  if (v9)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100001638;
    v12[3] = &unk_1000041F0;
    v13 = sCopy;
    v14 = handlerCopy;
    dispatch_sync(v9, v12);

    v10 = v13;
  }

  else
  {
    v11 = fskit_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100001E4C(sCopy);
    }

    v10 = fs_errorForPOSIXError();
    (*(handlerCopy + 2))(handlerCopy, v10);
  }
}

- (void)revoke:(id)revoke replyHandler:(id)handler
{
  revokeCopy = revoke;
  handlerCopy = handler;
  bSDName = [revokeCopy BSDName];
  v9 = [(FSKitHelper *)self getResourceQueue:bSDName];

  if (v9)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100001A44;
    v12[3] = &unk_1000041F0;
    v13 = revokeCopy;
    v14 = handlerCopy;
    dispatch_sync(v9, v12);

    v10 = v13;
  }

  else
  {
    v11 = fskit_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100002178(revokeCopy);
    }

    v10 = fs_errorForPOSIXError();
    (*(handlerCopy + 2))(handlerCopy, v10);
  }
}

@end