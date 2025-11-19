@interface DMDLostDeviceLocationManager
+ (DMDLostDeviceLocationManager)sharedManager;
- (BOOL)_updateLostModeFileForOriginator:(id)a3;
- (DMDLostDeviceLocationManager)init;
- (NSString)lastLocationRequestedDateMessage;
- (void)_cleanupAfterResponseFromLocationManagerOrTimeout;
- (void)clearLastLocationRequestedDate;
- (void)getCurrentLocationForOriginator:(id)a3 completion:(id)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
@end

@implementation DMDLostDeviceLocationManager

- (DMDLostDeviceLocationManager)init
{
  v8.receiver = self;
  v8.super_class = DMDLostDeviceLocationManager;
  v2 = [(DMDLostDeviceLocationManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);

    v5 = dispatch_queue_create([@"DMDLDLMServiceQueue" UTF8String], v4);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

+ (DMDLostDeviceLocationManager)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004E76C;
  block[3] = &unk_1000CE018;
  block[4] = a1;
  if (qword_1000FF128 != -1)
  {
    dispatch_once(&qword_1000FF128, block);
  }

  v2 = qword_1000FF120;

  return v2;
}

- (void)getCurrentLocationForOriginator:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMDLostDeviceLocationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004E87C;
  block[3] = &unk_1000CF3B0;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)clearLastLocationRequestedDate
{
  v2 = +[DMDPaths systemLostModeRequestPath];
  v3 = [NSURL fileURLWithPath:v2 isDirectory:0];

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = objc_opt_new();
  v8 = &v10;
  v9 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004ED6C;
  v6[3] = &unk_1000CF3D8;
  v7 = 0;
  [v4 coordinateWritingItemAtURL:v3 options:1 error:&v9 byAccessor:v6];
  v5 = v9;

  if ((v11[3] & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100084B3C();
  }

  _Block_object_dispose(&v10, 8);
}

- (NSString)lastLocationRequestedDateMessage
{
  v2 = +[DMDPaths systemLostModeRequestPath];
  v3 = [NSURL fileURLWithPath:v2 isDirectory:0];

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10004F30C;
  v36 = sub_10004F31C;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10004F30C;
  v26 = sub_10004F31C;
  v27 = 0;
  v4 = objc_opt_new();
  v20[6] = &v32;
  v21 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10004F324;
  v20[3] = &unk_1000CF400;
  v20[4] = &v28;
  v20[5] = &v22;
  [v4 coordinateReadingItemAtURL:v3 options:0 error:&v21 byAccessor:v20];
  v5 = v21;

  if ((v29[3] & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not read device last located time interval: %@", buf, 0xCu);
  }

  v6 = v33[5];
  if (v6)
  {
    [v6 doubleValue];
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v39 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Device last located on %{public}@. Creating localized message.", buf, 0xCu);
    }

    v8 = objc_opt_new();
    v9 = +[NSLocale currentLocale];
    [v8 setLocale:v9];

    [v8 setTimeStyle:1];
    v10 = [v8 stringFromDate:v7];
    [v8 setTimeStyle:0];
    [v8 setDateStyle:3];
    v11 = [v8 stringFromDate:v7];
    v12 = [v23[5] objectForKeyedSubscript:@"originator"];
    if (!v12)
    {
      v13 = [v23[5] objectForKeyedSubscript:@"organizationName"];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = [v23[5] objectForKeyedSubscript:@"serverName"];
      }

      v12 = v15;
    }

    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"The location of this device was sent to %@ at %@ on %@." value:&stru_1000D0428 table:@"DMFNotifications"];
    v16 = [NSString stringWithFormat:v18, v12, v10, v11];
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  return v16;
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v5 = a4;
  v6 = [(DMDLostDeviceLocationManager *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [v5 lastObject];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Location Manager returned a location.", v12, 2u);
  }

  v8 = [(DMDLostDeviceLocationManager *)self originator];
  v9 = [(DMDLostDeviceLocationManager *)self _updateLostModeFileForOriginator:v8];

  v10 = [(DMDLostDeviceLocationManager *)self completionBlock];
  [(DMDLostDeviceLocationManager *)self _cleanupAfterResponseFromLocationManagerOrTimeout];
  if (!v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100084C2C();
      if (!v10)
      {
        goto LABEL_9;
      }
    }

    else if (!v10)
    {
      goto LABEL_9;
    }

    v11 = DMFErrorWithCodeAndUserInfo();
    (v10)[2](v10, 0, v11);

    goto LABEL_9;
  }

  if (v10)
  {
    (v10)[2](v10, v7, 0);
  }

LABEL_9:
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = [(DMDLostDeviceLocationManager *)self queue];
  dispatch_assert_queue_V2(v6);

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100084C70();
  }

  v7 = [(DMDLostDeviceLocationManager *)self completionBlock];
  [(DMDLostDeviceLocationManager *)self _cleanupAfterResponseFromLocationManagerOrTimeout];
  if (v7)
  {
    (v7)[2](v7, 0, v5);
  }
}

- (void)_cleanupAfterResponseFromLocationManagerOrTimeout
{
  v3 = [(DMDLostDeviceLocationManager *)self locationManager];
  [v3 stopUpdatingLocation];

  [(DMDLostDeviceLocationManager *)self setLocationManager:0];
  [(DMDLostDeviceLocationManager *)self setCompletionBlock:0];
  v4 = [(DMDLostDeviceLocationManager *)self timeoutTimerDispatchSource];
  if (v4)
  {
    v5 = v4;
    dispatch_source_cancel(v4);
    [(DMDLostDeviceLocationManager *)self setTimeoutTimerDispatchSource:0];
    v4 = v5;
  }
}

- (BOOL)_updateLostModeFileForOriginator:(id)a3
{
  v3 = a3;
  v4 = +[DMDPaths systemLostModeRequestPath];
  v5 = [NSURL fileURLWithPath:v4 isDirectory:0];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v6 = objc_opt_new();
  v15 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004F864;
  v11[3] = &unk_1000CF428;
  v13 = &v20;
  v7 = v3;
  v12 = v7;
  v14 = &v16;
  [v6 coordinateWritingItemAtURL:v5 options:0 error:&v15 byAccessor:v11];
  v8 = v15;

  if ((v21[3] & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not read device last located time interval for update: %@", buf, 0xCu);
  }

  v9 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v9 & 1;
}

@end