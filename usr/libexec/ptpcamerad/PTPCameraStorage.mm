@interface PTPCameraStorage
- (BOOL)locked;
- (id)cameraFileWithObjectID:(unint64_t)d;
- (id)cameraFolderWithObjectID:(unint64_t)d;
- (id)cameraItemWithObjectID:(unint64_t)d;
- (id)indexedFiles;
- (id)indexedFolders;
- (id)prime;
- (unint64_t)enumerateContent:(id)content withOrder:(int64_t)order;
- (unint64_t)ptpObjectCount;
- (void)addCameraFileToIndex:(id)index;
- (void)addCameraFolderToIndex:(id)index;
- (void)dealloc;
- (void)refreshInfo;
- (void)removeCameraFileFromIndex:(unint64_t)index;
- (void)removeCameraFolderFromIndex:(unint64_t)index;
@end

@implementation PTPCameraStorage

- (void)dealloc
{
  __ICOSLogCreate();
  v3 = @"PTPStorage";
  if ([@"PTPStorage" length] >= 0x15)
  {
    v4 = [@"PTPStorage" substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [NSString stringWithFormat:@"%p | %16s - 0x%08X", self, "dealloc storeID", [(PTPCameraItem *)self storageID]];
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

  [(PTPCameraStorage *)self setObjectInfoArray:0];
  v9.receiver = self;
  v9.super_class = PTPCameraStorage;
  [(PTPCameraFolder *)&v9 dealloc];
}

- (BOOL)locked
{
  info = [(PTPCameraStorage *)self info];
  v3 = [info accessCapability] == 1;

  return v3;
}

- (void)refreshInfo
{
  path = [(PTPCameraItem *)self path];

  if (!path)
  {
    initiator = [(PTPCameraItem *)self initiator];
    v4 = [initiator storageInfo:{-[PTPCameraItem storageID](self, "storageID")}];
    [(PTPCameraStorage *)self setInfo:v4];
  }
}

- (id)prime
{
  path = [(PTPCameraItem *)self path];

  if (path)
  {
    v4 = 0;
    goto LABEL_34;
  }

  initiator = [(PTPCameraItem *)self initiator];
  deviceInfo = [initiator deviceInfo];
  if ([initiator deviceVendorID] != 1452)
  {
    operationsSupported = [deviceInfo operationsSupported];
    v14 = [NSNumber numberWithUnsignedShort:4131];
    if ([operationsSupported containsObject:v14])
    {
      standardVersion = [deviceInfo standardVersion];

      if (standardVersion >= 0x6E)
      {
        __ICOSLogCreate();
        v16 = @"[prime]";
        if ([@"[prime]" length] >= 0x15)
        {
          v17 = [@"[prime]" substringWithRange:{0, 18}];
          v16 = [v17 stringByAppendingString:@".."];
        }

        v18 = [NSString stringWithFormat:@"Device supports PTP1.1/MTP1.0 enumeration"];
        v19 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v16;
          v21 = v19;
          v41 = 136446466;
          uTF8String = [(__CFString *)v16 UTF8String];
          v43 = 2114;
          v44 = v18;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v41, 0x16u);
        }

        v22 = [initiator fileSystemManifestForStorage:-[PTPCameraItem storageID](self objectFormatCode:"storageID") association:{0, 0}];
        goto LABEL_33;
      }
    }

    else
    {
    }

    __ICOSLogCreate();
    v24 = @"[prime]";
    if ([@"[prime]" length] >= 0x15)
    {
      v25 = [@"[prime]" substringWithRange:{0, 18}];
      v24 = [v25 stringByAppendingString:@".."];
    }

    v26 = [NSString stringWithFormat:@"Device supports PTP1.0 enumeration"];
    v27 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v24;
      v29 = v27;
      v41 = 136446466;
      uTF8String = [(__CFString *)v24 UTF8String];
      v43 = 2114;
      v44 = v26;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v41, 0x16u);
    }

    v22 = [initiator objectHandlesInStorage:-[PTPCameraItem storageID](self objectFormatCode:"storageID") association:{0, 0}];
    goto LABEL_33;
  }

  if ([deviceInfo standardVersion] < 0x6E)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  operationsSupported2 = [deviceInfo operationsSupported];
  v9 = [NSNumber numberWithUnsignedShort:36879];
  v10 = [operationsSupported2 containsObject:v9];

  __ICOSLogCreate();
  v11 = [@"[prime]" length];
  if (v10)
  {
    if (v11 >= 0x15)
    {
      v12 = [@"[prime]" substringWithRange:{0, 18}];
      v30 = [v12 stringByAppendingString:@".."];
    }

    else
    {
      v30 = @"[prime]";
    }

    v31 = [NSString stringWithFormat:@"Device supports apple group enumeration, opting in for more responsive experience"];
    v32 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v30;
      v34 = v32;
      v41 = 136446466;
      uTF8String = [(__CFString *)v30 UTF8String];
      v43 = 2114;
      v44 = v31;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v41, 0x16u);
    }

    v22 = [initiator objectInfoDatasetForNextObjectGroupInStorage:{-[PTPCameraItem storageID](self, "storageID")}];
  }

  else
  {
    if (v11 >= 0x15)
    {
      v23 = [@"[prime]" substringWithRange:{0, 18}];
      v35 = [v23 stringByAppendingString:@".."];
    }

    else
    {
      v35 = @"[prime]";
    }

    v36 = [NSString stringWithFormat:@"Device supports apple full enumeration, large libraries may experience delays"];
    v37 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v35;
      v39 = v37;
      v41 = 136446466;
      uTF8String = [(__CFString *)v35 UTF8String];
      v43 = 2114;
      v44 = v36;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v41, 0x16u);
    }

    v22 = [initiator objectInfoDatasetForObjectsInStorage:-[PTPCameraItem storageID](self objectFormatCode:"storageID") association:0 contentType:{0, v7}];
  }

