@interface DIBaseAgentXPCHandler
- (void)createConnection;
@end

@implementation DIBaseAgentXPCHandler

- (void)createConnection
{
  v3 = [(DIBaseXPCHandler *)self isPrivileged];
  v4 = [(DIBaseXPCHandler *)self serviceName];
  v5 = [v4 stringByAppendingString:@".xpc"];

  v6 = *__error();
  if (sub_1000E95F0())
  {
    v7 = sub_1000E957C();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    *buf = 68158210;
    v15 = 41;
    v16 = 2080;
    v17 = "[DIBaseAgentXPCHandler createConnection]";
    v18 = 2114;
    v19 = v5;
    v8 = _os_log_send_and_compose_impl();

    if (v8)
    {
      fprintf(__stderrp, "%s\n", v8);
      free(v8);
    }
  }

  else
  {
    v9 = sub_1000E957C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v15 = 41;
      v16 = 2080;
      v17 = "[DIBaseAgentXPCHandler createConnection]";
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%.*s: Creating connection to %{public}@", buf, 0x1Cu);
    }
  }

  if (v3)
  {
    v10 = 4096;
  }

  else
  {
    v10 = 0;
  }

  *__error() = v6;
  v11 = [[NSXPCConnection alloc] initWithMachServiceName:v5 options:v10];
  [(DIBaseXPCHandler *)self setConnection:v11];

  [(DIBaseAgentXPCHandler *)self setConnectionMode];
  v12 = [(DIBaseXPCHandler *)self remoteObjectInterface];
  v13 = [(DIBaseXPCHandler *)self connection];
  [v13 setRemoteObjectInterface:v12];
}

@end