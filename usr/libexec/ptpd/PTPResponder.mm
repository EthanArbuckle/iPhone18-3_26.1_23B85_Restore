@interface PTPResponder
+ (void)catalogPath:(char *)path dirs:(int *)dirs media:(int *)media nonMedia:(int *)nonMedia;
+ (void)getFilesystemMediaCountForDirectories:(int *)directories media:(int *)media nonMedia:(int *)nonMedia;
- (BOOL)handleSetHostMediaCapabilities:(id)capabilities;
- (BOOL)handleSetHostSupportedFormats:(id)formats;
- (BOOL)handleSetHostSupportsGroups:(id)groups;
- (BOOL)start;
- (PTPResponder)initWithName:(id)name path:(id)path andTransportType:(unsigned __int16)type;
- (id)delegate;
- (id)handleRequest:(id)request;
- (void)allowKeepAwake:(id)awake;
- (void)closeSession:(id)session;
- (void)dealloc;
- (void)deleteObject:(id)object;
- (void)getDeviceInfo:(id)info;
- (void)getDevicePropDesc:(id)desc;
- (void)getDevicePropValue:(id)value;
- (void)getNumDownloadableObjects:(id)objects;
- (void)getNumObjects:(id)objects;
- (void)getObject:(id)object;
- (void)getObjectCompressedSize64:(id)size64;
- (void)getObjectHandles:(id)handles;
- (void)getObjectInfo:(id)info;
- (void)getObjectInfoForNextObjectGroupInStorage:(id)storage;
- (void)getObjectInfoForObjectsInStorage:(id)storage;
- (void)getObjectMetadata:(id)metadata;
- (void)getObjectPropDesc:(id)desc;
- (void)getObjectPropList:(id)list;
- (void)getObjectPropValue:(id)value;
- (void)getObjectPropsSupported:(id)supported;
- (void)getPartialObject64:(id)object64;
- (void)getPartialObject:(id)object;
- (void)getStorageIDs:(id)ds;
- (void)getStorageInfo:(id)info;
- (void)getThumb:(id)thumb;
- (void)getUserAssignedDeviceName:(id)name;
- (void)handleData:(id)data;
- (void)handleDeviceRemoval;
- (void)handleResetDevice:(id)device;
- (void)handleUnsupportedRequest:(id)request;
- (void)holdPowerAssertion;
- (void)openSession:(id)session;
- (void)releasePowerAssertion;
- (void)removeVirtualCamera;
- (void)reportGroupAddedInStorage:(id)storage;
- (void)reportObjectAdded:(id)added;
- (void)reportObjectDeleted:(id)deleted;
- (void)reportStorageAdded:(id)added;
- (void)reportStorageDeleted:(id)deleted;
- (void)reportUserAssignedNameChange;
- (void)runRunLoop;
- (void)sendEventDeviceUnlocked;
- (void)sendRestartSessionEvent;
- (void)sentData:(id)data responseCode:(id)code;
- (void)setUsingLegacyOS:(BOOL)s;
- (void)setUsingMTP:(id)p;
- (void)setUsingMacOS:(BOOL)s;
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
        uTF8String = [(__CFString *)v3 UTF8String];
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

- (PTPResponder)initWithName:(id)name path:(id)path andTransportType:(unsigned __int16)type
{
  typeCopy = type;
  nameCopy = name;
  pathCopy = path;
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
    v14 = [[NSString alloc] initWithString:nameCopy];
    name = v10->_name;
    v10->_name = v14;

    v16 = [[NSString alloc] initWithString:pathCopy];
    path = v10->_path;
    v10->_path = v16;

    v10->_allowKeepAwake = 0;
    v10->_powerAssertionReleaseDelay = 1200.0;
    if (typeCopy == 1)
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
    uTF8String = [(__CFString *)v22 UTF8String];
    *buf = 136446466;
    v32 = uTF8String;
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

- (void)openSession:(id)session
{
  sessionCopy = session;
  transactionID = [sessionCopy transactionID];
  parameter1 = [sessionCopy parameter1];

  if (transactionID || !parameter1)
  {
    v7 = [[PTPOperationResponsePacket alloc] initWithResponseCode:8221 transactionID:transactionID];
  }

  else
  {
    if (self->_sessionID)
    {
      v7 = [[PTPOperationResponsePacket alloc] initWithResponseCode:8222 transactionID:0 parameter1:self->_sessionID];
    }

    else
    {
      self->_sessionID = parameter1;
      v7 = [[PTPOperationResponsePacket alloc] initWithResponseCode:8193 transactionID:0];
      [(PTPVirtualCamera *)self->_virtualCamera openSession];
    }

    self->_lastTransactionID = 0;
  }

  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v7];
  if (![(PTPResponder *)self usingPeerMediaCapabilities])
  {
    usingMTP = [(PTPResponder *)self usingMTP];

    if (!usingMTP)
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

- (void)closeSession:(id)session
{
  transactionID = [session transactionID];
  v5 = transactionID;
  if (!self->_sessionID)
  {
    goto LABEL_4;
  }

  if (transactionID > self->_lastTransactionID)
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

- (void)getDeviceInfo:(id)info
{
  infoCopy = info;
  transactionID = [infoCopy transactionID];
  v6 = transactionID;
  if (self->_sessionID && transactionID <= self->_lastTransactionID)
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
      uTF8String = [(__CFString *)v13 UTF8String];
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [(PTPResponder *)self resetResponderSession];
    v12 = 8196;
    goto LABEL_14;
  }

  deviceInfoDataset = [(PTPVirtualCamera *)self->_virtualCamera deviceInfoDataset];
  if (deviceInfoDataset)
  {
    v8 = [PTPDataPacket alloc];
    operationCode = [infoCopy operationCode];
    content = [deviceInfoDataset content];
    v11 = [v8 initWithOperationCode:operationCode transactionID:v6 andData:content];

    [(PTPDeviceUSBTransport *)self->_transport sendData:v11];
  }

  if (self->_sessionID)
  {
    self->_lastTransactionID = v6;
  }

  if (!deviceInfoDataset)
  {
    v12 = 8198;
LABEL_14:
    v19 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v12 transactionID:v6];
    [(PTPDeviceUSBTransport *)self->_transport sendResponse:v19];
  }
}

- (void)getStorageIDs:(id)ds
{
  dsCopy = ds;
  transactionID = [dsCopy transactionID];
  v6 = transactionID;
  if (!self->_sessionID)
  {
    v10 = 8195;
LABEL_6:
    v11 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v10 transactionID:transactionID];
    [(PTPDeviceUSBTransport *)self->_transport sendResponse:v11];

    goto LABEL_7;
  }

  if (transactionID <= self->_lastTransactionID)
  {
    v10 = 8196;
    goto LABEL_6;
  }

  self->_lastTransactionID = transactionID;
  allStorageIDs = [(PTPVirtualCamera *)self->_virtualCamera allStorageIDs];
  v8 = [[NSMutableData alloc] initWithLength:{4 * objc_msgSend(allStorageIDs, "count") + 4}];
  [v8 mutableBytes];
  WriteArrayOfHandlesToBuffer();
  v9 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(dsCopy transactionID:"operationCode") andData:{v6, v8}];
  [(PTPDeviceUSBTransport *)self->_transport sendData:v9];

