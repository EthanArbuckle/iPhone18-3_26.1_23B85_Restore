@interface PTPInitiator
- (BOOL)allowKeepAwake;
- (BOOL)closeSession;
- (BOOL)containsAccessRestrictedAppleDeviceStorage;
- (BOOL)deleteFile:(id)file;
- (BOOL)iCloudPhotosEnabled;
- (BOOL)initiateCapture;
- (BOOL)isAccessRestrictedAppleDevice;
- (BOOL)openSession;
- (BOOL)prioritizeSpeed;
- (BOOL)readStorages;
- (BOOL)resetDevice;
- (BOOL)resetDevicePropertyValueForProperty:(unsigned __int16)property;
- (BOOL)sendHostMediaCapabilities;
- (BOOL)sendHostSupportsGroupNotifications;
- (BOOL)setDeviceDateTime:(id)time;
- (BOOL)setDevicePropertyValue:(id)value forProperty:(unsigned __int16)property;
- (BOOL)start;
- (ICRemoteCameraDeviceNotificationProtocol)delegate;
- (PTPDeviceInfoDataset)deviceInfo;
- (double)timeOffset;
- (id)cameraItemWithObjectID:(unint64_t)d;
- (id)deviceDateTime;
- (id)devicePropertyDescDatasetForProperty:(unsigned __int16)property;
- (id)devicePropertyValueForProperty:(unsigned __int16)property;
- (id)executeTransaction:(id)transaction timeout:(double)timeout;
- (id)fileSystemManifestForStorage:(unsigned int)storage objectFormatCode:(unsigned int)code association:(unsigned int)association;
- (id)metadataFromFile:(id)file;
- (id)mobdevProps;
- (id)mtpObjectRepData:(unsigned int)data;
- (id)mtpObjectRepMetadata:(unsigned int)metadata;
- (id)objectHandlesInStorage:(unsigned int)storage objectFormatCode:(unsigned int)code association:(unsigned int)association;
- (id)partialDataFromFile:(id)file fromOffset:(unint64_t)offset maxSize:(unint64_t)size actualSize:(unint64_t *)actualSize useBuffer:(char *)buffer;
- (id)refreshAssignedDeviceName;
- (id)storageForStorageID:(unsigned int)d;
- (id)storageIDs;
- (id)storageInfo:(unsigned int)info;
- (id)thumbDataFromFile:(id)file maxSize:(unsigned int)size actualSize:(unsigned int *)actualSize useBuffer:(char *)buffer;
- (unint64_t)mtpObjectCompressedSize64:(unsigned int)size64;
- (unint64_t)objectCompressedSize64:(unsigned int)size64;
- (unsigned)copyPartialFile:(id)file fromOffset:(unint64_t)offset size:(unint64_t)size to:(id)to;
- (unsigned)mtpObjectHeight:(unsigned int)height;
- (unsigned)mtpObjectWidth:(unsigned int)width;
- (unsigned)numObjectsInStorage:(unsigned int)storage objectFormatCode:(unsigned int)code association:(unsigned int)association;
- (unsigned)preflightCount;
- (unsigned)ptpObjectCount;
- (void)addMobdevProperties:(id)properties;
- (void)cancel;
- (void)cancelTimerAndFireBlock:(id)block;
- (void)dealloc;
- (void)enumerateMTPPropertiesForObjectFormat:(id)format;
- (void)handleEvent:(id)event;
- (void)notifyDeviceReady:(unint64_t)ready;
- (void)processUnhandledEvents;
- (void)removeDevice;
- (void)sendContentsNotificationWithOrder:(int64_t)order toConnections:(id)connections;
- (void)sendPTPCommand:(id)command andPayload:(id)payload withReply:(id)reply;
- (void)sentData:(id)data;
- (void)sentData:(id)data responseCode:(id)code;
- (void)setDeviceFinishedEnumerating;
- (void)setDeviceIsEnumerating;
- (void)startTimerWithInterval:(double)interval andFireBlock:(id)block;
- (void)stop;
- (void)updateCatalogingDone;
- (void)updateMobdevProps;
@end

@implementation PTPInitiator

- (void)dealloc
{
  __ICOSLogCreate();
  v3 = @"PTPInitiator";
  if ([@"PTPInitiator" length] >= 0x15)
  {
    v4 = [@"PTPInitiator" substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  transport = [(PTPInitiator *)self transport];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%p | %16s - 0x%08X", self, "dealloc locID", [transport locationID]);

  v7 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v3;
    v9 = v7;
    *buf = 136446466;
    uTF8String = [(__CFString *)v3 UTF8String];
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  transport = self->_transport;
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:transport];
  [(PTPHostUSBTransport *)self->_transport setDelegate:0];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_storages;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [objc_opt_class() cancelPreviousPerformRequestsWithTarget:*(*(&v19 + 1) + 8 * i)];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  [(PTPHostUSBTransport *)self->_transport abortPendingIO];
  v16 = self->_transport;
  self->_transport = 0;

  if (self->_mobdevPropertiesBrowser)
  {
    remote_device_browser_cancel();
    mobdevPropertiesBrowser = self->_mobdevPropertiesBrowser;
    self->_mobdevPropertiesBrowser = 0;
  }

  v18.receiver = self;
  v18.super_class = PTPInitiator;
  [(PTPInitiator *)&v18 dealloc];
}

- (BOOL)start
{
  startInitiator = [(PTPHostUSBTransport *)self->_transport startInitiator];
  if (startInitiator)
  {
    transport = self->_transport;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PTPInitiator *)self setDeviceVendorID:[(PTPHostUSBTransport *)self->_transport vendorID]];
      [(PTPInitiator *)self setDeviceProductID:[(PTPHostUSBTransport *)self->_transport productID]];
      usbSerialNumberString = [(PTPHostUSBTransport *)self->_transport usbSerialNumberString];
      [(PTPInitiator *)self setDeviceSerialNumberString:usbSerialNumberString];
    }

    deviceSerialNumberString = [(PTPInitiator *)self deviceSerialNumberString];
    if ([deviceSerialNumberString length] == 24 && -[PTPInitiator deviceVendorID](self, "deviceVendorID") == 1452)
    {
      v7 = [deviceSerialNumberString substringWithRange:{0, 8}];
      v8 = [deviceSerialNumberString substringFromIndex:9];
      v9 = [NSString stringWithFormat:@"%@-%@", v7, v8];
      [(PTPInitiator *)self setDeviceSerialNumberString:v9];
    }
  }

  return startInitiator;
}

- (void)stop
{
  __ICOSLogCreate();
  v3 = @"PTPInitiator";
  if ([@"PTPInitiator" length] >= 0x15)
  {
    v4 = [@"PTPInitiator" substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  transport = [(PTPInitiator *)self transport];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%p | %16s - 0x%08X", self, "stopping locID", [transport locationID]);

  v7 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v3;
    v9 = v7;
    *buf = 136446466;
    uTF8String = [(__CFString *)v3 UTF8String];
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  if ([(PTPInitiator *)self sessionOpen])
  {
    [(PTPInitiator *)self closeSession];
  }

  [(PTPHostUSBTransport *)self->_transport stop];
}

- (void)cancel
{
  v3 = [[PTPCancelPacket alloc] initWithTransactionID:self->_transactionID];
  [(PTPHostUSBTransport *)self->_transport performSelector:"sendCancel:" withObject:v3];
}

- (id)refreshAssignedDeviceName
{
  if (self->_deviceVendorID == 1452)
  {
    v3 = [PTPOperationRequestPacket alloc];
    ++self->_transactionID;
    v4 = [v3 initWithOperationCode:36867 transactionID:? dataPhaseInfo:?];
    v5 = [[PTPTransaction alloc] initWithOperationRequestPacket:v4 txData:0 rxData:0 dataExpected:1];
    v6 = [(PTPInitiator *)self executeTransaction:v5 timeout:_gPTPDefaultTimeOutInSeconds];
    rxDataBuffer = [(PTPTransaction *)v5 rxDataBuffer];
    if (v6 && [v6 responseCode] == 8193 && objc_msgSend(rxDataBuffer, "length"))
    {
      [rxDataBuffer headerOffsetBytes];
      v8 = CopyUnicodeStringWithLengthByteFromBuffer();
      [(PTPInitiator *)self setUserAssignedDeviceName:v8];
    }

    userAssignedDeviceName = [(PTPInitiator *)self userAssignedDeviceName];
  }

  else
  {
    userAssignedDeviceName = 0;
  }

  return userAssignedDeviceName;
}

- (void)handleEvent:(id)event
{
  eventCopy = event;
  delegate = [(PTPInitiator *)self delegate];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100005904;
  v11 = &unk_10002C900;
  selfCopy = self;
  v13 = eventCopy;
  v6 = eventCopy;
  v7 = [NSBlockOperation blockOperationWithBlock:&v8];
  [delegate addInteractiveOperation:{v7, v8, v9, v10, v11, selfCopy}];
}

- (id)cameraItemWithObjectID:(unint64_t)d
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_storages;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 cameraFileWithObjectID:{d, v13}];
        if (!v10)
        {
          v10 = [v9 cameraFolderWithObjectID:d];
          if (!v10)
          {
            continue;
          }
        }

        v11 = v10;
        goto LABEL_13;
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v11 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (void)processUnhandledEvents
{
  transport = [(PTPInitiator *)self transport];
  if ([transport connected])
  {
    v3 = [(NSMutableArray *)self->_eventQueue count];

    if (!v3)
    {
      return;
    }

    transport = [(NSMutableArray *)self->_eventQueue objectAtIndex:0];
    [(NSMutableArray *)self->_eventQueue removeObject:transport];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PTPInitiator *)self performSelector:"handleEvent:" withObject:transport afterDelay:0.0];
    }
  }
}

