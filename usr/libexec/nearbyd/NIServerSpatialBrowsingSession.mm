@interface NIServerSpatialBrowsingSession
- (NIServerSpatialBrowsingSession)initWithResourcesManager:(id)a3 configuration:(id)a4 error:(id *)a5;
- (id).cxx_construct;
- (id)configure;
- (id)run;
- (void)invalidate;
@end

@implementation NIServerSpatialBrowsingSession

- (NIServerSpatialBrowsingSession)initWithResourcesManager:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_class();
  if (v11 != objc_opt_class())
  {
    v25 = +[NSAssertionHandler currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"NIServerSpatialBrowsingSession.mm" lineNumber:33 description:@"NIServerSpatialBrowsingSession given invalid configuration."];
  }

  v12 = [v9 serverSessionIdentifier];

  if (!v12)
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"NIServerSpatialBrowsingSession.mm" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"resourcesManager.serverSessionIdentifier"}];
  }

  v28.receiver = self;
  v28.super_class = NIServerSpatialBrowsingSession;
  v13 = [(NIServerBaseSession *)&v28 initWithResourcesManager:v9 configuration:v10 error:a5];
  if (v13)
  {
    v14 = [v10 copy];
    v15 = *(v13 + 10);
    *(v13 + 10) = v14;

    if (v9)
    {
      [v9 protobufLogger];
      v16 = v27;
    }

    else
    {
      v16 = 0uLL;
    }

    v17 = *(v13 + 7);
    *(v13 + 3) = v16;
    if (v17)
    {
      sub_10000AD84(v17);
    }

    v18 = [v9 clientConnectionQueue];
    v19 = *(v13 + 8);
    *(v13 + 8) = v18;

    v20 = [v9 serverSessionIdentifier];
    v21 = [v20 UUIDString];
    v22 = *(v13 + 9);
    *(v13 + 9) = v21;

    v23 = v13;
  }

  return v13;
}

- (id)configure
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (!self->_configuration)
  {
    sub_1004C21B4();
  }

  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    configuration = self->_configuration;
    v6 = 138412290;
    v7 = configuration;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-sptbrows,Configure. Configuration given: %@", &v6, 0xCu);
  }

  return 0;
}

- (id)run
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v24.receiver = self;
  v24.super_class = NIServerSpatialBrowsingSession;
  v20 = [(NIServerBaseSession *)&v24 resourcesManager];
  v3 = [v20 recentlyObservedObjectsCache];
  if (v3)
  {
    [(NISpatialBrowsingConfiguration *)self->_configuration maxNearbyObjectAge];
    v5 = v4;
    v6 = [v3 getMostRecentObjectsWithMaxAge:?];
    for (i = 0; [v6 count] > i; ++i)
    {
      v8 = [NSNumber numberWithInt:(i + 1)];
      v9 = [v6 objectAtIndexedSubscript:i];
      [v9 overrideSpatialScore:v8];

      v10 = [v6 objectAtIndexedSubscript:i];
      v11 = [v10 bluetoothAdvertisingAddress];
      v12 = sub_1002561E4(v11);

      if (v12)
      {
        v13 = [v6 objectAtIndexedSubscript:i];
        [v13 setDeviceIdentifier:v12];
      }
    }

    v14 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v26 = v5;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ses-sptbrows,Returning most recent objects (max age: %0.2f sec): %@", buf, 0x16u);
    }

    clientQueue = self->_clientQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10034806C;
    block[3] = &unk_10098A2E8;
    v22 = v20;
    v23 = v6;
    v16 = v6;
    dispatch_async(clientQueue, block);

    v17 = 0;
  }

  else
  {
    v18 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C21E0(v18);
    }

    v29 = NSLocalizedFailureReasonErrorKey;
    v30 = @"Internal observation not enabled.";
    v16 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v17 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v16];
  }

  return v17;
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v3.receiver = self;
  v3.super_class = NIServerSpatialBrowsingSession;
  [(NIServerBaseSession *)&v3 invalidate];
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end