LABEL_7:
}

- (void)getStorageInfo:(id)info
{
  infoCopy = info;
  transactionID = [infoCopy transactionID];
  v5 = transactionID;
  if (self->_sessionID)
  {
    if (transactionID <= self->_lastTransactionID)
    {
      v12 = 8196;
    }

    else
    {
      self->_lastTransactionID = transactionID;
      v6 = -[PTPVirtualCamera storageInfoDatasetForStorageID:](self->_virtualCamera, "storageInfoDatasetForStorageID:", [infoCopy parameter1]);
      if (v6)
      {
        v7 = v6;
        v8 = [PTPDataPacket alloc];
        operationCode = [infoCopy operationCode];
        content = [v7 content];
        v11 = [v8 initWithOperationCode:operationCode transactionID:v5 andData:content];

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

- (void)getNumObjects:(id)objects
{
  objectsCopy = objects;
  transactionID = [objectsCopy transactionID];
  v6 = transactionID;
  if (!self->_sessionID)
  {
    v15 = [PTPOperationResponsePacket alloc];
    v16 = 8195;
LABEL_8:
    v14 = [v15 initWithResponseCode:v16 transactionID:v6];
    goto LABEL_9;
  }

  if (transactionID <= self->_lastTransactionID)
  {
    v15 = [PTPOperationResponsePacket alloc];
    v16 = 8196;
    goto LABEL_8;
  }

  parameter1 = [objectsCopy parameter1];
  parameter2 = [objectsCopy parameter2];
  parameter3 = [objectsCopy parameter3];
  v17 = 0;
  self->_lastTransactionID = v6;
  v10 = [(PTPVirtualCamera *)self->_virtualCamera objectHandlesInStorage:parameter1 forObjectFormatCode:parameter2 inAssociation:parameter3 responseCode:&v17];
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

+ (void)getFilesystemMediaCountForDirectories:(int *)directories media:(int *)media nonMedia:(int *)nonMedia
{
  v38 = 0;
  v37 = 0;
  [self catalogPath:"/var/mobile/Media/DCIM/" dirs:&v38 + 4 media:&v38 nonMedia:&v37];
  [self catalogPath:"/var/mobile/Media/PhotoData/CPLAssets/" dirs:&v38 + 4 media:&v38 nonMedia:&v37];
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
    uTF8String = [(__CFString *)v9 UTF8String];
    *buf = 136446466;
    v40 = uTF8String;
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
    uTF8String2 = [(__CFString *)v16 UTF8String];
    *buf = 136446466;
    v40 = uTF8String2;
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
    uTF8String3 = [(__CFString *)v23 UTF8String];
    *buf = 136446466;
    v40 = uTF8String3;
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
    uTF8String4 = [(__CFString *)v30 UTF8String];
    *buf = 136446466;
    v40 = uTF8String4;
    v41 = 2114;
    v42 = v32;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  if (directories)
  {
    *directories = HIDWORD(v38);
  }

  if (media)
  {
    *media = v38;
  }

  if (nonMedia)
  {
    *nonMedia = v37;
  }
}

- (void)getNumDownloadableObjects:(id)objects
{
  v18 = 0;
  HIDWORD(v17) = 0;
  objectsCopy = objects;
  [PTPResponder getFilesystemMediaCountForDirectories:&v18 + 4 media:&v18 nonMedia:&v17 + 4];
  [(PTPResponder *)self setUsingLegacyOS:1];
  transactionID = [objectsCopy transactionID];

  if (!self->_sessionID)
  {
    v14 = [PTPOperationResponsePacket alloc];
    v15 = 8195;
LABEL_6:
    v13 = [v14 initWithResponseCode:v15 transactionID:transactionID];
    goto LABEL_7;
  }

  if (transactionID <= self->_lastTransactionID)
  {
    v14 = [PTPOperationResponsePacket alloc];
    v15 = 8196;
    goto LABEL_6;
  }

  v6 = v18;
  v7 = HIDWORD(v18);
  ptpSecurityModel = [(PTPVirtualCamera *)self->_virtualCamera ptpSecurityModel];
  shouldRemovePlaceholderStorage = [ptpSecurityModel shouldRemovePlaceholderStorage];

  ptpSecurityModel2 = [(PTPVirtualCamera *)self->_virtualCamera ptpSecurityModel];
  hostIsTrusted = [ptpSecurityModel2 hostIsTrusted];

  self->_lastTransactionID = transactionID;
  v12 = [PTPOperationResponsePacket alloc];
  LODWORD(v17) = 0;
  v13 = [v12 initWithResponseCode:8193 transactionID:transactionID parameter1:v6 parameter2:v7 parameter3:shouldRemovePlaceholderStorage ^ 1 parameter4:hostIsTrusted parameter5:v17];
LABEL_7:
  v16 = v13;
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v13];
}

- (void)getObjectHandles:(id)handles
{
  handlesCopy = handles;
  transactionID = [handlesCopy transactionID];
  v6 = transactionID;
  v16 = 8195;
  if (!self->_sessionID)
  {
    goto LABEL_7;
  }

  if (transactionID <= self->_lastTransactionID)
  {
    v16 = 8196;
LABEL_7:
    v14 = [PTPOperationResponsePacket alloc];
    v11 = [v14 initWithResponseCode:v16 transactionID:v6];
    [(PTPDeviceUSBTransport *)self->_transport sendResponse:v11];
    goto LABEL_8;
  }

  parameter1 = [handlesCopy parameter1];
  parameter2 = [handlesCopy parameter2];
  parameter3 = [handlesCopy parameter3];
  self->_lastTransactionID = v6;
  v10 = [(PTPVirtualCamera *)self->_virtualCamera objectHandlesInStorage:parameter1 forObjectFormatCode:parameter2 inAssociation:parameter3 responseCode:&v16];
  v11 = v10;
  if (v16 != 8193)
  {

    goto LABEL_7;
  }

  v12 = [[NSMutableData alloc] initWithLength:{4 * objc_msgSend(v10, "count") + 4}];
  mutableBytes = [v12 mutableBytes];
  WriteArrayOfHandlesToBuffer();
  v13 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(handlesCopy transactionID:"operationCode" andData:{mutableBytes), v6, v12}];
  [(PTPDeviceUSBTransport *)self->_transport sendData:v13];

LABEL_8:
}

- (void)getObjectInfo:(id)info
{
  infoCopy = info;
  transactionID = [infoCopy transactionID];
  v5 = transactionID;
  if (self->_sessionID)
  {
    if (transactionID <= self->_lastTransactionID)
    {
      v12 = 8196;
    }

    else
    {
      self->_lastTransactionID = transactionID;
      v6 = -[PTPVirtualCamera objectInfoDatasetForObjectHandle:](self->_virtualCamera, "objectInfoDatasetForObjectHandle:", [infoCopy parameter1]);
      if (v6)
      {
        v7 = v6;
        v8 = [PTPDataPacket alloc];
        operationCode = [infoCopy operationCode];
        content = [v7 content];
        v11 = [v8 initWithOperationCode:operationCode transactionID:v5 andData:content];

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

- (void)getObject:(id)object
{
  objectCopy = object;
  transactionID = [objectCopy transactionID];
  v6 = transactionID;
  v22 = 8195;
  if (!self->_sessionID)
  {
    goto LABEL_15;
  }

  if (transactionID <= self->_lastTransactionID)
  {
    v22 = 8196;
LABEL_15:
    v20 = [PTPOperationResponsePacket alloc];
    v16 = [v20 initWithResponseCode:v22 transactionID:v6];
    [(PTPDeviceUSBTransport *)self->_transport sendResponse:v16];
    goto LABEL_16;
  }

  v21 = 0;
  self->_lastTransactionID = transactionID;
  v7 = -[PTPVirtualCamera objectInfoDatasetForObjectHandle:](self->_virtualCamera, "objectInfoDatasetForObjectHandle:", [objectCopy parameter1]);
  __ICOSLogCreate();
  v8 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v9 = [&stru_100038B48 substringWithRange:{0, 18}];
    v8 = [v9 stringByAppendingString:@".."];
  }

  filename = [v7 filename];
  v11 = [NSString stringWithFormat:@"--- >getObject: %@", filename];

  v12 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v8;
    v14 = v12;
    *buf = 136446466;
    uTF8String = [(__CFString *)v8 UTF8String];
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v15 = -[PTPVirtualCamera dataSourceForObjectHandle:responseCode:size:](self->_virtualCamera, "dataSourceForObjectHandle:responseCode:size:", [objectCopy parameter1], &v22, &v21);
  v16 = v15;
  if (v22 != 8193 || !v15)
  {
    v19 = 8199;
LABEL_14:
    v22 = v19;

    goto LABEL_15;
  }

  v17 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(objectCopy transactionID:"operationCode") andDataSource:{v6, v15}];
  if (!v17)
  {
    v19 = 8221;
    goto LABEL_14;
  }

  v18 = v17;
  [(PTPDeviceUSBTransport *)self->_transport sendData:v17];

LABEL_16:
}

- (void)getThumb:(id)thumb
{
  thumbCopy = thumb;
  transactionID = [thumbCopy transactionID];
  v6 = transactionID;
  v19 = 8195;
  if (!self->_sessionID)
  {
    goto LABEL_11;
  }

  if (transactionID <= self->_lastTransactionID)
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

  if ([thumbCopy numParameters] == 2)
  {
    parameter2 = [thumbCopy parameter2];
  }

  else
  {
    parameter2 = 0;
  }

  self->_lastTransactionID = v6;
  v8 = -[PTPVirtualCamera thumbnailForObjectHandle:maxPixelSize:responseCode:](self->_virtualCamera, "thumbnailForObjectHandle:maxPixelSize:responseCode:", [thumbCopy parameter1], parameter2, &v19);
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
  v15 = thumbCopy;
  v16 = v9;
  selfCopy = self;
  v10 = v9;
  dispatch_async(&_dispatch_main_q, block);

LABEL_12:
}

- (void)getObjectMetadata:(id)metadata
{
  metadataCopy = metadata;
  transactionID = [metadataCopy transactionID];
  v6 = transactionID;
  v18 = 8195;
  if (!self->_sessionID)
  {
    goto LABEL_8;
  }

  if (transactionID <= self->_lastTransactionID)
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

  self->_lastTransactionID = transactionID;
  v7 = -[PTPVirtualCamera embeddedMetadataForObjectHandle:responseCode:](self->_virtualCamera, "embeddedMetadataForObjectHandle:responseCode:", [metadataCopy parameter1], &v18);
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
  v14 = metadataCopy;
  v15 = v8;
  selfCopy = self;
  v9 = v8;
  dispatch_async(&_dispatch_main_q, block);

LABEL_9:
}

- (void)getPartialObject:(id)object
{
  objectCopy = object;
  transactionID = [objectCopy transactionID];
  v6 = transactionID;
  v14 = 8195;
  if (!self->_sessionID)
  {
    goto LABEL_15;
  }

  if (transactionID <= self->_lastTransactionID)
  {
    v14 = 8196;
LABEL_15:
    v12 = [PTPOperationResponsePacket alloc];
    v8 = [v12 initWithResponseCode:v14 transactionID:v6 parameter1:0];
    [(PTPDeviceUSBTransport *)self->_transport sendResponse:v8];
    goto LABEL_16;
  }

  v13 = 0;
  self->_lastTransactionID = transactionID;
  v7 = -[PTPVirtualCamera dataSourceForObjectHandle:responseCode:size:](self->_virtualCamera, "dataSourceForObjectHandle:responseCode:size:", [objectCopy parameter1], &v14, &v13);
  v8 = v7;
  if (v14 != 8193 || !v7)
  {
    v14 = 8199;
LABEL_14:

    goto LABEL_15;
  }

  v9 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(objectCopy transactionID:"operationCode") andDataSource:{v6, v7}];
  if ([objectCopy parameter3] == -1)
  {
    v11 = -[PTPVirtualCamera objectInfoDatasetForObjectHandle:](self->_virtualCamera, "objectInfoDatasetForObjectHandle:", [objectCopy parameter1]);
    v10 = [v9 setRange:{objc_msgSend(objectCopy, "parameter2"), objc_msgSend(v11, "objectCompressedSize64") - objc_msgSend(objectCopy, "parameter2")}];

    if (!v9)
    {
LABEL_13:
      v14 = 8221;

      goto LABEL_14;
    }
  }

  else
  {
    v10 = [v9 setRange:{objc_msgSend(objectCopy, "parameter2"), objc_msgSend(objectCopy, "parameter3")}];
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

- (void)getObjectInfoForObjectsInStorage:(id)storage
{
  storageCopy = storage;
  info = 0;
  mach_timebase_info(&info);
  _gPTPBenchmarkStartMachTime = 0;
  _gPTPBenchmarkStartMachTime = mach_absolute_time();
  transactionID = [storageCopy transactionID];
  v22 = 8195;
  parameter1 = [storageCopy parameter1];
  if (!self->_sessionID)
  {
    goto LABEL_6;
  }

  v7 = dword_1000401D0;
  sub_1000041E8(1);
  if (transactionID <= self->_lastTransactionID)
  {
    v22 = 8196;
LABEL_6:
    v11 = [PTPOperationResponsePacket alloc];
    v12 = [v11 initWithResponseCode:v22 transactionID:transactionID];
    [(PTPDeviceUSBTransport *)self->_transport sendResponse:v12];
    goto LABEL_22;
  }

  parameter2 = [storageCopy parameter2];
  parameter3 = [storageCopy parameter3];
  if ([storageCopy operationCode] == 36866)
  {
    v10 = 1;
  }

  else if ([storageCopy operationCode] == 36869)
  {
    v10 = 2;
  }

  else if ([storageCopy operationCode] == 4131)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  self->_lastTransactionID = transactionID;
  if (parameter1 == v7)
  {
    v22 = 8193;
    *buf = 0;
    v13 = [NSData dataWithBytes:buf length:4];
    goto LABEL_14;
  }

  v14 = [(PTPVirtualCamera *)self->_virtualCamera pathObjectInfoForObjectsInStorage:parameter1 forObjectFormatCode:parameter2 inAssociation:parameter3 withContentType:v10 responseCode:&v22];
  if (v14)
  {
    if (v22 == 8193)
    {
LABEL_20:
      v12 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(storageCopy transactionID:"operationCode") andFilepath:{transactionID, v14}];
      [v12 setUnlinkWhenDone:1];
      v13 = v14;
      goto LABEL_21;
    }

    v13 = 0;
    goto LABEL_28;
  }

  v13 = [(PTPVirtualCamera *)self->_virtualCamera objectInfoForObjectsInStorage:parameter1 forObjectFormatCode:parameter2 inAssociation:parameter3 withContentType:v10 responseCode:&v22];
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

  v12 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(storageCopy transactionID:"operationCode") andData:{transactionID, v13}];
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

  v17 = [NSString stringWithFormat:@"[PTPResponder getObjectInfoForObjectsInStorage] spent %5.2fms building assets for ptpd storageID: 0x%x", _gPTPLastBenchmarkElapsedMilliseconds, parameter1];
  v18 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v15;
    v20 = v18;
    uTF8String = [(__CFString *)v15 UTF8String];
    *buf = 136446466;
    v25 = uTF8String;
    v26 = 2114;
    v27 = v17;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }
}

- (void)getObjectCompressedSize64:(id)size64
{
  size64Copy = size64;
  transactionID = [size64Copy transactionID];
  v6 = objc_alloc_init(NSMutableData);
  if (!self->_sessionID)
  {
    goto LABEL_5;
  }

  if (transactionID <= self->_lastTransactionID)
  {
    v10 = 8196;
    goto LABEL_7;
  }

  self->_lastTransactionID = transactionID;
  v7 = -[PTPVirtualCamera objectInfoDatasetForObjectHandle:](self->_virtualCamera, "objectInfoDatasetForObjectHandle:", [size64Copy parameter1]);
  if (!v7)
  {
LABEL_5:
    v10 = 8195;
LABEL_7:
    v11 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v10 transactionID:transactionID];
    [(PTPDeviceUSBTransport *)self->_transport sendResponse:v11];

    goto LABEL_8;
  }

  v8 = v7;
  objectCompressedSize64 = [v7 objectCompressedSize64];
  [v6 appendBytes:&objectCompressedSize64 length:8];
  v9 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(size64Copy transactionID:"operationCode") andData:{transactionID, v6}];
  [(PTPDeviceUSBTransport *)self->_transport sendData:v9];

LABEL_8:
}

- (void)getPartialObject64:(id)object64
{
  object64Copy = object64;
  transactionID = [object64Copy transactionID];
  v6 = transactionID;
  v22 = 8195;
  if (self->_sessionID)
  {
    if (transactionID <= self->_lastTransactionID)
    {
      v22 = 8196;
    }

    else
    {
      v21 = 0;
      parameter3 = [object64Copy parameter3];
      v8 = [object64Copy parameter2] | (parameter3 << 32);
      parameter5 = [object64Copy parameter5];
      v10 = [object64Copy parameter4] | (parameter5 << 32);
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
        uTF8String = [(__CFString *)v11 UTF8String];
        v25 = 2114;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      self->_lastTransactionID = v6;
      v17 = -[PTPVirtualCamera dataSourceForObjectHandle:responseCode:size:](self->_virtualCamera, "dataSourceForObjectHandle:responseCode:size:", [object64Copy parameter1], &v22, &v21);
      [v17 setToggleHeaderOffset:1];
      if (v22 == 8193 && v17)
      {
        v18 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(object64Copy transactionID:"operationCode") andDataSource:{v6, v17}];
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

- (void)getObjectInfoForNextObjectGroupInStorage:(id)storage
{
  storageCopy = storage;
  info = 0;
  mach_timebase_info(&info);
  _gPTPBenchmarkStartMachTime = 0;
  _gPTPBenchmarkStartMachTime = mach_absolute_time();
  transactionID = [storageCopy transactionID];
  v14 = 8195;
  parameter1 = [storageCopy parameter1];
  if (self->_sessionID)
  {
    v7 = parameter1;
    v8 = dword_1000401D0;
    sub_1000041E8(1);
    if (transactionID <= self->_lastTransactionID)
    {
      v14 = 8196;
    }

    else
    {
      self->_lastTransactionID = transactionID;
      if (v7 == v8)
      {
        v14 = 8193;
        v13 = 0;
        v9 = [NSData dataWithBytes:&v13 length:8];
LABEL_8:
        v12 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(storageCopy transactionID:"operationCode") andData:{transactionID, v9}];
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
  v9 = [v10 initWithResponseCode:v14 transactionID:transactionID];
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v9];
LABEL_9:

  _gPTPLastBenchmarkElapsedMilliseconds = (((mach_absolute_time() - _gPTPBenchmarkStartMachTime) * info.numer) / info.denom) / 1000000.0;
}

- (void)getUserAssignedDeviceName:(id)name
{
  nameCopy = name;
  transactionID = [nameCopy transactionID];
  v6 = transactionID;
  if (!self->_sessionID)
  {
    v12 = 8195;
LABEL_9:
    v13 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v12 transactionID:v6];
    [(PTPDeviceUSBTransport *)self->_transport sendResponse:v13];

    goto LABEL_10;
  }

  if (transactionID <= self->_lastTransactionID)
  {
    v12 = 8196;
    goto LABEL_9;
  }

  self->_lastTransactionID = transactionID;
  userAssignedName = [(PTPVirtualCamera *)self->_virtualCamera userAssignedName];
  v8 = [userAssignedName length];
  if (!v8 || (v9 = [[NSMutableData alloc] initWithLength:2 * v8 + 3]) == 0)
  {

    v12 = 8194;
    goto LABEL_9;
  }

  v10 = v9;
  [v9 mutableBytes];
  WriteUnicodeStringWithLengthByteToBuffer();
  v11 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(nameCopy transactionID:"operationCode") andData:{v6, v10}];
  [(PTPDeviceUSBTransport *)self->_transport sendData:v11];

LABEL_10:
}

- (void)deleteObject:(id)object
{
  objectCopy = object;
  transactionID = [objectCopy transactionID];
  v6 = transactionID;
  v11 = 8195;
  if (self->_sessionID)
  {
    if (transactionID <= self->_lastTransactionID)
    {
      v8 = 8196;
    }

    else
    {
      parameter1 = [objectCopy parameter1];
      self->_lastTransactionID = v6;
      if (parameter1 != -1)
      {
        [(PTPVirtualCamera *)self->_virtualCamera deleteObjectWithObjectHandle:parameter1 responseCode:&v11];
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

+ (void)catalogPath:(char *)path dirs:(int *)dirs media:(int *)media nonMedia:(int *)nonMedia
{
  v11 = opendir(path);
  if (v11)
  {
    v12 = v11;
    for (i = readdir(v11); i; i = readdir(v12))
    {
      if (i->d_type == 4)
      {
        if (i->d_name[0] != 46 || i->d_name[1] && (i->d_name[1] != 46 || i->d_name[2]))
        {
          ++*dirs;
          snprintf(__str, 0x400uLL, "%s/%s", path, i->d_name);
          [self catalogPath:__str dirs:dirs media:media nonMedia:nonMedia];
        }
      }

      else
      {
        v14 = strrchr(i->d_name, 46);
        if (v14 && ((v15 = v14, !strcmp(v14, ".AAE")) || !strcmp(v15, ".DBG")))
        {
          ++*nonMedia;
        }

        else
        {
          ++*media;
        }
      }
    }

    closedir(v12);
  }
}

- (BOOL)handleSetHostMediaCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  [(PTPResponder *)self setUsingMacOS:1];
  transactionID = [capabilitiesCopy transactionID];

  if (self->_sessionID && transactionID <= self->_lastTransactionID)
  {
    v7 = 8196;
    goto LABEL_7;
  }

  readBulkData = [(PTPDeviceUSBTransport *)self->_transport readBulkData];
  if (self->_sessionID)
  {
    self->_lastTransactionID = transactionID;
    if (readBulkData)
    {
LABEL_5:
      v7 = 8194;
LABEL_7:
      v8 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v7 transactionID:transactionID];
      [(PTPDeviceUSBTransport *)self->_transport sendResponse:v8];

      return 0;
    }
  }

  else if (readBulkData)
  {
    goto LABEL_5;
  }

  return 1;
}

- (BOOL)handleSetHostSupportsGroups:(id)groups
{
  groupsCopy = groups;
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
    uTF8String = [(__CFString *)v5 UTF8String];
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v15, 0x16u);
  }

  transactionID = [groupsCopy transactionID];
  if (self->_sessionID && transactionID <= self->_lastTransactionID)
  {
    v12 = 8196;
  }

  else
  {
    [(PTPVirtualCamera *)self->_virtualCamera setHostSupportsGroups:1];
    if (self->_sessionID)
    {
      self->_lastTransactionID = transactionID;
    }

    v12 = 8193;
  }

  v13 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v12 transactionID:transactionID];
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v13];

  return 0;
}

- (BOOL)handleSetHostSupportedFormats:(id)formats
{
  formatsCopy = formats;
  [(PTPResponder *)self setUsingWindows];
  transactionID = [formatsCopy transactionID];

  if (self->_sessionID && transactionID <= self->_lastTransactionID)
  {
    v7 = 8196;
    goto LABEL_7;
  }

  readBulkData = [(PTPDeviceUSBTransport *)self->_transport readBulkData];
  if (self->_sessionID)
  {
    self->_lastTransactionID = transactionID;
    if (readBulkData)
    {
LABEL_5:
      v7 = 8194;
LABEL_7:
      v8 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v7 transactionID:transactionID];
      [(PTPDeviceUSBTransport *)self->_transport sendResponse:v8];

      return 0;
    }
  }

  else if (readBulkData)
  {
    goto LABEL_5;
  }

  return 1;
}

