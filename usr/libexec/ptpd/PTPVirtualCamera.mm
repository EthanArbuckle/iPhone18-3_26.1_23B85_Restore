@interface PTPVirtualCamera
- (BOOL)hostIsLegacyOS;
- (BOOL)hostIsMacOS;
- (BOOL)hostIsWindows;
- (BOOL)visibleStorage:(id)a3;
- (BOOL)willOverrideCapabilities;
- (NSString)userAssignedName;
- (PTPVirtualCamera)initWithName:(id)a3 andPath:(id)a4;
- (id)allStorages;
- (id)delegate;
- (id)devicePropDescDatasetForProperty:(unsigned __int16)a3;
- (id)devicePropValueForProperty:(unsigned __int16)a3;
- (id)objectForObjectHandle:(id)a3;
- (id)objectPropDescForObjectPropertyCode:(unsigned __int16)a3 responseCode:(unsigned __int16 *)a4;
- (id)objectPropertiesSupportedForObjectFormatCode:(unsigned __int16)a3 responseCode:(unsigned __int16 *)a4;
- (id)overrideCapabilities;
- (id)photoStorageAvailable;
- (id)storageWithID:(unsigned int)a3;
- (int64_t)transferBehaviorUserPreference;
- (unsigned)numDownloadableObjects;
- (void)addStorage:(id)a3;
- (void)addedPhotoKeys:(id)a3 deletedPhotoKeys:(id)a4 changedPhotoKeys:(id)a5 changePendingPhotoKeys:(id)a6;
- (void)assignHostMediaCapabilities:(id)a3;
- (void)assignHostSupportedFormats:(id)a3;
- (void)cleanupStorageAfterTimeout:(double)a3 cleanup:(id)a4;
- (void)closeSession;
- (void)dealloc;
- (void)generatePTPEventsForAddedObjectHandles:(id)a3;
- (void)generatePTPEventsForDeletedObjectHandles:(id)a3;
- (void)handleInternalSettingsChanged;
- (void)initializeMTPProperties;
- (void)installSecurity;
- (void)openSession;
- (void)preparePhotoStorage;
- (void)processAddedFiles:(id)a3;
- (void)processDeletedFiles:(id)a3;
- (void)provokeSecurityCheck;
- (void)removePlaceholderStorage;
- (void)removeSecurity;
- (void)removeStorages;
- (void)resetPhotoStorage;
- (void)sendEventDeviceUnlocked;
- (void)setHostSupportsGroups:(BOOL)a3;
- (void)setupStorageAfterTimeout:(id)a3;
- (void)startObservers;
- (void)stopObservers;
- (void)updateDeviceInformation;
- (void)updateUserAssignedName;
- (void)vendPhotoStorage;
@end

@implementation PTPVirtualCamera

- (PTPVirtualCamera)initWithName:(id)a3 andPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v61.receiver = self;
  v61.super_class = PTPVirtualCamera;
  v9 = [(PTPVirtualCamera *)&v61 init];
  v10 = v9;
  if (v9)
  {
    dword_1000403A4 = 0;
    dword_1000403A8 = 0;
    dword_1000403AC = 0;
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_path, a4);
    v11 = objc_alloc_init(PTPDeviceInfoDataset);
    deviceInfoDataset = v10->_deviceInfoDataset;
    v10->_deviceInfoDataset = v11;

    v13 = [[NSMutableDictionary alloc] initWithCapacity:0];
    storages = v10->_storages;
    v10->_storages = v13;

    byte_100040398 = 0;
    photoStorage = v10->_photoStorage;
    v10->_photoStorage = 0;

    ptpSecurityModel = v10->_ptpSecurityModel;
    v10->_ptpSecurityModel = 0;

    v17 = objc_alloc_init(NSMutableArray);
    hostMediaSupportedFormats = v10->_hostMediaSupportedFormats;
    v10->_hostMediaSupportedFormats = v17;

    v19 = dispatch_queue_create("PTP Enumeration Queue", &_dispatch_queue_attr_concurrent);
    storageEnumerationQ = v10->_storageEnumerationQ;
    v10->_storageEnumerationQ = v19;

    v21 = [[NSDictionary alloc] initWithContentsOfFile:@"/System/Library/ApplePTP/PTPDeviceInfoDataset.plist"];
    v22 = v21;
    if (v21)
    {
      v23 = v10->_deviceInfoDataset;
      v24 = [v21 objectForKey:@"StandardVersion"];
      -[PTPDeviceInfoDataset setStandardVersion:](v23, "setStandardVersion:", [v24 unsignedShortValue]);

      v25 = v10->_deviceInfoDataset;
      v26 = [v22 objectForKey:@"VendorExtensionID"];
      -[PTPDeviceInfoDataset setVendorExtensionID:](v25, "setVendorExtensionID:", [v26 unsignedIntValue]);

      v27 = v10->_deviceInfoDataset;
      v28 = [v22 objectForKey:@"VendorExtensionVersion"];
      -[PTPDeviceInfoDataset setVendorExtensionVersion:](v27, "setVendorExtensionVersion:", [v28 unsignedShortValue]);

      v29 = v10->_deviceInfoDataset;
      v30 = [v22 objectForKey:@"VendorExtensionDesc"];
      [(PTPDeviceInfoDataset *)v29 setVendorExtensionDescription:v30];

      v31 = v10->_deviceInfoDataset;
      v32 = [v22 objectForKey:@"FunctionalMode"];
      -[PTPDeviceInfoDataset setFunctionalMode:](v31, "setFunctionalMode:", [v32 unsignedShortValue]);

      v33 = v10->_deviceInfoDataset;
      v34 = [v22 objectForKey:@"OperationsSupported"];
      [(PTPDeviceInfoDataset *)v33 setOperationsSupported:v34];

      v35 = v10->_deviceInfoDataset;
      v36 = [v22 objectForKey:@"EventsSupported"];
      [(PTPDeviceInfoDataset *)v35 setEventsSupported:v36];

      v37 = v10->_deviceInfoDataset;
      v38 = [v22 objectForKey:@"DevicePropertiesSupported"];
      [(PTPDeviceInfoDataset *)v37 setDevicePropertiesSupported:v38];

      v39 = v10->_deviceInfoDataset;
      v40 = [v22 objectForKey:@"CaptureFormats"];
      [(PTPDeviceInfoDataset *)v39 setCaptureFormats:v40];

      v41 = v10->_deviceInfoDataset;
      v42 = [v22 objectForKey:@"ImageFormats"];
      [(PTPDeviceInfoDataset *)v41 setImageFormats:v42];

      v43 = v10->_deviceInfoDataset;
      v44 = [v22 objectForKey:@"Manufacturer"];
      [(PTPDeviceInfoDataset *)v43 setManufacturer:v44];

      v45 = v10->_deviceInfoDataset;
      v46 = [v22 objectForKey:@"Model"];
      [(PTPDeviceInfoDataset *)v45 setModel:v46];

      v47 = v10->_deviceInfoDataset;
      v48 = [v22 objectForKey:@"DeviceVersion"];
      [(PTPDeviceInfoDataset *)v47 setDeviceVersion:v48];

      v49 = v10->_deviceInfoDataset;
      v50 = [v22 objectForKey:@"SerialNumber"];
      [(PTPDeviceInfoDataset *)v49 setSerialNumber:v50];
    }

    [(PTPVirtualCamera *)v10 updateUserAssignedName];
    [(PTPVirtualCamera *)v10 updateDeviceInformation];
    v10->_notificationCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v51 = sub_10000C470();
    v52 = [v51 cplStorageState] != 0;
    v53 = [v51 cplStorageState];
    v54 = MGCopyAnswer();
    v55 = [NSString stringWithFormat:@"ICPE^%d&CPLS^%lu", v52, v53];
    if (v54)
    {
      v56 = [NSString stringWithFormat:@"%@&ASN^%@", v55, v54];

      v55 = v56;
    }

    [(PTPDeviceInfoDataset *)v10->_deviceInfoDataset setVendorExtensionDescription:v55];
    [(PTPVirtualCamera *)v10 initializeMTPProperties];
    qword_1000403B8 = [(PTPVirtualCamera *)v10 transferBehaviorUserPreference];
    v57 = [PTPStorage alloc];
    v58 = [(PTPStorage *)v57 initWithParent:v10 andOptionalID:dword_1000401D0 forSessionID:0];
    placeholderStorage = v10->_placeholderStorage;
    v10->_placeholderStorage = v58;

    [v51 setDelegate:v10];
    [(PTPVirtualCamera *)v10 startObservers];
  }

  return v10;
}

