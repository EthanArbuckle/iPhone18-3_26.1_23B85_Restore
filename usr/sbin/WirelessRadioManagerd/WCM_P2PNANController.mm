@interface WCM_P2PNANController
- (WCM_P2PNANController)init;
- (void)dealloc;
- (void)handleDisconnection:(id)a3;
- (void)handleMessage:(id)a3;
- (void)handleNANOn:(id)a3;
- (void)handleNANRealTimeOn:(id)a3;
@end

@implementation WCM_P2PNANController

- (WCM_P2PNANController)init
{
  v5.receiver = self;
  v5.super_class = WCM_P2PNANController;
  v2 = [(WCM_Controller *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *(&v2->super.mProcessId + 4) = 0;
    *(&v2->super.mProcessId + 5) = 0;
  }

  [WCM_Logging logLevel:2 message:@"P2PNANController Init"];
  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WCM_P2PNANController;
  [(WCM_Controller *)&v2 dealloc];
}

- (void)handleMessage:(id)a3
{
  uint64 = xpc_dictionary_get_uint64(a3, "kMessageId");
  if (uint64)
  {
    [WCM_Logging logLevel:2 message:@"Received P2PNAN message-id: %lld", uint64];
    if (uint64 == 2703)
    {

      [(WCM_P2PNANController *)self handleNANRealTimeOn:a3];
    }

    else if (uint64 == 2701)
    {

      [(WCM_P2PNANController *)self handleNANOn:a3];
    }

    else
    {
      [WCM_Logging logLevel:0 message:@"P2P NAN controller dropping message-id %lld", uint64];
    }
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"Received empty P2PNAN messageId."];
  }
}

- (void)handleDisconnection:(id)a3
{
  [WCM_Logging logLevel:2 message:@"P2PNANController handleDisconnection"];
  [(WCM_P2PNANController *)self setMNanEnabled:0];

  [(WCM_P2PNANController *)self setMNanRealTimeEnabled:0];
}

- (void)handleNANOn:(id)a3
{
  dictionary = xpc_dictionary_get_dictionary(a3, "kMessageArgs");
  v5 = xpc_dictionary_get_BOOL(dictionary, "kWCMP2PNANOn");
  [WCM_Logging logLevel:2 message:@"Received from P2P NAN Controller NANOn:(%d -> %d)", [(WCM_P2PNANController *)self mNanEnabled], v5];
  if (v5 != [(WCM_P2PNANController *)self mNanEnabled])
  {
    [(WCM_P2PNANController *)self setMNanEnabled:v5];
    if (!v5)
    {
      [(WCM_P2PNANController *)self setMNanRealTimeEnabled:0];
      [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    }
  }

  v6 = +[WCM_PolicyManager singleton];

  [v6 updateNANState:v5];
}

- (void)handleNANRealTimeOn:(id)a3
{
  dictionary = xpc_dictionary_get_dictionary(a3, "kMessageArgs");
  v5 = xpc_dictionary_get_BOOL(dictionary, "kWCMP2PNANRealTimeOn");
  [WCM_Logging logLevel:2 message:@"Received from P2P NAN Controller RealTimeNANOn:(%d -> %d)", [(WCM_P2PNANController *)self mNanRealTimeEnabled], v5];
  if (v5 != [(WCM_P2PNANController *)self mNanRealTimeEnabled])
  {
    [(WCM_P2PNANController *)self setMNanRealTimeEnabled:v5];
    v6 = +[WCM_PolicyManager singleton];

    [v6 updateControllerState:2702];
  }
}

@end