LABEL_33:
  v4 = v22;

LABEL_34:

  return v4;
}

- (unint64_t)enumerateContent:(id)content withOrder:(int64_t)order
{
  contentCopy = content;
  initiator = [(PTPCameraItem *)self initiator];
  transport = [initiator transport];
  connected = [transport connected];

  if (connected)
  {
    deviceVendorID = [initiator deviceVendorID];
    v8 = +[NSMutableArray array];
    v9 = +[NSMutableArray array];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_100013954;
    v60[3] = &unk_10002CA80;
    v10 = initiator;
    v61 = v10;
    v65 = deviceVendorID == 1452;
    v11 = v9;
    v62 = v11;
    orderCopy = order;
    v12 = v8;
    v63 = v12;
    [contentCopy enumerateObjectsUsingBlock:v60];
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = sub_100013B28;
    v58 = sub_100013B38;
    v59 = +[NSMutableArray array];
    __ICOSLogCreate();
    if ([@"Folders" length] < 0x15)
    {
      v14 = @"Folders";
    }

    else
    {
      v13 = [@"Folders" substringWithRange:{0, 18}];
      v14 = [v13 stringByAppendingString:@".."];
    }

    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[%lu]", [v11 count]);
    v17 = _gICOSLog;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v14;
      uTF8String = [(__CFString *)v14 UTF8String];
      *buf = 136446466;
      *&buf[4] = uTF8String;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v71 = 0;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100013B40;
    v49[3] = &unk_10002CAA8;
    v20 = v10;
    v50 = v20;
    selfCopy = self;
    v52 = &v54;
    v53 = deviceVendorID == 1452;
    [v11 enumerateObjectsUsingBlock:v49];
    __ICOSLogCreate();
    if ([@"Files" length] < 0x15)
    {
      v22 = @"Files";
    }

    else
    {
      v21 = [@"Files" substringWithRange:{0, 18}];
      v22 = [v21 stringByAppendingString:@".."];
    }

    v23 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[%lu]", [v12 count]);
    v24 = _gICOSLog;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v22;
      uTF8String2 = [(__CFString *)v22 UTF8String];
      *v66 = 136446466;
      v67 = uTF8String2;
      v68 = 2114;
      v69 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", v66, 0x16u);
    }

    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100013E60;
    v44[3] = &unk_10002CAA8;
    v45 = v20;
    selfCopy2 = self;
    v47 = buf;
    v48 = deviceVendorID == 1452;
    [v12 enumerateObjectsUsingBlock:v44];
    if (deviceVendorID == 1452)
    {
      initiator2 = [(PTPCameraItem *)self initiator];
      delegate = [initiator2 delegate];

      initiator3 = [(PTPCameraItem *)self initiator];
      allConnections = [delegate allConnections];
      [initiator3 sendContentsNotificationWithOrder:order toConnections:allConnections];
    }

    if (*(*&buf[8] + 24) || [v55[5] count])
    {
      __ICOSLogCreate();
      if ([@"enumerate" length] < 0x15)
      {
        v32 = @"enumerate";
      }

      else
      {
        v31 = [@"enumerate" substringWithRange:{0, 18}];
        v32 = [v31 stringByAppendingString:@".."];
      }

      v33 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Removing %lu invalid objects from total count", [v55[5] count] + *(*&buf[8] + 24));
      v34 = _gICOSLog;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = v32;
        sub_10001D2B8([(__CFString *)v32 UTF8String], v33, v66, v34);
      }
    }

    v36 = [v12 count];
    v37 = [v11 count];
    v38 = *(*&buf[8] + 24);
    v39 = [v55[5] count];

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v54, 8);

    v15 = &v36[v37] - &v39[v38];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)ptpObjectCount
{
  indexedMediaSet = [(PTPCameraStorage *)self indexedMediaSet];
  mediaItemCount = [indexedMediaSet mediaItemCount];

  return mediaItemCount;
}

