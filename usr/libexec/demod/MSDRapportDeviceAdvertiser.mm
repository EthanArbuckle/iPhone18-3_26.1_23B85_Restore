@interface MSDRapportDeviceAdvertiser
- (MSDRapportDeviceAdvertiser)initWithObserver:(id)observer;
- (MSDRapportDeviceAdvertiserProtocol)observer;
- (void)_activate;
- (void)_deactivate;
- (void)_handleHidePasswordWithFlags:(unsigned int)flags;
- (void)_handleLocalDeviceUpdated;
- (void)_handleRPCompanionClientActivateCompletionWithError:(id)error;
- (void)_handleShowPassword:(id)password withFlags:(unsigned int)flags;
- (void)activate;
- (void)deactivate;
@end

@implementation MSDRapportDeviceAdvertiser

- (MSDRapportDeviceAdvertiser)initWithObserver:(id)observer
{
  observerCopy = observer;
  v8.receiver = self;
  v8.super_class = MSDRapportDeviceAdvertiser;
  v5 = [(MSDRapportDeviceAdvertiser *)&v8 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.MobileStoreDemo.RPDeviceAdvertiser", 0);
    [(MSDRapportDeviceAdvertiser *)v5 setQueue:v6];

    [(MSDRapportDeviceAdvertiser *)v5 setObserver:observerCopy];
  }

  return v5;
}

- (void)activate
{
  objc_initWeak(&location, self);
  queue = [(MSDRapportDeviceAdvertiser *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062AD4;
  v4[3] = &unk_100169C78;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)deactivate
{
  objc_initWeak(&location, self);
  queue = [(MSDRapportDeviceAdvertiser *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062BDC;
  v4[3] = &unk_100169C78;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_activate
{
  queue = [(MSDRapportDeviceAdvertiser *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceAdvertiser: Activating advertiser!", buf, 2u);
  }

  CFPrefs_SetValue();
  CFPreferencesAppSynchronize(@"com.apple.Sharing");
  objc_initWeak(buf, self);
  rpClient = [(MSDRapportDeviceAdvertiser *)self rpClient];

  if (!rpClient)
  {
    v6 = objc_alloc_init(RPCompanionLinkClient);
    [(MSDRapportDeviceAdvertiser *)self setRpClient:v6];

    queue2 = [(MSDRapportDeviceAdvertiser *)self queue];
    rpClient2 = [(MSDRapportDeviceAdvertiser *)self rpClient];
    [rpClient2 setDispatchQueue:queue2];

    rpClient3 = [(MSDRapportDeviceAdvertiser *)self rpClient];
    [rpClient3 setInterruptionHandler:&stru_10016B138];

    rpClient4 = [(MSDRapportDeviceAdvertiser *)self rpClient];
    [rpClient4 setInvalidationHandler:&stru_10016B158];

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000631A0;
    v33[3] = &unk_10016AD10;
    objc_copyWeak(&v34, buf);
    rpClient5 = [(MSDRapportDeviceAdvertiser *)self rpClient];
    [rpClient5 setLocalDeviceUpdatedHandler:v33];

    rpClient6 = [(MSDRapportDeviceAdvertiser *)self rpClient];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000631E0;
    v31[3] = &unk_10016A178;
    objc_copyWeak(&v32, buf);
    [rpClient6 activateWithCompletion:v31];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
  }

  rpServer = [(MSDRapportDeviceAdvertiser *)self rpServer];

  if (!rpServer)
  {
    v14 = objc_alloc_init(RPServer);
    [(MSDRapportDeviceAdvertiser *)self setRpServer:v14];

    queue3 = [(MSDRapportDeviceAdvertiser *)self queue];
    rpServer2 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer2 setDispatchQueue:queue3];

    rpServer3 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer3 setControlFlags:66566];

    rpServer4 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer4 setPasswordType:2];

    rpServer5 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer5 setPairSetupFlags:0x8000000];

    rpServer6 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer6 setServiceType:@"com.apple.MobileStoreDemo"];

    rpServer7 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer7 setErrorHandler:&stru_10016B178];

    rpServer8 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer8 setInterruptionHandler:&stru_10016B198];

    rpServer9 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer9 setInvalidationHandler:&stru_10016B1B8];

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100063318;
    v29[3] = &unk_10016B1E0;
    objc_copyWeak(&v30, buf);
    rpServer10 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer10 setShowPasswordHandler:v29];

    objc_copyWeak(&v28, buf);
    v25 = [(MSDRapportDeviceAdvertiser *)self rpServer:_NSConcreteStackBlock];
    [v25 setHidePasswordHandler:&v27];

    rpServer11 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer11 activate];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
  }

  objc_destroyWeak(buf);
}

