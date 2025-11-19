@interface MSDRapportDeviceAdvertiser
- (MSDRapportDeviceAdvertiser)initWithObserver:(id)a3;
- (MSDRapportDeviceAdvertiserProtocol)observer;
- (void)_activate;
- (void)_deactivate;
- (void)_handleHidePasswordWithFlags:(unsigned int)a3;
- (void)_handleLocalDeviceUpdated;
- (void)_handleRPCompanionClientActivateCompletionWithError:(id)a3;
- (void)_handleShowPassword:(id)a3 withFlags:(unsigned int)a4;
- (void)activate;
- (void)deactivate;
@end

@implementation MSDRapportDeviceAdvertiser

- (MSDRapportDeviceAdvertiser)initWithObserver:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MSDRapportDeviceAdvertiser;
  v5 = [(MSDRapportDeviceAdvertiser *)&v8 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.MobileStoreDemo.RPDeviceAdvertiser", 0);
    [(MSDRapportDeviceAdvertiser *)v5 setQueue:v6];

    [(MSDRapportDeviceAdvertiser *)v5 setObserver:v4];
  }

  return v5;
}

- (void)activate
{
  objc_initWeak(&location, self);
  v3 = [(MSDRapportDeviceAdvertiser *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062AD4;
  v4[3] = &unk_100169C78;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)deactivate
{
  objc_initWeak(&location, self);
  v3 = [(MSDRapportDeviceAdvertiser *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062BDC;
  v4[3] = &unk_100169C78;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_activate
{
  v3 = [(MSDRapportDeviceAdvertiser *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceAdvertiser: Activating advertiser!", buf, 2u);
  }

  CFPrefs_SetValue();
  CFPreferencesAppSynchronize(@"com.apple.Sharing");
  objc_initWeak(buf, self);
  v5 = [(MSDRapportDeviceAdvertiser *)self rpClient];

  if (!v5)
  {
    v6 = objc_alloc_init(RPCompanionLinkClient);
    [(MSDRapportDeviceAdvertiser *)self setRpClient:v6];

    v7 = [(MSDRapportDeviceAdvertiser *)self queue];
    v8 = [(MSDRapportDeviceAdvertiser *)self rpClient];
    [v8 setDispatchQueue:v7];

    v9 = [(MSDRapportDeviceAdvertiser *)self rpClient];
    [v9 setInterruptionHandler:&stru_10016B138];

    v10 = [(MSDRapportDeviceAdvertiser *)self rpClient];
    [v10 setInvalidationHandler:&stru_10016B158];

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000631A0;
    v33[3] = &unk_10016AD10;
    objc_copyWeak(&v34, buf);
    v11 = [(MSDRapportDeviceAdvertiser *)self rpClient];
    [v11 setLocalDeviceUpdatedHandler:v33];

    v12 = [(MSDRapportDeviceAdvertiser *)self rpClient];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000631E0;
    v31[3] = &unk_10016A178;
    objc_copyWeak(&v32, buf);
    [v12 activateWithCompletion:v31];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
  }

  v13 = [(MSDRapportDeviceAdvertiser *)self rpServer];

  if (!v13)
  {
    v14 = objc_alloc_init(RPServer);
    [(MSDRapportDeviceAdvertiser *)self setRpServer:v14];

    v15 = [(MSDRapportDeviceAdvertiser *)self queue];
    v16 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [v16 setDispatchQueue:v15];

    v17 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [v17 setControlFlags:66566];

    v18 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [v18 setPasswordType:2];

    v19 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [v19 setPairSetupFlags:0x8000000];

    v20 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [v20 setServiceType:@"com.apple.MobileStoreDemo"];

    v21 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [v21 setErrorHandler:&stru_10016B178];

    v22 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [v22 setInterruptionHandler:&stru_10016B198];

    v23 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [v23 setInvalidationHandler:&stru_10016B1B8];

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100063318;
    v29[3] = &unk_10016B1E0;
    objc_copyWeak(&v30, buf);
    v24 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [v24 setShowPasswordHandler:v29];

    objc_copyWeak(&v28, buf);
    v25 = [(MSDRapportDeviceAdvertiser *)self rpServer:_NSConcreteStackBlock];
    [v25 setHidePasswordHandler:&v27];

    v26 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [v26 activate];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
  }

  objc_destroyWeak(buf);
}

- (void)_deactivate
{
  v3 = [(MSDRapportDeviceAdvertiser *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceAdvertiser: Deactivating advertiser!", v9, 2u);
  }

  CFPrefs_RemoveValue();
  CFPreferencesAppSynchronize(@"com.apple.Sharing");
  v5 = [(MSDRapportDeviceAdvertiser *)self rpClient];

  if (v5)
  {
    v6 = [(MSDRapportDeviceAdvertiser *)self rpClient];
    [v6 invalidate];

    [(MSDRapportDeviceAdvertiser *)self setRpClient:0];
  }

  v7 = [(MSDRapportDeviceAdvertiser *)self rpServer];

  if (v7)
  {
    v8 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [v8 invalidate];

    [(MSDRapportDeviceAdvertiser *)self setRpServer:0];
  }
}

- (void)_handleLocalDeviceUpdated
{
  v3 = [(MSDRapportDeviceAdvertiser *)self rpLocalDevice];
  v4 = [(MSDRapportDeviceAdvertiser *)self rpClient];
  v5 = [v4 localDevice];

  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v3;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceAdvertiser: Local device updated from: <%{public}@> to: <%{public}@>", &v11, 0x16u);
  }

  [(MSDRapportDeviceAdvertiser *)self setRpLocalDevice:v5];
  v7 = [(MSDRapportDeviceAdvertiser *)self observer];

  if (v7)
  {
    v8 = [(MSDRapportDeviceAdvertiser *)self observer];
    v9 = [v3 publicIdentifier];
    v10 = [v5 publicIdentifier];
    [v8 advertiserDidUpdateLocalDevicePublicIDFrom:v9 to:v10];
  }
}

- (void)_handleRPCompanionClientActivateCompletionWithError:(id)a3
{
  v4 = a3;
  v5 = [(MSDRapportDeviceAdvertiser *)self queue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000D6798(v4);
    }
  }

  else
  {
    v7 = [(MSDRapportDeviceAdvertiser *)self rpClient];
    v8 = [v7 localDevice];
    [(MSDRapportDeviceAdvertiser *)self setRpLocalDevice:v8];

    v9 = [(MSDRapportDeviceAdvertiser *)self observer];

    if (v9)
    {
      v10 = [(MSDRapportDeviceAdvertiser *)self observer];
      v11 = [(MSDRapportDeviceAdvertiser *)self rpLocalDevice];
      v12 = [v11 publicIdentifier];
      [v10 advertiserDidUpdateLocalDevicePublicIDFrom:0 to:v12];
    }
  }
}

- (void)_handleShowPassword:(id)a3 withFlags:(unsigned int)a4
{
  v6 = a3;
  v7 = [(MSDRapportDeviceAdvertiser *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceAdvertiser: Show password: %@ with flags: %u", &v11, 0x12u);
  }

  v9 = [(MSDRapportDeviceAdvertiser *)self observer];

  if (v9)
  {
    v10 = [(MSDRapportDeviceAdvertiser *)self observer];
    [v10 advertiserDidShowPairingPassword:v6];
  }
}

- (void)_handleHidePasswordWithFlags:(unsigned int)a3
{
  v5 = [(MSDRapportDeviceAdvertiser *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceAdvertiser: Hide password with flags: %u", v9, 8u);
  }

  v7 = [(MSDRapportDeviceAdvertiser *)self observer];

  if (v7)
  {
    v8 = [(MSDRapportDeviceAdvertiser *)self observer];
    [v8 advertiserDidHidePairingPassword];
  }
}

- (MSDRapportDeviceAdvertiserProtocol)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end