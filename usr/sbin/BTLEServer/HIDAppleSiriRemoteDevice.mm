@interface HIDAppleSiriRemoteDevice
+ (id)getAudioHIDReportDescriptor;
+ (id)getButtonsHIDReportDescriptor:(unsigned __int16)a3;
+ (id)getDeviceManagementHIDReportDescriptor;
+ (id)getInertialHIDReportDescriptor;
+ (id)getInfraredHIDReportDescriptor;
+ (id)getProximityHIDReportDescriptor;
+ (id)getRadioHIDReportDescriptor;
+ (id)getTouchHIDReportDescriptor;
+ (id)properties:(id)a3 locationIdOffset:(unsigned int)a4 hidDescriptor:(id)a5 extendedData:(id)a6;
- (BOOL)matchInstanceIDInHidEventDriver:(unsigned int)a3;
- (HIDAppleSiriRemoteDevice)initWithProperties:(id)a3 reports:(id)a4;
- (id)desiredConnectionParameters;
- (void)appleMultitouchDeviceArrived:(unsigned int)a3;
- (void)clearAppleMultitouchDeviceNotification;
- (void)clearButtonInterestNotification;
- (void)clearDeviceManagementNotification;
- (void)dealloc;
- (void)demultiplexInputReport:(char *)a3 reportLength:(int64_t)a4 reportID:(unsigned __int8)a5;
- (void)deviceMgtDriverArrived:(unsigned int)a3;
- (void)doapAudioDidStop:(id)a3;
- (void)doapAudioWillStart:(id)a3;
- (void)extractButtonDataFromReport:(char *)a3 buttonIndex:(unsigned __int8)a4;
- (void)handleAudioData:(char *)a3 dataLength:(int64_t)a4;
- (void)handleButtonData;
- (void)handleDeviceManagementData:(char *)a3 dataLength:(int64_t)a4;
- (void)handleInertialData;
- (void)handleInputReportDataV1:(id)a3 reportID:(unsigned __int8)a4;
- (void)handleInputReportDataV2:(id)a3 reportID:(unsigned __int8)a4;
- (void)handleProximityData;
- (void)handleTouchData;
- (void)logHwFwVersions;
- (void)logTouchData;
- (void)setNormalPeripheralLatency;
- (void)setSleepPeripheralLatency;
- (void)setZeroPeripheralLatency;
- (void)start;
- (void)stop;
- (void)verifyButtonDriverOpenedByEventSystem:(unsigned int)a3;
- (void)waitForSiriAudioToStop:(id)a3;
@end

@implementation HIDAppleSiriRemoteDevice

+ (id)getTouchHIDReportDescriptor
{
  v4[0] = xmmword_100091D38;
  *(v4 + 15) = *(&xmmword_100091D38 + 15);
  v2 = [NSData dataWithBytes:v4 length:31];

  return v2;
}

+ (id)getButtonsHIDReportDescriptor:(unsigned __int16)a3
{
  if ((a3 & 0xFFFE) == 0x314)
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

+ (id)properties:(id)a3 locationIdOffset:(unsigned int)a4 hidDescriptor:(id)a5 extendedData:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v9 mutableCopy];
  v13 = v12;
  if (v10)
  {
    [v12 setObject:v10 forKeyedSubscript:@"ReportDescriptor"];
  }

  if (v11)
  {
    [v13 setObject:v11 forKeyedSubscript:@"ExtendedData"];
  }

  v14 = [v9 objectForKeyedSubscript:@"LocationID"];
  v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v14 unsignedLongValue] + a4);
  [v13 setObject:v15 forKeyedSubscript:@"LocationID"];

  return v13;
}

