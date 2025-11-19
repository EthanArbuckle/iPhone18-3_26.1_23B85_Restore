@interface WiFiManagerCarSessionMonitor
+ (id)sharedInstance;
- (void)_updateDNDStatus;
- (void)dealloc;
- (void)initializeWithManager:(__WiFiManager *)a3 queue:(id)a4;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
- (void)startMonitoringCarSession;
@end

@implementation WiFiManagerCarSessionMonitor

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058060;
  block[3] = &unk_10025EAD8;
  block[4] = a1;
  if (qword_100298510 != -1)
  {
    dispatch_once(&qword_100298510, block);
  }

  v2 = qword_100298508;

  return v2;
}

- (void)initializeWithManager:(__WiFiManager *)a3 queue:(id)a4
{
  v6 = a4;
  [(WiFiManagerCarSessionMonitor *)self setManager:a3];
  [(WiFiManagerCarSessionMonitor *)self setQueue:v6];

  self->_carDNDActive = 0;
  v7 = objc_alloc_init(CARAutomaticDNDStatus);
  [(WiFiManagerCarSessionMonitor *)self setDndStatus:v7];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_10005814C, @"CARAutomaticDNDStatusChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  [(WiFiManagerCarSessionMonitor *)self _updateDNDStatus];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"CARAutomaticDNDStatusChangedNotification", 0);
  v4.receiver = self;
  v4.super_class = WiFiManagerCarSessionMonitor;
  [(WiFiManagerCarSessionMonitor *)&v4 dealloc];
}

- (void)sessionDidConnect:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: carplay session started", "-[WiFiManagerCarSessionMonitor sessionDidConnect:]"}];
    }

    objc_autoreleasePoolPop(v5);
    v6 = [v4 configuration];
    carPlaySessionConfiguration = self->carPlaySessionConfiguration;
    self->carPlaySessionConfiguration = v6;

    v8 = self->carPlaySessionConfiguration;
    if (v8)
    {
      v9 = [(CARSessionConfiguration *)v8 vehicleModelName];
      v10 = [(CARSessionConfiguration *)self->carPlaySessionConfiguration vehicleManufacturer];
      v11 = [(CARSessionConfiguration *)self->carPlaySessionConfiguration vehicleHardwareVersion];
      if (v9)
      {
        v12 = v9;
      }

      else
      {
        v12 = @"unknown";
      }

      v13 = v12;

      if (v10)
      {
        v14 = v10;
      }

      else
      {
        v14 = @"unknown";
      }

      v15 = v14;

      if (v11)
      {
        v16 = v11;
      }

      else
      {
        v16 = @"unknown";
      }

      v17 = v16;

      v18 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: vehicleModelName %@, vehicleManufacturer %@, vehicleHardwareVersion %@", "-[WiFiManagerCarSessionMonitor sessionDidConnect:]", v13, v15, v17}];
      }

      objc_autoreleasePoolPop(v18);
      v19 = [(WiFiManagerCarSessionMonitor *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000583AC;
      block[3] = &unk_10025F360;
      block[4] = self;
      v24 = v13;
      v25 = v15;
      v26 = v17;
      v20 = v17;
      v21 = v15;
      v22 = v13;
      dispatch_async(v19, block);
    }
  }
}

- (void)sessionDidDisconnect:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(WiFiManagerCarSessionMonitor *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000584D0;
    block[3] = &unk_10025E9B8;
    block[4] = self;
    dispatch_async(v5, block);

    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: carplay session ended", "-[WiFiManagerCarSessionMonitor sessionDidDisconnect:]"}];
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)startMonitoringCarSession
{
  v3 = objc_alloc_init(CARSessionStatus);
  carSessionStatus = self->carSessionStatus;
  self->carSessionStatus = v3;

  v5 = self->carSessionStatus;

  [(CARSessionStatus *)v5 addSessionObserver:self];
}

- (void)_updateDNDStatus
{
  v3 = [(WiFiManagerCarSessionMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000585F0;
  block[3] = &unk_10025E9B8;
  block[4] = self;
  dispatch_async(v3, block);
}

@end