- (void)addCameraFileToIndex:(id)index
{
  indexCopy = index;
  indexedMediaSet = [(PTPCameraStorage *)self indexedMediaSet];
  [indexedMediaSet addMediaItemToIndex:indexCopy];
}

- (void)addCameraFolderToIndex:(id)index
{
  indexCopy = index;
  indexedMediaSet = [(PTPCameraStorage *)self indexedMediaSet];
  [indexedMediaSet addMediaItemToIndex:indexCopy];
}

- (id)cameraFileWithObjectID:(unint64_t)d
{
  indexedMediaSet = [(PTPCameraStorage *)self indexedMediaSet];
  v5 = [indexedMediaSet mediaItemWithHandle:d inTypes:&off_10002F548];

  return v5;
}

- (id)cameraFolderWithObjectID:(unint64_t)d
{
  indexedMediaSet = [(PTPCameraStorage *)self indexedMediaSet];
  v5 = [indexedMediaSet mediaItemWithHandle:d inTypes:&off_10002F560];

  return v5;
}

- (id)cameraItemWithObjectID:(unint64_t)d
{
  indexedMediaSet = [(PTPCameraStorage *)self indexedMediaSet];
  v5 = [indexedMediaSet mediaItemWithHandle:d inTypes:0];

  return v5;
}

- (void)removeCameraFileFromIndex:(unint64_t)index
{
  indexedMediaSet = [(PTPCameraStorage *)self indexedMediaSet];
  [indexedMediaSet removeMediaItemWithHandleFromIndex:index];
}

- (void)removeCameraFolderFromIndex:(unint64_t)index
{
  indexedMediaSet = [(PTPCameraStorage *)self indexedMediaSet];
  [indexedMediaSet removeMediaItemWithHandleFromIndex:index];
}

- (id)indexedFiles
{
  indexedMediaSet = [(PTPCameraStorage *)self indexedMediaSet];
  v3 = [indexedMediaSet arrayForType:@"file"];

  return v3;
}

- (id)indexedFolders
{
  indexedMediaSet = [(PTPCameraStorage *)self indexedMediaSet];
  v3 = [indexedMediaSet arrayForType:@"folder"];

  return v3;
}

@end