- (void)updateUserAssignedName
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    userAssignedName = self->_userAssignedName;
    self->_userAssignedName = v3;

    v5 = NSSelectorFromString(@"reportUserAssignedNameChange");
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained performSelector:v5];
  }
}

- (void)updateDeviceInformation
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    v4 = v3;
    v5 = [[NSString alloc] initWithFormat:@"Apple %@", v3];
    name = self->_name;
    self->_name = v5;

    [(PTPDeviceInfoDataset *)self->_deviceInfoDataset setModel:self->_name];
  }

  v7 = MGCopyAnswer();
  if (v7)
  {
    v8 = v7;
    deviceInfoDataset = self->_deviceInfoDataset;
    v10 = [NSString stringWithFormat:@"%@", v7];
    [(PTPDeviceInfoDataset *)deviceInfoDataset setSerialNumber:v10];

    CFRelease(v8);
  }

  v11 = MGCopyAnswer();
  if (v11)
  {
    v12 = v11;
    v13 = self->_deviceInfoDataset;
    v14 = [NSString stringWithFormat:@"%@", v11];
    [(PTPDeviceInfoDataset *)v13 setDeviceVersion:v14];

    CFRelease(v12);
  }

  v15 = MGCopyAnswer();
  if (v15)
  {
    productType = self->_productType;
    self->_productType = v15;

    _objc_release_x1();
  }
}

- (void)dealloc
{
  [(PTPVirtualCamera *)self assignHostMediaCapabilities:0];
  v3 = sub_10000C470();
  v4 = [v3 delegate];

  __ICOSLogCreate();
  v5 = [@"am.delegate" length];
  if (v4 == self)
  {
    if (v5 < 0x15)
    {
      v9 = @"am.delegate";
    }

    else
    {
      v8 = [@"am.delegate" substringWithRange:{0, 18}];
      v9 = [v8 stringByAppendingString:@".."];
    }

    v14 = [NSString stringWithFormat:@"Setting am.delegate to nil"];
    v15 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v9;
      v17 = v15;
      *buf = 136446466;
      v20 = [(__CFString *)v9 UTF8String];
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [v3 setDelegate:0];
  }

  else
  {
    if (v5 < 0x15)
    {
      v7 = @"am.delegate";
    }

    else
    {
      v6 = [@"am.delegate" substringWithRange:{0, 18}];
      v7 = [v6 stringByAppendingString:@".."];
    }

    v10 = [NSString stringWithFormat:@"am.delegate is not owned by this object, not setting to nil"];
    v11 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v7;
      v13 = v11;
      *buf = 136446466;
      v20 = [(__CFString *)v7 UTF8String];
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  objc_storeWeak(&self->_delegate, 0);
  [(PTPStorage *)self->_photoStorage setParent:0];
  [(PTPStorage *)self->_placeholderStorage setParent:0];
  [(PTPVirtualCamera *)self removeStorages];
  [(PTPVirtualCamera *)self removeSecurity];
  [(PTPVirtualCamera *)self stopObservers];
  [(PTPVirtualCamera *)self setupStorageAfterTimeout:&stru_100038898];

  v18.receiver = self;
  v18.super_class = PTPVirtualCamera;
  [(PTPVirtualCamera *)&v18 dealloc];
}

- (NSString)userAssignedName
{
  __ICOSLogCreate();
  v3 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v4 = [&stru_100038B48 substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [NSString stringWithFormat:@"User Assigned: %@", self->_userAssignedName];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3;
    v8 = v6;
    *buf = 136446466;
    v20 = [(__CFString *)v3 UTF8String];
    v21 = 2114;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  __ICOSLogCreate();
  v9 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v10 = [&stru_100038B48 substringWithRange:{0, 18}];
    v9 = [v10 stringByAppendingString:@".."];
  }

  v11 = [NSString stringWithFormat:@"System Defalt: %@", self->_name];
  v12 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v9;
    v14 = v12;
    v15 = [(__CFString *)v9 UTF8String];
    *buf = 136446466;
    v20 = v15;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  userAssignedName = self->_userAssignedName;
  if (!userAssignedName)
  {
    userAssignedName = self->_name;
  }

  v17 = userAssignedName;

  return v17;
}

- (int64_t)transferBehaviorUserPreference
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.camera"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 valueForKey:@"CAMUserPreferenceMediaTransferBehavior"];
    if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v5 = [v4 integerValue];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  __ICOSLogCreate();
  v6 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v7 = [&stru_100038B48 substringWithRange:{0, 18}];
    v6 = [v7 stringByAppendingString:@".."];
  }

  v8 = "Auto";
  if (v5 == 1)
  {
    v8 = "Original";
  }

  v9 = [NSString stringWithFormat:@"Transfer Mode: %s", v8];
  v10 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v6;
    v12 = v10;
    *buf = 136446466;
    v15 = [(__CFString *)v6 UTF8String];
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  return v5;
}

