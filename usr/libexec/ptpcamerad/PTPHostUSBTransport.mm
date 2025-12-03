@interface PTPHostUSBTransport
- (BOOL)sendRequest:(id)request;
- (BOOL)startInitiator;
- (BOOL)writeBulkData:(id)data;
- (PTPHostUSBTransport)initWithLocationID:(unsigned int)d delegate:(id)delegate;
- (id)delegate;
- (id)getTransaction:(id)transaction;
- (int)readInterruptData;
- (int)readResponseData:(id)data withTimeout:(unsigned int)timeout;
- (unsigned)cancelRequest:(id)request;
- (unsigned)deviceStatus;
- (void)abortPendingIO;
- (void)addTransaction:(id)transaction;
- (void)clearBulkInPipeStall;
- (void)dealloc;
- (void)deviceReset;
- (void)handleInterruptData:(unint64_t)data;
- (void)removeTransaction:(id)transaction;
- (void)sendData:(id)data;
- (void)sendDataPackets:(id)packets;
- (void)stop;
@end

@implementation PTPHostUSBTransport

- (PTPHostUSBTransport)initWithLocationID:(unsigned int)d delegate:(id)delegate
{
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = PTPHostUSBTransport;
  v7 = [(PTPHostUSBTransport *)&v19 init];
  if (v7)
  {
    v8 = dispatch_semaphore_create(0);
    machRecvSemaphore = v7->_machRecvSemaphore;
    v7->_machRecvSemaphore = v8;

    v7->_type = 2;
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v7->_locationID = d;
    v10 = [[NSMutableData alloc] initWithCapacity:0];
    eventData = v7->_eventData;
    v7->_eventData = v10;

    v12 = _gPTPHostDataBufferSize;
    v7->_eventDataBufferSize = _gPTPEventBufferSize;
    v7->_writeBufferSize = v12;
    v7->_writeBuffer = malloc_type_malloc(v12, 0x100004077774924uLL);
    v7->_eventDataBuffer = malloc_type_malloc(v7->_eventDataBufferSize, 0x100004077774924uLL);
    v13 = objc_alloc_init(NSMutableDictionary);
    transactions = v7->_transactions;
    v7->_transactions = v13;

    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v16 = dispatch_queue_create("PTPHostUSBTransportQueue", v15);
    transportQueue = v7->_transportQueue;
    v7->_transportQueue = v16;
  }

  return v7;
}

