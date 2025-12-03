@interface WCM_Session
- (WCM_Session)init;
- (WCM_Session)initWithConnection:(id)connection;
- (id)description;
- (void)dealloc;
- (void)handleCoexProcessRegistration:(id)registration;
- (void)handleDisconnection;
- (void)handleMessage:(id)message;
- (void)handleXPCMessage:(id)message;
- (void)handleiRATProcessRegistration:(id)registration;
- (void)sendMessage:(id)message;
- (void)suspendExternalConnection;
@end

@implementation WCM_Session

- (WCM_Session)init
{
  [WCM_Logging logLevel:2 message:@"WCM_Session init"];
  v4.receiver = self;
  v4.super_class = WCM_Session;
  result = [(WCM_Session *)&v4 init];
  if (result)
  {
    result->mConnection = 0;
    result->mController = 0;
    result->mProcessId = 0;
  }

  return result;
}

- (void)dealloc
{
  [WCM_Logging logLevel:2 message:@"WCM_Session dealloc"];
  mController = self->mController;
  if (mController)
  {
  }

  mConnection = self->mConnection;
  if (mConnection)
  {
    xpc_release(mConnection);
  }

  v5.receiver = self;
  v5.super_class = WCM_Session;
  [(WCM_Session *)&v5 dealloc];
}

- (id)description
{
  mProcessId = self->mProcessId;
  if (mProcessId < 0x2A && ((0x3EEEFFFFFFFuLL >> mProcessId) & 1) != 0)
  {
    v3 = (&off_100241E78)[mProcessId];
  }

  else if (mProcessId == 42)
  {
    v3 = "WRMSOS";
  }

  else
  {
    v3 = "INVALID_PROC_ID!!!";
  }

  return [NSString stringWithFormat:@"WCM_Session(%s)", v3];
}

- (void)suspendExternalConnection
{
  getProcessId = [(WCM_Session *)self getProcessId];
  if (getProcessId != 6)
  {
    [WCM_Logging logLevel:2 message:@"Suspending XPC with Process %d Connection %@", getProcessId, [(WCM_Session *)self getConnection]];
  }
}

- (WCM_Session)initWithConnection:(id)connection
{
  self->mConnection = connection;
  xpc_retain(connection);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000E5200;
  handler[3] = &unk_10023F930;
  handler[4] = self;
  xpc_connection_set_event_handler(connection, handler);
  xpc_connection_resume(self->mConnection);
  return result;
}

- (void)handleMessage:(id)message
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000E5298;
  v3[3] = &unk_10023DC80;
  v3[4] = self;
  v3[5] = message;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], v3);
}

