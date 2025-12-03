@interface LivefsSettings
+ (id)deserializedError:(id)error;
+ (id)serializedError:(id)error;
- (BOOL)load:(id *)load;
- (BOOL)save:(id *)save;
- (LivefsSettings)init;
- (NSArray)mounts;
- (id)removeMountNamed:(id)named provider:(id)provider;
- (id)updateMountEntry:(id)entry provider:(id)provider settingsDictionary:(id *)dictionary updateBlock:(id)block;
- (void)cleanupConfigFromLastBoot;
- (void)doneWork;
- (void)initFresh;
- (void)removeReferencesToTask:(id)task;
- (void)startedWork;
- (void)updateWorkTransaction;
@end

@implementation LivefsSettings

- (void)initFresh
{
  v3 = objc_opt_new();
  mounts = self->_mounts;
  self->_mounts = v3;

  self->_needsLoad = 1;
}

- (LivefsSettings)init
{
  v16.receiver = self;
  v16.super_class = LivefsSettings;
  v2 = [(LivefsSettings *)&v16 init];
  v3 = v2;
  if (v2)
  {
    [(LivefsSettings *)v2 initFresh];
    v4 = getBootUUID();
    bootUUID = v3->_bootUUID;
    v3->_bootUUID = v4;

    v6 = objc_opt_new();
    tasks = v3->_tasks;
    v3->_tasks = v6;

    v8 = objc_opt_new();
    taskUpdateClients = v3->_taskUpdateClients;
    v3->_taskUpdateClients = v8;

    v10 = objc_opt_new();
    resourceManager = v3->_resourceManager;
    v3->_resourceManager = v10;

    v12 = livefs_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v3->_bootUUID;
      *buf = 138412290;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Got boot UUID %@", buf, 0xCu);
    }

    workTransaction = v3->_workTransaction;
    v3->_workTransaction = 0;
  }

  return v3;
}

- (NSArray)mounts
{
  if (self->_needsLoad)
  {
    v5 = 0;
    [(LivefsSettings *)self load:&v5];
  }

  v3 = [(NSMutableArray *)self->_mounts copy];

  return v3;
}

- (void)updateWorkTransaction
{
  obj = self;
  objc_sync_enter(obj);
  if ([(NSMutableDictionary *)obj->_tasks count]|| [(NSMutableSet *)obj->_taskUpdateClients count])
  {
    [(LivefsSettings *)obj startedWork];
  }

  else
  {
    [(LivefsSettings *)obj doneWork];
  }

  objc_sync_exit(obj);
}

- (void)startedWork
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_workTransaction)
  {
    v3 = livefs_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[LivefsSettings startedWork]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: setting up work transaction", &v6, 0xCu);
    }

    v4 = os_transaction_create();
    workTransaction = selfCopy->_workTransaction;
    selfCopy->_workTransaction = v4;
  }

  objc_sync_exit(selfCopy);
}

- (void)doneWork
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = livefs_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[LivefsSettings doneWork]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: invalidate work transaction", &v5, 0xCu);
  }

  workTransaction = selfCopy->_workTransaction;
  selfCopy->_workTransaction = 0;

  objc_sync_exit(selfCopy);
}

- (void)cleanupConfigFromLastBoot
{
  v3 = +[NSMutableArray array];
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100029B18(v4);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v5 = self->_mounts;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:LiveFSMounterVolumeProviderNameKey];
        v12 = [v11 isEqualToString:@"com.apple.SMBClientProvider.FileProvider"];

        if ((v12 & 1) == 0)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)selfCopy->_mounts removeObjectsInArray:v3];
  [(LivefsSettings *)selfCopy save:0];
}

- (BOOL)load:(id *)load
{
  v5 = os_transaction_create();
  v26 = 0;
  v6 = [LiveFSClient supportDirURL:14 forURL:0 daemonPrefName:@"livefsd" error:&v26];
  v7 = v26;
  if (v7)
  {
    v8 = v7;
    if (load)
    {
      v9 = v7;
      *load = v8;
    }

    v10 = 0;
  }

  else
  {
    v11 = [v6 URLByAppendingPathComponent:@"settings.plist"];

    v12 = +[NSFileManager defaultManager];
    path = [v11 path];
    v14 = [v12 fileExistsAtPath:path];

    if (v14)
    {
      v25 = 0;
      v15 = [NSDictionary dictionaryWithContentsOfURL:v11 error:&v25];
      v16 = v25;
      v8 = v16;
      if (v16 || !v15)
      {
        if (load)
        {
          v22 = v16;
          *load = v8;
        }

        v10 = 0;
      }

      else
      {
        v17 = [v15 objectForKeyedSubscript:@"mounts"];
        DeepCopy = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v17, 1uLL);
        mounts = self->_mounts;
        self->_mounts = DeepCopy;

        v20 = [v15 objectForKey:@"bootUUID"];
        bootUUID = self->_bootUUID;
        if (bootUUID)
        {
          if (!v20 || ![(NSString *)bootUUID isEqualToString:v20])
          {
            [(LivefsSettings *)self cleanupConfigFromLastBoot];
          }
        }

        else
        {
          v23 = livefs_std_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_100029B5C(v23);
          }
        }

        if (self->_needsLoad)
        {
          self->_needsLoad = 0;
        }

        [(LivefsSettings *)self updateWorkTransaction];

        v10 = 1;
        v8 = v15;
      }
    }

    else
    {
      if (!self->_needsLoad)
      {
        [(LivefsSettings *)self initFresh];
      }

      self->_needsLoad = 0;
      v10 = 1;
      v8 = v5;
    }

    v6 = v11;
  }

  return v10;
}

