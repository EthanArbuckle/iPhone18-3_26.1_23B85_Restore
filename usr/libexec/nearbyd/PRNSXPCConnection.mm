@interface PRNSXPCConnection
- (PRNSXPCConnection)initWithConnection:(id)connection;
- (void)actOnRemoteObjectAndScheduleBarrierBlock:(id)block;
- (void)invalidate;
@end

@implementation PRNSXPCConnection

- (PRNSXPCConnection)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = PRNSXPCConnection;
  v6 = [(PRNSXPCConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v7->_maxAllowedOutgoingMessages = 1000;
    atomic_store(0, &v7->outgoingMessagesCount.__a_.__a_value);
  }

  return v7;
}

- (void)actOnRemoteObjectAndScheduleBarrierBlock:(id)block
{
  blockCopy = block;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10030D27C;
  v20 = sub_10030D28C;
  v21 = 0;
  connection = [(PRNSXPCConnection *)self connection];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10030D294;
  v15[3] = &unk_1009A4800;
  v15[4] = &v16;
  v6 = [connection remoteObjectProxyWithErrorHandler:v15];

  if (v17[5])
  {
    blockCopy[2](blockCopy, 0);
  }

  else
  {
    v7 = atomic_fetch_add(&self->outgoingMessagesCount, 1uLL) + 1;
    if (v7 <= [(PRNSXPCConnection *)self maxAllowedOutgoingMessages])
    {
      (blockCopy[2])(blockCopy, v6, v17[5]);
      if (__ROR8__(0x8F5C28F5C28F5C29 * v7, 2) <= 0x28F5C28F5C28F5CuLL)
      {
        connection = self->_connection;
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10030D2A4;
        v14[3] = &unk_10098BD28;
        v14[4] = self;
        [(NSXPCConnection *)connection scheduleSendBarrierBlock:v14];
      }
    }

    else
    {
      v8 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BD760(v7, v8);
      }

      v22 = NSLocalizedDescriptionKey;
      v23 = @"FATAL CLIENT ERROR: Client hasn't dequeued xpc messages. Invalidating connection.";
      v9 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v10 = PRErrorWithCodeAndUserInfo(2001, v9);
      v11 = v17[5];
      v17[5] = v10;

      (blockCopy[2])(blockCopy, 0, v17[5]);
      connection2 = [(PRNSXPCConnection *)self connection];
      [connection2 invalidate];
    }
  }

  _Block_object_dispose(&v16, 8);
}

- (void)invalidate
{
  connection = [(PRNSXPCConnection *)self connection];
  [connection invalidate];

  [(PRNSXPCConnection *)self setConnection:0];
}

@end