- (void)handleXPCMessage:(id)message
{
  type = xpc_get_type(message);
  if (type == &_xpc_type_error)
  {
    [WCM_Logging logLevel:1 message:@"WCM_Session: XPC server error: %s", xpc_dictionary_get_string(message, _xpc_error_key_description)];

    [(WCM_Session *)self handleDisconnection];
    return;
  }

  if (type != &_xpc_type_dictionary)
  {
    v6 = xpc_copy_description(message);
    [WCM_Logging logLevel:0 message:@"Unexpected XPC server event: %s", v6];

    free(v6);
    return;
  }

  uint64 = xpc_dictionary_get_uint64(message, "kMessageId");
  value = xpc_dictionary_get_value(message, "kMessageArgs");
  if (uint64)
  {
    goto LABEL_12;
  }

  uint64 = xpc_dictionary_get_int64(message, "kMessageId");
  if (uint64)
  {
    [WCM_Logging logLevel:1 message:@"Got a message with a INT64 instead of a UINT64. Please file a radar in Purple Coex Manager"];
LABEL_12:
    if (uint64 == 301)
    {
      return;
    }
  }

  mProcessId = self->mProcessId;
  if (mProcessId < 0x2A && ((0x3EEEFFFFFFFuLL >> mProcessId) & 1) != 0)
  {
    v10 = (&off_100241E78)[mProcessId];
  }

  else if (mProcessId == 42)
  {
    v10 = "WRMSOS";
  }

  else
  {
    v10 = "INVALID_PROC_ID!!!";
  }

  [WCM_Logging logLevel:2 message:@"Received messageId(%lld) from %s %@", uint64, v10, message];
  if (uint64 == 1)
  {
    [(WCM_Session *)self handleCoexProcessRegistration:value];

    [(WCM_Session *)self handleiRATProcessRegistration:?];
    return;
  }

  mController = self->mController;
  if (mController)
  {
    goto LABEL_34;
  }

  if (uint64 - 404 <= 8 && ((1 << (uint64 + 108)) & 0x103) != 0)
  {
    self->mProcessId = 13;
    self->mController = [WCM_Controller newControllerForProcessId:13];
    [+[WRM_BWEvalManager WRM_BWEvalManagerSingleton](WRM_BWEvalManager "WRM_BWEvalManagerSingleton")];
    mController = self->mController;
LABEL_34:

    [(WCM_Controller *)mController handleMessage:message];
    return;
  }

  if (uint64 == 2600)
  {
    v14 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [WCM_Logging logLevel:3 message:@"XPC message received for WCMTestCellularNetworkConfiguration"];
    if (v14)
    {
      mController = v14;
      goto LABEL_34;
    }

    v15 = @"No Cellular Controller, drop message WCMTestCellularNetworkConfiguration";
    v16 = 3;
  }

  else
  {
    if (uint64 == 2601)
    {
LABEL_29:
      v12 = +[WCM_PolicyManager singleton];
      v13 = 1;
      goto LABEL_30;
    }

    if (uint64 - 1401 > 1)
    {
      if (uint64 == 2602)
      {
        [WCM_Logging logLevel:2 message:@"WCM_Session handling WCMTestWifiCoexConfiguration"];
        goto LABEL_29;
      }

      v15 = @"WCM_Session dropping - No Controllers";
    }

    else
    {
      if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
      {
        v12 = +[WCM_PolicyManager singleton];
        v13 = 30;
LABEL_30:
        mController = [v12 getControllerOfId:v13];
        if (!mController)
        {
          return;
        }

        goto LABEL_34;
      }

      v15 = @"RCU2 Controller - HandleThreadStart - RCU2_SUPPORT_INTEGRATED - Feature not enabled";
    }

    v16 = 2;
  }

  [WCM_Logging logLevel:v16 message:v15];
}

