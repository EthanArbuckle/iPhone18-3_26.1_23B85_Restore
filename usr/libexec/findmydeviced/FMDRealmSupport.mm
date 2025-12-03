@interface FMDRealmSupport
+ (id)redirectedHostForHost:(id)host withContext:(id)context;
+ (void)_updateRealmPrefs;
+ (void)clearCachedHostsWithContext:(id)context;
+ (void)initialize;
+ (void)setRedirectedHost:(id)host forHost:(id)forHost withContext:(id)context;
@end

@implementation FMDRealmSupport

+ (void)initialize
{
  if (!qword_100314628)
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = qword_100314628;
    qword_100314628 = v2;

    v4 = objc_alloc_init(NSRecursiveLock);
    v5 = qword_100314630;
    qword_100314630 = v4;

    v6 = [FMPreferencesUtil dictionaryForKey:@"RealmRedirects" inDomain:kFMDPrefDomain];
    allKeys = [v6 allKeys];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(allKeys);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [v6 objectForKeyedSubscript:v12];
          v14 = [v13 mutableCopy];
          [qword_100314628 setObject:v14 forKeyedSubscript:v12];
        }

        v9 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

+ (id)redirectedHostForHost:(id)host withContext:(id)context
{
  hostCopy = host;
  contextCopy = context;
  v7 = contextCopy;
  v8 = @"DefaultContext";
  if (contextCopy)
  {
    v8 = contextCopy;
  }

  v9 = v8;
  [qword_100314630 lock];
  v10 = [qword_100314628 objectForKeyedSubscript:v9];
  v11 = [v10 objectForKeyedSubscript:hostCopy];

  [qword_100314630 unlock];
  if ([v11 isEqualToString:hostCopy])
  {

    v11 = 0;
  }

  return v11;
}

+ (void)setRedirectedHost:(id)host forHost:(id)forHost withContext:(id)context
{
  hostCopy = host;
  forHostCopy = forHost;
  contextCopy = context;
  v10 = contextCopy;
  v11 = @"DefaultContext";
  if (contextCopy)
  {
    v11 = contextCopy;
  }

  v12 = v11;
  if (!forHostCopy)
  {
    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15[0] = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Can't cache realm host - NULL host value", v15, 2u);
    }
  }

  [qword_100314630 lock];
  v14 = [qword_100314628 objectForKeyedSubscript:v12];
  if (!v14)
  {
    v14 = +[NSMutableDictionary dictionary];
    [qword_100314628 setObject:v14 forKeyedSubscript:v12];
  }

  if (hostCopy)
  {
    [v14 setObject:hostCopy forKeyedSubscript:forHostCopy];
  }

  else
  {
    [v14 removeObjectForKey:forHostCopy];
  }

  +[FMDRealmSupport _updateRealmPrefs];

  [qword_100314630 unlock];
}

+ (void)clearCachedHostsWithContext:(id)context
{
  contextCopy = context;
  v4 = contextCopy;
  v5 = @"DefaultContext";
  if (contextCopy)
  {
    v5 = contextCopy;
  }

  v6 = v5;
  [qword_100314630 lock];
  if (qword_100314628)
  {
    v7 = [qword_100314628 objectForKeyedSubscript:v6];

    if (v7)
    {
      [qword_100314628 removeObjectForKey:v6];
      +[FMDRealmSupport _updateRealmPrefs];
    }
  }

  [qword_100314630 unlock];
}

+ (void)_updateRealmPrefs
{
  v2 = +[FMXPCTransactionManager sharedInstance];
  [v2 beginTransaction:@"UpdatingRealmPrefs"];

  [FMPreferencesUtil setDictionary:qword_100314628 forKey:@"RealmRedirects" inDomain:kFMDPrefDomain];
  v3 = +[FMXPCTransactionManager sharedInstance];
  [v3 endTransaction:@"UpdatingRealmPrefs"];
}

@end