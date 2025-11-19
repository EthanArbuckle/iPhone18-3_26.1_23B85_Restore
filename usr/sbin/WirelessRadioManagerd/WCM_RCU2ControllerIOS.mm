@interface WCM_RCU2ControllerIOS
- (WCM_RCU2ControllerIOS)init;
- (void)dealloc;
- (void)handleMessage:(id)a3;
@end

@implementation WCM_RCU2ControllerIOS

- (WCM_RCU2ControllerIOS)init
{
  v5.receiver = self;
  v5.super_class = WCM_RCU2ControllerIOS;
  v2 = [(WCM_RCU2Controller *)&v5 init];
  [WCM_Logging logLevel:2 message:@"WCM_RCU2ControllerIOS:Init - Enter"];
  v3 = objc_alloc_init(WCM_CtrXPCClient);
  [(WCM_RCU2Controller *)v2 setThreadClient:v3];

  [WCM_Logging logLevel:2 message:@"WCM_RCU2ControllerIOS:Init - Exit"];
  return v2;
}

- (void)dealloc
{
  [(WCM_RCU2Controller *)self setThreadClient:0];
  v3.receiver = self;
  v3.super_class = WCM_RCU2ControllerIOS;
  [(WCM_RCU2Controller *)&v3 dealloc];
}

- (void)handleMessage:(id)a3
{
  v6 = a3;
  uint64 = xpc_dictionary_get_uint64(v6, "kMessageId");
  [WCM_Logging logLevel:2 message:@"In RCU2 Controller handleMessage messageId = %lld", uint64];
  if (uint64 == 1402)
  {
    v5 = [(WCM_RCU2Controller *)self threadClient];
    [v5 HandleThreadStop:v6];
    goto LABEL_5;
  }

  if (uint64 == 1401)
  {
    v5 = [(WCM_RCU2Controller *)self threadClient];
    [v5 HandleThreadStart:v6];
LABEL_5:

    goto LABEL_7;
  }

  [WCM_Logging logLevel:0 message:@"RCU2 controller dropping message-id %lld", uint64];
LABEL_7:
}

@end