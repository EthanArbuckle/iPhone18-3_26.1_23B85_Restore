@interface UARPHIDDevice
- (BOOL)hidDeviceCreate:(unsigned int)create;
- (BOOL)hidDeviceReport:(int)report reportID:(unsigned int)d report:(char *)a5 reportLength:(unint64_t)length;
- (BOOL)startHIDDevice;
- (UARPHIDDevice)initWithVendorID:(unsigned __int16)d productID:(unsigned __int16)iD;
- (id)description;
- (void)dealloc;
- (void)deviceSendUarpMessageToTransport:(id)transport uarpMessage:(id)message;
- (void)deviceTransportNotNeeded:(id)needed;
- (void)deviceTransportSetupRequested:(id)requested;
- (void)deviceTransportTeardown:(id)teardown;
- (void)deviceUnresponsive:(id)unresponsive;
- (void)hidDeviceDisconnect;
- (void)setSupportsChargingChimeDebounce;
- (void)uarpMessageSendToTransport:(id)transport;
@end

@implementation UARPHIDDevice

- (UARPHIDDevice)initWithVendorID:(unsigned __int16)d productID:(unsigned __int16)iD
{
  v7.receiver = self;
  v7.super_class = UARPHIDDevice;
  result = [(UARPHIDDevice *)&v7 init];
  if (result)
  {
    result->_vendorID = d;
    result->_productID = iD;
  }

  return result;
}

- (void)dealloc
{
  IOHIDDeviceCancel(self->_hidDeviceRef);
  IOHIDDeviceClose(self->_hidDeviceRef, 0);
  free(self->_hidBuffer);
  v3.receiver = self;
  v3.super_class = UARPHIDDevice;
  [(UARPHIDDevice *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [v3 appendFormat:@"UUID = <%@>", uUIDString];

  v5 = [NSString stringWithString:v3];

  return v5;
}

- (BOOL)hidDeviceCreate:(unsigned int)create
{
  properties = 0;
  IORegistryEntryCreateCFProperties(create, &properties, kCFAllocatorDefault, 0);
  v28 = CFDictionaryGetValue(properties, @"SerialNumber");
  v5 = [v28 copy];
  serialNumber = self->_serialNumber;
  self->_serialNumber = v5;

  v27 = CFDictionaryGetValue(properties, @"LocationID");
  self->_locationID = [v27 unsignedShortValue];
  v26 = CFDictionaryGetValue(properties, @"VendorID");
  self->_vendorID = [v26 unsignedShortValue];
  v7 = CFDictionaryGetValue(properties, @"ProductID");
  self->_productID = [v7 unsignedShortValue];
  v8 = CFDictionaryGetValue(properties, @"Manufacturer");
  v9 = [v8 copy];
  manufacturer = self->_manufacturer;
  self->_manufacturer = v9;

  v11 = CFDictionaryGetValue(properties, @"Product");
  v12 = [v11 copy];
  modelName = self->_modelName;
  self->_modelName = v12;

  v14 = CFDictionaryGetValue(properties, @"VersionNumber");
  v15 = [v14 copy];
  activeFirmwareVersion = self->_activeFirmwareVersion;
  self->_activeFirmwareVersion = v15;

  v17 = CFDictionaryGetValue(properties, @"Transport");
  v18 = [v17 copy];
  transport = self->_transport;
  self->_transport = v18;

  CFRelease(properties);
  v20 = objc_alloc_init(NSMutableString);
  [(UARPHIDDevice *)v20 appendFormat:@"Manufacturer = <%@>, ", self->_manufacturer];
  [(UARPHIDDevice *)v20 appendFormat:@"Model Name = <%@>, ", self->_modelName];
  [(UARPHIDDevice *)v20 appendFormat:@"Serial Number = <%@>, ", self->_serialNumber];
  [(UARPHIDDevice *)v20 appendFormat:@"Firmware Version = <%@>, ", self->_activeFirmwareVersion];
  [(UARPHIDDevice *)v20 appendFormat:@"Vendor ID = <0x%04x>, ", self->_vendorID];
  [(UARPHIDDevice *)v20 appendFormat:@"Product ID = <0x%04x>, ", self->_productID];
  [(UARPHIDDevice *)v20 appendFormat:@"Location = <%d>, ", self->_locationID];
  [(UARPHIDDevice *)v20 appendFormat:@"Transport = <%@>, ", self->_transport];
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [(UARPHIDDevice *)v20 appendFormat:@"UUID = <%@>, ", uUIDString];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = v20;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "New UARP HID Device %@", buf, 0xCu);
  }

  [(UARPHIDDevice *)self setSupportsChargingChimeDebounce];
  v23 = IOHIDDeviceCreate(kCFAllocatorDefault, create);
  self->_hidDeviceRef = v23;
  if (!v23)
  {
    v24 = self->_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[%@] Could not create hid device", buf, 0xCu);
    }
  }

  return v23 != 0;
}

