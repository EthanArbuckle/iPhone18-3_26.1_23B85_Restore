@interface RMAudioAccessoryManager
+ (BOOL)isTempestActive;
- (RMAudioAccessoryManager)init;
- (void)dealloc;
- (void)startActivityUpdatesWithHandler:(id)a3;
- (void)startDeviceMotionUpdatesWithHandler:(id)a3;
- (void)startStatusUpdatesWithHandler:(id)a3;
- (void)stopActivityUpdates;
- (void)stopDeviceMotionUpdates;
- (void)stopStatusUpdates;
@end

@implementation RMAudioAccessoryManager

- (RMAudioAccessoryManager)init
{
  v10.receiver = self;
  v10.super_class = RMAudioAccessoryManager;
  v2 = [(RMAudioAccessoryManager *)&v10 init];
  if (v2)
  {
    v3 = [objc_opt_class() internal];
    objc_sync_enter(v3);
    [(RMAudioAccessoryManager *)v2 setSubscribedToStatus:0];
    v4 = [objc_opt_class() internal];
    v5 = [v4 managers];
    [v5 addObject:v2];

    if (qword_10002C0C8 != -1)
    {
      sub_100012A14();
    }

    v6 = qword_10002C0D0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [objc_opt_class() internal];
      v8 = [v7 managers];
      *buf = 134283779;
      v12 = v2;
      v13 = 2113;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[RMAudioAccessoryManager] %{private}p.init managers: %{private}@", buf, 0x16u);
    }

    objc_sync_exit(v3);
  }

  return v2;
}

- (void)dealloc
{
  v3 = [objc_opt_class() internal];
  objc_sync_enter(v3);
  [(RMAudioAccessoryManager *)self stopDeviceMotionUpdates];
  v4 = [objc_opt_class() internal];
  v5 = [v4 managers];
  [v5 removeObject:self];

  if (qword_10002C0C8 != -1)
  {
    sub_100012A3C();
  }

  v6 = qword_10002C0D0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() internal];
    v8 = [v7 managers];
    *buf = 134283779;
    v11 = self;
    v12 = 2113;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[RMAudioAccessoryManager] %{private}p.dealloc managers: %{private}@", buf, 0x16u);
  }

  objc_sync_exit(v3);
  v9.receiver = self;
  v9.super_class = RMAudioAccessoryManager;
  [(RMAudioAccessoryManager *)&v9 dealloc];
}

- (void)startDeviceMotionUpdatesWithHandler:(id)a3
{
  v6 = a3;
  v4 = [objc_opt_class() internal];
  objc_sync_enter(v4);
  [(RMAudioAccessoryManager *)self setDeviceMotionHandler:v6];
  v5 = [objc_opt_class() internal];
  [v5 startOrStopDeviceMotionUpdates];

  objc_sync_exit(v4);
}

- (void)stopDeviceMotionUpdates
{
  obj = [objc_opt_class() internal];
  objc_sync_enter(obj);
  if (![(RMAudioAccessoryManager *)self subscribedToStatus])
  {
    [(RMAudioAccessoryManager *)self setDeviceMotionStatusHandler:0];
  }

  v3 = [objc_opt_class() internal];
  [v3 startOrStopStatusUpdates];

  [(RMAudioAccessoryManager *)self setDeviceMotionHandler:0];
  v4 = [objc_opt_class() internal];
  [v4 startOrStopDeviceMotionUpdates];

  objc_sync_exit(obj);
}

- (void)startStatusUpdatesWithHandler:(id)a3
{
  v8 = a3;
  v4 = [objc_opt_class() internal];
  objc_sync_enter(v4);
  [(RMAudioAccessoryManager *)self setSubscribedToStatus:1];
  [(RMAudioAccessoryManager *)self setDeviceMotionStatusHandler:v8];
  v5 = [(RMAudioAccessoryManager *)self deviceMotionStatusHandler];
  v6 = [objc_opt_class() internal];
  (v5)[2](v5, [v6 lastDeviceStatus], 0);

  v7 = [objc_opt_class() internal];
  [v7 startOrStopStatusUpdates];

  objc_sync_exit(v4);
}

- (void)stopStatusUpdates
{
  obj = [objc_opt_class() internal];
  objc_sync_enter(obj);
  [(RMAudioAccessoryManager *)self setDeviceMotionStatusHandler:0];
  [(RMAudioAccessoryManager *)self setSubscribedToStatus:0];
  v3 = [objc_opt_class() internal];
  [v3 startOrStopStatusUpdates];

  objc_sync_exit(obj);
}

- (void)startActivityUpdatesWithHandler:(id)a3
{
  v6 = a3;
  v4 = [objc_opt_class() internal];
  objc_sync_enter(v4);
  [(RMAudioAccessoryManager *)self setActivityHandler:v6];
  v5 = [objc_opt_class() internal];
  [v5 startOrStopActivityUpdates];

  objc_sync_exit(v4);
}

- (void)stopActivityUpdates
{
  obj = [objc_opt_class() internal];
  objc_sync_enter(obj);
  [(RMAudioAccessoryManager *)self setActivityHandler:0];
  v3 = [objc_opt_class() internal];
  [v3 startOrStopActivityUpdates];

  objc_sync_exit(obj);
}

+ (BOOL)isTempestActive
{
  v2 = [a1 internal];
  v3 = [v2 isTempestActive];

  return v3;
}

@end