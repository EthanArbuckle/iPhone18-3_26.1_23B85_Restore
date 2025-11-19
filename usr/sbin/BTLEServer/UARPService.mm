@interface UARPService
- (UARPService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5;
- (id)_createPacket:(unint64_t)a3 payloadOffset:(unint64_t)a4 payloadLength:(unint64_t)a5 payload:(id)a6;
- (id)_extractPayload:(id)a3;
- (id)_packetizeData:(id)a3;
- (unsigned)_extractHeader:(id)a3;
- (void)_parseRecvdAACPData:(id)a3;
- (void)_parseRecvdData:(id)a3;
- (void)_prepareForFirmwareDownload;
- (void)assetSolicitationComplete;
- (void)decOpportunisticConnection;
- (void)incOpportunisticConnection;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
- (void)sendData:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation UARPService

- (UARPService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5
{
  v8.receiver = self;
  v8.super_class = UARPService;
  v5 = [(ClientService *)&v8 initWithManager:a3 peripheral:a4 service:a5];
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
  v6 = [(ClientService *)self peripheral];
  v7 = [v6 identifier];
  v8 = [v5 wasUUIDRequestedForLogRetrieval:v7];

  if (!v8)
  {
LABEL_7:
    v9 = +[CattManager instance];
    v10 = [(ClientService *)self peripheral];
    [v9 setOpportunisticConnection:v10];
    goto LABEL_8;
  }

  v9 = +[CattManager instance];
  v10 = [(ClientService *)self peripheral];
  [v9 removeOpportunisticConnection:v10];
LABEL_8:

  v11 = [CBUUID UUIDWithString:CBUUIDUARPDataControlPointCharacteristicString];
  v17 = v11;
  v12 = [NSArray arrayWithObjects:&v17 count:1];

  v13 = [(ClientService *)self peripheral];
  v14 = [(ClientService *)self service];
  [v13 discoverCharacteristics:v12 forService:v14];
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
  v5 = [(UARPService *)self uarpAccessory];
  [v4 unregisterUARPService:self withUARPAccessory:v5];

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

  v4 = [(ClientService *)self peripheral];
  v5 = [v4 maximumWriteValueLengthForType:0];

  [(UARPService *)self setMaxPayloadSize:v5 - 1];
  v6 = objc_alloc_init(NSMutableArray);
  [(UARPService *)self setTxDataQueue:v6];

  v7 = objc_alloc_init(NSMutableData);
  [(UARPService *)self setRecvDataMessage:v7];

  v8 = [(ClientService *)self peripheral];
  v9 = [(UARPService *)self uarpDataControlPointCharacteristic];
  [v8 setNotifyValue:1 forCharacteristic:v9];
}

- (void)sendData:(id)a3
{
  v4 = a3;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000699D8;
  v17 = &unk_1000BD398;
  v18 = self;
  if (self->_transportSetupToken != -1)
  {
    dispatch_once(&self->_transportSetupToken, &v14);
  }

  if ([(UARPService *)self uarpOverAACP:v14])
  {
    v5 = +[BTLEXpcServer instance];
    v19[0] = @"kUARPDeviceUUID";
    v6 = [(ClientService *)self peripheral];
    v7 = [v6 identifier];
    v8 = [v7 UUIDString];
    v19[1] = @"kUARPData";
    v20[0] = v8;
    v20[1] = v4;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    [v5 sendMsg:@"UARPDataOverAACP" args:v9];
  }

  else
  {
    v5 = [(UARPService *)self _packetizeData:v4];
    v10 = [(UARPService *)self txDataQueue];
    [v10 addObjectsFromArray:v5];

    if ([(UARPService *)self isSendingData])
    {

      goto LABEL_10;
    }

    [(UARPService *)self setIsSendingData:1];
    v11 = [(UARPService *)self txDataQueue];
    v6 = [v11 firstObject];

    v12 = [(UARPService *)self txDataQueue];
    [v12 removeObjectAtIndex:0];

    v7 = [(ClientService *)self peripheral];
    v8 = [(UARPService *)self uarpDataControlPointCharacteristic];
    [v7 writeValue:v6 forCharacteristic:v8 type:0];
  }

  v13 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007C01C(v13, self, v4);
  }

LABEL_10:
}

- (id)_packetizeData:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(UARPService *)self maxPayloadSize];
  if (v6 >= [v4 length])
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = [(UARPService *)self _createPacket:0 payloadOffset:v7 payloadLength:[(UARPService *)self maxPayloadSize] payload:v4];
      [v5 addObject:v8];
      v7 += [(UARPService *)self maxPayloadSize];

      v9 = [(UARPService *)self maxPayloadSize]+ v7;
    }

    while (v9 < [v4 length]);
  }

  v10 = -[UARPService _createPacket:payloadOffset:payloadLength:payload:](self, "_createPacket:payloadOffset:payloadLength:payload:", 1, v7, [v4 length] - v7, v4);
  [v5 addObject:v10];

  return v5;
}