- (void)initializeMTPProperties
{
  v3 = [[NSMutableArray alloc] initWithCapacity:0];
  objectDescriptionDataset = self->_objectDescriptionDataset;
  self->_objectDescriptionDataset = v3;

  v5 = self->_objectDescriptionDataset;
  v6 = [MTPObjectProperty objectPropertyWithPropertyCode:56321 andDataType:6];
  [(NSMutableArray *)v5 addObject:v6];

  v7 = self->_objectDescriptionDataset;
  v8 = [MTPObjectProperty objectPropertyWithPropertyCode:56322 andDataType:4];
  [(NSMutableArray *)v7 addObject:v8];

  v9 = self->_objectDescriptionDataset;
  v10 = [MTPObjectProperty objectPropertyWithPropertyCode:56324 andDataType:8];
  [(NSMutableArray *)v9 addObject:v10];

  v11 = self->_objectDescriptionDataset;
  v12 = [MTPObjectProperty objectPropertyWithPropertyCode:56327 andDataType:0xFFFFLL];
  [(NSMutableArray *)v11 addObject:v12];

  v18 = [MTPObjectProperty objectPropertyWithPropertyCode:56328 andDataType:0xFFFFLL];
  [v18 setFormFlag:3];
  [(NSMutableArray *)self->_objectDescriptionDataset addObject:v18];
  v13 = [MTPObjectProperty objectPropertyWithPropertyCode:56329 andDataType:0xFFFFLL];
  [v13 setFormFlag:3];
  [(NSMutableArray *)self->_objectDescriptionDataset addObject:v13];
  v14 = self->_objectDescriptionDataset;
  v15 = [MTPObjectProperty objectPropertyWithPropertyCode:56331 andDataType:6];
  [(NSMutableArray *)v14 addObject:v15];

  v16 = self->_objectDescriptionDataset;
  v17 = [MTPObjectProperty objectPropertyWithPropertyCode:56385 andDataType:10];
  [(NSMutableArray *)v16 addObject:v17];
}

- (void)vendPhotoStorage
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D534;
  block[3] = &unk_100038770;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)removePlaceholderStorage
{
  if ([(PTPVirtualCamera *)self visibleStorage:self->_placeholderStorage])
  {
    [(PTPVirtualCamera *)self sendEventRemoveStorageWithID:[(PTPStorage *)self->_placeholderStorage storageID]];
    v3 = [(PTPStorage *)self->_placeholderStorage storageID];

    [(PTPVirtualCamera *)self removeStorageWithID:v3];
  }
}

- (void)preparePhotoStorage
{
  __ICOSLogCreate();
  v3 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v4 = [&stru_100038B48 substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [NSString stringWithFormat:@"Prepare Photo Storage"];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3;
    v8 = v6;
    *buf = 136446466;
    v25 = [(__CFString *)v3 UTF8String];
    v26 = 2114;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v9 = [(PTPVirtualCamera *)self photoStorage];

  if (!v9)
  {
    if ([(PTPVirtualCamera *)self hostSupportsGroups])
    {
      v10 = [[PTPStorage alloc] initWithParent:self andOptionalID:0 forSessionID:[(PTPVirtualCamera *)self currentInternalSessionID]];
      [(PTPVirtualCamera *)self setPhotoStorage:v10];
      __ICOSLogCreate();
      v11 = &stru_100038B48;
      if ([&stru_100038B48 length] >= 0x15)
      {
        v12 = [&stru_100038B48 substringWithRange:{0, 18}];
        v11 = [v12 stringByAppendingString:@".."];
      }

      v13 = [NSString stringWithFormat:@"Group Storage Available: 0x%x \n", [(PTPStorage *)v10 storageID]];
      v14 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v11;
        v16 = v14;
        v17 = [(__CFString *)v11 UTF8String];
        *buf = 136446466;
        v25 = v17;
        v26 = 2114;
        v27 = v13;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      notify_post("com.apple.ptpd.photoStorageChanged");
      storageEnumerationQ = self->_storageEnumerationQ;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000DAE0;
      block[3] = &unk_100038770;
      v23 = v10;
      v19 = v10;
      dispatch_async(storageEnumerationQ, block);
    }

    else
    {
      v20 = self->_storageEnumerationQ;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10000DAE8;
      v21[3] = &unk_100038770;
      v21[4] = self;
      dispatch_async(v20, v21);
    }
  }
}

- (void)resetPhotoStorage
{
  __ICOSLogCreate();
  v3 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v4 = [&stru_100038B48 substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [NSString stringWithFormat:@"Reset Photo Storage"];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3;
    v8 = v6;
    *buf = 136446466;
    v12 = [(__CFString *)v3 UTF8String];
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  storageEnumerationQ = self->_storageEnumerationQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E0F4;
  block[3] = &unk_100038770;
  block[4] = self;
  dispatch_async(storageEnumerationQ, block);
}

- (void)handleInternalSettingsChanged
{
  [(PTPVirtualCamera *)self setCurrentInternalSessionID:sub_100004228()];
  [(PTPStorage *)self->_placeholderStorage setSessionID:[(PTPVirtualCamera *)self currentInternalSessionID]];
  [(PTPSecurityModel *)self->_ptpSecurityModel setSessionID:[(PTPVirtualCamera *)self currentInternalSessionID]];

  [(PTPVirtualCamera *)self resetPhotoStorage];
}

- (id)photoStorageAvailable
{
  v2 = [(PTPVirtualCamera *)self photoStorage];

  return [NSNumber numberWithBool:v2 != 0];
}

- (BOOL)visibleStorage:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 storageID];
  storages = self->_storages;
  v6 = [NSNumber numberWithUnsignedInt:v4];
  v7 = [(NSMutableDictionary *)storages objectForKey:v6];
  v8 = v7 != 0;

  return v8;
}

