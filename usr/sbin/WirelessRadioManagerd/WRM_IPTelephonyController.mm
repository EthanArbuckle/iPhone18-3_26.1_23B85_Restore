@interface WRM_IPTelephonyController
- (WRM_IPTelephonyController)init;
- (void)dealloc;
- (void)handleIPTelephonyMetrics:(id)metrics;
- (void)handleMessage:(id)message;
@end

@implementation WRM_IPTelephonyController

- (WRM_IPTelephonyController)init
{
  v3.receiver = self;
  v3.super_class = WRM_IPTelephonyController;
  return [(WCM_Controller *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WRM_IPTelephonyController;
  [(WCM_Controller *)&v2 dealloc];
}

- (void)handleMessage:(id)message
{
  uint64 = xpc_dictionary_get_uint64(message, "kMessageId");
  if (!uint64)
  {
    uint64 = xpc_dictionary_get_int64(message, "kMessageId");
    if (uint64)
    {
      [WCM_Logging logLevel:17 message:@"Got a message with a INT64 instead of a UINT64. Please file a radar in Purple Radio Manager"];
    }
  }

  [WCM_Logging logLevel:22 message:@"Received IP Telephony message-id: %lld", uint64];
  if ((uint64 & 0xFFFFFFFFFFFFFFFELL) == 0x2BC)
  {

    [(WRM_IPTelephonyController *)self handleIPTelephonyMetrics:message];
  }
}

- (void)handleIPTelephonyMetrics:(id)metrics
{
  [WCM_Logging logLevel:22 message:@"IP Telephony event received"];
  v4 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

  [v4 updateControllerState:metrics];
}

@end