- (HIDAppleSiriRemoteDevice)initWithProperties:(id)a3 reports:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v16 = [(HIDBluetoothDevice *)&v60 initWithProperties:v6 reports:v7];
  v17 = v16;
  if (v16)
  {
    v18 = dword_1000DDA40++;
    v16->_instanceID = v18;
    v16->_firstButton = 1;
    v19 = [[NSMutableDictionary alloc] initWithDictionary:v6];
    v20 = [NSNumber numberWithUnsignedInt:v17->_instanceID];
    [v19 setObject:v20 forKeyedSubscript:@"InstanceID"];

    objc_storeStrong(&v17->_properties, v19);
    v21 = [v6 objectForKeyedSubscript:@"ProductID"];
    v17->_productID = [v21 unsignedIntValue];

    v22 = [v6 objectForKeyedSubscript:@"SerialNumber"];
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

    v53 = [(HIDBluetoothDevice *)v17 allocHIDQueue];
    queue = v17->_queue;
    v17->_queue = v53;

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

  v11 = [(HIDAppleSiriRemoteDevice *)self doapAudioStart];
  dispatch_semaphore_signal(v11);

  v12 = self;
  objc_sync_enter(v12);
  v13 = [(HIDAppleSiriRemoteDevice *)v12 doapAudioStop];

  if (v13)
  {
    v14 = [(HIDAppleSiriRemoteDevice *)v12 doapAudioStop];
    dispatch_semaphore_signal(v14);
  }

  objc_sync_exit(v12);

  [(HIDAppleSiriRemoteDevice *)v12 setButtonData:0];
  [(HIDAppleSiriRemoteDevice *)v12 handleButtonData];
  if ([(HIDAppleSiriRemoteDevice *)v12 proximityData])
  {
    [(HIDAppleSiriRemoteDevice *)v12 setProximityData:0];
    [(HIDAppleSiriRemoteDevice *)v12 handleProximityData];
  }

  v15 = [(HIDAppleSiriRemoteDevice *)v12 doapAudioRelay];
  [v15 invalidate];

  [(HIDAppleSiriRemoteDevice *)v12 setDoapAudioRelay:0];
  v20.receiver = v12;
  v20.super_class = HIDAppleSiriRemoteDevice;
  [(HIDBluetoothDevice *)&v20 stop];
  objc_initWeak(&location, v12);
  v16 = [(HIDAppleSiriRemoteDevice *)v12 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000097E0;
  block[3] = &unk_1000BD370;
  objc_copyWeak(&v18, &location);
  block[4] = v12;
  dispatch_async(v16, block);

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
  v11 = [(HIDAppleSiriRemoteDevice *)self groupDeviceManagement];
  dispatch_group_enter(v11);

  v12 = [(HIDAppleSiriRemoteDevice *)self groupTouch];
  dispatch_group_enter(v12);

  v13 = [(HIDAppleSiriRemoteDevice *)self groupInertial];
  dispatch_group_enter(v13);

  v14 = [(HIDAppleSiriRemoteDevice *)self groupProximity];
  dispatch_group_enter(v14);

  v15 = [(HIDAppleSiriRemoteDevice *)self groupInit];
  v16 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A09C;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_group_async(v15, v16, block);

  v17 = [(HIDAppleSiriRemoteDevice *)self groupInit];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10000A408;
  v34[3] = &unk_1000BD398;
  v34[4] = self;
  dispatch_group_async(v17, v16, v34);

  v18 = [(HIDAppleSiriRemoteDevice *)self groupInit];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10000A6F0;
  v33[3] = &unk_1000BD398;
  v33[4] = self;
  dispatch_group_async(v18, v16, v33);

  if ([(HIDAppleSiriRemoteDevice *)self productID]== 788 || [(HIDAppleSiriRemoteDevice *)self productID]== 789)
  {
    if (byte_1000DDBC0 == 1)
    {
      [(HIDAppleSiriRemoteDevice *)self instanceID];
      kdebug_trace();
    }

    v19 = [(HIDAppleSiriRemoteDevice *)self groupInertial];
    dispatch_group_leave(v19);

    if (byte_1000DDBC0 == 1)
    {
      [(HIDAppleSiriRemoteDevice *)self instanceID];
      kdebug_trace();
    }
  }

  else
  {
    v20 = [(HIDAppleSiriRemoteDevice *)self groupInit];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10000A9DC;
    v32[3] = &unk_1000BD398;
    v32[4] = self;
    dispatch_group_async(v20, v16, v32);
  }

  v21 = [(HIDAppleSiriRemoteDevice *)self groupInit];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10000AC04;
  v31[3] = &unk_1000BD398;
  v31[4] = self;
  dispatch_group_async(v21, v16, v31);

  v22 = [(HIDAppleSiriRemoteDevice *)self groupInit];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000AE2C;
  v30[3] = &unk_1000BD398;
  v30[4] = self;
  dispatch_group_async(v22, v16, v30);

  if ([(HIDAppleSiriRemoteDevice *)self productID]== 614 || [(HIDAppleSiriRemoteDevice *)self productID]== 621)
  {
    objc_initWeak(&location, self);
    v23 = [(HIDAppleSiriRemoteDevice *)self groupStart];
    v24 = [(HIDAppleSiriRemoteDevice *)self queue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10000B64C;
    v27[3] = &unk_1000BD3C0;
    objc_copyWeak(&v28, &location);
    dispatch_group_async(v23, v24, v27);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  v25 = [(HIDAppleSiriRemoteDevice *)self groupStart];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000B770;
  v26[3] = &unk_1000BD398;
  v26[4] = self;
  dispatch_group_async(v25, v16, v26);
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

- (BOOL)matchInstanceIDInHidEventDriver:(unsigned int)a3
{
  CFProperty = IORegistryEntryCreateCFProperty(a3, @"SerialNumber", kCFAllocatorDefault, 0);
  if (CFProperty && (-[HIDAppleSiriRemoteDevice serialNumber](self, "serialNumber"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqualToString:CFProperty], v6, v7))
  {
    parent = 0;
    ParentEntry = IORegistryEntryGetParentEntry(a3, "IOService", &parent);
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

- (void)verifyButtonDriverOpenedByEventSystem:(unsigned int)a3
{
  CFProperty = IORegistryEntryCreateCFProperty(a3, @"DeviceOpenedByEventSystem", kCFAllocatorDefault, 0);
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
    v6 = self;
    objc_sync_enter(v6);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [(HIDAppleSiriRemoteDevice *)v6 cachedButtonsAndTimestamps];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v8)
    {
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [v11 objectAtIndexedSubscript:0];
          v13 = [v11 objectAtIndexedSubscript:1];
          v14 = qword_1000DDBC8;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v12 unsignedIntValue];
            *buf = 67109120;
            v22 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Send cached button 0x%04X", buf, 8u);
          }

          -[HIDAppleSiriRemoteDevice sendButtonDataToUserDevice:withTimestamp:](v6, "sendButtonDataToUserDevice:withTimestamp:", [v12 unsignedIntValue], objc_msgSend(v13, "unsignedLongLongValue"));
        }

        v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v8);
    }

    [(HIDAppleSiriRemoteDevice *)v6 setCachedButtonsAndTimestamps:0];
    objc_sync_exit(v6);

    CFProperty = v16;
  }
}

