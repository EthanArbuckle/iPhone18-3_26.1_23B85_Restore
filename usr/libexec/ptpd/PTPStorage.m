@interface PTPStorage
- (id)addAssets:(id)a3 createdObjects:(id)a4;
- (id)cameraFileWithObjectID:(unint64_t)a3;
- (id)cameraFolderWithObjectID:(unint64_t)a3;
- (id)createDedupedAssetDirectoryWithBaseName:(id)a3;
- (id)deleteAssets:(id)a3;
- (id)dequeueGroup;
- (id)directoryForAsset:(id)a3;
- (id)directoryWithBaseName:(id)a3 andDedupCount:(unsigned int)a4;
- (id)parent;
- (id)virtualDirectoryName:(id)a3;
- (timespec)virtualDirectoryDate:(id)a3;
- (unsigned)addGroup:(id)a3;
- (void)addCameraFileToIndex:(id)a3;
- (void)addCameraFolderToIndex:(id)a3;
- (void)addContent;
- (void)customUpdateToStoreInfoDataset;
- (void)dealloc;
- (void)removeCameraFileFromIndex:(unint64_t)a3;
- (void)removeCameraFolderFromIndex:(unint64_t)a3;
- (void)startGroupNotifications;
@end

@implementation PTPStorage

- (id)createDedupedAssetDirectoryWithBaseName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = *&self->_assetGroupIndex;
    if (!v5)
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = *&self->_assetGroupIndex;
      *&self->_assetGroupIndex = v6;

      v8 = +[NSCalendar currentCalendar];
      v9 = +[NSDate date];
      v10 = [v8 components:28 fromDate:v9];

      if (v10)
      {
        self->_currentMonth = [v10 year];
        *(&self->super._objectHandle + 1) = [v10 month];
      }

      v5 = *&self->_assetGroupIndex;
    }

    v11 = [v5 objectForKeyedSubscript:v4];
    v12 = [v11 intValue];

    v13 = [NSNumber numberWithUnsignedInt:v12 + 1];
    [*&self->_assetGroupIndex setObject:v13 forKeyedSubscript:v4];

    v14 = [(PTPStorage *)self directoryWithBaseName:v4 andDedupCount:v12 + 1];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)directoryWithBaseName:(id)a3 andDedupCount:(unsigned int)a4
{
  v5 = a3;
  if (a4)
  {
    if (a4 > 702)
    {
      v6 = 1;
    }

    else
    {
      v6 = a4;
    }

    if (v6 < 1)
    {
      v9 = &stru_100038B48;
    }

    else
    {
      v7 = &stru_100038B48;
      do
      {
        v8 = v6 - 1;
        v6 = (v6 - 1) / 0x1Au;
        v9 = [NSString stringWithFormat:@"%@%c", v7, v8 % 0x1A + 97];

        v7 = v9;
      }

      while ((v8 - v8 % 0x1A) > 25);
    }

    if ([(__CFString *)v9 length]== 1)
    {
      v10 = [NSString stringWithFormat:@"_%@", v9];

      v9 = v10;
    }
  }

  else
  {
    v9 = @"__";
  }

  v11 = [v5 stringByReplacingCharactersInRange:6 withString:{2, v9}];

  return v11;
}

- (id)directoryForAsset:(id)a3
{
  v4 = a3;
  v5 = [(PTPStorage *)self dcimFolder];
  if (qword_1000403B8 == 1 && [v4 conversionGroup] == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 conversionGroup];
  }

  v7 = [v4 filename];
  v8 = [NSString stringWithFormat:@"%@.%d", v7, v6];

  v9 = [v4 captureDateString];
  v10 = [(PTPStorage *)self virtualDirectoryName:v9];

  v11 = [*&self->_assetGroupIndex objectForKeyedSubscript:v10];
  if ([v11 intValue] < 1)
  {
LABEL_10:
    v15 = 0;
  }

  else
  {
    LODWORD(v12) = 0;
    while (1)
    {
      v12 = (v12 + 1);
      v13 = [(PTPStorage *)self directoryWithBaseName:v10 andDedupCount:v12];
      v14 = [v5 folderMatchingName:v13];
      v15 = v14;
      if (v14)
      {
        if (([v14 fileExists:v8] & 1) == 0)
        {
          break;
        }
      }

      if (v12 >= [v11 intValue])
      {
        goto LABEL_10;
      }
    }
  }

  return v15;
}

