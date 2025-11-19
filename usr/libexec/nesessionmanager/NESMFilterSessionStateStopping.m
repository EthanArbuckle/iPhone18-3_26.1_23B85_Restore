@interface NESMFilterSessionStateStopping
- (NESMFilterSessionStateStopping)init;
- (void)enterWithSession:(id)a3;
- (void)handlePluginDisposeComplete:(id)a3;
- (void)handleTimeout;
@end

@implementation NESMFilterSessionStateStopping

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
    v23 = 138412546;
    v24 = Property;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: timed out", &v23, 0x16u);
  }

  if (self)
  {
    v9 = objc_getProperty(self, v8, 16, 1);
    if (v9)
    {
      v9 = objc_getProperty(v9, v10, 400, 1);
    }

    v11 = v9;
    sub_10001A29C(v11, v12);

    v14 = objc_getProperty(self, v13, 16, 1);
    if (v14)
    {
      v14 = objc_getProperty(v14, v15, 408, 1);
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = v14;
  sub_10001A29C(v16, v17);

  if (self)
  {
    v19 = objc_getProperty(self, v18, 16, 1);
    if (v19)
    {
      objc_setProperty_atomic(v19, v20, 0, 400);
    }

    v21 = objc_getProperty(self, v20, 16, 1);
    if (v21)
    {
      objc_setProperty_atomic(v21, v22, 0, 408);
    }

    sub_100068750(self, v22);
  }
}

- (void)handlePluginDisposeComplete:(id)a3
{
  v9.receiver = self;
  v9.super_class = NESMFilterSessionStateStopping;
  [(NESMFilterSessionState *)&v9 handlePluginDisposeComplete:a3];
  if (self)
  {
    if (!--self->_pendingDisposeCount)
    {
      Property = objc_getProperty(self, v4, 16, 1);
      if (Property)
      {
        objc_setProperty_atomic(Property, v6, 0, 400);
      }

      v7 = objc_getProperty(self, v6, 16, 1);
      if (v7)
      {
        objc_setProperty_atomic(v7, v8, 0, 408);
      }

      sub_100068750(self, v8);
    }
  }
}

- (void)enterWithSession:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = NESMFilterSessionStateStopping;
  [(NESMFilterSessionState *)&v33 enterWithSession:v4];
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
      v11 = objc_getProperty(v11, v12, 400, 1);
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
        v15 = objc_getProperty(v15, v16, 400, 1);
      }
    }

    else
    {
      v15 = 0;
    }

    v17 = v15;
    sub_1000198A8(v17, v18);
  }

  if (self)
  {
    v19 = objc_getProperty(self, v14, 16, 1);
    if (v19)
    {
      v19 = objc_getProperty(v19, v20, 408, 1);
    }
  }

  else
  {
    v19 = 0;
  }

  v21 = v19;

  if (v21)
  {
    if (self)
    {
      ++self->_pendingDisposeCount;
      v23 = objc_getProperty(self, v22, 16, 1);
      if (v23)
      {
        v23 = objc_getProperty(v23, v24, 408, 1);
      }
    }

    else
    {
      v23 = 0;
    }

    v25 = v23;
    sub_1000198A8(v25, v26);
  }

  if (!self)
  {
    goto LABEL_25;
  }

  if (!self->_pendingDisposeCount)
  {
    v27 = objc_getProperty(self, v22, 16, 1);
    if (v27)
    {
      objc_setProperty_atomic(v27, v28, 0, 400);
    }

    v29 = objc_getProperty(self, v28, 16, 1);
    if (v29)
    {
      objc_setProperty_atomic(v29, v30, 0, 408);
    }

LABEL_25:
    v31 = [v4 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100068C40;
    block[3] = &unk_1000EB1C0;
    block[4] = self;
    dispatch_async(v31, block);
  }
}

- (NESMFilterSessionStateStopping)init
{
  v3.receiver = self;
  v3.super_class = NESMFilterSessionStateStopping;
  result = [(NESMFilterSessionState *)&v3 initWithType:4 andTimeout:20];
  if (result)
  {
    result->_pendingDisposeCount = 0;
  }

  return result;
}

@end