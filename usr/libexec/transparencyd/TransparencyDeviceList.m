@interface TransparencyDeviceList
- (NSArray)devices;
- (TransparencyDeviceList)init;
- (id)_authController;
- (id)updateDevicesList:(id)a3;
- (void)refreshDeviceList:(id)a3 complete:(id)a4;
@end

@implementation TransparencyDeviceList

- (TransparencyDeviceList)init
{
  v6.receiver = self;
  v6.super_class = TransparencyDeviceList;
  v2 = [(TransparencyDeviceList *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(TransparencyDeviceList *)v2 setLock:0];
    v4 = v3;
  }

  return v3;
}

- (id)_authController
{
  authController = self->_authController;
  if (!authController)
  {
    v4 = objc_alloc_init(AKAppleIDAuthenticationController);
    v5 = self->_authController;
    self->_authController = v4;

    authController = self->_authController;
  }

  return authController;
}

- (NSArray)devices
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(TransparencyDeviceList *)self cachedDevices];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)updateDevicesList:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [KTIDMSDevice alloc];
        v13 = [v12 initWithAKRemoteDevice:{v11, v15}];
        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  os_unfair_lock_lock(&self->_lock);
  [(TransparencyDeviceList *)self setCachedDevices:v5];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)refreshDeviceList:(id)a3 complete:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v12 = [NSError aa_errorWithCode:-3 underlyingError:0];
LABEL_13:
    v9 = v12;
    v7[2](v7, 0, v12);
    goto LABEL_25;
  }

  if (!objc_opt_class() || !objc_opt_class())
  {
    if (qword_10039CD28 != -1)
    {
      sub_10025F430();
    }

    v11 = qword_10039CD30;
    if (os_log_type_enabled(qword_10039CD30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "AuthKit not available", buf, 2u);
    }

    v12 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-333 description:@"AuthKit not available"];
    goto LABEL_13;
  }

  v8 = objc_alloc_init(AKDeviceListRequestContext);
  v9 = v8;
  if (v8)
  {
    [v8 setAltDSID:v6];
    v10 = objc_alloc_init(AKAppleIDAuthenticationController);
    if (v10)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100225A74;
      v16[3] = &unk_10032B648;
      v16[4] = self;
      v17 = v7;
      [v10 deviceListWithContext:v9 completion:v16];
    }

    else
    {
      if (qword_10039CD28 != -1)
      {
        sub_10025F408();
      }

      v14 = qword_10039CD30;
      if (os_log_type_enabled(qword_10039CD30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "AKAppleIDAuthenticationController not available", buf, 2u);
      }

      v15 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-335 description:@"can't get authController"];
      v7[2](v7, 0, v15);
    }
  }

  else
  {
    if (qword_10039CD28 != -1)
    {
      sub_10025F41C();
    }

    v13 = qword_10039CD30;
    if (os_log_type_enabled(qword_10039CD30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "AKDeviceListRequestContext not available", buf, 2u);
    }

    v10 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-334 description:@"can't get AKDeviceListRequestContextClass"];
    v7[2](v7, 0, v10);
  }

LABEL_25:
}

@end