- (void)addStorage:(id)a3
{
  v4 = a3;
  if ([(NSMutableDictionary *)self->_storages count]== 1)
  {
    __ICOSLogCreate();
    v5 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v6 = [&stru_100038B48 substringWithRange:{0, 18}];
      v5 = [v6 stringByAppendingString:@".."];
    }

    v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Storage 0x%x is being added", [v4 storageID]);
    v8 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v5;
      v10 = v8;
      *buf = 136446466;
      v35 = [(__CFString *)v5 UTF8String];
      v36 = 2114;
      v37 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    __ICOSLogCreate();
    v11 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v12 = [&stru_100038B48 substringWithRange:{0, 18}];
      v11 = [v12 stringByAppendingString:@".."];
    }

    v13 = [NSString stringWithFormat:@"Two storages cannot co-exist - should quit"];
    v14 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v11;
      v16 = v14;
      v17 = [(__CFString *)v11 UTF8String];
      *buf = 136446466;
      v35 = v17;
      v36 = 2114;
      v37 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  if (v4)
  {
    __ICOSLogCreate();
    v18 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v19 = [&stru_100038B48 substringWithRange:{0, 18}];
      v18 = [v19 stringByAppendingString:@".."];
    }

    v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Storage 0x%x is being added\n", [v4 storageID]);
    v21 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v18;
      v23 = v21;
      v24 = [(__CFString *)v18 UTF8String];
      *buf = 136446466;
      v35 = v24;
      v36 = 2114;
      v37 = v20;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    storages = self->_storages;
    v26 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 storageID]);
    [(NSMutableDictionary *)storages setObject:v4 forKey:v26];

    __ICOSLogCreate();
    v27 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v28 = [&stru_100038B48 substringWithRange:{0, 18}];
      v27 = [v28 stringByAppendingString:@".."];
    }

    v29 = [NSString stringWithFormat:@"Storage count is now: %lu\n", [(NSMutableDictionary *)self->_storages count]];
    v30 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v27;
      v32 = v30;
      v33 = [(__CFString *)v27 UTF8String];
      *buf = 136446466;
      v35 = v33;
      v36 = 2114;
      v37 = v29;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }
}

- (void)removeStorages
{
  storages = self->_storages;
  if (storages)
  {
    v17 = self;
    [(NSMutableDictionary *)storages allValues];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v22 = 0u;
    v4 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v20;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v19 + 1) + 8 * i);
          __ICOSLogCreate();
          v9 = &stru_100038B48;
          if ([&stru_100038B48 length] >= 0x15)
          {
            v10 = [&stru_100038B48 substringWithRange:{0, 18}];
            v9 = [v10 stringByAppendingString:@".."];
          }

          v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" Removing Storage: 0x%x", [v8 storageID]);
          v12 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v9;
            v14 = v12;
            v15 = [(__CFString *)v9 UTF8String];
            *buf = 136446466;
            v24 = v15;
            v25 = 2114;
            v26 = v11;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }

          [v8 setParent:0];
        }

        v5 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v5);
    }

    [(NSMutableDictionary *)v17->_storages removeAllObjects];
    v16 = v17->_storages;
    v17->_storages = 0;
  }
}

- (void)sendEventDeviceUnlocked
{
  v3 = NSSelectorFromString(@"sendEventDeviceUnlocked");
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained performSelector:v3];
}

- (id)overrideCapabilities
{
  if (sub_1000041D0())
  {
    __ICOSLogCreate();
    v2 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v3 = [&stru_100038B48 substringWithRange:{0, 18}];
      v2 = [v3 stringByAppendingString:@".."];
    }

    v4 = [NSString stringWithFormat:@"Internal Setting - Capabilities Override"];
    v5 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v2;
      v7 = v5;
      v52 = 136446466;
      v53 = [(__CFString *)v2 UTF8String];
      v54 = 2114;
      v55 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v52, 0x16u);
    }

    v8 = +[NSMutableDictionary dictionary];
    if (sub_1000041D0())
    {
      [v8 setObject:&off_10003BDE0 forKeyedSubscript:@"HEIC"];
      __ICOSLogCreate();
      v9 = &stru_100038B48;
      if ([&stru_100038B48 length] >= 0x15)
      {
        v10 = [&stru_100038B48 substringWithRange:{0, 18}];
        v9 = [v10 stringByAppendingString:@".."];
      }

      v11 = [NSString stringWithFormat:@"   ++ Received HEIC"];
      v12 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v9;
        v14 = v12;
        v15 = [(__CFString *)v9 UTF8String];
        v52 = 136446466;
        v53 = v15;
        v54 = 2114;
        v55 = v11;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v52, 0x16u);
      }

      __ICOSLogCreate();
      v16 = &stru_100038B48;
      if ([&stru_100038B48 length] >= 0x15)
      {
        v17 = [&stru_100038B48 substringWithRange:{0, 18}];
        v16 = [v17 stringByAppendingString:@".."];
      }

      v18 = [NSString stringWithFormat:@"   -> Adding ptp.heic"];
      v19 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v16;
        v21 = v19;
        v22 = [(__CFString *)v16 UTF8String];
        v52 = 136446466;
        v53 = v22;
        v54 = 2114;
        v55 = v18;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v52, 0x16u);
      }
    }

    if (sub_1000041D0())
    {
      [v8 setObject:&off_10003BDE0 forKeyedSubscript:@"HEICS"];
      __ICOSLogCreate();
      v23 = &stru_100038B48;
      if ([&stru_100038B48 length] >= 0x15)
      {
        v24 = [&stru_100038B48 substringWithRange:{0, 18}];
        v23 = [v24 stringByAppendingString:@".."];
      }

      v25 = [NSString stringWithFormat:@"   ++ Received HEICS"];
      v26 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v23;
        v28 = v26;
        v29 = [(__CFString *)v23 UTF8String];
        v52 = 136446466;
        v53 = v29;
        v54 = 2114;
        v55 = v25;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v52, 0x16u);
      }

      __ICOSLogCreate();
      v30 = &stru_100038B48;
      if ([&stru_100038B48 length] >= 0x15)
      {
        v31 = [&stru_100038B48 substringWithRange:{0, 18}];
        v30 = [v31 stringByAppendingString:@".."];
      }

      v32 = [NSString stringWithFormat:@"   -> Adding ptp.heics"];
      v33 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v30;
        v35 = v33;
        v36 = [(__CFString *)v30 UTF8String];
        v52 = 136446466;
        v53 = v36;
        v54 = 2114;
        v55 = v32;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v52, 0x16u);
      }
    }

    if (sub_1000041D0())
    {
      [v8 setObject:&off_10003BDE0 forKeyedSubscript:@"HEVC"];
      __ICOSLogCreate();
      v37 = &stru_100038B48;
      if ([&stru_100038B48 length] >= 0x15)
      {
        v38 = [&stru_100038B48 substringWithRange:{0, 18}];
        v37 = [v38 stringByAppendingString:@".."];
      }

      v39 = [NSString stringWithFormat:@"   ++ Received HEVC"];
      v40 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v37;
        v42 = v40;
        v43 = [(__CFString *)v37 UTF8String];
        v52 = 136446466;
        v53 = v43;
        v54 = 2114;
        v55 = v39;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v52, 0x16u);
      }

      __ICOSLogCreate();
      v44 = &stru_100038B48;
      if ([&stru_100038B48 length] >= 0x15)
      {
        v45 = [&stru_100038B48 substringWithRange:{0, 18}];
        v44 = [v45 stringByAppendingString:@".."];
      }

      v46 = [NSString stringWithFormat:@"   -> Adding ptp.hevc"];
      v47 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v48 = v44;
        v49 = v47;
        v50 = [(__CFString *)v44 UTF8String];
        v52 = 136446466;
        v53 = v50;
        v54 = 2114;
        v55 = v46;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v52, 0x16u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)willOverrideCapabilities
{
  v3 = [(PTPVirtualCamera *)self overrideCapabilities];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = objc_opt_new();
  v5 = sub_10000C470();
  v6 = +[NSMutableDictionary dictionary];
  v7 = +[NSMutableArray array];
  v8 = [v3 objectForKeyedSubscript:@"HEIC"];
  if (v8)
  {

LABEL_5:
    v13 = _UTTypeHEIFStandard;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    [v6 setObject:v10 forKeyedSubscript:PFMediaCapabilitiesOutOfBandHintsExtraSupportedContentTypesKey];

    [v7 addObjectsFromArray:&off_10003BEB8];
    goto LABEL_6;
  }

  v9 = [v3 objectForKeyedSubscript:@"HEICS"];

  if (v9)
  {
    goto LABEL_5;
  }

LABEL_6:
  v11 = [v3 objectForKeyedSubscript:@"HEVC"];

  if (v11)
  {
    [v6 setObject:&off_10003BED0 forKeyedSubscript:PFMediaCapabilitiesOutOfBandHintsExtraSupportedVideoCodecsKey];
    [v7 addObjectsFromArray:&off_10003BEE8];
  }

  [v4 setOutOfBandHints:v6];
  [v5 setPeerMediaCapabilities:v4];
  [(NSMutableArray *)self->_hostMediaSupportedFormats addObjectsFromArray:v7];

LABEL_9:
  return v3 != 0;
}

