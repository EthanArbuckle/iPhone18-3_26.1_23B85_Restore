@interface CRTest_8262
- (CRTest_8262)init;
- (void)run:(id)a3 withContext:(id)a4;
- (void)update:(id)a3 testIndex:(int64_t)a4 testResult:(id)a5;
@end

@implementation CRTest_8262

- (CRTest_8262)init
{
  v8.receiver = self;
  v8.super_class = CRTest_8262;
  v2 = [(CRTest *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CRTest *)v2 setName:@"8262"];
    [(CRTest *)v3 setTestId:&off_1000114C8];
    if (os_variant_has_internal_content())
    {
      v4 = [[CRUserDefaults alloc] initWithSuiteName:@"com.apple.corerepaird.test"];
      v5 = [(CRTest *)v3 name];
      v6 = [v4 dictionaryForKey:v5];
      [(CRTest *)v3 setOverrides:v6];
    }
  }

  return v3;
}

- (void)run:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"needRequestURL"];
  v7 = [(CRTest *)self overrides];

  if (v7)
  {
    v8 = [(CRTest *)self overrides];
    [v6 addEntriesFromDictionary:v8];
  }

  v11 = @"parameters";
  v12 = v6;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v10 = [(CRTest *)self testId];
  [v5 startTest:v10 parameters:v9];
}

- (void)update:(id)a3 testIndex:(int64_t)a4 testResult:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8 && v9)
  {
    v11 = [v9 statusCode];
    v12 = [v11 isEqual:&off_1000114E0];

    if (v12)
    {
      v13 = [v10 data];
      if (v13)
      {
        v14 = v13;
        v15 = [v10 data];
        v16 = [v15 objectForKeyedSubscript:@"MountPath"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v18 = [v10 data];
          v19 = [v18 objectForKeyedSubscript:@"MountPath"];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 length])
          {
            v20 = handleForCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found mount path. Wait for LS to reload plugins", buf, 2u);
            }

            sleep(5u);
          }
        }
      }
    }

    else
    {
      v21 = handleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100009564(v10, v21);
      }

      [v10 setStatusCode:&off_1000114E0];
    }

    v22.receiver = self;
    v22.super_class = CRTest_8262;
    [(CRTest *)&v22 update:v8 testIndex:a4 testResult:v10];
  }
}

@end