- (id)virtualDirectoryName:(id)a3
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v5 = a3;
  v6 = [a3 UTF8String];
  if (!v6 || (v7 = v6, strlen(v6) < 0xF) || (sscanf(v7, "%04d%02d%02dT%02d%02d%02d", &v14 + 4, &v14, &v13 + 4, &v13, &v12 + 4, &v12), currentMonth = HIDWORD(v14), !HIDWORD(v14)) || (v9 = v14, !v14))
  {
    v9 = *(&self->super._objectHandle + 1);
    currentMonth = self->_currentMonth;
    LODWORD(v14) = *(&self->super._objectHandle + 1);
    HIDWORD(v14) = currentMonth;
  }

  v10 = [NSString stringWithFormat:@"%04d%02d__", currentMonth, v9];

  return v10;
}

- (timespec)virtualDirectoryDate:(id)a3
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v16 = 0;
  v5 = a3;
  v6 = [a3 UTF8String];
  if (!v6 || (v7 = v6, strlen(v6) < 0xF) || (sscanf(v7, "%04d%02d%02dT%02d%02d%02d", &v19 + 4, &v19, &v18 + 4, &v18, &v17, &v16), !HIDWORD(v19)) || !v19)
  {
    currentMonth = self->_currentMonth;
    LODWORD(v19) = *(&self->super._objectHandle + 1);
    HIDWORD(v19) = currentMonth;
  }

  v9 = +[NSCalendar currentCalendar];
  v10 = objc_alloc_init(NSDateComponents);
  [v10 setYear:SHIDWORD(v19)];
  [v10 setMonth:v19];
  v11 = [v9 dateFromComponents:v10];
  [v11 timeIntervalSince1970];
  v13 = v12;

  v14 = v13;
  v15 = 0;
  result.tv_nsec = v15;
  result.tv_sec = v14;
  return result;
}

- (void)customUpdateToStoreInfoDataset
{
  v3 = MGCopyAnswer();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:kMGQDiskUsageAmountDataAvailable];
    v6 = [v5 longLongValue];

    __ICOSLogCreate();
    v7 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v8 = [&stru_100038B48 substringWithRange:{0, 18}];
      v7 = [v8 stringByAppendingString:@".."];
    }

    v9 = [NSString stringWithFormat:@"Available Storage: %.2f GB", vcvtd_n_f64_u64(v6, 0x1EuLL)];
    v10 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v7;
      v12 = v10;
      *buf = 136446466;
      v23 = [(__CFString *)v7 UTF8String];
      v24 = 2114;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [*(&self->_duplicateAssetIdentifiers + 4) setFreeSpaceInBytes:v6];
    [*(&self->_duplicateAssetIdentifiers + 4) setFreeSpaceInImages:v6 / 0x16E360];
    v13 = [v4 objectForKey:kMGQDiskUsageTotalDiskCapacity];
    v14 = [v13 longLongValue];

    __ICOSLogCreate();
    v15 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v16 = [&stru_100038B48 substringWithRange:{0, 18}];
      v15 = [v16 stringByAppendingString:@".."];
    }

    v17 = [NSString stringWithFormat:@"Storage  Capacity: %.2f GB", vcvtd_n_f64_u64(v14, 0x1EuLL)];
    v18 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v15;
      v20 = v18;
      v21 = [(__CFString *)v15 UTF8String];
      *buf = 136446466;
      v23 = v21;
      v24 = 2114;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [*(&self->_duplicateAssetIdentifiers + 4) setMaxCapacity:v14];
  }
}