- (void)assignHostMediaCapabilities:(id)a3
{
  v4 = a3;
  if (![(PTPVirtualCamera *)self willOverrideCapabilities])
  {
    if (v4)
    {
      v5 = [[PFMediaCapabilities alloc] initWithOpaqueRepresentation:v4];
      if (v5)
      {
        v6 = sub_10000C470();
        [v6 setPeerMediaCapabilities:v5];

        v7 = @"Set";
      }

      else
      {
        v7 = @"Failed";
      }
    }

    else
    {
      v5 = sub_10000C470();
      [v5 setPeerMediaCapabilities:0];
      v7 = @"Cleared";
    }

    __ICOSLogCreate();
    v8 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v9 = [&stru_100038B48 substringWithRange:{0, 18}];
      v8 = [v9 stringByAppendingString:@".."];
    }

    v10 = [NSString stringWithFormat:@"PFMediaCapabilities: %@", v7];
    v11 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v8;
      v13 = v11;
      *buf = 136446466;
      v15 = [(__CFString *)v8 UTF8String];
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }
}

- (void)assignHostSupportedFormats:(id)a3
{
  v4 = a3;
  if (![(PTPVirtualCamera *)self willOverrideCapabilities])
  {
    __ICOSLogCreate();
    v5 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v6 = [&stru_100038B48 substringWithRange:{0, 18}];
      v5 = [v6 stringByAppendingString:@".."];
    }

    v7 = [NSString stringWithFormat:@"Assigning Host Supported Formats"];
    v8 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v5;
      v10 = v8;
      *buf = 136446466;
      v47 = [(__CFString *)v5 UTF8String];
      v48 = 2114;
      v49 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [v4 bytes];
    [v4 bytes];
    [v4 length];
    v11 = CopyArrayOfUnsignedShortsFromBufferMaxSize();
    if (v11)
    {
      v12 = objc_opt_new();
      v44 = sub_10000C470();
      v13 = +[NSMutableArray array];
      v14 = +[NSMutableDictionary dictionary];
      if (([v11 containsObject:&off_10003BE10] & 1) != 0 || objc_msgSend(v11, "containsObject:", &off_10003BE28))
      {
        v45 = _UTTypeHEIFStandard;
        v15 = [NSArray arrayWithObjects:&v45 count:1];
        [v14 setObject:v15 forKeyedSubscript:PFMediaCapabilitiesOutOfBandHintsExtraSupportedContentTypesKey];

        __ICOSLogCreate();
        v16 = &stru_100038B48;
        if ([&stru_100038B48 length] >= 0x15)
        {
          v17 = [&stru_100038B48 substringWithRange:{0, 18}];
          v16 = [v17 stringByAppendingString:@".."];
        }

        v18 = [NSString stringWithFormat:@"   ++ Received HEIC (0xB401, 0xB402)"];
        v19 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v16;
          v21 = v19;
          v22 = [(__CFString *)v16 UTF8String];
          *buf = 136446466;
          v47 = v22;
          v48 = 2114;
          v49 = v18;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }

        __ICOSLogCreate();
        v23 = &stru_100038B48;
        if ([&stru_100038B48 length] >= 0x15)
        {
          v24 = [&stru_100038B48 substringWithRange:{0, 18}];
          v23 = [v24 stringByAppendingString:@".."];
        }

        v25 = [NSString stringWithFormat:@"   -> Adding _UTTypeHEIFStandard"];
        v26 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v23;
          v28 = v26;
          v29 = [(__CFString *)v23 UTF8String];
          *buf = 136446466;
          v47 = v29;
          v48 = 2114;
          v49 = v25;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }

        [v13 addObjectsFromArray:&off_10003BF00];
      }

      if ([v11 containsObject:&off_10003BE40])
      {
        [v14 setObject:&off_10003BF18 forKeyedSubscript:PFMediaCapabilitiesOutOfBandHintsExtraSupportedVideoCodecsKey];
        __ICOSLogCreate();
        v30 = &stru_100038B48;
        if ([&stru_100038B48 length] >= 0x15)
        {
          v31 = [&stru_100038B48 substringWithRange:{0, 18}];
          v30 = [v31 stringByAppendingString:@".."];
        }

        v32 = [NSString stringWithFormat:@"   ++ Received HEVC (0xB421)"];
        v33 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v30;
          v35 = v33;
          v36 = [(__CFString *)v30 UTF8String];
          *buf = 136446466;
          v47 = v36;
          v48 = 2114;
          v49 = v32;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }

        __ICOSLogCreate();
        v37 = &stru_100038B48;
        if ([&stru_100038B48 length] >= 0x15)
        {
          v38 = [&stru_100038B48 substringWithRange:{0, 18}];
          v37 = [v38 stringByAppendingString:@".."];
        }

        v39 = [NSString stringWithFormat:@"   -> Adding kCMVideoCodecType_HEVC"];
        v40 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v37;
          v42 = v40;
          v43 = [(__CFString *)v37 UTF8String];
          *buf = 136446466;
          v47 = v43;
          v48 = 2114;
          v49 = v39;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }

        [v13 addObjectsFromArray:&off_10003BF30];
      }

      [v12 setOutOfBandHints:v14];
      [v44 setPeerMediaCapabilities:v12];
      [(NSMutableArray *)self->_hostMediaSupportedFormats addObjectsFromArray:v13];
    }
  }
}