- (void)deviceMgtDriverArrived:(unsigned int)a3
{
  v5 = IOIteratorNext(a3);
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

        v8 = [(HIDBluetoothDevice *)self peripheral];
        v9 = [CBUUID UUIDWithString:@"181E"];
        v10 = [v8 isSupportingService:v9];

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

      v6 = IOIteratorNext(a3);
    }

    while (v6);
  }
}

- (void)appleMultitouchDeviceArrived:(unsigned int)a3
{
  for (i = IOIteratorNext(a3); i; i = IOIteratorNext(a3))
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
    v11 = [(HIDBluetoothDevice *)&v23 desiredConnectionParameters];
    [v11 setPreferredPeripheralLatency:{-[HIDAppleSiriRemoteDevice latency](self, "latency")}];
    [v11 setMaxPeripheralLatency:{-[HIDAppleSiriRemoteDevice latency](self, "latency")}];
    [v11 setMinCELength:6];
    [v11 setMaxDeferment:1];
    LODWORD(v12) = 15.0;
    [v11 setMinInterval:v12];
    LODWORD(v13) = 15.0;
    [v11 setPreferredInterval:v13];
    v14 = [(HIDAppleSiriRemoteDevice *)self latency];
    if (v14)
    {
      if (v14 == 199)
      {
        v15 = ([v11 preferredPeripheralLatency] + 1);
        [v11 preferredInterval];
        v17 = ((v16 * v15) * 4.0) + 1.0;
      }

      else
      {
        [v11 preferredInterval];
        v17 = (v19 * 5.0) * ([v11 preferredPeripheralLatency] + 1);
      }

      v18 = v17;
    }

    else
    {
      v18 = 2000;
    }

    [v11 setTimeout:v18];
    v20 = +[NSUserDefaults standardUserDefaults];
    v21 = [v20 objectForKey:@"ConnectionTimeout"];

    if (v21)
    {
      [v11 setTimeout:{objc_msgSend(v20, "integerForKey:", @"ConnectionTimeout"}];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setSleepPeripheralLatency
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100071704(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [(HIDAppleSiriRemoteDevice *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C280;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(v11, block);
}

- (void)setNormalPeripheralLatency
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007177C(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [(HIDAppleSiriRemoteDevice *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C3E0;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(v11, block);
}

- (void)setZeroPeripheralLatency
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000717F4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [(HIDAppleSiriRemoteDevice *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C5B4;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(v11, block);
}

- (void)handleButtonData
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007186C(v3, self);
  }

  v4 = [(HIDAppleSiriRemoteDevice *)self cachedButtonsAndTimestamps];

  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(HIDAppleSiriRemoteDevice *)v5 cachedButtonsAndTimestamps];

    if (v6)
    {
      v7 = qword_1000DDBC8;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v14 = [(HIDAppleSiriRemoteDevice *)v5 buttonData];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cache button 0x%04X", buf, 8u);
      }

      v8 = [(HIDAppleSiriRemoteDevice *)v5 cachedButtonsAndTimestamps];
      v9 = [NSNumber numberWithUnsignedShort:[(HIDAppleSiriRemoteDevice *)v5 buttonData]];
      v10 = [NSNumber numberWithUnsignedLongLong:[(HIDAppleSiriRemoteDevice *)v5 inputReportTimestamp]];
      v12[1] = v10;
      v11 = [NSArray arrayWithObjects:v12 count:2];
      [v8 addObject:v11];
    }

    else
    {
      [(HIDAppleSiriRemoteDevice *)v5 sendButtonDataToUserDevice:[(HIDAppleSiriRemoteDevice *)v5 buttonData] withTimestamp:[(HIDAppleSiriRemoteDevice *)v5 inputReportTimestamp]];
    }

    objc_sync_exit(v5);
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
    v3 = [(HIDAppleSiriRemoteDevice *)self groupProximity];
    dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

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
    v7 = [(HIDAppleSiriRemoteDevice *)self proximity];
    IOHIDUserDeviceHandleReportWithTimeStamp(v7, [(HIDAppleSiriRemoteDevice *)self inputReportTimestamp], report, 2);
  }
}

- (void)handleTouchData
{
  if ([(HIDBluetoothDevice *)self state]<= 2)
  {
    v3 = [(HIDAppleSiriRemoteDevice *)self touchData];
    v4 = [v3 bytes];

    if (*v4 == 96)
    {
      if (byte_1000DDBC0 == 1)
      {
        [(HIDAppleSiriRemoteDevice *)self instanceID];
        kdebug_trace();
      }

      v5 = [(HIDAppleSiriRemoteDevice *)self groupTouch];
      dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

      v6 = [(HIDAppleSiriRemoteDevice *)self touch];
      v7 = [(HIDAppleSiriRemoteDevice *)self inputReportTimestamp];
      v8 = [(HIDAppleSiriRemoteDevice *)self touchData];
      IOHIDUserDeviceHandleReportWithTimeStamp(v6, v7, v4, [v8 length]);

      if (byte_1000DDBC0 == 1)
      {
        [(HIDAppleSiriRemoteDevice *)self instanceID];
        kdebug_trace();
      }
    }

    else
    {
      v9 = [(HIDAppleSiriRemoteDevice *)self groupTouch];
      dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);

      v10 = [(HIDAppleSiriRemoteDevice *)self touch];
      v11 = [(HIDAppleSiriRemoteDevice *)self inputReportTimestamp];
      v12 = [(HIDAppleSiriRemoteDevice *)self touchData];
      IOHIDUserDeviceHandleReportWithTimeStamp(v10, v11, v4, [v12 length]);
    }

    [(HIDAppleSiriRemoteDevice *)self logTouchData];
  }
}

- (void)logTouchData
{
  v3 = [(HIDAppleSiriRemoteDevice *)self touchData];
  v4 = [v3 bytes];

  v5 = [(HIDAppleSiriRemoteDevice *)self touchData];
  if ([v5 length] == 12)
  {

    goto LABEL_4;
  }

  v6 = [(HIDAppleSiriRemoteDevice *)self touchData];
  v7 = [v6 length];

  if (v7 == 19)
  {
LABEL_4:
    v8 = v4[11];
    v9 = [(HIDAppleSiriRemoteDevice *)self touchData];
    if ([v9 length] == 19)
    {
      v63 = v4[18] & 7;
    }

    else
    {
      v63 = 0;
    }

    if ((v4[11] & 8) != 0)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    v11 = [(HIDAppleSiriRemoteDevice *)self touchData];
    if ([v11 length] == 19)
    {
      if ((v4[18] & 8) != 0)
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

    v13 = v4[2];
    v14 = v4[3];
    v15 = [(HIDAppleSiriRemoteDevice *)self inputReportTimestamp];
    v16 = qword_1000DDA50;
    v17 = [(HIDAppleSiriRemoteDevice *)self pathIDs];
    v18 = v8 & 7;
    v19 = (v13 >> 1) | (v14 << 7);
    if ([v17 count])
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

    v20 = v15 - v16;
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
      v22 = [(HIDAppleSiriRemoteDevice *)self pathIDs];
      v23 = [NSNumber numberWithUnsignedChar:v10];
      v24 = [v22 containsObject:v23];

      if (v24)
      {
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_1000718F8();
        }

        goto LABEL_36;
      }

      v34 = [(HIDAppleSiriRemoteDevice *)self pathIDs];
      v35 = [NSNumber numberWithUnsignedChar:v10];
      [v34 addObject:v35];
    }

    else
    {
      v34 = [(HIDAppleSiriRemoteDevice *)self pathIDs];
      v35 = [NSNumber numberWithUnsignedChar:v10];
      [v34 removeObject:v35];
    }

LABEL_36:
    v36 = [(HIDAppleSiriRemoteDevice *)self touchData];
    v37 = [v36 length] == 19;

    if (v37 && v63 != 4)
    {
      if (v63 == 3)
      {
        v38 = [(HIDAppleSiriRemoteDevice *)self pathIDs];
        v39 = [NSNumber numberWithUnsignedChar:v60];
        v40 = [v38 containsObject:v39];

        if (v40)
        {
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            sub_1000718F8();
          }
        }

        else
        {
          v43 = [(HIDAppleSiriRemoteDevice *)self pathIDs];
          v44 = [NSNumber numberWithUnsignedChar:v60];
          [v43 addObject:v44];
        }
      }

      else
      {
        v41 = [(HIDAppleSiriRemoteDevice *)self pathIDs];
        v42 = [NSNumber numberWithUnsignedChar:v60];
        [v41 removeObject:v42];
      }
    }

    v68 = 0;
    v69 = &v68;
    v70 = 0x3032000000;
    v71 = sub_10000D78C;
    v72 = sub_10000D79C;
    v76[0] = @"touch";
    v45 = [(HIDAppleSiriRemoteDevice *)self touchData];
    v46 = [v45 description];
    v77[0] = v46;
    v76[1] = @"fwTimestampMs";
    v47 = [NSNumber numberWithUnsignedInt:v19];
    v77[1] = v47;
    v76[2] = @"fwTimestampDeltaMs";
    v48 = [NSNumber numberWithUnsignedInt:v65];
    v49 = v62 * v61 / v21;
    v77[2] = v48;
    v76[3] = @"inputReportDeltaMs";
    v50 = [NSNumber numberWithUnsignedLongLong:v49 / 0xF4240];
    v77[3] = v50;
    v76[4] = @"numTouches";
    v51 = [(HIDAppleSiriRemoteDevice *)self pathIDs];
    v52 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v51 count]);
    v77[4] = v52;
    v73 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:5];

    v53 = +[SLGLog sharedInstance];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_10000D7B4;
    v66[3] = &unk_1000BD410;
    v66[4] = &v68;
    [v53 logBlock:v66];

    v54 = [(HIDAppleSiriRemoteDevice *)self pathIDs];
    v55 = [v54 count] == 0;

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
  v26 = [(HIDAppleSiriRemoteDevice *)self touchData];
  v27 = [v25 initWithFormat:@"{length = %lu, bytes = 0x", objc_msgSend(v26, "length")];

  v28 = [(HIDAppleSiriRemoteDevice *)self touchData];
  v29 = [v28 length];

  if (v29)
  {
    v30 = 0;
    do
    {
      [v27 appendFormat:@"%02x", v4[v30]];
      v31 = [(HIDAppleSiriRemoteDevice *)self touchData];
      ++v30;
      v32 = [v31 length];
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
    v3 = [(HIDAppleSiriRemoteDevice *)self groupInertial];
    dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

    v4 = [(HIDAppleSiriRemoteDevice *)self inertial];

    if (v4)
    {
      v5 = [(HIDAppleSiriRemoteDevice *)self inertialData];
      v6 = [v5 description];

      v7 = +[SLGLog sharedInstance];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10000D948;
      v14[3] = &unk_1000BD3E8;
      v15 = v6;
      v8 = v6;
      [v7 logBlock:v14];

      v9 = [(HIDAppleSiriRemoteDevice *)self inertial];
      v10 = [(HIDAppleSiriRemoteDevice *)self inputReportTimestamp];
      v11 = [(HIDAppleSiriRemoteDevice *)self inertialData];
      v12 = [v11 bytes];
      v13 = [(HIDAppleSiriRemoteDevice *)self inertialData];
      IOHIDUserDeviceHandleReportWithTimeStamp(v9, v10, v12, [v13 length]);
    }
  }
}

