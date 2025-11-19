@interface MSDRapportPairingHandler
- (MSDRapportPairingHandler)initWithDevice:(id)a3 andCompletion:(id)a4;
- (id)description;
- (void)_activate;
- (void)_fetchPairingSecretFromServer;
- (void)_handleKVStoreResponse:(id)a3;
- (void)_handlePasswordPromptWithFlags:(unsigned int)a3 throttleSeconds:(int)a4;
- (void)_hanldeAuthCompletionWithError:(id)a3;
- (void)activate;
- (void)dealloc;
@end

@implementation MSDRapportPairingHandler

- (MSDRapportPairingHandler)initWithDevice:(id)a3 andCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v33.receiver = self;
  v33.super_class = MSDRapportPairingHandler;
  v8 = [(MSDRapportPairingHandler *)&v33 init];
  v9 = v8;
  if (v8)
  {
    [(MSDRapportPairingHandler *)v8 setCompletionHandler:v7];
    [(MSDRapportPairingHandler *)v9 setDevice:v6];
    v10 = dispatch_queue_create("com.apple.MobileStoreDemo.RapportPairingHandler", 0);
    [(MSDRapportPairingHandler *)v9 setQueue:v10];

    [(MSDRapportPairingHandler *)v9 setRetryLeft:1];
    objc_initWeak(&location, v9);
    v11 = objc_alloc_init(RPCompanionLinkClient);
    [(MSDRapportPairingHandler *)v9 setRpClient:v11];

    v12 = [(MSDRapportPairingHandler *)v9 queue];
    v13 = [(MSDRapportPairingHandler *)v9 rpClient];
    [v13 setDispatchQueue:v12];

    v14 = [(MSDRapportPairingHandler *)v9 rpClient];
    [v14 setControlFlags:1030];

    v15 = [(MSDRapportPairingHandler *)v9 rpClient];
    [v15 setFlags:1];

    v16 = [v6 rpDevice];
    v17 = [(MSDRapportPairingHandler *)v9 rpClient];
    [v17 setDestinationDevice:v16];

    v18 = [(MSDRapportPairingHandler *)v9 rpClient];
    [v18 setPasswordType:2];

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10002126C;
    v30[3] = &unk_100169C78;
    objc_copyWeak(&v31, &location);
    v19 = [(MSDRapportPairingHandler *)v9 rpClient];
    [v19 setInterruptionHandler:v30];

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000212F8;
    v28[3] = &unk_100169C78;
    objc_copyWeak(&v29, &location);
    v20 = [(MSDRapportPairingHandler *)v9 rpClient];
    [v20 setInvalidationHandler:v28];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100021384;
    v26[3] = &unk_10016A178;
    objc_copyWeak(&v27, &location);
    v21 = [(MSDRapportPairingHandler *)v9 rpClient];
    [v21 setAuthCompletionHandler:v26];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000213E0;
    v24[3] = &unk_10016A1A0;
    objc_copyWeak(&v25, &location);
    v22 = [(MSDRapportPairingHandler *)v9 rpClient];
    [v22 setPromptForPasswordHandler:v24];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)dealloc
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MSDRapportPairingHandler *)self device];
    *buf = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Deallocating handler for device: %{public}@!", buf, 0x16u);
  }

  v5 = [(MSDRapportPairingHandler *)self rpClient];

  if (v5)
  {
    v6 = [(MSDRapportPairingHandler *)self rpClient];
    [v6 setInvalidationHandler:0];

    v7 = [(MSDRapportPairingHandler *)self rpClient];
    [v7 invalidate];

    [(MSDRapportPairingHandler *)self setRpClient:0];
  }

  v8.receiver = self;
  v8.super_class = MSDRapportPairingHandler;
  [(MSDRapportPairingHandler *)&v8 dealloc];
}