- (void)dealloc
{
  __ICOSLogCreate();
  v3 = @"PTPTransport";
  if ([@"PTPTransport" length] >= 0x15)
  {
    v4 = [@"PTPTransport" substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [NSString stringWithFormat:@"%p | %16s - 0x%08X", self, "dealloc locID", [(PTPHostUSBTransport *)self locationID]];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3;
    v8 = v6;
    *buf = 136446466;
    uTF8String = [(__CFString *)v3 UTF8String];
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  objc_storeWeak(&self->_delegate, 0);
  writeBuffer = self->_writeBuffer;
  if (writeBuffer)
  {
    free(writeBuffer);
  }

  self->_writeBuffer = 0;
  eventDataBuffer = self->_eventDataBuffer;
  if (eventDataBuffer)
  {
    free(eventDataBuffer);
  }

  self->_eventDataBuffer = 0;
  machRecvSemaphore = self->_machRecvSemaphore;
  v12 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(machRecvSemaphore, v12);
  v13.receiver = self;
  v13.super_class = PTPHostUSBTransport;
  [(PTPHostUSBTransport *)&v13 dealloc];
}

- (BOOL)startInitiator
{
  selfCopy = self;
  if (self->_role)
  {
    v3 = 0;
    goto LABEL_14;
  }

  existing = 0;
  v4 = IOServiceMatching("IOUSBInterface");
  v5 = [NSNumber numberWithUnsignedInt:selfCopy->_locationID];
  v6 = [NSDictionary dictionaryWithObject:v5 forKey:@"locationID"];
  [(__CFDictionary *)v4 setObject:v6 forKey:@"IOPropertyMatch"];

  v3 = 0;
  if (IOServiceGetMatchingServices(kIOMainPortDefault, v4, &existing))
  {
    goto LABEL_13;
  }

  v103 = selfCopy;
  v7 = IOIteratorNext(existing);
  if (!v7)
  {
LABEL_12:
    IOObjectRelease(existing);
    v3 = 0;
    goto LABEL_13;
  }

  v8 = v7;
  while (1)
  {
    *properties = 0;
    if (!IORegistryEntryCreateCFProperties(v8, properties, kCFAllocatorDefault, 0))
    {
      break;
    }

LABEL_11:
    IOObjectRelease(v8);
    v8 = IOIteratorNext(existing);
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  v9 = *properties;
  v10 = [*properties objectForKey:@"bInterfaceClass"];
  unsignedCharValue = [v10 unsignedCharValue];

  v12 = [v9 objectForKey:@"bInterfaceSubClass"];
  unsignedCharValue2 = [v12 unsignedCharValue];

  v14 = [v9 objectForKey:@"bInterfaceProtocol"];
  unsignedCharValue3 = [v14 unsignedCharValue];

  if (unsignedCharValue != 6 || unsignedCharValue2 != 1 || unsignedCharValue3 != 1)
  {

    goto LABEL_11;
  }

  v17 = [v9 objectForKey:@"idVendor"];
  -[PTPHostUSBTransport setVendorID:](selfCopy, "setVendorID:", [v17 unsignedShortValue]);

  v18 = [v9 objectForKey:@"idProduct"];
  -[PTPHostUSBTransport setProductID:](selfCopy, "setProductID:", [v18 unsignedShortValue]);

  parent = 0;
  if (!IORegistryEntryGetParentEntry(v8, "IOService", &parent))
  {
    if (parent)
    {
      v109 = 0;
      if (!IORegistryEntryCreateCFProperties(parent, &v109, kCFAllocatorDefault, 0))
      {
        v19 = v109;
        v20 = [(__CFDictionary *)v109 objectForKey:@"USB Serial Number"];
        [(PTPHostUSBTransport *)selfCopy setUsbSerialNumberString:v20];
      }
    }
  }

  IOObjectRelease(existing);
  v109 = 0;
  parent = 0;
  v21 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Du, 0x97u, 0x86u, 0xC6u, 0x9Eu, 0xF3u, 0x11u, 0xD4u, 0xADu, 0x51u, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
  v22 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v23 = IOCreatePlugInInterfaceForService(v8, v21, v22, &v109, &parent);
  if (!v23)
  {
    v32 = v109;
    v33 = *(*v109 + 8);
    v34 = CFUUIDGetConstantUUIDWithBytes(0, 0xBCu, 0xEAu, 0xADu, 0xDCu, 0x88u, 0x4Du, 0x4Fu, 0x27u, 0x83u, 0x40u, 0x36u, 0xD6u, 0x9Fu, 0xABu, 0x90u, 0xF6u);
    v35 = CFUUIDGetUUIDBytes(v34);
    v33(v32, *&v35.byte0, *&v35.byte8, &selfCopy->_interfaceInterfaceRef);
    IODestroyPlugInInterface(v109);
    interfaceInterfaceRef = selfCopy->_interfaceInterfaceRef;
    if (!interfaceInterfaceRef || ((*interfaceInterfaceRef)->USBInterfaceOpen)(interfaceInterfaceRef))
    {
      goto LABEL_29;
    }

    v108 = 0;
    if (((*selfCopy->_interfaceInterfaceRef)->GetNumEndpoints)(selfCopy->_interfaceInterfaceRef, &v108))
    {
LABEL_28:
      ((*selfCopy->_interfaceInterfaceRef)->USBInterfaceClose)(selfCopy->_interfaceInterfaceRef);
LABEL_29:
      v3 = 0;
      goto LABEL_30;
    }

    v107 = 0;
    v106 = 0;
    v105 = 0;
    v104 = 0;
    if (!v108)
    {
LABEL_84:
      if (((*selfCopy->_interfaceInterfaceRef)->CreateInterfaceAsyncPort)(selfCopy->_interfaceInterfaceRef, &selfCopy->_asyncPort))
      {
        ((*selfCopy->_interfaceInterfaceRef)->USBInterfaceClose)(selfCopy->_interfaceInterfaceRef);
        v3 = 0;
        goto LABEL_30;
      }

      __ICOSLogCreate();
      v95 = @"HostUSB";
      if ([@"HostUSB" length] >= 0x15)
      {
        v96 = [@"HostUSB" substringWithRange:{0, 18}];
        v95 = [v96 stringByAppendingString:@".."];
      }

      v97 = [NSString stringWithFormat:@"Interface Installed: %s", "YES"];
      v98 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v99 = v95;
        v100 = v98;
        uTF8String = [(__CFString *)v95 UTF8String];
        *properties = 136446466;
        *&properties[4] = uTF8String;
        v113 = 2114;
        v114 = v97;
        _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", properties, 0x16u);
      }

      selfCopy = v103;
      v102 = ((*v103->_interfaceInterfaceRef)->GetEndpointPropertiesV3)(v103->_interfaceInterfaceRef);
      v103->_notificationPort = v102;
      IONotificationPortSetDispatchQueue(v102, v103->_transportQueue);
      if (![(PTPHostUSBTransport *)v103 readInterruptData])
      {
        v103->_role = 2;
        v3 = 1;
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    v37 = 0;
    while (((*selfCopy->_interfaceInterfaceRef)->GetPipeProperties)(selfCopy->_interfaceInterfaceRef, ++v37, &v107, &v106 + 1, &v106, &v104, &v105))
    {
LABEL_67:
      if (v108 <= v37)
      {
        goto LABEL_84;
      }
    }

    if (v107 == 1 && v106 == 2)
    {
      selfCopy->_bulkPipeIn = v37;
      selfCopy->_maxPacketSizeBulkIn = v104;
      __ICOSLogCreate();
      v59 = @"HostUSB";
      if ([@"HostUSB" length] >= 0x15)
      {
        v60 = [@"HostUSB" substringWithRange:{0, 18}];
        v59 = [v60 stringByAppendingString:@".."];
      }

      v61 = [NSString stringWithFormat:@"_maxPacketSizeBulkIn: %d", selfCopy->_maxPacketSizeBulkIn];
      v62 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v63 = v59;
        v64 = v62;
        uTF8String2 = [(__CFString *)v59 UTF8String];
        *properties = 136446466;
        *&properties[4] = uTF8String2;
        v113 = 2114;
        v114 = v61;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", properties, 0x16u);
      }

      selfCopy = v103;
      if (((*v103->_interfaceInterfaceRef)->GetPipeStatus)(v103->_interfaceInterfaceRef, v103->_bulkPipeIn) != -536854449)
      {
        goto LABEL_67;
      }

      __ICOSLogCreate();
      v66 = @"HostUSB";
      if ([@"HostUSB" length] >= 0x15)
      {
        v67 = [@"HostUSB" substringWithRange:{0, 18}];
        v66 = [v67 stringByAppendingString:@".."];
      }

      v68 = [NSString stringWithFormat:@"Bulk In Clearing Pipe Stall"];
      v69 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v70 = v66;
        v71 = v69;
        uTF8String3 = [(__CFString *)v66 UTF8String];
        *properties = 136446466;
        *&properties[4] = uTF8String3;
        v113 = 2114;
        v114 = v68;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", properties, 0x16u);
      }

      v73 = ((*v103->_interfaceInterfaceRef)->ClearPipeStallBothEnds)(v103->_interfaceInterfaceRef, v103->_bulkPipeIn);
      __ICOSLogCreate();
      v55 = @"HostUSB";
      if ([@"HostUSB" length] >= 0x15)
      {
        v74 = [@"HostUSB" substringWithRange:{0, 18}];
        v55 = [v74 stringByAppendingString:@".."];
      }

      v57 = [NSString stringWithFormat:@"Bulk In Clear Reported: %0x", v73];
      v58 = _gICOSLog;
      if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_66;
      }
    }

    else if (v107 || v106 != 2)
    {
      if (v107 != 1 || v106 != 3)
      {
        goto LABEL_67;
      }

      selfCopy->_interruptPipeIn = v37;
      selfCopy->_maxPacketSizeInterruptIn = v104;
      v78 = ((*selfCopy->_interfaceInterfaceRef)->GetPipeStatus)(selfCopy->_interfaceInterfaceRef, v37);
      __ICOSLogCreate();
      v79 = @"HostUSB";
      if ([@"HostUSB" length] >= 0x15)
      {
        v80 = [@"HostUSB" substringWithRange:{0, 18}];
        v79 = [v80 stringByAppendingString:@".."];
      }

      v81 = [NSString stringWithFormat:@"_maxPacketSizeInterruptIn: %d", v103->_maxPacketSizeInterruptIn];
      v82 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v83 = v79;
        v84 = v82;
        uTF8String4 = [(__CFString *)v79 UTF8String];
        *properties = 136446466;
        *&properties[4] = uTF8String4;
        v113 = 2114;
        v114 = v81;
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", properties, 0x16u);
      }

      selfCopy = v103;
      if (v78 != -536854449)
      {
        goto LABEL_67;
      }

      __ICOSLogCreate();
      v86 = @"HostUSB";
      if ([@"HostUSB" length] >= 0x15)
      {
        v87 = [@"HostUSB" substringWithRange:{0, 18}];
        v86 = [v87 stringByAppendingString:@".."];
      }

      v88 = [NSString stringWithFormat:@"Interrupt Clearing Pipe Stall"];
      v89 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v90 = v86;
        v91 = v89;
        uTF8String5 = [(__CFString *)v86 UTF8String];
        *properties = 136446466;
        *&properties[4] = uTF8String5;
        v113 = 2114;
        v114 = v88;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", properties, 0x16u);
      }

      v93 = ((*v103->_interfaceInterfaceRef)->ClearPipeStallBothEnds)(v103->_interfaceInterfaceRef, v103->_interruptPipeIn);
      __ICOSLogCreate();
      v55 = @"HostUSB";
      if ([@"HostUSB" length] >= 0x15)
      {
        v94 = [@"HostUSB" substringWithRange:{0, 18}];
        v55 = [v94 stringByAppendingString:@".."];
      }

      v57 = [NSString stringWithFormat:@"Interrupt Clear Reported: %0x", v93];
      v58 = _gICOSLog;
      if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_66;
      }
    }

    else
    {
      selfCopy->_bulkPipeOut = v37;
      selfCopy->_maxPacketSizeBulkOut = v104;
      v39 = ((*selfCopy->_interfaceInterfaceRef)->GetPipeStatus)(selfCopy->_interfaceInterfaceRef, v37);
      __ICOSLogCreate();
      v40 = @"HostUSB";
      if ([@"HostUSB" length] >= 0x15)
      {
        v41 = [@"HostUSB" substringWithRange:{0, 18}];
        v40 = [v41 stringByAppendingString:@".."];
      }

      v42 = [NSString stringWithFormat:@"_maxPacketSizeBulkOut: %d", v103->_maxPacketSizeBulkOut];
      v43 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v40;
        v45 = v43;
        uTF8String6 = [(__CFString *)v40 UTF8String];
        *properties = 136446466;
        *&properties[4] = uTF8String6;
        v113 = 2114;
        v114 = v42;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", properties, 0x16u);
      }

      selfCopy = v103;
      if (v39 != -536854449)
      {
        goto LABEL_67;
      }

      __ICOSLogCreate();
      v47 = @"HostUSB";
      if ([@"HostUSB" length] >= 0x15)
      {
        v48 = [@"HostUSB" substringWithRange:{0, 18}];
        v47 = [v48 stringByAppendingString:@".."];
      }

      v49 = [NSString stringWithFormat:@"Bulk Out Clearing Pipe Stall"];
      v50 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v51 = v47;
        v52 = v50;
        uTF8String7 = [(__CFString *)v47 UTF8String];
        *properties = 136446466;
        *&properties[4] = uTF8String7;
        v113 = 2114;
        v114 = v49;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", properties, 0x16u);
      }

      v54 = ((*v103->_interfaceInterfaceRef)->ClearPipeStallBothEnds)(v103->_interfaceInterfaceRef, v103->_bulkPipeOut);
      __ICOSLogCreate();
      v55 = @"HostUSB";
      if ([@"HostUSB" length] >= 0x15)
      {
        v56 = [@"HostUSB" substringWithRange:{0, 18}];
        v55 = [v56 stringByAppendingString:@".."];
      }

      v57 = [NSString stringWithFormat:@"Bulk In Clear Reported: %0x", v54];
      v58 = _gICOSLog;
      if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_66;
      }
    }

    v75 = v55;
    v76 = v58;
    uTF8String8 = [(__CFString *)v55 UTF8String];
    *properties = 136446466;
    *&properties[4] = uTF8String8;
    v113 = 2114;
    v114 = v57;
    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", properties, 0x16u);

