@interface PTPCameraStorage
- (BOOL)locked;
- (id)cameraFileWithObjectID:(unint64_t)a3;
- (id)cameraFolderWithObjectID:(unint64_t)a3;
- (id)cameraItemWithObjectID:(unint64_t)a3;
- (id)indexedFiles;
- (id)indexedFolders;
- (id)prime;
- (unint64_t)enumerateContent:(id)a3 withOrder:(int64_t)a4;
- (unint64_t)ptpObjectCount;
- (void)addCameraFileToIndex:(id)a3;
- (void)addCameraFolderToIndex:(id)a3;
- (void)dealloc;
- (void)refreshInfo;
- (void)removeCameraFileFromIndex:(unint64_t)a3;
- (void)removeCameraFolderFromIndex:(unint64_t)a3;
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
    v11 = [(__CFString *)v3 UTF8String];
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
  v2 = [(PTPCameraStorage *)self info];
  v3 = [v2 accessCapability] == 1;

  return v3;
}

- (void)refreshInfo
{
  v3 = [(PTPCameraItem *)self path];

  if (!v3)
  {
    v5 = [(PTPCameraItem *)self initiator];
    v4 = [v5 storageInfo:{-[PTPCameraItem storageID](self, "storageID")}];
    [(PTPCameraStorage *)self setInfo:v4];
  }
}

- (id)prime
{
  v3 = [(PTPCameraItem *)self path];

  if (v3)
  {
    v4 = 0;
    goto LABEL_34;
  }

  v5 = [(PTPCameraItem *)self initiator];
  v6 = [v5 deviceInfo];
  if ([v5 deviceVendorID] != 1452)
  {
    v13 = [v6 operationsSupported];
    v14 = [NSNumber numberWithUnsignedShort:4131];
    if ([v13 containsObject:v14])
    {
      v15 = [v6 standardVersion];

      if (v15 >= 0x6E)
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
          v42 = [(__CFString *)v16 UTF8String];
          v43 = 2114;
          v44 = v18;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v41, 0x16u);
        }

        v22 = [v5 fileSystemManifestForStorage:-[PTPCameraItem storageID](self objectFormatCode:"storageID") association:{0, 0}];
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
      v42 = [(__CFString *)v24 UTF8String];
      v43 = 2114;
      v44 = v26;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v41, 0x16u);
    }

    v22 = [v5 objectHandlesInStorage:-[PTPCameraItem storageID](self objectFormatCode:"storageID") association:{0, 0}];
    goto LABEL_33;
  }

  if ([v6 standardVersion] < 0x6E)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = [v6 operationsSupported];
  v9 = [NSNumber numberWithUnsignedShort:36879];
  v10 = [v8 containsObject:v9];

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
      v42 = [(__CFString *)v30 UTF8String];
      v43 = 2114;
      v44 = v31;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v41, 0x16u);
    }

    v22 = [v5 objectInfoDatasetForNextObjectGroupInStorage:{-[PTPCameraItem storageID](self, "storageID")}];
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
      v42 = [(__CFString *)v35 UTF8String];
      v43 = 2114;
      v44 = v36;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v41, 0x16u);
    }

    v22 = [v5 objectInfoDatasetForObjectsInStorage:-[PTPCameraItem storageID](self objectFormatCode:"storageID") association:0 contentType:{0, v7}];
  }

LABEL_33:
  v4 = v22;

LABEL_34:

  return v4;
}

- (unint64_t)enumerateContent:(id)a3 withOrder:(int64_t)a4
{
  v43 = a3;
  v5 = [(PTPCameraItem *)self initiator];
  v6 = [v5 transport];
  v7 = [v6 connected];

  if (v7)
  {
    v41 = [v5 deviceVendorID];
    v8 = +[NSMutableArray array];
    v9 = +[NSMutableArray array];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_100013954;
    v60[3] = &unk_10002CA80;
    v10 = v5;
    v61 = v10;
    v65 = v41 == 1452;
    v11 = v9;
    v62 = v11;
    v64 = a4;
    v12 = v8;
    v63 = v12;
    [v43 enumerateObjectsUsingBlock:v60];
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
      v19 = [(__CFString *)v14 UTF8String];
      *buf = 136446466;
      *&buf[4] = v19;
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
    v51 = self;
    v52 = &v54;
    v53 = v41 == 1452;
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
      v26 = [(__CFString *)v22 UTF8String];
      *v66 = 136446466;
      v67 = v26;
      v68 = 2114;
      v69 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", v66, 0x16u);
    }

    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100013E60;
    v44[3] = &unk_10002CAA8;
    v45 = v20;
    v46 = self;
    v47 = buf;
    v48 = v41 == 1452;
    [v12 enumerateObjectsUsingBlock:v44];
    if (v41 == 1452)
    {
      v27 = [(PTPCameraItem *)self initiator];
      v28 = [v27 delegate];

      v29 = [(PTPCameraItem *)self initiator];
      v30 = [v28 allConnections];
      [v29 sendContentsNotificationWithOrder:a4 toConnections:v30];
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
  v2 = [(PTPCameraStorage *)self indexedMediaSet];
  v3 = [v2 mediaItemCount];

  return v3;
}

- (void)addCameraFileToIndex:(id)a3
{
  v4 = a3;
  v5 = [(PTPCameraStorage *)self indexedMediaSet];
  [v5 addMediaItemToIndex:v4];
}

- (void)addCameraFolderToIndex:(id)a3
{
  v4 = a3;
  v5 = [(PTPCameraStorage *)self indexedMediaSet];
  [v5 addMediaItemToIndex:v4];
}

- (id)cameraFileWithObjectID:(unint64_t)a3
{
  v4 = [(PTPCameraStorage *)self indexedMediaSet];
  v5 = [v4 mediaItemWithHandle:a3 inTypes:&off_10002F548];

  return v5;
}

- (id)cameraFolderWithObjectID:(unint64_t)a3
{
  v4 = [(PTPCameraStorage *)self indexedMediaSet];
  v5 = [v4 mediaItemWithHandle:a3 inTypes:&off_10002F560];

  return v5;
}

- (id)cameraItemWithObjectID:(unint64_t)a3
{
  v4 = [(PTPCameraStorage *)self indexedMediaSet];
  v5 = [v4 mediaItemWithHandle:a3 inTypes:0];

  return v5;
}

- (void)removeCameraFileFromIndex:(unint64_t)a3
{
  v4 = [(PTPCameraStorage *)self indexedMediaSet];
  [v4 removeMediaItemWithHandleFromIndex:a3];
}

- (void)removeCameraFolderFromIndex:(unint64_t)a3
{
  v4 = [(PTPCameraStorage *)self indexedMediaSet];
  [v4 removeMediaItemWithHandleFromIndex:a3];
}

- (id)indexedFiles
{
  v2 = [(PTPCameraStorage *)self indexedMediaSet];
  v3 = [v2 arrayForType:@"file"];

  return v3;
}

- (id)indexedFolders
{
  v2 = [(PTPCameraStorage *)self indexedMediaSet];
  v3 = [v2 arrayForType:@"folder"];

  return v3;
}

@end