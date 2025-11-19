@interface NESMURLFilterSessionStateStopping
- (NESMURLFilterSessionStateStopping)init;
- (void)enterWithSession:(id)a3;
- (void)handlePluginDisposeComplete:(id)a3;
- (void)handleTimeout;
@end

@implementation NESMURLFilterSessionStateStopping

- (void)handleTimeout
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v4, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v16 = 138412546;
    v17 = Property;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: timed out", &v16, 0x16u);
  }

  if (self)
  {
    v9 = objc_getProperty(self, v8, 16, 1);
    if (v9)
    {
      v9 = objc_getProperty(v9, v10, 408, 1);
    }

    v11 = v9;
    sub_10001A29C(v11, v12);

    v14 = objc_getProperty(self, v13, 16, 1);
    if (v14)
    {
      objc_setProperty_atomic(v14, v15, 0, 408);
    }

    sub_10006AC30(self, v15);
  }
}

- (void)handlePluginDisposeComplete:(id)a3
{
  v7.receiver = self;
  v7.super_class = NESMURLFilterSessionStateStopping;
  [(NESMURLFilterSessionState *)&v7 handlePluginDisposeComplete:a3];
  if (self)
  {
    if (!--self->_pendingDisposeCount)
    {
      Property = objc_getProperty(self, v4, 16, 1);
      if (Property)
      {
        objc_setProperty_atomic(Property, v6, 0, 408);
      }

      sub_10006AC30(self, v6);
    }
  }
}

- (void)enterWithSession:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = NESMURLFilterSessionStateStopping;
  [(NESMURLFilterSessionState *)&v23 enterWithSession:v4];
  if (self)
  {
    Property = objc_getProperty(self, v5, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = [Property server];
  v9 = v7;
  if (self)
  {
    [v7 requestUninstallForSession:{objc_getProperty(self, v8, 16, 1)}];

    self->_pendingDisposeCount = 0;
    v11 = objc_getProperty(self, v10, 16, 1);
    if (v11)
    {
      v11 = objc_getProperty(v11, v12, 408, 1);
    }
  }

  else
  {
    [v7 requestUninstallForSession:0];

    v11 = 0;
  }

  v13 = v11;

  if (v13)
  {
    if (self)
    {
      ++self->_pendingDisposeCount;
      v15 = objc_getProperty(self, v14, 16, 1);
      if (v15)
      {
        v15 = objc_getProperty(v15, v16, 408, 1);
      }
    }

    else
    {
      v15 = 0;
    }

    v17 = v15;
    sub_1000198A8(v17, v18);
  }

  if (!self)
  {
    goto LABEL_15;
  }

  if (!self->_pendingDisposeCount)
  {
    v19 = objc_getProperty(self, v14, 16, 1);
    if (v19)
    {
      objc_setProperty_atomic(v19, v20, 0, 408);
    }

LABEL_15:
    v21 = [v4 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006B050;
    block[3] = &unk_1000EB1C0;
    block[4] = self;
    dispatch_async(v21, block);
  }
}

- (NESMURLFilterSessionStateStopping)init
{
  v3.receiver = self;
  v3.super_class = NESMURLFilterSessionStateStopping;
  result = [(NESMURLFilterSessionState *)&v3 initWithType:4 andTimeout:20];
  if (result)
  {
    result->_pendingDisposeCount = 0;
  }

  return result;
}

@end