- (void)_deactivate
{
  queue = [(MSDRapportDeviceAdvertiser *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceAdvertiser: Deactivating advertiser!", v9, 2u);
  }

  CFPrefs_RemoveValue();
  CFPreferencesAppSynchronize(@"com.apple.Sharing");
  rpClient = [(MSDRapportDeviceAdvertiser *)self rpClient];

  if (rpClient)
  {
    rpClient2 = [(MSDRapportDeviceAdvertiser *)self rpClient];
    [rpClient2 invalidate];

    [(MSDRapportDeviceAdvertiser *)self setRpClient:0];
  }

  rpServer = [(MSDRapportDeviceAdvertiser *)self rpServer];

  if (rpServer)
  {
    rpServer2 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer2 invalidate];

    [(MSDRapportDeviceAdvertiser *)self setRpServer:0];
  }
}

- (void)_handleLocalDeviceUpdated
{
  rpLocalDevice = [(MSDRapportDeviceAdvertiser *)self rpLocalDevice];
  rpClient = [(MSDRapportDeviceAdvertiser *)self rpClient];
  localDevice = [rpClient localDevice];

  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = rpLocalDevice;
    v13 = 2114;
    v14 = localDevice;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceAdvertiser: Local device updated from: <%{public}@> to: <%{public}@>", &v11, 0x16u);
  }

  [(MSDRapportDeviceAdvertiser *)self setRpLocalDevice:localDevice];
  observer = [(MSDRapportDeviceAdvertiser *)self observer];

  if (observer)
  {
    observer2 = [(MSDRapportDeviceAdvertiser *)self observer];
    publicIdentifier = [rpLocalDevice publicIdentifier];
    publicIdentifier2 = [localDevice publicIdentifier];
    [observer2 advertiserDidUpdateLocalDevicePublicIDFrom:publicIdentifier to:publicIdentifier2];
  }
}

- (void)_handleRPCompanionClientActivateCompletionWithError:(id)error
{
  errorCopy = error;
  queue = [(MSDRapportDeviceAdvertiser *)self queue];
  dispatch_assert_queue_V2(queue);

  if (errorCopy)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000D6798(errorCopy);
    }
  }

  else
  {
    rpClient = [(MSDRapportDeviceAdvertiser *)self rpClient];
    localDevice = [rpClient localDevice];
    [(MSDRapportDeviceAdvertiser *)self setRpLocalDevice:localDevice];

    observer = [(MSDRapportDeviceAdvertiser *)self observer];

    if (observer)
    {
      observer2 = [(MSDRapportDeviceAdvertiser *)self observer];
      rpLocalDevice = [(MSDRapportDeviceAdvertiser *)self rpLocalDevice];
      publicIdentifier = [rpLocalDevice publicIdentifier];
      [observer2 advertiserDidUpdateLocalDevicePublicIDFrom:0 to:publicIdentifier];
    }
  }
}

- (void)_handleShowPassword:(id)password withFlags:(unsigned int)flags
{
  passwordCopy = password;
  queue = [(MSDRapportDeviceAdvertiser *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = passwordCopy;
    v13 = 1024;
    flagsCopy = flags;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceAdvertiser: Show password: %@ with flags: %u", &v11, 0x12u);
  }

  observer = [(MSDRapportDeviceAdvertiser *)self observer];

  if (observer)
  {
    observer2 = [(MSDRapportDeviceAdvertiser *)self observer];
    [observer2 advertiserDidShowPairingPassword:passwordCopy];
  }
}

- (void)_handleHidePasswordWithFlags:(unsigned int)flags
{
  queue = [(MSDRapportDeviceAdvertiser *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = flags;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceAdvertiser: Hide password with flags: %u", v9, 8u);
  }

  observer = [(MSDRapportDeviceAdvertiser *)self observer];

  if (observer)
  {
    observer2 = [(MSDRapportDeviceAdvertiser *)self observer];
    [observer2 advertiserDidHidePairingPassword];
  }
}

- (MSDRapportDeviceAdvertiserProtocol)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end