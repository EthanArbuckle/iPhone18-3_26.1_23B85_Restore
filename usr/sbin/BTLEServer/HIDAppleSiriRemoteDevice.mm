@interface HIDAppleSiriRemoteDevice
+ (id)getAudioHIDReportDescriptor;
+ (id)getButtonsHIDReportDescriptor:(unsigned __int16)descriptor;
+ (id)getDeviceManagementHIDReportDescriptor;
+ (id)getInertialHIDReportDescriptor;
+ (id)getInfraredHIDReportDescriptor;
+ (id)getProximityHIDReportDescriptor;
+ (id)getRadioHIDReportDescriptor;
+ (id)getTouchHIDReportDescriptor;
+ (id)properties:(id)properties locationIdOffset:(unsigned int)offset hidDescriptor:(id)descriptor extendedData:(id)data;
- (BOOL)matchInstanceIDInHidEventDriver:(unsigned int)driver;
- (HIDAppleSiriRemoteDevice)initWithProperties:(id)properties reports:(id)reports;
- (id)desiredConnectionParameters;
- (void)appleMultitouchDeviceArrived:(unsigned int)arrived;
- (void)clearAppleMultitouchDeviceNotification;
- (void)clearButtonInterestNotification;
- (void)clearDeviceManagementNotification;
- (void)dealloc;
- (void)demultiplexInputReport:(char *)report reportLength:(int64_t)length reportID:(unsigned __int8)d;
- (void)deviceMgtDriverArrived:(unsigned int)arrived;
- (void)doapAudioDidStop:(id)stop;
- (void)doapAudioWillStart:(id)start;
- (void)extractButtonDataFromReport:(char *)report buttonIndex:(unsigned __int8)index;
- (void)handleAudioData:(char *)data dataLength:(int64_t)length;
- (void)handleButtonData;
- (void)handleDeviceManagementData:(char *)data dataLength:(int64_t)length;
- (void)handleInertialData;
- (void)handleInputReportDataV1:(id)v1 reportID:(unsigned __int8)d;
- (void)handleInputReportDataV2:(id)v2 reportID:(unsigned __int8)d;
- (void)handleProximityData;
- (void)handleTouchData;
- (void)logHwFwVersions;
- (void)logTouchData;
- (void)setNormalPeripheralLatency;
- (void)setSleepPeripheralLatency;
- (void)setZeroPeripheralLatency;
- (void)start;
- (void)stop;
- (void)verifyButtonDriverOpenedByEventSystem:(unsigned int)system;
- (void)waitForSiriAudioToStop:(id)stop;
@end

@implementation HIDAppleSiriRemoteDevice

+ (id)getTouchHIDReportDescriptor
{
  v4[0] = xmmword_100091D38;
  *(v4 + 15) = *(&xmmword_100091D38 + 15);
  v2 = [NSData dataWithBytes:v4 length:31];

  return v2;
}

+ (id)getButtonsHIDReportDescriptor:(unsigned __int16)descriptor
{
  if ((descriptor & 0xFFFE) == 0x314)
  {
    *v8 = xmmword_100091D77;
    *&v8[16] = unk_100091D87;
    *&v8[31] = 0xC00102B201950680;
    v6 = xmmword_100091D57;
    v7 = unk_100091D67;
    v3 = 71;
  }

  else
  {
    v6 = xmmword_100091D9E;
    v7 = unk_100091DAE;
    *v8 = xmmword_100091DBE;
    *&v8[15] = 0xC00102B201950680;
    v3 = 55;
  }

  v4 = [NSData dataWithBytes:&v6 length:v3, v6, v7, *v8, *&v8[16], *&v8[32]];

  return v4;
}

+ (id)getInertialHIDReportDescriptor
{
  v4 = xmmword_100091DD5;
  v5[0] = unk_100091DE5;
  *(v5 + 15) = unk_100091DF4;
  v2 = [NSData dataWithBytes:&v4 length:47];

  return v2;
}

+ (id)getInfraredHIDReportDescriptor
{
  v4[0] = xmmword_100091E04;
  *(v4 + 15) = *(&xmmword_100091E04 + 15);
  v2 = [NSData dataWithBytes:v4 length:31];

  return v2;
}

+ (id)getAudioHIDReportDescriptor
{
  v4[0] = xmmword_100091E23;
  *(v4 + 15) = *(&xmmword_100091E23 + 15);
  v2 = [NSData dataWithBytes:v4 length:31];

  return v2;
}

+ (id)getRadioHIDReportDescriptor
{
  v4[0] = xmmword_100091E42;
  *(v4 + 15) = *(&xmmword_100091E42 + 15);
  v2 = [NSData dataWithBytes:v4 length:31];

  return v2;
}

+ (id)getDeviceManagementHIDReportDescriptor
{
  v4 = xmmword_100091E61;
  *v5 = unk_100091E71;
  *&v5[15] = -1073675598;
  v2 = [NSData dataWithBytes:&v4 length:35];

  return v2;
}

+ (id)getProximityHIDReportDescriptor
{
  v4[0] = xmmword_100091E84;
  v4[1] = unk_100091E94;
  v5 = -64;
  v2 = [NSData dataWithBytes:v4 length:33];

  return v2;
}

+ (id)properties:(id)properties locationIdOffset:(unsigned int)offset hidDescriptor:(id)descriptor extendedData:(id)data
{
  propertiesCopy = properties;
  descriptorCopy = descriptor;
  dataCopy = data;
  v12 = [propertiesCopy mutableCopy];
  v13 = v12;
  if (descriptorCopy)
  {
    [v12 setObject:descriptorCopy forKeyedSubscript:@"ReportDescriptor"];
  }

  if (dataCopy)
  {
    [v13 setObject:dataCopy forKeyedSubscript:@"ExtendedData"];
  }

  v14 = [propertiesCopy objectForKeyedSubscript:@"LocationID"];
  v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v14 unsignedLongValue] + offset);
  [v13 setObject:v15 forKeyedSubscript:@"LocationID"];

  return v13;
}

