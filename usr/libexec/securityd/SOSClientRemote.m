@interface SOSClientRemote
- (BOOL)checkEntitlement:(id)a3;
- (NSXPCConnection)connection;
- (id)initSOSConnectionWithConnection:(id)a3 account:(id)a4;
@end

@implementation SOSClientRemote

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (BOOL)checkEntitlement:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v6 = [WeakRetained valueForEntitlement:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 BOOLValue])
  {
    v7 = 1;
  }

  else
  {
    v8 = sub_100006274("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109378;
      v10[1] = [WeakRetained processIdentifier];
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sos: Client pid: %d doesn't have entitlement: %@", v10, 0x12u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)initSOSConnectionWithConnection:(id)a3 account:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SOSClientRemote;
  v7 = [(SOSClient *)&v10 initSOSClientWithAccount:a4];
  v8 = v7;
  if (v7)
  {
    [v7 setConnection:v6];
  }

  return v8;
}

@end