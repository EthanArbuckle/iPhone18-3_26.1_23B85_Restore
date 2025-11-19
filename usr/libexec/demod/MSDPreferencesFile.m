@interface MSDPreferencesFile
+ (BOOL)preferencesFileExists;
+ (id)preferencesFilePath;
+ (id)preferencesFileUrl;
+ (id)sharedInstance;
- (BOOL)removeObjectForKey:(id)a3;
- (BOOL)removeObjectsForKeys:(id)a3;
- (BOOL)saveCache;
- (BOOL)setObject:(id)a3 forKey:(id)a4;
- (MSDPreferencesFile)init;
- (id)deepCopy:(id)a3;
- (id)objectForKey:(id)a3;
- (void)populateCache;
- (void)raiseInvalidPropertyListObjectExceptionForObject:(id)a3;
- (void)reload;
@end

@implementation MSDPreferencesFile

+ (id)sharedInstance
{
  if (qword_1001A5620 != -1)
  {
    sub_1000CBF2C();
  }

  v3 = qword_1001A5618;

  return v3;
}

- (MSDPreferencesFile)init
{
  v5.receiver = self;
  v5.super_class = MSDPreferencesFile;
  v2 = [(MSDPreferencesFile *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSDPreferencesFile *)v2 populateCache];
  }

  return v3;
}

+ (id)preferencesFilePath
{
  v2 = +[MSDPreferencesFile preferencesFileUrl];
  v3 = [v2 path];

  return v3;
}

+ (BOOL)preferencesFileExists
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[MSDPreferencesFile preferencesFilePath];
  v4 = [v2 fileExistsAtPath:v3];

  return v4;
}

- (void)reload
{
  obj = self;
  objc_sync_enter(obj);
  [(MSDPreferencesFile *)obj populateCache];
  objc_sync_exit(obj);
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(MSDPreferencesFile *)v5 cache];
    v7 = [v6 objectForKey:v4];

    objc_sync_exit(v5);
  }

  else
  {
    sub_1000CBF40();
    v7 = 0;
  }

  return v7;
}

- (BOOL)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || !v7)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136446210;
      v17 = "[MSDPreferencesFile setObject:forKey:]";
      v14 = "%{public}s - Both object and key must be non-nil.";
LABEL_13:
      _os_log_impl(&_mh_execute_header, &v10->super, OS_LOG_TYPE_DEFAULT, v14, &v16, 0xCu);
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136446210;
      v17 = "[MSDPreferencesFile setObject:forKey:]";
      v14 = "%{public}s - Key must be of type NSString.";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (![NSPropertyListSerialization propertyList:v6 isValidForFormat:100])
  {
    [(MSDPreferencesFile *)self raiseInvalidPropertyListObjectExceptionForObject:v6];
  }

  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CBFE0(v8, v6, v9);
  }

  v10 = self;
  objc_sync_enter(v10);
  v11 = [(MSDPreferencesFile *)v10 cache];
  v12 = [(MSDPreferencesFile *)v10 deepCopy:v6];
  [v11 setObject:v12 forKey:v8];

  v13 = [(MSDPreferencesFile *)v10 saveCache];
  objc_sync_exit(v10);
LABEL_15:

  return v13;
}

- (BOOL)removeObjectForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(MSDPreferencesFile *)v5 cache];
    [v6 removeObjectForKey:v4];

    v7 = [(MSDPreferencesFile *)v5 saveCache];
    objc_sync_exit(v5);
  }

  else
  {
    sub_1000CC068();
    v7 = 0;
  }

  return v7;
}

- (BOOL)removeObjectsForKeys:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(MSDPreferencesFile *)v5 cache];
    [v6 removeObjectsForKeys:v4];

    v7 = [(MSDPreferencesFile *)v5 saveCache];
    objc_sync_exit(v5);
  }

  else
  {
    sub_1000CC108();
    v7 = 0;
  }

  return v7;
}

- (void)populateCache
{
  if (!+[MSDPreferencesFile preferencesFileExists])
  {
LABEL_7:
    v4 = objc_alloc_init(NSMutableDictionary);
    [(MSDPreferencesFile *)self setCache:v4];
    goto LABEL_8;
  }

  v3 = +[MSDPreferencesFile preferencesFileUrl];
  v9 = 0;
  v4 = [NSDictionary dictionaryWithContentsOfURL:v3 error:&v9];
  v5 = v9;

  if (!v4)
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = +[MSDPreferencesFile preferencesFilePath];
      *buf = 136446722;
      v11 = "[MSDPreferencesFile populateCache]";
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s - Failed to read preferences file:  %{public}@ - Error:  %{public}@", buf, 0x20u);
    }

    goto LABEL_7;
  }

  v6 = [NSMutableDictionary dictionaryWithDictionary:v4];
  [(MSDPreferencesFile *)self setCache:v6];

LABEL_8:
}

- (BOOL)saveCache
{
  v2 = [(MSDPreferencesFile *)self cache];
  v3 = +[MSDPreferencesFile preferencesFileUrl];
  v9 = 0;
  v4 = [v2 writeToURL:v3 error:&v9];
  v5 = v9;

  if ((v4 & 1) == 0)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = +[MSDPreferencesFile preferencesFilePath];
      *buf = 136446722;
      v11 = "[MSDPreferencesFile saveCache]";
      v12 = 2114;
      v13 = v7;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s - Failed to save preferences file:  %{public}@ - Error:  %{public}@", buf, 0x20u);
    }
  }

  return v4;
}

- (void)raiseInvalidPropertyListObjectExceptionForObject:(id)a3
{
  v3 = a3;
  v4 = [NSString stringWithFormat:@"Object %@ of type %@ is not a valid property list object.", v3, objc_opt_class()];

  v5 = [NSException exceptionWithName:@"InvalidPropertyListObject" reason:v4 userInfo:0];
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v8 = "[MSDPreferencesFile raiseInvalidPropertyListObjectExceptionForObject:]";
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s - Exception:  %{public}@", buf, 0x16u);
  }

  [v5 raise];
}

+ (id)preferencesFileUrl
{
  if (qword_1001A5630 != -1)
  {
    sub_1000CC1A8();
  }

  v3 = qword_1001A5628;

  return v3;
}

- (id)deepCopy:(id)a3
{
  DeepCopy = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, a3, 0);

  return DeepCopy;
}

@end