- (id)_createPacket:(unint64_t)a3 payloadOffset:(unint64_t)a4 payloadLength:(unint64_t)a5 payload:(id)a6
{
  v13 = a3;
  v8 = a6;
  v9 = objc_alloc_init(NSMutableData);
  v10 = [NSData dataWithBytes:&v13 length:1];
  [v9 appendData:v10];
  v11 = [v8 subdataWithRange:{a4, a5}];

  [v9 appendData:v11];

  return v9;
}

- (void)_parseRecvdAACPData:(id)a3
{
  v4 = a3;
  v7 = +[UARPServiceUARPControllerManager instance];
  v5 = [v7 uarpController];
  v6 = [(UARPService *)self uarpAccessory];
  [v5 recvDataFromAccessory:v6 data:v4 error:0];
}

- (void)_parseRecvdData:(id)a3
{
  v4 = a3;
  v5 = [(UARPService *)self _extractHeader:v4];
  v13 = [(UARPService *)self _extractPayload:v4];

  v6 = [(UARPService *)self recvDataMessage];
  [v6 appendData:v13];

  if (v5)
  {
    v7 = +[UARPServiceUARPControllerManager instance];
    v8 = [v7 uarpController];
    v9 = [(UARPService *)self uarpAccessory];
    v10 = [(UARPService *)self recvDataMessage];
    v11 = [v10 copy];
    [v8 recvDataFromAccessory:v9 data:v11 error:0];

    v12 = [(UARPService *)self recvDataMessage];
    [v12 setLength:0];
  }
}

- (unsigned)_extractHeader:(id)a3
{
  v6 = 0;
  v3 = [a3 subdataWithRange:{0, 1}];
  [v3 getBytes:&v6 length:1];
  v4 = v6;

  return v4;
}