- (void)handleAudioData:(char *)a3 dataLength:(int64_t)a4
{
  if ([(HIDBluetoothDevice *)self state]> 2)
  {
    return;
  }

  v7 = [(HIDAppleSiriRemoteDevice *)self doapAudioRelay];

  if (!v7)
  {
    return;
  }

  v8 = [(HIDAppleSiriRemoteDevice *)self productID];
  if (v8 - 788 >= 2)
  {
    if (v8 == 621 && !a4)
    {
      goto LABEL_14;
    }
  }

  else if (a3 && a4 >= 5 && !a3[4])
  {
LABEL_14:
    v16 = +[SLGLog sharedInstance];
    [v16 logBlock:&stru_1000BD450];

    v12 = self;
    objc_sync_enter(v12);
    v17 = [(HIDAppleSiriRemoteDevice *)v12 doapAudioStop];

    if (v17)
    {
      v18 = [(HIDAppleSiriRemoteDevice *)v12 doapAudioStop];
      dispatch_semaphore_signal(v18);
    }

    v19 = [(HIDAppleSiriRemoteDevice *)v12 audioBuffer];
    [v19 removeAllObjects];

    objc_sync_exit(v12);
    goto LABEL_19;
  }

  if (a3 && a4 >= 1)
  {
    v9 = +[NSDate date];
    [(HIDAppleSiriRemoteDevice *)self setLastAudioDate:v9];

    v10 = [NSData dataWithBytes:a3 length:a4];
    v11 = +[SLGLog sharedInstance];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10000DC74;
    v22[3] = &unk_1000BD3E8;
    v12 = v10;
    v23 = v12;
    [v11 logBlock:v22];

    v13 = self;
    objc_sync_enter(v13);
    v14 = [(HIDAppleSiriRemoteDevice *)v13 audioBuffer];

    if (v14)
    {
      v15 = [(HIDAppleSiriRemoteDevice *)v13 audioBuffer];
      [v15 addObject:v12];
    }

    else
    {
      v15 = [(HIDAppleSiriRemoteDevice *)v13 doapAudioRelay];
      [v15 sendAudioFrame:v12];
    }

    objc_sync_exit(v13);
LABEL_19:
  }

  v20 = [(HIDAppleSiriRemoteDevice *)self productID];
  if (v20 == 621 || v20 == 614)
  {
    v21 = [(HIDAppleSiriRemoteDevice *)self pathIDs];
    [v21 removeAllObjects];
  }
}

