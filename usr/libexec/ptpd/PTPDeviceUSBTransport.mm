@interface PTPDeviceUSBTransport
- (BOOL)handleBulkData:(unint64_t)a3 result:(int)a4;
- (BOOL)processDeviceInterface:(unsigned int)a3;
- (BOOL)sendEvent:(id)a3;
- (BOOL)sendNextEvent;
- (BOOL)sendResponse:(id)a3;
- (BOOL)startResponder;
- (PTPDeviceUSBTransport)initWithDelegate:(id)a3;
- (id)delegate;
- (int)handleDeviceRequest:(id *)a3 data:(__IOUSBDeviceData *)a4 dataSize:(unint64_t *)a5 status:(int *)a6;
- (int)readBulkData;
- (int)readInterruptData;
- (int)setupDeviceInterface;
- (int)writeBulkData:(id)a3;
- (int)writeInterruptData:(id)a3;
- (unsigned)transactionCanceled:(unsigned int)a3;
- (void)abortInterruptWrite:(id)a3;
- (void)abortPendingIO;
- (void)activate:(unsigned int)a3;
- (void)clearDeviceInterface;
- (void)deactivate;
- (void)dealloc;
- (void)deviceAdded:(unsigned int)a3;
- (void)handleInterruptData:(unint64_t)a3;
- (void)handleWriteInterruptDataCompletion:(id)a3;
- (void)sendData:(id)a3;
- (void)sendDataPackets:(id)a3;
- (void)sendDataPacketsSplit:(id)a3;
- (void)setUsbCore:(PTPDeviceUSBCore *)a3;
- (void)stop;
@end

@implementation PTPDeviceUSBTransport

- (void)deactivate
{
  if ([(PTPDeviceUSBTransport *)self connected])
  {
    [(PTPDeviceUSBTransport *)self setConnected:0];
    self->_busy = 0;
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self];
    readDataRef = self->_readDataRef;
    if (readDataRef)
    {
      CFRelease(readDataRef);
      self->_readDataRef = 0;
    }

    writeDataRef = self->_writeDataRef;
    if (writeDataRef)
    {
      CFRelease(writeDataRef);
      self->_writeDataRef = 0;
    }

    [(NSMutableArray *)self->_eventArray removeAllObjects];
    eventDataRef = self->_eventDataRef;
    if (eventDataRef)
    {
      CFRelease(eventDataRef);
      self->_eventDataRef = 0;
    }

    v6 = NSSelectorFromString(@"transportDeactivated");
    v7 = [(PTPDeviceUSBTransport *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(PTPDeviceUSBTransport *)self delegate];
      [v9 performSelector:v6];
    }

    __ICOSLogCreate();
    v10 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v11 = [&stru_100038B48 substringWithRange:{0, 18}];
      v10 = [v11 stringByAppendingString:@".."];
    }

    v12 = [NSString stringWithFormat:@"PTP Interface Deactivated\n"];
    v13 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v10;
      v15 = v13;
      v16 = 136446466;
      v17 = [(__CFString *)v10 UTF8String];
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v16, 0x16u);
    }
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PTPDeviceUSBTransport)initWithDelegate:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = PTPDeviceUSBTransport;
  v5 = [(PTPDeviceUSBTransport *)&v22 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 1;
    v5->_role = 0;
    objc_storeWeak(&v5->_delegate, v4);
    v6->_locationID = 0;
    v7 = [[NSMutableData alloc] initWithCapacity:0];
    transactionData = v6->_transactionData;
    v6->_transactionData = v7;

    v9 = [[NSMutableData alloc] initWithCapacity:0];
    eventData = v6->_eventData;
    v6->_eventData = v9;

    v11 = [[NSMutableArray alloc] initWithCapacity:0];
    eventArray = v6->_eventArray;
    v6->_eventArray = v11;

    v13 = _gPTPRequestResponseBufferSize;
    v6->_writeBufferSize = _gPTPDeviceDataBufferSize;
    v6->_readBufferSize = v13;
    v14 = _gPTPEventBufferSize;
    v6->_eventDataBuffer = 0;
    *&v6->_usbCore._notificationPort = 0u;
    *&v6->_writeDataRef = 0u;
    v6->_writeBuffer = 0;
    v6->_readBuffer = 0;
    v6->_sendEvents = 1;
    connectionTimer = v6->_connectionTimer;
    v6->_connectionTimer = 0;
    v6->_numberOfSendEventsTimedOut = 0;
    v6->_eventDataBufferSize = v14;
    v6->_canceledTransactionID = -1;
    v6->_cancelLock._os_unfair_lock_opaque = 0;

    v16 = dispatch_queue_create("ptp.connectionTimer_queue", 0);
    connectionTimerQueue = v6->_connectionTimerQueue;
    v6->_connectionTimerQueue = v16;

    v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v19 = dispatch_queue_create("PTPDeviceUSBTransportQueue", v18);
    transportQueue = v6->_transportQueue;
    v6->_transportQueue = v19;
  }

  return v6;
}

- (void)dealloc
{
  [(PTPDeviceUSBTransport *)self setDelegate:0];
  [(PTPDeviceUSBTransport *)self waitForHostConnection:0];
  v3.receiver = self;
  v3.super_class = PTPDeviceUSBTransport;
  [(PTPDeviceUSBTransport *)&v3 dealloc];
}

- (BOOL)startResponder
{
  __ICOSLogCreate();
  v3 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v4 = [&stru_100038B48 substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [NSString stringWithFormat:@"---"];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3;
    v8 = v6;
    *buf = 136446466;
    v72 = [(__CFString *)v3 UTF8String];
    v73 = 2114;
    v74 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  if ([(PTPDeviceUSBTransport *)self role])
  {
    __ICOSLogCreate();
    v9 = @"<PTP>";
    if ([(__CFString *)v9 length]>= 0x15)
    {
      v10 = [(__CFString *)v9 substringWithRange:0, 18];
      v11 = [v10 stringByAppendingString:@".."];

      v9 = v11;
    }

    v12 = [NSString stringWithFormat:@"PTP Service Did Not Start\n"];
    v13 = _gICOSLog;
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v14 = v9;
    v15 = v13;
    v16 = [(__CFString *)v9 UTF8String];
    *buf = 136446466;
    v72 = v16;
    v73 = 2114;
    v74 = v12;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);

LABEL_11:
    return 0;
  }

  if (self->_type != 1)
  {
    return 0;
  }

  __ICOSLogCreate();
  v19 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v20 = [&stru_100038B48 substringWithRange:{0, 18}];
    v19 = [v20 stringByAppendingString:@".."];
  }

  v21 = [NSString stringWithFormat:@"PTP Service Starting"];
  v22 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v19;
    v24 = v22;
    v25 = [(__CFString *)v19 UTF8String];
    *buf = 136446466;
    v72 = v25;
    v73 = 2114;
    v74 = v21;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v70 = 0;
  vproc_swap_integer();
  *mainPort = 0;
  v26 = IOServiceMatching("IOUSBDeviceInterface");
  if (!v26)
  {
    __ICOSLogCreate();
    v9 = @"<USB>";
    if ([(__CFString *)v9 length]>= 0x15)
    {
      v36 = [(__CFString *)v9 substringWithRange:0, 18];
      v37 = [v36 stringByAppendingString:@".."];

      v9 = v37;
    }

    v12 = [NSString stringWithFormat:@"PTP Service Matching Failed"];
    v38 = _gICOSLog;
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

LABEL_31:
    v39 = v9;
    v15 = v38;
    v40 = [(__CFString *)v9 UTF8String];
    *buf = 136446466;
    v72 = v40;
    v73 = 2114;
    v74 = v12;
    goto LABEL_10;
  }

  v27 = v26;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    CFRelease(v27);
    __ICOSLogCreate();
    v9 = @"<USB>";
    if ([(__CFString *)v9 length]>= 0x15)
    {
      v41 = [(__CFString *)v9 substringWithRange:0, 18];
      v42 = [v41 stringByAppendingString:@".."];

      v9 = v42;
    }

    v12 = [NSString stringWithFormat:@"PTP Service PropDict Failed"];
    v38 = _gICOSLog;
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

  v29 = Mutable;
  CFDictionarySetValue(Mutable, @"USBDeviceFunction", @"PTP");
  CFDictionarySetValue(v27, @"IOPropertyMatch", v29);
  CFRelease(v29);
  if (IOMainPort(bootstrap_port, &mainPort[1]) || !mainPort[1])
  {
    __ICOSLogCreate();
    v43 = @"<USB>";
    if ([(__CFString *)v43 length]>= 0x15)
    {
      v44 = [(__CFString *)v43 substringWithRange:0, 18];
      v45 = [v44 stringByAppendingString:@".."];

      v43 = v45;
    }

    v46 = [NSString stringWithFormat:@"MainPort Alocation Failed\n"];
    v47 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v48 = v43;
      v49 = v47;
      v50 = [(__CFString *)v43 UTF8String];
      *buf = 136446466;
      v72 = v50;
      v73 = 2114;
      v74 = v46;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    CFRelease(v27);
    return 0;
  }

  v30 = IONotificationPortCreate(mainPort[1]);
  self->_usbCore._notificationPort = v30;
  IONotificationPortSetDispatchQueue(v30, self->_transportQueue);
  if (IOServiceAddMatchingNotification(self->_usbCore._notificationPort, "IOServicePublish", v27, sub_1000053AC, self, mainPort))
  {
    __ICOSLogCreate();
    v9 = @"<USB>";
    if ([(__CFString *)v9 length]>= 0x15)
    {
      v31 = [(__CFString *)v9 substringWithRange:0, 18];
      v32 = [v31 stringByAppendingString:@".."];

      v9 = v32;
    }

    v12 = [NSString stringWithFormat:@"Matching Notification Failed\n"];
    v33 = _gICOSLog;
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v34 = v9;
    v15 = v33;
    v35 = [(__CFString *)v9 UTF8String];
    *buf = 136446466;
    v72 = v35;
    v73 = 2114;
    v74 = v12;
    goto LABEL_10;
  }

  v51 = IOIteratorNext(mainPort[0]);
  if (v51)
  {
    v52 = v51;
    do
    {
      __ICOSLogCreate();
      v53 = @"<USB>";
      if ([(__CFString *)v53 length]>= 0x15)
      {
        v54 = [(__CFString *)v53 substringWithRange:0, 18];
        v55 = [v54 stringByAppendingString:@".."];

        v53 = v55;
      }

      v56 = [NSString stringWithFormat:@"[Adding 0x%x] -->(IOMatchedOnLaunch) ", mainPort[0]];
      v57 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v58 = v53;
        v59 = v57;
        v60 = [(__CFString *)v53 UTF8String];
        *buf = 136446466;
        v72 = v60;
        v73 = 2114;
        v74 = v56;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      [(PTPDeviceUSBTransport *)self deviceAdded:v52];
      v52 = IOIteratorNext(mainPort[0]);
    }

    while (v52);
  }

  __ICOSLogCreate();
  v61 = @"<PTP>";
  if ([(__CFString *)v61 length]>= 0x15)
  {
    v62 = [(__CFString *)v61 substringWithRange:0, 18];
    v63 = [v62 stringByAppendingString:@".."];

    v61 = v63;
  }

  v64 = [NSString stringWithFormat:@"Service Started"];
  v65 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v66 = v61;
    v67 = v65;
    v68 = [(__CFString *)v61 UTF8String];
    *buf = 136446466;
    v72 = v68;
    v73 = 2114;
    v74 = v64;
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v17 = 1;
  [(PTPDeviceUSBTransport *)self setRole:1];
  return v17;
}

