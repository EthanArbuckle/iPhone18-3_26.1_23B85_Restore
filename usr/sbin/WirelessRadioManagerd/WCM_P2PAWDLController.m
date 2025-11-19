@interface WCM_P2PAWDLController
- (WCM_P2PAWDLController)init;
- (void)dealloc;
- (void)handleAWDLOn:(id)a3;
- (void)handleDisconnection:(id)a3;
- (void)handleMessage:(id)a3;
@end

@implementation WCM_P2PAWDLController

- (WCM_P2PAWDLController)init
{
  v7.receiver = self;
  v7.super_class = WCM_P2PAWDLController;
  v2 = [(WCM_Controller *)&v7 init];
  v3 = v2;
  if (v2)
  {
    BYTE4(v2->awdlStateMonitor) = 0;
    [WCM_Logging logLevel:2 message:@"Creating AWDL State Monitor"];
    BYTE5(v3->awdlStateMonitor) = 0;
    v4 = objc_alloc_init(WiFiP2PAWDLStateMonitor);
    *(&v3->super.mProcessId + 1) = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000870A0;
    v6[3] = &unk_10023E1A0;
    v6[4] = v3;
    [v4 setRealtimeModeUpdatedHandler:v6];
  }

  [*(&v3->super.mProcessId + 1) beginMonitoring];
  [WCM_Logging logLevel:2 message:@"P2PAWDLController Init"];
  return v3;
}

- (void)dealloc
{
  [*(&self->super.mProcessId + 1) endMonitoring];

  v3.receiver = self;
  v3.super_class = WCM_P2PAWDLController;
  [(WCM_Controller *)&v3 dealloc];
}

- (void)handleMessage:(id)a3
{
  uint64 = xpc_dictionary_get_uint64(a3, "kMessageId");
  if (uint64)
  {
    [WCM_Logging logLevel:2 message:@"Received P2PAWDL message-id: %lld", uint64];
    if (uint64 == 2700)
    {

      [(WCM_P2PAWDLController *)self handleAWDLOn:a3];
    }

    else
    {
      [WCM_Logging logLevel:0 message:@"P2P AWDL controller dropping message-id %lld", uint64];
    }
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"Received empty P2PAWDL messageId."];
  }
}

- (void)handleDisconnection:(id)a3
{
  [WCM_Logging logLevel:2 message:@"P2PAWDLController handleDisconnection"];
  [(WCM_P2PAWDLController *)self setMAwdlEnabled:0];
  [(WCM_P2PAWDLController *)self setMRealTimeAwdlTrafficEnabled:0];
  [*(&self->super.mProcessId + 1) endMonitoring];

  *(&self->super.mProcessId + 1) = 0;
  v4 = +[WCM_PolicyManager singleton];

  [v4 updateControllerState:2702];
}

- (void)handleAWDLOn:(id)a3
{
  dictionary = xpc_dictionary_get_dictionary(a3, "kMessageArgs");
  v5 = xpc_dictionary_get_BOOL(dictionary, "kWCMP2PAWDLOn");
  [WCM_Logging logLevel:2 message:@"Received from P2P AWDL Controller AWDLOn:(%d -> %d)", [(WCM_P2PAWDLController *)self mAwdlEnabled], v5];
  if (v5 != [(WCM_P2PAWDLController *)self mAwdlEnabled])
  {
    [(WCM_P2PAWDLController *)self setMAwdlEnabled:v5];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  }

  v6 = +[WCM_PolicyManager singleton];

  [v6 updateAWDLState:v5];
}

@end