- (id)executeTransaction:(id)transaction timeout:(double)timeout
{
  transactionCopy = transaction;
  [(PTPInitiator *)self setRequestPending:1];
  [(PTPInitiator *)self setCancelOp:0];
  requestPacket = [transactionCopy requestPacket];
  operationCode = [requestPacket operationCode];

  v10 = operationCode - 4097 < 2 || operationCode == 36875 || operationCode == 36880;
  if (v10 || self->_sessionOpen)
  {
    v11 = [(PTPHostUSBTransport *)self->_transport sendTransaction:transactionCopy timeout:timeout];
  }

  else
  {
    v11 = 0;
  }

  [(PTPInitiator *)self setRequestPending:0];
  [(PTPInitiator *)self performSelector:"processUnhandledEvents" withObject:0 afterDelay:0.0];
  __ICOSLogCreate();
  v12 = [NSString stringWithFormat:@"[PTPInitiator executeTransaction] response: %@\n", v11];
  v13 = [NSString stringWithFormat:@"%@", v12];

  if (__ICLogTypeEnabled())
  {
    v14 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  if (v11 && [v11 responseCode] == 8195)
  {
    [(PTPInitiator *)self removeDevice];
  }

  return v11;
}

- (void)removeDevice
{
  v7 = @"locationID";
  transport = [(PTPInitiator *)self transport];
  v4 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [transport locationID]);
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  [(PTPInitiator *)self stop];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"PTPRemoteCameraResetSession" object:0 userInfo:v5];
}

- (void)sentData:(id)data
{
  dataCopy = data;
  __ICOSLogCreate();
  dataCopy = [NSString stringWithFormat:@"sentData: <PTPDataPacket %p> called\n", dataCopy];

  if (__ICLogTypeEnabled())
  {
    v5 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v7 = dataCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }
}

- (void)sentData:(id)data responseCode:(id)code
{
  codeCopy = code;
  dataCopy = data;
  __ICOSLogCreate();
  intValue = [codeCopy intValue];

  v8 = [NSString stringWithFormat:@"sentData: <PTPDataPacket %p><ResponseCode %d> called\n", dataCopy, intValue];

  if (__ICLogTypeEnabled())
  {
    v9 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }
}

- (PTPDeviceInfoDataset)deviceInfo
{
  deviceInfo = self->_deviceInfo;
  if (deviceInfo)
  {
    goto LABEL_38;
  }

  if (self->_sessionOpen)
  {
    transactionID = self->_transactionID;
    self->_transactionID = transactionID + 1;
  }

  else
  {
    transactionID = 0;
  }

  v5 = [[PTPOperationRequestPacket alloc] initWithOperationCode:4097 transactionID:transactionID dataPhaseInfo:1];
  v6 = [[PTPTransaction alloc] initWithOperationRequestPacket:v5 txData:0 rxData:0 dataExpected:1];
  v7 = 0;
  v8 = 4;
  while (1)
  {
    v9 = v7;
    v7 = [(PTPInitiator *)self executeTransaction:v6 timeout:5.0];

    rxDataBuffer = [(PTPTransaction *)v6 rxDataBuffer];
    if (v7)
    {
      if ([v7 responseCode] == 8193 && objc_msgSend(rxDataBuffer, "length"))
      {
        break;
      }
    }

    [(PTPInitiator *)self closeSession];
LABEL_12:
    [rxDataBuffer setLength:0];

    if (!--v8 || self->_deviceInfo)
    {
      goto LABEL_14;
    }
  }

  v11 = [PTPDeviceInfoDataset alloc];
  v12 = +[NSMutableData dataWithBytes:length:](NSMutableData, "dataWithBytes:length:", [rxDataBuffer headerOffsetBytes], objc_msgSend(rxDataBuffer, "length"));
  v13 = [v11 initWithMutableData:v12];
  v14 = self->_deviceInfo;
  self->_deviceInfo = v13;

  if (!self->_deviceInfo)
  {
    goto LABEL_12;
  }

LABEL_14:
  if ([(PTPInitiator *)self deviceVendorID]== 1452 && [(PTPHostUSBTransport *)self->_transport type]== 2)
  {
    [(PTPInitiator *)self updateMobdevProps];
  }

  vendorExtensionDescription = [(PTPDeviceInfoDataset *)self->_deviceInfo vendorExtensionDescription];
  v16 = [vendorExtensionDescription isEqualToString:&stru_10002D6D0];

  if ((v16 & 1) == 0)
  {
    v33 = v6;
    v17 = [NSCharacterSet characterSetWithCharactersInString:@"&^"];
    vendorExtensionDescription2 = [(PTPDeviceInfoDataset *)self->_deviceInfo vendorExtensionDescription];
    v32 = v17;
    v19 = [vendorExtensionDescription2 componentsSeparatedByCharactersInSet:v17];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = 0;
      v25 = *v35;
      do
      {
        v26 = 0;
        v27 = v24;
        do
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v20);
          }

          v28 = *(*(&v34 + 1) + 8 * v26);
          if (v23)
          {
            v24 = v28;

            if ([v23 isEqualToString:@"ICPE"])
            {
              self->_icplState = [v24 intValue];
            }

            else if ([v23 isEqualToString:@"CPLS"])
            {
              self->_icplOptimizeStorageState = [v24 intValue];
            }

            else if ([v23 isEqualToString:@"ASN"])
            {
              v29 = [v24 copy];
              appleSerialNumberString = self->_appleSerialNumberString;
              self->_appleSerialNumberString = v29;
            }

            v23 = 0;
            v27 = v24;
          }

          else
          {
            v23 = [v28 copy];
            v24 = v27;
          }

          v26 = v26 + 1;
        }

        while (v22 != v26);
        v22 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v22);
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    v6 = v33;
  }

  deviceInfo = self->_deviceInfo;
LABEL_38:

  return deviceInfo;
}

- (id)mobdevProps
{
  v3 = +[NSMutableDictionary dictionary];
  os_unfair_lock_lock(&self->_mobdevPropertiesLock);
  [v3 addEntriesFromDictionary:self->_mobdevProperties];
  os_unfair_lock_unlock(&self->_mobdevPropertiesLock);

  return v3;
}

- (void)addMobdevProperties:(id)properties
{
  if (properties)
  {
    propertiesCopy = properties;
    os_unfair_lock_lock(&self->_mobdevPropertiesLock);
    [(NSMutableDictionary *)self->_mobdevProperties addEntriesFromDictionary:propertiesCopy];

    os_unfair_lock_unlock(&self->_mobdevPropertiesLock);
  }
}