- (HIDAppleSiriRemoteDevice)initWithProperties:(id)properties reports:(id)reports
{
  propertiesCopy = properties;
  reportsCopy = reports;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100071278(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  if (byte_1000DDBC0 == 1)
  {
    kdebug_trace();
  }

  v60.receiver = self;
  v60.super_class = HIDAppleSiriRemoteDevice;
  v16 = [(HIDBluetoothDevice *)&v60 initWithProperties:propertiesCopy reports:reportsCopy];
  v17 = v16;
  if (v16)
  {
    v18 = dword_1000DDA40++;
    v16->_instanceID = v18;
    v16->_firstButton = 1;
    v19 = [[NSMutableDictionary alloc] initWithDictionary:propertiesCopy];
    v20 = [NSNumber numberWithUnsignedInt:v17->_instanceID];
    [v19 setObject:v20 forKeyedSubscript:@"InstanceID"];

    objc_storeStrong(&v17->_properties, v19);
    v21 = [propertiesCopy objectForKeyedSubscript:@"ProductID"];
    v17->_productID = [v21 unsignedIntValue];

    v22 = [propertiesCopy objectForKeyedSubscript:@"SerialNumber"];
    serialNumber = v17->_serialNumber;
    v17->_serialNumber = v22;

    v17->_latency = 0;
    v24 = objc_alloc_init(NSMutableArray);
    audioBuffer = v17->_audioBuffer;
    v17->_audioBuffer = v24;

    v17->_connectedStandbyToken = -1;
    v26 = objc_alloc_init(NSMutableSet);
    pathIDs = v17->_pathIDs;
    v17->_pathIDs = v26;

    v28 = [[NSMutableData alloc] initWithCapacity:512];
    touchData = v17->_touchData;
    v17->_touchData = v28;

    v30 = [[NSMutableData alloc] initWithCapacity:512];
    inertialData = v17->_inertialData;
    v17->_inertialData = v30;

    v32 = objc_alloc_init(NSMutableArray);
    cachedButtonsAndTimestamps = v17->_cachedButtonsAndTimestamps;
    v17->_cachedButtonsAndTimestamps = v32;

    v34 = dispatch_group_create();
    groupInit = v17->_groupInit;
    v17->_groupInit = v34;

    v36 = dispatch_group_create();
    groupStart = v17->_groupStart;
    v17->_groupStart = v36;

    v38 = dispatch_group_create();
    groupDeviceManagement = v17->_groupDeviceManagement;
    v17->_groupDeviceManagement = v38;

    v40 = dispatch_group_create();
    groupTouch = v17->_groupTouch;
    v17->_groupTouch = v40;

    v42 = dispatch_group_create();
    groupInertial = v17->_groupInertial;
    v17->_groupInertial = v42;

    v44 = dispatch_group_create();
    groupProximity = v17->_groupProximity;
    v17->_groupProximity = v44;

    v46 = v17->_groupInit && v17->_groupStart && v17->_groupDeviceManagement && v17->_groupTouch && v17->_groupInertial && v17->_groupProximity;
    v47 = dispatch_semaphore_create(0);
    gotDeviceExtendedInfoReport = v17->_gotDeviceExtendedInfoReport;
    v17->_gotDeviceExtendedInfoReport = v47;

    v49 = dispatch_semaphore_create(0);
    sentHostReadyReport = v17->_sentHostReadyReport;
    v17->_sentHostReadyReport = v49;

    v51 = dispatch_semaphore_create(1);
    doapAudioStart = v17->_doapAudioStart;
    v17->_doapAudioStart = v51;

    if (!v17->_gotDeviceExtendedInfoReport || !v17->_sentHostReadyReport || !v17->_doapAudioStart)
    {
      v46 = 0;
    }

    allocHIDQueue = [(HIDBluetoothDevice *)v17 allocHIDQueue];
    queue = v17->_queue;
    v17->_queue = allocHIDQueue;

    v55 = 0;
    if (v46 && v17->_queue)
    {
      v56 = IONotificationPortCreate(kIOMainPortDefault);
      v17->_notificationPort = v56;
      if (v56)
      {
        IONotificationPortSetDispatchQueue(v56, v17->_queue);
        dispatch_set_context(v17->_queue, v17);
        dispatch_set_finalizer_f(v17->_queue, sub_10000952C);
        v55 = 1;
      }

      else
      {
        v55 = 0;
      }
    }

    if (byte_1000DDBC0 == 1)
    {
      instanceID = v17->_instanceID;
      kdebug_trace();
    }

    if ((v55 & 1) == 0)
    {
      notificationPort = v17->_notificationPort;
      if (notificationPort)
      {
        IONotificationPortDestroy(notificationPort);
        v17->_notificationPort = 0;
      }

      v17 = 0;
    }
  }

  return v17;
}

- (void)dealloc
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100071368(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  if (self->_doapAudioRelay)
  {
    [(HIDAppleSiriRemoteDevice *)self stop];
  }

  v11.receiver = self;
  v11.super_class = HIDAppleSiriRemoteDevice;
  [(HIDBluetoothDevice *)&v11 dealloc];
}

- (void)stop
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000713E0(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  doapAudioStart = [(HIDAppleSiriRemoteDevice *)self doapAudioStart];
  dispatch_semaphore_signal(doapAudioStart);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  doapAudioStop = [(HIDAppleSiriRemoteDevice *)selfCopy doapAudioStop];

  if (doapAudioStop)
  {
    doapAudioStop2 = [(HIDAppleSiriRemoteDevice *)selfCopy doapAudioStop];
    dispatch_semaphore_signal(doapAudioStop2);
  }

  objc_sync_exit(selfCopy);

  [(HIDAppleSiriRemoteDevice *)selfCopy setButtonData:0];
  [(HIDAppleSiriRemoteDevice *)selfCopy handleButtonData];
  if ([(HIDAppleSiriRemoteDevice *)selfCopy proximityData])
  {
    [(HIDAppleSiriRemoteDevice *)selfCopy setProximityData:0];
    [(HIDAppleSiriRemoteDevice *)selfCopy handleProximityData];
  }

  doapAudioRelay = [(HIDAppleSiriRemoteDevice *)selfCopy doapAudioRelay];
  [doapAudioRelay invalidate];

  [(HIDAppleSiriRemoteDevice *)selfCopy setDoapAudioRelay:0];
  v20.receiver = selfCopy;
  v20.super_class = HIDAppleSiriRemoteDevice;
  [(HIDBluetoothDevice *)&v20 stop];
  objc_initWeak(&location, selfCopy);
  queue = [(HIDAppleSiriRemoteDevice *)selfCopy queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000097E0;
  block[3] = &unk_1000BD370;
  objc_copyWeak(&v18, &location);
  block[4] = selfCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)start
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100071458(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v36.receiver = self;
  v36.super_class = HIDAppleSiriRemoteDevice;
  [(HIDBluetoothDevice *)&v36 start];
  groupDeviceManagement = [(HIDAppleSiriRemoteDevice *)self groupDeviceManagement];
  dispatch_group_enter(groupDeviceManagement);

  groupTouch = [(HIDAppleSiriRemoteDevice *)self groupTouch];
  dispatch_group_enter(groupTouch);

  groupInertial = [(HIDAppleSiriRemoteDevice *)self groupInertial];
  dispatch_group_enter(groupInertial);

  groupProximity = [(HIDAppleSiriRemoteDevice *)self groupProximity];
  dispatch_group_enter(groupProximity);

  groupInit = [(HIDAppleSiriRemoteDevice *)self groupInit];
  v16 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A09C;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_group_async(groupInit, v16, block);

  groupInit2 = [(HIDAppleSiriRemoteDevice *)self groupInit];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10000A408;
  v34[3] = &unk_1000BD398;
  v34[4] = self;
  dispatch_group_async(groupInit2, v16, v34);

  groupInit3 = [(HIDAppleSiriRemoteDevice *)self groupInit];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10000A6F0;
  v33[3] = &unk_1000BD398;
  v33[4] = self;
  dispatch_group_async(groupInit3, v16, v33);

  if ([(HIDAppleSiriRemoteDevice *)self productID]== 788 || [(HIDAppleSiriRemoteDevice *)self productID]== 789)
  {
    if (byte_1000DDBC0 == 1)
    {
      [(HIDAppleSiriRemoteDevice *)self instanceID];
      kdebug_trace();
    }

    groupInertial2 = [(HIDAppleSiriRemoteDevice *)self groupInertial];
    dispatch_group_leave(groupInertial2);

    if (byte_1000DDBC0 == 1)
    {
      [(HIDAppleSiriRemoteDevice *)self instanceID];
      kdebug_trace();
    }
  }

  else
  {
    groupInit4 = [(HIDAppleSiriRemoteDevice *)self groupInit];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10000A9DC;
    v32[3] = &unk_1000BD398;
    v32[4] = self;
    dispatch_group_async(groupInit4, v16, v32);
  }

  groupInit5 = [(HIDAppleSiriRemoteDevice *)self groupInit];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10000AC04;
  v31[3] = &unk_1000BD398;
  v31[4] = self;
  dispatch_group_async(groupInit5, v16, v31);

  groupInit6 = [(HIDAppleSiriRemoteDevice *)self groupInit];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000AE2C;
  v30[3] = &unk_1000BD398;
  v30[4] = self;
  dispatch_group_async(groupInit6, v16, v30);

  if ([(HIDAppleSiriRemoteDevice *)self productID]== 614 || [(HIDAppleSiriRemoteDevice *)self productID]== 621)
  {
    objc_initWeak(&location, self);
    groupStart = [(HIDAppleSiriRemoteDevice *)self groupStart];
    queue = [(HIDAppleSiriRemoteDevice *)self queue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10000B64C;
    v27[3] = &unk_1000BD3C0;
    objc_copyWeak(&v28, &location);
    dispatch_group_async(groupStart, queue, v27);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  groupStart2 = [(HIDAppleSiriRemoteDevice *)self groupStart];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000B770;
  v26[3] = &unk_1000BD398;
  v26[4] = self;
  dispatch_group_async(groupStart2, v16, v26);
}

- (void)clearAppleMultitouchDeviceNotification
{
  if ([(HIDAppleSiriRemoteDevice *)self amdNotification])
  {
    IOObjectRelease([(HIDAppleSiriRemoteDevice *)self amdNotification]);

    [(HIDAppleSiriRemoteDevice *)self setAmdNotification:0];
  }
}

- (void)clearDeviceManagementNotification
{
  if ([(HIDAppleSiriRemoteDevice *)self deviceMgtNotification])
  {
    IOObjectRelease([(HIDAppleSiriRemoteDevice *)self deviceMgtNotification]);

    [(HIDAppleSiriRemoteDevice *)self setDeviceMgtNotification:0];
  }
}

- (void)clearButtonInterestNotification
{
  if ([(HIDAppleSiriRemoteDevice *)self buttonInterestNotification])
  {
    IOObjectRelease([(HIDAppleSiriRemoteDevice *)self buttonInterestNotification]);

    [(HIDAppleSiriRemoteDevice *)self setButtonInterestNotification:0];
  }
}

- (BOOL)matchInstanceIDInHidEventDriver:(unsigned int)driver
{
  CFProperty = IORegistryEntryCreateCFProperty(driver, @"SerialNumber", kCFAllocatorDefault, 0);
  if (CFProperty && (-[HIDAppleSiriRemoteDevice serialNumber](self, "serialNumber"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqualToString:CFProperty], v6, v7))
  {
    parent = 0;
    ParentEntry = IORegistryEntryGetParentEntry(driver, "IOService", &parent);
    v9 = 0;
    v10 = parent;
    if (!ParentEntry && parent)
    {
      entry = 0;
      v11 = IORegistryEntryGetParentEntry(parent, "IOService", &entry);
      v9 = 0;
      v12 = entry;
      if (!v11 && entry)
      {
        v13 = IORegistryEntryCreateCFProperty(entry, @"InstanceID", kCFAllocatorDefault, 0);
        v14 = v13;
        if (v13 && (v15 = [v13 unsignedIntValue], v15 == -[HIDAppleSiriRemoteDevice instanceID](self, "instanceID")))
        {
          v16 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
          {
            sub_10007154C(v16, self);
          }

          v9 = 1;
        }

        else
        {
          v9 = 0;
        }

        v12 = entry;
      }

      IOObjectRelease(v12);
      v10 = parent;
    }

    IOObjectRelease(v10);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)verifyButtonDriverOpenedByEventSystem:(unsigned int)system
{
  CFProperty = IORegistryEntryCreateCFProperty(system, @"DeviceOpenedByEventSystem", kCFAllocatorDefault, 0);
  if ([CFProperty BOOLValue])
  {
    v16 = CFProperty;
    v5 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HID event system ready to dispatch keyboard/button events", buf, 2u);
    }

    [(HIDAppleSiriRemoteDevice *)self clearButtonInterestNotification];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    cachedButtonsAndTimestamps = [(HIDAppleSiriRemoteDevice *)selfCopy cachedButtonsAndTimestamps];
    v8 = [cachedButtonsAndTimestamps countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v8)
    {
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(cachedButtonsAndTimestamps);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [v11 objectAtIndexedSubscript:0];
          v13 = [v11 objectAtIndexedSubscript:1];
          v14 = qword_1000DDBC8;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            unsignedIntValue = [v12 unsignedIntValue];
            *buf = 67109120;
            v22 = unsignedIntValue;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Send cached button 0x%04X", buf, 8u);
          }

          -[HIDAppleSiriRemoteDevice sendButtonDataToUserDevice:withTimestamp:](selfCopy, "sendButtonDataToUserDevice:withTimestamp:", [v12 unsignedIntValue], objc_msgSend(v13, "unsignedLongLongValue"));
        }

        v8 = [cachedButtonsAndTimestamps countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v8);
    }

    [(HIDAppleSiriRemoteDevice *)selfCopy setCachedButtonsAndTimestamps:0];
    objc_sync_exit(selfCopy);

    CFProperty = v16;
  }
}

- (void)deviceMgtDriverArrived:(unsigned int)arrived
{
  v5 = IOIteratorNext(arrived);
  if (v5)
  {
    v6 = v5;
    do
    {
      if ([(HIDAppleSiriRemoteDevice *)self matchInstanceIDInHidEventDriver:v6])
      {
        v7 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
        {
          sub_1000715D4(v12, v7, self, &v13);
        }

        peripheral = [(HIDBluetoothDevice *)self peripheral];
        v9 = [CBUUID UUIDWithString:@"181E"];
        v10 = [peripheral isSupportingService:v9];

        if (v10)
        {
          v11 = kCFBooleanTrue;
        }

        else
        {
          v11 = kCFBooleanFalse;
        }

        IORegistryEntrySetCFProperty(v6, @"BondManagement", v11);
      }

      v6 = IOIteratorNext(arrived);
    }

    while (v6);
  }
}

- (void)appleMultitouchDeviceArrived:(unsigned int)arrived
{
  for (i = IOIteratorNext(arrived); i; i = IOIteratorNext(arrived))
  {
    parent = 0;
    if (IORegistryEntryGetParentEntry(i, "IOService", &parent))
    {
      v6 = 1;
    }

    else
    {
      v6 = parent == 0;
    }

    if (!v6 && [(HIDAppleSiriRemoteDevice *)self matchInstanceIDInHidEventDriver:?])
    {
      v7 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
      {
        sub_10007164C(&v8, v9, v7);
      }

      [(HIDAppleSiriRemoteDevice *)self setNormalPeripheralLatency];
    }
  }
}

- (id)desiredConnectionParameters
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007168C(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  if ([(HIDBluetoothDevice *)self state]== 2)
  {
    v23.receiver = self;
    v23.super_class = HIDAppleSiriRemoteDevice;
    desiredConnectionParameters = [(HIDBluetoothDevice *)&v23 desiredConnectionParameters];
    [desiredConnectionParameters setPreferredPeripheralLatency:{-[HIDAppleSiriRemoteDevice latency](self, "latency")}];
    [desiredConnectionParameters setMaxPeripheralLatency:{-[HIDAppleSiriRemoteDevice latency](self, "latency")}];
    [desiredConnectionParameters setMinCELength:6];
    [desiredConnectionParameters setMaxDeferment:1];
    LODWORD(v12) = 15.0;
    [desiredConnectionParameters setMinInterval:v12];
    LODWORD(v13) = 15.0;
    [desiredConnectionParameters setPreferredInterval:v13];
    latency = [(HIDAppleSiriRemoteDevice *)self latency];
    if (latency)
    {
      if (latency == 199)
      {
        v15 = ([desiredConnectionParameters preferredPeripheralLatency] + 1);
        [desiredConnectionParameters preferredInterval];
        v17 = ((v16 * v15) * 4.0) + 1.0;
      }

      else
      {
        [desiredConnectionParameters preferredInterval];
        v17 = (v19 * 5.0) * ([desiredConnectionParameters preferredPeripheralLatency] + 1);
      }

      v18 = v17;
    }

    else
    {
      v18 = 2000;
    }

    [desiredConnectionParameters setTimeout:v18];
    v20 = +[NSUserDefaults standardUserDefaults];
    v21 = [v20 objectForKey:@"ConnectionTimeout"];

    if (v21)
    {
      [desiredConnectionParameters setTimeout:{objc_msgSend(v20, "integerForKey:", @"ConnectionTimeout"}];
    }
  }

  else
  {
    desiredConnectionParameters = 0;
  }

  return desiredConnectionParameters;
}

- (void)setSleepPeripheralLatency
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100071704(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  queue = [(HIDAppleSiriRemoteDevice *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C280;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setNormalPeripheralLatency
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007177C(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  queue = [(HIDAppleSiriRemoteDevice *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C3E0;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setZeroPeripheralLatency
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000717F4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  queue = [(HIDAppleSiriRemoteDevice *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C5B4;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleButtonData
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007186C(v3, self);
  }

  cachedButtonsAndTimestamps = [(HIDAppleSiriRemoteDevice *)self cachedButtonsAndTimestamps];

  if (cachedButtonsAndTimestamps)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    cachedButtonsAndTimestamps2 = [(HIDAppleSiriRemoteDevice *)selfCopy cachedButtonsAndTimestamps];

    if (cachedButtonsAndTimestamps2)
    {
      v7 = qword_1000DDBC8;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        buttonData = [(HIDAppleSiriRemoteDevice *)selfCopy buttonData];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cache button 0x%04X", buf, 8u);
      }

      cachedButtonsAndTimestamps3 = [(HIDAppleSiriRemoteDevice *)selfCopy cachedButtonsAndTimestamps];
      v9 = [NSNumber numberWithUnsignedShort:[(HIDAppleSiriRemoteDevice *)selfCopy buttonData]];
      v10 = [NSNumber numberWithUnsignedLongLong:[(HIDAppleSiriRemoteDevice *)selfCopy inputReportTimestamp]];
      v12[1] = v10;
      v11 = [NSArray arrayWithObjects:v12 count:2];
      [cachedButtonsAndTimestamps3 addObject:v11];
    }

    else
    {
      [(HIDAppleSiriRemoteDevice *)selfCopy sendButtonDataToUserDevice:[(HIDAppleSiriRemoteDevice *)selfCopy buttonData] withTimestamp:[(HIDAppleSiriRemoteDevice *)selfCopy inputReportTimestamp]];
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    [(HIDAppleSiriRemoteDevice *)self sendButtonDataToUserDevice:[(HIDAppleSiriRemoteDevice *)self buttonData] withTimestamp:[(HIDAppleSiriRemoteDevice *)self inputReportTimestamp]];
  }
}

- (void)handleProximityData
{
  if ([(HIDBluetoothDevice *)self state]<= 2)
  {
    groupProximity = [(HIDAppleSiriRemoteDevice *)self groupProximity];
    dispatch_group_wait(groupProximity, 0xFFFFFFFFFFFFFFFFLL);

    v4 = [NSNumber numberWithUnsignedChar:[(HIDAppleSiriRemoteDevice *)self proximityData]];
    v5 = +[SLGLog sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000CC08;
    v9[3] = &unk_1000BD3E8;
    v10 = v4;
    v6 = v4;
    [v5 logBlock:v9];

    report[0] = 1;
    report[1] = [(HIDAppleSiriRemoteDevice *)self proximityData];
    proximity = [(HIDAppleSiriRemoteDevice *)self proximity];
    IOHIDUserDeviceHandleReportWithTimeStamp(proximity, [(HIDAppleSiriRemoteDevice *)self inputReportTimestamp], report, 2);
  }
}

- (void)handleTouchData
{
  if ([(HIDBluetoothDevice *)self state]<= 2)
  {
    touchData = [(HIDAppleSiriRemoteDevice *)self touchData];
    bytes = [touchData bytes];

    if (*bytes == 96)
    {
      if (byte_1000DDBC0 == 1)
      {
        [(HIDAppleSiriRemoteDevice *)self instanceID];
        kdebug_trace();
      }

      groupTouch = [(HIDAppleSiriRemoteDevice *)self groupTouch];
      dispatch_group_wait(groupTouch, 0xFFFFFFFFFFFFFFFFLL);

      touch = [(HIDAppleSiriRemoteDevice *)self touch];
      inputReportTimestamp = [(HIDAppleSiriRemoteDevice *)self inputReportTimestamp];
      touchData2 = [(HIDAppleSiriRemoteDevice *)self touchData];
      IOHIDUserDeviceHandleReportWithTimeStamp(touch, inputReportTimestamp, bytes, [touchData2 length]);

      if (byte_1000DDBC0 == 1)
      {
        [(HIDAppleSiriRemoteDevice *)self instanceID];
        kdebug_trace();
      }
    }

    else
    {
      groupTouch2 = [(HIDAppleSiriRemoteDevice *)self groupTouch];
      dispatch_group_wait(groupTouch2, 0xFFFFFFFFFFFFFFFFLL);

      touch2 = [(HIDAppleSiriRemoteDevice *)self touch];
      inputReportTimestamp2 = [(HIDAppleSiriRemoteDevice *)self inputReportTimestamp];
      touchData3 = [(HIDAppleSiriRemoteDevice *)self touchData];
      IOHIDUserDeviceHandleReportWithTimeStamp(touch2, inputReportTimestamp2, bytes, [touchData3 length]);
    }

    [(HIDAppleSiriRemoteDevice *)self logTouchData];
  }
}

- (void)logTouchData
{
  touchData = [(HIDAppleSiriRemoteDevice *)self touchData];
  bytes = [touchData bytes];

  touchData2 = [(HIDAppleSiriRemoteDevice *)self touchData];
  if ([touchData2 length] == 12)
  {

    goto LABEL_4;
  }

  touchData3 = [(HIDAppleSiriRemoteDevice *)self touchData];
  v7 = [touchData3 length];

  if (v7 == 19)
  {
LABEL_4:
    v8 = bytes[11];
    touchData4 = [(HIDAppleSiriRemoteDevice *)self touchData];
    if ([touchData4 length] == 19)
    {
      v63 = bytes[18] & 7;
    }

    else
    {
      v63 = 0;
    }

    if ((bytes[11] & 8) != 0)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    touchData5 = [(HIDAppleSiriRemoteDevice *)self touchData];
    if ([touchData5 length] == 19)
    {
      if ((bytes[18] & 8) != 0)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      v60 = v12;
    }

    else
    {
      v60 = 0;
    }

    v13 = bytes[2];
    v14 = bytes[3];
    inputReportTimestamp = [(HIDAppleSiriRemoteDevice *)self inputReportTimestamp];
    v16 = qword_1000DDA50;
    pathIDs = [(HIDAppleSiriRemoteDevice *)self pathIDs];
    v18 = v8 & 7;
    v19 = (v13 >> 1) | (v14 << 7);
    if ([pathIDs count])
    {
    }

    else
    {

      v65 = 0;
      v20 = 0;
      if (v18 == 3 || v63 == 3)
      {
        goto LABEL_22;
      }
    }

    v20 = inputReportTimestamp - v16;
    v65 = v19 - dword_1000DDA58;
    if (v19 < dword_1000DDA58)
    {
      v65 = (v19 | 0x8000) - dword_1000DDA58;
    }

LABEL_22:
    v62 = v20;
    v64 = v8 & 7;
    v21 = dword_1000DDA48;
    if (!dword_1000DDA48)
    {
      mach_timebase_info(&dword_1000DDA44);
      v21 = dword_1000DDA48;
    }

    v61 = dword_1000DDA44;
    dword_1000DDA58 = v19;
    qword_1000DDA50 = [(HIDAppleSiriRemoteDevice *)self inputReportTimestamp];
    if (v18 == 4)
    {
      goto LABEL_36;
    }

    if (v18 == 3)
    {
      pathIDs2 = [(HIDAppleSiriRemoteDevice *)self pathIDs];
      v23 = [NSNumber numberWithUnsignedChar:v10];
      v24 = [pathIDs2 containsObject:v23];

      if (v24)
      {
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_1000718F8();
        }

        goto LABEL_36;
      }

      pathIDs3 = [(HIDAppleSiriRemoteDevice *)self pathIDs];
      v35 = [NSNumber numberWithUnsignedChar:v10];
      [pathIDs3 addObject:v35];
    }

    else
    {
      pathIDs3 = [(HIDAppleSiriRemoteDevice *)self pathIDs];
      v35 = [NSNumber numberWithUnsignedChar:v10];
      [pathIDs3 removeObject:v35];
    }

LABEL_36:
    touchData6 = [(HIDAppleSiriRemoteDevice *)self touchData];
    v37 = [touchData6 length] == 19;

    if (v37 && v63 != 4)
    {
      if (v63 == 3)
      {
        pathIDs4 = [(HIDAppleSiriRemoteDevice *)self pathIDs];
        v39 = [NSNumber numberWithUnsignedChar:v60];
        v40 = [pathIDs4 containsObject:v39];

        if (v40)
        {
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            sub_1000718F8();
          }
        }

        else
        {
          pathIDs5 = [(HIDAppleSiriRemoteDevice *)self pathIDs];
          v44 = [NSNumber numberWithUnsignedChar:v60];
          [pathIDs5 addObject:v44];
        }
      }

      else
      {
        pathIDs6 = [(HIDAppleSiriRemoteDevice *)self pathIDs];
        v42 = [NSNumber numberWithUnsignedChar:v60];
        [pathIDs6 removeObject:v42];
      }
    }

    v68 = 0;
    v69 = &v68;
    v70 = 0x3032000000;
    v71 = sub_10000D78C;
    v72 = sub_10000D79C;
    v76[0] = @"touch";
    touchData7 = [(HIDAppleSiriRemoteDevice *)self touchData];
    v46 = [touchData7 description];
    v77[0] = v46;
    v76[1] = @"fwTimestampMs";
    v47 = [NSNumber numberWithUnsignedInt:v19];
    v77[1] = v47;
    v76[2] = @"fwTimestampDeltaMs";
    v48 = [NSNumber numberWithUnsignedInt:v65];
    v49 = v62 * v61 / v21;
    v77[2] = v48;
    v76[3] = @"inputReportDeltaMs";
    0xF4240 = [NSNumber numberWithUnsignedLongLong:v49 / 0xF4240];
    v77[3] = 0xF4240;
    v76[4] = @"numTouches";
    pathIDs7 = [(HIDAppleSiriRemoteDevice *)self pathIDs];
    v52 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [pathIDs7 count]);
    v77[4] = v52;
    v73 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:5];

    v53 = +[SLGLog sharedInstance];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_10000D7B4;
    v66[3] = &unk_1000BD410;
    v66[4] = &v68;
    [v53 logBlock:v66];

    pathIDs8 = [(HIDAppleSiriRemoteDevice *)self pathIDs];
    v55 = [pathIDs8 count] == 0;

    if (!v55)
    {
      if (15 * ((v65 + 7.5) / 0xF) < 0x10)
      {
        v57 = v49 >= 0x989680 || v63 == 3 || v64 == 3;
        if (!v57 || v49 >= 0x1406F40)
        {
          v58 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
          {
            v59 = v69[5];
            *buf = 138412290;
            v75 = v59;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Delayed multitouch data: %@", buf, 0xCu);
          }
        }
      }

      else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100071968(&v69);
      }
    }

    _Block_object_dispose(&v68, 8);

    return;
  }

  v25 = [NSMutableString alloc];
  touchData8 = [(HIDAppleSiriRemoteDevice *)self touchData];
  v27 = [v25 initWithFormat:@"{length = %lu, bytes = 0x", objc_msgSend(touchData8, "length")];

  touchData9 = [(HIDAppleSiriRemoteDevice *)self touchData];
  v29 = [touchData9 length];

  if (v29)
  {
    v30 = 0;
    do
    {
      [v27 appendFormat:@"%02x", bytes[v30]];
      touchData10 = [(HIDAppleSiriRemoteDevice *)self touchData];
      ++v30;
      v32 = [touchData10 length];
    }

    while (v30 < v32);
  }

  [v27 appendString:@"}"];
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = sub_10000D78C;
  v72 = sub_10000D79C;
  v78 = @"touch";
  v79 = v27;
  v73 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
  v33 = +[SLGLog sharedInstance];
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_10000D7A4;
  v67[3] = &unk_1000BD410;
  v67[4] = &v68;
  [v33 logBlock:v67];

  _Block_object_dispose(&v68, 8);
}

- (void)handleInertialData
{
  if ([(HIDBluetoothDevice *)self state]<= 2)
  {
    groupInertial = [(HIDAppleSiriRemoteDevice *)self groupInertial];
    dispatch_group_wait(groupInertial, 0xFFFFFFFFFFFFFFFFLL);

    inertial = [(HIDAppleSiriRemoteDevice *)self inertial];

    if (inertial)
    {
      inertialData = [(HIDAppleSiriRemoteDevice *)self inertialData];
      v6 = [inertialData description];

      v7 = +[SLGLog sharedInstance];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10000D948;
      v14[3] = &unk_1000BD3E8;
      v15 = v6;
      v8 = v6;
      [v7 logBlock:v14];

      inertial2 = [(HIDAppleSiriRemoteDevice *)self inertial];
      inputReportTimestamp = [(HIDAppleSiriRemoteDevice *)self inputReportTimestamp];
      inertialData2 = [(HIDAppleSiriRemoteDevice *)self inertialData];
      bytes = [inertialData2 bytes];
      inertialData3 = [(HIDAppleSiriRemoteDevice *)self inertialData];
      IOHIDUserDeviceHandleReportWithTimeStamp(inertial2, inputReportTimestamp, bytes, [inertialData3 length]);
    }
  }
}

- (void)handleAudioData:(char *)data dataLength:(int64_t)length
{
  if ([(HIDBluetoothDevice *)self state]> 2)
  {
    return;
  }

  doapAudioRelay = [(HIDAppleSiriRemoteDevice *)self doapAudioRelay];

  if (!doapAudioRelay)
  {
    return;
  }

  productID = [(HIDAppleSiriRemoteDevice *)self productID];
  if (productID - 788 >= 2)
  {
    if (productID == 621 && !length)
    {
      goto LABEL_14;
    }
  }

  else if (data && length >= 5 && !data[4])
  {
LABEL_14:
    v16 = +[SLGLog sharedInstance];
    [v16 logBlock:&stru_1000BD450];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    doapAudioStop = [(HIDAppleSiriRemoteDevice *)selfCopy doapAudioStop];

    if (doapAudioStop)
    {
      doapAudioStop2 = [(HIDAppleSiriRemoteDevice *)selfCopy doapAudioStop];
      dispatch_semaphore_signal(doapAudioStop2);
    }

    audioBuffer = [(HIDAppleSiriRemoteDevice *)selfCopy audioBuffer];
    [audioBuffer removeAllObjects];

    objc_sync_exit(selfCopy);
    goto LABEL_19;
  }

  if (data && length >= 1)
  {
    v9 = +[NSDate date];
    [(HIDAppleSiriRemoteDevice *)self setLastAudioDate:v9];

    v10 = [NSData dataWithBytes:data length:length];
    v11 = +[SLGLog sharedInstance];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10000DC74;
    v22[3] = &unk_1000BD3E8;
    selfCopy = v10;
    v23 = selfCopy;
    [v11 logBlock:v22];

    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    audioBuffer2 = [(HIDAppleSiriRemoteDevice *)selfCopy2 audioBuffer];

    if (audioBuffer2)
    {
      audioBuffer3 = [(HIDAppleSiriRemoteDevice *)selfCopy2 audioBuffer];
      [audioBuffer3 addObject:selfCopy];
    }

    else
    {
      audioBuffer3 = [(HIDAppleSiriRemoteDevice *)selfCopy2 doapAudioRelay];
      [audioBuffer3 sendAudioFrame:selfCopy];
    }

    objc_sync_exit(selfCopy2);
LABEL_19:
  }

  productID2 = [(HIDAppleSiriRemoteDevice *)self productID];
  if (productID2 == 621 || productID2 == 614)
  {
    pathIDs = [(HIDAppleSiriRemoteDevice *)self pathIDs];
    [pathIDs removeAllObjects];
  }
}

- (void)handleDeviceManagementData:(char *)data dataLength:(int64_t)length
{
  if ([(HIDBluetoothDevice *)self state]<= 2)
  {
    groupDeviceManagement = [(HIDAppleSiriRemoteDevice *)self groupDeviceManagement];
    dispatch_group_wait(groupDeviceManagement, 0xFFFFFFFFFFFFFFFFLL);

    device = [(HIDAppleSiriRemoteDevice *)self deviceManagement];
    v8 = mach_absolute_time();
    IOHIDUserDeviceHandleReportWithTimeStamp(device, v8, data, length);
  }
}

- (void)handleInputReportDataV1:(id)v1 reportID:(unsigned __int8)d
{
  dCopy = d;
  v1Copy = v1;
  v7 = [v1Copy length];
  v8 = &v11 - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, (v7 + 1));
  *v8 = dCopy;
  [v1Copy getBytes:v8 + 1 length:{objc_msgSend(v1Copy, "length")}];

  switch(dCopy)
  {
    case 96:
      touchData = [(HIDAppleSiriRemoteDevice *)self touchData];
      [touchData setLength:0];

      touchData2 = [(HIDAppleSiriRemoteDevice *)self touchData];
      [touchData2 appendBytes:v8 length:v7 + 1];

      [(HIDAppleSiriRemoteDevice *)self handleTouchData];
      break;
    case 224:
      [(HIDAppleSiriRemoteDevice *)self handleDeviceManagementData:v8 dataLength:v7 + 1];
      break;
    case 252:
      [(HIDAppleSiriRemoteDevice *)self demultiplexInputReport:v8 reportLength:v7 + 1 reportID:252];
      break;
    default:
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100071A7C();
      }

      break;
  }
}

- (void)handleInputReportDataV2:(id)v2 reportID:(unsigned __int8)d
{
  dCopy = d;
  v2Copy = v2;
  v7 = v2Copy;
  if (dCopy <= 251)
  {
    switch(dCopy)
    {
      case 96:
        v12 = [v2Copy length];
        v13 = __chkstk_darwin();
        v15 = &v24[-v14];
        bzero(&v24[-v14], v13 + 1);
        *v15 = 96;
        [v7 getBytes:v15 + 1 length:{objc_msgSend(v7, "length")}];
        touchData = [(HIDAppleSiriRemoteDevice *)self touchData];
        [touchData setLength:0];

        touchData2 = [(HIDAppleSiriRemoteDevice *)self touchData];
        [touchData2 appendBytes:v15 length:v12 + 1];

        [(HIDAppleSiriRemoteDevice *)self handleTouchData];
        goto LABEL_17;
      case 250:
        v21 = [v2Copy length];
        __chkstk_darwin();
        v23 = &v24[-v22];
        bzero(&v24[-v22], v21);
        [v7 getBytes:v23 length:v21];
        [(HIDAppleSiriRemoteDevice *)self handleAudioData:v23 dataLength:v21];
        goto LABEL_17;
      case 251:
        v26 = 0;
        [v2Copy getBytes:&v26 length:2];
        [(HIDAppleSiriRemoteDevice *)self setButtonData:v26];
        [(HIDAppleSiriRemoteDevice *)self handleButtonData];
        goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (dCopy == 252)
  {
    touchData3 = [(HIDAppleSiriRemoteDevice *)self touchData];
    [touchData3 setLength:0];

    v25 = -5;
    touchData4 = [(HIDAppleSiriRemoteDevice *)self touchData];
    [touchData4 appendBytes:&v25 length:1];

    touchData5 = [(HIDAppleSiriRemoteDevice *)self touchData];
    [touchData5 appendData:v7];

    [(HIDAppleSiriRemoteDevice *)self handleTouchData];
    goto LABEL_17;
  }

  if (dCopy != 253)
  {
    if (dCopy == 254)
    {
      v8 = [v2Copy length];
      v9 = __chkstk_darwin();
      v11 = &v24[-v10];
      bzero(&v24[-v10], v9 + 1);
      *v11 = -32;
      [v7 getBytes:v11 + 1 length:{objc_msgSend(v7, "length")}];
      [(HIDAppleSiriRemoteDevice *)self handleDeviceManagementData:v11 dataLength:v8 + 1];
      goto LABEL_17;
    }

LABEL_12:
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100071A7C();
    }

    goto LABEL_17;
  }

  if ([v2Copy length] == 1)
  {
    [v7 getBytes:&self->_proximityData length:1];
    [(HIDAppleSiriRemoteDevice *)self handleProximityData];
  }

LABEL_17:
}

- (void)extractButtonDataFromReport:(char *)report buttonIndex:(unsigned __int8)index
{
  [(HIDAppleSiriRemoteDevice *)self setButtonData:report[index] & 0xBF];

  [(HIDAppleSiriRemoteDevice *)self handleButtonData];
}

- (void)demultiplexInputReport:(char *)report reportLength:(int64_t)length reportID:(unsigned __int8)d
{
  [(HIDAppleSiriRemoteDevice *)self setButtonData:0];
  touchData = [(HIDAppleSiriRemoteDevice *)self touchData];
  [touchData setLength:0];

  inertialData = [(HIDAppleSiriRemoteDevice *)self inertialData];
  [inertialData setLength:0];

  if (!report)
  {
    return;
  }

  v10 = report[1];
  v11 = v10 >> 5;
  if (v10 >> 5 <= 5)
  {
    if (v11)
    {
      if (v11 != 1)
      {
        return;
      }

      [(HIDAppleSiriRemoteDevice *)self setProximityData:(report[2] >> 6) & 1];
      [(HIDAppleSiriRemoteDevice *)self handleProximityData];
    }

    v12 = (v10 >> 2) & 3;
    [(HIDAppleSiriRemoteDevice *)self extractButtonDataFromReport:report buttonIndex:2];
    if ((v10 & 0x10) != 0 && v12)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100071C58();
      }

      return;
    }

    v30 = -5;
    v29 = 1;
    v28 = 2;
    if ((v10 & 3) > 1)
    {
      if ((v10 & 3) != 2)
      {
        touchData2 = [(HIDAppleSiriRemoteDevice *)self touchData];
        [touchData2 appendBytes:&v30 length:1];

        touchData3 = [(HIDAppleSiriRemoteDevice *)self touchData];
        [touchData3 appendBytes:report + 3 length:length - 3];

        [(HIDAppleSiriRemoteDevice *)self handleTouchData];
        return;
      }

      touchData4 = [(HIDAppleSiriRemoteDevice *)self touchData];
      [touchData4 appendBytes:&v30 length:1];

      touchData5 = [(HIDAppleSiriRemoteDevice *)self touchData];
      [touchData5 appendBytes:report + 3 length:18];

      [(HIDAppleSiriRemoteDevice *)self handleTouchData];
      lengthCopy = 21;
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_18;
      }
    }

    else if ((v10 & 3) != 0)
    {
      touchData6 = [(HIDAppleSiriRemoteDevice *)self touchData];
      [touchData6 appendBytes:&v30 length:1];

      touchData7 = [(HIDAppleSiriRemoteDevice *)self touchData];
      [touchData7 appendBytes:report + 3 length:11];

      [(HIDAppleSiriRemoteDevice *)self handleTouchData];
      lengthCopy = 14;
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      lengthCopy = 3;
      if ((v10 & 0x10) == 0)
      {
LABEL_18:
        if ((v12 - 2) >= 2)
        {
          if (!v12)
          {
            return;
          }

          inertialData2 = [(HIDAppleSiriRemoteDevice *)self inertialData];
          v15 = inertialData2;
          v16 = &v29;
        }

        else
        {
          inertialData2 = [(HIDAppleSiriRemoteDevice *)self inertialData];
          v15 = inertialData2;
          v16 = &v28;
        }

        [inertialData2 appendBytes:v16 length:1];

        inertialData3 = [(HIDAppleSiriRemoteDevice *)self inertialData];
        [inertialData3 appendBytes:&report[lengthCopy] length:length - lengthCopy];

        [(HIDAppleSiriRemoteDevice *)self handleInertialData];
        return;
      }
    }

    [(HIDAppleSiriRemoteDevice *)self handleAudioData:&report[lengthCopy] dataLength:length - lengthCopy];
    lengthCopy = length;
    goto LABEL_18;
  }

  if (v11 == 7)
  {
    if (length == 5)
    {
      if ([(HIDAppleSiriRemoteDevice *)self productID]!= 621)
      {
        return;
      }

      [(HIDAppleSiriRemoteDevice *)self extractButtonDataFromReport:report buttonIndex:2];
      v17 = report + 4;
    }

    else
    {
      if (length != 4 || [(HIDAppleSiriRemoteDevice *)self productID]!= 614)
      {
        return;
      }

      [(HIDAppleSiriRemoteDevice *)self extractButtonDataFromReport:report buttonIndex:2];
      v17 = report + 3;
    }

    v27 = [NSData dataWithBytes:v17 length:1];
    [(HIDAppleSiriRemoteDevice *)self handleInputReportDataV1:v27 reportID:96, v27];
  }

  else
  {
    if (v11 != 6 || length < 3)
    {
      return;
    }

    v25 = [NSData dataWithBytes:report + 2 length:length - 2];
    [(HIDAppleSiriRemoteDevice *)self handleInputReportDataV1:v25 reportID:224, v25];
  }
}