- (BOOL)startHIDDevice
{
  v3 = IOHIDDeviceOpen(self->_hidDeviceRef, 0);
  if (v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_1000045B4(self, log);
    }
  }

  else
  {
    IOHIDDeviceRegisterRemovalCallback(self->_hidDeviceRef, j__objc_msgSend_hidDeviceDisconnect, self);
    IOHIDDeviceRegisterInputReportCallback(self->_hidDeviceRef, self->_hidBuffer, self->_hidBufferLength, sub_1000014D4, self);
    IOHIDDeviceSetDispatchQueue(self->_hidDeviceRef, self->_internalQueue);
    hidDeviceRef = self->_hidDeviceRef;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000014E8;
    handler[3] = &unk_10000C340;
    handler[4] = self;
    IOHIDDeviceSetCancelHandler(hidDeviceRef, handler);
    IOHIDDeviceActivate(self->_hidDeviceRef);
    v6 = [[UARPDevice alloc] initWithUUID:self->_uuid delegate:self delegateQueue:self->_internalQueue];
    uarpDevice = self->_uarpDevice;
    self->_uarpDevice = v6;

    listener = [(UARPHIDManager *)self->_hidManager listener];

    if (listener)
    {
      v9 = self->_uarpDevice;
      listener2 = [(UARPHIDManager *)self->_hidManager listener];
      [(UARPDevice *)v9 setAnonymousListener:listener2];
    }

    internalQueue = self->_internalQueue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000158C;
    v13[3] = &unk_10000C340;
    v13[4] = self;
    dispatch_async(internalQueue, v13);
  }

  return v3 == 0;
}

- (void)uarpMessageSendToTransport:(id)transport
{
  transportCopy = transport;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001690;
  v7[3] = &unk_10000C368;
  v7[4] = self;
  v8 = transportCopy;
  v6 = transportCopy;
  dispatch_async(internalQueue, v7);
}

- (BOOL)hidDeviceReport:(int)report reportID:(unsigned int)d report:(char *)a5 reportLength:(unint64_t)length
{
  lengthCopy = length;
  if (self->_debugTransfer && os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_1000046B8();
  }

  v9 = [[NSData alloc] initWithBytes:a5 + 7 length:(lengthCopy - 7)];
  internalQueue = self->_internalQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000189C;
  v13[3] = &unk_10000C368;
  v13[4] = self;
  v14 = v9;
  v11 = v9;
  dispatch_async(internalQueue, v13);

  return 1;
}

- (void)hidDeviceDisconnect
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[UARPHIDDevice hidDeviceDisconnect]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Remove UARP HID Device %@", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000019AC;
  block[3] = &unk_10000C340;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)deviceTransportSetupRequested:(id)requested
{
  requestedCopy = requested;
  uuid = [requestedCopy uuid];
  v6 = [(UARPHIDDevice *)self isMatchingUUID:uuid];

  log = self->_log;
  if (v6)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      serialNumber = self->_serialNumber;
      v9 = log;
      uTF8String = [(NSString *)serialNumber UTF8String];
      uUIDString = [(NSUUID *)self->_uuid UUIDString];
      *buf = 136315394;
      v15 = uTF8String;
      v16 = 2080;
      uTF8String2 = [uUIDString UTF8String];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Device Transport Setup Requested for Serial Number = <%s>, UUID = <%s>\n", buf, 0x16u);
    }

    internalQueue = self->_internalQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001B88;
    block[3] = &unk_10000C340;
    block[4] = self;
    dispatch_async(internalQueue, block);
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_100004738();
  }
}

