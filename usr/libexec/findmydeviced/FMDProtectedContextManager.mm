@interface FMDProtectedContextManager
+ (id)sharedManager;
- (BOOL)_startCleaningEmptyFolders;
- (BOOL)cleanOutCurrentContextDirectoryURL:(id)l preservingContextUUID:(id)d obliterateDirectory:(BOOL)directory;
- (BOOL)cleanupAllContextsForKey:(id)key;
- (BOOL)cleanupContextsForKey:(id)key contextUUID:(id)d obliterate:(BOOL)obliterate;
- (BOOL)deleteFilesAtURLs:(id)ls;
- (FMDProtectedContextManager)init;
- (id)_directoryNamesWithURL:(id)l enumerationOption:(unint64_t)option;
- (id)_emptyFolderURLs;
- (id)_enumeratorForDirectoryURL:(id)l;
- (id)contextForKey:(id)key contextUUID:(id *)d error:(id *)error;
- (id)contextKeysForType:(id)type enumerationOption:(unint64_t)option;
- (id)saveContext:(id)context forContextKey:(id)key dataProtectionClass:(int64_t)class;
- (void)cleanupEmptyFolders;
@end

@implementation FMDProtectedContextManager

+ (id)sharedManager
{
  if (qword_1003147B8 != -1)
  {
    sub_10022BEAC();
  }

  v3 = qword_1003147B0;

  return v3;
}

- (FMDProtectedContextManager)init
{
  v5.receiver = self;
  v5.super_class = FMDProtectedContextManager;
  v2 = [(FMDProtectedContextManager *)&v5 init];
  if (v2)
  {
    v3 = [[FMReadWriteLock alloc] initWithLockName:@"com.apple.icloud.findmydeviced.FMDProtectedContextManager-Lock"];
    [(FMDProtectedContextManager *)v2 setProtectedContextLock:v3];
  }

  return v2;
}

- (id)contextForKey:(id)key contextUUID:(id *)d error:(id *)error
{
  keyCopy = key;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10000AA94;
  v36 = sub_100002B14;
  v37 = 0;
  if (keyCopy)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_10000AA94;
    v30 = sub_100002B14;
    v31 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_10000AA94;
    v24 = sub_100002B14;
    v25 = 0;
    protectedContextLock = [(FMDProtectedContextManager *)self protectedContextLock];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100190F78;
    v15[3] = &unk_1002D0190;
    v10 = keyCopy;
    v16 = v10;
    v17 = &v20;
    v18 = &v32;
    v19 = &v26;
    [protectedContextLock performWithReadLock:v15];

    if (error)
    {
      *error = v27[5];
    }

    if (v27[5] || !v33[5])
    {
      v11 = sub_100002880();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "There was a file read error while getting the protected context %@.", buf, 0xCu);
      }
    }

    else if (d)
    {
      *d = v21[5];
    }

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);

    v12 = v33[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  _Block_object_dispose(&v32, 8);

  return v13;
}

- (id)saveContext:(id)context forContextKey:(id)key dataProtectionClass:(int64_t)class
{
  contextCopy = context;
  keyCopy = key;
  v10 = keyCopy;
  contextUUID = 0;
  if (contextCopy && keyCopy)
  {
    v12 = [[FMDProtectedContext alloc] initWithContextKey:keyCopy];
    contextUUID = [(FMDProtectedContext *)v12 contextUUID];
    protectedContextLock = [(FMDProtectedContextManager *)self protectedContextLock];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001911DC;
    v16[3] = &unk_1002CE408;
    v17 = v12;
    classCopy = class;
    v18 = contextCopy;
    v19 = v10;
    v14 = v12;
    [protectedContextLock performWithWriteLock:v16];
  }

  return contextUUID;
}

- (BOOL)cleanupContextsForKey:(id)key contextUUID:(id)d obliterate:(BOOL)obliterate
{
  keyCopy = key;
  dCopy = d;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (keyCopy)
  {
    protectedContextLock = [(FMDProtectedContextManager *)self protectedContextLock];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001913E0;
    v13[3] = &unk_1002D01B8;
    v14 = keyCopy;
    selfCopy = self;
    v17 = &v19;
    v15 = dCopy;
    obliterateCopy = obliterate;
    [protectedContextLock performWithWriteLock:v13];

    v11 = *(v20 + 24);
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v11 & 1;
}

- (BOOL)cleanupAllContextsForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  protectedContextLock = [(FMDProtectedContextManager *)self protectedContextLock];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001916A4;
  v8[3] = &unk_1002D01E0;
  v6 = keyCopy;
  selfCopy = self;
  v11 = &v12;
  v9 = v6;
  [protectedContextLock performWithWriteLock:v8];

  LOBYTE(self) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return self;
}

- (void)cleanupEmptyFolders
{
  v3 = +[FMDProtectedContext unittestRootURL];
  if (v3)
  {
  }

  else if (([FMPreferencesUtil BOOLForKey:@"kFMDProtectedContextCleanedUpEmptyFolders" inDomain:kFMDNotBackedUpPrefDomain]& 1) != 0)
  {
    return;
  }

  v4 = [NSString stringWithUTF8String:"com.apple.mobile.keybagd.lock_status"];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001918D0;
  v10[3] = &unk_1002CD288;
  objc_copyWeak(&v12, &location);
  v5 = v4;
  v11 = v5;
  v6 = objc_retainBlock(v10);
  v7 = +[FMXPCNotificationsUtil sharedInstance];
  v8 = [v7 isHandlerRegisteredForDarwinNotification:v5];

  if ((v8 & 1) == 0)
  {
    v9 = +[FMXPCNotificationsUtil sharedInstance];
    [v9 registerHandler:v6 forDarwinNotification:v5];
  }

  (v6[2])(v6);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (BOOL)_startCleaningEmptyFolders
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDProtectedContextManager start cleaning up empty folders", buf, 2u);
  }

  *buf = 0;
  v11 = buf;
  v12 = 0x2020000000;
  v13 = 1;
  _emptyFolderURLs = [(FMDProtectedContextManager *)self _emptyFolderURLs];
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100191BB8;
  v7[3] = &unk_1002D0208;
  v7[4] = buf;
  objc_copyWeak(&v8, &location);
  [_emptyFolderURLs enumerateObjectsUsingBlock:v7];
  v5 = v11[24];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
  return v5;
}

