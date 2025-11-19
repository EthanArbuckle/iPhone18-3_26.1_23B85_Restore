@interface PTPSecurityModel
- (BOOL)canVendPhotoStorage;
- (BOOL)isPhotoStorageAvailable;
- (BOOL)shouldVendPhotoStorage;
- (BOOL)updateProtectionStatus:(int64_t)a3;
- (PTPSecurityModel)init;
- (id)delegate;
- (id)prettyAccess:(int64_t)a3 value:(BOOL)a4;
- (id)prettyHostID;
- (void)dealloc;
- (void)handleInternalSettingsChanged;
- (void)handleProtectionStatusChanged:(int64_t)a3;
- (void)handleThrottleChanged;
- (void)registerForSecurityNotifications;
- (void)setDelegate:(id)a3;
- (void)setHasVended:(BOOL)a3;
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
    v11 = [(__CFString *)v3 UTF8String];
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
      v10 = [(__CFString *)v3 UTF8String];
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
      v10 = [(__CFString *)v3 UTF8String];
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v9, 0x16u);
    }

    [(PTPSecurityModel *)self unregisterForSecurityNotifications];
    self->_observersInstalled = 0;
  }
}

- (void)setDelegate:(id)a3
{
  v4 = objc_storeWeak(&self->_delegate, a3);
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    self->_sessionID = [WeakRetained currentInternalSessionID];
  }

  else
  {
    self->_sessionID = 0;
  }
}

- (void)setHasVended:(BOOL)a3
{
  self->_hasVended = a3;
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
    v12 = [(__CFString *)v4 UTF8String];
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }
}

- (BOOL)updateProtectionStatus:(int64_t)a3
{
  deviceWasUnlocked = self->_deviceWasUnlocked;
  photoLibraryIsAvailable = self->_photoLibraryIsAvailable;
  hostIsTrusted = self->_hostIsTrusted;
  photoStorageIsAvailable = self->_photoStorageIsAvailable;
  v9 = sub_10000C470();
  v10 = v9;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      self->_hostIsTrusted = 1;
      v13 = hostIsTrusted == 0;
      goto LABEL_25;
    }

    if (a3 != 4)
    {
      v13 = a3 == 5;
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

  else if (a3)
  {
    if (a3 == 1)
    {
      v15 = [(PTPSecurityModel *)self isPhotoStorageAvailable];
      self->_photoStorageIsAvailable = v15;
      v12 = photoStorageIsAvailable == v15;
    }

    else
    {
      if (a3 != 2)
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
    v14 = [v9 libraryIsAvailable];
    self->_photoLibraryIsAvailable = v14;
    v12 = photoLibraryIsAvailable == v14;
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
  v5 = [v4 hostIsWindows];

  if (v5)
  {
    return @"Windows";
  }

  v7 = objc_loadWeakRetained(&self->_delegate);
  v8 = [v7 hostIsMacOS];

  if (v8)
  {
    return @"macOS";
  }

  v9 = objc_loadWeakRetained(&self->_delegate);
  v10 = [v9 hostIsLegacyOS];

  if (v10)
  {
    return @"OSX";
  }

  else
  {
    return @"PTP";
  }
}

- (id)prettyAccess:(int64_t)a3 value:(BOOL)a4
{
  if (a3 > 5)
  {
    v6 = @"Undefined";
  }

  else
  {
    v4 = off_1000387B8[a3];
    v5 = sub_1000025B4(a4);
    v6 = [NSString stringWithFormat:v4, v5];
  }

  return v6;
}

- (void)handleProtectionStatusChanged:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = [(PTPSecurityModel *)self updateProtectionStatus:a3];

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
    v12 = [(__CFString *)v3 UTF8String];
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
      v15 = [(__CFString *)v8 UTF8String];
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
  v6 = [v5 photoStorageAvailable];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 BOOLValue];

  return v7;
}

- (BOOL)shouldVendPhotoStorage
{
  v3 = [(PTPSecurityModel *)self canVendPhotoStorage];
  if (v3)
  {
    LOBYTE(v3) = !self->_hasVended;
  }

  return v3;
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
    v18 = [(__CFString *)v8 UTF8String];
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
  v2 = self;
  v12 = v2;
  v3 = [kLockdownNotificationTrustedPTPAttached cStringUsingEncoding:4];
  v4 = &_dispatch_main_q;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100003F08;
  handler[3] = &unk_100038798;
  handler[4] = v11;
  notify_register_dispatch(v3, &v2->_trustedHostToken, &_dispatch_main_q, handler);

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003F64;
  v9[3] = &unk_100038798;
  v9[4] = v11;
  notify_register_dispatch(kMobileKeyBagLockStatusNotifyToken, &v2->_lockStatusToken, &_dispatch_main_q, v9);

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003FC0;
  v8[3] = &unk_100038798;
  v8[4] = v11;
  notify_register_dispatch("com.apple.ptpd.photoStorageChanged", &v2->_photoStorageToken, &_dispatch_main_q, v8);

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000401C;
  v7[3] = &unk_100038798;
  v7[4] = v11;
  notify_register_dispatch("com.apple.ptpd.photoLibraryChanged", &v2->_photoLibraryToken, &_dispatch_main_q, v7);

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004078;
  v6[3] = &unk_100038798;
  v6[4] = v11;
  notify_register_dispatch("com.apple.ImageCaptureFramework.prefsChanged", &v2->_prefsChangedToken, &_dispatch_main_q, v6);

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000040D0;
  v5[3] = &unk_100038798;
  v5[4] = v11;
  notify_register_dispatch("com.apple.ImageCaptureFramework.throttleRateChanged", &v2->_throttleChangedToken, &_dispatch_main_q, v5);

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