- (void)updateMobdevProps
{
  mobdevProps = [(PTPInitiator *)self mobdevProps];
  v4 = [mobdevProps count];

  if (!v4)
  {
    transport = [(PTPInitiator *)self transport];
    -[PTPInitiator updatePropertiesOfMobileDeviceWithLocationID:](self, "updatePropertiesOfMobileDeviceWithLocationID:", [transport locationID]);
  }
}

- (BOOL)iCloudPhotosEnabled
{
  if (self->_icplState == 2 && [(NSMutableArray *)self->_storages count])
  {
    v3 = [(NSMutableArray *)self->_storages objectAtIndex:0];
    self->_icplState = [v3 locked];
  }

  return self->_icplState == 1;
}

- (id)devicePropertyDescDatasetForProperty:(unsigned __int16)property
{
  v4 = [PTPOperationRequestPacket alloc];
  ++self->_transactionID;
  v5 = [v4 initWithOperationCode:4116 transactionID:? dataPhaseInfo:? parameter1:?];
  v6 = [[PTPTransaction alloc] initWithOperationRequestPacket:v5 txData:0 rxData:0 dataExpected:1];
  v7 = [(PTPInitiator *)self executeTransaction:v6 timeout:_gPTPDefaultTimeOutInSeconds];
  rxDataBuffer = [(PTPTransaction *)v6 rxDataBuffer];
  if (v7 && [v7 responseCode] == 8193 && objc_msgSend(rxDataBuffer, "length"))
  {
    v9 = [PTPDevicePropDescDataset alloc];
    v10 = +[NSMutableData dataWithBytes:length:](NSMutableData, "dataWithBytes:length:", [rxDataBuffer headerOffsetBytes], objc_msgSend(rxDataBuffer, "length"));
    v11 = [v9 initWithMutableData:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)devicePropertyValueForProperty:(unsigned __int16)property
{
  v4 = [PTPOperationRequestPacket alloc];
  ++self->_transactionID;
  v5 = [v4 initWithOperationCode:4117 transactionID:? dataPhaseInfo:? parameter1:?];
  v6 = [[PTPTransaction alloc] initWithOperationRequestPacket:v5 txData:0 rxData:0 dataExpected:1];
  v7 = [(PTPInitiator *)self executeTransaction:v6 timeout:_gPTPDefaultTimeOutInSeconds];
  rxDataBuffer = [(PTPTransaction *)v6 rxDataBuffer];
  if (v7 && [v7 responseCode] == 8193 && objc_msgSend(rxDataBuffer, "length"))
  {
    v9 = [rxDataBuffer copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)setDevicePropertyValue:(id)value forProperty:(unsigned __int16)property
{
  valueCopy = value;
  v6 = [PTPOperationRequestPacket alloc];
  ++self->_transactionID;
  v7 = [v6 initWithOperationCode:4118 transactionID:? dataPhaseInfo:? parameter1:?];
  v8 = [[PTPDataPacket alloc] initWithOperationCode:4118 transactionID:self->_transactionID andData:valueCopy];

  v9 = [[PTPTransaction alloc] initWithOperationRequestPacket:v7 txData:v8 rxData:0 dataExpected:0];
  v10 = [(PTPInitiator *)self executeTransaction:v9 timeout:_gPTPDefaultTimeOutInSeconds];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 responseCode] == 8193;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)resetDevicePropertyValueForProperty:(unsigned __int16)property
{
  v4 = [PTPOperationRequestPacket alloc];
  ++self->_transactionID;
  v5 = [v4 initWithOperationCode:4119 transactionID:? dataPhaseInfo:? parameter1:?];
  v6 = [[PTPTransaction alloc] initWithOperationRequestPacket:v5 txData:0 rxData:0 dataExpected:0];
  v7 = [(PTPInitiator *)self executeTransaction:v6 timeout:_gPTPDefaultTimeOutInSeconds];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 responseCode] == 8193;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)resetDevice
{
  v3 = [[PTPOperationRequestPacket alloc] initWithOperationCode:4112 transactionID:0 dataPhaseInfo:1];
  v4 = [[PTPTransaction alloc] initWithOperationRequestPacket:v3 txData:0 rxData:0 dataExpected:0];
  v5 = [(PTPInitiator *)self executeTransaction:v4 timeout:_gPTPDefaultTimeOutInSeconds];
  v6 = v5;
  if (v5 && [v5 responseCode] == 8193)
  {
    self->_sessionOpen = 0;
    self->_transactionID = 0;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)startTimerWithInterval:(double)interval andFireBlock:(id)block
{
  blockCopy = block;
  timerQueue = [(PTPInitiator *)self timerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008034;
  block[3] = &unk_10002C978;
  intervalCopy = interval;
  block[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  dispatch_sync(timerQueue, block);
}

- (void)cancelTimerAndFireBlock:(id)block
{
  blockCopy = block;
  timerQueue = [(PTPInitiator *)self timerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008304;
  v7[3] = &unk_10002C870;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(timerQueue, v7);
}

- (void)setDeviceIsEnumerating
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000083E0;
  v2[3] = &unk_10002C950;
  v2[4] = self;
  [(PTPInitiator *)self startTimerWithInterval:v2 andFireBlock:0.25];
}

- (void)setDeviceFinishedEnumerating
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000856C;
  v2[3] = &unk_10002C950;
  v2[4] = self;
  [(PTPInitiator *)self cancelTimerAndFireBlock:v2];
}

- (BOOL)openSession
{
  if (self->_sessionOpen)
  {
    return 1;
  }

  else
  {
    [(PTPInitiator *)self sendHostSupportsGroupNotifications];
    [(PTPInitiator *)self sendHostMediaCapabilities];
    self->_transactionID = 0;
    v4 = [PTPOperationRequestPacket alloc];
    ++self->_transactionID;
    v5 = [v4 initWithOperationCode:4098 transactionID:? dataPhaseInfo:? parameter1:?];
    v6 = [[PTPTransaction alloc] initWithOperationRequestPacket:v5 txData:0 rxData:0 dataExpected:0];
    v7 = [(PTPInitiator *)self executeTransaction:v6 timeout:1800.0];
    v8 = v7;
    if (v7 && ([v7 responseCode] == 8193 || objc_msgSend(v8, "responseCode") == 8222))
    {
      self->_sessionOpen = 1;
      if (self->_deviceVendorID == 1452)
      {
        [(PTPInitiator *)self allowKeepAwake];
      }
    }

    sessionOpen = self->_sessionOpen;
  }

  return sessionOpen;
}

- (BOOL)closeSession
{
  v3 = [PTPOperationRequestPacket alloc];
  ++self->_transactionID;
  v4 = [v3 initWithOperationCode:4099 transactionID:? dataPhaseInfo:?];
  v5 = [[PTPTransaction alloc] initWithOperationRequestPacket:v4 txData:0 rxData:0 dataExpected:0];
  v6 = [(PTPInitiator *)self executeTransaction:v5 timeout:_gPTPDefaultTimeOutInSeconds];
  v7 = v6;
  if (v6 && [v6 responseCode] == 8193)
  {
    self->_sessionOpen = 0;
    self->_transactionID = 0;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)storageIDs
{
  v3 = [PTPOperationRequestPacket alloc];
  ++self->_transactionID;
  v4 = [v3 initWithOperationCode:4100 transactionID:? dataPhaseInfo:?];
  v5 = [[PTPTransaction alloc] initWithOperationRequestPacket:v4 txData:0 rxData:0 dataExpected:1];
  v6 = [(PTPInitiator *)self executeTransaction:v5 timeout:_gPTPDefaultTimeOutInSeconds];
  rxDataBuffer = [(PTPTransaction *)v5 rxDataBuffer];
  if (v6 && [v6 responseCode] == 8193 && objc_msgSend(rxDataBuffer, "length"))
  {
    [rxDataBuffer headerOffsetBytes];
    [rxDataBuffer length];
    v8 = CopyArrayOfHandlesFromBufferMaxSize();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)storageInfo:(unsigned int)info
{
  v4 = [PTPOperationRequestPacket alloc];
  ++self->_transactionID;
  v5 = [v4 initWithOperationCode:4101 transactionID:? dataPhaseInfo:? parameter1:?];
  v6 = [[PTPTransaction alloc] initWithOperationRequestPacket:v5 txData:0 rxData:0 dataExpected:1];
  v7 = [(PTPInitiator *)self executeTransaction:v6 timeout:_gPTPDefaultTimeOutInSeconds];
  rxDataBuffer = [(PTPTransaction *)v6 rxDataBuffer];
  if (v7 && [v7 responseCode] == 8193 && objc_msgSend(rxDataBuffer, "length"))
  {
    v9 = [PTPStorageInfoDataset alloc];
    v10 = +[NSMutableData dataWithBytes:length:](NSMutableData, "dataWithBytes:length:", [rxDataBuffer headerOffsetBytes], objc_msgSend(rxDataBuffer, "length"));
    v11 = [v9 initWithMutableData:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)readStorages
{
  [(PTPInitiator *)self setCatalogingDone:0];
  v3 = +[NSMutableArray array];
  [(PTPInitiator *)self storageIDs];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v50 = 0u;
  v4 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v48;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v48 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v47 + 1) + 8 * i);
        if ([v8 longValue])
        {
          v9 = [(PTPInitiator *)self storageForStorageID:?];

          if (!v9)
          {
            [v3 addObject:v8];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v5);
  }

  v10 = [v3 count];
  if (v10)
  {
    v38 = v10;
    __ICOSLogCreate();
    v11 = @"storages";
    if ([@"storages" length] >= 0x15)
    {
      v12 = [@"storages" substringWithRange:{0, 18}];
      v11 = [v12 stringByAppendingString:@".."];
    }

    v13 = [v3 description];
    v14 = [NSString stringWithFormat:@"[PTPInitiator readStorages] storageIDs: %@\n", v13];
    v15 = [NSString stringWithFormat:@"%@", v14];

    v16 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v11;
      v18 = v16;
      uTF8String = [(__CFString *)v11 UTF8String];
      *buf = 136446466;
      v53 = uTF8String;
      v54 = 2114;
      v55 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v39 = v3;
    v40 = v3;
    v20 = [v40 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v42 = *v44;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v44 != v42)
          {
            objc_enumerationMutation(v40);
          }

          longValue = [*(*(&v43 + 1) + 8 * j) longValue];
          if (longValue)
          {
            v25 = [[PTPCameraStorage alloc] initWithStorageID:longValue initiator:self];
            v26 = [(PTPInitiator *)self storageInfo:longValue];
            [(PTPCameraStorage *)v25 setInfo:v26];

            prime = [(PTPCameraStorage *)v25 prime];
            [(NSMutableArray *)self->_storages addObject:v25];
            v28 = [(PTPCameraStorage *)v25 enumerateContent:prime withOrder:self->_enumerationOrder];
            __ICOSLogCreate();
            v29 = @"(prime)ptpObjectCount";
            if ([@"(prime)ptpObjectCount" length] >= 0x15)
            {
              v30 = [@"(prime)ptpObjectCount" substringWithRange:{0, 18}];
              v29 = [v30 stringByAppendingString:@".."];
            }

            v31 = [NSString stringWithFormat:@"0x%08X:%lu", longValue, [(PTPCameraStorage *)v25 ptpObjectCount]];
            v32 = _gICOSLog;
            if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
            {
              v33 = v29;
              v34 = v32;
              uTF8String2 = [(__CFString *)v29 UTF8String];
              *buf = 136446466;
              v53 = uTF8String2;
              v54 = 2114;
              v55 = v31;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
            }

            v22 += v28;
          }
        }

        v21 = [v40 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v21);
    }

    else
    {
      v22 = 0;
    }

    [(PTPInitiator *)self notifyDeviceReady:v22];
    [(PTPInitiator *)self updateCatalogingDone];
    v10 = v38;
    v3 = v39;
  }

  v36 = v10 != 0;

  return v36;
}

- (id)storageForStorageID:(unsigned int)d
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_storages;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 storageID] == d)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (unsigned)numObjectsInStorage:(unsigned int)storage objectFormatCode:(unsigned int)code association:(unsigned int)association
{
  v6 = [PTPOperationRequestPacket alloc];
  ++self->_transactionID;
  v7 = [v6 initWithOperationCode:4102 transactionID:? dataPhaseInfo:? parameter1:? parameter2:? parameter3:?];
  v8 = [[PTPTransaction alloc] initWithOperationRequestPacket:v7 txData:0 rxData:0 dataExpected:0];
  v9 = [(PTPInitiator *)self executeTransaction:v8 timeout:_gPTPDefaultTimeOutInSeconds];
  v10 = v9;
  if (v9 && [v9 responseCode] == 8193)
  {
    parameter1 = [v10 parameter1];
  }

  else
  {
    parameter1 = 0;
  }

  return parameter1;
}

- (id)objectHandlesInStorage:(unsigned int)storage objectFormatCode:(unsigned int)code association:(unsigned int)association
{
  v6 = [PTPOperationRequestPacket alloc];
  ++self->_transactionID;
  v7 = [v6 initWithOperationCode:4103 transactionID:? dataPhaseInfo:? parameter1:? parameter2:? parameter3:?];
  v8 = [[PTPTransaction alloc] initWithOperationRequestPacket:v7 txData:0 rxData:0 dataExpected:1];
  v9 = [(PTPInitiator *)self executeTransaction:v8 timeout:_gPTPDefaultTimeOutInSeconds];
  rxDataBuffer = [(PTPTransaction *)v8 rxDataBuffer];
  v11 = rxDataBuffer;
  if (v9 && [rxDataBuffer length] && (objc_msgSend(v9, "responseCode") == 8193 || objc_msgSend(v9, "responseCode") == 8201))
  {
    [v11 headerOffsetBytes];
    [v11 length];
    v12 = CopyArrayOfHandlesFromBufferMaxSize();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)enumerateMTPPropertiesForObjectFormat:(id)format
{
  formatCopy = format;
  deviceInfo = [(PTPInitiator *)self deviceInfo];
  operationsSupported = [deviceInfo operationsSupported];
  v7 = [NSNumber numberWithInt:38913];
  if (([operationsSupported containsObject:v7] & 1) == 0)
  {

LABEL_9:
    goto LABEL_10;
  }

  mtpProperties = [(PTPInitiator *)self mtpProperties];
  v9 = [mtpProperties objectForKeyedSubscript:formatCopy];

  if (!v9)
  {
    v10 = [PTPOperationRequestPacket alloc];
    transactionID = self->_transactionID;
    self->_transactionID = transactionID + 1;
    deviceInfo = [v10 initWithOperationCode:38913 transactionID:transactionID dataPhaseInfo:1 parameter1:{objc_msgSend(formatCopy, "unsignedIntegerValue")}];
    v12 = [[PTPTransaction alloc] initWithOperationRequestPacket:deviceInfo txData:0 rxData:0 dataExpected:1];
    v13 = [(PTPInitiator *)self executeTransaction:v12 timeout:_gPTPDefaultTimeOutInSeconds];
    rxDataBuffer = [(PTPTransaction *)v12 rxDataBuffer];
    if (v13 && [v13 responseCode] == 8193 && objc_msgSend(rxDataBuffer, "length"))
    {
      [rxDataBuffer headerOffsetBytes];
      [rxDataBuffer length];
      v15 = CopyArrayOfUnsignedShortsFromBufferMaxSize();
      mtpProperties2 = [(PTPInitiator *)self mtpProperties];
      [mtpProperties2 setObject:v15 forKeyedSubscript:formatCopy];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (unint64_t)objectCompressedSize64:(unsigned int)size64
{
  v4 = [PTPOperationRequestPacket alloc];
  ++self->_transactionID;
  v5 = [v4 initWithOperationCode:36870 transactionID:? dataPhaseInfo:? parameter1:? parameter2:? parameter3:?];
  v6 = [[PTPTransaction alloc] initWithOperationRequestPacket:v5 txData:0 rxData:0 dataExpected:1];
  v7 = [(PTPInitiator *)self executeTransaction:v6 timeout:_gPTPDefaultTimeOutInSeconds];
  rxDataBuffer = [(PTPTransaction *)v6 rxDataBuffer];
  if (v7 && [v7 responseCode] == 8193 && objc_msgSend(rxDataBuffer, "length"))
  {
    [rxDataBuffer headerOffsetBytes];
    UInt64 = ReadUInt64();
  }

  else
  {
    UInt64 = 0;
  }

  return UInt64;
}

- (unint64_t)mtpObjectCompressedSize64:(unsigned int)size64
{
  v4 = [PTPOperationRequestPacket alloc];
  ++self->_transactionID;
  v5 = [v4 initWithOperationCode:38915 transactionID:? dataPhaseInfo:? parameter1:? parameter2:?];
  v6 = [[PTPTransaction alloc] initWithOperationRequestPacket:v5 txData:0 rxData:0 dataExpected:1];
  v7 = [(PTPInitiator *)self executeTransaction:v6 timeout:_gPTPDefaultTimeOutInSeconds];
  rxDataBuffer = [(PTPTransaction *)v6 rxDataBuffer];
  if (!v7 || [v7 responseCode] != 8193 || !objc_msgSend(rxDataBuffer, "length"))
  {
    goto LABEL_8;
  }

  [rxDataBuffer headerOffsetBytes];
  if ([rxDataBuffer length] != 4)
  {
    if ([rxDataBuffer length] == 8)
    {
      UInt64 = ReadUInt64();
      goto LABEL_9;
    }

LABEL_8:
    UInt64 = 0;
    goto LABEL_9;
  }

  UInt64 = ReadUInt32();
LABEL_9:

  return UInt64;
}

- (id)mtpObjectRepData:(unsigned int)data
{
  v4 = [PTPOperationRequestPacket alloc];
  ++self->_transactionID;
  v5 = [v4 initWithOperationCode:38915 transactionID:? dataPhaseInfo:? parameter1:? parameter2:?];
  v6 = [[PTPTransaction alloc] initWithOperationRequestPacket:v5 txData:0 rxData:0 dataExpected:1];
  v7 = [(PTPInitiator *)self executeTransaction:v6 timeout:_gPTPDefaultTimeOutInSeconds];
  rxDataBuffer = [(PTPTransaction *)v6 rxDataBuffer];
  if (v7 && [v7 responseCode] == 8193 && objc_msgSend(rxDataBuffer, "length"))
  {
    v9 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [rxDataBuffer headerOffsetBytes], ReadUInt32());
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)mtpObjectRepMetadata:(unsigned int)metadata
{
  v4 = [PTPOperationRequestPacket alloc];
  ++self->_transactionID;
  v5 = [v4 initWithOperationCode:38915 transactionID:? dataPhaseInfo:? parameter1:? parameter2:?];
  v6 = [[PTPTransaction alloc] initWithOperationRequestPacket:v5 txData:0 rxData:0 dataExpected:1];
  v7 = [(PTPInitiator *)self executeTransaction:v6 timeout:_gPTPDefaultTimeOutInSeconds];
  rxDataBuffer = [(PTPTransaction *)v6 rxDataBuffer];
  if (v7 && [v7 responseCode] == 8193 && objc_msgSend(rxDataBuffer, "length"))
  {
    bytes = [rxDataBuffer headerOffsetBytes];
    UInt32 = ReadUInt32();
    v10 = CFDataCreateWithBytesNoCopy(0, bytes, UInt32, kCFAllocatorNull);
    v11 = CGImageSourceCreateWithData(v10, 0);
    v12 = CGImageSourceCopyPropertiesAtIndex(v11, 0, 0);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unsigned)mtpObjectHeight:(unsigned int)height
{
  v4 = [PTPOperationRequestPacket alloc];
  ++self->_transactionID;
  v5 = [v4 initWithOperationCode:38915 transactionID:? dataPhaseInfo:? parameter1:? parameter2:?];
  v6 = [[PTPTransaction alloc] initWithOperationRequestPacket:v5 txData:0 rxData:0 dataExpected:1];
  v7 = [(PTPInitiator *)self executeTransaction:v6 timeout:_gPTPDefaultTimeOutInSeconds];
  rxDataBuffer = [(PTPTransaction *)v6 rxDataBuffer];
  if (v7 && [v7 responseCode] == 8193 && objc_msgSend(rxDataBuffer, "length"))
  {
    [rxDataBuffer headerOffsetBytes];
    UInt32 = ReadUInt32();
  }

  else
  {
    UInt32 = 0;
  }

  return UInt32;
}

- (unsigned)mtpObjectWidth:(unsigned int)width
{
  v4 = [PTPOperationRequestPacket alloc];
  ++self->_transactionID;
  v5 = [v4 initWithOperationCode:38915 transactionID:? dataPhaseInfo:? parameter1:? parameter2:?];
  v6 = [[PTPTransaction alloc] initWithOperationRequestPacket:v5 txData:0 rxData:0 dataExpected:1];
  v7 = [(PTPInitiator *)self executeTransaction:v6 timeout:_gPTPDefaultTimeOutInSeconds];
  rxDataBuffer = [(PTPTransaction *)v6 rxDataBuffer];
  if (v7 && [v7 responseCode] == 8193 && objc_msgSend(rxDataBuffer, "length"))
  {
    [rxDataBuffer headerOffsetBytes];
    UInt32 = ReadUInt32();
  }

  else
  {
    UInt32 = 0;
  }

  return UInt32;
}

- (id)fileSystemManifestForStorage:(unsigned int)storage objectFormatCode:(unsigned int)code association:(unsigned int)association
{
  v6 = objc_alloc_init(NSMutableArray);
  v7 = [PTPOperationRequestPacket alloc];
  ++self->_transactionID;
  v8 = [v7 initWithOperationCode:4131 transactionID:? dataPhaseInfo:? parameter1:? parameter2:? parameter3:?];
  v9 = [[PTPTransaction alloc] initWithOperationRequestPacket:v8 txData:0 rxData:0 dataExpected:1];
  v10 = [(PTPInitiator *)self executeTransaction:v9 timeout:_gPTPDefaultTimeOutInSeconds];
  rxDataBuffer = [(PTPTransaction *)v9 rxDataBuffer];
  if (v10)
  {
    if ([v10 responseCode] == 8193)
    {
      v12 = [rxDataBuffer length];
      if (v12 >= 1)
      {
        v13 = v12;
        v42 = v9;
        v43 = v8;
        v44 = v6;
        v14 = *[rxDataBuffer mutableBytes];
        __ICOSLogCreate();
        v15 = @"FilesystemMaifest";
        if ([@"FilesystemMaifest" length] >= 0x15)
        {
          v16 = [@"FilesystemMaifest" substringWithRange:{0, 18}];
          v15 = [v16 stringByAppendingString:@".."];
        }

        v41 = rxDataBuffer;
        v17 = [NSString stringWithFormat:@"Num Objects: %X", v14];
        v18 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v15;
          v20 = v18;
          *buf = 136446466;
          uTF8String = [(__CFString *)v15 UTF8String];
          v47 = 2114;
          v48 = v17;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }

        if (v13 >= 0x11)
        {
          v21 = v13 - 8;
          do
          {
            ReadUInt32();
            ReadUInt32();
            ReadUInt16();
            ReadUInt16();
            ReadUInt64();
            ReadUInt32();
            ReadUInt16();
            ReadUInt32();
            ReadUInt32();
            v22 = CopyUnicodeStringFromBuffer();
            v23 = [v22 length];
            __ICOSLogCreate();
            v24 = &stru_10002D6D0;
            if ([&stru_10002D6D0 length] >= 0x15)
            {
              v25 = [&stru_10002D6D0 substringWithRange:{0, 18}];
              v24 = [v25 stringByAppendingString:@".."];
            }

            v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Name: %s", [v22 UTF8String]);
            v27 = _gICOSLog;
            if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
            {
              v28 = v24;
              v29 = v27;
              uTF8String2 = [(__CFString *)v24 UTF8String];
              *buf = 136446466;
              uTF8String = uTF8String2;
              v47 = 2114;
              v48 = v26;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
            }

            v31 = CopyUnicodeStringFromBuffer();
            v32 = [v31 length];
            __ICOSLogCreate();
            v33 = &stru_10002D6D0;
            if ([&stru_10002D6D0 length] >= 0x15)
            {
              v34 = [&stru_10002D6D0 substringWithRange:{0, 18}];
              v33 = [v34 stringByAppendingString:@".."];
            }

            v35 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Mod: %s", [v31 UTF8String]);
            v36 = _gICOSLog;
            if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
            {
              v37 = v33;
              v38 = v36;
              uTF8String3 = [(__CFString *)v33 UTF8String];
              *buf = 136446466;
              uTF8String = uTF8String3;
              v47 = 2114;
              v48 = v35;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
            }

            v21 = v21 - 2 * (v23 + v32) - 38;
          }

          while (v21 > 8);
        }

        v8 = v43;
        v6 = v44;
        v9 = v42;
        rxDataBuffer = v41;
      }
    }
  }

  if (![v6 count])
  {

    v6 = 0;
  }

  return v6;
}

- (id)partialDataFromFile:(id)file fromOffset:(unint64_t)offset maxSize:(unint64_t)size actualSize:(unint64_t *)actualSize useBuffer:(char *)buffer
{
  fileCopy = file;
  deviceInfo = [(PTPInitiator *)self deviceInfo];
  deviceInfo2 = [(PTPInitiator *)self deviceInfo];
  operationsSupported = [deviceInfo2 operationsSupported];
  v13 = [NSNumber numberWithUnsignedShort:36871];
  if ([operationsSupported containsObject:v13] && -[PTPInitiator deviceVendorID](self, "deviceVendorID") == 1452)
  {
    v14 = deviceInfo;

LABEL_5:
    v18 = sub_100015240(size);
    v19 = [PTPWrappedBytes alloc];
    if (buffer)
    {
      v20 = [v19 initWithBytes:buffer capacity:v18];
    }

    else
    {
      v20 = [v19 initWithCapacity:0];
    }

    v24 = v20;
    v29 = v14;
    if ([(PTPInitiator *)self copyPartialFile:fileCopy fromOffset:offset size:size to:v20]== 8193)
    {
      v30 = [v24 length];
      *actualSize = v30;
      if (v30)
      {
        headerOffsetBytes = [v24 headerOffsetBytes];
        if (buffer)
        {
          [NSData dataWithBytesNoCopy:headerOffsetBytes length:*actualSize freeWhenDone:0];
        }

        else
        {
          +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", headerOffsetBytes, [v24 length]);
        }
        v28 = ;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
      *actualSize = 0;
    }

    goto LABEL_21;
  }

  v14 = deviceInfo;
  operationsSupported2 = [deviceInfo operationsSupported];
  v16 = [NSNumber numberWithUnsignedShort:4123];
  v17 = [operationsSupported2 containsObject:v16];

  if (v17)
  {
    goto LABEL_5;
  }

  v21 = [fileCopy size];
  v22 = [PTPOperationRequestPacket alloc];
  transactionID = self->_transactionID;
  self->_transactionID = transactionID + 1;
  v24 = [v22 initWithOperationCode:4105 transactionID:transactionID dataPhaseInfo:1 parameter1:{objc_msgSend(fileCopy, "objHandle")}];
  v25 = [[PTPTransaction alloc] initWithOperationRequestPacket:v24 txData:0 rxData:0 dataExpected:1];
  v26 = [(PTPInitiator *)self executeTransaction:v25 timeout:_gPTPDefaultTimeOutInSeconds];
  rxDataBuffer = [(PTPTransaction *)v25 rxDataBuffer];
  if (v26 && [v26 responseCode] == 8193 && objc_msgSend(rxDataBuffer, "length") == v21)
  {
    memcpy(buffer + 12, [rxDataBuffer headerOffsetBytes] + offset, size);
    *actualSize = size;
  }

  v28 = 0;
  v29 = v14;
LABEL_21:

  return v28;
}

- (unsigned)copyPartialFile:(id)file fromOffset:(unint64_t)offset size:(unint64_t)size to:(id)to
{
  fileCopy = file;
  toCopy = to;
  deviceInfo = [(PTPInitiator *)self deviceInfo];
  if ([deviceInfo standardVersion] < 0x6E)
  {

LABEL_5:
    deviceInfo2 = [(PTPInitiator *)self deviceInfo];
    operationsSupported = [deviceInfo2 operationsSupported];
    v19 = [NSNumber numberWithUnsignedShort:38337];
    v20 = [operationsSupported containsObject:v19];

    if (v20)
    {
      v21 = [PTPOperationRequestPacket alloc];
      transactionID = self->_transactionID;
      self->_transactionID = transactionID + 1;
      LODWORD(v31) = size;
      v16 = [v21 initWithOperationCode:38337 transactionID:transactionID dataPhaseInfo:1 parameter1:objc_msgSend(fileCopy parameter2:"objHandle") parameter3:offset parameter4:{HIDWORD(offset), v31}];
    }

    else
    {
      v23 = [PTPOperationRequestPacket alloc];
      v24 = self->_transactionID;
      self->_transactionID = v24 + 1;
      v16 = [v23 initWithOperationCode:4123 transactionID:v24 dataPhaseInfo:1 parameter1:objc_msgSend(fileCopy parameter2:"objHandle") parameter3:{offset, size}];
    }

    goto LABEL_8;
  }

  deviceVendorID = [(PTPInitiator *)self deviceVendorID];

  if (deviceVendorID != 1452)
  {
    goto LABEL_5;
  }

  v14 = [PTPOperationRequestPacket alloc];
  v15 = self->_transactionID;
  self->_transactionID = v15 + 1;
  v16 = [v14 initWithOperationCode:36871 transactionID:v15 dataPhaseInfo:1 parameter1:objc_msgSend(fileCopy parameter2:"objHandle") parameter3:offset parameter4:HIDWORD(offset) parameter5:size];
LABEL_8:
  v25 = v16;
  v26 = [[PTPTransaction alloc] initWithOperationRequestPacket:v16 txData:0 rxData:toCopy dataExpected:1];
  v27 = [(PTPInitiator *)self executeTransaction:v26 timeout:_gPTPDefaultTimeOutInSeconds];
  v28 = v27;
  if (v27)
  {
    responseCode = [v27 responseCode];
  }

  else
  {
    responseCode = 8194;
  }

  return responseCode;
}

- (id)thumbDataFromFile:(id)file maxSize:(unsigned int)size actualSize:(unsigned int *)actualSize useBuffer:(char *)buffer
{
  fileCopy = file;
  if ([fileCopy hasThumbnail])
  {
    v9 = [PTPOperationRequestPacket alloc];
    transactionID = self->_transactionID;
    self->_transactionID = transactionID + 1;
    v11 = [v9 initWithOperationCode:4106 transactionID:transactionID dataPhaseInfo:1 parameter1:{objc_msgSend(fileCopy, "objHandle")}];
    v12 = [[PTPTransaction alloc] initWithOperationRequestPacket:v11 txData:0 rxData:0 dataExpected:1];
    v13 = [(PTPInitiator *)self executeTransaction:v12 timeout:_gPTPDefaultTimeOutInSeconds];
    rxDataBuffer = [(PTPTransaction *)v12 rxDataBuffer];
    if (v13 && [v13 responseCode] == 8193)
    {
      v15 = [rxDataBuffer length];
      *actualSize = v15;
      if (v15)
      {
        v16 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [rxDataBuffer headerOffsetBytes], objc_msgSend(rxDataBuffer, "length"));
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
      *actualSize = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)metadataFromFile:(id)file
{
  fileCopy = file;
  v5 = [PTPOperationRequestPacket alloc];
  transactionID = self->_transactionID;
  self->_transactionID = transactionID + 1;
  objHandle = [fileCopy objHandle];

  v8 = [v5 initWithOperationCode:36873 transactionID:transactionID dataPhaseInfo:1 parameter1:objHandle];
  v9 = [[PTPTransaction alloc] initWithOperationRequestPacket:v8 txData:0 rxData:0 dataExpected:1];
  v10 = [(PTPInitiator *)self executeTransaction:v9 timeout:_gPTPDefaultTimeOutInSeconds];
  rxDataBuffer = [(PTPTransaction *)v9 rxDataBuffer];
  if (v10 && [v10 responseCode] == 8193 && objc_msgSend(rxDataBuffer, "length"))
  {
    v12 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [rxDataBuffer headerOffsetBytes], objc_msgSend(rxDataBuffer, "length"));
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)initiateCapture
{
  v3 = [PTPOperationRequestPacket alloc];
  ++self->_transactionID;
  v4 = [v3 initWithOperationCode:4110 transactionID:? dataPhaseInfo:? parameter1:? parameter2:?];
  v5 = [[PTPTransaction alloc] initWithOperationRequestPacket:v4 txData:0 rxData:0 dataExpected:0];
  v6 = [(PTPInitiator *)self executeTransaction:v5 timeout:_gPTPDefaultTimeOutInSeconds];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 responseCode] == 8193;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)deleteFile:(id)file
{
  fileCopy = file;
  deviceInfo = [(PTPInitiator *)self deviceInfo];
  operationsSupported = [deviceInfo operationsSupported];
  v7 = [NSNumber numberWithUnsignedShort:4107];
  v8 = [operationsSupported containsObject:v7];

  if (v8)
  {
    v9 = [PTPOperationRequestPacket alloc];
    transactionID = self->_transactionID;
    self->_transactionID = transactionID + 1;
    v11 = [v9 initWithOperationCode:4107 transactionID:transactionID dataPhaseInfo:1 parameter1:{objc_msgSend(fileCopy, "objHandle")}];
    v12 = [[PTPTransaction alloc] initWithOperationRequestPacket:v11 txData:0 rxData:0 dataExpected:0];
    v13 = [(PTPInitiator *)self executeTransaction:v12 timeout:_gPTPDefaultTimeOutInSeconds];
    v14 = v13;
    if (v13 && [v13 responseCode] == 8193)
    {
      v15 = -[PTPInitiator storageForStorageID:](self, "storageForStorageID:", [fileCopy storageID]);
      if (v15)
      {
        [v15 removeCameraFileFromIndex:{objc_msgSend(fileCopy, "objHandle")}];
      }

      v16 = 1;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)deviceDateTime
{
  deviceInfo = [(PTPInitiator *)self deviceInfo];
  devicePropertiesSupported = [deviceInfo devicePropertiesSupported];
  v5 = [NSNumber numberWithUnsignedShort:20497];
  v6 = [devicePropertiesSupported containsObject:v5];

  if (v6)
  {
    v7 = [PTPOperationRequestPacket alloc];
    ++self->_transactionID;
    v8 = [v7 initWithOperationCode:4117 transactionID:? dataPhaseInfo:? parameter1:?];
    v9 = [[PTPTransaction alloc] initWithOperationRequestPacket:v8 txData:0 rxData:0 dataExpected:1];
    v10 = [(PTPInitiator *)self executeTransaction:v9 timeout:_gPTPDefaultTimeOutInSeconds];
    rxDataBuffer = [(PTPTransaction *)v9 rxDataBuffer];
    if (v10 && [v10 responseCode] == 8193 && objc_msgSend(rxDataBuffer, "length"))
    {
      headerOffsetBytes = [rxDataBuffer headerOffsetBytes];
      v12 = CopyUnicodeStringWithLengthByteFromBuffer();
      if (v12)
      {
        v13 = objc_alloc_init(NSDateFormatter);
        [v13 setDateFormat:@"yyyyMMdd'T'HHmmss"];
        v18 = 0;
        v19 = 0;
        v17 = 0;
        sscanf([v12 UTF8String], "%04d%02d%02dT%02d%02d%02d", &v19 + 4, &v19, &v18 + 4, &v18, &v17 + 4, &v17);
        if ([v12 length] < 0x10)
        {
          v15 = [v13 dateFromString:v12];
        }

        else
        {
          v14 = [v12 substringToIndex:15];
          v15 = [v13 dateFromString:v14];
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (double)timeOffset
{
  deviceDateTime = [(PTPInitiator *)self deviceDateTime];
  v3 = deviceDateTime;
  if (deviceDateTime)
  {
    [deviceDateTime timeIntervalSinceNow];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (BOOL)setDeviceDateTime:(id)time
{
  timeCopy = time;
  deviceInfo = [(PTPInitiator *)self deviceInfo];
  devicePropertiesSupported = [deviceInfo devicePropertiesSupported];
  v7 = [NSNumber numberWithUnsignedShort:20497];
  v8 = [devicePropertiesSupported containsObject:v7];

  if (v8)
  {
    if (timeCopy)
    {
      v9 = timeCopy;
    }

    else
    {
      v9 = +[NSDate date];
    }

    v11 = v9;
    v16 = malloc_type_malloc(0x40uLL, 0x100004077774924uLL);
    v12 = objc_alloc_init(NSDateFormatter);
    [v12 setDateFormat:@"yyyyMMdd'T'HHmmss"];
    v13 = [v12 stringFromDate:v11];
    WriteUnicodeStringWithLengthByteToBuffer();
    v14 = [[NSData alloc] initWithBytesNoCopy:v16 length:0 freeWhenDone:0];
    v10 = [(PTPInitiator *)self setDevicePropertyValue:v14 forProperty:20497];
    free(v16);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)sendPTPCommand:(id)command andPayload:(id)payload withReply:(id)reply
{
  payloadCopy = payload;
  replyCopy = reply;
  commandCopy = command;
  delegate = [(PTPInitiator *)self delegate];
  [delegate holdPowerAssertion];

  v11 = +[NSMutableDictionary dictionary];
  v12 = [PTPOperationRequestPacket alloc];
  bytes = [commandCopy bytes];

  v14 = [v12 initWithUSBBuffer:bytes];
  v15 = [payloadCopy length];
  transactionID = self->_transactionID;
  if (v15)
  {
    [v14 setTransactionID:transactionID];
    [v14 setDataPhaseInfo:2];
    rxDataBuffer = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(v14 transactionID:"operationCode") andData:{self->_transactionID, payloadCopy}];
    v18 = [[PTPTransaction alloc] initWithOperationRequestPacket:v14 txData:rxDataBuffer rxData:0 dataExpected:0];
    v19 = [(PTPInitiator *)self executeTransaction:v18 timeout:_gPTPDefaultTimeOutInSeconds];
    ++self->_transactionID;
  }

  else
  {
    self->_transactionID = transactionID + 1;
    [v14 setTransactionID:?];
    [v14 setDataPhaseInfo:1];
    v18 = [[PTPTransaction alloc] initWithOperationRequestPacket:v14 txData:0 rxData:0 dataExpected:1];
    v19 = [(PTPInitiator *)self executeTransaction:v18 timeout:_gPTPDefaultTimeOutInSeconds];
    rxDataBuffer = [(PTPTransaction *)v18 rxDataBuffer];
    if (v19 && [v19 responseCode] == 8193 && objc_msgSend(rxDataBuffer, "length"))
    {
      v23 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [rxDataBuffer headerOffsetBytes], objc_msgSend(rxDataBuffer, "length"));
      [v11 setObject:v23 forKey:@"ICPTPDataInBuffer"];
    }
  }

  if (v19)
  {
    contentForUSB = [v19 contentForUSB];
    v21 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [contentForUSB bytes], objc_msgSend(contentForUSB, "length"));
    [v11 setObject:v21 forKey:@"ICPTPResponseBuffer"];
  }

  replyCopy[2](replyCopy, v11);
  delegate2 = [(PTPInitiator *)self delegate];
  [delegate2 releasePowerAssertion];
}

- (BOOL)isAccessRestrictedAppleDevice
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if ([(PTPInitiator *)self deviceVendorID]!= 1452)
  {
    goto LABEL_6;
  }

  if (!self->_sessionOpen)
  {
    v4 = dispatch_semaphore_create(0);
    delegate = [(PTPInitiator *)self delegate];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000BFA4;
    v10[3] = &unk_10002C9A0;
    v10[4] = self;
    v12 = &v13;
    v6 = v4;
    v11 = v6;
    v7 = [NSBlockOperation blockOperationWithBlock:v10];
    [delegate addInteractiveOperation:v7];

    v8 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v6, v8);

LABEL_6:
    v3 = *(v14 + 24);
    goto LABEL_9;
  }

  v3 = self->_deviceIsPasscodeLocked || !self->_deviceIsPairedWithThisHost;
  *(v14 + 24) = v3;
LABEL_9:
  _Block_object_dispose(&v13, 8);
  return v3 & 1;
}

- (BOOL)containsAccessRestrictedAppleDeviceStorage
{
  v2 = [(PTPInitiator *)self storageForStorageID:4277009102];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)prioritizeSpeed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  prioritizeSpeed = [WeakRetained prioritizeSpeed];

  return prioritizeSpeed;
}

- (void)updateCatalogingDone
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_storages;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v9 + 1) + 8 * v7) catalogingDone])
        {
          v8 = 0;
          goto LABEL_11;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  [(PTPInitiator *)self setCatalogingDone:v8];
}

- (void)notifyDeviceReady:(unint64_t)ready
{
  if (ready)
  {
    [NSNumber numberWithUnsignedInteger:?];
  }

  else
  {
    [NSNumber numberWithUnsignedInt:[(PTPInitiator *)self preflightCount]];
  }
  v4 = ;
  v19[0] = @"ICDeviceStatus";
  v19[1] = @"ICANumberOfPreflightObjectsKey";
  v20[0] = @"ICDeviceIsReady";
  v20[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  delegate = [(PTPInitiator *)self delegate];
  delegate2 = [(PTPInitiator *)self delegate];
  allConnections = [delegate2 allConnections];
  [delegate sendStatusNotification:v5 toConnections:allConnections];

  __ICOSLogCreate();
  v9 = @"notifyDeviceReady";
  if ([@"notifyDeviceReady" length] >= 0x15)
  {
    v10 = [@"notifyDeviceReady" substringWithRange:{0, 18}];
    v9 = [v10 stringByAppendingString:@".."];
  }

  v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d Preflighted", [v4 intValue]);
  v12 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v9;
    v14 = v12;
    *buf = 136446466;
    uTF8String = [(__CFString *)v9 UTF8String];
    v17 = 2114;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }
}

- (void)sendContentsNotificationWithOrder:(int64_t)order toConnections:(id)connections
{
  connectionsCopy = connections;
  delegate = [(PTPInitiator *)self delegate];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000CB9C;
  v10[3] = &unk_10002C9C8;
  v10[4] = self;
  v11 = connectionsCopy;
  orderCopy = order;
  v8 = connectionsCopy;
  v9 = [NSBlockOperation blockOperationWithBlock:v10];
  [delegate addInteractiveOperation:v9];
}

- (unsigned)ptpObjectCount
{
  v2 = [(NSMutableArray *)self->_storages copy];
  v3 = [v2 count];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v3 = &v3[[*(*(&v10 + 1) + 8 * v8) ptpObjectCount]];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (unsigned)preflightCount
{
  v2 = [(NSMutableArray *)self->_storages copy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) ptpObjectCount];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    LODWORD(v6) = 0;
  }

  return v6;
}

- (BOOL)sendHostSupportsGroupNotifications
{
  deviceInfo = [(PTPInitiator *)self deviceInfo];
  operationsSupported = [deviceInfo operationsSupported];
  v5 = [NSNumber numberWithUnsignedShort:36880];
  if (![operationsSupported containsObject:v5])
  {

    return 0;
  }

  deviceVendorID = [(PTPInitiator *)self deviceVendorID];

  if (deviceVendorID != 1452)
  {
    return 0;
  }

  if (self->_sessionOpen)
  {
    transactionID = self->_transactionID;
    self->_transactionID = transactionID + 1;
  }

  else
  {
    transactionID = 0;
  }

  v9 = [[PTPOperationRequestPacket alloc] initWithOperationCode:36880 transactionID:transactionID dataPhaseInfo:1];
  v10 = [[PTPTransaction alloc] initWithOperationRequestPacket:v9 txData:0 rxData:0 dataExpected:0];
  v11 = [(PTPInitiator *)self executeTransaction:v10 timeout:_gPTPDefaultTimeOutInSeconds];
  v12 = v11;
  if (v11 && [v11 responseCode] == 8193)
  {
    __ICOSLogCreate();
    v13 = @"PTPCaps";
    if ([@"PTPCaps" length] >= 0x15)
    {
      v14 = [@"PTPCaps" substringWithRange:{0, 18}];
      v13 = [v14 stringByAppendingString:@".."];
    }

    v15 = [NSString stringWithFormat:@"Host Requested Groups Sent"];
    v16 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v13;
      v18 = v16;
      v20 = 136446466;
      uTF8String = [(__CFString *)v13 UTF8String];
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v20, 0x16u);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)sendHostMediaCapabilities
{
  deviceInfo = [(PTPInitiator *)self deviceInfo];
  operationsSupported = [deviceInfo operationsSupported];
  v5 = [NSNumber numberWithUnsignedShort:36875];
  if (![operationsSupported containsObject:v5])
  {

    return 0;
  }

  deviceVendorID = [(PTPInitiator *)self deviceVendorID];

  if (deviceVendorID != 1452)
  {
    return 0;
  }

  v36 = PFMediaCapabilitiesOptionsSortSourceEnumerationAscending;
  v7 = [NSNumber numberWithBool:[(PTPInitiator *)self orderAscending]];
  v37 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v9 = [PFMediaCapabilities capabilitiesForCurrentDeviceWithOptions:v8];

  opaqueRepresentation = [v9 opaqueRepresentation];
  if (opaqueRepresentation)
  {
    if (self->_sessionOpen)
    {
      transactionID = self->_transactionID;
      self->_transactionID = transactionID + 1;
    }

    else
    {
      transactionID = 0;
    }

    v13 = [[PTPOperationRequestPacket alloc] initWithOperationCode:36875 transactionID:transactionID dataPhaseInfo:2];
    __ICOSLogCreate();
    v14 = @"Capabilities";
    if ([@"Capabilities" length] >= 0x15)
    {
      v15 = [@"Capabilities" substringWithRange:{0, 18}];
      v14 = [v15 stringByAppendingString:@".."];
    }

    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Sending Host Capabilities: [%lu]", [opaqueRepresentation length]);
    v17 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v14;
      v19 = v17;
      *buf = 136446466;
      uTF8String = [(__CFString *)v14 UTF8String];
      v34 = 2114;
      v35 = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v20 = [[PTPDataPacket alloc] initWithOperationCode:36875 transactionID:transactionID andData:opaqueRepresentation];
    v21 = [[PTPTransaction alloc] initWithOperationRequestPacket:v13 txData:v20 rxData:0 dataExpected:0];
    v22 = [(PTPInitiator *)self executeTransaction:v21 timeout:_gPTPDefaultTimeOutInSeconds];
    v23 = v22;
    if (v22 && [v22 responseCode] == 8193)
    {
      __ICOSLogCreate();
      v24 = @"Capabilities";
      if ([@"Capabilities" length] >= 0x15)
      {
        v25 = [@"Capabilities" substringWithRange:{0, 18}];
        v24 = [v25 stringByAppendingString:@".."];
      }

      v26 = [NSString stringWithFormat:@"Capabilities Sent"];
      v27 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v24;
        v29 = v27;
        uTF8String2 = [(__CFString *)v24 UTF8String];
        *buf = 136446466;
        uTF8String = uTF8String2;
        v34 = 2114;
        v35 = v26;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      v12 = 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)allowKeepAwake
{
  if (self->_deviceVendorID != 1452)
  {
    return 0;
  }

  v3 = [PTPOperationRequestPacket alloc];
  ++self->_transactionID;
  v4 = [v3 initWithOperationCode:36868 transactionID:? dataPhaseInfo:? parameter1:?];
  v5 = [[PTPTransaction alloc] initWithOperationRequestPacket:v4 txData:0 rxData:0 dataExpected:0];
  v6 = [(PTPInitiator *)self executeTransaction:v5 timeout:_gPTPDefaultTimeOutInSeconds];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 responseCode] == 8193;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (ICRemoteCameraDeviceNotificationProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end