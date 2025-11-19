@interface PTPResponder
+ (void)catalogPath:(char *)a3 dirs:(int *)a4 media:(int *)a5 nonMedia:(int *)a6;
+ (void)getFilesystemMediaCountForDirectories:(int *)a3 media:(int *)a4 nonMedia:(int *)a5;
- (BOOL)handleSetHostMediaCapabilities:(id)a3;
- (BOOL)handleSetHostSupportedFormats:(id)a3;
- (BOOL)handleSetHostSupportsGroups:(id)a3;
- (BOOL)start;
- (PTPResponder)initWithName:(id)a3 path:(id)a4 andTransportType:(unsigned __int16)a5;
- (id)delegate;
- (id)handleRequest:(id)a3;
- (void)allowKeepAwake:(id)a3;
- (void)closeSession:(id)a3;
- (void)dealloc;
- (void)deleteObject:(id)a3;
- (void)getDeviceInfo:(id)a3;
- (void)getDevicePropDesc:(id)a3;
- (void)getDevicePropValue:(id)a3;
- (void)getNumDownloadableObjects:(id)a3;
- (void)getNumObjects:(id)a3;
- (void)getObject:(id)a3;
- (void)getObjectCompressedSize64:(id)a3;
- (void)getObjectHandles:(id)a3;
- (void)getObjectInfo:(id)a3;
- (void)getObjectInfoForNextObjectGroupInStorage:(id)a3;
- (void)getObjectInfoForObjectsInStorage:(id)a3;
- (void)getObjectMetadata:(id)a3;
- (void)getObjectPropDesc:(id)a3;
- (void)getObjectPropList:(id)a3;
- (void)getObjectPropValue:(id)a3;
- (void)getObjectPropsSupported:(id)a3;
- (void)getPartialObject64:(id)a3;
- (void)getPartialObject:(id)a3;
- (void)getStorageIDs:(id)a3;
- (void)getStorageInfo:(id)a3;
- (void)getThumb:(id)a3;
- (void)getUserAssignedDeviceName:(id)a3;
- (void)handleData:(id)a3;
- (void)handleDeviceRemoval;
- (void)handleResetDevice:(id)a3;
- (void)handleUnsupportedRequest:(id)a3;
- (void)holdPowerAssertion;
- (void)openSession:(id)a3;
- (void)releasePowerAssertion;
- (void)removeVirtualCamera;
- (void)reportGroupAddedInStorage:(id)a3;
- (void)reportObjectAdded:(id)a3;
- (void)reportObjectDeleted:(id)a3;
- (void)reportStorageAdded:(id)a3;
- (void)reportStorageDeleted:(id)a3;
- (void)reportUserAssignedNameChange;
- (void)runRunLoop;
- (void)sendEventDeviceUnlocked;
- (void)sendRestartSessionEvent;
- (void)sentData:(id)a3 responseCode:(id)a4;
- (void)setUsingLegacyOS:(BOOL)a3;
- (void)setUsingMTP:(id)a3;
- (void)setUsingMacOS:(BOOL)a3;
- (void)setUsingWindows;
- (void)stopRunLoop;
- (void)transportActivated;
@end

@implementation PTPResponder

- (void)runRunLoop
{
  self->_keepRunningRunLoop = 1;
  while (self->_keepRunningRunLoop)
  {
    if ((CFRunLoopRunInMode(kCFRunLoopDefaultMode, 5.0, 0) - 1) <= 1)
    {
      __ICOSLogCreate();
      v3 = &stru_100038B48;
      if ([&stru_100038B48 length] >= 0x15)
      {
        v4 = [&stru_100038B48 substringWithRange:{0, 18}];
        v3 = [v4 stringByAppendingString:@".."];
      }

      v5 = [NSString stringWithFormat:@"ptpResponder->runRunLoop has stopped\n"];
      v6 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v3;
        v8 = v6;
        v9 = 136446466;
        v10 = [(__CFString *)v3 UTF8String];
        v11 = 2114;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v9, 0x16u);
      }

      return;
    }
  }
}

- (void)removeVirtualCamera
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002168;
  block[3] = &unk_100038770;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (PTPResponder)initWithName:(id)a3 path:(id)a4 andTransportType:(unsigned __int16)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v30.receiver = self;
  v30.super_class = PTPResponder;
  v10 = [(PTPResponder *)&v30 init];
  if (v10)
  {
    v11 = CFUUIDCreate(kCFAllocatorDefault);
    v12 = CFUUIDCreateString(kCFAllocatorDefault, v11);
    guid = v10->_guid;
    v10->_guid = &v12->isa;

    CFRelease(v11);
    v14 = [[NSString alloc] initWithString:v8];
    name = v10->_name;
    v10->_name = v14;

    v16 = [[NSString alloc] initWithString:v9];
    path = v10->_path;
    v10->_path = v16;

    v10->_allowKeepAwake = 0;
    v10->_powerAssertionReleaseDelay = 1200.0;
    if (v5 == 1)
    {
      v18 = [[PTPDeviceUSBTransport alloc] initWithDelegate:v10];
      transport = v10->_transport;
      v10->_transport = v18;
    }

    if (v10->_transport)
    {
      v20 = dispatch_queue_create("APTP Operation Queue", 0);
      photoLibraryMediaQueryQueue = v10->_photoLibraryMediaQueryQueue;
      v10->_photoLibraryMediaQueryQueue = v20;
    }

    else
    {
      photoLibraryMediaQueryQueue = v10;
      v10 = 0;
    }
  }

  __ICOSLogCreate();
  v22 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v23 = [&stru_100038B48 substringWithRange:{0, 18}];
    v22 = [v23 stringByAppendingString:@".."];
  }

  v24 = [NSString stringWithFormat:@"USB Transport %p\n", v10];
  v25 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v22;
    v27 = v25;
    v28 = [(__CFString *)v22 UTF8String];
    *buf = 136446466;
    v32 = v28;
    v33 = 2114;
    v34 = v24;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  return v10;
}

- (void)dealloc
{
  transport = self->_transport;
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self->_transport];
  [(PTPResponder *)self removeVirtualCamera];
  [(PTPResponder *)self releasePowerAssertion];
  [(PTPDeviceUSBTransport *)self->_transport setDelegate:0];
  v4.receiver = self;
  v4.super_class = PTPResponder;
  [(PTPResponder *)&v4 dealloc];
}

- (void)openSession:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  v6 = [v4 parameter1];

  if (v5 || !v6)
  {
    v7 = [[PTPOperationResponsePacket alloc] initWithResponseCode:8221 transactionID:v5];
  }

  else
  {
    if (self->_sessionID)
    {
      v7 = [[PTPOperationResponsePacket alloc] initWithResponseCode:8222 transactionID:0 parameter1:self->_sessionID];
    }

    else
    {
      self->_sessionID = v6;
      v7 = [[PTPOperationResponsePacket alloc] initWithResponseCode:8193 transactionID:0];
      [(PTPVirtualCamera *)self->_virtualCamera openSession];
    }

    self->_lastTransactionID = 0;
  }

  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v7];
  if (![(PTPResponder *)self usingPeerMediaCapabilities])
  {
    v8 = [(PTPResponder *)self usingMTP];

    if (!v8)
    {
      v9 = sub_10000C470();
      v11[0] = PLPTPHostCharacteristicsKeyMake;
      v11[1] = PLPTPHostCharacteristicsKeyOS;
      v12[0] = PLPTPHostCharacteristicMake_Microsoft;
      v12[1] = PLPTPHostCharacteristicOS_Windows;
      v11[2] = PLPTPHostCharacteristicsKeyTransport;
      v12[2] = PLPTPHostCharacteristicTransport_PTP;
      v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
      [v9 setHostCharacteristics:v10];
    }
  }
}

