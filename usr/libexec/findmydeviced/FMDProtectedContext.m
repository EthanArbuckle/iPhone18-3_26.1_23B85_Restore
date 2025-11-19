@interface FMDProtectedContext
+ (id)directoryURLForContextKey:(id)a3;
+ (id)rootDirectoryURL;
- (FMDProtectedContext)initWithContextKey:(id)a3 contextUUID:(id)a4;
- (id)context:(id *)a3;
- (id)contextForContextKey:(id)a3 error:(id *)a4;
- (id)fileURLForContextKey:(id)a3;
- (void)saveContext:(id)a3;
- (void)saveForContextKey:(id)a3;
- (void)setProtectionClass:(int64_t)a3;
- (void)setupDataArchiverWithURL:(id)a3;
@end

@implementation FMDProtectedContext

- (FMDProtectedContext)initWithContextKey:(id)a3 contextUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = FMDProtectedContext;
  v8 = [(FMDProtectedContext *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(FMDProtectedContext *)v8 setContextKey:v6];
    if (v7)
    {
      [(FMDProtectedContext *)v9 setContextUUID:v7];
    }

    else
    {
      v10 = +[NSUUID UUID];
      [(FMDProtectedContext *)v9 setContextUUID:v10];
    }

    [(FMDProtectedContext *)v9 setProtectionClass:2];
    v11 = [(FMDProtectedContext *)v9 contextKey];
    v12 = [(FMDProtectedContext *)v9 fileURLForContextKey:v11];

    [(FMDProtectedContext *)v9 setupDataArchiverWithURL:v12];
  }

  return v9;
}

- (void)setProtectionClass:(int64_t)a3
{
  self->_protectionClass = a3;
  v4 = [(FMDProtectedContext *)self _fmDataProtectionClass];
  v5 = [(FMDProtectedContext *)self dataArchiver];
  [v5 setDataProtectionClass:v4];
}

- (void)setupDataArchiverWithURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[FMDataArchiver alloc] initWithFileURL:v4];
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

- (void)saveContext:(id)a3
{
  v4 = a3;
  v5 = [(FMDProtectedContext *)self contextKey];
  v8 = v5;
  v9 = v4;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  [(FMDProtectedContext *)self setContextDictionary:v6];
  v7 = [(FMDProtectedContext *)self contextKey];
  [(FMDProtectedContext *)self saveForContextKey:v7];
}

- (id)context:(id *)a3
{
  v5 = [(FMDProtectedContext *)self contextKey];
  v6 = [(FMDProtectedContext *)self contextForContextKey:v5 error:a3];

  return v6;
}

+ (id)directoryURLForContextKey:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_opt_class() rootDirectoryURL];
    v5 = [v3 lastPathComponent];
    v6 = [v4 URLByAppendingPathComponent:v5 isDirectory:1];
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

    v6 = [v5 URLByDeletingLastPathComponent];
    v2 = [v6 URLByAppendingPathComponent:@"protectedContexts" isDirectory:1];

    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100226E1C();
    }
  }

  return v2;
}

- (id)fileURLForContextKey:(id)a3
{
  v4 = [FMDProtectedContext directoryURLForContextKey:a3];
  v5 = [(FMDProtectedContext *)self contextUUID];

  if (v5)
  {
    v6 = [(FMDProtectedContext *)self contextUUID];
    v7 = [v6 UUIDString];

    v5 = [v4 URLByAppendingPathComponent:v7 isDirectory:0];
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100226E84();
    }
  }

  return v5;
}

- (id)contextForContextKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(FMDProtectedContext *)self contextDictionary];
  v8 = [v7 copy];

  if (!v8)
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100226EEC();
    }

    v10 = [(FMDProtectedContext *)self dataArchiver];
    v11 = [NSSet setWithObject:objc_opt_class()];
    v20 = 0;
    v8 = [v10 readDictionaryAndClasses:v11 error:&v20];
    v12 = v20;

    if (v12)
    {
      v13 = sub_100002880();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v6;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unable to read %@", buf, 0xCu);
      }

      v14 = +[FMDEventLoggerGeneral sharedInstance];
      [v14 sendError:v12 forEventName:@"FMDProtectedContextFailedReadEventName"];

      v21 = NSUnderlyingErrorKey;
      v22 = v12;
      v15 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v16 = [NSError errorWithDomain:@"com.apple.icloud.findmydeviced.protectedcontext" code:1 userInfo:v15];

      if (a4)
      {
        v17 = v16;
        *a4 = v16;
      }
    }

    [(FMDProtectedContext *)self setContextDictionary:v8];
  }

  v18 = [v8 objectForKeyedSubscript:v6];

  return v18;
}

- (void)saveForContextKey:(id)a3
{
  v4 = [(FMDProtectedContext *)self contextDictionary];

  if (v4)
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100226F54(self, v5);
    }

    v6 = [(FMDProtectedContext *)self dataArchiver];
    v7 = [(FMDProtectedContext *)self contextDictionary];
    v8 = [v6 saveDictionary:v7];

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