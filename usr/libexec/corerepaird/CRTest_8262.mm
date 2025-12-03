@interface CRTest_8262
- (CRTest_8262)init;
- (void)run:(id)run withContext:(id)context;
- (void)update:(id)update testIndex:(int64_t)index testResult:(id)result;
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
      name = [(CRTest *)v3 name];
      v6 = [v4 dictionaryForKey:name];
      [(CRTest *)v3 setOverrides:v6];
    }
  }

  return v3;
}

- (void)run:(id)run withContext:(id)context
{
  runCopy = run;
  v6 = objc_opt_new();
  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"needRequestURL"];
  overrides = [(CRTest *)self overrides];

  if (overrides)
  {
    overrides2 = [(CRTest *)self overrides];
    [v6 addEntriesFromDictionary:overrides2];
  }

  v11 = @"parameters";
  v12 = v6;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  testId = [(CRTest *)self testId];
  [runCopy startTest:testId parameters:v9];
}

- (void)update:(id)update testIndex:(int64_t)index testResult:(id)result
{
  updateCopy = update;
  resultCopy = result;
  v10 = resultCopy;
  if (updateCopy && resultCopy)
  {
    statusCode = [resultCopy statusCode];
    v12 = [statusCode isEqual:&off_1000114E0];

    if (v12)
    {
      data = [v10 data];
      if (data)
      {
        v14 = data;
        data2 = [v10 data];
        v16 = [data2 objectForKeyedSubscript:@"MountPath"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          data3 = [v10 data];
          v19 = [data3 objectForKeyedSubscript:@"MountPath"];

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
    [(CRTest *)&v22 update:updateCopy testIndex:index testResult:v10];
  }
}

@end