- (void)closeSession:(id)a3
{
  v4 = [a3 transactionID];
  v5 = v4;
  if (!self->_sessionID)
  {
    goto LABEL_4;
  }

  if (v4 > self->_lastTransactionID)
  {
    [(PTPVirtualCamera *)self->_virtualCamera closeSession];
    self->_lastTransactionID = 0;
    self->_sessionID = 0;
LABEL_4:
    v6 = 8193;
    goto LABEL_6;
  }

  v6 = 8196;
LABEL_6:
  v7 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v6 transactionID:v5];
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v7];
}

- (void)getDeviceInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  v6 = v5;
  if (self->_sessionID && v5 <= self->_lastTransactionID)
  {
    __ICOSLogCreate();
    v13 = @"getDeviceInfo";
    if ([@"getDeviceInfo" length] >= 0x15)
    {
      v14 = [@"getDeviceInfo" substringWithRange:{0, 18}];
      v13 = [v14 stringByAppendingString:@".."];
    }

    v15 = [NSString stringWithFormat:@"responder[session: %d, : transaction: %d], request[transaction: %d]", self->_sessionID, self->_lastTransactionID, v6];
    v16 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v13;
      v18 = v16;
      *buf = 136446466;
      v21 = [(__CFString *)v13 UTF8String];
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [(PTPResponder *)self resetResponderSession];
    v12 = 8196;
    goto LABEL_14;
  }

  v7 = [(PTPVirtualCamera *)self->_virtualCamera deviceInfoDataset];
  if (v7)
  {
    v8 = [PTPDataPacket alloc];
    v9 = [v4 operationCode];
    v10 = [v7 content];
    v11 = [v8 initWithOperationCode:v9 transactionID:v6 andData:v10];

    [(PTPDeviceUSBTransport *)self->_transport sendData:v11];
  }

  if (self->_sessionID)
  {
    self->_lastTransactionID = v6;
  }

  if (!v7)
  {
    v12 = 8198;
LABEL_14:
    v19 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v12 transactionID:v6];
    [(PTPDeviceUSBTransport *)self->_transport sendResponse:v19];
  }
}

- (void)getStorageIDs:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  v6 = v5;
  if (!self->_sessionID)
  {
    v10 = 8195;
LABEL_6:
    v11 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v10 transactionID:v5];
    [(PTPDeviceUSBTransport *)self->_transport sendResponse:v11];

    goto LABEL_7;
  }

  if (v5 <= self->_lastTransactionID)
  {
    v10 = 8196;
    goto LABEL_6;
  }

  self->_lastTransactionID = v5;
  v7 = [(PTPVirtualCamera *)self->_virtualCamera allStorageIDs];
  v8 = [[NSMutableData alloc] initWithLength:{4 * objc_msgSend(v7, "count") + 4}];
  [v8 mutableBytes];
  WriteArrayOfHandlesToBuffer();
  v9 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(v4 transactionID:"operationCode") andData:{v6, v8}];
  [(PTPDeviceUSBTransport *)self->_transport sendData:v9];

LABEL_7:
}

- (void)getStorageInfo:(id)a3
{
  v13 = a3;
  v4 = [v13 transactionID];
  v5 = v4;
  if (self->_sessionID)
  {
    if (v4 <= self->_lastTransactionID)
    {
      v12 = 8196;
    }

    else
    {
      self->_lastTransactionID = v4;
      v6 = -[PTPVirtualCamera storageInfoDatasetForStorageID:](self->_virtualCamera, "storageInfoDatasetForStorageID:", [v13 parameter1]);
      if (v6)
      {
        v7 = v6;
        v8 = [PTPDataPacket alloc];
        v9 = [v13 operationCode];
        v10 = [v7 content];
        v11 = [v8 initWithOperationCode:v9 transactionID:v5 andData:v10];

        [(PTPDeviceUSBTransport *)self->_transport sendData:v11];
        goto LABEL_9;
      }

      v12 = 8200;
    }
  }

  else
  {
    v12 = 8195;
  }

  v7 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v12 transactionID:v5];
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v7];
LABEL_9:
}

- (void)getNumObjects:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  v6 = v5;
  if (!self->_sessionID)
  {
    v15 = [PTPOperationResponsePacket alloc];
    v16 = 8195;
LABEL_8:
    v14 = [v15 initWithResponseCode:v16 transactionID:v6];
    goto LABEL_9;
  }

  if (v5 <= self->_lastTransactionID)
  {
    v15 = [PTPOperationResponsePacket alloc];
    v16 = 8196;
    goto LABEL_8;
  }

  v7 = [v4 parameter1];
  v8 = [v4 parameter2];
  v9 = [v4 parameter3];
  v17 = 0;
  self->_lastTransactionID = v6;
  v10 = [(PTPVirtualCamera *)self->_virtualCamera objectHandlesInStorage:v7 forObjectFormatCode:v8 inAssociation:v9 responseCode:&v17];
  v11 = v10;
  v12 = 0;
  if (v17 == 8193)
  {
    v12 = [v10 count];
  }

  v13 = [PTPOperationResponsePacket alloc];
  v14 = [v13 initWithResponseCode:v17 transactionID:v6 parameter1:v12];

LABEL_9:
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v14];
}

+ (void)getFilesystemMediaCountForDirectories:(int *)a3 media:(int *)a4 nonMedia:(int *)a5
{
  v38 = 0;
  v37 = 0;
  [a1 catalogPath:"/var/mobile/Media/DCIM/" dirs:&v38 + 4 media:&v38 nonMedia:&v37];
  [a1 catalogPath:"/var/mobile/Media/PhotoData/CPLAssets/" dirs:&v38 + 4 media:&v38 nonMedia:&v37];
  __ICOSLogCreate();
  v9 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v10 = [&stru_100038B48 substringWithRange:{0, 18}];
    v9 = [v10 stringByAppendingString:@".."];
  }

  v11 = [NSString stringWithFormat:@"------- [%9s] --------", "File System"];
  v12 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v9;
    v14 = v12;
    v15 = [(__CFString *)v9 UTF8String];
    *buf = 136446466;
    v40 = v15;
    v41 = 2114;
    v42 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  __ICOSLogCreate();
  v16 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v17 = [&stru_100038B48 substringWithRange:{0, 18}];
    v16 = [v17 stringByAppendingString:@".."];
  }

  v18 = [NSString stringWithFormat:@"[%9d] Directories", HIDWORD(v38)];
  v19 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v16;
    v21 = v19;
    v22 = [(__CFString *)v16 UTF8String];
    *buf = 136446466;
    v40 = v22;
    v41 = 2114;
    v42 = v18;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  __ICOSLogCreate();
  v23 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v24 = [&stru_100038B48 substringWithRange:{0, 18}];
    v23 = [v24 stringByAppendingString:@".."];
  }

  v25 = [NSString stringWithFormat:@"[%9d] Asset(s)", v38];
  v26 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v23;
    v28 = v26;
    v29 = [(__CFString *)v23 UTF8String];
    *buf = 136446466;
    v40 = v29;
    v41 = 2114;
    v42 = v25;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  __ICOSLogCreate();
  v30 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v31 = [&stru_100038B48 substringWithRange:{0, 18}];
    v30 = [v31 stringByAppendingString:@".."];
  }

  v32 = [NSString stringWithFormat:@"[%9d] Non-Media", v37];
  v33 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v30;
    v35 = v33;
    v36 = [(__CFString *)v30 UTF8String];
    *buf = 136446466;
    v40 = v36;
    v41 = 2114;
    v42 = v32;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  if (a3)
  {
    *a3 = HIDWORD(v38);
  }

  if (a4)
  {
    *a4 = v38;
  }

  if (a5)
  {
    *a5 = v37;
  }
}