- (void)installSecurity
{
  if (self->_ptpSecurityModel)
  {
    [(PTPVirtualCamera *)self removeSecurity];
  }

  v3 = objc_alloc_init(PTPSecurityModel);
  ptpSecurityModel = self->_ptpSecurityModel;
  self->_ptpSecurityModel = v3;

  [(PTPSecurityModel *)self->_ptpSecurityModel setDelegate:self];
  v5 = self->_ptpSecurityModel;

  [(PTPSecurityModel *)v5 start];
}

- (void)removeSecurity
{
  if (self->_ptpSecurityModel)
  {
    __ICOSLogCreate();
    v3 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v4 = [&stru_100038B48 substringWithRange:{0, 18}];
      v3 = [v4 stringByAppendingString:@".."];
    }

    v5 = [NSString stringWithFormat:@"Removing Security"];
    v6 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v3;
      v8 = v6;
      v10 = 136446466;
      v11 = [(__CFString *)v3 UTF8String];
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v10, 0x16u);
    }

    [(PTPSecurityModel *)self->_ptpSecurityModel stop];
    [(PTPSecurityModel *)self->_ptpSecurityModel setDelegate:0];
    ptpSecurityModel = self->_ptpSecurityModel;
    self->_ptpSecurityModel = 0;
  }
}

- (void)openSession
{
  [(PTPVirtualCamera *)self installSecurity];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100010470;
  v3[3] = &unk_100038770;
  v3[4] = self;
  [(PTPVirtualCamera *)self setupStorageAfterTimeout:v3];
}

- (void)setupStorageAfterTimeout:(id)a3
{
  v4 = a3;
  v5 = [(PTPVirtualCamera *)self storageTimer];

  if (v5)
  {
    __ICOSLogCreate();
    v6 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v7 = [&stru_100038B48 substringWithRange:{0, 18}];
      v6 = [v7 stringByAppendingString:@".."];
    }

    v8 = [NSString stringWithFormat:@"==|Session Continuation|== Storages Untouched"];
    v9 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v6;
      v11 = v9;
      v13 = 136446466;
      v14 = [(__CFString *)v6 UTF8String];
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v13, 0x16u);
    }

    v12 = [(PTPVirtualCamera *)self storageTimer];
    dispatch_source_cancel(v12);
  }

  else
  {
    v4[2](v4);
  }
}

- (void)closeSession
{
  [(PTPVirtualCamera *)self removeSecurity];
  v3 = [(PTPVirtualCamera *)self hostIsWindows];
  v4 = 3.0;
  if (v3)
  {
    v4 = 0.0;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001093C;
  v6[3] = &unk_100038770;
  v6[4] = self;
  [(PTPVirtualCamera *)self cleanupStorageAfterTimeout:v6 cleanup:v4];
  v5 = sub_1000021F0();
  [v5 closeSession:@"Host closed all sessions"];
}

- (void)cleanupStorageAfterTimeout:(double)a3 cleanup:(id)a4
{
  v6 = a4;
  __ICOSLogCreate();
  v7 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v8 = [&stru_100038B48 substringWithRange:{0, 18}];
    v7 = [v8 stringByAppendingString:@".."];
  }

  v9 = [NSString stringWithFormat:@"Cleanup Storages (CloseSession)"];
  v10 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v7;
    v12 = v10;
    *buf = 136446466;
    v26 = [(__CFString *)v7 UTF8String];
    v27 = 2114;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v13 = [(PTPVirtualCamera *)self storageTimer];

  if (!v13)
  {
    v14 = dispatch_get_global_queue(0, 0);
    [(PTPVirtualCamera *)self setStorageTimerQ:v14];

    v15 = [(PTPVirtualCamera *)self storageTimerQ];
    v16 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v15);
    [(PTPVirtualCamera *)self setStorageTimer:v16];

    v17 = [(PTPVirtualCamera *)self storageTimer];
    v18 = dispatch_time(0, (a3 * 1000000000.0));
    dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);

    v19 = [(PTPVirtualCamera *)self storageTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100010CF4;
    handler[3] = &unk_1000388C0;
    handler[4] = self;
    v24 = v6;
    dispatch_source_set_event_handler(v19, handler);

    v20 = [(PTPVirtualCamera *)self storageTimer];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100010E64;
    v22[3] = &unk_100038770;
    v22[4] = self;
    dispatch_source_set_cancel_handler(v20, v22);

    v21 = [(PTPVirtualCamera *)self storageTimer];
    dispatch_resume(v21);
  }
}

