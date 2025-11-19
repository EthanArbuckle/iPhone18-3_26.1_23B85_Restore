@interface FMFLocatorMigrator
- (BOOL)performMigration;
- (id)_currentVersionIdentifiersDict;
- (id)_oldVersionIdentifiersDict;
- (void)_saveVersionIdentifiersDict:(id)a3;
- (void)migrateFromVersion:(id)a3 toVersion:(id)a4;
@end

@implementation FMFLocatorMigrator

- (BOOL)performMigration
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMFLocatorMigrator is migrating", v9, 2u);
  }

  v4 = [(FMFLocatorMigrator *)self _oldVersionIdentifiersDict];
  v5 = [(FMFLocatorMigrator *)self _currentVersionIdentifiersDict];
  [(FMFLocatorMigrator *)self _saveVersionIdentifiersDict:v5];
  v6 = [v4 objectForKeyedSubscript:@"buildVersion"];
  v7 = [v5 objectForKeyedSubscript:@"buildVersion"];
  [(FMFLocatorMigrator *)self migrateFromVersion:v6 toVersion:v7];

  return 1;
}

- (void)migrateFromVersion:(id)a3 toVersion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 compare:v6];
  if (v7 == 1)
  {
    v8 = sub_100002830();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v9 = "Back-migration from %@ to %@";
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (v7 == -1)
  {
    v8 = sub_100002830();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v9 = "Migrating from %@ to %@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &v10, 0x16u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (id)_oldVersionIdentifiersDict
{
  v2 = +[NSMutableDictionary dictionary];
  [v2 setObject:&stru_10005FAB8 forKeyedSubscript:@"buildVersion"];
  [v2 setObject:&stru_10005FAB8 forKeyedSubscript:@"productVersion"];
  [v2 setObject:&stru_10005FAB8 forKeyedSubscript:@"fmflocatorVersion"];
  v3 = [FMPreferencesUtil stringForKey:@"LastLaunchVersion" inDomain:@"com.apple.icloud.fmflocatord"];
  v4 = [v3 componentsSeparatedByString:{@", "}];
  if ([v4 count] >= 3)
  {
    v5 = [v4 objectAtIndex:0];
    [v2 setObject:v5 forKeyedSubscript:@"buildVersion"];

    v6 = [v4 objectAtIndex:1];
    [v2 setObject:v6 forKeyedSubscript:@"productVersion"];

    v7 = [v4 objectAtIndex:2];
    [v2 setObject:v7 forKeyedSubscript:@"fmflocatorVersion"];
  }

  return v2;
}

- (id)_currentVersionIdentifiersDict
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = MGCopyAnswerWithError();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_10005FAB8;
  }

  [v2 setObject:v5 forKeyedSubscript:@"buildVersion"];
  v6 = MGCopyAnswerWithError();
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_10005FAB8;
  }

  [v2 setObject:v8 forKeyedSubscript:@"productVersion"];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 infoDictionary];
  v11 = [v10 objectForKeyedSubscript:kCFBundleVersionKey];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &stru_10005FAB8;
  }

  [v2 setObject:v12 forKeyedSubscript:@"fmflocatorVersion"];

  return v2;
}

- (void)_saveVersionIdentifiersDict:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"buildVersion"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_10005FAB8;
  }

  v7 = [v3 objectForKeyedSubscript:@"productVersion"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_10005FAB8;
  }

  v10 = [v3 objectForKeyedSubscript:@"fmflocatorVersion"];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &stru_10005FAB8;
  }

  v12 = [NSString stringWithFormat:@"%@, %@, %@", v6, v9, v11];

  [FMPreferencesUtil setString:v12 forKey:@"LastLaunchVersion" inDomain:@"com.apple.icloud.fmflocatord"];
}

@end