- (void)getNumDownloadableObjects:(id)a3
{
  v18 = 0;
  HIDWORD(v17) = 0;
  v4 = a3;
  [PTPResponder getFilesystemMediaCountForDirectories:&v18 + 4 media:&v18 nonMedia:&v17 + 4];
  [(PTPResponder *)self setUsingLegacyOS:1];
  v5 = [v4 transactionID];

  if (!self->_sessionID)
  {
    v14 = [PTPOperationResponsePacket alloc];
    v15 = 8195;
LABEL_6:
    v13 = [v14 initWithResponseCode:v15 transactionID:v5];
    goto LABEL_7;
  }

  if (v5 <= self->_lastTransactionID)
  {
    v14 = [PTPOperationResponsePacket alloc];
    v15 = 8196;
    goto LABEL_6;
  }

  v6 = v18;
  v7 = HIDWORD(v18);
  v8 = [(PTPVirtualCamera *)self->_virtualCamera ptpSecurityModel];
  v9 = [v8 shouldRemovePlaceholderStorage];

  v10 = [(PTPVirtualCamera *)self->_virtualCamera ptpSecurityModel];
  v11 = [v10 hostIsTrusted];

  self->_lastTransactionID = v5;
  v12 = [PTPOperationResponsePacket alloc];
  LODWORD(v17) = 0;
  v13 = [v12 initWithResponseCode:8193 transactionID:v5 parameter1:v6 parameter2:v7 parameter3:v9 ^ 1 parameter4:v11 parameter5:v17];
LABEL_7:
  v16 = v13;
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v13];
}

- (void)getObjectHandles:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  v6 = v5;
  v16 = 8195;
  if (!self->_sessionID)
  {
    goto LABEL_7;
  }

  if (v5 <= self->_lastTransactionID)
  {
    v16 = 8196;
LABEL_7:
    v14 = [PTPOperationResponsePacket alloc];
    v11 = [v14 initWithResponseCode:v16 transactionID:v6];
    [(PTPDeviceUSBTransport *)self->_transport sendResponse:v11];
    goto LABEL_8;
  }

  v7 = [v4 parameter1];
  v8 = [v4 parameter2];
  v9 = [v4 parameter3];
  self->_lastTransactionID = v6;
  v10 = [(PTPVirtualCamera *)self->_virtualCamera objectHandlesInStorage:v7 forObjectFormatCode:v8 inAssociation:v9 responseCode:&v16];
  v11 = v10;
  if (v16 != 8193)
  {

    goto LABEL_7;
  }

  v12 = [[NSMutableData alloc] initWithLength:{4 * objc_msgSend(v10, "count") + 4}];
  v15 = [v12 mutableBytes];
  WriteArrayOfHandlesToBuffer();
  v13 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(v4 transactionID:"operationCode" andData:{v15), v6, v12}];
  [(PTPDeviceUSBTransport *)self->_transport sendData:v13];

LABEL_8:
}

- (void)getObjectInfo:(id)a3
{
  v13 = a3;
  v4 = [v13 transactionID];
  v5 = v4;
  if (self->_sessionID)
  {
    if (v4 <= self->_lastTransactionID)
    {
      v12 = 8196;
    }

    else
    {
      self->_lastTransactionID = v4;
      v6 = -[PTPVirtualCamera objectInfoDatasetForObjectHandle:](self->_virtualCamera, "objectInfoDatasetForObjectHandle:", [v13 parameter1]);
      if (v6)
      {
        v7 = v6;
        v8 = [PTPDataPacket alloc];
        v9 = [v13 operationCode];
        v10 = [v7 content];
        v11 = [v8 initWithOperationCode:v9 transactionID:v5 andData:v10];

        [(PTPDeviceUSBTransport *)self->_transport sendData:v11];
        goto LABEL_9;
      }

      v12 = 8201;
    }
  }

  else
  {
    v12 = 8195;
  }

  v7 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v12 transactionID:v5];
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v7];
LABEL_9:
}

- (void)getObject:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  v6 = v5;
  v22 = 8195;
  if (!self->_sessionID)
  {
    goto LABEL_15;
  }

  if (v5 <= self->_lastTransactionID)
  {
    v22 = 8196;
LABEL_15:
    v20 = [PTPOperationResponsePacket alloc];
    v16 = [v20 initWithResponseCode:v22 transactionID:v6];
    [(PTPDeviceUSBTransport *)self->_transport sendResponse:v16];
    goto LABEL_16;
  }

  v21 = 0;
  self->_lastTransactionID = v5;
  v7 = -[PTPVirtualCamera objectInfoDatasetForObjectHandle:](self->_virtualCamera, "objectInfoDatasetForObjectHandle:", [v4 parameter1]);
  __ICOSLogCreate();
  v8 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v9 = [&stru_100038B48 substringWithRange:{0, 18}];
    v8 = [v9 stringByAppendingString:@".."];
  }

  v10 = [v7 filename];
  v11 = [NSString stringWithFormat:@"--- >getObject: %@", v10];

  v12 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v8;
    v14 = v12;
    *buf = 136446466;
    v24 = [(__CFString *)v8 UTF8String];
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v15 = -[PTPVirtualCamera dataSourceForObjectHandle:responseCode:size:](self->_virtualCamera, "dataSourceForObjectHandle:responseCode:size:", [v4 parameter1], &v22, &v21);
  v16 = v15;
  if (v22 != 8193 || !v15)
  {
    v19 = 8199;
LABEL_14:
    v22 = v19;

    goto LABEL_15;
  }

  v17 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(v4 transactionID:"operationCode") andDataSource:{v6, v15}];
  if (!v17)
  {
    v19 = 8221;
    goto LABEL_14;
  }

  v18 = v17;
  [(PTPDeviceUSBTransport *)self->_transport sendData:v17];

LABEL_16:
}

- (void)getThumb:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  v6 = v5;
  v19 = 8195;
  if (!self->_sessionID)
  {
    goto LABEL_11;
  }

  if (v5 <= self->_lastTransactionID)
  {
    v19 = 8196;
LABEL_11:
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001AD80;
    v11[3] = &unk_100038A70;
    v13 = v19;
    v12 = v6;
    v11[4] = self;
    dispatch_async(&_dispatch_main_q, v11);
    goto LABEL_12;
  }

  if ([v4 numParameters] == 2)
  {
    v7 = [v4 parameter2];
  }

  else
  {
    v7 = 0;
  }

  self->_lastTransactionID = v6;
  v8 = -[PTPVirtualCamera thumbnailForObjectHandle:maxPixelSize:responseCode:](self->_virtualCamera, "thumbnailForObjectHandle:maxPixelSize:responseCode:", [v4 parameter1], v7, &v19);
  v9 = v8;
  if (v19 != 8193 || !v8)
  {
    v19 = 8208;

    goto LABEL_11;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001ACF8;
  block[3] = &unk_100038A48;
  v18 = v6;
  v15 = v4;
  v16 = v9;
  v17 = self;
  v10 = v9;
  dispatch_async(&_dispatch_main_q, block);

LABEL_12:
}

- (void)getObjectMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  v6 = v5;
  v18 = 8195;
  if (!self->_sessionID)
  {
    goto LABEL_8;
  }

  if (v5 <= self->_lastTransactionID)
  {
    v18 = 8196;
LABEL_8:
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001B018;
    v10[3] = &unk_100038A70;
    v12 = v18;
    v11 = v6;
    v10[4] = self;
    dispatch_async(&_dispatch_main_q, v10);
    goto LABEL_9;
  }

  self->_lastTransactionID = v5;
  v7 = -[PTPVirtualCamera embeddedMetadataForObjectHandle:responseCode:](self->_virtualCamera, "embeddedMetadataForObjectHandle:responseCode:", [v4 parameter1], &v18);
  v8 = v7;
  if (v18 != 8193 || !v7)
  {
    v18 = 8208;

    goto LABEL_8;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AF90;
  block[3] = &unk_100038A48;
  v17 = v6;
  v14 = v4;
  v15 = v8;
  v16 = self;
  v9 = v8;
  dispatch_async(&_dispatch_main_q, block);

LABEL_9:
}

