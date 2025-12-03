@interface PTPSecurityModel
- (BOOL)canVendPhotoStorage;
- (BOOL)isPhotoStorageAvailable;
- (BOOL)shouldVendPhotoStorage;
- (BOOL)updateProtectionStatus:(int64_t)status;
- (PTPSecurityModel)init;
- (id)delegate;
- (id)prettyAccess:(int64_t)access value:(BOOL)value;
- (id)prettyHostID;
- (void)dealloc;
- (void)handleInternalSettingsChanged;
- (void)handleProtectionStatusChanged:(int64_t)changed;
- (void)handleThrottleChanged;
- (void)registerForSecurityNotifications;
- (void)setDelegate:(id)delegate;
- (void)setHasVended:(BOOL)vended;
- (void)start;
- (void)stop;
- (void)unregisterForSecurityNotifications;
@end

@implementation PTPSecurityModel

- (PTPSecurityModel)init
{
  v5.receiver = self;
  v5.super_class = PTPSecurityModel;
  v2 = [(PTPSecurityModel *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_hasVended = 0;
    *&v2->_deviceWasUnlocked = 0;
    v2->_observersInstalled = 0;
    *&v2->_prefsChangedToken = 0;
    *&v2->_photoStorageToken = 0;
    *&v2->_lockStatusToken = 0;
    objc_storeWeak(&v2->_delegate, 0);
    v3->_sessionID = -1592735106;
  }

  return v3;
}

- (void)dealloc
{
  __ICOSLogCreate();
  v3 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v4 = [&stru_100038B48 substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [NSString stringWithFormat:@"PTPSecurityModel Deallocated SessionID - 0x%x", self->_sessionID];
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

  [(PTPSecurityModel *)self stop];
  [(PTPSecurityModel *)self setDelegate:0];
  v9.receiver = self;
  v9.super_class = PTPSecurityModel;
  [(PTPSecurityModel *)&v9 dealloc];
}

- (void)start
{
  if (!self->_observersInstalled)
  {
    __ICOSLogCreate();
    v3 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v4 = [&stru_100038B48 substringWithRange:{0, 18}];
      v3 = [v4 stringByAppendingString:@".."];
    }

    v5 = [NSString stringWithFormat:@"Install Device Security Observers"];
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

    [(PTPSecurityModel *)self registerForSecurityNotifications];
    self->_observersInstalled = 1;
    [(PTPSecurityModel *)self handleProtectionStatusChanged:0];
    [(PTPSecurityModel *)self handleProtectionStatusChanged:1];
    [(PTPSecurityModel *)self handleProtectionStatusChanged:4];
    [(PTPSecurityModel *)self handleProtectionStatusChanged:2];
  }
}

- (void)stop
{
  if (self->_observersInstalled)
  {
    __ICOSLogCreate();
    v3 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v4 = [&stru_100038B48 substringWithRange:{0, 18}];
      v3 = [v4 stringByAppendingString:@".."];
    }

    v5 = [NSString stringWithFormat:@"Removing Device Security Observers \n"];
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

    [(PTPSecurityModel *)self unregisterForSecurityNotifications];
    self->_observersInstalled = 0;
  }
}

- (void)setDelegate:(id)delegate
{
  v4 = objc_storeWeak(&self->_delegate, delegate);
  if (delegate)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    self->_sessionID = [WeakRetained currentInternalSessionID];
  }

  else
  {
    self->_sessionID = 0;
  }
}

- (void)setHasVended:(BOOL)vended
{
  self->_hasVended = vended;
  __ICOSLogCreate();
  v4 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v5 = [&stru_100038B48 substringWithRange:{0, 18}];
    v4 = [v5 stringByAppendingString:@".."];
  }

  if (self->_hasVended)
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v7 = [NSString stringWithFormat:@"PTPSecurityModel Has Vended: %s", v6];
  v8 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v4;
    v10 = v8;
    *buf = 136446466;
    uTF8String = [(__CFString *)v4 UTF8String];
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }
}

