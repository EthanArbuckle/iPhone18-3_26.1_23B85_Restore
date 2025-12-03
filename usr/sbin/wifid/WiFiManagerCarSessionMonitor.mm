@interface WiFiManagerCarSessionMonitor
+ (id)sharedInstance;
- (void)_updateDNDStatus;
- (void)dealloc;
- (void)initializeWithManager:(__WiFiManager *)manager queue:(id)queue;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)startMonitoringCarSession;
@end

@implementation WiFiManagerCarSessionMonitor

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058060;
  block[3] = &unk_10025EAD8;
  block[4] = self;
  if (qword_100298510 != -1)
  {
    dispatch_once(&qword_100298510, block);
  }

  v2 = qword_100298508;

  return v2;
}

- (void)initializeWithManager:(__WiFiManager *)manager queue:(id)queue
{
  queueCopy = queue;
  [(WiFiManagerCarSessionMonitor *)self setManager:manager];
  [(WiFiManagerCarSessionMonitor *)self setQueue:queueCopy];

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

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;
  if (connectCopy)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: carplay session started", "-[WiFiManagerCarSessionMonitor sessionDidConnect:]"}];
    }

    objc_autoreleasePoolPop(v5);
    configuration = [connectCopy configuration];
    carPlaySessionConfiguration = self->carPlaySessionConfiguration;
    self->carPlaySessionConfiguration = configuration;

    v8 = self->carPlaySessionConfiguration;
    if (v8)
    {
      vehicleModelName = [(CARSessionConfiguration *)v8 vehicleModelName];
      vehicleManufacturer = [(CARSessionConfiguration *)self->carPlaySessionConfiguration vehicleManufacturer];
      vehicleHardwareVersion = [(CARSessionConfiguration *)self->carPlaySessionConfiguration vehicleHardwareVersion];
      if (vehicleModelName)
      {
        v12 = vehicleModelName;
      }

      else
      {
        v12 = @"unknown";
      }

      v13 = v12;

      if (vehicleManufacturer)
      {
        v14 = vehicleManufacturer;
      }

      else
      {
        v14 = @"unknown";
      }

      v15 = v14;

      if (vehicleHardwareVersion)
      {
        v16 = vehicleHardwareVersion;
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
      queue = [(WiFiManagerCarSessionMonitor *)self queue];
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
      dispatch_async(queue, block);
    }
  }
}

- (void)sessionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  if (disconnectCopy)
  {
    queue = [(WiFiManagerCarSessionMonitor *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000584D0;
    block[3] = &unk_10025E9B8;
    block[4] = self;
    dispatch_async(queue, block);

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
  queue = [(WiFiManagerCarSessionMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000585F0;
  block[3] = &unk_10025E9B8;
  block[4] = self;
  dispatch_async(queue, block);
}

@end