- (void)getPartialObject:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  v6 = v5;
  v14 = 8195;
  if (!self->_sessionID)
  {
    goto LABEL_15;
  }

  if (v5 <= self->_lastTransactionID)
  {
    v14 = 8196;
LABEL_15:
    v12 = [PTPOperationResponsePacket alloc];
    v8 = [v12 initWithResponseCode:v14 transactionID:v6 parameter1:0];
    [(PTPDeviceUSBTransport *)self->_transport sendResponse:v8];
    goto LABEL_16;
  }

  v13 = 0;
  self->_lastTransactionID = v5;
  v7 = -[PTPVirtualCamera dataSourceForObjectHandle:responseCode:size:](self->_virtualCamera, "dataSourceForObjectHandle:responseCode:size:", [v4 parameter1], &v14, &v13);
  v8 = v7;
  if (v14 != 8193 || !v7)
  {
    v14 = 8199;
LABEL_14:

    goto LABEL_15;
  }

  v9 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(v4 transactionID:"operationCode") andDataSource:{v6, v7}];
  if ([v4 parameter3] == -1)
  {
    v11 = -[PTPVirtualCamera objectInfoDatasetForObjectHandle:](self->_virtualCamera, "objectInfoDatasetForObjectHandle:", [v4 parameter1]);
    v10 = [v9 setRange:{objc_msgSend(v4, "parameter2"), objc_msgSend(v11, "objectCompressedSize64") - objc_msgSend(v4, "parameter2")}];

    if (!v9)
    {
LABEL_13:
      v14 = 8221;

      goto LABEL_14;
    }
  }

  else
  {
    v10 = [v9 setRange:{objc_msgSend(v4, "parameter2"), objc_msgSend(v4, "parameter3")}];
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  if (v10)
  {
    goto LABEL_13;
  }

  [(PTPDeviceUSBTransport *)self->_transport sendData:v9];

LABEL_16:
}

- (void)getObjectInfoForObjectsInStorage:(id)a3
{
  v4 = a3;
  info = 0;
  mach_timebase_info(&info);
  _gPTPBenchmarkStartMachTime = 0;
  _gPTPBenchmarkStartMachTime = mach_absolute_time();
  v5 = [v4 transactionID];
  v22 = 8195;
  v6 = [v4 parameter1];
  if (!self->_sessionID)
  {
    goto LABEL_6;
  }

  v7 = dword_1000401D0;
  sub_1000041E8(1);
  if (v5 <= self->_lastTransactionID)
  {
    v22 = 8196;
LABEL_6:
    v11 = [PTPOperationResponsePacket alloc];
    v12 = [v11 initWithResponseCode:v22 transactionID:v5];
    [(PTPDeviceUSBTransport *)self->_transport sendResponse:v12];
    goto LABEL_22;
  }

  v8 = [v4 parameter2];
  v9 = [v4 parameter3];
  if ([v4 operationCode] == 36866)
  {
    v10 = 1;
  }

  else if ([v4 operationCode] == 36869)
  {
    v10 = 2;
  }

  else if ([v4 operationCode] == 4131)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  self->_lastTransactionID = v5;
  if (v6 == v7)
  {
    v22 = 8193;
    *buf = 0;
    v13 = [NSData dataWithBytes:buf length:4];
    goto LABEL_14;
  }

  v14 = [(PTPVirtualCamera *)self->_virtualCamera pathObjectInfoForObjectsInStorage:v6 forObjectFormatCode:v8 inAssociation:v9 withContentType:v10 responseCode:&v22];
  if (v14)
  {
    if (v22 == 8193)
    {
LABEL_20:
      v12 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(v4 transactionID:"operationCode") andFilepath:{v5, v14}];
      [v12 setUnlinkWhenDone:1];
      v13 = v14;
      goto LABEL_21;
    }

    v13 = 0;
    goto LABEL_28;
  }

  v13 = [(PTPVirtualCamera *)self->_virtualCamera objectInfoForObjectsInStorage:v6 forObjectFormatCode:v8 inAssociation:v9 withContentType:v10 responseCode:&v22];
  if (v22 != 8193)
  {
LABEL_28:
    v22 = 8199;

    goto LABEL_6;
  }

LABEL_14:
  if (!v13)
  {
    v14 = 0;
    goto LABEL_20;
  }

  v12 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(v4 transactionID:"operationCode") andData:{v5, v13}];
LABEL_21:

  [(PTPDeviceUSBTransport *)self->_transport sendData:v12];
LABEL_22:

  _gPTPLastBenchmarkElapsedMilliseconds = (((mach_absolute_time() - _gPTPBenchmarkStartMachTime) * info.numer) / info.denom) / 1000000.0;
  __ICOSLogCreate();
  v15 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v16 = [&stru_100038B48 substringWithRange:{0, 18}];
    v15 = [v16 stringByAppendingString:@".."];
  }

  v17 = [NSString stringWithFormat:@"[PTPResponder getObjectInfoForObjectsInStorage] spent %5.2fms building assets for ptpd storageID: 0x%x", _gPTPLastBenchmarkElapsedMilliseconds, v6];
  v18 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v15;
    v20 = v18;
    v21 = [(__CFString *)v15 UTF8String];
    *buf = 136446466;
    v25 = v21;
    v26 = 2114;
    v27 = v17;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }
}

- (void)getObjectCompressedSize64:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  v6 = objc_alloc_init(NSMutableData);
  if (!self->_sessionID)
  {
    goto LABEL_5;
  }

  if (v5 <= self->_lastTransactionID)
  {
    v10 = 8196;
    goto LABEL_7;
  }

  self->_lastTransactionID = v5;
  v7 = -[PTPVirtualCamera objectInfoDatasetForObjectHandle:](self->_virtualCamera, "objectInfoDatasetForObjectHandle:", [v4 parameter1]);
  if (!v7)
  {
LABEL_5:
    v10 = 8195;
LABEL_7:
    v11 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v10 transactionID:v5];
    [(PTPDeviceUSBTransport *)self->_transport sendResponse:v11];

    goto LABEL_8;
  }

  v8 = v7;
  v12 = [v7 objectCompressedSize64];
  [v6 appendBytes:&v12 length:8];
  v9 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(v4 transactionID:"operationCode") andData:{v5, v6}];
  [(PTPDeviceUSBTransport *)self->_transport sendData:v9];

LABEL_8:
}

- (void)getPartialObject64:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  v6 = v5;
  v22 = 8195;
  if (self->_sessionID)
  {
    if (v5 <= self->_lastTransactionID)
    {
      v22 = 8196;
    }

    else
    {
      v21 = 0;
      v7 = [v4 parameter3];
      v8 = [v4 parameter2] | (v7 << 32);
      v9 = [v4 parameter5];
      v10 = [v4 parameter4] | (v9 << 32);
      __ICOSLogCreate();
      v11 = &stru_100038B48;
      if ([&stru_100038B48 length] >= 0x15)
      {
        v12 = [&stru_100038B48 substringWithRange:{0, 18}];
        v11 = [v12 stringByAppendingString:@".."];
      }

      v13 = [NSString stringWithFormat:@"Get Partial Object: Length:[%llu] Offset:[%llu] \n", v10, v8];
      v14 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v11;
        v16 = v14;
        *buf = 136446466;
        v24 = [(__CFString *)v11 UTF8String];
        v25 = 2114;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      self->_lastTransactionID = v6;
      v17 = -[PTPVirtualCamera dataSourceForObjectHandle:responseCode:size:](self->_virtualCamera, "dataSourceForObjectHandle:responseCode:size:", [v4 parameter1], &v22, &v21);
      [v17 setToggleHeaderOffset:1];
      if (v22 == 8193 && v17)
      {
        v18 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(v4 transactionID:"operationCode") andDataSource:{v6, v17}];
        v19 = v18;
        if (v18 && ![v18 setRange:{v8, v10}])
        {
          [(PTPDeviceUSBTransport *)self->_transport sendData:v19];

          goto LABEL_16;
        }

        v22 = 8221;
      }

      else
      {
        v22 = 8199;
      }
    }
  }

  v20 = [PTPOperationResponsePacket alloc];
  v17 = [v20 initWithResponseCode:v22 transactionID:v6 parameter1:0];
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v17];
LABEL_16:
}