- (void)handleUnsupportedRequest:(id)request
{
  requestCopy = request;
  __ICOSLogCreate();
  v5 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v6 = [&stru_100038B48 substringWithRange:{0, 18}];
    v5 = [v6 stringByAppendingString:@".."];
  }

  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[%x] -> Unsupported PTP Command Received", [requestCopy operationCode]);
  v8 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v5;
    v10 = v8;
    *buf = 136446466;
    uTF8String = [(__CFString *)v5 UTF8String];
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v11 = [[PTPOperationResponsePacket alloc] initWithResponseCode:8197 transactionID:{objc_msgSend(requestCopy, "transactionID")}];
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v11];
}

- (id)handleRequest:(id)request
{
  requestCopy = request;
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[0x%x]", [requestCopy operationCode]);
  __ICOSLogCreate();
  v6 = v5;
  v7 = v6;
  if ([v6 length] >= 0x15)
  {
    v8 = [v6 substringWithRange:{0, 18}];
    v7 = [v8 stringByAppendingString:@".."];
  }

  [requestCopy operationCode];
  v9 = stringForOperationCode();
  v10 = [NSString stringWithFormat:@"<op> %@", v9];

  v11 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v7;
    v13 = v11;
    *buf = 136446466;
    uTF8String = [v7 UTF8String];
    v29 = 2114;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  operationCode = [requestCopy operationCode];
  if (operationCode <= 36864)
  {
    switch(operationCode)
    {
      case 4097:
        [(PTPResponder *)self getDeviceInfo:requestCopy];
        break;
      case 4098:
        [(PTPResponder *)self openSession:requestCopy];
        break;
      case 4099:
        [(PTPResponder *)self closeSession:requestCopy];
        if ([(PTPDeviceUSBTransport *)self->_transport type]== 3)
        {
          [(PTPResponder *)self performSelectorOnMainThread:"stop" withObject:0 waitUntilDone:0];
          [(PTPResponder *)self performSelectorOnMainThread:"stopRunLoop" withObject:0 waitUntilDone:0];
        }

        break;
      case 4100:
        [(PTPResponder *)self getStorageIDs:requestCopy];
        break;
      case 4101:
        [(PTPResponder *)self getStorageInfo:requestCopy];
        break;
      case 4102:
        [(PTPResponder *)self getNumObjects:requestCopy];
        break;
      case 4103:
        [(PTPResponder *)self getObjectHandles:requestCopy];
        break;
      case 4104:
        [(PTPResponder *)self getObjectInfo:requestCopy];
        break;
      case 4105:
        [(PTPResponder *)self getObject:requestCopy];
        break;
      case 4106:
LABEL_18:
        photoLibraryMediaQueryQueue = self->_photoLibraryMediaQueryQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001CA90;
        block[3] = &unk_100038830;
        block[4] = self;
        v26 = requestCopy;
        dispatch_async(photoLibraryMediaQueryQueue, block);
        v16 = v26;
LABEL_44:

        break;
      case 4107:
        [(PTPResponder *)self deleteObject:requestCopy];
        break;
      case 4112:
        [(PTPResponder *)self handleResetDevice:requestCopy];
        break;
      case 4116:
        [(PTPResponder *)self getDevicePropDesc:requestCopy];
        break;
      case 4117:
        [(PTPResponder *)self getDevicePropValue:requestCopy];
        break;
      case 4118:
        v17 = [[PTPOperationResponsePacket alloc] initWithResponseCode:8193 transactionID:{objc_msgSend(requestCopy, "transactionID")}];
        [(PTPDeviceUSBTransport *)self->_transport sendResponse:v17];

        break;
      case 4123:
        [(PTPResponder *)self getPartialObject:requestCopy];
        break;
      case 4131:
LABEL_14:
        [(PTPResponder *)self getObjectInfoForObjectsInStorage:requestCopy];
        break;
      default:
        goto LABEL_48;
    }

    goto LABEL_49;
  }

  if (operationCode > 38912)
  {
    if (operationCode > 38914)
    {
      if (operationCode == 38915)
      {
        [(PTPResponder *)self getObjectPropValue:requestCopy];
      }

      else if (operationCode == 38917)
      {
        [(PTPResponder *)self getObjectPropList:requestCopy];
      }

      else
      {
LABEL_48:
        [(PTPResponder *)self handleUnsupportedRequest:requestCopy];
      }
    }

    else if (operationCode == 38913)
    {
      [(PTPResponder *)self getObjectPropsSupported:requestCopy];
    }

    else
    {
      [(PTPResponder *)self getObjectPropDesc:requestCopy];
    }

LABEL_49:
    v19 = 0;
    goto LABEL_50;
  }

  switch(operationCode)
  {
    case 36865:
      [(PTPResponder *)self getNumDownloadableObjects:requestCopy];
      goto LABEL_49;
    case 36866:
    case 36869:
      goto LABEL_14;
    case 36867:
      [(PTPResponder *)self getUserAssignedDeviceName:requestCopy];
      goto LABEL_49;
    case 36868:
      [(PTPResponder *)self allowKeepAwake:requestCopy];
      goto LABEL_49;
    case 36870:
      [(PTPResponder *)self getObjectCompressedSize64:requestCopy];
      goto LABEL_49;
    case 36871:
      [(PTPResponder *)self getPartialObject64:requestCopy];
      goto LABEL_49;
    case 36872:
      [(PTPResponder *)self setUsingMTP:requestCopy];
      goto LABEL_49;
    case 36873:
      v20 = self->_photoLibraryMediaQueryQueue;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10001CA9C;
      v23[3] = &unk_100038830;
      v23[4] = self;
      v24 = requestCopy;
      dispatch_async(v20, v23);
      v16 = v24;
      goto LABEL_44;
    case 36875:
      v18 = [(PTPResponder *)self handleSetHostMediaCapabilities:requestCopy];
      break;
    case 36876:
      goto LABEL_18;
    case 36878:
      v18 = [(PTPResponder *)self handleSetHostSupportedFormats:requestCopy];
      break;
    case 36879:
      [(PTPResponder *)self getObjectInfoForNextObjectGroupInStorage:requestCopy];
      goto LABEL_49;
    case 36880:
      [(PTPResponder *)self handleSetHostSupportsGroups:requestCopy];
      goto LABEL_49;
    default:
      goto LABEL_48;
  }

  v19 = v18;
LABEL_50:
  v21 = [NSNumber numberWithBool:v19];

  return v21;
}

