@interface MSDRapportPairingHandler
- (MSDRapportPairingHandler)initWithDevice:(id)device andCompletion:(id)completion;
- (id)description;
- (void)_activate;
- (void)_fetchPairingSecretFromServer;
- (void)_handleKVStoreResponse:(id)response;
- (void)_handlePasswordPromptWithFlags:(unsigned int)flags throttleSeconds:(int)seconds;
- (void)_hanldeAuthCompletionWithError:(id)error;
- (void)activate;
- (void)dealloc;
@end

@implementation MSDRapportPairingHandler

- (MSDRapportPairingHandler)initWithDevice:(id)device andCompletion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  v33.receiver = self;
  v33.super_class = MSDRapportPairingHandler;
  v8 = [(MSDRapportPairingHandler *)&v33 init];
  v9 = v8;
  if (v8)
  {
    [(MSDRapportPairingHandler *)v8 setCompletionHandler:completionCopy];
    [(MSDRapportPairingHandler *)v9 setDevice:deviceCopy];
    v10 = dispatch_queue_create("com.apple.MobileStoreDemo.RapportPairingHandler", 0);
    [(MSDRapportPairingHandler *)v9 setQueue:v10];

    [(MSDRapportPairingHandler *)v9 setRetryLeft:1];
    objc_initWeak(&location, v9);
    v11 = objc_alloc_init(RPCompanionLinkClient);
    [(MSDRapportPairingHandler *)v9 setRpClient:v11];

    queue = [(MSDRapportPairingHandler *)v9 queue];
    rpClient = [(MSDRapportPairingHandler *)v9 rpClient];
    [rpClient setDispatchQueue:queue];

    rpClient2 = [(MSDRapportPairingHandler *)v9 rpClient];
    [rpClient2 setControlFlags:1030];

    rpClient3 = [(MSDRapportPairingHandler *)v9 rpClient];
    [rpClient3 setFlags:1];

    rpDevice = [deviceCopy rpDevice];
    rpClient4 = [(MSDRapportPairingHandler *)v9 rpClient];
    [rpClient4 setDestinationDevice:rpDevice];

    rpClient5 = [(MSDRapportPairingHandler *)v9 rpClient];
    [rpClient5 setPasswordType:2];

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10002126C;
    v30[3] = &unk_100169C78;
    objc_copyWeak(&v31, &location);
    rpClient6 = [(MSDRapportPairingHandler *)v9 rpClient];
    [rpClient6 setInterruptionHandler:v30];

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000212F8;
    v28[3] = &unk_100169C78;
    objc_copyWeak(&v29, &location);
    rpClient7 = [(MSDRapportPairingHandler *)v9 rpClient];
    [rpClient7 setInvalidationHandler:v28];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100021384;
    v26[3] = &unk_10016A178;
    objc_copyWeak(&v27, &location);
    rpClient8 = [(MSDRapportPairingHandler *)v9 rpClient];
    [rpClient8 setAuthCompletionHandler:v26];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000213E0;
    v24[3] = &unk_10016A1A0;
    objc_copyWeak(&v25, &location);
    rpClient9 = [(MSDRapportPairingHandler *)v9 rpClient];
    [rpClient9 setPromptForPasswordHandler:v24];

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
    device = [(MSDRapportPairingHandler *)self device];
    *buf = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = device;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Deallocating handler for device: %{public}@!", buf, 0x16u);
  }

  rpClient = [(MSDRapportPairingHandler *)self rpClient];

  if (rpClient)
  {
    rpClient2 = [(MSDRapportPairingHandler *)self rpClient];
    [rpClient2 setInvalidationHandler:0];

    rpClient3 = [(MSDRapportPairingHandler *)self rpClient];
    [rpClient3 invalidate];

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
    device = [(MSDRapportPairingHandler *)self device];
    *buf = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = device;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Activating handler for device: %{public}@!", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = [(MSDRapportPairingHandler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000216EC;
  block[3] = &unk_100169C78;
  objc_copyWeak(&v7, buf);
  dispatch_async(queue, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)_activate
{
  queue = [(MSDRapportPairingHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_initWeak(&location, self);
  rpClient = [(MSDRapportPairingHandler *)self rpClient];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100021818;
  v5[3] = &unk_10016A178;
  objc_copyWeak(&v6, &location);
  [rpClient activateWithCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_hanldeAuthCompletionWithError:(id)error
{
  errorCopy = error;
  queue = [(MSDRapportPairingHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100063A54();
  localizedDescription = v6;
  if (errorCopy)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000CA954(self, errorCopy);
    }

    localizedDescription = [errorCopy localizedDescription];
    v8 = [NSError errorDomainMSDWithCode:3727741107 message:@"Cannot authenticate demo peer." reason:localizedDescription];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, localizedDescription, OS_LOG_TYPE_DEFAULT, "%{public}@: Authentication successfully completed!", &v11, 0xCu);
    }

    v8 = 0;
  }

  completionHandler = [(MSDRapportPairingHandler *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(MSDRapportPairingHandler *)self completionHandler];
    (completionHandler2)[2](completionHandler2, v8);
  }
}

- (void)_handlePasswordPromptWithFlags:(unsigned int)flags throttleSeconds:(int)seconds
{
  queue = [(MSDRapportPairingHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v18 = flags;
    *&v18[4] = 1024;
    *&v18[6] = seconds;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MSDRapportPairingHandler: Pairing secret requested with flags: %d throttle: %d", buf, 0xEu);
  }

  v9 = 1000000000;
  if ((flags & 0x20000) != 0 && seconds >= 1)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *v18 = self;
      *&v18[8] = 1024;
      secondsCopy = seconds;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Authentication needs to be throttled: %d", buf, 0x12u);
    }

    v9 = 1000000000 * (seconds + 1);
  }

  if ((flags & 0x10000) != 0)
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
    queue2 = [(MSDRapportPairingHandler *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100021DD8;
    block[3] = &unk_100169C78;
    objc_copyWeak(&v16, buf);
    dispatch_after(v12, queue2, block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

- (void)_fetchPairingSecretFromServer
{
  queue = [(MSDRapportPairingHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v13 = 2048;
    retryLeft = [(MSDRapportPairingHandler *)self retryLeft];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetching pairing secret from server with retry left: %ld", buf, 0x16u);
  }

  v5 = objc_alloc_init(MSDKVStoreRequest);
  objc_initWeak(buf, self);
  [(MSDKVStoreRequest *)v5 setIsPost:0];
  device = [(MSDRapportPairingHandler *)self device];
  identifier = [device identifier];
  [(MSDKVStoreRequest *)v5 setKey:identifier];

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

- (void)_handleKVStoreResponse:(id)response
{
  responseCopy = response;
  queue = [(MSDRapportPairingHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  value = [responseCopy value];
  error = [responseCopy error];

  v8 = sub_100063A54();
  v9 = v8;
  if (error || !value)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000CA9F8(self, error);
    }

    [(MSDRapportPairingHandler *)self setRetryLeft:[(MSDRapportPairingHandler *)self retryLeft]- 1];
    if ([(MSDRapportPairingHandler *)self retryLeft]< 1)
    {
      [(MSDRapportPairingHandler *)self _hanldeAuthCompletionWithError:error];
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
      selfCopy = self;
      v13 = 2114;
      v14 = value;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Found pairing secret: %{public}@", &v11, 0x16u);
    }

    rpClient = [(MSDRapportPairingHandler *)self rpClient];
    [rpClient tryPassword:value];
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