- (void)logHwFwVersions
{
  if ([(HIDBluetoothDevice *)self state]<= 2)
  {
    objc_initWeak(&location, self);
    v3 = dispatch_time(0, 5000000000);
    queue = [(HIDAppleSiriRemoteDevice *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F210;
    block[3] = &unk_1000BD370;
    objc_copyWeak(&v6, &location);
    block[4] = self;
    dispatch_after(v3, queue, block);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)doapAudioWillStart:(id)start
{
  startCopy = start;
  if ([(HIDBluetoothDevice *)self state]< 3)
  {
    objc_initWeak(&location, self);
    queue = [(HIDAppleSiriRemoteDevice *)self queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000F578;
    v9[3] = &unk_1000BD478;
    objc_copyWeak(&v11, &location);
    v10 = startCopy;
    dispatch_async(queue, v9);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = [NSString stringWithFormat:@"Apple Siri Remote stopped (disconnected)"];
    v13 = NSLocalizedDescriptionKey;
    v14 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v7 = [NSError errorWithDomain:NSMachErrorDomain code:-536870185 userInfo:v6];

    (*(startCopy + 2))(startCopy, v7);
  }
}

- (void)waitForSiriAudioToStop:(id)stop
{
  stopCopy = stop;
  if ([(HIDBluetoothDevice *)self state]>= 3)
  {
    v5 = [NSString stringWithFormat:@"Apple Siri Remote stopped (disconnected)"];
    v44 = NSLocalizedDescriptionKey;
    v45 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v7 = [NSError errorWithDomain:NSMachErrorDomain code:-536870185 userInfo:v6];

    stopCopy[2](stopCopy, v7);
    doapAudioStart = [(HIDAppleSiriRemoteDevice *)self doapAudioStart];
    dispatch_semaphore_signal(doapAudioStart);

    goto LABEL_18;
  }

  lastAudioDate = [(HIDAppleSiriRemoteDevice *)self lastAudioDate];
  [lastAudioDate timeIntervalSinceNow];
  v11 = fabs(v10);

  if (v11 >= 0.105)
  {
    v25 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      lastAudioDate2 = [(HIDAppleSiriRemoteDevice *)self lastAudioDate];
      [lastAudioDate2 timeIntervalSinceNow];
      *buf = 134217984;
      v43 = fabs(v28) * 1000.0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Have not received audio data for %f ms. Stop Siri session.", buf, 0xCu);
    }

    goto LABEL_17;
  }

  doapAudioStop = [(HIDAppleSiriRemoteDevice *)self doapAudioStop];

  if (doapAudioStop)
  {
    lastAudioDate3 = [(HIDAppleSiriRemoteDevice *)self lastAudioDate];
    [lastAudioDate3 timeIntervalSinceNow];
    v15 = v14;

    doapAudioStop2 = [(HIDAppleSiriRemoteDevice *)self doapAudioStop];
    v17 = dispatch_time(0, 1000000 * vcvtpd_s64_f64((v15 + 0.105) * 1000.0));
    v18 = dispatch_semaphore_wait(doapAudioStop2, v17);

    v19 = qword_1000DDBC8;
    v20 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v20)
      {
        v21 = v19;
        lastAudioDate4 = [(HIDAppleSiriRemoteDevice *)self lastAudioDate];
        [lastAudioDate4 timeIntervalSinceNow];
        *buf = 134217984;
        v43 = fabs(v23) * 1000.0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received Siri audio data %f ms ago.", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      queue = [(HIDAppleSiriRemoteDevice *)self queue];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100010044;
      v37[3] = &unk_1000BD478;
      objc_copyWeak(&v39, buf);
      v38 = stopCopy;
      dispatch_async(queue, v37);

      objc_destroyWeak(&v39);
      objc_destroyWeak(buf);
      goto LABEL_18;
    }

    if (v20)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received empty audio input report. Stop Siri session.", buf, 2u);
    }

LABEL_17:
    stopCopy[2](stopCopy, 0);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(HIDAppleSiriRemoteDevice *)selfCopy setDoapAudioStop:0];
    v35 = objc_alloc_init(NSMutableArray);
    [(HIDAppleSiriRemoteDevice *)selfCopy setAudioBuffer:v35];

    objc_sync_exit(selfCopy);
    doapAudioStart2 = [(HIDAppleSiriRemoteDevice *)selfCopy doapAudioStart];
    dispatch_semaphore_signal(doapAudioStart2);

    goto LABEL_18;
  }

  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100071DCC();
  }

  v40 = NSLocalizedDescriptionKey;
  v41 = @"No doapAudioStop semaphore";
  v29 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v30 = [NSError errorWithDomain:NSMachErrorDomain code:-536870165 userInfo:v29];

  stopCopy[2](stopCopy, v30);
  doapAudioStart3 = [(HIDAppleSiriRemoteDevice *)self doapAudioStart];
  dispatch_semaphore_signal(doapAudioStart3);

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v33 = objc_alloc_init(NSMutableArray);
  [(HIDAppleSiriRemoteDevice *)selfCopy2 setAudioBuffer:v33];

  objc_sync_exit(selfCopy2);
LABEL_18:
}

- (void)doapAudioDidStop:(id)stop
{
  stopCopy = stop;
  if ([(HIDBluetoothDevice *)self state]< 3)
  {
    objc_initWeak(&location, self);
    queue = [(HIDAppleSiriRemoteDevice *)self queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100010288;
    v10[3] = &unk_1000BD478;
    objc_copyWeak(&v12, &location);
    v11 = stopCopy;
    dispatch_async(queue, v10);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = [NSString stringWithFormat:@"Apple Siri Remote stopped (disconnected)"];
    v14 = NSLocalizedDescriptionKey;
    v15 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v7 = [NSError errorWithDomain:NSMachErrorDomain code:-536870185 userInfo:v6];

    (*(stopCopy + 2))(stopCopy, v7);
    doapAudioStart = [(HIDAppleSiriRemoteDevice *)self doapAudioStart];
    dispatch_semaphore_signal(doapAudioStart);
  }
}

@end