- (BOOL)save:(id *)save
{
  v5 = os_transaction_create();
  v22 = 0;
  v6 = [LiveFSClient supportDirURL:14 forURL:0 daemonPrefName:@"livefsd" error:&v22];
  v7 = v22;
  if (v7)
  {
    v8 = v7;
    if (save)
    {
      v9 = v7;
      v10 = 0;
      *save = v8;
    }

    else
    {
      v10 = 0;
    }

    v11 = v6;
  }

  else
  {
    v11 = [v6 URLByAppendingPathComponent:@"settings.plist"];

    if ([(NSMutableArray *)self->_mounts count])
    {
      bootUUID = self->_bootUUID;
      if (!bootUUID)
      {
        bootUUID = &stru_100062B08;
      }

      v13 = bootUUID;
      mounts = self->_mounts;
      v23[0] = @"mounts";
      v23[1] = @"bootUUID";
      v24[0] = mounts;
      v24[1] = v13;
      v15 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
      v20 = 0;
      [v15 writeToURL:v11 error:&v20];
      v16 = v20;
      v8 = v16;
      if (save && v16)
      {
        v17 = v16;
        *save = v8;
      }

      v10 = v8 == 0;
      v5 = v15;
    }

    else
    {
      [(LivefsSettings *)self updateWorkTransaction];
      v19 = +[NSFileManager defaultManager];
      v21 = 0;
      [v19 removeItemAtURL:v11 error:&v21];
      v8 = v21;

      if (v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error deleting preference file: %@", buf, 0xCu);
      }

      v10 = 1;
    }
  }

  return v10;
}

+ (id)serializedError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    userInfo = [errorCopy userInfo];

    if (userInfo)
    {
      v13[0] = @"errorDomain";
      domain = [v4 domain];
      v14[0] = domain;
      v13[1] = @"errorCode";
      v7 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v4 code]);
      v14[1] = v7;
      v13[2] = @"errorInfo";
      userInfo2 = [v4 userInfo];
      v14[2] = userInfo2;
      v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
    }

    else
    {
      v11[0] = @"errorDomain";
      domain = [v4 domain];
      v11[1] = @"errorCode";
      v12[0] = domain;
      v7 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v4 code]);
      v12[1] = v7;
      v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)deserializedError:(id)error
{
  errorCopy = error;
  v4 = [errorCopy objectForKeyedSubscript:@"errorCode"];
  v5 = [errorCopy objectForKeyedSubscript:@"errorInfo"];
  v6 = [errorCopy objectForKeyedSubscript:@"errorDomain"];

  v7 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v6, [v4 longValue], v5);

  return v7;
}

- (id)updateMountEntry:(id)entry provider:(id)provider settingsDictionary:(id *)dictionary updateBlock:(id)block
{
  entryCopy = entry;
  providerCopy = provider;
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = -1;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100029620;
  v35 = sub_100029630;
  v36 = 0;
  mounts = selfCopy->_mounts;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100029638;
  v26[3] = &unk_100061A10;
  v15 = providerCopy;
  v27 = v15;
  v16 = entryCopy;
  v28 = v16;
  v29 = &v37;
  v30 = &v31;
  [(NSMutableArray *)mounts enumerateObjectsUsingBlock:v26];
  if (v38[3] == -1)
  {
    v21 = [NSError errorWithDomain:NSCocoaErrorDomain code:0x7FFFFFFFFFFFFFFFLL userInfo:0];
    v23 = v21;
  }

  else
  {
    v17 = [NSMutableDictionary dictionaryWithDictionary:v32[5]];
    blockCopy[2](blockCopy, v17);
    [(NSMutableArray *)selfCopy->_mounts replaceObjectAtIndex:v38[3] withObject:v17];
    v18 = v17;
    *dictionary = v17;
    v25 = 0;
    v19 = [(LivefsSettings *)selfCopy save:&v25];
    v20 = v25;
    v21 = v20;
    if (v19)
    {
      v22 = 0;
    }

    else
    {
      v22 = v20;
    }

    v23 = v22;
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  objc_sync_exit(selfCopy);

  return v23;
}

- (id)removeMountNamed:(id)named provider:(id)provider
{
  namedCopy = named;
  providerCopy = provider;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -1;
  mounts = selfCopy->_mounts;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000298D8;
  v18[3] = &unk_100061A38;
  v10 = providerCopy;
  v19 = v10;
  v11 = namedCopy;
  v20 = v11;
  v21 = &v22;
  [(NSMutableArray *)mounts enumerateObjectsUsingBlock:v18];
  if (v23[3] == -1)
  {
    v13 = [NSError errorWithDomain:NSCocoaErrorDomain code:0x7FFFFFFFFFFFFFFFLL userInfo:0];
    v14 = v13;
  }

  else
  {
    [(NSMutableArray *)selfCopy->_mounts removeObjectAtIndex:?];
    v17 = 0;
    v12 = [(LivefsSettings *)selfCopy save:&v17];
    v13 = v17;
    v14 = v13;
    if (v12)
    {
      v13 = 0;
    }
  }

  v15 = v13;

  _Block_object_dispose(&v22, 8);
  objc_sync_exit(selfCopy);

  return v15;
}

- (void)removeReferencesToTask:(id)task
{
  taskCopy = task;
  v4 = self->_tasks;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)self->_tasks removeObjectForKey:taskCopy];
  objc_sync_exit(v4);

  v5 = self->_resourceManager;
  objc_sync_enter(v5);
  [(FSResourceManager *)self->_resourceManager removeTaskUUID:taskCopy];
  objc_sync_exit(v5);

  [(LivefsSettings *)self updateWorkTransaction];
}

@end