@interface RSDVirtualMachineHostDevice
- (id)initHostDevice;
- (int)connectToService:(char *)a3 withTcpOption:(id *)a4;
- (void)needsConnect;
@end

@implementation RSDVirtualMachineHostDevice

- (id)initHostDevice
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v3;
  v11 = v3;
  v4 = dword_1000642E0++;
  snprintf(__str, 0x20uLL, "virtualmachine-host-%d", v4);
  v9.receiver = self;
  v9.super_class = RSDVirtualMachineHostDevice;
  v5 = [(RSDRemoteDevice *)&v9 initWithName:__str];
  v6 = v5;
  if (v5)
  {
    v5->remoted_fd = -1;
    v7 = v5;
  }

  return v6;
}

- (void)needsConnect
{
  v3 = qword_1000646B0;
  if (os_log_type_enabled(qword_1000646B0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> needsConnect", buf, 0xCu);
  }

  v4 = [(RSDRemoteDevice *)self connection];

  if (v4)
  {
    v5 = qword_1000646B0;
    if (!os_log_type_enabled(qword_1000646B0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 138543362;
    v12 = self;
    v6 = "%{public}@> already have a connection, skip";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    return;
  }

  if (self->remoted_fd != -1)
  {
    v5 = qword_1000646B0;
    if (!os_log_type_enabled(qword_1000646B0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 138543362;
    v12 = self;
    v6 = "%{public}@> already connecting, skip";
    goto LABEL_9;
  }

  v7 = [(RSDVirtualMachineDeviceCommon *)self connectVsock:1];
  self->remoted_fd = v7;
  v8 = qword_1000646B0;
  if (v7 == -1)
  {
    if (os_log_type_enabled(qword_1000646B0, OS_LOG_TYPE_ERROR))
    {
      sub_1000449EC(self, v8);
    }

    [(RSDRemoteDevice *)self connect:0];
  }

  else
  {
    if (os_log_type_enabled(qword_1000646B0, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@> connectVsock completed successfully", buf, 0xCu);
    }

    remoted_fd = self->remoted_fd;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100034CF8;
    v10[3] = &unk_10005D420;
    v10[4] = self;
    [(RSDRemoteDevice *)self pollConnect:remoted_fd onQueue:qword_1000646B8 withLog:qword_1000646B0 completion:v10];
  }
}

- (int)connectToService:(char *)a3 withTcpOption:(id *)a4
{
  v6 = strtoull(a3, 0, 0);
  if (HIDWORD(v6) || !v6)
  {
    v8 = qword_1000646B0;
    if (os_log_type_enabled(qword_1000646B0, OS_LOG_TYPE_ERROR))
    {
      sub_100044AF0(self, a3, v8);
    }

    return -1;
  }

  else
  {

    return [(RSDVirtualMachineDeviceCommon *)self connectVsock:?];
  }
}

@end