@interface RealmSupport
+ (id)redirectedHostForHost:(id)a3 withContext:(id)a4;
+ (id)serverContextHeaderString;
+ (void)_printCache;
+ (void)_updateRealmPrefs;
+ (void)clearCachedHostsWithContext:(id)a3;
+ (void)initialize;
+ (void)setRedirectedHost:(id)a3 forHost:(id)a4 withContext:(id)a5;
+ (void)setServerContextHeaderString:(id)a3;
@end

@implementation RealmSupport

+ (void)initialize
{
  if (!qword_100070108)
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = qword_100070108;
    qword_100070108 = v2;

    v4 = objc_alloc_init(NSRecursiveLock);
    v5 = qword_100070110;
    qword_100070110 = v4;

    v6 = [FMPreferencesUtil dictionaryForKey:@"RealmRedirects" inDomain:@"com.apple.icloud.fmflocatord"];
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
          [qword_100070108 setObject:v14 forKeyedSubscript:v12];
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
  [qword_100070110 lock];
  v10 = [qword_100070108 objectForKeyedSubscript:v9];
  v11 = [v10 objectForKeyedSubscript:v5];

  [qword_100070110 unlock];
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
    v13 = sub_100002830();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15[0] = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Can't cache realm host - NULL host value", v15, 2u);
    }
  }

  [qword_100070110 lock];
  v14 = [qword_100070108 objectForKeyedSubscript:v12];
  if (!v14)
  {
    v14 = +[NSMutableDictionary dictionary];
    [qword_100070108 setObject:v14 forKeyedSubscript:v12];
  }

  if (v7)
  {
    [v14 setObject:v7 forKeyedSubscript:v8];
  }

  else
  {
    [v14 removeObjectForKey:v8];
  }

  +[RealmSupport _updateRealmPrefs];

  [qword_100070110 unlock];
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
  [qword_100070110 lock];
  if (qword_100070108)
  {
    v7 = [qword_100070108 objectForKeyedSubscript:v6];

    if (v7)
    {
      [qword_100070108 removeObjectForKey:v6];
      +[RealmSupport _updateRealmPrefs];
    }
  }

  [qword_100070110 unlock];
}

+ (void)setServerContextHeaderString:(id)a3
{
  objc_storeStrong(&qword_100070118, a3);
  v4 = a3;
  [FMPreferencesUtil setString:v4 forKey:@"ServerContext" inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
}

+ (id)serverContextHeaderString
{
  v2 = qword_100070118;
  if (!qword_100070118)
  {
    v3 = [FMPreferencesUtil stringForKey:@"ServerContext" inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
    v4 = qword_100070118;
    qword_100070118 = v3;

    v2 = qword_100070118;
  }

  return v2;
}

+ (void)_updateRealmPrefs
{
  v2 = +[FMXPCTransactionManager sharedInstance];
  [v2 beginTransaction:@"UpdatingRealmPrefs"];

  [FMPreferencesUtil setDictionary:qword_100070108 forKey:@"RealmRedirects" inDomain:@"com.apple.icloud.fmflocatord"];
  v3 = +[FMXPCTransactionManager sharedInstance];
  [v3 endTransaction:@"UpdatingRealmPrefs"];
}

+ (void)_printCache
{
  v2 = sub_100002830();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = qword_100070108;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_oldHostsToNewHosts:\n%@\n\n\n", &v3, 0xCu);
  }
}

@end