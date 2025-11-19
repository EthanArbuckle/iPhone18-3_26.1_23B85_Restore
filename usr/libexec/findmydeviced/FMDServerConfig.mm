@interface FMDServerConfig
+ (id)sharedInstance;
- (FMDServerConfig)init;
- (id)urlTemplateForRequestType:(id)a3;
@end

@implementation FMDServerConfig

+ (id)sharedInstance
{
  if (qword_1003149C8 != -1)
  {
    sub_10022D9DC();
  }

  v3 = qword_1003149C0;

  return v3;
}

- (FMDServerConfig)init
{
  v26.receiver = self;
  v26.super_class = FMDServerConfig;
  v2 = [(FMDServerConfig *)&v26 init];
  if (v2)
  {
    v3 = +[FMDSystemConfig sharedInstance];
    v4 = [v3 productType];

    v5 = +[FMDSystemConfig sharedInstance];
    v6 = [v5 productName];

    v7 = +[FMDSystemConfig sharedInstance];
    v8 = [v7 productVersion];

    v9 = +[FMDSystemConfig sharedInstance];
    v10 = [v9 buildVersion];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 bundleIdentifier];

    v13 = [NSString stringWithFormat:@"%@/1", v12];
    v25 = v6;
    v14 = [NSString stringWithFormat:@"<%@> <%@%@;%@> <%@/1 (%@)>", v4, v6, v8, v10, v12, v13];;
    [(FMDServerConfig *)v2 setMmeClientInfo:v14];

    v15 = [NSString stringWithFormat:@"FMDClient/%@ %@/%@", @"6.0", v4, v10];
    [(FMDServerConfig *)v2 setUserAgent:v15];

    v16 = sub_100002880();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(FMDServerConfig *)v2 mmeClientInfo];
      *buf = 138412290;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "mmeClientInfo = %@", buf, 0xCu);
    }

    v18 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
    v19 = [v18 pathForResource:@"URLTemplates" ofType:@"plist"];
    v20 = [NSDictionary dictionaryWithContentsOfFile:v19];
    [(FMDServerConfig *)v2 setUrlTemplates:v20];

    v21 = [(FMDServerConfig *)v2 urlTemplates];
    v22 = [v21 count];

    if (!v22)
    {
      v23 = sub_100002880();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v19;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No URL templates found at path: %@", buf, 0xCu);
      }
    }
  }

  return v2;
}

- (id)urlTemplateForRequestType:(id)a3
{
  v4 = a3;
  v5 = [(FMDServerConfig *)self urlTemplates];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Could not find url template for request type: %@", &v9, 0xCu);
    }
  }

  return v6;
}

@end