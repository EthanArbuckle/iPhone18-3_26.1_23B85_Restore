@interface HIDApplePencilDevice
- (HIDApplePencilDevice)initWithProperties:(id)properties reports:(id)reports loggingIdentifier:(id)identifier;
- (id)desiredConnectionParameters;
- (id)newUserDevices:(id)devices;
- (void)dealloc;
- (void)mtWillPowerOn;
- (void)notifyDidStart;
- (void)notifyDidStop;
- (void)piconetClockNotification:(id)notification;
- (void)sendAnalyticsEvent:(id)event withPayload:(id)payload;
- (void)start;
- (void)stop;
@end

@implementation HIDApplePencilDevice

- (id)newUserDevices:(id)devices
{
  devicesCopy = devices;
  v5 = [(HIDApplePencilDevice *)self newDeviceMgntDevice:devicesCopy keyholeID:240];
  v6 = [(HIDApplePencilDevice *)self newInertialSensorDevice:devicesCopy keyholeID:243];
  v7 = [(HIDApplePencilDevice *)self newRadioDevice:devicesCopy keyholeID:245];
  v8 = [(HIDApplePencilDevice *)self newForceDevice:devicesCopy keyholeID:248];

  if (!v5)
  {
    sub_1000736D4(&v11);
LABEL_11:
    v9 = v11;
    goto LABEL_6;
  }

  if (!v6)
  {
    sub_100073678(&v11);
    goto LABEL_11;
  }

  if (!v7)
  {
    sub_10007361C(&v11);
    goto LABEL_11;
  }

  if (!v8)
  {
    sub_1000735C0(&v11);
    goto LABEL_11;
  }

  objc_storeStrong(&self->_deviceMgntUserDevice, v5);
  objc_storeStrong(&self->_forceUserDevice, v8);
  v12[0] = v5;
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:4];
LABEL_6:

  return v9;
}

- (void)start
{
  kdebug_trace();
  v17.receiver = self;
  v17.super_class = HIDApplePencilDevice;
  [(HIDBluetoothDevice *)&v17 start];
  dispatch_set_context(self->_queue, self);
  dispatch_set_finalizer_f(self->_queue, j__objc_msgSend_notifyDidStop);
  userDevices = self->_userDevices;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001E78C;
  v16[3] = &unk_1000BD7F0;
  v16[4] = self;
  [(NSArray *)userDevices enumerateObjectsUsingBlock:v16];
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 integerForKey:@"BTSyncPeriod"];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 4;
  }

  [(HIDApplePencilDevice *)self setBtSyncPeriod:v6];

  peripheral = [(HIDBluetoothDevice *)self peripheral];
  v8 = [peripheral hasTag:@"A2538"];

  if (v8)
  {
    v9 = +[NSUserDefaults standardUserDefaults];
    v10 = [v9 integerForKey:@"BTSyncPeriod"];
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    [(HIDApplePencilDevice *)self setBtSyncPeriod:v11];
  }

  v12 = +[BTLEXpcServer instance];
  btSyncPeriod = [(HIDApplePencilDevice *)self btSyncPeriod];
  peripheral2 = [(HIDBluetoothDevice *)self peripheral];
  [v12 sendEnableBTSyncMsg:btSyncPeriod forPeer:peripheral2];

  v15 = +[NSNotificationCenter defaultCenter];
  [v15 addObserver:self selector:"piconetClockNotification:" name:@"PiconetClockNotification" object:0];

  [(HIDApplePencilDevice *)self notifyDidStart];
  kdebug_trace();
}

- (void)notifyDidStart
{
  queue = self->_queue;
  notifyQueue = self->_notifyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E840;
  block[3] = &unk_1000BD398;
  block[4] = self;
  v4 = queue;
  dispatch_async(notifyQueue, block);
}

- (void)notifyDidStop
{
  notifyQueue = self->_notifyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E948;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(notifyQueue, block);
}

- (id)desiredConnectionParameters
{
  v5.receiver = self;
  v5.super_class = HIDApplePencilDevice;
  desiredConnectionParameters = [(HIDBluetoothDevice *)&v5 desiredConnectionParameters];
  [(HIDApplePencilDevice *)self preferredInterval];
  [desiredConnectionParameters setMinInterval:?];
  [(HIDApplePencilDevice *)self preferredInterval];
  [desiredConnectionParameters setPreferredInterval:?];
  [desiredConnectionParameters setPreferredPeripheralLatency:{-[HIDApplePencilDevice preferredPeripheralLatency](self, "preferredPeripheralLatency")}];
  [desiredConnectionParameters setMaxPeripheralLatency:{-[HIDApplePencilDevice preferredPeripheralLatency](self, "preferredPeripheralLatency")}];
  [desiredConnectionParameters setMinCELength:4];
  [desiredConnectionParameters setMaxCELength:4];
  [desiredConnectionParameters setMaxDeferment:1];

  return desiredConnectionParameters;
}

