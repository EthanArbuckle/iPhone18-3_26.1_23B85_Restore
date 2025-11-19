@interface MSDDemoUpdateStatusHub
+ (id)sharedInstance;
- (BOOL)registerDemoUpdateStatusDelegate:(id)a3;
- (void)demoUpdateCompleted:(id)a3;
- (void)demoUpdateFailed:(id)a3;
- (void)demoUpdateProgress:(int64_t)a3;
- (void)unregisterDemoUpdateStatusDelegate:(id)a3;
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

- (BOOL)registerDemoUpdateStatusDelegate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E8F38(v10);
    }

    goto LABEL_14;
  }

  if (([v4 conformsToProtocol:&OBJC_PROTOCOL___MSDDemoUpdateStatusDelegate] & 1) == 0)
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

  v6 = [(MSDDemoUpdateStatusHub *)self delegates];
  v7 = [v6 containsObject:v5];

  if ((v7 & 1) == 0)
  {
    v9 = [(MSDDemoUpdateStatusHub *)self delegates];
    [v9 addObject:v5];

    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(MSDDemoUpdateStatusHub *)self delegates];
      v13 = 136315394;
      v14 = "[MSDDemoUpdateStatusHub registerDemoUpdateStatusDelegate:]";
      v15 = 2048;
      v16 = [v11 count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Registed 1 delegate, delegate count = %tu", &v13, 0x16u);
    }

    v8 = 1;
    goto LABEL_8;
  }

  v8 = 1;
LABEL_9:

  return v8;
}

- (void)demoUpdateProgress:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "demoUpdateProgress: %td", buf, 0xCu);
  }

  v6 = [(MSDDemoUpdateStatusHub *)v4 delegates];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B2E40;
  v7[3] = &unk_10016C3D8;
  v7[4] = a3;
  [v6 enumerateObjectsUsingBlock:v7];

  objc_sync_exit(v4);
}

- (void)demoUpdateCompleted:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "demoUpdateCompleted.", buf, 2u);
  }

  v7 = [(MSDDemoUpdateStatusHub *)v5 delegates];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B2F98;
  v9[3] = &unk_10016C400;
  v8 = v4;
  v10 = v8;
  [v7 enumerateObjectsUsingBlock:v9];

  objc_sync_exit(v5);
}

- (void)demoUpdateFailed:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = +[MSDTargetDevice sharedInstance];
  if (([v6 isOfflineMode] & 1) == 0)
  {
    [v6 saveOperationError:v4];
  }

  v7 = [(MSDDemoUpdateStatusHub *)v5 delegates];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B30D4;
  v9[3] = &unk_10016C400;
  v8 = v4;
  v10 = v8;
  [v7 enumerateObjectsUsingBlock:v9];

  objc_sync_exit(v5);
}

- (void)unregisterDemoUpdateStatusDelegate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 conformsToProtocol:&OBJC_PROTOCOL___MSDDemoUpdateStatusDelegate])
  {
    v6 = [(MSDDemoUpdateStatusHub *)self delegates];
    [v6 removeObject:v5];

    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(MSDDemoUpdateStatusHub *)self delegates];
      v9 = 136315394;
      v10 = "[MSDDemoUpdateStatusHub unregisterDemoUpdateStatusDelegate:]";
      v11 = 2048;
      v12 = [v8 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Unregisted 1 delegate, delegate count = %tu", &v9, 0x16u);
    }
  }
}

@end