- (id)_extractPayload:(id)a3
{
  v3 = a3;
  v4 = [v3 subdataWithRange:{1, objc_msgSend(v3, "length") - 1}];

  return v4;
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v31 = v8;
    v32 = 2112;
    v33 = v9;
    v34 = 2112;
    v35 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didDiscoverCharacteristicsForService - peripheral:%@ service:%@ error:%@", buf, 0x20u);
  }

  if (!v10)
  {
    v23 = v9;
    v24 = v8;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = [v9 characteristics];
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v25 + 1) + 8 * i);
          v19 = [(UARPService *)self uarpDataControlPointCharacteristic];
          if (v19)
          {
          }

          else
          {
            v20 = [v18 UUID];
            v21 = [CBUUID UUIDWithString:v16];
            v22 = [v20 isEqual:v21];

            if (v22)
            {
              [(UARPService *)self setUarpDataControlPointCharacteristic:v18];
              [(UARPService *)self _prepareForFirmwareDownload];
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    [(ClientService *)self notifyDidStart];
    v9 = v23;
    v8 = v24;
    v10 = 0;
  }
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007C13C(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    v18 = [(UARPService *)self txDataQueue];
    [v18 removeAllObjects];

    [(UARPService *)self setIsSendingData:0];
  }

  else
  {
    v19 = [(UARPService *)self txDataQueue];
    v20 = [v19 firstObject];

    if (v20)
    {
      v21 = [(UARPService *)self txDataQueue];
      [v21 removeObjectAtIndex:0];

      v22 = [(ClientService *)self peripheral];
      v23 = [(UARPService *)self uarpDataControlPointCharacteristic];
      [v22 writeValue:v20 forCharacteristic:v23 type:0];

      v24 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
        v26 = 138412802;
        v27 = v20;
        v28 = 2048;
        v29 = [v20 length];
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

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007C1A8(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  else
  {
    v18 = [v9 value];
    [(UARPService *)self _parseRecvdData:v18];
  }
}

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v42 = v8;
    v43 = 2112;
    v44 = v9;
    v45 = 2112;
    v46 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didUpdateNotificationStateForCharacteristic - peripheral:%@ characteristic:%@ error:%@", buf, 0x20u);
  }

  if (!v10)
  {
    v12 = [(ClientService *)self manager];
    v13 = [CBUUID UUIDWithString:CBUUIDDeviceInformationServiceString];
    v14 = [v12 clientServiceForUUID:v13];

    v15 = [[UARPAccessoryHardwareBluetooth alloc] initWithVendorIDSource:1 vendorID:objc_msgSend(v14 productID:"vendorID") productVersion:{objc_msgSend(v14, "productID"), objc_msgSend(v14, "productVersion")}];
    v16 = [UARPAccessory alloc];
    v17 = [v8 identifier];
    v18 = [v16 initWithHardwareID:v15 uuid:v17];
    [(UARPService *)self setUarpAccessory:v18];

    v19 = [(UARPService *)self uarpAccessory];
    [v19 setAutoDownloadAllowed:1];

    v20 = [(UARPService *)self uarpAccessory];

    if (v20)
    {
      v21 = [[UARPAssetID alloc] initWithLocationType:3 remoteURL:0];
      [(UARPService *)self setUarpAssetID:v21];

      v22 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        v24 = [(UARPService *)self uarpAccessory];
        v25 = [(UARPService *)self uarpAssetID];
        *buf = 138412546;
        v42 = v24;
        v43 = 2112;
        v44 = v25;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Created uarpAccessory:%@ uarpAssetID:%@", buf, 0x16u);
      }

      v26 = +[UARPServiceUARPControllerManager instance];
      v27 = [(UARPService *)self uarpAccessory];
      v28 = [(UARPService *)self uarpAssetID];
      v29 = [v26 registerUARPService:self withUARPAccessory:v27 withUARPAssetID:v28];

      if (v29)
      {
        v30 = [(ClientService *)self peripheral];
        v31 = [v30 identifier];
        v32 = [v31 UUIDString];
        v33 = [NSString stringWithFormat:@"log_%@.uarp", v32];

        v34 = +[UARPServiceUARPControllerManager instance];
        v35 = [v34 uarpLogPath];
        v36 = [NSURL fileURLWithPath:v35 isDirectory:1];
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
    v4 = [(ClientService *)self peripheral];
    [v3 removeOpportunisticConnection:v4];
  }

  [(UARPService *)self setOpportunisticRefCount:[(UARPService *)self opportunisticRefCount]+ 1];
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(UARPService *)self opportunisticRefCount];
    v8 = [(UARPService *)self uarpAccessory];
    v9 = 134218242;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
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
    v5 = [(UARPService *)self opportunisticRefCount];
    v6 = [(UARPService *)self uarpAccessory];
    v9 = 134218242;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "decOpportunisticConnection refCount:%ld %@", &v9, 0x16u);
  }

  if ([(UARPService *)self opportunisticRefCount]<= 0)
  {
    v7 = +[CattManager instance];
    v8 = [(ClientService *)self peripheral];
    [v7 setOpportunisticConnection:v8];

    [(UARPService *)self setOpportunisticRefCount:0];
  }
}

- (void)assetSolicitationComplete
{
  v2 = +[NSFileManager defaultManager];
  v39 = objc_opt_new();
  v3 = +[UARPServiceUARPControllerManager instance];
  v4 = [v3 uarpLogPath];
  v5 = [NSURL fileURLWithPath:v4 isDirectory:1];

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

  v16 = [v43 path];
  v17 = [v2 contentsOfDirectoryAtPath:v16 error:0];

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
        v24 = [(ClientService *)self peripheral];
        v25 = [v24 identifier];
        v26 = [v25 UUIDString];
        v27 = [NSString stringWithFormat:@"AccessoryUARP_%@_%04d-%02d-%02d-%02d-%02d-%02d_%@", v26, (buf.tm_year + 1900), (buf.tm_mon + 1), buf.tm_mday, buf.tm_hour, buf.tm_min, buf.tm_sec, v23];

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
          v32 = v31;
          v33 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            *v51 = 138412290;
            v52 = v32;
            _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "assetSolicitationComplete: moveItemAtURL error %@", v51, 0xCu);
          }
        }

        else
        {
          v32 = [v29 path];
          [v39 addObject:v32];
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

  v36 = [(NSURL *)self->_loggingSuperbinaryURL path];
  [v39 addObject:v36];

  [(UARPService *)self decOpportunisticConnection];
}

@end