- (void)startObservers
{
  __ICOSLogCreate();
  v3 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v4 = [&stru_100038B48 substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [NSString stringWithFormat:@"Install Device Status Observers"];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3;
    v8 = v6;
    *buf = 136446466;
    *&buf[4] = [(__CFString *)v3 UTF8String];
    *&buf[12] = 2114;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  if (!self->_notificationObserversInstalled)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v24 = sub_100011324;
    v25 = sub_100011334;
    v9 = self;
    v26 = v9;
    v10 = [kLockdownNotificationDeviceNameChanged cStringUsingEncoding:4];
    v11 = &_dispatch_main_q;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10001133C;
    handler[3] = &unk_100038798;
    handler[4] = buf;
    notify_register_dispatch(v10, &v9->_nameChangeToken, &_dispatch_main_q, handler);

    self->_notificationObserversInstalled = 1;
    __ICOSLogCreate();
    if ([&stru_100038B48 length] < 0x15)
    {
      v13 = &stru_100038B48;
    }

    else
    {
      v12 = [&stru_100038B48 substringWithRange:{0, 18}];
      v13 = [v12 stringByAppendingString:@".."];
    }

    v14 = [NSString stringWithFormat:@"Observers Installed"];
    v15 = _gICOSLog;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v13;
      v17 = [(__CFString *)v13 UTF8String];
      *v19 = 136446466;
      v20 = v17;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", v19, 0x16u);
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)provokeSecurityCheck
{
  __ICOSLogCreate();
  v3 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v4 = [&stru_100038B48 substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [NSString stringWithFormat:@"Provoke Security Probe"];
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

  [(PTPSecurityModel *)self->_ptpSecurityModel handleProtectionStatusChanged:5];
}

- (void)stopObservers
{
  __ICOSLogCreate();
  v3 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v4 = [&stru_100038B48 substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [NSString stringWithFormat:@"Releasing Security Model"];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3;
    v8 = v6;
    v16 = 136446466;
    v17 = [(__CFString *)v3 UTF8String];
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v16, 0x16u);
  }

  if (self->_notificationObserversInstalled)
  {
    __ICOSLogCreate();
    v9 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v10 = [&stru_100038B48 substringWithRange:{0, 18}];
      v9 = [v10 stringByAppendingString:@".."];
    }

    v11 = [NSString stringWithFormat:@"Removing Device Status Observers"];
    v12 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v9;
      v14 = v12;
      v15 = [(__CFString *)v9 UTF8String];
      v16 = 136446466;
      v17 = v15;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v16, 0x16u);
    }

    notify_cancel(self->_nameChangeToken);
    self->_notificationObserversInstalled = 0;
  }
}

- (id)storageWithID:(unsigned int)a3
{
  [(NSMutableDictionary *)self->_storages allValues];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        if ([v9 objectHandle] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)objectForObjectHandle:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storages allValues];
  v6 = [v5 count];
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    while (1)
    {
      v9 = [v5 objectAtIndex:v8];
      v10 = [v9 cameraFolderWithObjectID:{objc_msgSend(v4, "unsignedIntValue")}];
      if (v10)
      {
        break;
      }

      v10 = [v9 cameraFileWithObjectID:{objc_msgSend(v4, "unsignedIntValue")}];
      if (v10)
      {
        break;
      }

      if (v7 == ++v8)
      {
        goto LABEL_6;
      }
    }

    v11 = v10;
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

  return v11;
}

- (id)allStorages
{
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMutableDictionary *)self->_storages allKeys];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_storages objectForKey:*(*(&v11 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (unsigned)numDownloadableObjects
{
  v2 = sub_1000041DC();
  v3 = dword_1000403A8;
  if (v2)
  {
    v3 = 0;
  }

  return dword_1000403A4 - v3;
}

- (BOOL)hostIsWindows
{
  v3 = NSSelectorFromString(@"usingMTP");
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    return 0;
  }

  v5 = WeakRetained;
  v6 = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = objc_loadWeakRetained(&self->_delegate);
  v9 = [v8 performSelector:v3];

  if (!v9)
  {
    return 0;
  }

  v10 = [v9 BOOLValue];

  return v10;
}

- (BOOL)hostIsMacOS
{
  v3 = NSSelectorFromString(@"usingMacOS");
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    return 0;
  }

  v5 = WeakRetained;
  v6 = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = objc_loadWeakRetained(&self->_delegate);
  v9 = [v8 performSelector:v3];

  if (!v9)
  {
    return 0;
  }

  v10 = [v9 BOOLValue];

  return v10;
}

- (BOOL)hostIsLegacyOS
{
  v3 = NSSelectorFromString(@"usingLegacyOS");
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    return 0;
  }

  v5 = WeakRetained;
  v6 = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = objc_loadWeakRetained(&self->_delegate);
  v9 = [v8 performSelector:v3];

  if (!v9)
  {
    return 0;
  }

  v10 = [v9 BOOLValue];

  return v10;
}

- (id)devicePropDescDatasetForProperty:(unsigned __int16)a3
{
  if (a3 == 54018)
  {
    v3 = objc_alloc_init(PTPDevicePropDescDataset);
    [v3 setDevicePropertyCode:54018];
    [v3 setDataTypeCode:10];
    [v3 setReadWriteAttribute:0];
    v8 = [(PTPDeviceInfoDataset *)self->_deviceInfoDataset serialNumber];
    if ([v8 length] < 4)
    {
      v11 = 0;
    }

    else
    {
      v10 = [v8 substringFromIndex:{objc_msgSend(v8, "length") - 4}];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 dataUsingEncoding:1 allowLossyConversion:1];
LABEL_10:
        v13 = [v12 bytes];
        if (v13)
        {
          v14 = *v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = [NSNumber numberWithUnsignedLongLong:v14];
        [v3 setFactoryDefaultValue:v15];

        v16 = [NSNumber numberWithUnsignedLongLong:v14];
        [v3 setCurrentValue:v16];

        [v3 setFormFlag:0];
        goto LABEL_14;
      }
    }

    v12 = 0;
    goto LABEL_10;
  }

  if (a3 != 20481)
  {
    v3 = 0;
    goto LABEL_15;
  }

  v3 = objc_alloc_init(PTPDevicePropDescDataset);
  [v3 setDevicePropertyCode:20481];
  [v3 setDataTypeCode:2];
  [v3 setReadWriteAttribute:0];
  v4 = [NSNumber numberWithUnsignedChar:50];
  [v3 setFactoryDefaultValue:v4];

  v5 = [NSNumber numberWithUnsignedChar:50];
  [v3 setCurrentValue:v5];

  [v3 setFormFlag:1];
  v6 = [NSNumber numberWithUnsignedChar:0];
  [v3 setMinimumValue:v6];

  v7 = [NSNumber numberWithUnsignedChar:100];
  [v3 setMaximumValue:v7];

  v8 = [NSNumber numberWithUnsignedChar:10];
  [v3 setStepSize:v8];
LABEL_14:

LABEL_15:

  return v3;
}

- (id)devicePropValueForProperty:(unsigned __int16)a3
{
  if (a3 == 54018)
  {
    v4 = [(PTPDeviceInfoDataset *)self->_deviceInfoDataset serialNumber];
    if ([v4 length] >= 4 && (objc_msgSend(v4, "substringFromIndex:", objc_msgSend(v4, "length") - 4), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = v5;
      v3 = [v5 dataUsingEncoding:1 allowLossyConversion:1];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = [NSMutableData dataWithLength:1];
    *[v3 mutableBytes] = 50;
  }

  return v3;
}

- (void)setHostSupportsGroups:(BOOL)a3
{
  self->_hostSupportsGroups = a3;
  v4 = [(PTPVirtualCamera *)self photoStorage];

  if (v4)
  {
    v5 = [(PTPVirtualCamera *)self photoStorage];
    [v5 setAssetGroupIndex:0];
  }
}

- (void)generatePTPEventsForAddedObjectHandles:(id)a3
{
  v9 = [a3 objectEnumerator];
  v4 = [v9 nextObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = NSSelectorFromString(@"reportObjectAdded:");
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained performSelector:v6 withObject:v5];

      v8 = [v9 nextObject];

      v5 = v8;
    }

    while (v8);
  }
}

