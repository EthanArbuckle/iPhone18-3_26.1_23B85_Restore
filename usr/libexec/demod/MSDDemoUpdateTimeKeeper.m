@interface MSDDemoUpdateTimeKeeper
+ (id)sharedInstance;
- (BOOL)shouldCleanUp:(id *)a3;
- (id)setCompletionTime:(int)a3 reserveTimeForCleanup:(BOOL)a4;
- (id)setCompletionTimeForFatalError:(int)a3;
- (void)forceSwitchToDemoMode:(id)a3;
@end

@implementation MSDDemoUpdateTimeKeeper

+ (id)sharedInstance
{
  if (qword_1001A5A80 != -1)
  {
    sub_1000E9C98();
  }

  v3 = qword_1001A5A78;

  return v3;
}

- (id)setCompletionTime:(int)a3 reserveTimeForCleanup:(BOOL)a4
{
  v4 = a4;
  [(MSDDemoUpdateTimeKeeper *)self setCanceled:0];
  v7 = [(MSDDemoUpdateTimeKeeper *)self timer];

  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B50D0;
    block[3] = &unk_100169B70;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  v8 = [(MSDDemoUpdateTimeKeeper *)self setCompletionTimeForFatalError:0];
  if (a3 < 1)
  {
    [(MSDDemoUpdateTimeKeeper *)self setDate:0];
LABEL_12:
    v22 = 0;
    goto LABEL_16;
  }

  if (v4)
  {
    [(MSDDemoUpdateTimeKeeper *)self setTimeIntervalReservedForCleanup:1800];
    v9 = (a3 - 600);
  }

  else
  {
    [(MSDDemoUpdateTimeKeeper *)self setTimeIntervalReservedForCleanup:0];
    v9 = a3;
  }

  v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:v9];
  [(MSDDemoUpdateTimeKeeper *)self setDate:v10];

  v11 = [(MSDDemoUpdateTimeKeeper *)self date];
  [v11 timeIntervalSinceNow];
  v13 = v12;
  v14 = [(MSDDemoUpdateTimeKeeper *)self timeIntervalReservedForCleanup];

  v15 = sub_100063A54();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v13 > v14)
  {
    if (v16)
    {
      v17 = [(MSDDemoUpdateTimeKeeper *)self date];
      [v17 timeIntervalSinceNow];
      v19 = v18;
      v20 = [(MSDDemoUpdateTimeKeeper *)self date];
      v21 = [(MSDDemoUpdateTimeKeeper *)self timeIntervalReservedForCleanup];
      *buf = 134218498;
      v30 = v19;
      v31 = 2114;
      v32 = v20;
      v33 = 2048;
      v34 = v21;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "The operation needs to complete in %lf seconds (or by %{public}@). Will indicate system to clean up %td second before that. If no clean up action is taken then the device will be forced to demo mode by then (if possible).", buf, 0x20u);
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000B5160;
    v27[3] = &unk_100169B70;
    v27[4] = self;
    dispatch_async(&_dispatch_main_q, v27);
    goto LABEL_12;
  }

  if (v16)
  {
    v23 = [(MSDDemoUpdateTimeKeeper *)self date];
    v24 = [(MSDDemoUpdateTimeKeeper *)self date];
    [v24 timeIntervalSinceNow];
    *buf = 138543618;
    v30 = v23;
    v31 = 2048;
    v32 = v25;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Already time for clean up: %{public}@ (in %lf seconds)", buf, 0x16u);
  }

  v22 = [NSError errorDomainMSDWithCode:3727741184 message:@"Cannot finish update within given time."];
LABEL_16:

  return v22;
}

- (id)setCompletionTimeForFatalError:(int)a3
{
  v5 = [(MSDDemoUpdateTimeKeeper *)self timerForFatalError];

  if (v5)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B52F0;
    block[3] = &unk_100169B70;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  if (a3 >= 1)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000B5380;
    v7[3] = &unk_10016AB80;
    v8 = a3;
    v7[4] = self;
    dispatch_async(&_dispatch_main_q, v7);
  }

  return 0;
}

- (BOOL)shouldCleanUp:(id *)a3
{
  v5 = [(MSDDemoUpdateTimeKeeper *)self date];

  if (v5)
  {
    v6 = [(MSDDemoUpdateTimeKeeper *)self date];
    [v6 timeIntervalSinceNow];
    v8 = v7;
    v9 = [(MSDDemoUpdateTimeKeeper *)self timeIntervalReservedForCleanup];

    if (v8 <= v9)
    {
      v11 = @"Cannot finish update within given time.";
      v12 = 3727741184;
      goto LABEL_6;
    }
  }

  v10 = [(MSDDemoUpdateTimeKeeper *)self canceled];
  if (v10)
  {
    v11 = @"Operation canceled.";
    v12 = 3727741185;
LABEL_6:
    *a3 = [NSError errorDomainMSDWithCode:v12 message:v11];
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (void)forceSwitchToDemoMode:(id)a3
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Time is up, has to force the device into demo mode.", v5, 2u);
  }

  v4 = +[MSDTargetDevice sharedInstance];
  [v4 forceSwitchToDemoModeIfNeeded];
}

@end