@interface UARPService
- (UARPService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service;
- (id)_createPacket:(unint64_t)packet payloadOffset:(unint64_t)offset payloadLength:(unint64_t)length payload:(id)payload;
- (id)_extractPayload:(id)payload;
- (id)_packetizeData:(id)data;
- (unsigned)_extractHeader:(id)header;
- (void)_parseRecvdAACPData:(id)data;
- (void)_parseRecvdData:(id)data;
- (void)_prepareForFirmwareDownload;
- (void)assetSolicitationComplete;
- (void)decOpportunisticConnection;
- (void)incOpportunisticConnection;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)sendData:(id)data;
- (void)start;
- (void)stop;
@end

@implementation UARPService

- (UARPService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service
{
  v8.receiver = self;
  v8.super_class = UARPService;
  v5 = [(ClientService *)&v8 initWithManager:manager peripheral:peripheral service:service];
  v6 = v5;
  if (v5)
  {
    [(ClientService *)v5 setIsPrimary:1];
    [(UARPService *)v6 setTransportSetupToken:0];
  }

  return v6;
}

- (void)start
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting UARP procedure", buf, 2u);
  }

  v15.receiver = self;
  v15.super_class = UARPService;
  [(ClientService *)&v15 start];
  v4 = +[UARPServiceUARPControllerManager instance];
  if (([v4 tapToRadarIsOngoing] & 1) == 0)
  {

    goto LABEL_7;
  }

  v5 = +[LoggingManager instance];
  peripheral = [(ClientService *)self peripheral];
  identifier = [peripheral identifier];
  v8 = [v5 wasUUIDRequestedForLogRetrieval:identifier];

  if (!v8)
  {
LABEL_7:
    v9 = +[CattManager instance];
    peripheral2 = [(ClientService *)self peripheral];
    [v9 setOpportunisticConnection:peripheral2];
    goto LABEL_8;
  }

  v9 = +[CattManager instance];
  peripheral2 = [(ClientService *)self peripheral];
  [v9 removeOpportunisticConnection:peripheral2];
LABEL_8:

  v11 = [CBUUID UUIDWithString:CBUUIDUARPDataControlPointCharacteristicString];
  v17 = v11;
  v12 = [NSArray arrayWithObjects:&v17 count:1];

  peripheral3 = [(ClientService *)self peripheral];
  service = [(ClientService *)self service];
  [peripheral3 discoverCharacteristics:v12 forService:service];
}

- (void)stop
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping UARP procedure", buf, 2u);
  }

  v4 = +[UARPServiceUARPControllerManager instance];
  uarpAccessory = [(UARPService *)self uarpAccessory];
  [v4 unregisterUARPService:self withUARPAccessory:uarpAccessory];

  v6.receiver = self;
  v6.super_class = UARPService;
  [(ClientService *)&v6 stop];
}

- (void)_prepareForFirmwareDownload
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_prepareForFirmwareDownload", v10, 2u);
  }

  peripheral = [(ClientService *)self peripheral];
  v5 = [peripheral maximumWriteValueLengthForType:0];

  [(UARPService *)self setMaxPayloadSize:v5 - 1];
  v6 = objc_alloc_init(NSMutableArray);
  [(UARPService *)self setTxDataQueue:v6];

  v7 = objc_alloc_init(NSMutableData);
  [(UARPService *)self setRecvDataMessage:v7];

  peripheral2 = [(ClientService *)self peripheral];
  uarpDataControlPointCharacteristic = [(UARPService *)self uarpDataControlPointCharacteristic];
  [peripheral2 setNotifyValue:1 forCharacteristic:uarpDataControlPointCharacteristic];
}

- (void)sendData:(id)data
{
  dataCopy = data;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000699D8;
  v17 = &unk_1000BD398;
  selfCopy = self;
  if (self->_transportSetupToken != -1)
  {
    dispatch_once(&self->_transportSetupToken, &v14);
  }

  if ([(UARPService *)self uarpOverAACP:v14])
  {
    v5 = +[BTLEXpcServer instance];
    v19[0] = @"kUARPDeviceUUID";
    peripheral = [(ClientService *)self peripheral];
    identifier = [peripheral identifier];
    uUIDString = [identifier UUIDString];
    v19[1] = @"kUARPData";
    v20[0] = uUIDString;
    v20[1] = dataCopy;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    [v5 sendMsg:@"UARPDataOverAACP" args:v9];
  }

  else
  {
    v5 = [(UARPService *)self _packetizeData:dataCopy];
    txDataQueue = [(UARPService *)self txDataQueue];
    [txDataQueue addObjectsFromArray:v5];

    if ([(UARPService *)self isSendingData])
    {

      goto LABEL_10;
    }

    [(UARPService *)self setIsSendingData:1];
    txDataQueue2 = [(UARPService *)self txDataQueue];
    peripheral = [txDataQueue2 firstObject];

    txDataQueue3 = [(UARPService *)self txDataQueue];
    [txDataQueue3 removeObjectAtIndex:0];

    identifier = [(ClientService *)self peripheral];
    uUIDString = [(UARPService *)self uarpDataControlPointCharacteristic];
    [identifier writeValue:peripheral forCharacteristic:uUIDString type:0];
  }

  v13 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007C01C(v13, self, dataCopy);
  }

