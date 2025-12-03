@interface WiFiSmartCoverStateObserver
- (WiFiSmartCoverStateObserver)init;
- (void)dispatchSmartCoverCallback;
- (void)registerSmartCoverStateCallback;
- (void)smartCoverStateDidChange:(int64_t)change;
@end

@implementation WiFiSmartCoverStateObserver

- (void)smartCoverStateDidChange:(int64_t)change
{
  if ((change - 1) > 2)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_1002629B8[change - 1];
  }

  v6 = +[WiFiUsageMonitor sharedInstance];
  [v6 setSmartCoverState:v5];

  [(WiFiSmartCoverStateObserver *)self setSmartCoverState:change];
  queue = [(WiFiSmartCoverStateObserver *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010A440;
  block[3] = &unk_10025E9B8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (WiFiSmartCoverStateObserver)init
{
  v5[0] = 0;
  if (!qword_100298AF0)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_10010A7C8;
    v5[4] = &unk_10025EAD8;
    v5[5] = v5;
    v5[7] = 0;
    v5[8] = 0;
    v5[6] = "/System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices";
    qword_100298AF0 = _sl_dlopen();
  }

  if (!qword_100298AF0)
  {
    sub_1001AB6F8(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  v4.receiver = self;
  v4.super_class = WiFiSmartCoverStateObserver;
  return [(WiFiSmartCoverStateObserver *)&v4 init];
}

- (void)registerSmartCoverStateCallback
{
  v3 = +[SBSSmartCoverService sharedInstance];
  v4 = [v3 registerSmartCoverStateObserver:self];
  observability = self->observability;
  self->observability = v4;

  if (!self->observability)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"registerSmartCoverStateObserver failed - Observability is nil"];
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)dispatchSmartCoverCallback
{
  v3 = objc_autoreleasePoolPush();
  if ([(WiFiSmartCoverStateObserver *)self smartCoverStateChangeCb])
  {
    ([(WiFiSmartCoverStateObserver *)self smartCoverStateChangeCb])([(WiFiSmartCoverStateObserver *)self manager], [(WiFiSmartCoverStateObserver *)self smartCoverState]);
  }

  else
  {
    sub_1001AB8BC();
  }

  objc_autoreleasePoolPop(v3);
}

@end