- (BOOL)updateProtectionStatus:(int64_t)status
{
  deviceWasUnlocked = self->_deviceWasUnlocked;
  photoLibraryIsAvailable = self->_photoLibraryIsAvailable;
  hostIsTrusted = self->_hostIsTrusted;
  photoStorageIsAvailable = self->_photoStorageIsAvailable;
  v9 = sub_10000C470();
  v10 = v9;
  if (status > 2)
  {
    if (status == 3)
    {
      self->_hostIsTrusted = 1;
      v13 = hostIsTrusted == 0;
      goto LABEL_25;
    }

    if (status != 4)
    {
      v13 = status == 5;
      goto LABEL_25;
    }

    v16 = MKBGetDeviceLockState();
    if (v16)
    {
      v17 = v16 == 3;
    }

    else
    {
      v17 = 1;
    }

    v18 = v17;
    v19 = self->_deviceWasUnlocked;
    if (!self->_deviceWasUnlocked && v18)
    {
      v19 = 1;
      self->_deviceWasUnlocked = 1;
    }

    v12 = deviceWasUnlocked == v19;
  }

  else if (status)
  {
    if (status == 1)
    {
      isPhotoStorageAvailable = [(PTPSecurityModel *)self isPhotoStorageAvailable];
      self->_photoStorageIsAvailable = isPhotoStorageAvailable;
      v12 = photoStorageIsAvailable == isPhotoStorageAvailable;
    }

    else
    {
      if (status != 2)
      {
        v13 = 0;
        goto LABEL_25;
      }

      is_host_trusted = lockdown_is_host_trusted();
      self->_hostIsTrusted = is_host_trusted;
      v12 = hostIsTrusted == is_host_trusted;
    }
  }

  else
  {
    libraryIsAvailable = [v9 libraryIsAvailable];
    self->_photoLibraryIsAvailable = libraryIsAvailable;
    v12 = photoLibraryIsAvailable == libraryIsAvailable;
  }

  v13 = !v12;
LABEL_25:

  return v13;
}

- (id)prettyHostID
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!WeakRetained)
  {
    return 0;
  }

  v4 = objc_loadWeakRetained(&self->_delegate);
  hostIsWindows = [v4 hostIsWindows];

  if (hostIsWindows)
  {
    return @"Windows";
  }

  v7 = objc_loadWeakRetained(&self->_delegate);
  hostIsMacOS = [v7 hostIsMacOS];

  if (hostIsMacOS)
  {
    return @"macOS";
  }

  v9 = objc_loadWeakRetained(&self->_delegate);
  hostIsLegacyOS = [v9 hostIsLegacyOS];

  if (hostIsLegacyOS)
  {
    return @"OSX";
  }

  else
  {
    return @"PTP";
  }
}

- (id)prettyAccess:(int64_t)access value:(BOOL)value
{
  if (access > 5)
  {
    v6 = @"Undefined";
  }

  else
  {
    v4 = off_1000387B8[access];
    v5 = sub_1000025B4(value);
    v6 = [NSString stringWithFormat:v4, v5];
  }

  return v6;
}

- (void)handleProtectionStatusChanged:(int64_t)changed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = [(PTPSecurityModel *)self updateProtectionStatus:changed];

    if (v7)
    {
      if ([(PTPSecurityModel *)self shouldRemovePlaceholderStorage])
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100003250;
        block[3] = &unk_100038770;
        block[4] = self;
        dispatch_async(&_dispatch_main_q, block);
      }

      if ([(PTPSecurityModel *)self shouldVendPhotoStorage])
      {
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_1000033B0;
        v8[3] = &unk_100038770;
        v8[4] = self;
        dispatch_async(&_dispatch_main_q, v8);
      }
    }
  }
}

- (void)handleInternalSettingsChanged
{
  __ICOSLogCreate();
  v3 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v4 = [&stru_100038B48 substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [NSString stringWithFormat:@"ApplePTP Internal Settings Changed"];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3;
    v8 = v6;
    v11 = 136446466;
    uTF8String = [(__CFString *)v3 UTF8String];
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v11, 0x16u);
  }

  __ICReadPrefs();
  [(PTPSecurityModel *)self setHasVended:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 handleInternalSettingsChanged];
  }
}

- (void)handleThrottleChanged
{
  v2 = sub_1000041D0();
  v3 = vcvtd_n_f64_u32(v2, 0xAuLL);
  v4 = sub_1000041D0();
  __ICOSLogCreate();
  v5 = [&stru_100038B48 length];
  if (v4)
  {
    v6 = 512.0 / v2;
    if (v5 < 0x15)
    {
      v8 = &stru_100038B48;
    }

    else
    {
      v7 = [&stru_100038B48 substringWithRange:{0, 18}];
      v8 = [v7 stringByAppendingString:@".."];
    }

    v10 = [NSString stringWithFormat:@"Throttle Enabled [Size: %.2fKB Rate: %.2fMB/s Delay: %.2fs]\n", 0x4080000000000000, *&v3, *&v6];
    v11 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:
      v12 = v8;
      v13 = v11;
      *buf = 136446466;
      uTF8String = [(__CFString *)v8 UTF8String];
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (v5 < 0x15)
    {
      v8 = &stru_100038B48;
    }

    else
    {
      v9 = [&stru_100038B48 substringWithRange:{0, 18}];
      v8 = [v9 stringByAppendingString:@".."];
    }

    v10 = [NSString stringWithFormat:@"Throttle Disabled [Rate: %.2fMB/s]\n", *&v3];
    v11 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }
  }
}

