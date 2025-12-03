@interface FMDProtectedContext
+ (id)directoryURLForContextKey:(id)key;
+ (id)rootDirectoryURL;
- (FMDProtectedContext)initWithContextKey:(id)key contextUUID:(id)d;
- (id)context:(id *)context;
- (id)contextForContextKey:(id)key error:(id *)error;
- (id)fileURLForContextKey:(id)key;
- (void)saveContext:(id)context;
- (void)saveForContextKey:(id)key;
- (void)setProtectionClass:(int64_t)class;
- (void)setupDataArchiverWithURL:(id)l;
@end

@implementation FMDProtectedContext

- (FMDProtectedContext)initWithContextKey:(id)key contextUUID:(id)d
{
  keyCopy = key;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = FMDProtectedContext;
  v8 = [(FMDProtectedContext *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(FMDProtectedContext *)v8 setContextKey:keyCopy];
    if (dCopy)
    {
      [(FMDProtectedContext *)v9 setContextUUID:dCopy];
    }

    else
    {
      v10 = +[NSUUID UUID];
      [(FMDProtectedContext *)v9 setContextUUID:v10];
    }

    [(FMDProtectedContext *)v9 setProtectionClass:2];
    contextKey = [(FMDProtectedContext *)v9 contextKey];
    v12 = [(FMDProtectedContext *)v9 fileURLForContextKey:contextKey];

    [(FMDProtectedContext *)v9 setupDataArchiverWithURL:v12];
  }

  return v9;
}

- (void)setProtectionClass:(int64_t)class
{
  self->_protectionClass = class;
  _fmDataProtectionClass = [(FMDProtectedContext *)self _fmDataProtectionClass];
  dataArchiver = [(FMDProtectedContext *)self dataArchiver];
  [dataArchiver setDataProtectionClass:_fmDataProtectionClass];
}

- (void)setupDataArchiverWithURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = [[FMDataArchiver alloc] initWithFileURL:lCopy];
    [v5 setBackedUp:0];
    [v5 setCreateDirectories:1];
    [v5 setDataProtectionClass:[(FMDProtectedContext *)self _fmDataProtectionClass]];
    [(FMDProtectedContext *)self setDataArchiver:v5];
  }

  else
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100226D88(self, v5);
    }
  }
}

- (void)saveContext:(id)context
{
  contextCopy = context;
  contextKey = [(FMDProtectedContext *)self contextKey];
  v8 = contextKey;
  v9 = contextCopy;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  [(FMDProtectedContext *)self setContextDictionary:v6];
  contextKey2 = [(FMDProtectedContext *)self contextKey];
  [(FMDProtectedContext *)self saveForContextKey:contextKey2];
}

- (id)context:(id *)context
{
  contextKey = [(FMDProtectedContext *)self contextKey];
  v6 = [(FMDProtectedContext *)self contextForContextKey:contextKey error:context];

  return v6;
}

+ (id)directoryURLForContextKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    rootDirectoryURL = [objc_opt_class() rootDirectoryURL];
    lastPathComponent = [keyCopy lastPathComponent];
    v6 = [rootDirectoryURL URLByAppendingPathComponent:lastPathComponent isDirectory:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_100002880();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "New protected context directory URL %@", &v9, 0xCu);
  }

  return v6;
}

+ (id)rootDirectoryURL
{
  if (+[FMDProtectedContext isUnittest])
  {
    v2 = +[FMDProtectedContext unittestRootURL];
  }

  else
  {
    v3 = objc_alloc_init(FMInternalFileContainer);
    v4 = [v3 url];
    v5 = [v4 fm_preferencesPathURLForDomain:@"com.apple.icloud.findmydeviced.protectedcontext"];

    uRLByDeletingLastPathComponent = [v5 URLByDeletingLastPathComponent];
    v2 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"protectedContexts" isDirectory:1];

    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100226E1C();
    }
  }

  return v2;
}

- (id)fileURLForContextKey:(id)key
{
  v4 = [FMDProtectedContext directoryURLForContextKey:key];
  contextUUID = [(FMDProtectedContext *)self contextUUID];

  if (contextUUID)
  {
    contextUUID2 = [(FMDProtectedContext *)self contextUUID];
    uUIDString = [contextUUID2 UUIDString];

    contextUUID = [v4 URLByAppendingPathComponent:uUIDString isDirectory:0];
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100226E84();
    }
  }

  return contextUUID;
}

- (id)contextForContextKey:(id)key error:(id *)error
{
  keyCopy = key;
  contextDictionary = [(FMDProtectedContext *)self contextDictionary];
  v8 = [contextDictionary copy];

  if (!v8)
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100226EEC();
    }

    dataArchiver = [(FMDProtectedContext *)self dataArchiver];
    v11 = [NSSet setWithObject:objc_opt_class()];
    v20 = 0;
    v8 = [dataArchiver readDictionaryAndClasses:v11 error:&v20];
    v12 = v20;

    if (v12)
    {
      v13 = sub_100002880();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = keyCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unable to read %@", buf, 0xCu);
      }

      v14 = +[FMDEventLoggerGeneral sharedInstance];
      [v14 sendError:v12 forEventName:@"FMDProtectedContextFailedReadEventName"];

      v21 = NSUnderlyingErrorKey;
      v22 = v12;
      v15 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v16 = [NSError errorWithDomain:@"com.apple.icloud.findmydeviced.protectedcontext" code:1 userInfo:v15];

      if (error)
      {
        v17 = v16;
        *error = v16;
      }
    }

    [(FMDProtectedContext *)self setContextDictionary:v8];
  }

  v18 = [v8 objectForKeyedSubscript:keyCopy];

  return v18;
}

- (void)saveForContextKey:(id)key
{
  contextDictionary = [(FMDProtectedContext *)self contextDictionary];

  if (contextDictionary)
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100226F54(self, v5);
    }

    dataArchiver = [(FMDProtectedContext *)self dataArchiver];
    contextDictionary2 = [(FMDProtectedContext *)self contextDictionary];
    v8 = [dataArchiver saveDictionary:contextDictionary2];

    if (v8)
    {
      v9 = sub_100002880();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100226FE8(v8, v9);
      }
    }
  }
}

@end