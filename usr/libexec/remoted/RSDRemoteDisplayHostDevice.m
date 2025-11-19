@interface RSDRemoteDisplayHostDevice
- (BOOL)connectable;
- (RSDRemoteDisplayHostDevice)initWithGeneratedName;
- (RSDRemoteDisplayHostDevice)initWithInterface:(id)a3;
- (RSDRemoteDisplayHostDevice)initWithUSBSerialNumber:(const __CFString *)a3;
- (void)disconnect;
- (void)needsConnect;
- (void)setSuspended:(BOOL)a3;
@end

@implementation RSDRemoteDisplayHostDevice

- (RSDRemoteDisplayHostDevice)initWithGeneratedName
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v3;
  v8 = v3;
  v4 = dword_100063C94++;
  snprintf(__str, 0x20uLL, "display-%d", v4);
  v6.receiver = self;
  v6.super_class = RSDRemoteDisplayHostDevice;
  return [(RSDRemoteDevice *)&v6 initWithName:__str];
}

- (RSDRemoteDisplayHostDevice)initWithUSBSerialNumber:(const __CFString *)a3
{
  v4 = a3;
  v5 = [qword_1000645C8 objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 UTF8String];
    v8 = qword_1000645B0;
    if (os_log_type_enabled(qword_1000645B0, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Using previously allocated name %{public}s", buf, 0xCu);
    }

    v14.receiver = self;
    v14.super_class = RSDRemoteDisplayHostDevice;
    v9 = [(RSDRemoteDevice *)&v14 initWithName:v7];
  }

  else
  {
    v10 = qword_1000645B0;
    if (os_log_type_enabled(qword_1000645B0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "New device attached, allocating name", buf, 2u);
    }

    v11 = [(RSDRemoteDisplayHostDevice *)self initWithGeneratedName];
    v9 = v11;
    if (v11)
    {
      v12 = [NSString stringWithCString:[(RSDRemoteDevice *)v11 device_name] encoding:4];
      [qword_1000645C8 setObject:v12 forKeyedSubscript:v4];
    }
  }

  return v9;
}

- (RSDRemoteDisplayHostDevice)initWithInterface:(id)a3
{
  v4 = a3;
  cf = 0;
  v5 = sub_100012D28([v4 service], &cf);
  v6 = qword_1000645B0;
  if (v5)
  {
    if (os_log_type_enabled(qword_1000645B0, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v11 = cf;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "USB Serial Number: %{public}@", buf, 0xCu);
    }

    v7 = [(RSDRemoteDisplayHostDevice *)self initWithUSBSerialNumber:cf];
    CFRelease(cf);
    if (v7)
    {
LABEL_5:
      [(RSDRemoteNCMDevice *)v7 setInterface:v4];
      v7->fd = -1;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000645B0, OS_LOG_TYPE_ERROR))
    {
      sub_10003C45C(v6);
    }

    v7 = [(RSDRemoteDisplayHostDevice *)self initWithGeneratedName];
    if (v7)
    {
      goto LABEL_5;
    }
  }

  return v7;
}

- (void)needsConnect
{
  v3 = qword_1000645B0;
  if (os_log_type_enabled(qword_1000645B0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> needsConnect", buf, 0xCu);
  }

  v4 = [(RSDRemoteNCMDevice *)self interface];
  v5 = [v4 state];

  if (v5 == 2)
  {
    if (*[(RSDRemoteNCMDevice *)self local_address]|| *([(RSDRemoteNCMDevice *)self local_address]+ 1) || *([(RSDRemoteNCMDevice *)self local_address]+ 2) || *([(RSDRemoteNCMDevice *)self local_address]+ 3))
    {
      if (self->fd == -1)
      {
        v8 = [(RSDRemoteNCMDevice *)self remote_address];
        v9 = [(RSDRemoteNCMDevice *)self interface];
        v10 = sub_100023C1C(&self->fd, v8, 0xE59Fu, [v9 index], &xmmword_100049E58);

        v11 = qword_1000645B0;
        if (v10)
        {
          if (os_log_type_enabled(qword_1000645B0, OS_LOG_TYPE_ERROR))
          {
            sub_10003ED20(self, v10, v11);
          }

          [(RSDRemoteDevice *)self connect:0];
        }

        else
        {
          if (os_log_type_enabled(qword_1000645B0, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v18 = self;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}@> network_connect_in6() completed successfully", buf, 0xCu);
          }

          fd = self->fd;
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_10002D384;
          v15[3] = &unk_10005D420;
          v15[4] = self;
          [(RSDRemoteDevice *)self pollConnect:fd onQueue:qword_1000645B8 withLog:qword_1000645B0 completion:v15];
        }
      }

      else
      {
        v6 = qword_1000645B0;
        if (os_log_type_enabled(qword_1000645B0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v18 = self;
          v7 = "%{public}@> already connecting, skip";
LABEL_13:
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
        }
      }
    }

    else
    {
      v13 = qword_1000645B0;
      if (os_log_type_enabled(qword_1000645B0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = self;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@> no inet6 assigned, try again later", buf, 0xCu);
      }

      v14 = dispatch_time(0, 200000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002D37C;
      block[3] = &unk_10005D130;
      block[4] = self;
      dispatch_after(v14, qword_1000645B8, block);
    }
  }

  else
  {
    v6 = qword_1000645B0;
    if (os_log_type_enabled(qword_1000645B0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = self;
      v7 = "%{public}@> NCM interface not ready";
      goto LABEL_13;
    }
  }
}

- (void)disconnect
{
  v3 = qword_1000645B0;
  if (os_log_type_enabled(qword_1000645B0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> disconnect", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = RSDRemoteDisplayHostDevice;
  [(RSDRemoteDevice *)&v4 disconnect];
}

- (BOOL)connectable
{
  if (self->_suspended)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = RSDRemoteDisplayHostDevice;
  return [(RSDRemoteDevice *)&v5 connectable];
}

- (void)setSuspended:(BOOL)a3
{
  if (self->_suspended != a3)
  {
    v3 = a3;
    v5 = qword_1000645B0;
    v6 = os_log_type_enabled(qword_1000645B0, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v6)
      {
        v7 = 138543362;
        v8 = self;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@> Suspending", &v7, 0xCu);
      }
    }

    else
    {
      if (v6)
      {
        v7 = 138543362;
        v8 = self;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@> Resuming", &v7, 0xCu);
      }

      [(RSDRemoteDevice *)self drainPendedRequests];
    }

    self->_suspended = v3;
  }
}

@end