- (void)getObjectInfoForNextObjectGroupInStorage:(id)a3
{
  v4 = a3;
  info = 0;
  mach_timebase_info(&info);
  _gPTPBenchmarkStartMachTime = 0;
  _gPTPBenchmarkStartMachTime = mach_absolute_time();
  v5 = [v4 transactionID];
  v14 = 8195;
  v6 = [v4 parameter1];
  if (self->_sessionID)
  {
    v7 = v6;
    v8 = dword_1000401D0;
    sub_1000041E8(1);
    if (v5 <= self->_lastTransactionID)
    {
      v14 = 8196;
    }

    else
    {
      self->_lastTransactionID = v5;
      if (v7 == v8)
      {
        v14 = 8193;
        v13 = 0;
        v9 = [NSData dataWithBytes:&v13 length:8];
LABEL_8:
        v12 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(v4 transactionID:"operationCode") andData:{v5, v9}];
        [(PTPDeviceUSBTransport *)self->_transport sendData:v12];

        goto LABEL_9;
      }

      v11 = [(PTPVirtualCamera *)self->_virtualCamera objectInfoForNextObjectGroupInStorage:v7 responseCode:&v14];
      v9 = v11;
      if (v14 == 8193)
      {
        goto LABEL_8;
      }

      v14 = 8199;
    }
  }

  v10 = [PTPOperationResponsePacket alloc];
  v9 = [v10 initWithResponseCode:v14 transactionID:v5];
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v9];
LABEL_9:

  _gPTPLastBenchmarkElapsedMilliseconds = (((mach_absolute_time() - _gPTPBenchmarkStartMachTime) * info.numer) / info.denom) / 1000000.0;
}

- (void)getUserAssignedDeviceName:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  v6 = v5;
  if (!self->_sessionID)
  {
    v12 = 8195;
LABEL_9:
    v13 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v12 transactionID:v6];
    [(PTPDeviceUSBTransport *)self->_transport sendResponse:v13];

    goto LABEL_10;
  }

  if (v5 <= self->_lastTransactionID)
  {
    v12 = 8196;
    goto LABEL_9;
  }

  self->_lastTransactionID = v5;
  v7 = [(PTPVirtualCamera *)self->_virtualCamera userAssignedName];
  v8 = [v7 length];
  if (!v8 || (v9 = [[NSMutableData alloc] initWithLength:2 * v8 + 3]) == 0)
  {

    v12 = 8194;
    goto LABEL_9;
  }

  v10 = v9;
  [v9 mutableBytes];
  WriteUnicodeStringWithLengthByteToBuffer();
  v11 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(v4 transactionID:"operationCode") andData:{v6, v10}];
  [(PTPDeviceUSBTransport *)self->_transport sendData:v11];

LABEL_10:
}

- (void)deleteObject:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  v6 = v5;
  v11 = 8195;
  if (self->_sessionID)
  {
    if (v5 <= self->_lastTransactionID)
    {
      v8 = 8196;
    }

    else
    {
      v7 = [v4 parameter1];
      self->_lastTransactionID = v6;
      if (v7 != -1)
      {
        [(PTPVirtualCamera *)self->_virtualCamera deleteObjectWithObjectHandle:v7 responseCode:&v11];
        goto LABEL_8;
      }

      v8 = 8198;
    }

    v11 = v8;
  }

LABEL_8:
  v9 = [PTPOperationResponsePacket alloc];
  v10 = [v9 initWithResponseCode:v11 transactionID:v6];
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v10];
}

+ (void)catalogPath:(char *)a3 dirs:(int *)a4 media:(int *)a5 nonMedia:(int *)a6
{
  v11 = opendir(a3);
  if (v11)
  {
    v12 = v11;
    for (i = readdir(v11); i; i = readdir(v12))
    {
      if (i->d_type == 4)
      {
        if (i->d_name[0] != 46 || i->d_name[1] && (i->d_name[1] != 46 || i->d_name[2]))
        {
          ++*a4;
          snprintf(__str, 0x400uLL, "%s/%s", a3, i->d_name);
          [a1 catalogPath:__str dirs:a4 media:a5 nonMedia:a6];
        }
      }

      else
      {
        v14 = strrchr(i->d_name, 46);
        if (v14 && ((v15 = v14, !strcmp(v14, ".AAE")) || !strcmp(v15, ".DBG")))
        {
          ++*a6;
        }

        else
        {
          ++*a5;
        }
      }
    }

    closedir(v12);
  }
}

- (BOOL)handleSetHostMediaCapabilities:(id)a3
{
  v4 = a3;
  [(PTPResponder *)self setUsingMacOS:1];
  v5 = [v4 transactionID];

  if (self->_sessionID && v5 <= self->_lastTransactionID)
  {
    v7 = 8196;
    goto LABEL_7;
  }

  v6 = [(PTPDeviceUSBTransport *)self->_transport readBulkData];
  if (self->_sessionID)
  {
    self->_lastTransactionID = v5;
    if (v6)
    {
LABEL_5:
      v7 = 8194;
LABEL_7:
      v8 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v7 transactionID:v5];
      [(PTPDeviceUSBTransport *)self->_transport sendResponse:v8];

      return 0;
    }
  }

  else if (v6)
  {
    goto LABEL_5;
  }

  return 1;
}

- (BOOL)handleSetHostSupportsGroups:(id)a3
{
  v4 = a3;
  __ICOSLogCreate();
  v5 = @"Group";
  if ([@"Group" length] >= 0x15)
  {
    v6 = [@"Group" substringWithRange:{0, 18}];
    v5 = [v6 stringByAppendingString:@".."];
  }

  v7 = [NSString stringWithFormat:@"Setting Group"];
  v8 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v5;
    v10 = v8;
    v15 = 136446466;
    v16 = [(__CFString *)v5 UTF8String];
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v15, 0x16u);
  }

  v11 = [v4 transactionID];
  if (self->_sessionID && v11 <= self->_lastTransactionID)
  {
    v12 = 8196;
  }

  else
  {
    [(PTPVirtualCamera *)self->_virtualCamera setHostSupportsGroups:1];
    if (self->_sessionID)
    {
      self->_lastTransactionID = v11;
    }

    v12 = 8193;
  }

  v13 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v12 transactionID:v11];
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v13];

  return 0;
}

- (BOOL)handleSetHostSupportedFormats:(id)a3
{
  v4 = a3;
  [(PTPResponder *)self setUsingWindows];
  v5 = [v4 transactionID];

  if (self->_sessionID && v5 <= self->_lastTransactionID)
  {
    v7 = 8196;
    goto LABEL_7;
  }

  v6 = [(PTPDeviceUSBTransport *)self->_transport readBulkData];
  if (self->_sessionID)
  {
    self->_lastTransactionID = v5;
    if (v6)
    {
LABEL_5:
      v7 = 8194;
LABEL_7:
      v8 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v7 transactionID:v5];
      [(PTPDeviceUSBTransport *)self->_transport sendResponse:v8];

      return 0;
    }
  }

  else if (v6)
  {
    goto LABEL_5;
  }

  return 1;
}

- (void)handleUnsupportedRequest:(id)a3
{
  v4 = a3;
  __ICOSLogCreate();
  v5 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v6 = [&stru_100038B48 substringWithRange:{0, 18}];
    v5 = [v6 stringByAppendingString:@".."];
  }

  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[%x] -> Unsupported PTP Command Received", [v4 operationCode]);
  v8 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v5;
    v10 = v8;
    *buf = 136446466;
    v13 = [(__CFString *)v5 UTF8String];
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v11 = [[PTPOperationResponsePacket alloc] initWithResponseCode:8197 transactionID:{objc_msgSend(v4, "transactionID")}];
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v11];
}

