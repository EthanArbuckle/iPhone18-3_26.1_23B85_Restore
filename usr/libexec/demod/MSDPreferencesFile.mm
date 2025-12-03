@interface MSDPreferencesFile
+ (BOOL)preferencesFileExists;
+ (id)preferencesFilePath;
+ (id)preferencesFileUrl;
+ (id)sharedInstance;
- (BOOL)removeObjectForKey:(id)key;
- (BOOL)removeObjectsForKeys:(id)keys;
- (BOOL)saveCache;
- (BOOL)setObject:(id)object forKey:(id)key;
- (MSDPreferencesFile)init;
- (id)deepCopy:(id)copy;
- (id)objectForKey:(id)key;
- (void)populateCache;
- (void)raiseInvalidPropertyListObjectExceptionForObject:(id)object;
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
  path = [v2 path];

  return path;
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

- (id)objectForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    cache = [(MSDPreferencesFile *)selfCopy cache];
    v7 = [cache objectForKey:keyCopy];

    objc_sync_exit(selfCopy);
  }

  else
  {
    sub_1000CBF40();
    v7 = 0;
  }

  return v7;
}

- (BOOL)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v8 = keyCopy;
  if (!objectCopy || !keyCopy)
  {
    selfCopy = sub_100063A54();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136446210;
      v17 = "[MSDPreferencesFile setObject:forKey:]";
      v14 = "%{public}s - Both object and key must be non-nil.";
LABEL_13:
      _os_log_impl(&_mh_execute_header, &selfCopy->super, OS_LOG_TYPE_DEFAULT, v14, &v16, 0xCu);
    }

LABEL_14:
    saveCache = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    selfCopy = sub_100063A54();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136446210;
      v17 = "[MSDPreferencesFile setObject:forKey:]";
      v14 = "%{public}s - Key must be of type NSString.";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (![NSPropertyListSerialization propertyList:objectCopy isValidForFormat:100])
  {
    [(MSDPreferencesFile *)self raiseInvalidPropertyListObjectExceptionForObject:objectCopy];
  }

  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CBFE0(v8, objectCopy, v9);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  cache = [(MSDPreferencesFile *)selfCopy cache];
  v12 = [(MSDPreferencesFile *)selfCopy deepCopy:objectCopy];
  [cache setObject:v12 forKey:v8];

  saveCache = [(MSDPreferencesFile *)selfCopy saveCache];
  objc_sync_exit(selfCopy);
LABEL_15:

  return saveCache;
}

- (BOOL)removeObjectForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    cache = [(MSDPreferencesFile *)selfCopy cache];
    [cache removeObjectForKey:keyCopy];

    saveCache = [(MSDPreferencesFile *)selfCopy saveCache];
    objc_sync_exit(selfCopy);
  }

  else
  {
    sub_1000CC068();
    saveCache = 0;
  }

  return saveCache;
}

- (BOOL)removeObjectsForKeys:(id)keys
{
  keysCopy = keys;
  if (keysCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    cache = [(MSDPreferencesFile *)selfCopy cache];
    [cache removeObjectsForKeys:keysCopy];

    saveCache = [(MSDPreferencesFile *)selfCopy saveCache];
    objc_sync_exit(selfCopy);
  }

  else
  {
    sub_1000CC108();
    saveCache = 0;
  }

  return saveCache;
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
  cache = [(MSDPreferencesFile *)self cache];
  v3 = +[MSDPreferencesFile preferencesFileUrl];
  v9 = 0;
  v4 = [cache writeToURL:v3 error:&v9];
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

- (void)raiseInvalidPropertyListObjectExceptionForObject:(id)object
{
  objectCopy = object;
  v4 = [NSString stringWithFormat:@"Object %@ of type %@ is not a valid property list object.", objectCopy, objc_opt_class()];

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

- (id)deepCopy:(id)copy
{
  DeepCopy = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, copy, 0);

  return DeepCopy;
}

@end