LABEL_10:
}

- (id)_packetizeData:(id)data
{
  dataCopy = data;
  v5 = objc_alloc_init(NSMutableArray);
  maxPayloadSize = [(UARPService *)self maxPayloadSize];
  if (maxPayloadSize >= [dataCopy length])
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = [(UARPService *)self _createPacket:0 payloadOffset:v7 payloadLength:[(UARPService *)self maxPayloadSize] payload:dataCopy];
      [v5 addObject:v8];
      v7 += [(UARPService *)self maxPayloadSize];

      v9 = [(UARPService *)self maxPayloadSize]+ v7;
    }

    while (v9 < [dataCopy length]);
  }

  v10 = -[UARPService _createPacket:payloadOffset:payloadLength:payload:](self, "_createPacket:payloadOffset:payloadLength:payload:", 1, v7, [dataCopy length] - v7, dataCopy);
  [v5 addObject:v10];

  return v5;
}

- (id)_createPacket:(unint64_t)packet payloadOffset:(unint64_t)offset payloadLength:(unint64_t)length payload:(id)payload
{
  packetCopy = packet;
  payloadCopy = payload;
  v9 = objc_alloc_init(NSMutableData);
  v10 = [NSData dataWithBytes:&packetCopy length:1];
  [v9 appendData:v10];
  v11 = [payloadCopy subdataWithRange:{offset, length}];

  [v9 appendData:v11];

  return v9;
}

- (void)_parseRecvdAACPData:(id)data
{
  dataCopy = data;
  v7 = +[UARPServiceUARPControllerManager instance];
  uarpController = [v7 uarpController];
  uarpAccessory = [(UARPService *)self uarpAccessory];
  [uarpController recvDataFromAccessory:uarpAccessory data:dataCopy error:0];
}

- (void)_parseRecvdData:(id)data
{
  dataCopy = data;
  v5 = [(UARPService *)self _extractHeader:dataCopy];
  v13 = [(UARPService *)self _extractPayload:dataCopy];

  recvDataMessage = [(UARPService *)self recvDataMessage];
  [recvDataMessage appendData:v13];

  if (v5)
  {
    v7 = +[UARPServiceUARPControllerManager instance];
    uarpController = [v7 uarpController];
    uarpAccessory = [(UARPService *)self uarpAccessory];
    recvDataMessage2 = [(UARPService *)self recvDataMessage];
    v11 = [recvDataMessage2 copy];
    [uarpController recvDataFromAccessory:uarpAccessory data:v11 error:0];

    recvDataMessage3 = [(UARPService *)self recvDataMessage];
    [recvDataMessage3 setLength:0];
  }
}

- (unsigned)_extractHeader:(id)header
{
  v6 = 0;
  v3 = [header subdataWithRange:{0, 1}];
  [v3 getBytes:&v6 length:1];
  v4 = v6;

  return v4;
}

