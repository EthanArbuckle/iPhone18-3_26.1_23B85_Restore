@interface FMFURLSessionFactory
+ (id)sessionWithConfiguration:(id)a3 delegate:(id)a4 delegateQueue:(id)a5;
@end

@implementation FMFURLSessionFactory

+ (id)sessionWithConfiguration:(id)a3 delegate:(id)a4 delegateQueue:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[FMSystemInfo sharedInstance];
  v11 = [v10 isInternalBuild];

  if (v11 && (v12 = [FMPreferencesUtil BOOLForKey:@"RedirectServerToFile" inDomain:@"com.apple.icloud.fmflocatord.notbackedup"], v13 = [FMPreferencesUtil integerForKey:@"RequestTimeoutSeconds" inDomain:@"com.apple.icloud.fmflocatord.notbackedup"], v12))
  {
    v14 = v13;
    v15 = +[FMFAutomationHelperFactory sharedFactory];
    v16 = [v15 automationHelperClassWithName:@"FMDFileURLSession"];

    v17 = [v16 alloc];
    v18 = [v9 underlyingQueue];
    v19 = [v17 initWithConfiguration:v7 delegate:v8 delegateQueue:v18];

    [(FMFNSURLSession *)v19 setRequestTimeout:v14];
  }

  else
  {
    v19 = objc_alloc_init(FMFNSURLSession);
    v20 = [NSURLSession sessionWithConfiguration:v7 delegate:0 delegateQueue:v9];
    [(FMFNSURLSession *)v19 setSession:v20];
    [(FMFNSURLSession *)v19 setDelegate:v8];
  }

  return v19;
}

@end