- (void)addContent
{
  v3 = [(PTPStorage *)self dcimFolder];
  if (v3)
  {
    v4 = sub_10000C470();
    v5 = [(PTPStorage *)self storageID];
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = 0;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v18[3] = 0;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v17[3] = 0;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v16[3] = 0;
    __ICOSLogCreate();
    if ([&stru_100038B48 length] < 0x15)
    {
      v7 = &stru_100038B48;
    }

    else
    {
      v6 = [&stru_100038B48 substringWithRange:{0, 18}];
      v7 = [v6 stringByAppendingString:@".."];
    }

    v8 = [NSString stringWithFormat:@"[PTPFolder addContent] PTPStorageID: 0x%x \n", v5];
    v9 = _gICOSLog;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v7;
      v11 = [(__CFString *)v7 UTF8String];
      *buf = 136446466;
      *&buf[4] = v11;
      *&buf[12] = 2114;
      *&buf[14] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    dispatch_async(&_dispatch_main_q, &stru_100038930);
    info = 0;
    mach_timebase_info(&info);
    _gPTPBenchmarkStartMachTime = 0;
    _gPTPBenchmarkStartMachTime = mach_absolute_time();
    if (v4)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v22 = sub_100016D34;
      v23 = sub_100016D44;
      v24 = self;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100016D4C;
      v14[3] = &unk_100038980;
      v14[4] = v24;
      v14[5] = buf;
      v14[6] = v19;
      v14[7] = v18;
      v14[8] = v17;
      v14[9] = v16;
      [v4 ptpEnumerateAllAssetsUsingBlock:v14];
      _Block_object_dispose(buf, 8);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100016F50;
    block[3] = &unk_1000389A8;
    block[6] = v18;
    block[7] = v17;
    block[8] = v16;
    block[9] = info;
    v13 = v5;
    block[4] = self;
    block[5] = v19;
    dispatch_async(&_dispatch_main_q, block);

    _Block_object_dispose(v16, 8);
    _Block_object_dispose(v17, 8);
    _Block_object_dispose(v18, 8);
    _Block_object_dispose(v19, 8);
  }
}

- (id)addAssets:(id)a3 createdObjects:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PTPStorage *)self dcimFolder];
  v9 = +[NSMutableArray array];
  v10 = +[NSMutableDictionary dictionary];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if (v7)
  {
    v11 = +[NSMutableArray array];
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 0;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_100016D34;
  v27[4] = sub_100016D44;
  v28 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001799C;
  v18[3] = &unk_1000389D0;
  v22 = v27;
  v18[4] = self;
  v19 = v8;
  v26 = v7 != 0;
  v12 = v11;
  v20 = v12;
  v23 = &v29;
  v24 = &v37;
  v13 = v9;
  v21 = v13;
  v25 = &v33;
  [v6 enumerateObjectsUsingBlock:v18];
  [(PTPStorage *)self addGroup:v13];
  if (v7)
  {
    [v7 setObject:v13 forKey:@"addedFiles"];
    [v7 setObject:v12 forKey:@"addedFolders"];
  }

  v14 = [NSNumber numberWithUnsignedLongLong:v38[3]];
  [v10 setObject:v14 forKey:@"prunedCount"];

  v15 = [NSNumber numberWithUnsignedLongLong:v34[3]];
  [v10 setObject:v15 forKey:@"assetCount"];

  v16 = [NSNumber numberWithUnsignedLongLong:v30[3]];
  [v10 setObject:v16 forKey:@"folderCount"];

  _Block_object_dispose(v27, 8);
LABEL_8:
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  return v10;
}

