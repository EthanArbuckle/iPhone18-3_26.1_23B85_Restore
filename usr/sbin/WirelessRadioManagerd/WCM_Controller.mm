@interface WCM_Controller
- (WCM_Controller)init;
- (WCM_Controller)initWithConnection:(id)a3 processId:(int)a4;
- (void)dealloc;
- (void)handleDisconnection:(id)a3;
- (void)handleMessage:(id)a3;
- (void)handlePowerState:(BOOL)a3;
- (void)releaseConnection;
- (void)sendMessage:(unint64_t)a3 withArgs:(id)a4;
- (void)sendMessage:(unint64_t)a3 withArgs:(id)a4 withExtraKey:(const char *)a5 andExtraValue:(id)a6;
@end

@implementation WCM_Controller

- (WCM_Controller)init
{
  [WCM_Logging logLevel:18 message:@"WCM controller init"];
  v4.receiver = self;
  v4.super_class = WCM_Controller;
  result = [(WCM_Controller *)&v4 init];
  if (result)
  {
    result->mConnection = 0;
    result->mProcessId = 0;
  }

  return result;
}

- (void)dealloc
{
  [WCM_Logging logLevel:18 message:@"WCM controller dealloc"];
  mConnection = self->mConnection;
  if (mConnection)
  {
    xpc_release(mConnection);
    self->mConnection = 0;
  }

  v4.receiver = self;
  v4.super_class = WCM_Controller;
  [(WCM_Controller *)&v4 dealloc];
}

- (WCM_Controller)initWithConnection:(id)a3 processId:(int)a4
{
  self->mConnection = a3;
  if (a3)
  {
    xpc_retain(a3);
  }

  self->mProcessId = a4;
  if (a4 < 0x2A && ((0x3EEEFFFFFFFuLL >> a4) & 1) != 0)
  {
    v6 = (&off_100241758)[a4];
  }

  else
  {
    v6 = "INVALID_PROC_ID!!!";
    if (a4 == 42)
    {
      v6 = "WRMSOS";
    }
  }

  return [WCM_Logging logLevel:2 message:@"Initialize %@ for %s", self, v6];
}

- (void)releaseConnection
{
  if (self->mConnection)
  {
    mProcessId = self->mProcessId;
    if (mProcessId < 0x2A && ((0x3EEEFFFFFFFuLL >> mProcessId) & 1) != 0)
    {
      v4 = (&off_100241758)[mProcessId];
    }

    else if (mProcessId == 42)
    {
      v4 = "WRMSOS";
    }

    else
    {
      v4 = "INVALID_PROC_ID!!!";
    }

    [WCM_Logging logLevel:2 message:@"Release mConnection for %s", v4];
    xpc_release(self->mConnection);
    self->mConnection = 0;
  }
}

- (void)handlePowerState:(BOOL)a3
{
  mProcessId = self->mProcessId;
  if (mProcessId < 0x2A && ((0x3EEEFFFFFFFuLL >> mProcessId) & 1) != 0)
  {
    v4 = (&off_100241758)[mProcessId];
  }

  else if (mProcessId == 42)
  {
    v4 = "WRMSOS";
  }

  else
  {
    v4 = "INVALID_PROC_ID!!!";
  }

  [WCM_Logging logLevel:0 message:@"WCM_Controller(%s) handlePowerState default implementation", v4];
}

- (void)handleMessage:(id)a3
{
  mProcessId = self->mProcessId;
  if (mProcessId < 0x2A && ((0x3EEEFFFFFFFuLL >> mProcessId) & 1) != 0)
  {
    v4 = (&off_100241758)[mProcessId];
  }

  else if (mProcessId == 42)
  {
    v4 = "WRMSOS";
  }

  else
  {
    v4 = "INVALID_PROC_ID!!!";
  }

  [WCM_Logging logLevel:0 message:@"WCM_Controller(%s) handleMessage default implementation", v4];
}

- (void)handleDisconnection:(id)a3
{
  mProcessId = self->mProcessId;
  if (mProcessId < 0x2A && ((0x3EEEFFFFFFFuLL >> mProcessId) & 1) != 0)
  {
    v6 = (&off_100241758)[mProcessId];
  }

  else if (mProcessId == 42)
  {
    v6 = "WRMSOS";
  }

  else
  {
    v6 = "INVALID_PROC_ID!!!";
  }

  [WCM_Logging logLevel:0 message:@"WCM_Controller(%s) handleDisconnection default implementation (conn=%p)", v6, a3, v3, v4];
}

- (void)sendMessage:(unint64_t)a3 withArgs:(id)a4
{
  *keys = *&off_100241748;
  values[0] = xpc_uint64_create(a3);
  values[1] = a4;
  v7 = xpc_dictionary_create(keys, values, 2uLL);
  mProcessId = self->mProcessId;
  if (self->mConnection)
  {
    if (mProcessId < 0x2A && ((0x3EEEFFFFFFFuLL >> mProcessId) & 1) != 0)
    {
      v9 = (&off_100241758)[mProcessId];
    }

    else if (mProcessId == 42)
    {
      v9 = "WRMSOS";
    }

    else
    {
      v9 = "INVALID_PROC_ID!!!";
    }

    [WCM_Logging logLevel:2 message:@"Sending messageId(%lld) to %s %@", a3, v9, v7];
    xpc_connection_send_message(self->mConnection, v7);
  }

  else
  {
    if (mProcessId < 0x2A && ((0x3EEEFFFFFFFuLL >> mProcessId) & 1) != 0)
    {
      v10 = (&off_100241758)[mProcessId];
    }

    else if (mProcessId == 42)
    {
      v10 = "WRMSOS";
    }

    else
    {
      v10 = "INVALID_PROC_ID!!!";
    }

    [WCM_Logging logLevel:0 message:@"No XPC connection for %s !", v10];
  }

  xpc_release(values[0]);
  xpc_release(v7);
}

- (void)sendMessage:(unint64_t)a3 withArgs:(id)a4 withExtraKey:(const char *)a5 andExtraValue:(id)a6
{
  keys[0] = "kMessageId";
  keys[1] = "kMessageArgs";
  keys[2] = a5;
  values[0] = xpc_uint64_create(a3);
  values[1] = a4;
  values[2] = a6;
  v10 = xpc_dictionary_create(keys, values, 3uLL);
  if (self->mConnection)
  {
    mProcessId = self->mProcessId;
    if (mProcessId < 0x2A && ((0x3EEEFFFFFFFuLL >> mProcessId) & 1) != 0)
    {
      v12 = (&off_100241758)[mProcessId];
    }

    else if (mProcessId == 42)
    {
      v12 = "WRMSOS";
    }

    else
    {
      v12 = "INVALID_PROC_ID!!!";
    }

    [WCM_Logging logLevel:2 message:@"Sending messageId(%lld) to %s %@", a3, v12, v10];
    xpc_connection_send_message(self->mConnection, v10);
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"No XPC connection !"];
  }

  xpc_release(values[0]);
  xpc_release(v10);
}

@end