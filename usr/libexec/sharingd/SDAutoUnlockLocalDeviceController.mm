@interface SDAutoUnlockLocalDeviceController
- (BOOL)faceIDEnabled;
- (BOOL)supportsPeriocular;
- (SDAutoUnlockLocalDeviceController)initWithQueue:(id)queue;
- (void)handleBioLockoutStateChanged:(unint64_t)changed;
- (void)lockDevice;
- (void)lockWithBioLockOut;
@end

@implementation SDAutoUnlockLocalDeviceController

- (BOOL)faceIDEnabled
{
  v3 = +[NSUserDefaults standardUserDefaults];
  if ([v3 BOOLForKey:@"phoneAutoUnlockSkipFaceID"])
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Skipping FaceID check due to default phoneAutoUnlockSkipFaceID", buf, 2u);
    }

    v5 = 1;
  }

  else
  {
    pearlDevice = self->_pearlDevice;
    v17 = 0;
    v7 = [(BKDevicePearl *)pearlDevice identitiesWithError:&v17];
    v4 = v17;
    if (v4)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 == 0;
    }

    if (v8)
    {
      v9 = auto_unlock_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10005823C(v4, v9, v10, v11, v12, v13, v14, v15);
      }

      v5 = 0;
    }

    else
    {
      v5 = [v7 count] != 0;
    }
  }

  return v5;
}

- (SDAutoUnlockLocalDeviceController)initWithQueue:(id)queue
{
  queueCopy = queue;
  v33.receiver = self;
  v33.super_class = SDAutoUnlockLocalDeviceController;
  v6 = [(SDAutoUnlockLocalDeviceController *)&v33 init];
  objc_storeStrong(&v6->_queue, queue);
  if (SFDeviceSupportsAutoUnlock())
  {
    +[BKDeviceManager availableDevices];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v7 = v30 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = *v30;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          v28 = 0;
          v12 = [BKDevice deviceWithDescriptor:v11 error:&v28];
          v13 = v28;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            pearlDevice = v6->_pearlDevice;
            v6->_pearlDevice = v12;

            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    if (!v6->_pearlDevice)
    {
      v15 = auto_unlock_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000581D0(v7, v15, v16, v17, v18, v19, v20, v21);
      }
    }

    objc_initWeak(&location, v6);
    out_token = 0;
    queue = v6->_queue;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100057DBC;
    v24[3] = &unk_1008CDD58;
    objc_copyWeak(&v25, &location);
    notify_register_dispatch("com.apple.BiometricKit.lockoutStateChanged", &out_token, queue, v24);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (BOOL)supportsPeriocular
{
  pearlDevice = self->_pearlDevice;
  v14 = 0;
  v3 = [(BKDevicePearl *)pearlDevice supportsPeriocularEnrollmentWithError:&v14];
  v4 = v14;
  if (v4)
  {
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000582A8(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)lockWithBioLockOut
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Locking current device and forcing bio lockout", buf, 2u);
  }

  pearlDevice = [(SDAutoUnlockLocalDeviceController *)self pearlDevice];
  v7 = 0;
  [pearlDevice forceBioLockoutForUser:getuid() error:&v7];
  v5 = v7;

  if (v5)
  {
    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100058314(v6);
    }
  }

  [(SDAutoUnlockLocalDeviceController *)self lockDevice];
}

- (void)lockDevice
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Locking current device", v3, 2u);
  }

  sub_1001EA8AC();
}

- (void)handleBioLockoutStateChanged:(unint64_t)changed
{
  if (changed == 3)
  {
    deviceEnteredBioLockoutHandler = [(SDAutoUnlockLocalDeviceController *)self deviceEnteredBioLockoutHandler];

    if (deviceEnteredBioLockoutHandler)
    {
      deviceEnteredBioLockoutHandler2 = [(SDAutoUnlockLocalDeviceController *)self deviceEnteredBioLockoutHandler];
      deviceEnteredBioLockoutHandler2[2]();
    }
  }
}

@end