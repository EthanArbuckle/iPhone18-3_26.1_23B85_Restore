@interface DMDPlayLostModeSoundOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDPlayLostModeSoundOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDPlayLostModeSoundOperation;
  [(DMDPlayLostModeSoundOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)request
{
  v4 = +[FMDFMIPManager sharedInstance];
  if ([v4 isManagedLostModeActive])
  {
    [DMDPowerAssertion assertionForOperation:@"DMDPlayLostModeSoundOperation: run"];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10005E074;
    v6[3] = &unk_1000CDBD0;
    v7 = v6[4] = self;
    v5 = v7;
    [v4 playSoundWithOptions:0 completion:v6];
  }

  else
  {
    [(DMDTaskOperation *)self endOperationWithDMFErrorCode:601];
  }
}

@end