- (void)generatePTPEventsForDeletedObjectHandles:(id)a3
{
  v9 = [a3 objectEnumerator];
  v4 = [v9 nextObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = NSSelectorFromString(@"reportObjectDeleted:");
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained performSelector:v6 withObject:v5];

      v8 = [v9 nextObject];

      v5 = v8;
    }

    while (v8);
  }
}

- (void)processAddedFiles:(id)a3
{
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100011324;
  v25 = sub_100011334;
  v26 = +[NSMutableArray array];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100011324;
  v19 = sub_100011334;
  v20 = +[NSMutableArray array];
  v5 = sub_10000C470();
  v6 = v5;
  if (v5)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100014080;
    v14[3] = &unk_1000388E8;
    v14[4] = self;
    v14[5] = &v21;
    v14[6] = &v15;
    [v5 ptpEnumerateAssetsWithLocalIdentifiers:v4 usingBlock:v14];
  }

  else
  {
    __ICOSLogCreate();
    if ([@"assetManager" length] < 0x15)
    {
      v8 = @"assetManager";
    }

    else
    {
      v7 = [@"assetManager" substringWithRange:{0, 18}];
      v8 = [v7 stringByAppendingString:@".."];
    }

    v9 = [NSString stringWithFormat:@"!invalid"];
    v10 = _gICOSLog;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v8;
      v12 = [(__CFString *)v8 UTF8String];
      *buf = 136446466;
      v28 = v12;
      v29 = 2114;
      v30 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  if (self->_hostSupportsGroups)
  {
    v13 = [(PTPVirtualCamera *)self photoStorage];
    -[PTPVirtualCamera generatePTPEventsForAddedObjectGroupInStorage:](self, "generatePTPEventsForAddedObjectGroupInStorage:", [v13 storageID]);
  }

  else
  {
    if ([v16[5] count])
    {
      [(PTPVirtualCamera *)self generatePTPEventsForAddedObjectHandles:v16[5]];
    }

    if ([v22[5] count])
    {
      [(PTPVirtualCamera *)self generatePTPEventsForAddedObjectHandles:v22[5]];
    }
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
}

- (void)processDeletedFiles:(id)a3
{
  v23 = a3;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100011324;
  v37 = sub_100011334;
  v38 = +[NSMutableArray array];
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = sub_100011324;
  v31[4] = sub_100011334;
  v32 = +[NSMutableArray array];
  v24 = sub_10000C470();
  if (v24)
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000146B4;
    v30[3] = &unk_1000388E8;
    v30[4] = self;
    v30[5] = &v33;
    v30[6] = v31;
    [v24 ptpEnumerateAssetsWithLocalIdentifiers:v23 usingBlock:v30];
  }

  __ICOSLogCreate();
  if ([&stru_100038B48 length] < 0x15)
  {
    v4 = &stru_100038B48;
  }

  else
  {
    v3 = [&stru_100038B48 substringWithRange:{0, 18}];
    v4 = [v3 stringByAppendingString:@".."];
  }

  v5 = [NSString stringWithFormat:@"deletedFiles: %@\n", v34[5]];
  v6 = _gICOSLog;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v4;
    v8 = [(__CFString *)v4 UTF8String];
    *buf = 136446466;
    v41 = v8;
    v42 = 2114;
    v43 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v9 = [[NSMutableArray alloc] initWithCapacity:0];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v34[5];
  v10 = [obj countByEnumeratingWithState:&v26 objects:v39 count:16];
  if (v10)
  {
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        __ICOSLogCreate();
        v14 = &stru_100038B48;
        if ([&stru_100038B48 length] >= 0x15)
        {
          v15 = [&stru_100038B48 substringWithRange:{0, 18}];
          v14 = [v15 stringByAppendingString:@".."];
        }

        v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"file index: %d\n", [v13 objectHandle]);
        v17 = _gICOSLog;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v14;
          v19 = [(__CFString *)v14 UTF8String];
          *buf = 136446466;
          v41 = v19;
          v42 = 2114;
          v43 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }

        v20 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v13 objectHandle]);
        v21 = [v13 parent];
        [v9 addObject:v20];
        [v21 deleteFile:v13];
      }

      v10 = [obj countByEnumeratingWithState:&v26 objects:v39 count:16];
    }

    while (v10);
  }

  if ([v9 count])
  {
    [(PTPVirtualCamera *)self generatePTPEventsForDeletedObjectHandles:v9];
  }

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&v33, 8);
}

- (void)addedPhotoKeys:(id)a3 deletedPhotoKeys:(id)a4 changedPhotoKeys:(id)a5 changePendingPhotoKeys:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  __ICOSLogCreate();
  v14 = @"addedPhotoKeys";
  if ([@"addedPhotoKeys" length] >= 0x15)
  {
    v15 = [@"addedPhotoKeys" substringWithRange:{0, 18}];
    v14 = [v15 stringByAppendingString:@".."];
  }

  v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Added:[%lu] Changed[%lu] Removed[%lu]", [v10 count], objc_msgSend(v12, "count"), objc_msgSend(v11, "count"));
  v17 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v14;
    v19 = v17;
    *buf = 136446466;
    v31 = [(__CFString *)v14 UTF8String];
    v32 = 2114;
    v33 = v16;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014A00;
  block[3] = &unk_100038910;
  v25 = v10;
  v26 = self;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v20 = v13;
  v21 = v12;
  v22 = v11;
  v23 = v10;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)objectPropertiesSupportedForObjectFormatCode:(unsigned __int16)a3 responseCode:(unsigned __int16 *)a4
{
  v6 = [NSMutableArray arrayWithCapacity:0];
  *a4 = 8193;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_objectDescriptionDataset;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [*(*(&v14 + 1) + 8 * i) propertyCode]);
        [v6 addObject:v12];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)objectPropDescForObjectPropertyCode:(unsigned __int16)a3 responseCode:(unsigned __int16 *)a4
{
  v4 = a3;
  v6 = [NSMutableData dataWithLength:0, a4];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_objectDescriptionDataset;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 propertyCode] == v4)
        {
          [v12 objectPropertyDescriptionDataset:v6];
          goto LABEL_11;
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end