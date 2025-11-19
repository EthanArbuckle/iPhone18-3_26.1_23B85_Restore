@interface WCM_AirplayController
- (WCM_AirplayController)init;
- (void)dealloc;
- (void)handleAirplayCritical:(id)a3;
- (void)handleMessage:(id)a3;
@end

@implementation WCM_AirplayController

- (WCM_AirplayController)init
{
  v5.receiver = self;
  v5.super_class = WCM_AirplayController;
  v2 = [(WCM_Controller *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *(&v2->super.mProcessId + 4) = 0;
    *&v2->_mAirplayIsCritical = 0;
    *(&v2->super.mProcessId + 3) = 0;
  }

  [WCM_Logging logLevel:2 message:@"AirplayController Init"];
  return v3;
}

- (void)dealloc
{
  [WCM_Logging logLevel:2 message:@"AirplayController Dealloc. Force send critical false."];
  [(WCM_AirplayController *)self setMAirplayIsCritical:0];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v3.receiver = self;
  v3.super_class = WCM_AirplayController;
  [(WCM_Controller *)&v3 dealloc];
}

- (void)handleMessage:(id)a3
{
  uint64 = xpc_dictionary_get_uint64(a3, "kMessageId");
  if (uint64)
  {
    [WCM_Logging logLevel:2 message:@"Received airplay message-id: %lld", uint64];
    if (uint64 == 1900)
    {

      [(WCM_AirplayController *)self handleAirplayCritical:a3];
    }

    else
    {
      [WCM_Logging logLevel:0 message:@"Airplay controller dropping message-id %lld", uint64];
    }
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"Received empty airplay messageId."];
  }
}

- (void)handleAirplayCritical:(id)a3
{
  dictionary = xpc_dictionary_get_dictionary(a3, "kMessageArgs");
  [(WCM_AirplayController *)self setMAirplayIsCritical:xpc_dictionary_get_BOOL(dictionary, "kWCMAirplayCritical")];
  if (xpc_dictionary_get_value(dictionary, "kWCMAirplayDuration"))
  {
    [(WCM_AirplayController *)self setMAirplayDuration:xpc_dictionary_get_uint64(dictionary, "kWCMAirplayDuration")];
  }

  if (xpc_dictionary_get_value(dictionary, "kWCMAirplayCriticalityPercentage"))
  {
    [(WCM_AirplayController *)self setMAirplayCriticalityPercentage:xpc_dictionary_get_uint64(dictionary, "kWCMAirplayCriticalityPercentage")];
  }

  [WCM_Logging logLevel:2 message:@"Received from Airplay Controller critical = (%d) duration (ms) = (%d) criticality percentage = (%d)", [(WCM_AirplayController *)self mAirplayIsCritical], [(WCM_AirplayController *)self mAirplayDuration], [(WCM_AirplayController *)self mAirplayCriticalityPercentage]];
  v5 = +[WCM_PolicyManager singleton];

  [v5 updateControllerState:1901];
}

@end