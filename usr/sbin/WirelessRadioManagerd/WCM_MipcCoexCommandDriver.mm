@interface WCM_MipcCoexCommandDriver
- (WCM_MipcCoexCommandDriver)init;
- (id)createMessageWithMsgId:(unint64_t)id withArgs:(id)args withSubId:(id)subId;
- (void)clientError;
- (void)clientStarted;
- (void)clientStopped;
- (void)connectBaseband;
- (void)handleCoexManagerEvent:(id)event;
- (void)handleEvent:(id)event;
- (void)sendMessage:(unint64_t)message withArgs:(id)args withSubId:(unint64_t)id;
- (void)setCellularController:(id)controller;
- (void)updateBasebandPowerState;
@end

@implementation WCM_MipcCoexCommandDriver

- (void)connectBaseband
{
  [WCM_Logging logLevel:3 message:@"YYDebug_ MipcCoexCommandDriver-connectBaseband: MIPC Client to be started"];

  [WCM_Logging logLevel:3 message:@"YYDebug_ MipcCoexCommandDriver-connectBaseband: Registering event callbacks"];
}

- (WCM_MipcCoexCommandDriver)init
{
  v8.receiver = self;
  v8.super_class = WCM_MipcCoexCommandDriver;
  v2 = [(WCM_MipcCoexCommandDriver *)&v8 init];
  if (v2)
  {
    [WCM_Logging logLevel:3 message:@"YYDebug_ MipcCoexCommandDriver: MIPC Client init"];
    mCellularController = v2->mCellularController;
    v2->mCellularController = 0;

    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("com.apple.CoexManager.MipcDriver", v4);
    mQueue = v2->mQueue;
    v2->mQueue = v5;
  }

  return v2;
}

- (void)setCellularController:(id)controller
{
  controllerCopy = controller;
  [WCM_Logging logLevel:3 message:@"YYDebug_ MipcCoexCommandDriver:  Set cellular controller\n"];
  mCellularController = self->mCellularController;
  self->mCellularController = controllerCopy;
}

- (void)clientStarted
{
  [WCM_Logging logLevel:3 message:@"YYDebug_ MipcCoexCommandDriver: update BB power state\n"];
  if (!self->driverStarted)
  {
    self->driverStarted = 1;
  }

  [(WCM_MipcCoexCommandDriver *)self updateBasebandPowerState];
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "kWCMCellular_BBState", 0);
  [(WCM_MipcCoexCommandDriver *)self sendMessage:388 withArgs:v3 withSubId:0];
}

- (void)clientStopped
{
  self->driverStarted = 0;
  [WCM_Logging logLevel:2 message:@"YYDebug_ Coex MIPC Driver: MIPC Client stopped\n"];
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "kWCMCellular_BBState", 1);
  [(WCM_MipcCoexCommandDriver *)self sendMessage:388 withArgs:v3 withSubId:0];
}

- (void)clientError
{
  [WCM_Logging logLevel:2 message:@"YYDebug_ Coex MIPC Driver: MIPC Client error\n"];
  self->driverStarted = 0;
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "kWCMCellular_BBState", 2);
  [(WCM_MipcCoexCommandDriver *)self sendMessage:388 withArgs:v3 withSubId:0];
}

- (id)createMessageWithMsgId:(unint64_t)id withArgs:(id)args withSubId:(id)subId
{
  argsCopy = args;
  subIdCopy = subId;
  *keys = *off_10023D9A0;
  v16 = "kSubId";
  values[0] = xpc_uint64_create(id);
  v9 = argsCopy;
  values[1] = v9;
  v10 = subIdCopy;
  values[2] = v10;
  v11 = xpc_dictionary_create(keys, values, 3uLL);
  for (i = 2; i != -1; --i)
  {
  }

  return v11;
}

- (void)handleEvent:(id)event
{
  eventCopy = event;
  [WCM_Logging logLevel:2 message:@"YYDebug_ Coex MIPC Driver: Receiving XPC Event : %@", eventCopy];
  if (self->driverStarted)
  {
    v5 = xpc_copy(eventCopy);
    mQueue = self->mQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017E68;
    block[3] = &unk_10023D980;
    block[4] = self;
    v9 = v5;
    v7 = v5;
    dispatch_async(mQueue, block);
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"YYDebug_ Coex MIPC Driver:  MIPC client is not ready yet, XPC message is discarded"];
  }
}