- (void)stop
{
  [(PTPDeviceUSBTransport *)self waitForHostConnection:0];
  __ICOSLogCreate();
  v3 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v4 = [&stru_100038B48 substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [NSString stringWithFormat:@"Service Stopped"];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3;
    v8 = v6;
    *buf = 136446466;
    v16 = [(__CFString *)v3 UTF8String];
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  if ([(PTPDeviceUSBTransport *)self role]== 1)
  {
    [(PTPDeviceUSBTransport *)self setRole:0];
    [(PTPDeviceUSBTransport *)self setConnected:0];
    notification = self->_usbCore._notification;
    if (notification)
    {
      IOObjectRelease(notification);
      self->_usbCore._notification = 0;
    }

    notificationPort = self->_usbCore._notificationPort;
    if (notificationPort)
    {
      IONotificationPortSetDispatchQueue(notificationPort, 0);
      self->_usbCore._notificationPort = 0;
    }

    deviceInterfaceInterfaceRef = self->_usbCore._deviceInterfaceInterfaceRef;
    if (deviceInterfaceInterfaceRef)
    {
      v14 = 0;
      *buf = 0;
      (*(*deviceInterfaceInterfaceRef + 36))(deviceInterfaceInterfaceRef, buf, &v14);
      if (*buf)
      {
        [(PTPDeviceUSBTransport *)self deactivate];
      }

      (*(*self->_usbCore._deviceInterfaceInterfaceRef + 5))(self->_usbCore._deviceInterfaceInterfaceRef, 0);
      (*(*self->_usbCore._deviceInterfaceInterfaceRef + 3))(self->_usbCore._deviceInterfaceInterfaceRef);
      self->_usbCore._deviceInterfaceInterfaceRef = 0;
    }
  }

  v12 = sub_10000C470();
  v13 = [v12 delegate];

  if (v13)
  {
    [v12 setDelegate:0];
  }

  exit(0);
}

- (void)activate:(unsigned int)a3
{
  v82 = 0;
  if ((*(*self->_usbCore._deviceInterfaceInterfaceRef + 36))(self->_usbCore._deviceInterfaceInterfaceRef, &v82 + 4, &v82))
  {
    v4 = 0;
  }

  else
  {
    v4 = HIDWORD(v82) == 1;
  }

  if (v4)
  {
    __ICOSLogCreate();
    v5 = @"<USB>";
    if ([(__CFString *)v5 length]>= 0x15)
    {
      v6 = [(__CFString *)v5 substringWithRange:0, 18];
      v7 = [v6 stringByAppendingString:@".."];

      v5 = v7;
    }

    v8 = [NSString stringWithFormat:@"✅ <activated> at %d speed", v82];
    v9 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v5;
      v11 = v9;
      v12 = [(__CFString *)v5 UTF8String];
      *buf = 136446466;
      v84 = v12;
      v85 = 2114;
      v86 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  if ((*(*self->_usbCore._deviceInterfaceInterfaceRef + 26))(self->_usbCore._deviceInterfaceInterfaceRef, self->_readBufferSize, &self->_readDataRef))
  {
    __ICOSLogCreate();
    v13 = @"<USB>";
    v14 = v13;
    if ([(__CFString *)v13 length]>= 0x15)
    {
      v15 = [(__CFString *)v13 substringWithRange:0, 18];
      v14 = [v15 stringByAppendingString:@".."];
    }

    v16 = [NSString stringWithFormat:@"❌ ifIfRef->createData read(%8d)", self->_readBufferSize];
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  readDataRef = self->_readDataRef;
  self->_readBuffer = IOUSBDeviceDataGetBytePtr();
  if ((*(*self->_usbCore._deviceInterfaceInterfaceRef + 26))(self->_usbCore._deviceInterfaceInterfaceRef, self->_writeBufferSize, &self->_writeDataRef))
  {
    __ICOSLogCreate();
    v27 = @"<USB>";
    v28 = v27;
    if ([(__CFString *)v27 length]>= 0x15)
    {
      v29 = [(__CFString *)v27 substringWithRange:0, 18];
      v28 = [v29 stringByAppendingString:@".."];
    }

    v30 = [NSString stringWithFormat:@"❌ ifIfRef->createData write(%8d)", self->_writeBufferSize];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      sub_1000246F4();
    }

    _gPTPDeviceDataBufferSize = 0x100000;
    self->_writeBufferSize = 0x100000;
    __ICOSLogCreate();
    v31 = v27;
    v32 = v31;
    if ([(__CFString *)v31 length]>= 0x15)
    {
      v33 = [(__CFString *)v31 substringWithRange:0, 18];
      v32 = [v33 stringByAppendingString:@".."];
    }

    v34 = [NSString stringWithFormat:@"Attempting smaller allocation... %d", 0x100000];
    v35 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v32;
      v37 = v35;
      v38 = [v32 UTF8String];
      *buf = 136446466;
      v84 = v38;
      v85 = 2114;
      v86 = v34;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    if ((*(*self->_usbCore._deviceInterfaceInterfaceRef + 26))(self->_usbCore._deviceInterfaceInterfaceRef, self->_writeBufferSize, &self->_writeDataRef))
    {
      __ICOSLogCreate();
      v13 = v31;
      v14 = v13;
      if ([(__CFString *)v13 length]>= 0x15)
      {
        v39 = [(__CFString *)v13 substringWithRange:0, 18];
        v14 = [v39 stringByAppendingString:@".."];
      }

      v16 = [NSString stringWithFormat:@"❌ ifIfRef->createData write(%8d)", self->_writeBufferSize];
      if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  writeDataRef = self->_writeDataRef;
  self->_writeBuffer = IOUSBDeviceDataGetBytePtr();
  if ((*(*self->_usbCore._deviceInterfaceInterfaceRef + 26))(self->_usbCore._deviceInterfaceInterfaceRef, [(PTPDeviceUSBTransport *)self eventDataBufferSize], &self->_eventDataRef))
  {
    __ICOSLogCreate();
    v13 = @"<USB>";
    v14 = v13;
    if ([(__CFString *)v13 length]>= 0x15)
    {
      v41 = [(__CFString *)v13 substringWithRange:0, 18];
      v14 = [v41 stringByAppendingString:@".."];
    }

    v16 = [NSString stringWithFormat:@"❌ ifIfRef->createData event(%8d)", [(PTPDeviceUSBTransport *)self eventDataBufferSize]];
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  eventDataRef = self->_eventDataRef;
  [(PTPDeviceUSBTransport *)self setEventDataBuffer:IOUSBDeviceDataGetBytePtr()];
  v43 = (*(*self->_usbCore._deviceInterfaceInterfaceRef + 25))(self->_usbCore._deviceInterfaceInterfaceRef, self->_bulkPipeIn, &self->_maxPacketSizeBulkIn);
  __ICOSLogCreate();
  v13 = @"<USB>";
  v44 = [(__CFString *)v13 length];
  if (v43)
  {
    v14 = v13;
    if (v44 >= 0x15)
    {
      v45 = [(__CFString *)v13 substringWithRange:0, 18];
      v14 = [v45 stringByAppendingString:@".."];
    }

    v16 = [NSString stringWithFormat:@"❌ ifIfRef->getPipeCurrentMaxPacketSize [Bulk-IN]"];
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v46 = v13;
  if (v44 >= 0x15)
  {
    v47 = [(__CFString *)v13 substringWithRange:0, 18];
    v46 = [v47 stringByAppendingString:@".."];
  }

  v48 = [NSString stringWithFormat:@"_maxPacketSizeBulkIn: %d\n", self->_maxPacketSizeBulkIn];
  v49 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v50 = v46;
    v51 = v49;
    v52 = [v46 UTF8String];
    *buf = 136446466;
    v84 = v52;
    v85 = 2114;
    v86 = v48;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v53 = (*(*self->_usbCore._deviceInterfaceInterfaceRef + 25))(self->_usbCore._deviceInterfaceInterfaceRef, self->_bulkPipeOut, &self->_maxPacketSizeBulkOut);
  __ICOSLogCreate();
  if (v53)
  {
    v13 = v13;
    v14 = v13;
    if ([(__CFString *)v13 length]>= 0x15)
    {
      v54 = [(__CFString *)v13 substringWithRange:0, 18];
      v14 = [v54 stringByAppendingString:@".."];
    }

    v16 = [NSString stringWithFormat:@"❌ ifIfRef->getPipeCurrentMaxPacketSize [Bulk-OUT]"];
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v55 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v56 = [&stru_100038B48 substringWithRange:{0, 18}];
    v55 = [v56 stringByAppendingString:@".."];
  }

  v57 = [NSString stringWithFormat:@"_maxPacketSizeBulkOut: %d\n", self->_maxPacketSizeBulkOut];
  v58 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v59 = v55;
    v60 = v58;
    v61 = [(__CFString *)v55 UTF8String];
    *buf = 136446466;
    v84 = v61;
    v85 = 2114;
    v86 = v57;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v62 = (*(*self->_usbCore._deviceInterfaceInterfaceRef + 25))(self->_usbCore._deviceInterfaceInterfaceRef, self->_interruptPipeIn, &self->_maxPacketSizeInterruptIn);
  __ICOSLogCreate();
  v13 = v13;
  v63 = [(__CFString *)v13 length];
  if (v62)
  {
    v14 = v13;
    if (v63 >= 0x15)
    {
      v64 = [(__CFString *)v13 substringWithRange:0, 18];
      v14 = [v64 stringByAppendingString:@".."];
    }

    v16 = [NSString stringWithFormat:@"❌ ifIfRef->getPipeCurrentMaxPacketSize [Interrupt-IN]"];
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_1000246F4();
LABEL_16:

LABEL_17:
    __ICOSLogCreate();
    v17 = v13;
    if ([(__CFString *)v17 length]>= 0x15)
    {
      v18 = [(__CFString *)v17 substringWithRange:0, 18];
      v19 = [v18 stringByAppendingString:@".."];

      v17 = v19;
    }

    v20 = [NSString stringWithFormat:@"❌ <activate> Failed, waiting: %2ds for reactivation before exiting", 15];
    v21 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v17;
      v23 = v21;
      v24 = [(__CFString *)v17 UTF8String];
      *buf = 136446466;
      v84 = v24;
      v85 = 2114;
      v86 = v20;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v25 = 1;
    goto LABEL_22;
  }

  v65 = v13;
  if (v63 >= 0x15)
  {
    v66 = [(__CFString *)v13 substringWithRange:0, 18];
    v65 = [v66 stringByAppendingString:@".."];
  }

  v67 = [NSString stringWithFormat:@"_maxPacketSizeInterruptIn: %d\n", self->_maxPacketSizeInterruptIn];
  v68 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v69 = v65;
    v70 = v68;
    v71 = [v65 UTF8String];
    *buf = 136446466;
    v84 = v71;
    v85 = 2114;
    v86 = v67;
    _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  [(PTPDeviceUSBTransport *)self setConnected:1];
  self->_sendEvents = 1;
  self->_numberOfSendEventsTimedOut = 0;
  v72 = NSSelectorFromString(@"transportActivated");
  v73 = [(PTPDeviceUSBTransport *)self delegate];
  v74 = objc_opt_respondsToSelector();

  if (v74)
  {
    v75 = [(PTPDeviceUSBTransport *)self delegate];
    [v75 performSelector:v72];
  }

  if ([(PTPDeviceUSBTransport *)self readBulkData])
  {
    goto LABEL_17;
  }

  __ICOSLogCreate();
  v17 = v13;
  if ([(__CFString *)v17 length]>= 0x15)
  {
    v76 = [(__CFString *)v17 substringWithRange:0, 18];
    v77 = [v76 stringByAppendingString:@".."];

    v17 = v77;
  }

  v20 = [NSString stringWithFormat:@"✅ <activate> Connected"];
  v78 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v79 = v17;
    v80 = v78;
    v81 = [(__CFString *)v17 UTF8String];
    *buf = 136446466;
    v84 = v81;
    v85 = 2114;
    v86 = v20;
    _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v25 = 0;
LABEL_22:

  [(PTPDeviceUSBTransport *)self waitForHostConnection:v25];
}

- (void)sendDataPackets:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  v6 = [[PTPWrappedBytes alloc] initWithBytes:self->_writeBuffer capacity:self->_writeBufferSize];
  v41 = v4;
  [v4 range];
  v40 = v7;
  v8 = [(PTPDeviceUSBTransport *)self transactionCanceled:v5]== 0;
  v9 = 0;
  if ([(PTPDeviceUSBTransport *)self connected])
  {
    v10 = -536870212;
    while (1)
    {
      if (v5 && !v8)
      {
        goto LABEL_26;
      }

      v11 = [v41 copyToWrappedBytes:v6 forTransport:1];
      v12 = [v6 length];
      if (v12 != self->_writeBufferSize)
      {
        break;
      }

      v13 = [(PTPDeviceUSBTransport *)self writeBulkData:v6];
      if (v13)
      {
        goto LABEL_25;
      }

      v9 += v11;
      __ICOSLogCreate();
      v14 = [NSString stringWithFormat:@"- [%8lld] of [%8lld]\n", v9, v40];
      v15 = [NSString stringWithFormat:@"%@", v14];

      if (__ICLogTypeEnabled())
      {
        v16 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v43 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      v8 = [(PTPDeviceUSBTransport *)self transactionCanceled:v5]== 0;
      v10 = 0;
      v17 = 0;
      if (![(PTPDeviceUSBTransport *)self connected])
      {
        goto LABEL_13;
      }
    }

    v19 = v12;
    if (v12)
    {
      v13 = [(PTPDeviceUSBTransport *)self writeBulkData:v6];
      if (v13)
      {
LABEL_25:
        v17 = v13;
        if (v8)
        {
          goto LABEL_14;
        }

        goto LABEL_26;
      }

      v9 += v11;
      __ICOSLogCreate();
      v20 = [NSString stringWithFormat:@"- [%8lld] of [%8lld]\n", v9, v40];
      v21 = [NSString stringWithFormat:@"%@", v20];

      if (__ICLogTypeEnabled())
      {
        v22 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v43 = v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      v10 = 0;
    }

    v17 = v10;
    if (v19 % self->_maxPacketSizeBulkIn)
    {
      goto LABEL_22;
    }

    [v6 setLength:0];
    v13 = [(PTPDeviceUSBTransport *)self writeBulkData:v6];
    if (!v13)
    {
      __ICOSLogCreate();
      v37 = [NSString stringWithFormat:@"Z [%8lld] of [%8lld]\n", v9, v40];
      v38 = [NSString stringWithFormat:@"%@", v37];

      if (__ICLogTypeEnabled())
      {
        v39 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v43 = v38;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      v17 = 0;
LABEL_22:
      [v41 setBytesTransferred:v9];
      if (v8)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v17 = -536870212;
LABEL_13:
  if (!v8)
  {
LABEL_26:
    [v6 setLength:0];
    v17 = [(PTPDeviceUSBTransport *)self writeBulkData:v6];
    v18 = 1;
    goto LABEL_27;
  }

LABEL_14:
  v18 = 0;
LABEL_27:
  v23 = NSSelectorFromString(@"sentData:responseCode:");
  v24 = [(PTPDeviceUSBTransport *)self delegate];
  if (v24)
  {
    v25 = v24;
    v26 = [(PTPDeviceUSBTransport *)self delegate];
    v27 = objc_opt_respondsToSelector();

    if (v27)
    {
      if (v9 == v40)
      {
        v28 = v18;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        if (v17 == -536870186)
        {
          __ICOSLogCreate();
          v29 = &stru_100038B48;
          if ([&stru_100038B48 length] >= 0x15)
          {
            v30 = [&stru_100038B48 substringWithRange:{0, 18}];
            v29 = [v30 stringByAppendingString:@".."];
          }

          v31 = [NSString stringWithFormat:@"[TERM] No device to read BulkIn - Do Not Send Response \n"];
          v32 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v33 = v29;
            v34 = v32;
            v35 = [(__CFString *)v29 UTF8String];
            *buf = 136446466;
            v43 = v35;
            v44 = 2114;
            v45 = v31;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }

          goto LABEL_41;
        }

        v29 = [(PTPDeviceUSBTransport *)self delegate];
        v36 = 8199;
      }

      else
      {
        v29 = [(PTPDeviceUSBTransport *)self delegate];
        v36 = 8193;
      }

      v31 = [NSNumber numberWithUnsignedShort:v36];
      [(__CFString *)v29 performSelector:v23 withObject:v41 withObject:v31];
LABEL_41:
    }
  }

  self->_busy = 0;
}

- (unsigned)transactionCanceled:(unsigned int)a3
{
  os_unfair_lock_lock(&self->_cancelLock);
  canceledTransactionID = self->_canceledTransactionID;
  if (canceledTransactionID == -1)
  {
    canceledTransactionID = 0;
  }

  else
  {
    self->_canceledTransactionID = -1;
  }

  os_unfair_lock_unlock(&self->_cancelLock);
  return canceledTransactionID;
}

- (void)sendDataPacketsSplit:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  v57 = v4;
  [v4 range];
  v56 = v6;
  v7 = [(PTPDeviceUSBTransport *)self transactionCanceled:v5];
  v8 = [(PTPDeviceUSBTransport *)self connected];
  v9 = 0;
  v10 = v7 != 0;
  if (v7)
  {
    v11 = v5 != 0;
  }

  else
  {
    v11 = 0;
  }

  if (v8 && !v11 && (v9 = [[PTPWrappedBytes alloc] initWithBytes:self->_writeBuffer capacity:self->_writeBufferSize], objc_msgSend(v57, "copyHeaderToWrappedBytes:forTransport:", v9, 1), (v12 = objc_msgSend(v9, "length")) != 0))
  {
    v13 = v12;
    v14 = [(PTPDeviceUSBTransport *)self writeBulkData:v9];
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      __ICOSLogCreate();
      v33 = &stru_100038B48;
      if ([&stru_100038B48 length] >= 0x15)
      {
        v34 = [&stru_100038B48 substringWithRange:{0, 18}];
        v33 = [v34 stringByAppendingString:@".."];
      }

      v35 = [NSString stringWithFormat:@"MTP Header: [%8lld] of [%8lld]\n", v13, 12];
      v36 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v33;
        v38 = v36;
        *buf = 136446466;
        v59 = [(__CFString *)v33 UTF8String];
        v60 = 2114;
        v61 = v35;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      [v57 setBytesTransferred:v13];
      v15 = 0;
    }
  }

  else
  {
    v15 = -536870212;
  }

  v16 = [[PTPWrappedBytes alloc] initWithBytes:self->_writeBuffer capacity:self->_writeBufferSize];

  v17 = 0;
  if (!(v11 | ![(PTPDeviceUSBTransport *)self connected]))
  {
    while (1)
    {
      v18 = v17 ? [v57 copyToWrappedBytes:v16 forTransport:1] : objc_msgSend(v57, "copyDataToWrappedBytes:forTransport:fromOffset:", v16, 1, 0);
      v19 = v18;
      v20 = [v16 length];
      if (v20 != self->_writeBufferSize)
      {
        break;
      }

      v21 = [(PTPDeviceUSBTransport *)self writeBulkData:v16];
      if (v21)
      {
        goto LABEL_41;
      }

      v17 += v19;
      __ICOSLogCreate();
      v22 = [NSString stringWithFormat:@"- [%8lld] of [%8lld]\n", v17, v56];
      v23 = [NSString stringWithFormat:@"%@", v22];

      if (__ICLogTypeEnabled())
      {
        v24 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v59 = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      v25 = [(PTPDeviceUSBTransport *)self transactionCanceled:v5];
      v26 = [(PTPDeviceUSBTransport *)self connected];
      v15 = 0;
      v10 = v25 != 0;
      if (v25)
      {
        v27 = v5 != 0;
      }

      else
      {
        v27 = 0;
      }

      if (!v26 || v27)
      {
        goto LABEL_24;
      }
    }

    v29 = v20;
    if (v20)
    {
      v21 = [(PTPDeviceUSBTransport *)self writeBulkData:v16];
      if (v21)
      {
LABEL_41:
        v15 = v21;
        if (v10)
        {
          goto LABEL_25;
        }

        goto LABEL_42;
      }

      v17 += v19;
      __ICOSLogCreate();
      v30 = [NSString stringWithFormat:@"- [%8lld] of [%8lld]\n", v17, v56];
      v31 = [NSString stringWithFormat:@"%@", v30];

      if (__ICLogTypeEnabled())
      {
        v32 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v59 = v31;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      v15 = 0;
    }

    if (v29 % self->_maxPacketSizeBulkIn)
    {
      goto LABEL_33;
    }

    [v16 setLength:0];
    v21 = [(PTPDeviceUSBTransport *)self writeBulkData:v16];
    if (!v21)
    {
      __ICOSLogCreate();
      v53 = [NSString stringWithFormat:@"Z [%8lld] of [%8lld]\n", v17, v56];
      v54 = [NSString stringWithFormat:@"%@", v53];

      if (__ICLogTypeEnabled())
      {
        v55 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v59 = v54;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      v15 = 0;
LABEL_33:
      [v57 setBytesTransferred:v17];
      if (v10)
      {
        goto LABEL_25;
      }

      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_24:
  if (!v10)
  {
LABEL_42:
    v28 = 0;
    goto LABEL_43;
  }

LABEL_25:
  [v16 setLength:0];
  v15 = [(PTPDeviceUSBTransport *)self writeBulkData:v16];
  v28 = 1;
LABEL_43:
  v39 = NSSelectorFromString(@"sentData:responseCode:");
  v40 = [(PTPDeviceUSBTransport *)self delegate];
  if (v40)
  {
    v41 = v40;
    v42 = [(PTPDeviceUSBTransport *)self delegate];
    v43 = objc_opt_respondsToSelector();

    if (v43)
    {
      if (v17 == v56)
      {
        v44 = v28;
      }

      else
      {
        v44 = 1;
      }

      if (v44)
      {
        if (v15 == -536870186)
        {
          __ICOSLogCreate();
          v45 = &stru_100038B48;
          if ([&stru_100038B48 length] >= 0x15)
          {
            v46 = [&stru_100038B48 substringWithRange:{0, 18}];
            v45 = [v46 stringByAppendingString:@".."];
          }

          v47 = [NSString stringWithFormat:@"[TERM] No device to read BulkIn - Do Not Send Response \n"];
          v48 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v49 = v45;
            v50 = v48;
            v51 = [(__CFString *)v45 UTF8String];
            *buf = 136446466;
            v59 = v51;
            v60 = 2114;
            v61 = v47;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }

          goto LABEL_57;
        }

        v45 = [(PTPDeviceUSBTransport *)self delegate];
        v52 = 8199;
      }

      else
      {
        v45 = [(PTPDeviceUSBTransport *)self delegate];
        v52 = 8193;
      }

      v47 = [NSNumber numberWithUnsignedShort:v52];
      [(__CFString *)v45 performSelector:v39 withObject:v57 withObject:v47];
LABEL_57:
    }
  }

  self->_busy = 0;
}

- (void)sendData:(id)a3
{
  v4 = a3;
  transportQueue = self->_transportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007890;
  v7[3] = &unk_100038830;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(transportQueue, v7);
}

- (BOOL)sendResponse:(id)a3
{
  v4 = a3;
  if ([(PTPDeviceUSBTransport *)self connected])
  {
    v5 = [v4 contentForUSBUsingBuffer:self->_writeBuffer capacity:self->_writeBufferSize];
    v6 = [(PTPDeviceUSBTransport *)self writeBulkData:v5];

    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if ([v4 responseCode] != 8193)
  {
    __ICOSLogCreate();
    v8 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v9 = [&stru_100038B48 substringWithRange:{0, 18}];
      v8 = [v9 stringByAppendingString:@".."];
    }

    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[%4x]", [v4 responseCode]);
    v11 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v8;
      v13 = v11;
      *buf = 136446466;
      v16 = [(__CFString *)v8 UTF8String];
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  return v7;
}

- (BOOL)sendEvent:(id)a3
{
  v4 = a3;
  if (![(PTPDeviceUSBTransport *)self connected]|| !self->_sendEvents)
  {
    __ICOSLogCreate();
    v5 = @"Event Queue";
    if ([@"Event Queue" length] >= 0x15)
    {
      v9 = [@"Event Queue" substringWithRange:{0, 18}];
      v5 = [v9 stringByAppendingString:@".."];
    }

    v10 = [(PTPDeviceUSBTransport *)self connected];
    v11 = "NO";
    if (v10)
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    if (self->_sendEvents)
    {
      v11 = "YES";
    }

    v13 = [NSString stringWithFormat:@"Connected: %s Can Send Events: %s \n", v12, v11];
    v14 = _gICOSLog;
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v15 = v5;
    v16 = v14;
    *buf = 136446466;
    v23 = [(__CFString *)v5 UTF8String];
    v24 = 2114;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
LABEL_16:

LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  [v4 eventCode];
  v5 = stringForEventCode();
  v6 = [(NSMutableArray *)self->_eventArray count];
  eventArray = self->_eventArray;
  if (!eventArray || v6 >> 4 > 0xC34)
  {
    __ICOSLogCreate();
    v13 = @"Event Queue";
    if ([@"Event Queue" length] >= 0x15)
    {
      v18 = [@"Event Queue" substringWithRange:{0, 18}];
      v13 = [v18 stringByAppendingString:@".."];
    }

    v16 = [NSString stringWithFormat:@"Current Queue[%d] - Dropping %s\n", v6, [(__CFString *)v5 UTF8String]];
    v19 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v13;
      v21 = v19;
      *buf = 136446466;
      v23 = [(__CFString *)v13 UTF8String];
      v24 = 2114;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    goto LABEL_16;
  }

  [(NSMutableArray *)eventArray addObject:v4];
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = [(PTPDeviceUSBTransport *)self sendNextEvent];
  }

LABEL_18:

  return v8;
}

- (void)abortPendingIO
{
  deviceInterfaceInterfaceRef = self->_usbCore._deviceInterfaceInterfaceRef;
  if (deviceInterfaceInterfaceRef)
  {
    if (self->_interruptPipeIn && (*(*deviceInterfaceInterfaceRef + 24))(deviceInterfaceInterfaceRef))
    {
      __ICOSLogCreate();
      v4 = @"USBDevice";
      if ([@"USBDevice" length] >= 0x15)
      {
        v5 = [@"USBDevice" substringWithRange:{0, 18}];
        v4 = [v5 stringByAppendingString:@".."];
      }

      v6 = [NSString stringWithFormat:@"ifIfRef->abortPipe [Interrupt-IN]\n"];
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
      {
        sub_1000246F4();
      }
    }

    if (self->_bulkPipeIn && (*(*self->_usbCore._deviceInterfaceInterfaceRef + 24))(self->_usbCore._deviceInterfaceInterfaceRef))
    {
      __ICOSLogCreate();
      v7 = @"USBDevice";
      if ([@"USBDevice" length] >= 0x15)
      {
        v8 = [@"USBDevice" substringWithRange:{0, 18}];
        v7 = [v8 stringByAppendingString:@".."];
      }

      v9 = [NSString stringWithFormat:@"ifIfRef->abortPipe [Bulk-IN]\n"];
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
      {
        sub_1000246F4();
      }
    }

    if (self->_bulkPipeOut && (*(*self->_usbCore._deviceInterfaceInterfaceRef + 24))(self->_usbCore._deviceInterfaceInterfaceRef))
    {
      __ICOSLogCreate();
      v10 = @"USBDevice";
      if ([@"USBDevice" length] >= 0x15)
      {
        v11 = [@"USBDevice" substringWithRange:{0, 18}];
        v10 = [v11 stringByAppendingString:@".."];
      }

      v12 = [NSString stringWithFormat:@"ifIfRef->abortPipe [Bulk-OUT]\n"];
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
      {
        sub_1000246F4();
      }
    }
  }
}

- (int)writeBulkData:(id)a3
{
  v15 = [a3 length];
  if (![(PTPDeviceUSBTransport *)self connected])
  {
    return -536870183;
  }

  v4 = (*(*self->_usbCore._deviceInterfaceInterfaceRef + 34))(self->_usbCore._deviceInterfaceInterfaceRef, self->_bulkPipeIn, self->_writeDataRef, &v15, 5000);
  v5 = v4;
  if (v4 == -536870186)
  {
    __ICOSLogCreate();
    v6 = @"USBDevice";
    if ([@"USBDevice" length] >= 0x15)
    {
      v10 = [@"USBDevice" substringWithRange:{0, 18}];
      v6 = [v10 stringByAppendingString:@".."];
    }

    v8 = [NSString stringWithFormat:@"Write Timeout(Host Terminated) - Drain Write Queue"];
    v9 = _gICOSLog;
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

LABEL_12:
    v11 = v6;
    v12 = v9;
    v13 = [(__CFString *)v6 UTF8String];
    *buf = 136446466;
    v17 = v13;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);

LABEL_13:
    return v5;
  }

  if (v4 == -536870208)
  {
    [(PTPDeviceUSBTransport *)self setConnected:0];
    __ICOSLogCreate();
    v6 = @"USBDevice";
    if ([@"USBDevice" length] >= 0x15)
    {
      v7 = [@"USBDevice" substringWithRange:{0, 18}];
      v6 = [v7 stringByAppendingString:@".."];
    }

    v8 = [NSString stringWithFormat:@"Connection Terminated"];
    v9 = _gICOSLog;
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  return v5;
}

- (int)writeInterruptData:(id)a3
{
  [a3 length];
  if (![(PTPDeviceUSBTransport *)self connected])
  {
    return -536870183;
  }

  v4 = *(*self->_usbCore._deviceInterfaceInterfaceRef + 22);
  interruptPipeIn = self->_interruptPipeIn;
  eventDataRef = self->_eventDataRef;

  return v4();
}

- (void)handleWriteInterruptDataCompletion:(id)a3
{
  eventArray = self->_eventArray;
  v5 = a3;
  v6 = [(NSMutableArray *)eventArray count];
  v7 = [v5 intValue];

  if (v7 == 1)
  {
    numberOfSendEventsTimedOut = self->_numberOfSendEventsTimedOut;
    if (numberOfSendEventsTimedOut > 1)
    {
      self->_sendEvents = 0;
    }

    else
    {
      self->_numberOfSendEventsTimedOut = numberOfSendEventsTimedOut + 1;
    }

    __ICOSLogCreate();
    v9 = [NSString stringWithFormat:@"Current Number of Events Timed Out: [%d] ", self->_numberOfSendEventsTimedOut];
    v10 = __ICLogTypeEnabled();
    v11 = _gICOSLog;
    if (v10)
    {
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEBUG))
    {
      sub_100024780(v9, v11);
    }
  }

  if (v6)
  {
    v12 = [(NSMutableArray *)self->_eventArray objectAtIndex:0];
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:"checkInterruptWriteCompletion:" object:v12];
    [(NSMutableArray *)self->_eventArray removeObjectAtIndex:0];
    [(PTPDeviceUSBTransport *)self sendNextEvent];
  }
}

- (void)abortInterruptWrite:(id)a3
{
  v4 = a3;
  if (![(PTPDeviceUSBTransport *)self connected])
  {
    __ICOSLogCreate();
    v7 = [NSString stringWithFormat:@"[0x%x] Device Not Attached", 3758097113];
    v8 = __ICLogTypeEnabled();
    v9 = _gICOSLog;
    if (v8)
    {
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEBUG))
    {
      sub_100024780(v7, v9);
    }

    goto LABEL_16;
  }

  if ([(NSMutableArray *)self->_eventArray containsObject:v4])
  {
    v5 = (*(*self->_usbCore._deviceInterfaceInterfaceRef + 24))(self->_usbCore._deviceInterfaceInterfaceRef, self->_interruptPipeIn);
    numberOfSendEventsTimedOut = self->_numberOfSendEventsTimedOut;
    if (numberOfSendEventsTimedOut > 1)
    {
      self->_sendEvents = 0;
    }

    else
    {
      self->_numberOfSendEventsTimedOut = numberOfSendEventsTimedOut + 1;
    }

    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%x", [v4 eventCode]);
    __ICOSLogCreate();
    v7 = v10;
    v11 = v7;
    if ([v7 length] >= 0x15)
    {
      v12 = [v7 substringWithRange:{0, 18}];
      v11 = [v12 stringByAppendingString:@".."];
    }

    v13 = [NSString stringWithFormat:@"[0x%x] Events Timed Out: [%d]", v5, self->_numberOfSendEventsTimedOut];
    v14 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v11;
      v16 = v14;
      *buf = 136446466;
      v18 = [v11 UTF8String];
      v19 = 2114;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

LABEL_16:
  }
}

- (BOOL)sendNextEvent
{
  if (![(PTPDeviceUSBTransport *)self connected]|| ![(NSMutableArray *)self->_eventArray count])
  {
    return 0;
  }

  v3 = [(NSMutableArray *)self->_eventArray objectAtIndex:0];
  [v3 eventCode];
  v4 = stringForEventCode();
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[0x%x]", [v3 eventCode]);
  __ICOSLogCreate();
  v6 = v5;
  v7 = v6;
  if ([v6 length] >= 0x15)
  {
    v8 = [v6 substringWithRange:{0, 18}];
    v7 = [v8 stringByAppendingString:@".."];
  }

  v9 = [NSString stringWithFormat:@"<event> %@", v4];
  v10 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v7;
    v12 = v10;
    *buf = 136446466;
    v23 = [v7 UTF8String];
    v24 = 2114;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  eventDataRef = self->_eventDataRef;
  BytePtr = IOUSBDeviceDataGetBytePtr();
  v15 = self->_eventDataRef;
  Capacity = IOUSBDeviceDataGetCapacity();
  if (BytePtr && (v17 = Capacity, Capacity == -[PTPDeviceUSBTransport eventDataBufferSize](self, "eventDataBufferSize")) && ([v3 contentForUSBUsingBuffer:BytePtr capacity:v17], v18 = objc_claimAutoreleasedReturnValue(), v19 = -[PTPDeviceUSBTransport writeInterruptData:](self, "writeInterruptData:", v18), v18, !v19))
  {
    [(PTPDeviceUSBTransport *)self performSelector:"checkInterruptWriteCompletion:" withObject:v3 afterDelay:5.0];
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (int)readBulkData
{
  if (![(PTPDeviceUSBTransport *)self connected])
  {
    return -536870183;
  }

  __ICOSLogCreate();
  if (byte_100040388)
  {
    v3 = "YES";
  }

  else
  {
    v3 = "NO";
  }

  v4 = [NSString stringWithFormat:@"(_bulkPipeOut)->readPipeAsync - Read In Progress: %s \n", v3];
  if (__ICLogTypeEnabled())
  {
    v5 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  if (byte_100040388)
  {
    return -536870184;
  }

  result = (*(*self->_usbCore._deviceInterfaceInterfaceRef + 20))(self->_usbCore._deviceInterfaceInterfaceRef, self->_bulkPipeOut, self->_readDataRef, self->_readBufferSize, sub_100002254, self);
  if (result == -536870208)
  {
    [(PTPDeviceUSBTransport *)self setConnected:0];
    return -536870208;
  }

  else if (!result)
  {
    byte_100040388 = 1;
  }

  return result;
}

- (int)readInterruptData
{
  if (![(PTPDeviceUSBTransport *)self connected])
  {
    return -536870183;
  }

  __ICOSLogCreate();
  v2 = [NSString stringWithFormat:@"(_interfacePipeIn)->readPipeAsync - Pend \n"];
  if (__ICLogTypeEnabled())
  {
    v3 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", &v5, 0xCu);
    }
  }

  return 0;
}

- (BOOL)handleBulkData:(unint64_t)a3 result:(int)a4
{
  __ICOSLogCreate();
  if (__ICLogTypeEnabled())
  {
    v6 = @"handleBulkData";
    if ([@"handleBulkData" length] >= 0x15)
    {
      v7 = [@"handleBulkData" substringWithRange:{0, 18}];
      v6 = [v7 stringByAppendingString:@".."];
    }

    v8 = [(PTPDeviceUSBTransport *)self transactionData];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Received: [%8ld]b, Buffer Allocated: [%8ld]b\n", a3, [v8 length]);

    v10 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v6;
      v12 = v10;
      *buf = 136446466;
      v84 = [(__CFString *)v6 UTF8String];
      v85 = 2114;
      v86 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  v81 = [(PTPDeviceUSBTransport *)self connected];
  if (v81)
  {
    if (a3)
    {
      v13 = [(PTPDeviceUSBTransport *)self transactionData];
      v14 = [v13 length];

      v15 = [(PTPDeviceUSBTransport *)self transactionData];
      [v15 increaseLengthBy:a3];

      v16 = [(PTPDeviceUSBTransport *)self transactionData];
      memcpy(&v14[[v16 mutableBytes]], self->_readBuffer, a3);

      __ICOSLogCreate();
      v17 = [NSString stringWithFormat:@"Grew Buffer:     [%8lu]b\n", a3];
      if (__ICLogTypeEnabled())
      {
        v18 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v84 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }
    }

    v19 = [(PTPDeviceUSBTransport *)self transactionData];
    v20 = [v19 length];

    if (v20)
    {
      v21 = 0;
      v22 = 0;
      v82 = a3;
      do
      {
        if (v20 >= 4)
        {
          do
          {
            v23 = [(PTPDeviceUSBTransport *)self transactionData];
            v21 = [v23 mutableBytes];

            v22 = *v21;
            if (v22 > 0xB)
            {
              break;
            }

            v24 = [(PTPDeviceUSBTransport *)self transactionData];
            v87.location = 0;
            v87.length = 4;
            CFDataDeleteBytes(v24, v87);

            v25 = [(PTPDeviceUSBTransport *)self transactionData];
            v20 = [v25 length];

            __ICOSLogCreate();
            v26 = &stru_100038B48;
            if ([&stru_100038B48 length] >= 0x15)
            {
              v27 = [&stru_100038B48 substringWithRange:{0, 18}];
              v26 = [v27 stringByAppendingString:@".."];
            }

            v28 = [(PTPDeviceUSBTransport *)self transactionData];
            v29 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Illegal Length:   [%8lu]b, Adjusting Buffer: [%8lu]b\n", a3, [v28 length]);

            v30 = _gICOSLog;
            if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
            {
              v31 = v26;
              v32 = v30;
              v33 = [(__CFString *)v26 UTF8String];
              *buf = 136446466;
              v84 = v33;
              v85 = 2114;
              v86 = v29;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
            }
          }

          while (v20 > 3);
        }

        __ICOSLogCreate();
        v34 = [NSString stringWithFormat:@"Length Received: [%8u]b, Buffer Allocated: [%8lu]b\n", v22, v20];
        if (__ICLogTypeEnabled())
        {
          v35 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v84 = v34;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }
        }

        if (v22 < 0xC || v20 < v22)
        {
          return v81;
        }

        v36 = *(v21 + 2);
        switch(v36)
        {
          case 3:
            v52 = NSSelectorFromString(@"handleResponse:");
            v37 = [[PTPOperationResponsePacket alloc] initWithUSBBuffer:v21];
            if (!v37)
            {
              __ICOSLogCreate();
              v50 = &stru_100038B48;
              if ([&stru_100038B48 length] >= 0x15)
              {
                v58 = [&stru_100038B48 substringWithRange:{0, 18}];
                v50 = [v58 stringByAppendingString:@".."];
              }

              v59 = [NSString stringWithFormat:@"PTPDeviceUSBTransport received bad response!"];
              v60 = _gICOSLog;
              if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
              {
LABEL_63:
                v68 = v50;
                v69 = v60;
                v70 = [(__CFString *)v50 UTF8String];
                *buf = 136446466;
                v84 = v70;
                v85 = 2114;
                v86 = v59;
                _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);

                a3 = v82;
              }

LABEL_64:

              goto LABEL_65;
            }

            v56 = [(PTPDeviceUSBTransport *)self delegate];
            if (v56)
            {
              v50 = v56;
              v54 = [(PTPDeviceUSBTransport *)self delegate];
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
LABEL_59:

                goto LABEL_65;
              }

              v55 = [(PTPDeviceUSBTransport *)self delegateNeedsResponse];
LABEL_46:
              v57 = v55;

              if (v57)
              {
                v50 = [(PTPDeviceUSBTransport *)self delegate];
                [(__CFString *)v50 performSelector:v52 withObject:v37];
                goto LABEL_58;
              }

LABEL_48:
              a3 = v82;
            }

            break;
          case 2:
            v37 = [[PTPDataPacket alloc] initWithUSBBuffer:v21];
            if ([v37 bufferSize] <= a3)
            {
              v51 = NSSelectorFromString(@"handleData:");
              if (!v37)
              {
                __ICOSLogCreate();
                v50 = &stru_100038B48;
                if ([&stru_100038B48 length] >= 0x15)
                {
                  v67 = [&stru_100038B48 substringWithRange:{0, 18}];
                  v50 = [v67 stringByAppendingString:@".."];
                }

                v59 = [NSString stringWithFormat:@"PTPDeviceUSBTransport received bad data!"];
                v60 = _gICOSLog;
                if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_63;
                }

                goto LABEL_64;
              }

              v52 = v51;
              v53 = [(PTPDeviceUSBTransport *)self delegate];
              if (v53)
              {
                v50 = v53;
                v54 = [(PTPDeviceUSBTransport *)self delegate];
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_59;
                }

                v55 = [(PTPDeviceUSBTransport *)self delegateNeedsData];
                goto LABEL_46;
              }
            }

            break;
          case 1:
            v37 = [[PTPOperationRequestPacket alloc] initWithUSBBuffer:v21];
            v38 = NSSelectorFromString(@"holdPowerAssertion");
            v39 = [(PTPDeviceUSBTransport *)self delegate];
            if (v39)
            {
              v40 = v39;
              v41 = [(PTPDeviceUSBTransport *)self delegate];
              v42 = objc_opt_respondsToSelector();

              if (v42)
              {
                v43 = [(PTPDeviceUSBTransport *)self delegate];
                [v43 performSelector:v38 withObject:0];
              }
            }

            v44 = NSSelectorFromString(@"handleRequest:");
            if (!v37)
            {
              __ICOSLogCreate();
              v50 = &stru_100038B48;
              if ([&stru_100038B48 length] >= 0x15)
              {
                v61 = [&stru_100038B48 substringWithRange:{0, 18}];
                v50 = [v61 stringByAppendingString:@".."];
              }

              v62 = [NSString stringWithFormat:@"PTPDeviceUSBTransport received bad request!\n"];
              v63 = _gICOSLog;
              if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
              {
                v64 = v50;
                v65 = v63;
                v66 = [(__CFString *)v50 UTF8String];
                *buf = 136446466;
                v84 = v66;
                v85 = 2114;
                v86 = v62;
                _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
              }

LABEL_58:
              a3 = v82;
LABEL_65:

              break;
            }

            v45 = v44;
            v46 = [(PTPDeviceUSBTransport *)self delegate];
            if (v46)
            {
              v47 = v46;
              v48 = [(PTPDeviceUSBTransport *)self delegate];
              v49 = objc_opt_respondsToSelector();

              if (v49)
              {
                v50 = [(PTPDeviceUSBTransport *)self delegate];
                -[PTPDeviceUSBTransport setDelegateNeedsData:](self, "setDelegateNeedsData:", [-[__CFString performSelector:withObject:](v50 performSelector:v45 withObject:{v37), "BOOLValue"}]);
                goto LABEL_58;
              }
            }

            goto LABEL_48;
          default:
            __ICOSLogCreate();
            v74 = &stru_100038B48;
            if ([&stru_100038B48 length] >= 0x15)
            {
              v75 = [&stru_100038B48 substringWithRange:{0, 18}];
              v74 = [v75 stringByAppendingString:@".."];
            }

            v76 = [NSString stringWithFormat:@"PTPDeviceUSBTransport received unrecognizable packet!"];
            v77 = _gICOSLog;
            if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
            {
              v78 = v74;
              v79 = v77;
              v80 = [(__CFString *)v74 UTF8String];
              *buf = 136446466;
              v84 = v80;
              v85 = 2114;
              v86 = v76;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
            }

            exit(1);
        }

        v71 = [(PTPDeviceUSBTransport *)self transactionData];
        v88.location = 0;
        v88.length = v20;
        CFDataDeleteBytes(v71, v88);

        v72 = [(PTPDeviceUSBTransport *)self transactionData];
        v20 = [v72 length];
      }

      while (v20);
    }
  }

  return v81;
}

- (void)handleInterruptData:(unint64_t)a3
{
  if ([(PTPDeviceUSBTransport *)self connected])
  {
    v5 = [(PTPDeviceUSBTransport *)self eventData];
    [v5 appendBytes:-[PTPDeviceUSBTransport eventDataBuffer](self length:{"eventDataBuffer"), a3}];

    v6 = [(PTPDeviceUSBTransport *)self eventData];
    v7 = [v6 length];

    while (v7)
    {
      v8 = [(PTPDeviceUSBTransport *)self eventData];
      v9 = [v8 mutableBytes];

      v10 = *v9;
      if (v7 < v10)
      {
        break;
      }

      if (*(v9 + 2) == 4)
      {
        v11 = NSSelectorFromString(@"handleEvent:");
        v12 = [[PTPEventPacket alloc] initWithUSBBuffer:v9];
        v13 = [(PTPDeviceUSBTransport *)self delegate];
        if (v13)
        {
          v14 = v13;
          v15 = [(PTPDeviceUSBTransport *)self delegate];
          v16 = objc_opt_respondsToSelector();

          if (v16)
          {
            v17 = [(PTPDeviceUSBTransport *)self delegate];
            [v17 performSelector:v11 withObject:v12 afterDelay:0.0];
          }
        }
      }

      v18 = [(PTPDeviceUSBTransport *)self eventData];
      v20.location = 0;
      v20.length = v10;
      CFDataDeleteBytes(v18, v20);

      v19 = [(PTPDeviceUSBTransport *)self eventData];
      v7 = [v19 length];
    }
  }
}

- (void)deviceAdded:(unsigned int)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100009B84;
  v3[3] = &unk_100038858;
  v3[4] = self;
  v4 = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

- (BOOL)processDeviceInterface:(unsigned int)a3
{
  theInterface = 0;
  theScore = 0;
  if (!a3)
  {
    __ICOSLogCreate();
    v40 = @"<USB>";
    if ([(__CFString *)v40 length]>= 0x15)
    {
      v41 = [(__CFString *)v40 substringWithRange:0, 18];
      v42 = [v41 stringByAppendingString:@".."];

      v40 = v42;
    }

    v43 = [NSString stringWithFormat:@"❌ processDeviceInterface did not find service"];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      sub_1000246F4();
    }

    return 1;
  }

  v5 = 4;
  while (1)
  {
    [(PTPDeviceUSBTransport *)self clearDeviceInterface];
    v6 = CFUUIDGetConstantUUIDWithBytes(0, 0x9Eu, 0x72u, 0x21u, 0x7Eu, 0x8Au, 0x60u, 0x11u, 0xDBu, 0xBFu, 0x57u, 0, 0xDu, 0x93u, 0x6Du, 6u, 0xD2u);
    v7 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
    v8 = IOCreatePlugInInterfaceForService(a3, v6, v7, &theInterface, &theScore);
    v9 = v8;
    v10 = theInterface;
    if (theInterface)
    {
      if (!v8)
      {
        break;
      }
    }

    __ICOSLogCreate();
    v14 = @"<USB>";
    if ([(__CFString *)v14 length]>= 0x15)
    {
      v19 = [(__CFString *)v14 substringWithRange:0, 18];
      v20 = [v19 stringByAppendingString:@".."];

      v14 = v20;
    }

    v17 = [NSString stringWithFormat:@"❌ IOCreatePlugInInterfaceForService failed"];
    v21 = _gICOSLog;
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

LABEL_28:
    v33 = v14;
    v34 = v21;
    v35 = [(__CFString *)v14 UTF8String];
    *buf = 136446466;
    v56 = v35;
    v57 = 2114;
    v58 = v17;
    _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%{public}20s ! %{public}@", buf, 0x16u);

LABEL_20:
    __ICOSLogCreate();
    v24 = @"<USB>";
    if ([(__CFString *)v24 length]>= 0x15)
    {
      v25 = [(__CFString *)v24 substringWithRange:0, 18];
      v26 = [v25 stringByAppendingString:@".."];

      v24 = v26;
    }

    v27 = "YES";
    if (!theInterface)
    {
      v27 = "NO";
    }

    v28 = [NSString stringWithFormat:@"❌ Retry[%u], kr = %d, pluginInterface = %s", v5, v9, v27];
    v29 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      v30 = v24;
      v31 = v29;
      v32 = [(__CFString *)v24 UTF8String];
      *buf = 136446466;
      v56 = v32;
      v57 = 2114;
      v58 = v28;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%{public}20s ! %{public}@", buf, 0x16u);
    }

    sleep(2u);
    v5 = (v5 - 1);
    if (v5 == -1)
    {
      v39 = 1;
      goto LABEL_35;
    }
  }

  QueryInterface = (*theInterface)->QueryInterface;
  v12 = CFUUIDGetConstantUUIDWithBytes(0, 0xEAu, 0x33u, 0xBAu, 0x4Fu, 0x8Au, 0x60u, 0x11u, 0xDBu, 0x84u, 0xDBu, 0, 0xDu, 0x93u, 0x6Du, 6u, 0xD2u);
  v13 = CFUUIDGetUUIDBytes(v12);
  v9 = (QueryInterface)(v10, *&v13.byte0, *&v13.byte8, &self->_usbCore);
  IODestroyPlugInInterface(theInterface);
  if (!self->_usbCore._deviceInterfaceInterfaceRef || v9)
  {
    __ICOSLogCreate();
    v14 = @"<USB>";
    if ([(__CFString *)v14 length]>= 0x15)
    {
      v22 = [(__CFString *)v14 substringWithRange:0, 18];
      v23 = [v22 stringByAppendingString:@".."];

      v14 = v23;
    }

    v17 = [NSString stringWithFormat:@"❌ QueryInterface failed"];
    v21 = _gICOSLog;
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

  if ([(PTPDeviceUSBTransport *)self setupDeviceInterface])
  {
    __ICOSLogCreate();
    v14 = @"<USB>";
    if ([(__CFString *)v14 length]>= 0x15)
    {
      v15 = [(__CFString *)v14 substringWithRange:0, 18];
      v16 = [v15 stringByAppendingString:@".."];

      v14 = v16;
    }

    v17 = [NSString stringWithFormat:@"❌ SetupDeviceInterface failed"];
    v18 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      v36 = v14;
      v37 = v18;
      v38 = [(__CFString *)v14 UTF8String];
      *buf = 136446466;
      v56 = v38;
      v57 = 2114;
      v58 = v17;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%{public}20s ! %{public}@", buf, 0x16u);
    }

    v9 = 0;
    goto LABEL_20;
  }

  IOServiceAddInterestNotification(self->_usbCore._notificationPort, a3, "IOGeneralInterest", sub_100001464, self, &self->_usbCore._notification);
  v39 = 0;
  v9 = 0;
LABEL_35:
  v44 = theInterface;
  __ICOSLogCreate();
  v45 = @"<USB>";
  v46 = [(__CFString *)v45 length];
  if (v44)
  {
    if (v46 >= 0x15)
    {
      v47 = [(__CFString *)v45 substringWithRange:0, 18];
      v48 = [v47 stringByAppendingString:@".."];

      v45 = v48;
    }

    v49 = [NSString stringWithFormat:@"✅ processDeviceInterface"];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }
  }

  else
  {
    if (v46 >= 0x15)
    {
      v50 = [(__CFString *)v45 substringWithRange:0, 18];
      v51 = [v50 stringByAppendingString:@".."];

      v45 = v51;
    }

    v49 = [NSString stringWithFormat:@"❌ processDeviceInterface failed: %d", v9];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
LABEL_43:
      sub_1000246F4();
    }
  }

  IOObjectRelease(a3);
  if (v39)
  {
    [(PTPDeviceUSBTransport *)self clearDeviceInterface];
    return 0;
  }

  return 1;
}

- (int)setupDeviceInterface
{
  v71 = 0;
  [(PTPDeviceUSBTransport *)self waitForHostConnection:0];
  __ICOSLogCreate();
  v3 = @"<USB>";
  v4 = v3;
  if ([(__CFString *)v3 length]>= 0x15)
  {
    v5 = [(__CFString *)v3 substringWithRange:0, 18];
    v4 = [v5 stringByAppendingString:@".."];
  }

  v6 = [NSString stringWithFormat:@"USBDeviceInterface Setup"];
  v7 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v4;
    v9 = v7;
    *buf = 136446466;
    v73 = [v4 UTF8String];
    v74 = 2114;
    v75 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v10 = (*(*self->_usbCore._deviceInterfaceInterfaceRef + 4))(self->_usbCore._deviceInterfaceInterfaceRef, 0);
  if (v10)
  {
    v11 = v10;
    __ICOSLogCreate();
    v12 = v3;
    if ([(__CFString *)v12 length]>= 0x15)
    {
      v13 = [(__CFString *)v12 substringWithRange:0, 18];
      v14 = [v13 stringByAppendingString:@".."];

      v12 = v14;
    }

    v15 = [NSString stringWithFormat:@"❌ ifRef->open"];
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    goto LABEL_64;
  }

  v16 = (*(*self->_usbCore._deviceInterfaceInterfaceRef + 10))(self->_usbCore._deviceInterfaceInterfaceRef, @"PTP");
  if (v16)
  {
    v11 = v16;
    __ICOSLogCreate();
    v12 = v3;
    if ([(__CFString *)v12 length]>= 0x15)
    {
      v17 = [(__CFString *)v12 substringWithRange:0, 18];
      v18 = [v17 stringByAppendingString:@".."];

      v12 = v18;
    }

    v15 = [NSString stringWithFormat:@"❌ iRef->setDescription\n"];
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    goto LABEL_64;
  }

  v19 = (*(*self->_usbCore._deviceInterfaceInterfaceRef + 11))(self->_usbCore._deviceInterfaceInterfaceRef, 6, 0);
  if (v19)
  {
    v11 = v19;
    __ICOSLogCreate();
    v12 = v3;
    if ([(__CFString *)v12 length]>= 0x15)
    {
      v20 = [(__CFString *)v12 substringWithRange:0, 18];
      v21 = [v20 stringByAppendingString:@".."];

      v12 = v21;
    }

    v15 = [NSString stringWithFormat:@"❌ ifRef->setClassForAlternateSetting\n"];
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    goto LABEL_64;
  }

  v22 = (*(*self->_usbCore._deviceInterfaceInterfaceRef + 12))(self->_usbCore._deviceInterfaceInterfaceRef, 1, 0);
  if (v22)
  {
    v11 = v22;
    __ICOSLogCreate();
    v12 = v3;
    if ([(__CFString *)v12 length]>= 0x15)
    {
      v23 = [(__CFString *)v12 substringWithRange:0, 18];
      v24 = [v23 stringByAppendingString:@".."];

      v12 = v24;
    }

    v15 = [NSString stringWithFormat:@"❌ ifRef->setSubClassForAlternateSetting\n"];
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    goto LABEL_64;
  }

  v25 = (*(*self->_usbCore._deviceInterfaceInterfaceRef + 13))(self->_usbCore._deviceInterfaceInterfaceRef, 1, 0);
  if (v25)
  {
    v11 = v25;
    __ICOSLogCreate();
    v12 = v3;
    if ([(__CFString *)v12 length]>= 0x15)
    {
      v26 = [(__CFString *)v12 substringWithRange:0, 18];
      v27 = [v26 stringByAppendingString:@".."];

      v12 = v27;
    }

    v15 = [NSString stringWithFormat:@"❌ ifRef->setProtocolForAlternateSetting\n"];
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    goto LABEL_64;
  }

  v28 = (*(*self->_usbCore._deviceInterfaceInterfaceRef + 16))(self->_usbCore._deviceInterfaceInterfaceRef, 2, 0, 0xFFFFFFFFLL, 10, 0, 0, &self->_bulkPipeOut);
  if (v28)
  {
    v11 = v28;
    __ICOSLogCreate();
    v12 = v3;
    if ([(__CFString *)v12 length]>= 0x15)
    {
      v29 = [(__CFString *)v12 substringWithRange:0, 18];
      v30 = [v29 stringByAppendingString:@".."];

      v12 = v30;
    }

    v15 = [NSString stringWithFormat:@"❌ ifRef->createPipe [Bulk-OUT]\n"];
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    goto LABEL_64;
  }

  v31 = (*(*self->_usbCore._deviceInterfaceInterfaceRef + 16))(self->_usbCore._deviceInterfaceInterfaceRef, 2, 1, 0xFFFFFFFFLL, 10, 0, 0, &self->_bulkPipeIn);
  if (v31)
  {
    v11 = v31;
    __ICOSLogCreate();
    v12 = v3;
    if ([(__CFString *)v12 length]>= 0x15)
    {
      v32 = [(__CFString *)v12 substringWithRange:0, 18];
      v33 = [v32 stringByAppendingString:@".."];

      v12 = v33;
    }

    v15 = [NSString stringWithFormat:@"❌ ifRef->createPipe [Bulk-IN]\n"];
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    goto LABEL_64;
  }

  v34 = (*(*self->_usbCore._deviceInterfaceInterfaceRef + 16))(self->_usbCore._deviceInterfaceInterfaceRef, 3, 1, 0xFFFFFFFFLL, 10, 0, 0, &self->_interruptPipeIn);
  if (v34)
  {
    v11 = v34;
    __ICOSLogCreate();
    v12 = v3;
    if ([(__CFString *)v12 length]>= 0x15)
    {
      v35 = [(__CFString *)v12 substringWithRange:0, 18];
      v36 = [v35 stringByAppendingString:@".."];

      v12 = v36;
    }

    v15 = [NSString stringWithFormat:@"❌ ifRef->createPipe [Interrupt-IN]\n"];
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    goto LABEL_64;
  }

  v37 = (*(*self->_usbCore._deviceInterfaceInterfaceRef + 9))(self->_usbCore._deviceInterfaceInterfaceRef, sub_100001A38, self, self);
  if (v37)
  {
    v11 = v37;
    __ICOSLogCreate();
    v12 = v3;
    if ([(__CFString *)v12 length]>= 0x15)
    {
      v38 = [(__CFString *)v12 substringWithRange:0, 18];
      v39 = [v38 stringByAppendingString:@".."];

      v12 = v39;
    }

    v15 = [NSString stringWithFormat:@"❌ ifRef->setMessageCallback\n"];
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    goto LABEL_64;
  }

  deviceInterfaceInterfaceRef = self->_usbCore._deviceInterfaceInterfaceRef;
  v41 = *(*deviceInterfaceInterfaceRef + 8);
  Current = CFRunLoopGetCurrent();
  v43 = v41(deviceInterfaceInterfaceRef, sub_10000B3E4, 0, 0, self, self, Current, kCFRunLoopCommonModes);
  if (v43)
  {
    v11 = v43;
    __ICOSLogCreate();
    v12 = v3;
    if ([(__CFString *)v12 length]>= 0x15)
    {
      v44 = [(__CFString *)v12 substringWithRange:0, 18];
      v45 = [v44 stringByAppendingString:@".."];

      v12 = v45;
    }

    v15 = [NSString stringWithFormat:@"❌ ifRef->setClassCommandCallbacksWithRunLoop: %p\n", CFRunLoopGetCurrent()];
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    goto LABEL_64;
  }

  v46 = self->_usbCore._deviceInterfaceInterfaceRef;
  v47 = *(*v46 + 6);
  v48 = CFRunLoopGetCurrent();
  v49 = v47(v46, v48, kCFRunLoopCommonModes);
  if (v49)
  {
    v11 = v49;
    __ICOSLogCreate();
    v12 = v3;
    if ([(__CFString *)v12 length]>= 0x15)
    {
      v50 = [(__CFString *)v12 substringWithRange:0, 18];
      v51 = [v50 stringByAppendingString:@".."];

      v12 = v51;
    }

    v15 = [NSString stringWithFormat:@"❌ ifRef->scheduleWithRunLoop\n"];
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    goto LABEL_64;
  }

  v52 = (*(*self->_usbCore._deviceInterfaceInterfaceRef + 17))(self->_usbCore._deviceInterfaceInterfaceRef);
  if (v52)
  {
    v11 = v52;
    __ICOSLogCreate();
    v12 = v3;
    if ([(__CFString *)v12 length]>= 0x15)
    {
      v53 = [(__CFString *)v12 substringWithRange:0, 18];
      v54 = [v53 stringByAppendingString:@".."];

      v12 = v54;
    }

    v15 = [NSString stringWithFormat:@"❌ ifRef->commitConfiguration\n"];
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

LABEL_64:
    sub_1000246F4();
LABEL_76:

    return v11;
  }

  if ((*(*self->_usbCore._deviceInterfaceInterfaceRef + 28))(self->_usbCore._deviceInterfaceInterfaceRef, @"com.apple.usbptpd.demand"))
  {
    __ICOSLogCreate();
    v55 = v3;
    if ([(__CFString *)v55 length]>= 0x15)
    {
      v56 = [(__CFString *)v55 substringWithRange:0, 18];
      v57 = [v56 stringByAppendingString:@".."];

      v55 = v57;
    }

    v58 = [NSString stringWithFormat:@"❌ ifRef->registerForDemandLaunch\n"];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      sub_1000246F4();
    }
  }

  v59 = (*(*self->_usbCore._deviceInterfaceInterfaceRef + 36))(self->_usbCore._deviceInterfaceInterfaceRef, &v71 + 4, &v71);
  if (v59)
  {
    v11 = v59;
    __ICOSLogCreate();
    v12 = v3;
    if ([(__CFString *)v12 length]>= 0x15)
    {
      v60 = [(__CFString *)v12 substringWithRange:0, 18];
      v61 = [v60 stringByAppendingString:@".."];

      v12 = v61;
    }

    v15 = [NSString stringWithFormat:@"❌ <not active>"];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      sub_1000246F4();
    }

    goto LABEL_76;
  }

  if (HIDWORD(v71))
  {
    [(PTPDeviceUSBTransport *)self activate:v71];
  }

  else
  {
    __ICOSLogCreate();
    v63 = v3;
    if ([(__CFString *)v63 length]>= 0x15)
    {
      v64 = [(__CFString *)v63 substringWithRange:0, 18];
      v65 = [v64 stringByAppendingString:@".."];

      v63 = v65;
    }

    v66 = [NSString stringWithFormat:@"✅ <active> and waiting: %2ds for host connection", 15];
    v67 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v68 = v63;
      v69 = v67;
      v70 = [(__CFString *)v63 UTF8String];
      *buf = 136446466;
      v73 = v70;
      v74 = 2114;
      v75 = v66;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [(PTPDeviceUSBTransport *)self waitForHostConnection:1];
  }

  return 0;
}

- (void)clearDeviceInterface
{
  __ICOSLogCreate();
  v3 = @"<USB>";
  if ([(__CFString *)v3 length]>= 0x15)
  {
    v4 = [(__CFString *)v3 substringWithRange:0, 18];
    v5 = [v4 stringByAppendingString:@".."];

    v3 = v5;
  }

  v6 = [NSString stringWithFormat:@"USBDeviceInterface Clear"];
  v7 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v3;
    v9 = v7;
    v11 = 136446466;
    v12 = [(__CFString *)v3 UTF8String];
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v11, 0x16u);
  }

  deviceInterfaceInterfaceRef = self->_usbCore._deviceInterfaceInterfaceRef;
  if (deviceInterfaceInterfaceRef)
  {
    (*(*deviceInterfaceInterfaceRef + 5))(deviceInterfaceInterfaceRef, 0);
    (*(*self->_usbCore._deviceInterfaceInterfaceRef + 3))(self->_usbCore._deviceInterfaceInterfaceRef);
    self->_usbCore._deviceInterfaceInterfaceRef = 0;
  }
}

