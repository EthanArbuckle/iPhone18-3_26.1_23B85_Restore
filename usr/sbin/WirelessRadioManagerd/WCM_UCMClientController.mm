@interface WCM_UCMClientController
- (int)getMyClientType;
- (void)handleMessage:(id)message;
@end

@implementation WCM_UCMClientController

- (int)getMyClientType
{
  [WCM_Logging logLevel:2 message:@"getMyClientType, myProcessID: %d", [(WCM_Controller *)self getProcessId]];
  v3 = [(WCM_Controller *)self getProcessId]- 35;
  if (v3 < 8 && ((0xE1u >> v3) & 1) != 0)
  {
    return dword_1001992F0[v3];
  }

  [WCM_Logging logLevel:2 message:@"myClientType: UCMClientUnknown"];
  return 0;
}

- (void)handleMessage:(id)message
{
  uint64 = xpc_dictionary_get_uint64(message, "kMessageId");
  if (uint64)
  {
    [WCM_Logging logLevel:2 message:@"Received UCMClient message-id: %lld", uint64];
    if (uint64 <= 2803)
    {
      if (uint64 == 2300)
      {
        v9 = +[WCM_UCMClientManager WCM_UCMClientManagerSingleton];

        [v9 postBTConnectedDevices];
      }

      else
      {
        if (uint64 != 2802)
        {
          goto LABEL_26;
        }

        v6 = +[WCM_UCMClientManager WCM_UCMClientManagerSingleton];

        [v6 getHomeKitBtLoad:message];
      }
    }

    else
    {
      switch(uint64)
      {
        case 2804:
          v7 = +[WCM_UCMClientManager WCM_UCMClientManagerSingleton];

          [v7 enableHomeKitTimer:message];
          break;
        case 2805:
          v8 = +[WCM_UCMClientManager WCM_UCMClientManagerSingleton];

          [v8 enableFrequencyUpdatesForMic:message];
          break;
        case 2807:
          v5 = +[WCM_UCMClientManager WCM_UCMClientManagerSingleton];

          [v5 enableULFrequencyUpdates:message];
          return;
        default:
LABEL_26:
          [WCM_Logging logLevel:0 message:@"UCMClient controller dropping message-id %lld", uint64];
          return;
      }
    }
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"Received empty UCMClient messageId."];
  }
}

@end