- (BOOL)isPhotoStorageAvailable
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    return 0;
  }

  v4 = WeakRetained;
  v5 = objc_loadWeakRetained(&self->_delegate);
  photoStorageAvailable = [v5 photoStorageAvailable];

  if (!photoStorageAvailable)
  {
    return 0;
  }

  bOOLValue = [photoStorageAvailable BOOLValue];

  return bOOLValue;
}

- (BOOL)shouldVendPhotoStorage
{
  canVendPhotoStorage = [(PTPSecurityModel *)self canVendPhotoStorage];
  if (canVendPhotoStorage)
  {
    LOBYTE(canVendPhotoStorage) = !self->_hasVended;
  }

  return canVendPhotoStorage;
}

- (BOOL)canVendPhotoStorage
{
  v3 = self->_photoLibraryIsAvailable && self->_hostIsTrusted && self->_photoStorageIsAvailable && self->_deviceWasUnlocked;
  v4 = [(PTPSecurityModel *)self prettyAccess:4 value:self->_deviceWasUnlocked];
  v5 = [(PTPSecurityModel *)self prettyAccess:0 value:self->_photoLibraryIsAvailable];
  v6 = [(PTPSecurityModel *)self prettyAccess:1 value:self->_photoStorageIsAvailable];
  v7 = [(PTPSecurityModel *)self prettyAccess:2 value:self->_hostIsTrusted];
  __ICOSLogCreate();
  v8 = @"<Photos>";
  if ([(__CFString *)v8 length]>= 0x15)
  {
    v9 = [(__CFString *)v8 substringWithRange:0, 18];
    v10 = [v9 stringByAppendingString:@".."];

    v8 = v10;
  }

  v11 = @"❌";
  if (v3)
  {
    v11 = @"✅";
  }

  v12 = [NSString stringWithFormat:@"%@ [%20@ %20@ %20@ %20@]\n", v11, v4, v5, v6, v7];
  v13 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v8;
    v15 = v13;
    *buf = 136446466;
    uTF8String = [(__CFString *)v8 UTF8String];
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  return v3;
}

- (void)registerForSecurityNotifications
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_100003EF0;
  v11[4] = sub_100003F00;
  selfCopy = self;
  v12 = selfCopy;
  v3 = [kLockdownNotificationTrustedPTPAttached cStringUsingEncoding:4];
  v4 = &_dispatch_main_q;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100003F08;
  handler[3] = &unk_100038798;
  handler[4] = v11;
  notify_register_dispatch(v3, &selfCopy->_trustedHostToken, &_dispatch_main_q, handler);

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003F64;
  v9[3] = &unk_100038798;
  v9[4] = v11;
  notify_register_dispatch(kMobileKeyBagLockStatusNotifyToken, &selfCopy->_lockStatusToken, &_dispatch_main_q, v9);

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003FC0;
  v8[3] = &unk_100038798;
  v8[4] = v11;
  notify_register_dispatch("com.apple.ptpd.photoStorageChanged", &selfCopy->_photoStorageToken, &_dispatch_main_q, v8);

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000401C;
  v7[3] = &unk_100038798;
  v7[4] = v11;
  notify_register_dispatch("com.apple.ptpd.photoLibraryChanged", &selfCopy->_photoLibraryToken, &_dispatch_main_q, v7);

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004078;
  v6[3] = &unk_100038798;
  v6[4] = v11;
  notify_register_dispatch("com.apple.ImageCaptureFramework.prefsChanged", &selfCopy->_prefsChangedToken, &_dispatch_main_q, v6);

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000040D0;
  v5[3] = &unk_100038798;
  v5[4] = v11;
  notify_register_dispatch("com.apple.ImageCaptureFramework.throttleRateChanged", &selfCopy->_throttleChangedToken, &_dispatch_main_q, v5);

  _Block_object_dispose(v11, 8);
}

- (void)unregisterForSecurityNotifications
{
  notify_cancel(self->_trustedHostToken);
  notify_cancel(self->_lockStatusToken);
  notify_cancel(self->_prefsChangedToken);
  notify_cancel(self->_photoStorageToken);
  notify_cancel(self->_photoLibraryToken);
  throttleChangedToken = self->_throttleChangedToken;

  notify_cancel(throttleChangedToken);
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end