- (void)deviceTransportTeardown:(id)teardown
{
  teardownCopy = teardown;
  uuid = [teardownCopy uuid];
  v6 = [(UARPHIDDevice *)self isMatchingUUID:uuid];

  log = self->_log;
  if (v6)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      serialNumber = self->_serialNumber;
      v9 = log;
      uTF8String = [(NSString *)serialNumber UTF8String];
      uUIDString = [(NSUUID *)self->_uuid UUIDString];
      uTF8String2 = [uUIDString UTF8String];
      activeFirmwareVersion = [teardownCopy activeFirmwareVersion];
      stagedFirmwareVersion = [teardownCopy stagedFirmwareVersion];
      *buf = 136316162;
      v18 = "[UARPHIDDevice deviceTransportTeardown:]";
      v19 = 2080;
      v20 = uTF8String;
      v21 = 2080;
      v22 = uTF8String2;
      v23 = 2112;
      v24 = activeFirmwareVersion;
      v25 = 2112;
      v26 = stagedFirmwareVersion;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: Serial Number = <%s>, UUID = <%s>, Active Firmware <%@>, Staged Firmware <%@>", buf, 0x34u);
    }

    internalQueue = self->_internalQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001DBC;
    block[3] = &unk_10000C340;
    block[4] = self;
    dispatch_async(internalQueue, block);
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_1000047FC();
  }
}

- (void)deviceTransportNotNeeded:(id)needed
{
  neededCopy = needed;
  uuid = [neededCopy uuid];
  v6 = [(UARPHIDDevice *)self isMatchingUUID:uuid];

  log = self->_log;
  if (v6)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      serialNumber = self->_serialNumber;
      v9 = log;
      uTF8String = [(NSString *)serialNumber UTF8String];
      uUIDString = [(NSUUID *)self->_uuid UUIDString];
      uTF8String2 = [uUIDString UTF8String];
      activeFirmwareVersion = [neededCopy activeFirmwareVersion];
      stagedFirmwareVersion = [neededCopy stagedFirmwareVersion];
      v15 = 136316162;
      v16 = "[UARPHIDDevice deviceTransportNotNeeded:]";
      v17 = 2080;
      v18 = uTF8String;
      v19 = 2080;
      v20 = uTF8String2;
      v21 = 2112;
      v22 = activeFirmwareVersion;
      v23 = 2112;
      v24 = stagedFirmwareVersion;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: Serial Number = <%s>, UUID = <%s>, Active Firmware <%@>, Staged Firmware <%@>", &v15, 0x34u);
    }
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_1000048C0();
  }
}

- (void)deviceUnresponsive:(id)unresponsive
{
  unresponsiveCopy = unresponsive;
  uuid = [unresponsiveCopy uuid];
  v6 = [(UARPHIDDevice *)self isMatchingUUID:uuid];

  log = self->_log;
  if (v6)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[UARPHIDDevice deviceUnresponsive:]";
      v10 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_100004984();
  }
}

- (void)deviceSendUarpMessageToTransport:(id)transport uarpMessage:(id)message
{
  transportCopy = transport;
  messageCopy = message;
  uuid = [transportCopy uuid];
  v9 = [(UARPHIDDevice *)self isMatchingUUID:uuid];

  if (v9)
  {
    if (self->_debugTransfer && os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100004B0C();
    }

    internalQueue = self->_internalQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000021B0;
    v11[3] = &unk_10000C368;
    v11[4] = self;
    v12 = messageCopy;
    dispatch_async(internalQueue, v11);
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100004A48();
  }
}

- (void)setSupportsChargingChimeDebounce
{
  if (self->_vendorID == 1452)
  {
    productID = self->_productID;
    if ((productID - 1280) < 9 || ((productID - 5017) <= 9 ? (v3 = ((1 << (productID + 103)) & 0x205) == 0) : (v3 = 1), v3 ? (v4 = productID == 30723) : (v4 = 1), v4))
    {
      self->_supportsChargingChimeDebounce = 1;
    }
  }
}

@end