- (int)handleDeviceRequest:(id *)a3 data:(__IOUSBDeviceData *)a4 dataSize:(unint64_t *)a5 status:(int *)a6
{
  __ICOSLogCreate();
  v11 = @"<USB>";
  if ([(__CFString *)v11 length]>= 0x15)
  {
    v12 = [(__CFString *)v11 substringWithRange:0, 18];
    v13 = [v12 stringByAppendingString:@".."];

    v11 = v13;
  }

  v14 = [NSString stringWithFormat:@"PTPDeviceUSBTransport | Handle Service Device Request: 0x%x, Data: %p, Count: %llu\n", a3->var1, a4, *a5];
  v15 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v11;
    v17 = v15;
    *buf = 136446466;
    v38 = [(__CFString *)v11 UTF8String];
    v39 = 2114;
    v40 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  var1 = a3->var1;
  switch(var1)
  {
    case 'd':
      if (*a5 < 6)
      {
        return 1;
      }

      v36 = 0;
      if (!(*(*self->_usbCore._deviceInterfaceInterfaceRef + 26))(self->_usbCore._deviceInterfaceInterfaceRef, 6, &v36))
      {
        *a4 = v36;
        *a6 = 0;
      }

      os_unfair_lock_lock(&self->_cancelLock);
      self->_canceledTransactionID = self->_transactionID;
      os_unfair_lock_unlock(&self->_cancelLock);
      __ICOSLogCreate();
      v26 = &stru_100038B48;
      if ([&stru_100038B48 length] >= 0x15)
      {
        v30 = [&stru_100038B48 substringWithRange:{0, 18}];
        v26 = [v30 stringByAppendingString:@".."];
      }

      v28 = [NSString stringWithFormat:@"PTPDeviceUSBTransport | Canceled Transaction: %d\n", self->_transactionID];
      v29 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
LABEL_28:
        v31 = v26;
        v32 = v29;
        v33 = [(__CFString *)v26 UTF8String];
        *buf = 136446466;
        v38 = v33;
        v39 = 2114;
        v40 = v28;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

LABEL_29:

      return 1;
    case 'f':
      if (*a5)
      {
        return 1;
      }

      v36 = 0;
      if (!(*(*self->_usbCore._deviceInterfaceInterfaceRef + 26))(self->_usbCore._deviceInterfaceInterfaceRef, 6, &v36))
      {
        *a4 = v36;
        *a6 = 0;
      }

      __ICOSLogCreate();
      v26 = &stru_100038B48;
      if ([&stru_100038B48 length] >= 0x15)
      {
        v27 = [&stru_100038B48 substringWithRange:{0, 18}];
        v26 = [v27 stringByAppendingString:@".."];
      }

      v28 = [NSString stringWithFormat:@"PTPDeviceUSBTransport | Device Reset: %d\n", self->_transactionID];
      v29 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      goto LABEL_29;
    case 'g':
      if (*a5 < 4 || (v36 = 0, (*(*self->_usbCore._deviceInterfaceInterfaceRef + 26))(self->_usbCore._deviceInterfaceInterfaceRef, 4, &v36)))
      {
        *a5 = 0;
        *a4 = 0;
        *a6 = -536870212;
        __ICOSLogCreate();
        v19 = &stru_100038B48;
        if ([&stru_100038B48 length] >= 0x15)
        {
          v20 = [&stru_100038B48 substringWithRange:{0, 18}];
          v19 = [v20 stringByAppendingString:@".."];
        }

        v21 = [NSString stringWithFormat:@"PTPDeviceUSBTransport | Device Request Failed"];
        v22 = _gICOSLog;
        if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }
      }

      else
      {
        *IOUSBDeviceDataGetBytePtr() = 536936452;
        *a5 = 4;
        *a4 = v36;
        *a6 = 0;
        __ICOSLogCreate();
        v19 = &stru_100038B48;
        if ([&stru_100038B48 length] >= 0x15)
        {
          v35 = [&stru_100038B48 substringWithRange:{0, 18}];
          v19 = [v35 stringByAppendingString:@".."];
        }

        v21 = [NSString stringWithFormat:@"PTPDeviceUSBTransport | Device Request Handled"];
        v22 = _gICOSLog;
        if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }
      }

      v23 = v19;
      v24 = v22;
      v25 = [(__CFString *)v19 UTF8String];
      *buf = 136446466;
      v38 = v25;
      v39 = 2114;
      v40 = v21;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);

LABEL_14:
      return 1;
  }

  return 0;
}

- (void)setUsbCore:(PTPDeviceUSBCore *)a3
{
  v3 = *&a3->_deviceInterfaceInterfaceRef;
  self->_usbCore._notificationPort = a3->_notificationPort;
  *&self->_usbCore._deviceInterfaceInterfaceRef = v3;
}

@end