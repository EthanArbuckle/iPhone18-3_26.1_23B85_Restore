@interface FMDOwnerAuthenticationManager
+ (id)ownerAuthenticationManagerEraseAllContentsAndSettings;
- (FMDOwnerAuthenticationManager)init;
- (id)evaluationOptions;
- (void)evaluateOperation;
- (void)evaluatePolicy;
@end

@implementation FMDOwnerAuthenticationManager

+ (id)ownerAuthenticationManagerEraseAllContentsAndSettings
{
  v2 = objc_alloc_init(FMDOwnerAuthenticationManager);
  v3 = [@"FM_OWNER_AUTH_REASON_EACS" fmd_localizedStringInTable:@"Localizable-DIMPLEKEY"];
  [(FMDOwnerAuthenticationManager *)v2 setLocalizedReason:v3];

  [(FMDOwnerAuthenticationManager *)v2 setFallbackToNoAuthentication:1];

  return v2;
}

- (FMDOwnerAuthenticationManager)init
{
  v3.receiver = self;
  v3.super_class = FMDOwnerAuthenticationManager;
  return [(FMDOwnerAuthenticationManager *)&v3 init];
}

- (void)evaluateOperation
{
  v3 = [(FMDOwnerAuthenticationManager *)self currentTask];

  if (!v3)
  {
    v4 = objc_alloc_init(FMFuture);
    [(FMDOwnerAuthenticationManager *)self permittedOperationBlock];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001361C4;
    v14 = v13[3] = &unk_1002CD748;
    v5 = v14;
    v6 = [v4 addSuccessBlock:v13];
    [(FMDOwnerAuthenticationManager *)self deniedOperationBlock];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001361DC;
    v12 = v11[3] = &unk_1002CD770;
    v7 = v12;
    v8 = [v4 addFailureBlock:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001361F4;
    v10[3] = &unk_1002CD798;
    v10[4] = self;
    v9 = [v4 addCompletionBlock:v10];
    [(FMDOwnerAuthenticationManager *)self setCurrentTask:v4];
    [(FMDOwnerAuthenticationManager *)self evaluatePolicy];
  }
}

- (id)evaluationOptions
{
  v7[0] = &off_1002E79D8;
  v3 = [(FMDOwnerAuthenticationManager *)self localizedReason];
  v7[1] = &off_1002E79F0;
  v8[0] = v3;
  v4 = [NSNumber numberWithBool:[(FMDOwnerAuthenticationManager *)self fallbackToNoAuthentication]];
  v8[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (void)evaluatePolicy
{
  v3 = [(FMDOwnerAuthenticationManager *)self context];

  if (v3)
  {
    v4 = sub_10017DF3C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100226274(v4);
    }
  }

  else
  {
    v4 = objc_alloc_init(LAContext);
    [(FMDOwnerAuthenticationManager *)self setContext:v4];
    v5 = [(FMDOwnerAuthenticationManager *)self evaluationOptions];
    v6 = sub_10017DF3C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Evaluating location-based owner authentication policy with options %@.", buf, 0xCu);
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100136458;
    v7[3] = &unk_1002CD7C0;
    v7[4] = self;
    [v4 evaluatePolicy:1025 options:v5 reply:v7];
  }
}

@end