@interface DMDEnableLostModeOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDEnableLostModeOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDEnableLostModeOperation;
  [(DMDEnableLostModeOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = +[FMDFMIPManager sharedInstance];
  v6 = [v5 isManagedLostModeActive];

  if (v6)
  {
    [(DMDEnableLostModeOperation *)self endOperationWithResultObject:0];
  }

  else
  {
    v7 = +[DMDLostDeviceLocationManager sharedManager];
    [v7 clearLastLocationRequestedDate];

    +[DMDLockUtilities lockDevice];
    v8 = objc_opt_new();
    [v8 setLostModeEnabled:1];
    v9 = [v4 message];
    [v8 setMessage:v9];

    v10 = [v4 phoneNumber];
    [v8 setPhoneNumber:v10];

    v11 = [v4 footnote];
    [v8 setFootnoteText:v11];

    [v8 setDisableSlideToUnlock:1];
    v12 = +[FMDFMIPManager sharedInstance];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100039460;
    v13[3] = &unk_1000CEE68;
    v13[4] = self;
    [v12 enableManagedLostModeWithInfo:v8 completion:v13];
  }
}

@end