- (void)handleDisconnection
{
  mProcessId = self->mProcessId;
  if (mProcessId < 0x2A && ((0x3EEEFFFFFFFuLL >> mProcessId) & 1) != 0)
  {
    v4 = (&off_100241E78)[mProcessId];
  }

  else if (mProcessId == 42)
  {
    v4 = "WRMSOS";
  }

  else
  {
    v4 = "INVALID_PROC_ID!!!";
  }

  [WCM_Logging logLevel:2 message:@"Handle disconnection with %s", v4];
  mController = self->mController;
  if (mController)
  {
    if (mController == [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
    {
      [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    }

    v6 = self->mController;
    if (v6 == [+[WCM_UCMClientManager WCM_UCMClientManagerSingleton](WCM_UCMClientManager "WCM_UCMClientManagerSingleton")])
    {
      [+[WCM_UCMClientManager WCM_UCMClientManagerSingleton](WCM_UCMClientManager "WCM_UCMClientManagerSingleton")];
    }

    if ([+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
    {
      [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
      [+[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton](WRM_IDSLinkEvalManager "WRM_IDSLinkEvalManagerSingleton")];
      [+[WRM_BWEvalManager WRM_BWEvalManagerSingleton](WRM_BWEvalManager "WRM_BWEvalManagerSingleton")];
      [+[WRM_FT_HandoverManager WRM_FT_HandoverManagerSingleton](WRM_FT_HandoverManager "WRM:"updateControllerSession:ofId:" FT:{0, self->mProcessId}HandoverManagerSingleton")];
    }

    [(WCM_Controller *)self->mController handleDisconnection:self->mConnection];
  }

  if ([(WCM_Session *)self getProcessId]== 6)
  {
    [+[WCM_Server singleton](WCM_Server "singleton")];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E5868;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], block);
}

- (void)sendMessage:(id)message
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000E59A4;
  v3[3] = &unk_10023DC80;
  v3[4] = self;
  v3[5] = message;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], v3);
}

- (void)handleCoexProcessRegistration:(id)registration
{
  if (registration)
  {
    int64 = xpc_dictionary_get_int64(registration, "kWCMRegisterProcess_ProcessId");
    if (!int64)
    {
      int64 = xpc_dictionary_get_uint64(registration, "kWCMRegisterProcess_ProcessId");
    }

    v6 = [+[WCM_Server singleton](WCM_Server "singleton")];
    if (v6)
    {
      if (int64 < 0x2A && ((0x3EEEFFFFFFFuLL >> int64) & 1) != 0)
      {
        v7 = (&off_100241E78)[int64];
      }

      else
      {
        v7 = "INVALID_PROC_ID!!!";
        if (int64 == 42)
        {
          v7 = "WRMSOS";
        }
      }

      [WCM_Logging logLevel:0 message:@"Server already has a existing session(%p) for %s, new session(%p)", v6, v7, self];
    }

    self->mProcessId = int64;
    if (([+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] & 1) != 0 || (v8 = self->mProcessId, v8 == 6))
    {
      if (self->mController)
      {
        [WCM_Logging logLevel:0 message:@"Controller already exists for this session"];
      }

      else
      {
        mController = [WCM_Controller newControllerForProcessId:self->mProcessId];
        self->mController = mController;
        if (self->mProcessId == 6)
        {
          [+[WCM_Server singleton](WCM_Server "singleton")];
          mController = self->mController;
        }

        if (mController)
        {
          [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
          [(WCM_Controller *)self->mController initWithConnection:self->mConnection processId:self->mProcessId];
        }
      }

      v10 = +[WCM_UCMClientManager WCM_UCMClientManagerSingleton];
      v11 = self->mController;
      mProcessId = self->mProcessId;

      [v10 updateControllerSession:v11 ofId:mProcessId];
    }

    else
    {
      if (v8 < 0x2A && ((0x3EEEFFFFFBFuLL >> v8) & 1) != 0)
      {
        v13 = (&off_100241D28)[v8];
      }

      else if (v8 == 42)
      {
        v13 = "WRMSOS";
      }

      else
      {
        v13 = "INVALID_PROC_ID!!!";
      }

      [WCM_Logging logLevel:1 message:@"WCM_Session: Coex not active on this platform, not registering for %s", v13];
    }
  }

  else
  {

    [WCM_Logging logLevel:"logLevel:message:" message:?];
  }
}

- (void)handleiRATProcessRegistration:(id)registration
{
  if (registration)
  {
    int64 = xpc_dictionary_get_int64(registration, "kWCMRegisterProcess_ProcessId");
    self->mProcessId = int64;
    if (!int64)
    {
      self->mProcessId = xpc_dictionary_get_uint64(registration, "kWCMRegisterProcess_ProcessId");
    }

    if ([+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
    {
      if (!self->mController)
      {
        mProcessId = self->mProcessId;
        if (mProcessId < 0x2A && ((0x3EEEFFFFFFFuLL >> mProcessId) & 1) != 0)
        {
          v7 = (&off_100241E78)[mProcessId];
        }

        else if (mProcessId == 42)
        {
          v7 = "WRMSOS";
        }

        else
        {
          v7 = "INVALID_PROC_ID!!!";
        }

        [WCM_Logging logLevel:18 message:@"WCM_Session: iRAT registering for %s", v7];
        self->mController = [WCM_Controller newControllerForProcessId:self->mProcessId];
        if (self->mProcessId == 6)
        {
          [+[WCM_Server singleton](WCM_Server "singleton")];
        }

        [WCM_Logging logLevel:18 message:@"WCM_Session: mConnection %@", self->mConnection];
        [(WCM_Controller *)self->mController initWithConnection:self->mConnection processId:self->mProcessId];
      }

      [WCM_Logging logLevel:3 message:@"WCM_Session: Registed with Handover Manager, updating controller"];
      [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
      [+[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton](WRM_IDSLinkEvalManager "WRM_IDSLinkEvalManagerSingleton")];
      [+[WRM_BWEvalManager WRM_BWEvalManagerSingleton](WRM_BWEvalManager "WRM_BWEvalManagerSingleton")];
      v10 = +[WRM_FT_HandoverManager WRM_FT_HandoverManagerSingleton];
      mController = self->mController;
      v12 = self->mProcessId;

      [v10 updateControllerSession:mController ofId:v12];
    }

    else
    {
      v8 = self->mProcessId;
      if (v8 < 0x2A && ((0x3EEEFFFFFFFuLL >> v8) & 1) != 0)
      {
        v9 = (&off_100241E78)[v8];
      }

      else if (v8 == 42)
      {
        v9 = "WRMSOS";
      }

      else
      {
        v9 = "INVALID_PROC_ID!!!";
      }

      [WCM_Logging logLevel:1 message:@"WCM_Session: iRAT not active on this platform, not registering for %s.", v9];
    }
  }

  else
  {

    [WCM_Logging logLevel:"logLevel:message:" message:?];
  }
}

@end