- (id)_extractPayload:(id)payload
{
  payloadCopy = payload;
  v4 = [payloadCopy subdataWithRange:{1, objc_msgSend(payloadCopy, "length") - 1}];

  return v4;
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v31 = peripheralCopy;
    v32 = 2112;
    v33 = serviceCopy;
    v34 = 2112;
    v35 = errorCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didDiscoverCharacteristicsForService - peripheral:%@ service:%@ error:%@", buf, 0x20u);
  }

  if (!errorCopy)
  {
    v23 = serviceCopy;
    v24 = peripheralCopy;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    characteristics = [serviceCopy characteristics];
    v13 = [characteristics countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      v16 = CBUUIDUARPDataControlPointCharacteristicString;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(characteristics);
          }

          v18 = *(*(&v25 + 1) + 8 * i);
          uarpDataControlPointCharacteristic = [(UARPService *)self uarpDataControlPointCharacteristic];
          if (uarpDataControlPointCharacteristic)
          {
          }

          else
          {
            uUID = [v18 UUID];
            v21 = [CBUUID UUIDWithString:v16];
            v22 = [uUID isEqual:v21];

            if (v22)
            {
              [(UARPService *)self setUarpDataControlPointCharacteristic:v18];
              [(UARPService *)self _prepareForFirmwareDownload];
            }
          }
        }

        v14 = [characteristics countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    [(ClientService *)self notifyDidStart];
    serviceCopy = v23;
    peripheralCopy = v24;
    errorCopy = 0;
  }
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (errorCopy)
  {
    v11 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007C13C(errorCopy, v11, v12, v13, v14, v15, v16, v17);
    }

    txDataQueue = [(UARPService *)self txDataQueue];
    [txDataQueue removeAllObjects];

    [(UARPService *)self setIsSendingData:0];
  }

  else
  {
    txDataQueue2 = [(UARPService *)self txDataQueue];
    firstObject = [txDataQueue2 firstObject];

    if (firstObject)
    {
      txDataQueue3 = [(UARPService *)self txDataQueue];
      [txDataQueue3 removeObjectAtIndex:0];

      peripheral = [(ClientService *)self peripheral];
      uarpDataControlPointCharacteristic = [(UARPService *)self uarpDataControlPointCharacteristic];
      [peripheral writeValue:firstObject forCharacteristic:uarpDataControlPointCharacteristic type:0];

      v24 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
        v26 = 138412802;
        v27 = firstObject;
        v28 = 2048;
        v29 = [firstObject length];
        v30 = 2112;
        v31 = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "didWriteValueForCharacteristic - peripheral:%@ length:%lu error:%@", &v26, 0x20u);
      }
    }

    else
    {
      [(UARPService *)self setIsSendingData:0];
    }
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (errorCopy)
  {
    v11 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007C1A8(errorCopy, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  else
  {
    value = [characteristicCopy value];
    [(UARPService *)self _parseRecvdData:value];
  }
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v42 = peripheralCopy;
    v43 = 2112;
    v44 = characteristicCopy;
    v45 = 2112;
    v46 = errorCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didUpdateNotificationStateForCharacteristic - peripheral:%@ characteristic:%@ error:%@", buf, 0x20u);
  }

  if (!errorCopy)
  {
    manager = [(ClientService *)self manager];
    v13 = [CBUUID UUIDWithString:CBUUIDDeviceInformationServiceString];
    v14 = [manager clientServiceForUUID:v13];

    v15 = [[UARPAccessoryHardwareBluetooth alloc] initWithVendorIDSource:1 vendorID:objc_msgSend(v14 productID:"vendorID") productVersion:{objc_msgSend(v14, "productID"), objc_msgSend(v14, "productVersion")}];
    v16 = [UARPAccessory alloc];
    identifier = [peripheralCopy identifier];
    v18 = [v16 initWithHardwareID:v15 uuid:identifier];
    [(UARPService *)self setUarpAccessory:v18];

    uarpAccessory = [(UARPService *)self uarpAccessory];
    [uarpAccessory setAutoDownloadAllowed:1];

    uarpAccessory2 = [(UARPService *)self uarpAccessory];

    if (uarpAccessory2)
    {
      v21 = [[UARPAssetID alloc] initWithLocationType:3 remoteURL:0];
      [(UARPService *)self setUarpAssetID:v21];

      v22 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        uarpAccessory3 = [(UARPService *)self uarpAccessory];
        uarpAssetID = [(UARPService *)self uarpAssetID];
        *buf = 138412546;
        v42 = uarpAccessory3;
        v43 = 2112;
        v44 = uarpAssetID;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Created uarpAccessory:%@ uarpAssetID:%@", buf, 0x16u);
      }

      v26 = +[UARPServiceUARPControllerManager instance];
      uarpAccessory4 = [(UARPService *)self uarpAccessory];
      uarpAssetID2 = [(UARPService *)self uarpAssetID];
      v29 = [v26 registerUARPService:self withUARPAccessory:uarpAccessory4 withUARPAssetID:uarpAssetID2];

      if (v29)
      {
        peripheral = [(ClientService *)self peripheral];
        identifier2 = [peripheral identifier];
        uUIDString = [identifier2 UUIDString];
        v33 = [NSString stringWithFormat:@"log_%@.uarp", uUIDString];

        v34 = +[UARPServiceUARPControllerManager instance];
        uarpLogPath = [v34 uarpLogPath];
        v36 = [NSURL fileURLWithPath:uarpLogPath isDirectory:1];
        v37 = [v36 URLByAppendingPathComponent:v33 isDirectory:0];
        loggingSuperbinaryURL = self->_loggingSuperbinaryURL;
        self->_loggingSuperbinaryURL = v37;

        v39 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
        {
          sub_10007C214(&self->_loggingSuperbinaryURL, v39);
        }
      }
    }

    else
    {
      v40 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007C290(v40);
      }
    }
  }
}