- (id)_emptyFolderURLs
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[FMDProtectedContext rootDirectoryURL];
  v5 = [(FMDProtectedContextManager *)self _enumeratorForDirectoryURL:v4];
  allObjects = [v5 allObjects];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100191D58;
  v11[3] = &unk_1002D0230;
  v11[4] = self;
  v7 = v3;
  v12 = v7;
  [allObjects enumerateObjectsUsingBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

- (id)contextKeysForType:(id)type enumerationOption:(unint64_t)option
{
  typeCopy = type;
  v7 = +[NSMutableArray array];
  v8 = CFPreferencesCopyKeyList(kFMDNotBackedUpPrefDomain, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  if (v8)
  {
    [v7 addObjectsFromArray:v8];
  }

  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = v7;
    v30 = 2048;
    optionCopy2 = option;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FMDProtectedContextManager obtaining list of context keys %@ with Type:%lu", buf, 0x16u);
  }

  v10 = +[FMDProtectedContext rootDirectoryURL];
  v11 = [(FMDProtectedContextManager *)self _directoryNamesWithURL:v10 enumerationOption:option];
  v12 = sub_100002880();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = v11;
    v30 = 2048;
    optionCopy2 = option;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMDProtectedContextManager obtaining list directories on disk %@ with Type:%lu", buf, 0x16u);
  }

  allObjects = [v11 allObjects];
  [v7 addObjectsFromArray:allObjects];

  v14 = +[NSMutableSet set];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_1001920C8;
  v25 = &unk_1002CF2D8;
  v15 = typeCopy;
  v26 = v15;
  v16 = v14;
  v27 = v16;
  [v7 enumerateObjectsUsingBlock:&v22];
  v17 = sub_100002880();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v16 count];
    *buf = 134218242;
    v29 = v18;
    v30 = 2112;
    optionCopy2 = v15;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FMDProtectedContextManager %lu context keys for Type %@", buf, 0x16u);
  }

  v19 = v27;
  v20 = v16;

  return v16;
}

- (id)_directoryNamesWithURL:(id)l enumerationOption:(unint64_t)option
{
  lCopy = l;
  v7 = +[NSMutableSet set];
  if (option != 2)
  {
    v8 = [(FMDProtectedContextManager *)self _enumeratorForDirectoryURL:lCopy];
    allObjects = [v8 allObjects];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100192238;
    v12[3] = &unk_1002D0258;
    optionCopy = option;
    v13 = v7;
    selfCopy = self;
    [allObjects enumerateObjectsUsingBlock:v12];
  }

  v10 = [v7 copy];

  return v10;
}

- (id)_enumeratorForDirectoryURL:(id)l
{
  lCopy = l;
  v4 = +[NSFileManager defaultManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001923EC;
  v8[3] = &unk_1002D0280;
  v9 = lCopy;
  v5 = lCopy;
  v6 = [v4 enumeratorAtURL:v5 includingPropertiesForKeys:0 options:1 errorHandler:v8];

  return v6;
}

- (BOOL)deleteFilesAtURLs:(id)ls
{
  lsCopy = ls;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  +[NSFileManager defaultManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001925C0;
  v4 = v7[3] = &unk_1002D02A8;
  v8 = v4;
  v9 = &v10;
  [lsCopy enumerateObjectsUsingBlock:v7];
  v5 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v5;
}

- (BOOL)cleanOutCurrentContextDirectoryURL:(id)l preservingContextUUID:(id)d obliterateDirectory:(BOOL)directory
{
  directoryCopy = directory;
  lCopy = l;
  dCopy = d;
  if (directoryCopy)
  {
    v24 = lCopy;
    v10 = [NSArray arrayWithObjects:&v24 count:1];
    v11 = [(FMDProtectedContextManager *)self deleteFilesAtURLs:v10];
  }

  else
  {
    v10 = +[NSFileManager defaultManager];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100192908;
    v22[3] = &unk_1002D0280;
    v23 = lCopy;
    v12 = [v10 enumeratorAtURL:v23 includingPropertiesForKeys:0 options:1 errorHandler:v22];
    v13 = v12;
    if (dCopy)
    {
      allObjects = +[NSMutableArray array];
      uUIDString = [dCopy UUIDString];
      nextObject = [v13 nextObject];
      if (nextObject)
      {
        v17 = nextObject;
        do
        {
          lastPathComponent = [v17 lastPathComponent];
          v19 = [lastPathComponent isEqualToString:uUIDString];

          if ((v19 & 1) == 0)
          {
            [allObjects addObject:v17];
          }

          nextObject2 = [v13 nextObject];

          v17 = nextObject2;
        }

        while (nextObject2);
      }

      v11 = [(FMDProtectedContextManager *)self deleteFilesAtURLs:allObjects];
    }

    else
    {
      allObjects = [v12 allObjects];
      v11 = [(FMDProtectedContextManager *)self deleteFilesAtURLs:allObjects];
    }
  }

  return v11;
}

@end