- (void)handleData:(id)data
{
  dataCopy = data;
  operationCode = [dataCopy operationCode];
  if (operationCode == 36878)
  {
    virtualCamera = self->_virtualCamera;
    data = [dataCopy data];
    [(PTPVirtualCamera *)virtualCamera assignHostSupportedFormats:data];

    v10 = [PTPOperationResponsePacket alloc];
    lastTransactionID = self->_lastTransactionID;
    v12 = 8193;
  }

  else
  {
    if (operationCode == 36875)
    {
      [(PTPResponder *)self setUsingPeerMediaCapabilities:1];
      v5 = self->_virtualCamera;
      data2 = [dataCopy data];
      [(PTPVirtualCamera *)v5 assignHostMediaCapabilities:data2];

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

- (void)handleResetDevice:(id)device
{
  transactionID = [device transactionID];
  __ICOSLogCreate();
  v5 = @"Device Reset";
  if ([@"Device Reset" length] >= 0x15)
  {
    v6 = [@"Device Reset" substringWithRange:{0, 18}];
    v5 = [v6 stringByAppendingString:@".."];
  }

  v7 = [NSString stringWithFormat:@"responder[session: %d, : transaction: %d], request[transaction: %d]", self->_sessionID, self->_lastTransactionID, transactionID];
  v8 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v5;
    v10 = v8;
    *buf = 136446466;
    uTF8String = [(__CFString *)v5 UTF8String];
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  [(PTPResponder *)self resetResponderSession];
  v11 = [[PTPOperationResponsePacket alloc] initWithResponseCode:8193 transactionID:transactionID];
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
    uTF8String = [(__CFString *)v3 UTF8String];
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v9, 0x16u);
  }

  [(PTPResponder *)self performSelectorOnMainThread:"stop" withObject:0 waitUntilDone:0];
  [(PTPResponder *)self performSelectorOnMainThread:"stopRunLoop" withObject:0 waitUntilDone:0];
}

- (void)sentData:(id)data responseCode:(id)code
{
  dataCopy = data;
  codeCopy = code;
  operationCode = [dataCopy operationCode];
  transactionID = [dataCopy transactionID];
  v9 = [PTPOperationResponsePacket alloc];
  unsignedShortValue = [codeCopy unsignedShortValue];

  if (operationCode == 4123)
  {
    v11 = [v9 initWithResponseCode:unsignedShortValue transactionID:transactionID parameter1:{objc_msgSend(dataCopy, "bytesTransferred")}];
  }

  else
  {
    v11 = [v9 initWithResponseCode:unsignedShortValue transactionID:transactionID];
  }

  v12 = v11;
  [(PTPDeviceUSBTransport *)self->_transport sendResponse:v11];
}

- (void)reportObjectAdded:(id)added
{
  addedCopy = added;
  v5 = [PTPEventPacket alloc];
  unsignedIntValue = [addedCopy unsignedIntValue];

  v7 = [v5 initWithEventCode:16386 transactionID:0xFFFFFFFFLL parameter1:unsignedIntValue];
  [(PTPResponder *)self sendEvent:v7];
}

- (void)reportObjectDeleted:(id)deleted
{
  deletedCopy = deleted;
  v5 = [PTPEventPacket alloc];
  unsignedIntValue = [deletedCopy unsignedIntValue];

  v7 = [v5 initWithEventCode:16387 transactionID:0xFFFFFFFFLL parameter1:unsignedIntValue];
  [(PTPResponder *)self sendEvent:v7];
}

- (void)reportStorageAdded:(id)added
{
  addedCopy = added;
  v5 = [PTPEventPacket alloc];
  unsignedIntValue = [addedCopy unsignedIntValue];

  v7 = [v5 initWithEventCode:16388 transactionID:0xFFFFFFFFLL parameter1:unsignedIntValue];
  [(PTPResponder *)self sendEvent:v7];
}

- (void)reportStorageDeleted:(id)deleted
{
  deletedCopy = deleted;
  v5 = [PTPEventPacket alloc];
  unsignedIntValue = [deletedCopy unsignedIntValue];

  v7 = [v5 initWithEventCode:16389 transactionID:0xFFFFFFFFLL parameter1:unsignedIntValue];
  [(PTPResponder *)self sendEvent:v7];
}

- (void)reportGroupAddedInStorage:(id)storage
{
  storageCopy = storage;
  v5 = [PTPEventPacket alloc];
  unsignedIntValue = [storageCopy unsignedIntValue];

  v7 = [v5 initWithEventCode:49156 transactionID:0xFFFFFFFFLL parameter1:unsignedIntValue];
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
    uTF8String = [(__CFString *)v3 UTF8String];
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

  a221245 = [NSString stringWithFormat:@"Built: %s %s\n", aOct222025, a221245];
  v12 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v9;
    v14 = v12;
    uTF8String2 = [(__CFString *)v9 UTF8String];
    *buf = 136446466;
    uTF8String = uTF8String2;
    v19 = 2114;
    v20 = a221245;
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

- (void)getDevicePropDesc:(id)desc
{
  descCopy = desc;
  transactionID = [descCopy transactionID];
  v6 = transactionID;
  if (self->_sessionID)
  {
    if (transactionID <= self->_lastTransactionID)
    {
      v13 = 8196;
    }

    else
    {
      self->_lastTransactionID = transactionID;
      v7 = -[PTPVirtualCamera devicePropDescDatasetForProperty:](self->_virtualCamera, "devicePropDescDatasetForProperty:", [descCopy parameter1]);
      if (v7)
      {
        v8 = v7;
        v9 = [PTPDataPacket alloc];
        operationCode = [descCopy operationCode];
        content = [v8 content];
        v12 = [v9 initWithOperationCode:operationCode transactionID:v6 andData:content];

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
    uTF8String = [(__CFString *)v15 UTF8String];
    v23 = 2114;
    v24 = v17;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

LABEL_13:
}

- (void)getDevicePropValue:(id)value
{
  valueCopy = value;
  transactionID = [valueCopy transactionID];
  v5 = transactionID;
  if (self->_sessionID)
  {
    if (transactionID <= self->_lastTransactionID)
    {
      v9 = 8196;
    }

    else
    {
      self->_lastTransactionID = transactionID;
      v6 = -[PTPVirtualCamera devicePropValueForProperty:](self->_virtualCamera, "devicePropValueForProperty:", [valueCopy parameter1]);
      if (v6)
      {
        v7 = v6;
        v8 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(valueCopy transactionID:"operationCode") andData:{v5, v6}];
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

- (void)getObjectPropsSupported:(id)supported
{
  supportedCopy = supported;
  transactionID = [supportedCopy transactionID];
  v18 = 8193;
  if (transactionID <= self->_lastTransactionID)
  {
    v18 = 8196;
  }

  else
  {
    parameter1 = [supportedCopy parameter1];
    self->_lastTransactionID = transactionID;
    v7 = [(PTPVirtualCamera *)self->_virtualCamera objectPropertiesSupportedForObjectFormatCode:parameter1 responseCode:&v18];
    v8 = v7;
    if (v18 == 8193)
    {
      v9 = [[NSMutableData alloc] initWithLength:{2 * objc_msgSend(v7, "count") + 4}];
      *buf = [(__CFString *)v9 mutableBytes];
      WriteArrayOfUnsignedShortsToBuffer();
      v10 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(supportedCopy transactionID:"operationCode") andData:{transactionID, v9}];
      [(PTPDeviceUSBTransport *)self->_transport sendData:v10];

      goto LABEL_11;
    }
  }

  v11 = [PTPOperationResponsePacket alloc];
  v8 = [v11 initWithResponseCode:v18 transactionID:transactionID];
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
    uTF8String = [(__CFString *)v9 UTF8String];
    *buf = 136446466;
    *&buf[4] = uTF8String;
    v20 = 2114;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

LABEL_11:
}

- (void)getObjectPropValue:(id)value
{
  valueCopy = value;
  transactionID = [valueCopy transactionID];
  v18 = 8193;
  if (transactionID <= self->_lastTransactionID)
  {
    v18 = 8196;
  }

  else
  {
    parameter1 = [valueCopy parameter1];
    parameter2 = [valueCopy parameter2];
    self->_lastTransactionID = transactionID;
    v8 = [(PTPVirtualCamera *)self->_virtualCamera objectPropValueForHandle:parameter1 withObjectPropertyCode:parameter2 responseCode:&v18];
    v9 = v8;
    if (v18 == 8193)
    {
      v10 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(valueCopy transactionID:"operationCode") andData:{transactionID, v8}];
      [(PTPDeviceUSBTransport *)self->_transport sendData:v10];
      goto LABEL_11;
    }
  }

  v11 = [PTPOperationResponsePacket alloc];
  v9 = [v11 initWithResponseCode:v18 transactionID:transactionID];
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
    uTF8String = [(__CFString *)v10 UTF8String];
    *buf = 136446466;
    v20 = uTF8String;
    v21 = 2114;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

LABEL_11:
}

- (void)getObjectPropList:(id)list
{
  listCopy = list;
  transactionID = [listCopy transactionID];
  v21 = 8193;
  if (transactionID <= self->_lastTransactionID)
  {
    v21 = 8196;
  }

  else
  {
    parameter1 = [listCopy parameter1];
    parameter2 = [listCopy parameter2];
    parameter3 = [listCopy parameter3];
    parameter4 = [listCopy parameter4];
    parameter5 = [listCopy parameter5];
    self->_lastTransactionID = transactionID;
    v11 = [(PTPVirtualCamera *)self->_virtualCamera objectPropListForHandle:parameter1 withObjectFormatCode:parameter2 andPropertyCode:parameter3 andPropertyGroup:parameter4 andDepth:parameter5 responseCode:&v21];
    v12 = v11;
    if (v21 == 8193)
    {
      v13 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(listCopy transactionID:"operationCode") andData:{transactionID, v11}];
      [(PTPDeviceUSBTransport *)self->_transport sendData:v13];
      goto LABEL_11;
    }
  }

  v14 = [PTPOperationResponsePacket alloc];
  v12 = [v14 initWithResponseCode:v21 transactionID:transactionID];
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
    uTF8String = [(__CFString *)v13 UTF8String];
    *buf = 136446466;
    v23 = uTF8String;
    v24 = 2114;
    v25 = v16;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

LABEL_11:
}

- (void)getObjectPropDesc:(id)desc
{
  descCopy = desc;
  transactionID = [descCopy transactionID];
  v11 = 8193;
  if (transactionID <= self->_lastTransactionID)
  {
    v11 = 8196;
LABEL_6:
    v10 = [PTPOperationResponsePacket alloc];
    v8 = [v10 initWithResponseCode:v11 transactionID:transactionID];
    [(PTPDeviceUSBTransport *)self->_transport sendResponse:v8];
    goto LABEL_7;
  }

  parameter1 = [descCopy parameter1];
  self->_lastTransactionID = transactionID;
  v7 = [(PTPVirtualCamera *)self->_virtualCamera objectPropDescForObjectPropertyCode:parameter1 responseCode:&v11];
  v8 = v7;
  if (v11 != 8193)
  {

    goto LABEL_6;
  }

  v9 = [[PTPDataPacket alloc] initWithOperationCode:objc_msgSend(descCopy transactionID:"operationCode") andData:{transactionID, v7}];
  [(PTPDeviceUSBTransport *)self->_transport sendData:v9];

LABEL_7:
}

- (void)setUsingMacOS:(BOOL)s
{
  self->_usingMacOS = s;
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

- (void)setUsingLegacyOS:(BOOL)s
{
  if (!self->_usingMacOS)
  {
    self->_usingLegacyOS = s;
  }
}

- (void)setUsingMTP:(id)p
{
  pCopy = p;
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
    uTF8String = [(__CFString *)v5 UTF8String];
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  self->_usingMTP = [pCopy parameter1] != 0;
  v11 = [PTPOperationResponsePacket alloc];
  transactionID = [pCopy transactionID];

  v13 = [v11 initWithResponseCode:8193 transactionID:transactionID];
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

- (void)allowKeepAwake:(id)awake
{
  transactionID = [awake transactionID];
  if (self->_sessionID)
  {
    if (transactionID <= self->_lastTransactionID)
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

  v6 = [[PTPOperationResponsePacket alloc] initWithResponseCode:v5 transactionID:transactionID];
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
    uTF8String = [(__CFString *)v7 UTF8String];
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