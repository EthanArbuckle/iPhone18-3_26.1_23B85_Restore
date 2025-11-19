@interface FMDRealmSupport
+ (id)redirectedHostForHost:(id)a3 withContext:(id)a4;
+ (void)_updateRealmPrefs;
+ (void)clearCachedHostsWithContext:(id)a3;
+ (void)initialize;
+ (void)setRedirectedHost:(id)a3 forHost:(id)a4 withContext:(id)a5;
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
    v7 = [v6 allKeys];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [v6 objectForKeyedSubscript:v12];
          v14 = [v13 mutableCopy];
          [qword_100314628 setObject:v14 forKeyedSubscript:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

+ (id)redirectedHostForHost:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = @"DefaultContext";
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;
  [qword_100314630 lock];
  v10 = [qword_100314628 objectForKeyedSubscript:v9];
  v11 = [v10 objectForKeyedSubscript:v5];

  [qword_100314630 unlock];
  if ([v11 isEqualToString:v5])
  {

    v11 = 0;
  }

  return v11;
}

+ (void)setRedirectedHost:(id)a3 forHost:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  v11 = @"DefaultContext";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;
  if (!v8)
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

  if (v7)
  {
    [v14 setObject:v7 forKeyedSubscript:v8];
  }

  else
  {
    [v14 removeObjectForKey:v8];
  }

  +[FMDRealmSupport _updateRealmPrefs];

  [qword_100314630 unlock];
}

+ (void)clearCachedHostsWithContext:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = @"DefaultContext";
  if (v3)
  {
    v5 = v3;
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