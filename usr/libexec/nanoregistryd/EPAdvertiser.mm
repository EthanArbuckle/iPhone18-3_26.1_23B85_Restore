@interface EPAdvertiser
- (NSDictionary)devices;
- (void)advertiser:(id)advertiser receivedData:(id)data;
- (void)advertiser:(id)advertiser receivedPairingRequestForDevice:(id)device;
- (void)collection:(id)collection deviceDidAppear:(id)appear;
- (void)collection:(id)collection deviceDidDisappear:(id)disappear;
@end

@implementation EPAdvertiser

- (NSDictionary)devices
{
  manager = [(EPAdvertiser *)self manager];
  devicesDictionary = [manager devicesDictionary];
  v4 = [devicesDictionary copy];

  return v4;
}

- (void)collection:(id)collection deviceDidAppear:(id)appear
{
  appearCopy = appear;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = sub_1000A98C0();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = sub_1000A98C0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = 138412802;
        v13 = appearCopy;
        v14 = 2112;
        v15 = v11;
        v16 = 2048;
        v17 = ownerDelegate;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling advertiser:deviceDidAppear: with device %@ on %@[%p]", &v12, 0x20u);
      }
    }

    [ownerDelegate advertiser:self deviceDidAppear:appearCopy];
  }
}

- (void)collection:(id)collection deviceDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = sub_1000A98C0();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = sub_1000A98C0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = 138412802;
        v13 = disappearCopy;
        v14 = 2112;
        v15 = v11;
        v16 = 2048;
        v17 = ownerDelegate;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling advertiser:deviceDidDisappear: with device %@ on %@[%p]", &v12, 0x20u);
      }
    }

    [ownerDelegate advertiser:self deviceDidDisappear:disappearCopy];
  }
}

- (void)advertiser:(id)advertiser receivedPairingRequestForDevice:(id)device
{
  advertiserCopy = advertiser;
  deviceCopy = device;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = sub_1000A98C0();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = sub_1000A98C0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = 138412802;
        v15 = deviceCopy;
        v16 = 2112;
        v17 = v13;
        v18 = 2048;
        v19 = ownerDelegate;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling advertiser:receivedPairingRequestForDevice: with device %@ on %@[%p]", &v14, 0x20u);
      }
    }

    [ownerDelegate advertiser:advertiserCopy receivedPairingRequestForDevice:deviceCopy];
  }
}

- (void)advertiser:(id)advertiser receivedData:(id)data
{
  advertiserCopy = advertiser;
  dataCopy = data;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = sub_1000A98C0();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = sub_1000A98C0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = 138412546;
        v15 = v13;
        v16 = 2048;
        v17 = ownerDelegate;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling advertiser:receivedData: on %@[%p]", &v14, 0x16u);
      }
    }

    [ownerDelegate advertiser:advertiserCopy receivedData:dataCopy];
  }
}

@end