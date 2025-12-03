@interface AccessoryCurrentLocationAction
- (AccessoryCurrentLocationAction)initWithAccessory:(id)accessory locator:(id)locator event:(int64_t)event completion:(id)completion;
- (BOOL)shouldCancelAction:(id)action;
- (void)_completeLocate;
- (void)_finishAction;
- (void)_retrieveLocationNow;
- (void)_stopLocator;
- (void)accessoryDidUpdate:(id)update;
- (void)runWithCompletion:(id)completion;
- (void)updateLocationMetaData;
- (void)validateAccessoryDiscoveryDate;
- (void)willCancelAction;
@end

@implementation AccessoryCurrentLocationAction

- (AccessoryCurrentLocationAction)initWithAccessory:(id)accessory locator:(id)locator event:(int64_t)event completion:(id)completion
{
  accessoryCopy = accessory;
  locatorCopy = locator;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = AccessoryCurrentLocationAction;
  v13 = [(AccessoryCurrentLocationAction *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(AccessoryCurrentLocationAction *)v13 setAccessory:accessoryCopy];
    [(AccessoryCurrentLocationAction *)v14 setLocator:locatorCopy];
    [(AccessoryCurrentLocationAction *)v14 setEvent:event];
    [(AccessoryCurrentLocationAction *)v14 setActionCompletion:completionCopy];
  }

  return v14;
}

- (void)willCancelAction
{
  [(AccessoryCurrentLocationAction *)self _stopLocator];

  [(AccessoryCurrentLocationAction *)self _finishAction];
}

- (void)runWithCompletion:(id)completion
{
  [(AccessoryCurrentLocationAction *)self setCompletion:completion];
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Accessory current location : accessory is connected.", v5, 2u);
  }

  [(AccessoryCurrentLocationAction *)self _retrieveLocationNow];
}

- (BOOL)shouldCancelAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accessory = [(AccessoryCurrentLocationAction *)self accessory];
    accessoryIdentifier = [accessory accessoryIdentifier];
    accessory2 = [actionCopy accessory];
    accessoryIdentifier2 = [accessory2 accessoryIdentifier];
    v9 = [accessoryIdentifier isEqual:accessoryIdentifier2];
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
  locator = [(AccessoryCurrentLocationAction *)self locator];
  accessory = [(AccessoryCurrentLocationAction *)self accessory];
  accessoryIdentifier = [accessory accessoryIdentifier];
  stringValue = [accessoryIdentifier stringValue];

  event = [(AccessoryCurrentLocationAction *)self event];
  objc_initWeak(&location, locator);
  locatorPublisher = [locator locatorPublisher];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10013063C;
  v18[3] = &unk_1002CD4A0;
  objc_copyWeak(&v20, buf);
  v10 = stringValue;
  v19 = v10;
  v21[1] = event;
  objc_copyWeak(v21, &location);
  [locatorPublisher startPublishingWithBlock:v18];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013077C;
  v15[3] = &unk_1002CD288;
  objc_copyWeak(&v17, buf);
  v11 = v10;
  v16 = v11;
  [locator setStoppedLocatorBlock:v15];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10013088C;
  v13[3] = &unk_1002CD4C8;
  v14 = locator;
  v12 = locator;
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

  discoveryWaitTimer = [(AccessoryCurrentLocationAction *)self discoveryWaitTimer];
  [discoveryWaitTimer cancel];

  [(AccessoryCurrentLocationAction *)self setDiscoveryWaitTimer:0];
  actionCompletion = [(AccessoryCurrentLocationAction *)self actionCompletion];

  if (actionCompletion)
  {
    actionCompletion2 = [(AccessoryCurrentLocationAction *)self actionCompletion];
    location = [(AccessoryCurrentLocationAction *)self location];
    (actionCompletion2)[2](actionCompletion2, location);

    [(AccessoryCurrentLocationAction *)self setActionCompletion:0];
  }

  completion = [(AccessoryCurrentLocationAction *)self completion];
  [(AccessoryCurrentLocationAction *)self setCompletion:0];
  if (completion)
  {
    completion[2](completion);
  }
}

- (void)_completeLocate
{
  v3 = objc_alloc_init(FMFuture);
  [(AccessoryCurrentLocationAction *)self setAccessoryUpdateFuture:v3];

  objc_initWeak(&location, self);
  accessoryUpdateFuture = [(AccessoryCurrentLocationAction *)self accessoryUpdateFuture];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100130BB0;
  v12[3] = &unk_1002CD4F0;
  objc_copyWeak(&v13, &location);
  v5 = [accessoryUpdateFuture addCompletionBlock:v12];

  v6 = [FMDispatchTimer alloc];
  v7 = &_dispatch_main_q;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100130BF0;
  v10[3] = &unk_1002CD518;
  objc_copyWeak(&v11, &location);
  v8 = [v6 initWithQueue:&_dispatch_main_q timeout:v10 completion:3.0];
  [(AccessoryCurrentLocationAction *)self setDiscoveryWaitTimer:v8];

  discoveryWaitTimer = [(AccessoryCurrentLocationAction *)self discoveryWaitTimer];
  [discoveryWaitTimer start];

  [(AccessoryCurrentLocationAction *)self validateAccessoryDiscoveryDate];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_stopLocator
{
  locator = [(AccessoryCurrentLocationAction *)self locator];
  [(AccessoryCurrentLocationAction *)self setLocator:0];
  [locator stopLocator];
}

- (void)validateAccessoryDiscoveryDate
{
  accessory = [(AccessoryCurrentLocationAction *)self accessory];
  lastDiscoveryDate = [accessory lastDiscoveryDate];

  [lastDiscoveryDate timeIntervalSinceNow];
  if (v4 >= -60.0)
  {
    [(AccessoryCurrentLocationAction *)self updateLocationMetaData];
    accessoryUpdateFuture = [(AccessoryCurrentLocationAction *)self accessoryUpdateFuture];
    location = [(AccessoryCurrentLocationAction *)self location];
    [accessoryUpdateFuture finishWithResult:location];
  }
}

- (void)updateLocationMetaData
{
  accessory = [(AccessoryCurrentLocationAction *)self accessory];
  lastKnownLocationDeviceInfo = [accessory lastKnownLocationDeviceInfo];

  location = [(AccessoryCurrentLocationAction *)self location];
  metaDataRecord = [location metaDataRecord];
  v8 = @"deviceInfo";
  v9 = lastKnownLocationDeviceInfo;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [metaDataRecord appendMetaData:v7];
}

- (void)accessoryDidUpdate:(id)update
{
  updateCopy = update;
  accessoryIdentifier = [updateCopy accessoryIdentifier];
  accessory = [(AccessoryCurrentLocationAction *)self accessory];
  accessoryIdentifier2 = [accessory accessoryIdentifier];
  v7 = [accessoryIdentifier isEqual:accessoryIdentifier2];

  if (v7)
  {
    [(AccessoryCurrentLocationAction *)self setAccessory:updateCopy];
    [(AccessoryCurrentLocationAction *)self validateAccessoryDiscoveryDate];
  }
}

@end