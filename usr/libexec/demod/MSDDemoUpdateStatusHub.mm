@interface MSDDemoUpdateStatusHub
+ (id)sharedInstance;
- (BOOL)registerDemoUpdateStatusDelegate:(id)delegate;
- (void)demoUpdateCompleted:(id)completed;
- (void)demoUpdateFailed:(id)failed;
- (void)demoUpdateProgress:(int64_t)progress;
- (void)unregisterDemoUpdateStatusDelegate:(id)delegate;
@end

@implementation MSDDemoUpdateStatusHub

+ (id)sharedInstance
{
  if (qword_1001A5A60 != -1)
  {
    sub_1000E8EE0();
  }

  v3 = qword_1001A5A58;

  return v3;
}

- (BOOL)registerDemoUpdateStatusDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (!delegateCopy)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E8F38(v10);
    }

    goto LABEL_14;
  }

  if (([delegateCopy conformsToProtocol:&OBJC_PROTOCOL___MSDDemoUpdateStatusDelegate] & 1) == 0)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E8EF4(v10);
    }

LABEL_14:
    v8 = 0;
LABEL_8:

    goto LABEL_9;
  }

  delegates = [(MSDDemoUpdateStatusHub *)self delegates];
  v7 = [delegates containsObject:v5];

  if ((v7 & 1) == 0)
  {
    delegates2 = [(MSDDemoUpdateStatusHub *)self delegates];
    [delegates2 addObject:v5];

    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      delegates3 = [(MSDDemoUpdateStatusHub *)self delegates];
      v13 = 136315394;
      v14 = "[MSDDemoUpdateStatusHub registerDemoUpdateStatusDelegate:]";
      v15 = 2048;
      v16 = [delegates3 count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Registed 1 delegate, delegate count = %tu", &v13, 0x16u);
    }

    v8 = 1;
    goto LABEL_8;
  }

  v8 = 1;
LABEL_9:

  return v8;
}

- (void)demoUpdateProgress:(int64_t)progress
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    progressCopy = progress;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "demoUpdateProgress: %td", buf, 0xCu);
  }

  delegates = [(MSDDemoUpdateStatusHub *)selfCopy delegates];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B2E40;
  v7[3] = &unk_10016C3D8;
  v7[4] = progress;
  [delegates enumerateObjectsUsingBlock:v7];

  objc_sync_exit(selfCopy);
}

- (void)demoUpdateCompleted:(id)completed
{
  completedCopy = completed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "demoUpdateCompleted.", buf, 2u);
  }

  delegates = [(MSDDemoUpdateStatusHub *)selfCopy delegates];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B2F98;
  v9[3] = &unk_10016C400;
  v8 = completedCopy;
  v10 = v8;
  [delegates enumerateObjectsUsingBlock:v9];

  objc_sync_exit(selfCopy);
}

- (void)demoUpdateFailed:(id)failed
{
  failedCopy = failed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = +[MSDTargetDevice sharedInstance];
  if (([v6 isOfflineMode] & 1) == 0)
  {
    [v6 saveOperationError:failedCopy];
  }

  delegates = [(MSDDemoUpdateStatusHub *)selfCopy delegates];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B30D4;
  v9[3] = &unk_10016C400;
  v8 = failedCopy;
  v10 = v8;
  [delegates enumerateObjectsUsingBlock:v9];

  objc_sync_exit(selfCopy);
}

- (void)unregisterDemoUpdateStatusDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (delegateCopy && [delegateCopy conformsToProtocol:&OBJC_PROTOCOL___MSDDemoUpdateStatusDelegate])
  {
    delegates = [(MSDDemoUpdateStatusHub *)self delegates];
    [delegates removeObject:v5];

    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      delegates2 = [(MSDDemoUpdateStatusHub *)self delegates];
      v9 = 136315394;
      v10 = "[MSDDemoUpdateStatusHub unregisterDemoUpdateStatusDelegate:]";
      v11 = 2048;
      v12 = [delegates2 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Unregisted 1 delegate, delegate count = %tu", &v9, 0x16u);
    }
  }
}

@end