- (void)handleDeviceManagementData:(char *)a3 dataLength:(int64_t)a4
{
  if ([(HIDBluetoothDevice *)self state]<= 2)
  {
    v7 = [(HIDAppleSiriRemoteDevice *)self groupDeviceManagement];
    dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);

    device = [(HIDAppleSiriRemoteDevice *)self deviceManagement];
    v8 = mach_absolute_time();
    IOHIDUserDeviceHandleReportWithTimeStamp(device, v8, a3, a4);
  }
}

- (void)handleInputReportDataV1:(id)a3 reportID:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 length];
  v8 = &v11 - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, (v7 + 1));
  *v8 = v4;
  [v6 getBytes:v8 + 1 length:{objc_msgSend(v6, "length")}];

  switch(v4)
  {
    case 96:
      v9 = [(HIDAppleSiriRemoteDevice *)self touchData];
      [v9 setLength:0];

      v10 = [(HIDAppleSiriRemoteDevice *)self touchData];
      [v10 appendBytes:v8 length:v7 + 1];

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

- (void)handleInputReportDataV2:(id)a3 reportID:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4 <= 251)
  {
    switch(v4)
    {
      case 96:
        v12 = [v6 length];
        v13 = __chkstk_darwin();
        v15 = &v24[-v14];
        bzero(&v24[-v14], v13 + 1);
        *v15 = 96;
        [v7 getBytes:v15 + 1 length:{objc_msgSend(v7, "length")}];
        v16 = [(HIDAppleSiriRemoteDevice *)self touchData];
        [v16 setLength:0];

        v17 = [(HIDAppleSiriRemoteDevice *)self touchData];
        [v17 appendBytes:v15 length:v12 + 1];

        [(HIDAppleSiriRemoteDevice *)self handleTouchData];
        goto LABEL_17;
      case 250:
        v21 = [v6 length];
        __chkstk_darwin();
        v23 = &v24[-v22];
        bzero(&v24[-v22], v21);
        [v7 getBytes:v23 length:v21];
        [(HIDAppleSiriRemoteDevice *)self handleAudioData:v23 dataLength:v21];
        goto LABEL_17;
      case 251:
        v26 = 0;
        [v6 getBytes:&v26 length:2];
        [(HIDAppleSiriRemoteDevice *)self setButtonData:v26];
        [(HIDAppleSiriRemoteDevice *)self handleButtonData];
        goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (v4 == 252)
  {
    v18 = [(HIDAppleSiriRemoteDevice *)self touchData];
    [v18 setLength:0];

    v25 = -5;
    v19 = [(HIDAppleSiriRemoteDevice *)self touchData];
    [v19 appendBytes:&v25 length:1];

    v20 = [(HIDAppleSiriRemoteDevice *)self touchData];
    [v20 appendData:v7];

    [(HIDAppleSiriRemoteDevice *)self handleTouchData];
    goto LABEL_17;
  }

  if (v4 != 253)
  {
    if (v4 == 254)
    {
      v8 = [v6 length];
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

  if ([v6 length] == 1)
  {
    [v7 getBytes:&self->_proximityData length:1];
    [(HIDAppleSiriRemoteDevice *)self handleProximityData];
  }

LABEL_17:
}

- (void)extractButtonDataFromReport:(char *)a3 buttonIndex:(unsigned __int8)a4
{
  [(HIDAppleSiriRemoteDevice *)self setButtonData:a3[a4] & 0xBF];

  [(HIDAppleSiriRemoteDevice *)self handleButtonData];
}

- (void)demultiplexInputReport:(char *)a3 reportLength:(int64_t)a4 reportID:(unsigned __int8)a5
{
  [(HIDAppleSiriRemoteDevice *)self setButtonData:0];
  v8 = [(HIDAppleSiriRemoteDevice *)self touchData];
  [v8 setLength:0];

  v9 = [(HIDAppleSiriRemoteDevice *)self inertialData];
  [v9 setLength:0];

  if (!a3)
  {
    return;
  }

  v10 = a3[1];
  v11 = v10 >> 5;
  if (v10 >> 5 <= 5)
  {
    if (v11)
    {
      if (v11 != 1)
      {
        return;
      }

      [(HIDAppleSiriRemoteDevice *)self setProximityData:(a3[2] >> 6) & 1];
      [(HIDAppleSiriRemoteDevice *)self handleProximityData];
    }

    v12 = (v10 >> 2) & 3;
    [(HIDAppleSiriRemoteDevice *)self extractButtonDataFromReport:a3 buttonIndex:2];
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
        v23 = [(HIDAppleSiriRemoteDevice *)self touchData];
        [v23 appendBytes:&v30 length:1];

        v24 = [(HIDAppleSiriRemoteDevice *)self touchData];
        [v24 appendBytes:a3 + 3 length:a4 - 3];

        [(HIDAppleSiriRemoteDevice *)self handleTouchData];
        return;
      }

      v18 = [(HIDAppleSiriRemoteDevice *)self touchData];
      [v18 appendBytes:&v30 length:1];

      v19 = [(HIDAppleSiriRemoteDevice *)self touchData];
      [v19 appendBytes:a3 + 3 length:18];

      [(HIDAppleSiriRemoteDevice *)self handleTouchData];
      v13 = 21;
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_18;
      }
    }

    else if ((v10 & 3) != 0)
    {
      v21 = [(HIDAppleSiriRemoteDevice *)self touchData];
      [v21 appendBytes:&v30 length:1];

      v22 = [(HIDAppleSiriRemoteDevice *)self touchData];
      [v22 appendBytes:a3 + 3 length:11];

      [(HIDAppleSiriRemoteDevice *)self handleTouchData];
      v13 = 14;
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v13 = 3;
      if ((v10 & 0x10) == 0)
      {
LABEL_18:
        if ((v12 - 2) >= 2)
        {
          if (!v12)
          {
            return;
          }

          v14 = [(HIDAppleSiriRemoteDevice *)self inertialData];
          v15 = v14;
          v16 = &v29;
        }

        else
        {
          v14 = [(HIDAppleSiriRemoteDevice *)self inertialData];
          v15 = v14;
          v16 = &v28;
        }

        [v14 appendBytes:v16 length:1];

        v20 = [(HIDAppleSiriRemoteDevice *)self inertialData];
        [v20 appendBytes:&a3[v13] length:a4 - v13];

        [(HIDAppleSiriRemoteDevice *)self handleInertialData];
        return;
      }
    }

    [(HIDAppleSiriRemoteDevice *)self handleAudioData:&a3[v13] dataLength:a4 - v13];
    v13 = a4;
    goto LABEL_18;
  }

  if (v11 == 7)
  {
    if (a4 == 5)
    {
      if ([(HIDAppleSiriRemoteDevice *)self productID]!= 621)
      {
        return;
      }

      [(HIDAppleSiriRemoteDevice *)self extractButtonDataFromReport:a3 buttonIndex:2];
      v17 = a3 + 4;
    }

    else
    {
      if (a4 != 4 || [(HIDAppleSiriRemoteDevice *)self productID]!= 614)
      {
        return;
      }

      [(HIDAppleSiriRemoteDevice *)self extractButtonDataFromReport:a3 buttonIndex:2];
      v17 = a3 + 3;
    }

    v27 = [NSData dataWithBytes:v17 length:1];
    [(HIDAppleSiriRemoteDevice *)self handleInputReportDataV1:v27 reportID:96, v27];
  }

  else
  {
    if (v11 != 6 || a4 < 3)
    {
      return;
    }

    v25 = [NSData dataWithBytes:a3 + 2 length:a4 - 2];
    [(HIDAppleSiriRemoteDevice *)self handleInputReportDataV1:v25 reportID:224, v25];
  }
}