- (id)handleRequest:(id)a3
{
  v4 = a3;
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[0x%x]", [v4 operationCode]);
  __ICOSLogCreate();
  v6 = v5;
  v7 = v6;
  if ([v6 length] >= 0x15)
  {
    v8 = [v6 substringWithRange:{0, 18}];
    v7 = [v8 stringByAppendingString:@".."];
  }

  [v4 operationCode];
  v9 = stringForOperationCode();
  v10 = [NSString stringWithFormat:@"<op> %@", v9];

  v11 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v7;
    v13 = v11;
    *buf = 136446466;
    v28 = [v7 UTF8String];
    v29 = 2114;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v14 = [v4 operationCode];
  if (v14 <= 36864)
  {
    switch(v14)
    {
      case 4097:
        [(PTPResponder *)self getDeviceInfo:v4];
        break;
      case 4098:
        [(PTPResponder *)self openSession:v4];
        break;
      case 4099:
        [(PTPResponder *)self closeSession:v4];
        if ([(PTPDeviceUSBTransport *)self->_transport type]== 3)
        {
          [(PTPResponder *)self performSelectorOnMainThread:"stop" withObject:0 waitUntilDone:0];
          [(PTPResponder *)self performSelectorOnMainThread:"stopRunLoop" withObject:0 waitUntilDone:0];
        }

        break;
      case 4100:
        [(PTPResponder *)self getStorageIDs:v4];
        break;
      case 4101:
        [(PTPResponder *)self getStorageInfo:v4];
        break;
      case 4102:
        [(PTPResponder *)self getNumObjects:v4];
        break;
      case 4103:
        [(PTPResponder *)self getObjectHandles:v4];
        break;
      case 4104:
        [(PTPResponder *)self getObjectInfo:v4];
        break;
      case 4105:
        [(PTPResponder *)self getObject:v4];
        break;
      case 4106:
LABEL_18:
        photoLibraryMediaQueryQueue = self->_photoLibraryMediaQueryQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001CA90;
        block[3] = &unk_100038830;
        block[4] = self;
        v26 = v4;
        dispatch_async(photoLibraryMediaQueryQueue, block);
        v16 = v26;
LABEL_44:

        break;
      case 4107:
        [(PTPResponder *)self deleteObject:v4];
        break;
      case 4112:
        [(PTPResponder *)self handleResetDevice:v4];
        break;
      case 4116:
        [(PTPResponder *)self getDevicePropDesc:v4];
        break;
      case 4117:
        [(PTPResponder *)self getDevicePropValue:v4];
        break;
      case 4118:
        v17 = [[PTPOperationResponsePacket alloc] initWithResponseCode:8193 transactionID:{objc_msgSend(v4, "transactionID")}];
        [(PTPDeviceUSBTransport *)self->_transport sendResponse:v17];

        break;
      case 4123:
        [(PTPResponder *)self getPartialObject:v4];
        break;
      case 4131:
LABEL_14:
        [(PTPResponder *)self getObjectInfoForObjectsInStorage:v4];
        break;
      default:
        goto LABEL_48;
    }

    goto LABEL_49;
  }

  if (v14 > 38912)
  {
    if (v14 > 38914)
    {
      if (v14 == 38915)
      {
        [(PTPResponder *)self getObjectPropValue:v4];
      }

      else if (v14 == 38917)
      {
        [(PTPResponder *)self getObjectPropList:v4];
      }

      else
      {
LABEL_48:
        [(PTPResponder *)self handleUnsupportedRequest:v4];
      }
    }

    else if (v14 == 38913)
    {
      [(PTPResponder *)self getObjectPropsSupported:v4];
    }

    else
    {
      [(PTPResponder *)self getObjectPropDesc:v4];
    }

LABEL_49:
    v19 = 0;
    goto LABEL_50;
  }

  switch(v14)
  {
    case 36865:
      [(PTPResponder *)self getNumDownloadableObjects:v4];
      goto LABEL_49;
    case 36866:
    case 36869:
      goto LABEL_14;
    case 36867:
      [(PTPResponder *)self getUserAssignedDeviceName:v4];
      goto LABEL_49;
    case 36868:
      [(PTPResponder *)self allowKeepAwake:v4];
      goto LABEL_49;
    case 36870:
      [(PTPResponder *)self getObjectCompressedSize64:v4];
      goto LABEL_49;
    case 36871:
      [(PTPResponder *)self getPartialObject64:v4];
      goto LABEL_49;
    case 36872:
      [(PTPResponder *)self setUsingMTP:v4];
      goto LABEL_49;
    case 36873:
      v20 = self->_photoLibraryMediaQueryQueue;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10001CA9C;
      v23[3] = &unk_100038830;
      v23[4] = self;
      v24 = v4;
      dispatch_async(v20, v23);
      v16 = v24;
      goto LABEL_44;
    case 36875:
      v18 = [(PTPResponder *)self handleSetHostMediaCapabilities:v4];
      break;
    case 36876:
      goto LABEL_18;
    case 36878:
      v18 = [(PTPResponder *)self handleSetHostSupportedFormats:v4];
      break;
    case 36879:
      [(PTPResponder *)self getObjectInfoForNextObjectGroupInStorage:v4];
      goto LABEL_49;
    case 36880:
      [(PTPResponder *)self handleSetHostSupportsGroups:v4];
      goto LABEL_49;
    default:
      goto LABEL_48;
  }

  v19 = v18;
LABEL_50:
  v21 = [NSNumber numberWithBool:v19];

  return v21;
}

- (void)handleData:(id)a3
{
  v14 = a3;
  v4 = [v14 operationCode];
  if (v4 == 36878)
  {
    virtualCamera = self->_virtualCamera;
    v9 = [v14 data];
    [(PTPVirtualCamera *)virtualCamera assignHostSupportedFormats:v9];

    v10 = [PTPOperationResponsePacket alloc];
    lastTransactionID = self->_lastTransactionID;
    v12 = 8193;
  }

  else
  {
    if (v4 == 36875)
    {
      [(PTPResponder *)self setUsingPeerMediaCapabilities:1];
      v5 = self->_virtualCamera;
      v6 = [v14 data];
      [(PTPVirtualCamera *)v5 assignHostMediaCapabilities:v6];

      v7 = [[PTPOperationResponsePacket alloc] initWithResponseCode:8193 transactionID:self->_lastTransactionID parameter1:MGGetBoolAnswer()];
      goto LABEL_7;
    }

    v10 = [PTPOperationResponsePacket alloc];
    lastTransactionID = self->_lastTransactionID;
    v12 = 8217;
  }

  v7 = [v10 initWithResponseCode:v12 transactionID:lastTransactionID];
LABEL_7:
  v13 = v7;
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v7];
}

- (void)handleResetDevice:(id)a3
{
  v4 = [a3 transactionID];
  __ICOSLogCreate();
  v5 = @"Device Reset";
  if ([@"Device Reset" length] >= 0x15)
  {
    v6 = [@"Device Reset" substringWithRange:{0, 18}];
    v5 = [v6 stringByAppendingString:@".."];
  }

  v7 = [NSString stringWithFormat:@"responder[session: %d, : transaction: %d], request[transaction: %d]", self->_sessionID, self->_lastTransactionID, v4];
  v8 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v5;
    v10 = v8;
    *buf = 136446466;
    v13 = [(__CFString *)v5 UTF8String];
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  [(PTPResponder *)self resetResponderSession];
  v11 = [[PTPOperationResponsePacket alloc] initWithResponseCode:8193 transactionID:v4];
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v11];
}

- (void)handleDeviceRemoval
{
  __ICOSLogCreate();
  v3 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v4 = [&stru_100038B48 substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [NSString stringWithFormat:@"--> Device Removed | Stopping RunLoop"];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3;
    v8 = v6;
    v9 = 136446466;
    v10 = [(__CFString *)v3 UTF8String];
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v9, 0x16u);
  }

  [(PTPResponder *)self performSelectorOnMainThread:"stop" withObject:0 waitUntilDone:0];
  [(PTPResponder *)self performSelectorOnMainThread:"stopRunLoop" withObject:0 waitUntilDone:0];
}