LABEL_66:
    selfCopy = v103;
    goto LABEL_67;
  }

  v24 = v23;
  __ICOSLogCreate();
  v25 = @"HostUSB";
  if ([@"HostUSB" length] >= 0x15)
  {
    v26 = [@"HostUSB" substringWithRange:{0, 18}];
    v25 = [v26 stringByAppendingString:@".."];
  }

  v27 = [NSString stringWithFormat:@"IOCreatePlugInInterfaceForService returned: %d [0x%x]\n", v24, v24];
  v28 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v25;
    v30 = v28;
    uTF8String9 = [(__CFString *)v25 UTF8String];
    *properties = 136446466;
    *&properties[4] = uTF8String9;
    v113 = 2114;
    v114 = v27;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", properties, 0x16u);
  }

  v3 = 0;
  selfCopy = v103;
LABEL_30:
  IOObjectRelease(v8);
LABEL_13:

LABEL_14:
  selfCopy->_connected = v3;
  return v3;
}

- (void)stop
{
  __ICOSLogCreate();
  v3 = @"PTPTransport";
  if ([@"PTPTransport" length] >= 0x15)
  {
    v4 = [@"PTPTransport" substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [NSString stringWithFormat:@"%p | %16s - 0x%08X", self, "stopping locID", [(PTPHostUSBTransport *)self locationID]];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3;
    v8 = v6;
    *buf = 136446466;
    uTF8String = [(__CFString *)v3 UTF8String];
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  if (self->_role == 2)
  {
    if (self->_bulkPipeIn)
    {
      ((*self->_interfaceInterfaceRef)->AbortPipe)(self->_interfaceInterfaceRef);
      self->_bulkPipeIn = 0;
    }

    if (self->_bulkPipeOut)
    {
      ((*self->_interfaceInterfaceRef)->AbortPipe)(self->_interfaceInterfaceRef);
      self->_bulkPipeOut = 0;
    }

    if (self->_interruptPipeIn)
    {
      ((*self->_interfaceInterfaceRef)->AbortPipe)(self->_interfaceInterfaceRef);
      ((*self->_interfaceInterfaceRef)->ClearPipeStallBothEnds)(self->_interfaceInterfaceRef, self->_interruptPipeIn);
      self->_interruptPipeIn = 0;
    }

    notificationPort = self->_notificationPort;
    if (notificationPort)
    {
      IONotificationPortSetDispatchQueue(notificationPort, 0);
      self->_notificationPort = 0;
    }

    interfaceInterfaceRef = self->_interfaceInterfaceRef;
    if (interfaceInterfaceRef)
    {
      ((*interfaceInterfaceRef)->USBInterfaceClose)(interfaceInterfaceRef);
      ((*self->_interfaceInterfaceRef)->Release)(self->_interfaceInterfaceRef);
      self->_interfaceInterfaceRef = 0;
    }

    self->_role = 0;
    self->_connected = 0;
  }
}

- (BOOL)sendRequest:(id)request
{
  selfCopy = self;
  v4 = [request contentForUSBUsingBuffer:self->_writeBuffer capacity:self->_writeBufferSize];
  LOBYTE(selfCopy) = [(PTPHostUSBTransport *)selfCopy writeBulkData:v4];

  return selfCopy;
}

- (void)sendData:(id)data
{
  dataCopy = data;
  v4 = objc_autoreleasePoolPush();
  if (self->_connected && !self->_busy)
  {
    [dataCopy range];
    v6 = v5;
    [dataCopy setBytesTransferred:0];
    if (v6)
    {
      self->_busy = 1;
      [(PTPHostUSBTransport *)self performSelector:"sendDataPackets:" withObject:dataCopy];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (WeakRetained)
      {
        v8 = WeakRetained;
        v9 = objc_loadWeakRetained(&self->_delegate);
        v10 = objc_opt_respondsToSelector();

        if (v10)
        {
          v11 = objc_loadWeakRetained(&self->_delegate);
          [v11 performSelector:"sentData:" withObject:dataCopy];
        }
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (void)sendDataPackets:(id)packets
{
  packetsCopy = packets;
  transactionID = [packetsCopy transactionID];
  v6 = [[PTPWrappedBytes alloc] initWithBytes:self->_writeBuffer capacity:self->_writeBufferSize];
  [packetsCopy range];
  v45 = v7;
  if (self->_connected)
  {
    v8 = 0;
    while (1)
    {
      if (transactionID && transactionID == self->_canceledTransactionID)
      {
        goto LABEL_31;
      }

      v9 = [packetsCopy copyToWrappedBytes:v6 forTransport:2];
      v10 = [v6 length];
      if (v10 != self->_writeBufferSize)
      {
        break;
      }

      if ([(PTPHostUSBTransport *)self writeBulkData:v6])
      {
        v8 += v9;
        __ICOSLogCreate();
        if (__ICLogTypeEnabled())
        {
          v11 = @"HostUSB";
          if ([@"HostUSB" length] >= 0x15)
          {
            v12 = [@"HostUSB" substringWithRange:{0, 18}];
            v11 = [v12 stringByAppendingString:@".."];
          }

          v13 = [NSString stringWithFormat:@"sendDataPackets (full) - %8lld of %8lld bytes sent\n", v8, v45];
          v14 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v11;
            v16 = v14;
            uTF8String = [(__CFString *)v11 UTF8String];
            *buf = 136446466;
            v47 = uTF8String;
            v48 = 2114;
            v49 = v13;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }
        }

        if (self->_connected)
        {
          continue;
        }
      }

      goto LABEL_31;
    }

    v18 = v10;
    if (v10)
    {
      if (![(PTPHostUSBTransport *)self writeBulkData:v6])
      {
        goto LABEL_31;
      }

      v8 += v9;
      __ICOSLogCreate();
      if (__ICLogTypeEnabled())
      {
        v19 = @"HostUSB";
        if ([@"HostUSB" length] >= 0x15)
        {
          v20 = [@"HostUSB" substringWithRange:{0, 18}];
          v19 = [v20 stringByAppendingString:@".."];
        }

        v21 = [NSString stringWithFormat:@"sendDataPackets (short) - %8lld of %8lld bytes sent\n", v8, v45];
        v22 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v19;
          v24 = v22;
          uTF8String2 = [(__CFString *)v19 UTF8String];
          *buf = 136446466;
          v47 = uTF8String2;
          v48 = 2114;
          v49 = v21;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }
      }
    }

    __ICOSLogCreate();
    if (__ICLogTypeEnabled())
    {
      v26 = @"HostUSB";
      if ([@"HostUSB" length] >= 0x15)
      {
        v27 = [@"HostUSB" substringWithRange:{0, 18}];
        v26 = [v27 stringByAppendingString:@".."];
      }

      v28 = [NSString stringWithFormat:@"bytesCopied: %8lld, _maxPacketSizeBulkOut: %8d\n", v9, self->_maxPacketSizeBulkOut];
      v29 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v26;
        v31 = v29;
        uTF8String3 = [(__CFString *)v26 UTF8String];
        *buf = 136446466;
        v47 = uTF8String3;
        v48 = 2114;
        v49 = v28;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }

    if (v18 % self->_maxPacketSizeBulkOut)
    {
LABEL_30:
      [packetsCopy setBytesTransferred:v8];
      goto LABEL_31;
    }

    [v6 setLength:0];
    if ([(PTPHostUSBTransport *)self writeBulkData:v6])
    {
      __ICOSLogCreate();
      if (__ICLogTypeEnabled())
      {
        v38 = @"HostUSB";
        if ([@"HostUSB" length] >= 0x15)
        {
          v39 = [@"HostUSB" substringWithRange:{0, 18}];
          v38 = [v39 stringByAppendingString:@".."];
        }

        v40 = [NSString stringWithFormat:@"sendDataPackets (zero) - %8lld of %8lld bytes sent\n", v8, v45];
        v41 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v42 = v38;
          v43 = v41;
          uTF8String4 = [(__CFString *)v38 UTF8String];
          *buf = 136446466;
          v47 = uTF8String4;
          v48 = 2114;
          v49 = v40;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }
      }

      goto LABEL_30;
    }
  }

LABEL_31:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v34 = WeakRetained;
    v35 = objc_loadWeakRetained(&self->_delegate);
    v36 = objc_opt_respondsToSelector();

    if (v36)
    {
      v37 = objc_loadWeakRetained(&self->_delegate);
      [v37 performSelector:"sentData:" withObject:packetsCopy];
    }
  }

  self->_busy = 0;
}

- (unsigned)deviceStatus
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v19 = 0;
  ((*self->_interfaceInterfaceRef)->GetInterfaceNumber)(self->_interfaceInterfaceRef, &v19);
  LOWORD(v21) = 26529;
  WORD2(v21) = v19;
  HIWORD(v21) = 4;
  v22 = &v20;
  v3 = ((*self->_interfaceInterfaceRef)->ControlRequest)(self->_interfaceInterfaceRef, 0, &v21);
  __ICOSLogCreate();
  v4 = @"HostUSB";
  if ([@"HostUSB" length] >= 0x15)
  {
    v5 = [@"HostUSB" substringWithRange:{0, 18}];
    v4 = [v5 stringByAppendingString:@".."];
  }

  v6 = [NSString stringWithFormat:@"-> ControlRequest(): 0x%08x", v3];
  v7 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v4;
    v9 = v7;
    uTF8String = [(__CFString *)v4 UTF8String];
    *buf = 136446466;
    v25 = uTF8String;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  if (!v3)
  {
    __ICOSLogCreate();
    v11 = @"HostUSB";
    if ([@"HostUSB" length] >= 0x15)
    {
      v12 = [@"HostUSB" substringWithRange:{0, 18}];
      v11 = [v12 stringByAppendingString:@".."];
    }

    v13 = [NSString stringWithFormat:@"<- Data size: %d", HIWORD(v21)];
    v14 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v11;
      v16 = v14;
      uTF8String2 = [(__CFString *)v11 UTF8String];
      *buf = 136446466;
      v25 = uTF8String2;
      v26 = 2114;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  return HIWORD(v20);
}

- (unsigned)cancelRequest:(id)request
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v20 = 0;
  v21 = 16385;
  unsignedIntValue = [request unsignedIntValue];
  ((*self->_interfaceInterfaceRef)->GetInterfaceNumber)(self->_interfaceInterfaceRef, &v20);
  WORD2(unsignedIntValue) = 25761;
  LOWORD(v23) = v20;
  HIWORD(v23) = 6;
  v24 = &v21;
  v4 = ((*self->_interfaceInterfaceRef)->ControlRequest)(self->_interfaceInterfaceRef, 0, &unsignedIntValue + 4);
  __ICOSLogCreate();
  v5 = @"HostUSB";
  if ([@"HostUSB" length] >= 0x15)
  {
    v6 = [@"HostUSB" substringWithRange:{0, 18}];
    v5 = [v6 stringByAppendingString:@".."];
  }

  v7 = [NSString stringWithFormat:@"(*_interfaceInterfaceRef)->ControlRequest() returned = 0x%08x\n\n", v4];
  v8 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v5;
    v10 = v8;
    uTF8String = [(__CFString *)v5 UTF8String];
    *buf = 136446466;
    v27 = uTF8String;
    v28 = 2114;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  if (!v4)
  {
    __ICOSLogCreate();
    v12 = @"HostUSB";
    if ([@"HostUSB" length] >= 0x15)
    {
      v13 = [@"HostUSB" substringWithRange:{0, 18}];
      v12 = [v13 stringByAppendingString:@".."];
    }

    v14 = [NSString stringWithFormat:@"returned size: %d, buffer[0]: 0x%04x, buffer[1]: 0x%04x\n, buffer[2]: 0x%04x", HIWORD(v23), v21, unsignedIntValue, WORD1(unsignedIntValue)];
    v15 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v12;
      v17 = v15;
      uTF8String2 = [(__CFString *)v12 UTF8String];
      *buf = 136446466;
      v27 = uTF8String2;
      v28 = 2114;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  return unsignedIntValue;
}

- (void)deviceReset
{
  memset(v19, 0, sizeof(v19));
  v18 = 0;
  ((*self->_interfaceInterfaceRef)->GetInterfaceNumber)(self->_interfaceInterfaceRef, &v18);
  LOWORD(v19[0]) = 26145;
  WORD2(v19[0]) = v18;
  __ICOSLogCreate();
  v3 = @"HostUSB";
  if ([@"HostUSB" length] >= 0x15)
  {
    v4 = [@"HostUSB" substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [NSString stringWithFormat:@"RequestType: 0x%02x SubType: 0x%02x", 33, 102];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3;
    v8 = v6;
    uTF8String = [(__CFString *)v3 UTF8String];
    *buf = 136446466;
    v21 = uTF8String;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v10 = ((*self->_interfaceInterfaceRef)->ControlRequest)(self->_interfaceInterfaceRef, 0, v19);
  __ICOSLogCreate();
  v11 = @"HostUSB";
  if ([@"HostUSB" length] >= 0x15)
  {
    v12 = [@"HostUSB" substringWithRange:{0, 18}];
    v11 = [v12 stringByAppendingString:@".."];
  }

  v13 = [NSString stringWithFormat:@"(*_interfaceInterfaceRef)->ControlRequest() returned = 0x%08x\n\n", v10];
  v14 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v11;
    v16 = v14;
    uTF8String2 = [(__CFString *)v11 UTF8String];
    *buf = 136446466;
    v21 = uTF8String2;
    v22 = 2114;
    v23 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }
}

- (BOOL)writeBulkData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy length];
  if (self->_connected)
  {
    if (v5)
    {
      v6 = ((*self->_interfaceInterfaceRef)->WritePipeTO)(self->_interfaceInterfaceRef, self->_bulkPipeOut, [dataCopy bytes], v5, 5000, 60000);
    }

    else
    {
      buf[0] = 0;
      v6 = ((*self->_interfaceInterfaceRef)->WritePipeTO)(self->_interfaceInterfaceRef, self->_bulkPipeOut, buf, 0, 5000, 60000);
    }

    v8 = v6;
    if (v6 > -536854450)
    {
      if (v6 == -536854449 || v6 == -536850432)
      {
        goto LABEL_21;
      }

      if (!v6)
      {
LABEL_41:
        v7 = v8 == 0;
        goto LABEL_42;
      }
    }

    else
    {
      v9 = (v6 + 536870208);
      if (v9 <= 0x2D)
      {
        if (((1 << (v6 + 64)) & 0x280002000001) != 0)
        {
          __ICOSLogCreate();
          v10 = @"HostUSB";
          if ([@"HostUSB" length] >= 0x15)
          {
            v11 = [@"HostUSB" substringWithRange:{0, 18}];
            v10 = [v11 stringByAppendingString:@".."];
          }

          v12 = [NSString stringWithFormat:@"writeBulkData: (disconnected) 0x%x:0x%x", [(PTPHostUSBTransport *)self locationID], v8];
          v13 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v10;
            v15 = v13;
            uTF8String = [(__CFString *)v10 UTF8String];
            *buf = 136446466;
            v38 = uTF8String;
            v39 = 2114;
            v40 = v12;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }

          self->_connected = 0;
          goto LABEL_41;
        }

        if (v9 == 22)
        {
LABEL_21:
          __ICOSLogCreate();
          v18 = @"HostUSB";
          if ([@"HostUSB" length] >= 0x15)
          {
            v19 = [@"HostUSB" substringWithRange:{0, 18}];
            v18 = [v19 stringByAppendingString:@".."];
          }

          v20 = [NSString stringWithFormat:@"writeBulkData: (timedout) 0x%x:0x%x", [(PTPHostUSBTransport *)self locationID], v8];
          v21 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v22 = v18;
            v23 = v21;
            uTF8String2 = [(__CFString *)v18 UTF8String];
            *buf = 136446466;
            v38 = uTF8String2;
            v39 = 2114;
            v40 = v20;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }

          if (v8 == -536850432 || v8 == -536854449)
          {
            __ICOSLogCreate();
            v26 = @"HostUSB";
            if ([@"HostUSB" length] >= 0x15)
            {
              v27 = [@"HostUSB" substringWithRange:{0, 18}];
              v26 = [v27 stringByAppendingString:@".."];
            }

            v28 = [NSString stringWithFormat:@"writeBulkData: (cleared pipestall) 0x%x:0x%x", [(PTPHostUSBTransport *)self locationID], v8];
            v29 = _gICOSLog;
            if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
            {
              v30 = v26;
              v31 = v29;
              uTF8String3 = [(__CFString *)v26 UTF8String];
              *buf = 136446466;
              v38 = uTF8String3;
              v39 = 2114;
              v40 = v28;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
            }

            ((*self->_interfaceInterfaceRef)->ClearPipeStallBothEnds)(self->_interfaceInterfaceRef, self->_bulkPipeOut);
          }

          self->_timedOut = 1;
          goto LABEL_41;
        }
      }
    }

    __ICOSLogCreate();
    v33 = @"HostUSB";
    if ([@"HostUSB" length] >= 0x15)
    {
      v34 = [@"HostUSB" substringWithRange:{0, 18}];
      v33 = [v34 stringByAppendingString:@".."];
    }

    v35 = [NSString stringWithFormat:@"writeBulkData: (general) 0x%x:0x%x", [(PTPHostUSBTransport *)self locationID], v8];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      sub_10001D1F0();
    }

    goto LABEL_41;
  }

  v7 = 0;
