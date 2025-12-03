@interface RMAudioAccessoryManager
+ (BOOL)isTempestActive;
- (RMAudioAccessoryManager)init;
- (void)dealloc;
- (void)startActivityUpdatesWithHandler:(id)handler;
- (void)startDeviceMotionUpdatesWithHandler:(id)handler;
- (void)startStatusUpdatesWithHandler:(id)handler;
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
    internal = [objc_opt_class() internal];
    objc_sync_enter(internal);
    [(RMAudioAccessoryManager *)v2 setSubscribedToStatus:0];
    internal2 = [objc_opt_class() internal];
    managers = [internal2 managers];
    [managers addObject:v2];

    if (qword_10002C0C8 != -1)
    {
      sub_100012A14();
    }

    v6 = qword_10002C0D0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      internal3 = [objc_opt_class() internal];
      managers2 = [internal3 managers];
      *buf = 134283779;
      v12 = v2;
      v13 = 2113;
      v14 = managers2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[RMAudioAccessoryManager] %{private}p.init managers: %{private}@", buf, 0x16u);
    }

    objc_sync_exit(internal);
  }

  return v2;
}

- (void)dealloc
{
  internal = [objc_opt_class() internal];
  objc_sync_enter(internal);
  [(RMAudioAccessoryManager *)self stopDeviceMotionUpdates];
  internal2 = [objc_opt_class() internal];
  managers = [internal2 managers];
  [managers removeObject:self];

  if (qword_10002C0C8 != -1)
  {
    sub_100012A3C();
  }

  v6 = qword_10002C0D0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    internal3 = [objc_opt_class() internal];
    managers2 = [internal3 managers];
    *buf = 134283779;
    selfCopy = self;
    v12 = 2113;
    v13 = managers2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[RMAudioAccessoryManager] %{private}p.dealloc managers: %{private}@", buf, 0x16u);
  }

  objc_sync_exit(internal);
  v9.receiver = self;
  v9.super_class = RMAudioAccessoryManager;
  [(RMAudioAccessoryManager *)&v9 dealloc];
}

- (void)startDeviceMotionUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  internal = [objc_opt_class() internal];
  objc_sync_enter(internal);
  [(RMAudioAccessoryManager *)self setDeviceMotionHandler:handlerCopy];
  internal2 = [objc_opt_class() internal];
  [internal2 startOrStopDeviceMotionUpdates];

  objc_sync_exit(internal);
}

- (void)stopDeviceMotionUpdates
{
  obj = [objc_opt_class() internal];
  objc_sync_enter(obj);
  if (![(RMAudioAccessoryManager *)self subscribedToStatus])
  {
    [(RMAudioAccessoryManager *)self setDeviceMotionStatusHandler:0];
  }

  internal = [objc_opt_class() internal];
  [internal startOrStopStatusUpdates];

  [(RMAudioAccessoryManager *)self setDeviceMotionHandler:0];
  internal2 = [objc_opt_class() internal];
  [internal2 startOrStopDeviceMotionUpdates];

  objc_sync_exit(obj);
}

- (void)startStatusUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  internal = [objc_opt_class() internal];
  objc_sync_enter(internal);
  [(RMAudioAccessoryManager *)self setSubscribedToStatus:1];
  [(RMAudioAccessoryManager *)self setDeviceMotionStatusHandler:handlerCopy];
  deviceMotionStatusHandler = [(RMAudioAccessoryManager *)self deviceMotionStatusHandler];
  internal2 = [objc_opt_class() internal];
  (deviceMotionStatusHandler)[2](deviceMotionStatusHandler, [internal2 lastDeviceStatus], 0);

  internal3 = [objc_opt_class() internal];
  [internal3 startOrStopStatusUpdates];

  objc_sync_exit(internal);
}

- (void)stopStatusUpdates
{
  obj = [objc_opt_class() internal];
  objc_sync_enter(obj);
  [(RMAudioAccessoryManager *)self setDeviceMotionStatusHandler:0];
  [(RMAudioAccessoryManager *)self setSubscribedToStatus:0];
  internal = [objc_opt_class() internal];
  [internal startOrStopStatusUpdates];

  objc_sync_exit(obj);
}

- (void)startActivityUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  internal = [objc_opt_class() internal];
  objc_sync_enter(internal);
  [(RMAudioAccessoryManager *)self setActivityHandler:handlerCopy];
  internal2 = [objc_opt_class() internal];
  [internal2 startOrStopActivityUpdates];

  objc_sync_exit(internal);
}

- (void)stopActivityUpdates
{
  obj = [objc_opt_class() internal];
  objc_sync_enter(obj);
  [(RMAudioAccessoryManager *)self setActivityHandler:0];
  internal = [objc_opt_class() internal];
  [internal startOrStopActivityUpdates];

  objc_sync_exit(obj);
}

+ (BOOL)isTempestActive
{
  internal = [self internal];
  isTempestActive = [internal isTempestActive];

  return isTempestActive;
}

@end