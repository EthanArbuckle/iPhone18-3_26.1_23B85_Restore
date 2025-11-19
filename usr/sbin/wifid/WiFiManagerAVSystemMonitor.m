@interface WiFiManagerAVSystemMonitor
- (void)dealloc;
- (void)dispatchAVSystemMonitorCallback:(id)a3;
- (void)dispatchAVSystemServerCallIsActive:(id)a3;
- (void)dispatchAVSystemServerDiedCallback:(id)a3;
- (void)startMonitoringAVSystem;
- (void)stopMonitoringAVSystem;
@end

@implementation WiFiManagerAVSystemMonitor

- (void)dispatchAVSystemMonitorCallback:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [a3 userInfo];
  v7 = [v6 objectForKey:AVSystemController_VoicePromptStyleDidChangeNotificationParameter];
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Voice Prompt Style Changed = %@", "-[WiFiManagerAVSystemMonitor dispatchAVSystemMonitorCallback:]", v7}];
  }

  objc_autoreleasePoolPop(v8);
  if ([(WiFiManagerAVSystemMonitor *)self AVSystemMonitorCb])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A40F0;
    block[3] = &unk_100261330;
    block[4] = self;
    block[5] = v7;
    dispatch_async([(WiFiManagerAVSystemMonitor *)self queue], block);
  }

  else
  {
    sub_10017AA30();
  }

  objc_autoreleasePoolPop(v5);
}

- (void)dispatchAVSystemServerDiedCallback:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: AVSystemServerDied %@", "-[WiFiManagerAVSystemMonitor dispatchAVSystemServerDiedCallback:]", a3}];
  }

  objc_autoreleasePoolPop(v6);
  [(WiFiManagerAVSystemMonitor *)self startMonitoringAVSystem];

  objc_autoreleasePoolPop(v5);
}

- (void)dispatchAVSystemServerCallIsActive:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: AVSystemCallIsActiveNotificationReceived %@", "-[WiFiManagerAVSystemMonitor dispatchAVSystemServerCallIsActive:]", a3}];
  }

  objc_autoreleasePoolPop(v6);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A42B4;
  block[3] = &unk_100261330;
  block[4] = self;
  block[5] = a3;
  dispatch_async([(WiFiManagerAVSystemMonitor *)self queue], block);
  objc_autoreleasePoolPop(v5);
}

- (void)startMonitoringAVSystem
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "-[WiFiManagerAVSystemMonitor startMonitoringAVSystem]"}];
  }

  objc_autoreleasePoolPop(v4);
  v5 = +[NSNotificationCenter defaultCenter];
  v6 = +[AVSystemController sharedAVSystemController];
  if (v5)
  {
    v7 = v6;
    if (v6)
    {
      v12[0] = AVSystemController_VoicePromptStyleDidChangeNotification;
      v12[1] = AVSystemController_ServerConnectionDiedNotification;
      v12[2] = AVSystemController_CallIsActiveDidChangeNotification;
      v8 = [NSArray arrayWithObjects:v12 count:3];
      v11 = 0xAAAAAAAAAAAAAAAALL;
      v9 = [v7 setAttribute:v8 forKey:AVSystemController_SubscribeToNotificationsAttribute error:&v11];
      v10 = objc_autoreleasePoolPush();
      if (v9)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Successfully subscribed to all necessary AVSystemController notifications: %@", "-[WiFiManagerAVSystemMonitor startMonitoringAVSystem]", v8}];
        }
      }

      else if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Failed to subscribe to AVSystemController notifications due to error: %@", "-[WiFiManagerAVSystemMonitor startMonitoringAVSystem]", v11}];
      }

      objc_autoreleasePoolPop(v10);
      [(NSNotificationCenter *)v5 addObserver:self selector:"dispatchAVSystemMonitorCallback:" name:AVSystemController_VoicePromptStyleDidChangeNotification object:v7];
      [(NSNotificationCenter *)v5 addObserver:self selector:"dispatchAVSystemServerDiedCallback:" name:AVSystemController_ServerConnectionDiedNotification object:v7];
      [(NSNotificationCenter *)v5 addObserver:self selector:"dispatchAVSystemServerCallIsActive:" name:AVSystemController_CallIsActiveDidChangeNotification object:v7];
    }

    else
    {
      sub_10017AA88();
    }
  }

  else
  {
    sub_10017AAE0();
  }

  objc_autoreleasePoolPop(v3);
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();

  v4.receiver = self;
  v4.super_class = WiFiManagerAVSystemMonitor;
  [(WiFiManagerAVSystemMonitor *)&v4 dealloc];
  objc_autoreleasePoolPop(v3);
}

- (void)stopMonitoringAVSystem
{
  v2 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v2);
}

@end