- (void)sentData:(id)a3 responseCode:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v13 operationCode];
  v8 = [v13 transactionID];
  v9 = [PTPOperationResponsePacket alloc];
  v10 = [v6 unsignedShortValue];

  if (v7 == 4123)
  {
    v11 = [v9 initWithResponseCode:v10 transactionID:v8 parameter1:{objc_msgSend(v13, "bytesTransferred")}];
  }

  else
  {
    v11 = [v9 initWithResponseCode:v10 transactionID:v8];
  }

  v12 = v11;
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v11];
}

- (void)reportObjectAdded:(id)a3
{
  v4 = a3;
  v5 = [PTPEventPacket alloc];
  v6 = [v4 unsignedIntValue];

  v7 = [v5 initWithEventCode:16386 transactionID:0xFFFFFFFFLL parameter1:v6];
  [(PTPResponder *)self sendEvent:v7];
}

- (void)reportObjectDeleted:(id)a3
{
  v4 = a3;
  v5 = [PTPEventPacket alloc];
  v6 = [v4 unsignedIntValue];

  v7 = [v5 initWithEventCode:16387 transactionID:0xFFFFFFFFLL parameter1:v6];
  [(PTPResponder *)self sendEvent:v7];
}

- (void)reportStorageAdded:(id)a3
{
  v4 = a3;
  v5 = [PTPEventPacket alloc];
  v6 = [v4 unsignedIntValue];

  v7 = [v5 initWithEventCode:16388 transactionID:0xFFFFFFFFLL parameter1:v6];
  [(PTPResponder *)self sendEvent:v7];
}

- (void)reportStorageDeleted:(id)a3
{
  v4 = a3;
  v5 = [PTPEventPacket alloc];
  v6 = [v4 unsignedIntValue];

  v7 = [v5 initWithEventCode:16389 transactionID:0xFFFFFFFFLL parameter1:v6];
  [(PTPResponder *)self sendEvent:v7];
}

- (void)reportGroupAddedInStorage:(id)a3
{
  v4 = a3;
  v5 = [PTPEventPacket alloc];
  v6 = [v4 unsignedIntValue];

  v7 = [v5 initWithEventCode:49156 transactionID:0xFFFFFFFFLL parameter1:v6];
  [(PTPResponder *)self sendEvent:v7];
}

- (void)reportUserAssignedNameChange
{
  v3 = [[PTPEventPacket alloc] initWithEventCode:49154 transactionID:0xFFFFFFFFLL];
  [(PTPResponder *)self sendEvent:v3];
}

- (BOOL)start
{
  __ICOSLogCreate();
  v3 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v4 = [&stru_100038B48 substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [NSString stringWithFormat:@"Starting Responder\n"];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3;
    v8 = v6;
    *buf = 136446466;
    v18 = [(__CFString *)v3 UTF8String];
    v19 = 2114;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  __ICOSLogCreate();
  v9 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v10 = [&stru_100038B48 substringWithRange:{0, 18}];
    v9 = [v10 stringByAppendingString:@".."];
  }

  v11 = [NSString stringWithFormat:@"Built: %s %s\n", aOct222025, a221245];
  v12 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v9;
    v14 = v12;
    v15 = [(__CFString *)v9 UTF8String];
    *buf = 136446466;
    v18 = v15;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  return [(PTPDeviceUSBTransport *)self->_transport startResponder];
}

- (void)stopRunLoop
{
  self->_keepRunningRunLoop = 0;
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

- (void)transportActivated
{
  v3 = [[PTPVirtualCamera alloc] initWithName:self->_name andPath:self->_path];
  virtualCamera = self->_virtualCamera;
  self->_virtualCamera = v3;

  self->_usingMTP = 0;
  v5 = self->_virtualCamera;

  [(PTPVirtualCamera *)v5 setDelegate:self];
}

- (void)sendEventDeviceUnlocked
{
  v3 = [[PTPEventPacket alloc] initWithEventCode:49153 transactionID:0xFFFFFFFFLL];
  [(PTPResponder *)self sendEvent:v3];
}

- (void)sendRestartSessionEvent
{
  v3 = [[PTPEventPacket alloc] initWithEventCode:49155 transactionID:0xFFFFFFFFLL];
  [(PTPResponder *)self sendEvent:v3];
}

- (void)getDevicePropDesc:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  v6 = v5;
  if (self->_sessionID)
  {
    if (v5 <= self->_lastTransactionID)
    {
      v13 = 8196;
    }

    else
    {
      self->_lastTransactionID = v5;
      v7 = -[PTPVirtualCamera devicePropDescDatasetForProperty:](self->_virtualCamera, "devicePropDescDatasetForProperty:", [v4 parameter1]);
      if (v7)
      {
        v8 = v7;
        v9 = [PTPDataPacket alloc];
        v10 = [v4 operationCode];
        v11 = [v8 content];
        v12 = [v9 initWithOperationCode:v10 transactionID:v6 andData:v11];

        [(PTPDeviceUSBTransport *)self->_transport sendData:v12];
        goto LABEL_13;
      }

      v13 = 8202;
    }
  }

  else
  {
    v13 = 8195;
  }

  v14 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v13 transactionID:v6];
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v14];
  __ICOSLogCreate();
  v15 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v16 = [&stru_100038B48 substringWithRange:{0, 18}];
    v15 = [v16 stringByAppendingString:@".."];
  }

  v17 = [NSString stringWithFormat:@"MTP* getDevicePropDesc - response:\n%@\n", v14];
  v18 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v15;
    v20 = v18;
    *buf = 136446466;
    v22 = [(__CFString *)v15 UTF8String];
    v23 = 2114;
    v24 = v17;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

LABEL_13:
}

- (void)getDevicePropValue:(id)a3
{
  v10 = a3;
  v4 = [v10 transactionID];
  v5 = v4;
  if (self->_sessionID)
  {
    if (v4 <= self->_lastTransactionID)
    {
      v9 = 8196;
    }

    else
    {
      self->_lastTransactionID = v4;
      v6 = -[PTPVirtualCamera devicePropValueForProperty:](self->_virtualCamera, "devicePropValueForProperty:", [v10 parameter1]);
      if (v6)
      {
        v7 = v6;
        v8 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(v10 transactionID:"operationCode") andData:{v5, v6}];
        [(PTPDeviceUSBTransport *)self->_transport sendData:v8];

        goto LABEL_9;
      }

      v9 = 8202;
    }
  }

  else
  {
    v9 = 8195;
  }

  v7 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v9 transactionID:v5];
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v7];
LABEL_9:
}

- (void)getObjectPropsSupported:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  v18 = 8193;
  if (v5 <= self->_lastTransactionID)
  {
    v18 = 8196;
  }

  else
  {
    v6 = [v4 parameter1];
    self->_lastTransactionID = v5;
    v7 = [(PTPVirtualCamera *)self->_virtualCamera objectPropertiesSupportedForObjectFormatCode:v6 responseCode:&v18];
    v8 = v7;
    if (v18 == 8193)
    {
      v9 = [[NSMutableData alloc] initWithLength:{2 * objc_msgSend(v7, "count") + 4}];
      *buf = [(__CFString *)v9 mutableBytes];
      WriteArrayOfUnsignedShortsToBuffer();
      v10 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(v4 transactionID:"operationCode") andData:{v5, v9}];
      [(PTPDeviceUSBTransport *)self->_transport sendData:v10];

      goto LABEL_11;
    }
  }

  v11 = [PTPOperationResponsePacket alloc];
  v8 = [v11 initWithResponseCode:v18 transactionID:v5];
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v8];
  __ICOSLogCreate();
  v9 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v12 = [&stru_100038B48 substringWithRange:{0, 18}];
    v9 = [v12 stringByAppendingString:@".."];
  }

  v13 = [NSString stringWithFormat:@"getObjectPropsSupported - response:\n%@\n", v8];
  v14 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v9;
    v16 = v14;
    v17 = [(__CFString *)v9 UTF8String];
    *buf = 136446466;
    *&buf[4] = v17;
    v20 = 2114;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

