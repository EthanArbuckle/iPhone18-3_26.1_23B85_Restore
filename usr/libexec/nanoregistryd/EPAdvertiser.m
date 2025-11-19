@interface EPAdvertiser
- (NSDictionary)devices;
- (void)advertiser:(id)a3 receivedData:(id)a4;
- (void)advertiser:(id)a3 receivedPairingRequestForDevice:(id)a4;
- (void)collection:(id)a3 deviceDidAppear:(id)a4;
- (void)collection:(id)a3 deviceDidDisappear:(id)a4;
@end

@implementation EPAdvertiser

- (NSDictionary)devices
{
  v2 = [(EPAdvertiser *)self manager];
  v3 = [v2 devicesDictionary];
  v4 = [v3 copy];

  return v4;
}

- (void)collection:(id)a3 deviceDidAppear:(id)a4
{
  v5 = a4;
  v6 = [(EPResource *)self ownerDelegate];
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
        v13 = v5;
        v14 = 2112;
        v15 = v11;
        v16 = 2048;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling advertiser:deviceDidAppear: with device %@ on %@[%p]", &v12, 0x20u);
      }
    }

    [v6 advertiser:self deviceDidAppear:v5];
  }
}

- (void)collection:(id)a3 deviceDidDisappear:(id)a4
{
  v5 = a4;
  v6 = [(EPResource *)self ownerDelegate];
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
        v13 = v5;
        v14 = 2112;
        v15 = v11;
        v16 = 2048;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling advertiser:deviceDidDisappear: with device %@ on %@[%p]", &v12, 0x20u);
      }
    }

    [v6 advertiser:self deviceDidDisappear:v5];
  }
}

- (void)advertiser:(id)a3 receivedPairingRequestForDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EPResource *)self ownerDelegate];
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
        v15 = v7;
        v16 = 2112;
        v17 = v13;
        v18 = 2048;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling advertiser:receivedPairingRequestForDevice: with device %@ on %@[%p]", &v14, 0x20u);
      }
    }

    [v8 advertiser:v6 receivedPairingRequestForDevice:v7];
  }
}

- (void)advertiser:(id)a3 receivedData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EPResource *)self ownerDelegate];
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
        v17 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling advertiser:receivedData: on %@[%p]", &v14, 0x16u);
      }
    }

    [v8 advertiser:v6 receivedData:v7];
  }
}

@end