- (HIDApplePencilDevice)initWithProperties:(id)properties reports:(id)reports loggingIdentifier:(id)identifier
{
  propertiesCopy = properties;
  identifierCopy = identifier;
  reportsCopy = reports;
  kdebug_trace();
  v29.receiver = self;
  v29.super_class = HIDApplePencilDevice;
  v11 = [(HIDBluetoothDevice *)&v29 initWithProperties:propertiesCopy reports:reportsCopy];

  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = [[NSSet alloc] initWithObjects:{&off_1000C3AF8, &off_1000C3B10, &off_1000C3B28, &off_1000C3B40, 0}];
  forceInputReportSet = v11->_forceInputReportSet;
  v11->_forceInputReportSet = v12;

  if (!v11->_forceInputReportSet)
  {
    sub_10007382C();
LABEL_15:
    kdebug_trace();
    v27 = 0;
    goto LABEL_9;
  }

  allocHIDQueue = [(HIDBluetoothDevice *)v11 allocHIDQueue];
  queue = v11->_queue;
  v11->_queue = allocHIDQueue;

  if (!v11->_queue)
  {
    sub_1000737D8();
    goto LABEL_15;
  }

  v16 = dispatch_semaphore_create(0);
  hostReadySentSemaphore = v11->_hostReadySentSemaphore;
  v11->_hostReadySentSemaphore = v16;

  if (!v11->_hostReadySentSemaphore)
  {
    sub_100073784();
    goto LABEL_15;
  }

  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v20 = [NSString stringWithFormat:@"com.apple.BTLEServer.%@", v19];

  v21 = dispatch_queue_create([v20 UTF8String], 0);
  notifyQueue = v11->_notifyQueue;
  v11->_notifyQueue = v21;

  if (!v11->_notifyQueue)
  {
    sub_100073730();
    goto LABEL_14;
  }

  v23 = [(HIDApplePencilDevice *)v11 newUserDevices:propertiesCopy];
  userDevices = v11->_userDevices;
  v11->_userDevices = v23;

  if (!v11->_userDevices)
  {
LABEL_14:

    goto LABEL_15;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v11, sub_10001ED10, @"com.apple.hid.sessionFilterPlugin.fireflyManager.willPowerOn", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  LODWORD(v26) = 15.0;
  [(HIDApplePencilDevice *)v11 setPreferredInterval:v26];
  [(HIDApplePencilDevice *)v11 setPreferredPeripheralLatency:10];
  objc_storeStrong(&v11->_loggingIdentifier, identifier);

LABEL_8:
  kdebug_trace();
  v27 = v11;
LABEL_9:

  return v27;
}

- (void)stop
{
  kdebug_trace();
  v5.receiver = self;
  v5.super_class = HIDApplePencilDevice;
  [(HIDBluetoothDevice *)&v5 stop];
  [(NSArray *)self->_userDevices enumerateObjectsUsingBlock:&stru_1000BD830];
  queue = self->_queue;
  self->_queue = 0;

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  kdebug_trace();
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.hid.sessionFilterPlugin.fireflyManager.willPowerOn", 0);
  v4.receiver = self;
  v4.super_class = HIDApplePencilDevice;
  [(HIDBluetoothDevice *)&v4 dealloc];
}

- (void)sendAnalyticsEvent:(id)event withPayload:(id)payload
{
  payloadCopy = payload;
  v4 = payloadCopy;
  AnalyticsSendEventLazy();
}

- (void)piconetClockNotification:(id)notification
{
  notificationCopy = notification;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [notificationCopy description];
    *v13 = 136315138;
    *&v13[4] = [v7 UTF8String];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Firefly] piconetClockNotification: %s", v13, 0xCu);
  }

  v13[0] = 119;
  userInfo = [notificationCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"PiconetClockUserInfoKey"];
  *&v13[1] = [v9 unsignedIntegerValue];

  userInfo2 = [notificationCopy userInfo];
  v11 = [userInfo2 objectForKeyedSubscript:@"PiconetPhaseClockUserInfoKey"];
  *&v13[5] = [v11 unsignedIntegerValue];

  kdebug_trace();
  forceUserDevice = [(HIDApplePencilDevice *)self forceUserDevice];
  [forceUserDevice handleInputReport:v13 reportLength:9];
}

- (void)mtWillPowerOn
{
  LODWORD(v2) = 15.0;
  [(HIDApplePencilDevice *)self setPreferredInterval:v2];
  [(HIDApplePencilDevice *)self setPreferredPeripheralLatency:4];

  [(HIDBluetoothDevice *)self notifyDesiredConnectionParametersDidChange];
}

@end