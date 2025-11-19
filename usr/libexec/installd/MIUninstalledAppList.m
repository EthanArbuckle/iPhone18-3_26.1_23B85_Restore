@interface MIUninstalledAppList
+ (id)sharedList;
- (MIUninstalledAppList)init;
- (NSDictionary)uninstalledDictionary;
- (id)_mapPath;
- (id)_onQueue_uninstalledList;
- (void)_onQueue_setUninstalledList:(id)a3;
- (void)addIdentifier:(id)a3;
- (void)preflightUninstalledMap;
- (void)removeIdentifiers:(id)a3;
@end

@implementation MIUninstalledAppList

- (MIUninstalledAppList)init
{
  v7.receiver = self;
  v7.super_class = MIUninstalledAppList;
  v2 = [(MIUninstalledAppList *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MobileInstallation.UninstalledAppListQueue", v3);
    listQueue = v2->_listQueue;
    v2->_listQueue = v4;
  }

  return v2;
}

+ (id)sharedList
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003CA30;
  block[3] = &unk_100090CF8;
  block[4] = a1;
  if (qword_1000A96C0 != -1)
  {
    dispatch_once(&qword_1000A96C0, block);
  }

  v2 = qword_1000A96B8;

  return v2;
}

- (id)_mapPath
{
  v2 = +[MIDaemonConfiguration sharedInstance];
  v3 = [v2 dataDirectory];
  v4 = [v3 URLByAppendingPathComponent:@"UninstalledApplications.plist" isDirectory:0];

  return v4;
}

- (id)_onQueue_uninstalledList
{
  v3 = [(MIUninstalledAppList *)self uninstalledList];

  if (!v3)
  {
    v4 = [(MIUninstalledAppList *)self _mapPath];
    v5 = [NSMutableDictionary dictionaryWithContentsOfURL:v4];
    [(MIUninstalledAppList *)self setUninstalledList:v5];

    v6 = [(MIUninstalledAppList *)self uninstalledList];

    if (!v6)
    {
      v7 = objc_opt_new();
      [(MIUninstalledAppList *)self setUninstalledList:v7];
    }
  }

  return [(MIUninstalledAppList *)self uninstalledList];
}

- (void)_onQueue_setUninstalledList:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    [(MIUninstalledAppList *)self setUninstalledList:v5];
    v6 = [(MIUninstalledAppList *)self uninstalledList];
    v7 = [(MIUninstalledAppList *)self _mapPath];
    v8 = [v6 writeToURL:v7 atomically:1];

    if ((v8 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      MOLogWrite();
    }
  }

  else
  {
    [(MIUninstalledAppList *)self setUninstalledList:0];
    v9 = +[MIFileManager defaultManager];
    v10 = [(MIUninstalledAppList *)self _mapPath];
    v14 = 0;
    v11 = [v9 removeItemAtURL:v10 error:&v14];
    v12 = v14;

    if ((v11 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      v13 = __error();
      strerror(*v13);
      MOLogWrite();
    }
  }
}

- (void)preflightUninstalledMap
{
  if (!sub_10003CE04())
  {
    v3 = +[MIFileManager defaultManager];
    v4 = [(MIUninstalledAppList *)self _mapPath];
    v8 = 0;
    v5 = [v3 removeItemAtURL:v4 error:&v8];
    v6 = v8;

    if ((v5 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      v7 = __error();
      strerror(*v7);
      MOLogWrite();
    }
  }
}

- (NSDictionary)uninstalledDictionary
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10003CF9C;
  v11 = sub_10003CFAC;
  v12 = 0;
  v3 = [(MIUninstalledAppList *)self listQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003CFB4;
  v6[3] = &unk_1000915D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)addIdentifier:(id)a3
{
  v4 = a3;
  if (sub_10003CE04())
  {
    v5 = [(MIUninstalledAppList *)self listQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10003D0BC;
    v6[3] = &unk_100090DE8;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(v5, v6);
  }
}

- (void)removeIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(MIUninstalledAppList *)self listQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003D1F4;
  v7[3] = &unk_100090DE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

@end