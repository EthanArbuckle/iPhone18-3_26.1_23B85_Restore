@interface FMFURLSessionFactory
+ (id)sessionWithConfiguration:(id)configuration delegate:(id)delegate delegateQueue:(id)queue;
@end

@implementation FMFURLSessionFactory

+ (id)sessionWithConfiguration:(id)configuration delegate:(id)delegate delegateQueue:(id)queue
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  queueCopy = queue;
  v10 = +[FMSystemInfo sharedInstance];
  isInternalBuild = [v10 isInternalBuild];

  if (isInternalBuild && (v12 = [FMPreferencesUtil BOOLForKey:@"RedirectServerToFile" inDomain:@"com.apple.icloud.fmflocatord.notbackedup"], v13 = [FMPreferencesUtil integerForKey:@"RequestTimeoutSeconds" inDomain:@"com.apple.icloud.fmflocatord.notbackedup"], v12))
  {
    v14 = v13;
    v15 = +[FMFAutomationHelperFactory sharedFactory];
    v16 = [v15 automationHelperClassWithName:@"FMDFileURLSession"];

    v17 = [v16 alloc];
    underlyingQueue = [queueCopy underlyingQueue];
    v19 = [v17 initWithConfiguration:configurationCopy delegate:delegateCopy delegateQueue:underlyingQueue];

    [(FMFNSURLSession *)v19 setRequestTimeout:v14];
  }

  else
  {
    v19 = objc_alloc_init(FMFNSURLSession);
    v20 = [NSURLSession sessionWithConfiguration:configurationCopy delegate:0 delegateQueue:queueCopy];
    [(FMFNSURLSession *)v19 setSession:v20];
    [(FMFNSURLSession *)v19 setDelegate:delegateCopy];
  }

  return v19;
}

@end