- (void)logHwFwVersions
{
  if ([(HIDBluetoothDevice *)self state]<= 2)
  {
    objc_initWeak(&location, self);
    v3 = dispatch_time(0, 5000000000);
    v4 = [(HIDAppleSiriRemoteDevice *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F210;
    block[3] = &unk_1000BD370;
    objc_copyWeak(&v6, &location);
    block[4] = self;
    dispatch_after(v3, v4, block);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)doapAudioWillStart:(id)a3
{
  v4 = a3;
  if ([(HIDBluetoothDevice *)self state]< 3)
  {
    objc_initWeak(&location, self);
    v8 = [(HIDAppleSiriRemoteDevice *)self queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000F578;
    v9[3] = &unk_1000BD478;
    objc_copyWeak(&v11, &location);
    v10 = v4;
    dispatch_async(v8, v9);

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

    (*(v4 + 2))(v4, v7);
  }
}

- (void)waitForSiriAudioToStop:(id)a3
{
  v4 = a3;
  if ([(HIDBluetoothDevice *)self state]>= 3)
  {
    v5 = [NSString stringWithFormat:@"Apple Siri Remote stopped (disconnected)"];
    v44 = NSLocalizedDescriptionKey;
    v45 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v7 = [NSError errorWithDomain:NSMachErrorDomain code:-536870185 userInfo:v6];

    v4[2](v4, v7);
    v8 = [(HIDAppleSiriRemoteDevice *)self doapAudioStart];
    dispatch_semaphore_signal(v8);

    goto LABEL_18;
  }

  v9 = [(HIDAppleSiriRemoteDevice *)self lastAudioDate];
  [v9 timeIntervalSinceNow];
  v11 = fabs(v10);

  if (v11 >= 0.105)
  {
    v25 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      v27 = [(HIDAppleSiriRemoteDevice *)self lastAudioDate];
      [v27 timeIntervalSinceNow];
      *buf = 134217984;
      v43 = fabs(v28) * 1000.0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Have not received audio data for %f ms. Stop Siri session.", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v12 = [(HIDAppleSiriRemoteDevice *)self doapAudioStop];

  if (v12)
  {
    v13 = [(HIDAppleSiriRemoteDevice *)self lastAudioDate];
    [v13 timeIntervalSinceNow];
    v15 = v14;

    v16 = [(HIDAppleSiriRemoteDevice *)self doapAudioStop];
    v17 = dispatch_time(0, 1000000 * vcvtpd_s64_f64((v15 + 0.105) * 1000.0));
    v18 = dispatch_semaphore_wait(v16, v17);

    v19 = qword_1000DDBC8;
    v20 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v20)
      {
        v21 = v19;
        v22 = [(HIDAppleSiriRemoteDevice *)self lastAudioDate];
        [v22 timeIntervalSinceNow];
        *buf = 134217984;
        v43 = fabs(v23) * 1000.0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received Siri audio data %f ms ago.", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v24 = [(HIDAppleSiriRemoteDevice *)self queue];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100010044;
      v37[3] = &unk_1000BD478;
      objc_copyWeak(&v39, buf);
      v38 = v4;
      dispatch_async(v24, v37);

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
    v4[2](v4, 0);
    v34 = self;
    objc_sync_enter(v34);
    [(HIDAppleSiriRemoteDevice *)v34 setDoapAudioStop:0];
    v35 = objc_alloc_init(NSMutableArray);
    [(HIDAppleSiriRemoteDevice *)v34 setAudioBuffer:v35];

    objc_sync_exit(v34);
    v36 = [(HIDAppleSiriRemoteDevice *)v34 doapAudioStart];
    dispatch_semaphore_signal(v36);

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

  v4[2](v4, v30);
  v31 = [(HIDAppleSiriRemoteDevice *)self doapAudioStart];
  dispatch_semaphore_signal(v31);

  v32 = self;
  objc_sync_enter(v32);
  v33 = objc_alloc_init(NSMutableArray);
  [(HIDAppleSiriRemoteDevice *)v32 setAudioBuffer:v33];

  objc_sync_exit(v32);
LABEL_18:
}

- (void)doapAudioDidStop:(id)a3
{
  v4 = a3;
  if ([(HIDBluetoothDevice *)self state]< 3)
  {
    objc_initWeak(&location, self);
    v9 = [(HIDAppleSiriRemoteDevice *)self queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100010288;
    v10[3] = &unk_1000BD478;
    objc_copyWeak(&v12, &location);
    v11 = v4;
    dispatch_async(v9, v10);

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

    (*(v4 + 2))(v4, v7);
    v8 = [(HIDAppleSiriRemoteDevice *)self doapAudioStart];
    dispatch_semaphore_signal(v8);
  }
}

@end