- (void)handleCoexManagerEvent:(id)event
{
  xdict = event;
  v4 = [WCM_Logging stringFromXPCObjectWithPrefix:"stringFromXPCObjectWithPrefix:prefix:" prefix:?];
  [WCM_Logging logLevel:2 message:@"YYDebug_ Coex MIPC Driver: handleCoexManagerEvent Handling XPC Event : %@", v4];
  uint64 = xpc_dictionary_get_uint64(xdict, "kMessageId");
  if (!uint64)
  {
    [WCM_Logging logLevel:0 message:@"Coex MIPC Driver:  XPC miss key of message id"];
    goto LABEL_18;
  }

  v6 = xpc_dictionary_get_value(xdict, "kMessageArgs");
  if (uint64 > 1207)
  {
    if (uint64 == 1208)
    {
      [WCM_Logging logLevel:2 message:@"YYDebug_ Coex MIPC Driver: Receive WCMCellularSetScanFreqBandFilter."];
      [(WCM_MipcCoexCommandDriver *)self setScanFreq:v6 SubId:0];
      goto LABEL_17;
    }

    if (uint64 != 1214)
    {
      if (uint64 == 1230)
      {
        goto LABEL_17;
      }

LABEL_11:
      [WCM_Logging logLevel:0 message:@"YYDebug_ Coex MIPC driver does not support message %llu", uint64];
      goto LABEL_17;
    }

    v7 = @"YYDebug_ Coex MIPC Driver: Receive WCMCellularSetTimeShareConfigReq. TODO";
LABEL_16:
    [WCM_Logging logLevel:2 message:v7];
    goto LABEL_17;
  }

  if (uint64 == 1200)
  {
    v7 = @"YYDebug_ Coex MIPC Driver: Receive WCMCellularGetNetworkConfiguration. TODO";
    goto LABEL_16;
  }

  if (uint64 == 1202)
  {
    v7 = @"YYDebug_ Coex MIPC Driver: Receive WCMCellularSetNetworkConfigOfInterest. TODO";
    goto LABEL_16;
  }

  if (uint64 != 1205)
  {
    goto LABEL_11;
  }

  [WCM_Logging logLevel:2 message:@"YYDebug_ Coex MIPC Driver: Receive WCMCellularSetWCI2Mode."];
  [(WCM_MipcCoexCommandDriver *)self setWci2Feature:xpc_dictionary_get_uint64(v6, "kWCMCellularSetWCI2Mode_Policy")];
  [(WCM_MipcCoexCommandDriver *)self setTxBlankingConfig:v6 SubId:0];
LABEL_17:

LABEL_18:
}

- (void)sendMessage:(unint64_t)message withArgs:(id)args withSubId:(unint64_t)id
{
  argsCopy = args;
  v9 = xpc_uint64_create(id);
  *keys = *off_10023D9A0;
  v17 = "kSubId";
  values[0] = xpc_uint64_create(message);
  v10 = argsCopy;
  values[1] = v10;
  v11 = v9;
  values[2] = v11;
  v12 = xpc_dictionary_create(keys, values, 3uLL);
  if (self->mCellularController)
  {
    v13 = [WCM_Logging stringFromXPCObjectWithPrefix:v12 prefix:@"YYDebug_ "];
    [WCM_Logging logLevel:2 message:@"YYDebug_ MIPC Driver: Sending messageId(%lld) to Coex Manager %@", message, v13];
    [(WCM_CellularController *)self->mCellularController handleMessage:v12];
  }

  for (i = 2; i != -1; --i)
  {
  }
}

- (void)updateBasebandPowerState
{
  v3 = xpc_dictionary_create(0, 0, 0);
  [WCM_MipcCoexCommandDriver sendMessage:"sendMessage:withArgs:withSubId:" withArgs:304 withSubId:?];
}

@end