- (id)deleteAssets:(id)a3
{
  v4 = a3;
  v5 = [(PTPStorage *)self dcimFolder];
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = objc_alloc_init(NSMutableArray);
  v8 = objc_alloc_init(NSMutableArray);
  if (v5)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100017DD8;
    v10[3] = &unk_1000389F8;
    v11 = v5;
    v12 = v7;
    [v4 enumerateObjectsUsingBlock:v10];
  }

  if (v7)
  {
    [v6 setObject:v7 forKey:@"removedFiles"];
  }

  if (v8)
  {
    [v6 setObject:v8 forKey:@"removedFolders"];
  }

  return v6;
}

- (void)dealloc
{
  objc_storeWeak((&self->_indexedMediaSet + 4), 0);
  v3 = *(&self->_duplicateAssetIdentifiers + 4);
  *(&self->_duplicateAssetIdentifiers + 4) = 0;

  v4 = *&self->_assetGroupIndex;
  *&self->_assetGroupIndex = 0;

  v5 = *(&self->_assetGroups + 4);
  *(&self->_assetGroups + 4) = 0;

  v6 = *(&self->_parent + 4);
  *(&self->_parent + 4) = 0;

  self->_storageID = 0;
  v7.receiver = self;
  v7.super_class = PTPStorage;
  [(PTPStorage *)&v7 dealloc];
}

- (void)addCameraFileToIndex:(id)a3
{
  v4 = a3;
  v5 = [(PTPStorage *)self indexedMediaSet];
  [v5 addMediaItemToIndex:v4];
}

- (void)addCameraFolderToIndex:(id)a3
{
  v4 = a3;
  v5 = [(PTPStorage *)self indexedMediaSet];
  [v5 addMediaItemToIndex:v4];

  v6 = [v4 objectHandle];
  v7 = [NSNumber numberWithUnsignedInt:v6];
  v9 = v7;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [(PTPStorage *)self addGroup:v8];
}

- (id)cameraFileWithObjectID:(unint64_t)a3
{
  v4 = [(PTPStorage *)self indexedMediaSet];
  v5 = [v4 mediaItemWithHandle:a3 inTypes:&off_10003BF60];

  return v5;
}

- (id)cameraFolderWithObjectID:(unint64_t)a3
{
  v4 = [(PTPStorage *)self indexedMediaSet];
  v5 = [v4 mediaItemWithHandle:a3 inTypes:&off_10003BF78];

  return v5;
}

- (void)removeCameraFileFromIndex:(unint64_t)a3
{
  v4 = [(PTPStorage *)self indexedMediaSet];
  [v4 removeMediaItemWithHandleFromIndex:a3];
}

- (void)removeCameraFolderFromIndex:(unint64_t)a3
{
  v4 = [(PTPStorage *)self indexedMediaSet];
  [v4 removeMediaItemWithHandleFromIndex:a3];
}

- (unsigned)addGroup:(id)a3
{
  if (a3)
  {
    [*(&self->_parent + 4) addObject:?];
  }

  [(PTPStorage *)self startGroupNotifications];
  return [*(&self->_parent + 4) count];
}

- (id)dequeueGroup
{
  v3 = +[NSMutableArray array];
  v4 = [*(&self->_parent + 4) count];
  if (v4 > self->_storageID)
  {
    v5 = v4;
    do
    {
      v6 = [*(&self->_parent + 4) objectAtIndex:?];
      if (v6)
      {
        [v3 addObjectsFromArray:v6];
      }

      v7 = [v3 count];

      if (v7 > 0x2710)
      {
        break;
      }

      v8 = self->_storageID + 1;
      self->_storageID = v8;
    }

    while (v5 > v8);
  }

  return v3;
}

- (void)startGroupNotifications
{
  v3 = [(PTPStorage *)self groupNotificationTimerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018480;
  block[3] = &unk_100038770;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)parent
{
  WeakRetained = objc_loadWeakRetained((&self->_indexedMediaSet + 4));

  return WeakRetained;
}

@end