LABEL_11:
}

- (void)getObjectPropValue:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  v18 = 8193;
  if (v5 <= self->_lastTransactionID)
  {
    v18 = 8196;
  }

  else
  {
    v6 = [v4 parameter1];
    v7 = [v4 parameter2];
    self->_lastTransactionID = v5;
    v8 = [(PTPVirtualCamera *)self->_virtualCamera objectPropValueForHandle:v6 withObjectPropertyCode:v7 responseCode:&v18];
    v9 = v8;
    if (v18 == 8193)
    {
      v10 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(v4 transactionID:"operationCode") andData:{v5, v8}];
      [(PTPDeviceUSBTransport *)self->_transport sendData:v10];
      goto LABEL_11;
    }
  }

  v11 = [PTPOperationResponsePacket alloc];
  v9 = [v11 initWithResponseCode:v18 transactionID:v5];
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v9];
  __ICOSLogCreate();
  v10 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v12 = [&stru_100038B48 substringWithRange:{0, 18}];
    v10 = [v12 stringByAppendingString:@".."];
  }

  v13 = [NSString stringWithFormat:@"getObjectPropValue - response:\n%@\n", v9];
  v14 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v10;
    v16 = v14;
    v17 = [(__CFString *)v10 UTF8String];
    *buf = 136446466;
    v20 = v17;
    v21 = 2114;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

LABEL_11:
}

- (void)getObjectPropList:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  v21 = 8193;
  if (v5 <= self->_lastTransactionID)
  {
    v21 = 8196;
  }

  else
  {
    v6 = [v4 parameter1];
    v7 = [v4 parameter2];
    v8 = [v4 parameter3];
    v9 = [v4 parameter4];
    v10 = [v4 parameter5];
    self->_lastTransactionID = v5;
    v11 = [(PTPVirtualCamera *)self->_virtualCamera objectPropListForHandle:v6 withObjectFormatCode:v7 andPropertyCode:v8 andPropertyGroup:v9 andDepth:v10 responseCode:&v21];
    v12 = v11;
    if (v21 == 8193)
    {
      v13 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(v4 transactionID:"operationCode") andData:{v5, v11}];
      [(PTPDeviceUSBTransport *)self->_transport sendData:v13];
      goto LABEL_11;
    }
  }

  v14 = [PTPOperationResponsePacket alloc];
  v12 = [v14 initWithResponseCode:v21 transactionID:v5];
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v12];
  __ICOSLogCreate();
  v13 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v15 = [&stru_100038B48 substringWithRange:{0, 18}];
    v13 = [v15 stringByAppendingString:@".."];
  }

  v16 = [NSString stringWithFormat:@"getObjectPropList - response:\n%@\n", v12];
  v17 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v13;
    v19 = v17;
    v20 = [(__CFString *)v13 UTF8String];
    *buf = 136446466;
    v23 = v20;
    v24 = 2114;
    v25 = v16;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

LABEL_11:
}

- (void)getObjectPropDesc:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionID];
  v11 = 8193;
  if (v5 <= self->_lastTransactionID)
  {
    v11 = 8196;
LABEL_6:
    v10 = [PTPOperationResponsePacket alloc];
    v8 = [v10 initWithResponseCode:v11 transactionID:v5];
    [(PTPDeviceUSBTransport *)self->_transport sendResponse:v8];
    goto LABEL_7;
  }

  v6 = [v4 parameter1];
  self->_lastTransactionID = v5;
  v7 = [(PTPVirtualCamera *)self->_virtualCamera objectPropDescForObjectPropertyCode:v6 responseCode:&v11];
  v8 = v7;
  if (v11 != 8193)
  {

    goto LABEL_6;
  }

  v9 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(v4 transactionID:"operationCode") andData:{v5, v7}];
  [(PTPDeviceUSBTransport *)self->_transport sendData:v9];

LABEL_7:
}

- (void)setUsingMacOS:(BOOL)a3
{
  self->_usingMacOS = a3;
  v3 = sub_10000C470();
  v5[0] = PLPTPHostCharacteristicsKeyMake;
  v5[1] = PLPTPHostCharacteristicsKeyOS;
  v6[0] = PLPTPHostCharacteristicMake_Apple;
  v6[1] = PLPTPHostCharacteristicOS_macOS;
  v5[2] = PLPTPHostCharacteristicsKeyTransport;
  v6[2] = PLPTPHostCharacteristicTransport_PTP;
  v4 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:3];
  [v3 setHostCharacteristics:v4];
}

- (void)setUsingLegacyOS:(BOOL)a3
{
  if (!self->_usingMacOS)
  {
    self->_usingLegacyOS = a3;
  }
}

- (void)setUsingMTP:(id)a3
{
  v4 = a3;
  sub_1000041E8(1);
  __ICOSLogCreate();
  v5 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v6 = [&stru_100038B48 substringWithRange:{0, 18}];
    v5 = [v6 stringByAppendingString:@".."];
  }

  v7 = [NSString stringWithFormat:@"MTP Split Packet Transfer\n"];
  v8 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v5;
    v10 = v8;
    *buf = 136446466;
    v19 = [(__CFString *)v5 UTF8String];
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  self->_usingMTP = [v4 parameter1] != 0;
  v11 = [PTPOperationResponsePacket alloc];
  v12 = [v4 transactionID];

  v13 = [v11 initWithResponseCode:8193 transactionID:v12];
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v13];
  v14 = sub_10000C470();
  v16[0] = PLPTPHostCharacteristicsKeyMake;
  v16[1] = PLPTPHostCharacteristicsKeyOS;
  v17[0] = PLPTPHostCharacteristicMake_Microsoft;
  v17[1] = PLPTPHostCharacteristicOS_Windows;
  v16[2] = PLPTPHostCharacteristicsKeyTransport;
  v17[2] = PLPTPHostCharacteristicTransport_MTP;
  v15 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
  [v14 setHostCharacteristics:v15];
}

- (void)setUsingWindows
{
  sub_1000041E8(1);
  self->_usingMTP = 1;
  v3 = sub_10000C470();
  v5[0] = PLPTPHostCharacteristicsKeyMake;
  v5[1] = PLPTPHostCharacteristicsKeyOS;
  v6[0] = PLPTPHostCharacteristicMake_Microsoft;
  v6[1] = PLPTPHostCharacteristicOS_Windows;
  v5[2] = PLPTPHostCharacteristicsKeyTransport;
  v6[2] = PLPTPHostCharacteristicTransport_MTP;
  v4 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:3];
  [v3 setHostCharacteristics:v4];
}

- (void)allowKeepAwake:(id)a3
{
  v4 = [a3 transactionID];
  if (self->_sessionID)
  {
    if (v4 <= self->_lastTransactionID)
    {
      v5 = 8196;
    }

    else
    {
      self->_allowKeepAwake = 1;
      v5 = 8193;
    }
  }

  else
  {
    v5 = 8195;
  }

  v6 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v5 transactionID:v4];
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v6];
  __ICOSLogCreate();
  v7 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v8 = [&stru_100038B48 substringWithRange:{0, 18}];
    v7 = [v8 stringByAppendingString:@".."];
  }

  v9 = [NSString stringWithFormat:@"allowKeepAwake - response:\n%@\n", v6];
  v10 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v7;
    v12 = v10;
    *buf = 136446466;
    v14 = [(__CFString *)v7 UTF8String];
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }
}

- (void)holdPowerAssertion
{
  if (self->_allowKeepAwake)
  {
    [(PTPResponder *)self releasePowerAssertion];
    powerAssertionReleaseDelay = self->_powerAssertionReleaseDelay;
    self->_cpPowerAssertion = CPPowerAssertionCreate();
  }
}

- (void)releasePowerAssertion
{
  cpPowerAssertion = self->_cpPowerAssertion;
  if (cpPowerAssertion)
  {
    CFRelease(cpPowerAssertion);
    self->_cpPowerAssertion = 0;
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end