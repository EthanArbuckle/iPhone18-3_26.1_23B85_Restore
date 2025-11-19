@interface DMDFetchAppInfoOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDFetchAppInfoOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchAppInfoOperation;
  [(DMDFetchAppInfoOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3
{
  v4 = objc_alloc_init(DMFFetchAppInfoResultObject);
  v5 = +[DMDAppController sharedController];
  v6 = [v5 allManagementInformation];

  if (v6)
  {
    v15 = self;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [v7 objectForKeyedSubscript:v12];
          v14 = [v13 objectForKeyedSubscript:@"Attributes"];
          [v4 addAttributes:v14 forApp:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    self = v15;
  }

  [(DMDFetchAppInfoOperation *)self endOperationWithResultObject:v4];
}

@end