LABEL_42:

  return v7;
}

- (int)readInterruptData
{
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100010BF8;
  v11[3] = &unk_10002C9F0;
  objc_copyWeak(&v12, &location);
  v3 = [v11 copy];
  interfaceInterfaceRef = self->_interfaceInterfaceRef;
  ReadPipeAsync = (*interfaceInterfaceRef)->ReadPipeAsync;
  interruptPipeIn = self->_interruptPipeIn;
  eventDataBuffer = self->_eventDataBuffer;
  eventDataBufferSize = self->_eventDataBufferSize;
  v9 = objc_retainBlock(v3);
  LODWORD(eventDataBufferSize) = (ReadPipeAsync)(interfaceInterfaceRef, interruptPipeIn, eventDataBuffer, eventDataBufferSize, sub_100010DE0, v9);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  return eventDataBufferSize;
}

- (void)handleInterruptData:(unint64_t)data
{
  if (self->_connected)
  {
    [(NSMutableData *)self->_eventData appendBytes:self->_eventDataBuffer length:data];
    v4 = [(NSMutableData *)self->_eventData length];
    if (v4)
    {
      v5 = v4;
      do
      {
        mutableBytes = [(NSMutableData *)self->_eventData mutableBytes];
        v7 = *mutableBytes;
        if (v5 < v7)
        {
          break;
        }

        if (mutableBytes[2] == 4)
        {
          v8 = [[PTPEventPacket alloc] initWithUSBBuffer:mutableBytes];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          if (WeakRetained)
          {
            v10 = WeakRetained;
            v11 = objc_loadWeakRetained(&self->_delegate);
            v12 = objc_opt_respondsToSelector();

            if (v12)
            {
              v13 = objc_loadWeakRetained(&self->_delegate);
              [v13 performSelectorOnMainThread:"handleEvent:" withObject:v8 waitUntilDone:0];
            }
          }
        }

        v26.location = 0;
        v26.length = v7;
        CFDataDeleteBytes(self->_eventData, v26);
        v14 = v5 - v7;
        if (v14)
        {
          __ICOSLogCreate();
          v15 = @"HostUSB";
          if ([@"HostUSB" length] >= 0x15)
          {
            v16 = [@"HostUSB" substringWithRange:{0, 18}];
            v15 = [v16 stringByAppendingString:@".."];
          }

          v17 = [NSString stringWithFormat:@"%d excess byte(s) received -- placing them in the bit bucket\n", v14];
          v18 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v15;
            v20 = v18;
            uTF8String = [(__CFString *)v15 UTF8String];
            *buf = 136446466;
            v23 = uTF8String;
            v24 = 2114;
            v25 = v17;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }

          v27.location = 0;
          v27.length = v14;
          CFDataDeleteBytes(self->_eventData, v27);
        }

        v5 = [(NSMutableData *)self->_eventData length];
      }

      while (v5);
    }
  }
}