- (void)activate
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MSDRapportPairingHandler *)self device];
    *buf = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Activating handler for device: %{public}@!", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v5 = [(MSDRapportPairingHandler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000216EC;
  block[3] = &unk_100169C78;
  objc_copyWeak(&v7, buf);
  dispatch_async(v5, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)_activate
{
  v3 = [(MSDRapportPairingHandler *)self queue];
  dispatch_assert_queue_V2(v3);

  objc_initWeak(&location, self);
  v4 = [(MSDRapportPairingHandler *)self rpClient];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100021818;
  v5[3] = &unk_10016A178;
  objc_copyWeak(&v6, &location);
  [v4 activateWithCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_hanldeAuthCompletionWithError:(id)a3
{
  v4 = a3;
  v5 = [(MSDRapportPairingHandler *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100063A54();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000CA954(self, v4);
    }

    v7 = [v4 localizedDescription];
    v8 = [NSError errorDomainMSDWithCode:3727741107 message:@"Cannot authenticate demo peer." reason:v7];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Authentication successfully completed!", &v11, 0xCu);
    }

    v8 = 0;
  }

  v9 = [(MSDRapportPairingHandler *)self completionHandler];

  if (v9)
  {
    v10 = [(MSDRapportPairingHandler *)self completionHandler];
    (v10)[2](v10, v8);
  }
}

- (void)_handlePasswordPromptWithFlags:(unsigned int)a3 throttleSeconds:(int)a4
{
  v7 = [(MSDRapportPairingHandler *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v18 = a3;
    *&v18[4] = 1024;
    *&v18[6] = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MSDRapportPairingHandler: Pairing secret requested with flags: %d throttle: %d", buf, 0xEu);
  }

  v9 = 1000000000;
  if ((a3 & 0x20000) != 0 && a4 >= 1)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *v18 = self;
      *&v18[8] = 1024;
      v19 = a4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Authentication needs to be throttled: %d", buf, 0x12u);
    }

    v9 = 1000000000 * (a4 + 1);
  }

  if ((a3 & 0x10000) != 0)
  {
    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *v18 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Pairing secret provided was incorrect!", buf, 0xCu);
    }

    [(MSDRapportPairingHandler *)self setRetryLeft:[(MSDRapportPairingHandler *)self retryLeft]- 1];
  }

  if ([(MSDRapportPairingHandler *)self retryLeft]< 1)
  {
    v14 = [NSError errorDomainMSDWithCode:3727744512 message:@"Unexpected server response."];
    [(MSDRapportPairingHandler *)self _hanldeAuthCompletionWithError:v14];
  }

  else
  {
    objc_initWeak(buf, self);
    v12 = dispatch_time(0, v9);
    v13 = [(MSDRapportPairingHandler *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100021DD8;
    block[3] = &unk_100169C78;
    objc_copyWeak(&v16, buf);
    dispatch_after(v12, v13, block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

- (void)_fetchPairingSecretFromServer
{
  v3 = [(MSDRapportPairingHandler *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = self;
    v13 = 2048;
    v14 = [(MSDRapportPairingHandler *)self retryLeft];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetching pairing secret from server with retry left: %ld", buf, 0x16u);
  }

  v5 = objc_alloc_init(MSDKVStoreRequest);
  objc_initWeak(buf, self);
  [(MSDKVStoreRequest *)v5 setIsPost:0];
  v6 = [(MSDRapportPairingHandler *)self device];
  v7 = [v6 identifier];
  [(MSDKVStoreRequest *)v5 setKey:v7];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100022010;
  v9[3] = &unk_10016A1F0;
  objc_copyWeak(&v10, buf);
  [(MSDServerRequest *)v5 setCompletion:v9];
  v8 = +[MSDServerRequestHandler sharedInstance];
  [v8 handleRequestAsync:v5];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)_handleKVStoreResponse:(id)a3
{
  v4 = a3;
  v5 = [(MSDRapportPairingHandler *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 value];
  v7 = [v4 error];

  v8 = sub_100063A54();
  v9 = v8;
  if (v7 || !v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000CA9F8(self, v7);
    }

    [(MSDRapportPairingHandler *)self setRetryLeft:[(MSDRapportPairingHandler *)self retryLeft]- 1];
    if ([(MSDRapportPairingHandler *)self retryLeft]< 1)
    {
      [(MSDRapportPairingHandler *)self _hanldeAuthCompletionWithError:v7];
    }

    else
    {
      [(MSDRapportPairingHandler *)self _fetchPairingSecretFromServer];
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Found pairing secret: %{public}@", &v11, 0x16u);
    }

    v10 = [(MSDRapportPairingHandler *)self rpClient];
    [v10 tryPassword:v6];
  }
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@[%p]>", v4, self];

  return v5;
}

@end