@interface MIUninstalledAppList
+ (id)sharedList;
- (MIUninstalledAppList)init;
- (NSDictionary)uninstalledDictionary;
- (id)_mapPath;
- (id)_onQueue_uninstalledList;
- (void)_onQueue_setUninstalledList:(id)list;
- (void)addIdentifier:(id)identifier;
- (void)preflightUninstalledMap;
- (void)removeIdentifiers:(id)identifiers;
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
  block[4] = self;
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
  dataDirectory = [v2 dataDirectory];
  v4 = [dataDirectory URLByAppendingPathComponent:@"UninstalledApplications.plist" isDirectory:0];

  return v4;
}

- (id)_onQueue_uninstalledList
{
  uninstalledList = [(MIUninstalledAppList *)self uninstalledList];

  if (!uninstalledList)
  {
    _mapPath = [(MIUninstalledAppList *)self _mapPath];
    v5 = [NSMutableDictionary dictionaryWithContentsOfURL:_mapPath];
    [(MIUninstalledAppList *)self setUninstalledList:v5];

    uninstalledList2 = [(MIUninstalledAppList *)self uninstalledList];

    if (!uninstalledList2)
    {
      v7 = objc_opt_new();
      [(MIUninstalledAppList *)self setUninstalledList:v7];
    }
  }

  return [(MIUninstalledAppList *)self uninstalledList];
}

- (void)_onQueue_setUninstalledList:(id)list
{
  listCopy = list;
  v5 = listCopy;
  if (listCopy && [listCopy count])
  {
    [(MIUninstalledAppList *)self setUninstalledList:v5];
    uninstalledList = [(MIUninstalledAppList *)self uninstalledList];
    _mapPath = [(MIUninstalledAppList *)self _mapPath];
    v8 = [uninstalledList writeToURL:_mapPath atomically:1];

    if ((v8 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      MOLogWrite();
    }
  }

  else
  {
    [(MIUninstalledAppList *)self setUninstalledList:0];
    v9 = +[MIFileManager defaultManager];
    _mapPath2 = [(MIUninstalledAppList *)self _mapPath];
    v14 = 0;
    v11 = [v9 removeItemAtURL:_mapPath2 error:&v14];
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
    _mapPath = [(MIUninstalledAppList *)self _mapPath];
    v8 = 0;
    v5 = [v3 removeItemAtURL:_mapPath error:&v8];
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
  listQueue = [(MIUninstalledAppList *)self listQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003CFB4;
  v6[3] = &unk_1000915D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(listQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)addIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (sub_10003CE04())
  {
    listQueue = [(MIUninstalledAppList *)self listQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10003D0BC;
    v6[3] = &unk_100090DE8;
    v6[4] = self;
    v7 = identifierCopy;
    dispatch_sync(listQueue, v6);
  }
}

- (void)removeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  listQueue = [(MIUninstalledAppList *)self listQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003D1F4;
  v7[3] = &unk_100090DE8;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_sync(listQueue, v7);
}

@end