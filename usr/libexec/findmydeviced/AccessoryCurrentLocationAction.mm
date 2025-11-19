@interface AccessoryCurrentLocationAction
- (AccessoryCurrentLocationAction)initWithAccessory:(id)a3 locator:(id)a4 event:(int64_t)a5 completion:(id)a6;
- (BOOL)shouldCancelAction:(id)a3;
- (void)_completeLocate;
- (void)_finishAction;
- (void)_retrieveLocationNow;
- (void)_stopLocator;
- (void)accessoryDidUpdate:(id)a3;
- (void)runWithCompletion:(id)a3;
- (void)updateLocationMetaData;
- (void)validateAccessoryDiscoveryDate;
- (void)willCancelAction;
@end

@implementation AccessoryCurrentLocationAction

- (AccessoryCurrentLocationAction)initWithAccessory:(id)a3 locator:(id)a4 event:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = AccessoryCurrentLocationAction;
  v13 = [(AccessoryCurrentLocationAction *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(AccessoryCurrentLocationAction *)v13 setAccessory:v10];
    [(AccessoryCurrentLocationAction *)v14 setLocator:v11];
    [(AccessoryCurrentLocationAction *)v14 setEvent:a5];
    [(AccessoryCurrentLocationAction *)v14 setActionCompletion:v12];
  }

  return v14;
}

- (void)willCancelAction
{
  [(AccessoryCurrentLocationAction *)self _stopLocator];

  [(AccessoryCurrentLocationAction *)self _finishAction];
}

- (void)runWithCompletion:(id)a3
{
  [(AccessoryCurrentLocationAction *)self setCompletion:a3];
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Accessory current location : accessory is connected.", v5, 2u);
  }

  [(AccessoryCurrentLocationAction *)self _retrieveLocationNow];
}

- (BOOL)shouldCancelAction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(AccessoryCurrentLocationAction *)self accessory];
    v6 = [v5 accessoryIdentifier];
    v7 = [v4 accessory];
    v8 = [v7 accessoryIdentifier];
    v9 = [v6 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_retrieveLocationNow
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Accessory current location requesting location.", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = [(AccessoryCurrentLocationAction *)self locator];
  v5 = [(AccessoryCurrentLocationAction *)self accessory];
  v6 = [v5 accessoryIdentifier];
  v7 = [v6 stringValue];

  v8 = [(AccessoryCurrentLocationAction *)self event];
  objc_initWeak(&location, v4);
  v9 = [v4 locatorPublisher];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10013063C;
  v18[3] = &unk_1002CD4A0;
  objc_copyWeak(&v20, buf);
  v10 = v7;
  v19 = v10;
  v21[1] = v8;
  objc_copyWeak(v21, &location);
  [v9 startPublishingWithBlock:v18];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013077C;
  v15[3] = &unk_1002CD288;
  objc_copyWeak(&v17, buf);
  v11 = v10;
  v16 = v11;
  [v4 setStoppedLocatorBlock:v15];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10013088C;
  v13[3] = &unk_1002CD4C8;
  v14 = v4;
  v12 = v4;
  dispatch_async(&_dispatch_main_q, v13);

  objc_destroyWeak(&v17);
  objc_destroyWeak(v21);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  objc_destroyWeak(buf);
}

- (void)_finishAction
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Accessory current location terminating.", v9, 2u);
  }

  v4 = [(AccessoryCurrentLocationAction *)self discoveryWaitTimer];
  [v4 cancel];

  [(AccessoryCurrentLocationAction *)self setDiscoveryWaitTimer:0];
  v5 = [(AccessoryCurrentLocationAction *)self actionCompletion];

  if (v5)
  {
    v6 = [(AccessoryCurrentLocationAction *)self actionCompletion];
    v7 = [(AccessoryCurrentLocationAction *)self location];
    (v6)[2](v6, v7);

    [(AccessoryCurrentLocationAction *)self setActionCompletion:0];
  }

  v8 = [(AccessoryCurrentLocationAction *)self completion];
  [(AccessoryCurrentLocationAction *)self setCompletion:0];
  if (v8)
  {
    v8[2](v8);
  }
}

- (void)_completeLocate
{
  v3 = objc_alloc_init(FMFuture);
  [(AccessoryCurrentLocationAction *)self setAccessoryUpdateFuture:v3];

  objc_initWeak(&location, self);
  v4 = [(AccessoryCurrentLocationAction *)self accessoryUpdateFuture];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100130BB0;
  v12[3] = &unk_1002CD4F0;
  objc_copyWeak(&v13, &location);
  v5 = [v4 addCompletionBlock:v12];

  v6 = [FMDispatchTimer alloc];
  v7 = &_dispatch_main_q;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100130BF0;
  v10[3] = &unk_1002CD518;
  objc_copyWeak(&v11, &location);
  v8 = [v6 initWithQueue:&_dispatch_main_q timeout:v10 completion:3.0];
  [(AccessoryCurrentLocationAction *)self setDiscoveryWaitTimer:v8];

  v9 = [(AccessoryCurrentLocationAction *)self discoveryWaitTimer];
  [v9 start];

  [(AccessoryCurrentLocationAction *)self validateAccessoryDiscoveryDate];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_stopLocator
{
  v3 = [(AccessoryCurrentLocationAction *)self locator];
  [(AccessoryCurrentLocationAction *)self setLocator:0];
  [v3 stopLocator];
}

- (void)validateAccessoryDiscoveryDate
{
  v3 = [(AccessoryCurrentLocationAction *)self accessory];
  v7 = [v3 lastDiscoveryDate];

  [v7 timeIntervalSinceNow];
  if (v4 >= -60.0)
  {
    [(AccessoryCurrentLocationAction *)self updateLocationMetaData];
    v5 = [(AccessoryCurrentLocationAction *)self accessoryUpdateFuture];
    v6 = [(AccessoryCurrentLocationAction *)self location];
    [v5 finishWithResult:v6];
  }
}

- (void)updateLocationMetaData
{
  v3 = [(AccessoryCurrentLocationAction *)self accessory];
  v4 = [v3 lastKnownLocationDeviceInfo];

  v5 = [(AccessoryCurrentLocationAction *)self location];
  v6 = [v5 metaDataRecord];
  v8 = @"deviceInfo";
  v9 = v4;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v6 appendMetaData:v7];
}

- (void)accessoryDidUpdate:(id)a3
{
  v8 = a3;
  v4 = [v8 accessoryIdentifier];
  v5 = [(AccessoryCurrentLocationAction *)self accessory];
  v6 = [v5 accessoryIdentifier];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    [(AccessoryCurrentLocationAction *)self setAccessory:v8];
    [(AccessoryCurrentLocationAction *)self validateAccessoryDiscoveryDate];
  }
}

@end