@interface NESMVPNSessionStateDisposing
- (NESMVPNSessionStateDisposing)init;
- (void)enterWithSession:(id)a3;
- (void)handleEstablishIPC;
- (void)handlePluginDisposeComplete:(id)a3;
- (void)handleTimeout;
@end

@implementation NESMVPNSessionStateDisposing

- (void)handleEstablishIPC
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
    v10 = 138412546;
    v11 = Property;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ in state %@: received establish IPC message", &v10, 0x16u);
  }

  if (self)
  {
    v9 = objc_getProperty(self, v8, 16, 1);
  }

  else
  {
    v9 = 0;
  }

  [v9 sendEstablishIPCReply];
}

- (void)handleTimeout
{
  v25.receiver = self;
  v25.super_class = NESMVPNSessionStateDisposing;
  [(NESMVPNSessionState *)&v25 handleTimeout];
  if (self)
  {
    Property = objc_getProperty(self, v3, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = [Property authenticationPlugin];

  if (v5)
  {
    if (self)
    {
      v7 = [objc_getProperty(self v6];
      sub_10001A29C(v7, v8);

      v10 = objc_getProperty(self, v9, 16, 1);
    }

    else
    {
      v21 = [0 authenticationPlugin];
      sub_10001A29C(v21, v22);

      v10 = 0;
    }

    v11 = [v10 authenticationPlugin];
    [(NESMVPNSessionStateDisposing *)self handlePluginDisposeComplete:v11];
  }

  if (self)
  {
    v12 = objc_getProperty(self, v6, 16, 1);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 primaryTunnelPlugin];

  if (v13)
  {
    if (self)
    {
      v15 = [objc_getProperty(self v14];
      sub_10001A29C(v15, v16);

      v18 = objc_getProperty(self, v17, 16, 1);
    }

    else
    {
      v23 = [0 primaryTunnelPlugin];
      sub_10001A29C(v23, v24);

      v18 = 0;
    }

    v19 = [v18 primaryTunnelPlugin];
    [(NESMVPNSessionStateDisposing *)self handlePluginDisposeComplete:v19];
  }

  else
  {
    if (self)
    {
      v20 = objc_getProperty(self, v14, 16, 1);
    }

    else
    {
      v20 = 0;
    }

    [v20 setState:1];
  }
}

- (void)handlePluginDisposeComplete:(id)a3
{
  v18.receiver = self;
  v18.super_class = NESMVPNSessionStateDisposing;
  [(NESMVPNSessionState *)&v18 handlePluginDisposeComplete:a3];
  if (!self || (--self->_pendingDisposeCount, !self->_pendingDisposeCount))
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        Property = objc_getProperty(self, v5, 16, 1);
      }

      else
      {
        Property = 0;
      }

      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138412546;
      v20 = Property;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ in state %@: all plugins have disposed", buf, 0x16u);
    }

    if (self)
    {
      [objc_getProperty(self v9];
      [objc_getProperty(self v10];
      v12 = [objc_getProperty(self v11];
      sub_100030DC4(v12);

      if ([objc_getProperty(self v13])
      {
LABEL_9:
        sub_10007B918(self);
        return;
      }

      v15 = objc_getProperty(self, v14, 16, 1);
    }

    else
    {
      [0 setAuthenticationPlugin:0];
      [0 setPrimaryTunnelPlugin:0];
      v16 = [0 policySession];
      sub_100030DC4(v16);

      v17 = [0 restartPending];
      v15 = 0;
      if (v17)
      {
        goto LABEL_9;
      }
    }

    [v15 setState:1];
  }
}

- (void)enterWithSession:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = NESMVPNSessionStateDisposing;
  [(NESMVPNSessionState *)&v25 enterWithSession:v4];
  if (self)
  {
    self->_pendingDisposeCount = 0;
    Property = objc_getProperty(self, v5, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = [Property authenticationPlugin];

  if (v7)
  {
    if (self)
    {
      ++self->_pendingDisposeCount;
      v9 = objc_getProperty(self, v8, 16, 1);
    }

    else
    {
      v9 = 0;
    }

    v10 = [v9 authenticationPlugin];
    sub_1000198A8(v10, v11);
  }

  if (self)
  {
    v12 = objc_getProperty(self, v8, 16, 1);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 primaryTunnelPlugin];

  if (v13)
  {
    if (self)
    {
      ++self->_pendingDisposeCount;
      v15 = objc_getProperty(self, v14, 16, 1);
    }

    else
    {
      v15 = 0;
    }

    v16 = [v15 primaryTunnelPlugin];
    sub_1000198A8(v16, v17);
  }

  if (!self || !self->_pendingDisposeCount)
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v20 = objc_getProperty(self, v19, 16, 1);
      }

      else
      {
        v20 = 0;
      }

      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138412546;
      v27 = v20;
      v28 = 2112;
      v29 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@ in state %@: no plugins to dispose", buf, 0x16u);
    }

    v23 = [v4 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007BEC4;
    block[3] = &unk_1000EB1C0;
    block[4] = self;
    dispatch_async(v23, block);
  }
}

- (NESMVPNSessionStateDisposing)init
{
  v3.receiver = self;
  v3.super_class = NESMVPNSessionStateDisposing;
  return [(NESMVPNSessionState *)&v3 initWithType:8 andTimeout:5];
}

@end