- (int)readResponseData:(id)data withTimeout:(unsigned int)timeout
{
  dataCopy = data;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 1;
  [(PTPHostUSBTransport *)self setTimedOut:0];
  v36 = dataCopy;
  txID = [dataCopy txID];
  v7 = 1000 * timeout;
  delta = 2000000000 * timeout;
  while (-[PTPHostUSBTransport connected](self, "connected") && !-[PTPHostUSBTransport timedOut](self, "timedOut") && ([v36 txComplete] & 1) == 0)
  {
    v8 = dispatch_semaphore_create(0);
    objc_initWeak(&location, self);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100011704;
    v37[3] = &unk_10002CA18;
    objc_copyWeak(&v41, &location);
    v38 = txID;
    v40 = v43;
    v9 = v8;
    v39 = v9;
    v10 = [v37 copy];
    bufMutableBytes = [v36 bufMutableBytes];
    bufSize = [v36 bufSize];
    if (!bufMutableBytes)
    {
      __ICOSLogCreate();
      if ([@"HostUSB" length] < 0x15)
      {
        v27 = @"HostUSB";
      }

      else
      {
        v26 = [@"HostUSB" substringWithRange:{0, 18}];
        v27 = [v26 stringByAppendingString:@".."];
      }

      v30 = [NSString stringWithFormat:@"buf provided is NULL"];
      v31 = _gICOSLog;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
LABEL_29:
        v32 = v27;
        sub_10001D27C([(__CFString *)v27 UTF8String], v30, buf);
      }

LABEL_30:

      objc_destroyWeak(&v41);
      objc_destroyWeak(&location);

      break;
    }

    v13 = bufSize;
    __ICOSLogCreate();
    if (__ICLogTypeEnabled())
    {
      v14 = @"HostUSB";
      if ([@"HostUSB" length] >= 0x15)
      {
        v15 = [@"HostUSB" substringWithRange:{0, 18}];
        v14 = [v15 stringByAppendingString:@".."];
      }

      v16 = [NSString stringWithFormat:@"ReadPipeAsyncTO: %d bytes", v13];
      v17 = _gICOSLog;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v14;
        uTF8String = [(__CFString *)v14 UTF8String];
        *buf = 136446466;
        v46 = uTF8String;
        v47 = 2114;
        v48 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }

    interfaceInterfaceRef = self->_interfaceInterfaceRef;
    ReadPipeAsyncTO = (*interfaceInterfaceRef)->ReadPipeAsyncTO;
    bulkPipeIn = self->_bulkPipeIn;
    v23 = objc_retainBlock(v10);
    v24 = (ReadPipeAsyncTO)(interfaceInterfaceRef, bulkPipeIn, bufMutableBytes, v13, v7, v7, sub_100011B88, v23);

    if (v24)
    {
      __ICOSLogCreate();
      if ([@"HostUSB" length] < 0x15)
      {
        v27 = @"HostUSB";
      }

      else
      {
        v28 = [@"HostUSB" substringWithRange:{0, 18}];
        v27 = [v28 stringByAppendingString:@".."];
      }

      v30 = [NSString stringWithFormat:@"ReadPipeAsyncTO returned %x -- bailing", v24];
      v31 = _gICOSLog;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    v25 = dispatch_time(0, delta);
    if (dispatch_semaphore_wait(v9, v25))
    {
      __ICOSLogCreate();
      if ([@"HostUSB" length] < 0x15)
      {
        v27 = @"HostUSB";
      }

      else
      {
        v29 = [@"HostUSB" substringWithRange:{0, 18}];
        v27 = [v29 stringByAppendingString:@".."];
      }

      v30 = [NSString stringWithFormat:@"ReadPipeAsyncTO timed out -- bailing"];
      v31 = _gICOSLog;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(v43, 8);
  return 0;
}

- (id)getTransaction:(id)transaction
{
  transactionCopy = transaction;
  transactions = [(PTPHostUSBTransport *)self transactions];
  objc_sync_enter(transactions);
  transactions2 = [(PTPHostUSBTransport *)self transactions];
  v7 = [transactions2 objectForKeyedSubscript:transactionCopy];

  objc_sync_exit(transactions);

  return v7;
}

- (void)addTransaction:(id)transaction
{
  transactionCopy = transaction;
  transactions = [(PTPHostUSBTransport *)self transactions];
  objc_sync_enter(transactions);
  transactions2 = [(PTPHostUSBTransport *)self transactions];
  txID = [transactionCopy txID];
  [transactions2 setObject:transactionCopy forKeyedSubscript:txID];

  objc_sync_exit(transactions);
}

- (void)removeTransaction:(id)transaction
{
  transactionCopy = transaction;
  transactions = [(PTPHostUSBTransport *)self transactions];
  objc_sync_enter(transactions);
  transactions2 = [(PTPHostUSBTransport *)self transactions];
  [transactions2 removeObjectForKey:transactionCopy];

  objc_sync_exit(transactions);
}

- (void)clearBulkInPipeStall
{
  __ICOSLogCreate();
  v3 = @"HostUSB";
  if ([@"HostUSB" length] >= 0x15)
  {
    v4 = [@"HostUSB" substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [NSString stringWithFormat:@"*** clearBulkInPipeStall"];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3;
    v8 = v6;
    v10 = 136446466;
    uTF8String = [(__CFString *)v3 UTF8String];
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v10, 0x16u);
  }

  interfaceInterfaceRef = self->_interfaceInterfaceRef;
  if (interfaceInterfaceRef)
  {
    if (self->_bulkPipeIn)
    {
      ((*interfaceInterfaceRef)->ClearPipeStallBothEnds)(interfaceInterfaceRef);
    }
  }
}

- (void)abortPendingIO
{
  __ICOSLogCreate();
  v3 = @"PTPTransport";
  if ([@"PTPTransport" length] >= 0x15)
  {
    v4 = [@"PTPTransport" substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [NSString stringWithFormat:@"%p | %16s - 0x%08X", self, "abortPipe locID", [(PTPHostUSBTransport *)self locationID]];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3;
    v8 = v6;
    *buf = 136446466;
    uTF8String = [(__CFString *)v3 UTF8String];
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  interfaceInterfaceRef = self->_interfaceInterfaceRef;
  if (interfaceInterfaceRef)
  {
    if (self->_interruptPipeIn)
    {
      ((*interfaceInterfaceRef)->AbortPipe)(interfaceInterfaceRef);
    }

    if (self->_bulkPipeIn)
    {
      ((*self->_interfaceInterfaceRef)->AbortPipe)(self->_interfaceInterfaceRef);
    }

    if (self->_bulkPipeOut)
    {
      ((*self->_interfaceInterfaceRef)->AbortPipe)(self->_interfaceInterfaceRef);
    }
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end