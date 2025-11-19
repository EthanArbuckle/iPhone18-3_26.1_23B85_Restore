@interface UARPHIDDevice
- (BOOL)hidDeviceCreate:(unsigned int)a3;
- (BOOL)hidDeviceReport:(int)a3 reportID:(unsigned int)a4 report:(char *)a5 reportLength:(unint64_t)a6;
- (BOOL)startHIDDevice;
- (UARPHIDDevice)initWithVendorID:(unsigned __int16)a3 productID:(unsigned __int16)a4;
- (id)description;
- (void)dealloc;
- (void)deviceSendUarpMessageToTransport:(id)a3 uarpMessage:(id)a4;
- (void)deviceTransportNotNeeded:(id)a3;
- (void)deviceTransportSetupRequested:(id)a3;
- (void)deviceTransportTeardown:(id)a3;
- (void)deviceUnresponsive:(id)a3;
- (void)hidDeviceDisconnect;
- (void)setSupportsChargingChimeDebounce;
- (void)uarpMessageSendToTransport:(id)a3;
@end

@implementation UARPHIDDevice

- (UARPHIDDevice)initWithVendorID:(unsigned __int16)a3 productID:(unsigned __int16)a4
{
  v7.receiver = self;
  v7.super_class = UARPHIDDevice;
  result = [(UARPHIDDevice *)&v7 init];
  if (result)
  {
    result->_vendorID = a3;
    result->_productID = a4;
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
  v4 = [(NSUUID *)self->_uuid UUIDString];
  [v3 appendFormat:@"UUID = <%@>", v4];

  v5 = [NSString stringWithString:v3];

  return v5;
}

- (BOOL)hidDeviceCreate:(unsigned int)a3
{
  properties = 0;
  IORegistryEntryCreateCFProperties(a3, &properties, kCFAllocatorDefault, 0);
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
  v21 = [(NSUUID *)self->_uuid UUIDString];
  [(UARPHIDDevice *)v20 appendFormat:@"UUID = <%@>, ", v21];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v31 = v20;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "New UARP HID Device %@", buf, 0xCu);
  }

  [(UARPHIDDevice *)self setSupportsChargingChimeDebounce];
  v23 = IOHIDDeviceCreate(kCFAllocatorDefault, a3);
  self->_hidDeviceRef = v23;
  if (!v23)
  {
    v24 = self->_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = self;
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

    v8 = [(UARPHIDManager *)self->_hidManager listener];

    if (v8)
    {
      v9 = self->_uarpDevice;
      v10 = [(UARPHIDManager *)self->_hidManager listener];
      [(UARPDevice *)v9 setAnonymousListener:v10];
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

- (void)uarpMessageSendToTransport:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001690;
  v7[3] = &unk_10000C368;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (BOOL)hidDeviceReport:(int)a3 reportID:(unsigned int)a4 report:(char *)a5 reportLength:(unint64_t)a6
{
  v6 = a6;
  if (self->_debugTransfer && os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_1000046B8();
  }

  v9 = [[NSData alloc] initWithBytes:a5 + 7 length:(v6 - 7)];
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
    v9 = self;
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

- (void)deviceTransportSetupRequested:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [(UARPHIDDevice *)self isMatchingUUID:v5];

  log = self->_log;
  if (v6)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      serialNumber = self->_serialNumber;
      v9 = log;
      v10 = [(NSString *)serialNumber UTF8String];
      v11 = [(NSUUID *)self->_uuid UUIDString];
      *buf = 136315394;
      v15 = v10;
      v16 = 2080;
      v17 = [v11 UTF8String];
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

- (void)deviceTransportTeardown:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [(UARPHIDDevice *)self isMatchingUUID:v5];

  log = self->_log;
  if (v6)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      serialNumber = self->_serialNumber;
      v9 = log;
      v10 = [(NSString *)serialNumber UTF8String];
      v11 = [(NSUUID *)self->_uuid UUIDString];
      v12 = [v11 UTF8String];
      v13 = [v4 activeFirmwareVersion];
      v14 = [v4 stagedFirmwareVersion];
      *buf = 136316162;
      v18 = "[UARPHIDDevice deviceTransportTeardown:]";
      v19 = 2080;
      v20 = v10;
      v21 = 2080;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
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

- (void)deviceTransportNotNeeded:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [(UARPHIDDevice *)self isMatchingUUID:v5];

  log = self->_log;
  if (v6)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      serialNumber = self->_serialNumber;
      v9 = log;
      v10 = [(NSString *)serialNumber UTF8String];
      v11 = [(NSUUID *)self->_uuid UUIDString];
      v12 = [v11 UTF8String];
      v13 = [v4 activeFirmwareVersion];
      v14 = [v4 stagedFirmwareVersion];
      v15 = 136316162;
      v16 = "[UARPHIDDevice deviceTransportNotNeeded:]";
      v17 = 2080;
      v18 = v10;
      v19 = 2080;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: Serial Number = <%s>, UUID = <%s>, Active Firmware <%@>, Staged Firmware <%@>", &v15, 0x34u);
    }
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_1000048C0();
  }
}

- (void)deviceUnresponsive:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [(UARPHIDDevice *)self isMatchingUUID:v5];

  log = self->_log;
  if (v6)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[UARPHIDDevice deviceUnresponsive:]";
      v10 = 2112;
      v11 = self;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_100004984();
  }
}

- (void)deviceSendUarpMessageToTransport:(id)a3 uarpMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uuid];
  v9 = [(UARPHIDDevice *)self isMatchingUUID:v8];

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
    v12 = v7;
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