- (void)incOpportunisticConnection
{
  if (![(UARPService *)self opportunisticRefCount])
  {
    v3 = +[CattManager instance];
    peripheral = [(ClientService *)self peripheral];
    [v3 removeOpportunisticConnection:peripheral];
  }

  [(UARPService *)self setOpportunisticRefCount:[(UARPService *)self opportunisticRefCount]+ 1];
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    opportunisticRefCount = [(UARPService *)self opportunisticRefCount];
    uarpAccessory = [(UARPService *)self uarpAccessory];
    v9 = 134218242;
    v10 = opportunisticRefCount;
    v11 = 2112;
    v12 = uarpAccessory;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "incOpportunisticConnection refCount:%ld %@", &v9, 0x16u);
  }
}

- (void)decOpportunisticConnection
{
  [(UARPService *)self setOpportunisticRefCount:[(UARPService *)self opportunisticRefCount]- 1];
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    opportunisticRefCount = [(UARPService *)self opportunisticRefCount];
    uarpAccessory = [(UARPService *)self uarpAccessory];
    v9 = 134218242;
    v10 = opportunisticRefCount;
    v11 = 2112;
    v12 = uarpAccessory;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "decOpportunisticConnection refCount:%ld %@", &v9, 0x16u);
  }

  if ([(UARPService *)self opportunisticRefCount]<= 0)
  {
    v7 = +[CattManager instance];
    peripheral = [(ClientService *)self peripheral];
    [v7 setOpportunisticConnection:peripheral];

    [(UARPService *)self setOpportunisticRefCount:0];
  }
}

- (void)assetSolicitationComplete
{
  v2 = +[NSFileManager defaultManager];
  v39 = objc_opt_new();
  v3 = +[UARPServiceUARPControllerManager instance];
  uarpLogPath = [v3 uarpLogPath];
  v5 = [NSURL fileURLWithPath:uarpLogPath isDirectory:1];

  v43 = [v5 URLByAppendingPathComponent:@"temp" isDirectory:1];
  v38 = v5;
  if (sub_100010B94())
  {
    [NSURL fileURLWithPath:@"/private/var/log/" isDirectory:1];
  }

  else
  {
    [v5 URLByDeletingLastPathComponent];
  }
  v41 = ;
  [v2 removeItemAtURL:v43 error:0];
  [v2 createDirectoryAtURL:v43 withIntermediateDirectories:1 attributes:0 error:0];
  v6 = [[UARPSuperBinaryAsset alloc] initWithURL:self->_loggingSuperbinaryURL];
  v50 = 0;
  v37 = v6;
  [v6 decomposeToURL:v43 error:&v50];
  v7 = v50;
  if (v7)
  {
    v8 = v7;
    v9 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007C2D4(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  path = [v43 path];
  v17 = [v2 contentsOfDirectoryAtPath:path error:0];

  v18 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    buf.tm_sec = 138412290;
    *&buf.tm_min = v41;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "assetSolicitationComplete: Moving files to directory %@", &buf, 0xCu);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v17;
  v19 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v47;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v47 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v46 + 1) + 8 * i);
        memset(&buf, 0, sizeof(buf));
        v45 = time(0);
        localtime_r(&v45, &buf);
        peripheral = [(ClientService *)self peripheral];
        identifier = [peripheral identifier];
        uUIDString = [identifier UUIDString];
        v27 = [NSString stringWithFormat:@"AccessoryUARP_%@_%04d-%02d-%02d-%02d-%02d-%02d_%@", uUIDString, (buf.tm_year + 1900), (buf.tm_mon + 1), buf.tm_mday, buf.tm_hour, buf.tm_min, buf.tm_sec, v23];

        v28 = [v43 URLByAppendingPathComponent:v23 isDirectory:0];
        v29 = [v41 URLByAppendingPathComponent:v27 isDirectory:0];
        [v2 removeItemAtURL:v29 error:0];
        v30 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          *v51 = 138412546;
          v52 = v28;
          v53 = 2112;
          v54 = v29;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "assetSolicitationComplete: Moving %@ to %@", v51, 0x16u);
        }

        v44 = 0;
        [v2 moveItemAtURL:v28 toURL:v29 error:&v44];
        v31 = v44;
        if (v31)
        {
          path2 = v31;
          v33 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            *v51 = 138412290;
            v52 = path2;
            _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "assetSolicitationComplete: moveItemAtURL error %@", v51, 0xCu);
          }
        }

        else
        {
          path2 = [v29 path];
          [v39 addObject:path2];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v20);
  }

  v34 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    loggingSuperbinaryURL = self->_loggingSuperbinaryURL;
    buf.tm_sec = 138412290;
    *&buf.tm_min = loggingSuperbinaryURL;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "assetSolicitationComplete: Adding superbinary LOGS asset %@", &buf, 0xCu);
  }

  path3 = [(NSURL *)self->_loggingSuperbinaryURL path];
  [v39 addObject:path3];

  [(UARPService *)self decOpportunisticConnection];
}

@end