@interface WCM_FTController
- (WCM_FTController)init;
- (void)dealloc;
- (void)getFaceTimeCallConfig;
- (void)handleFaceTimeCallConfig:(id)config;
- (void)handleMessage:(id)message;
- (void)updateFTRate:(unint64_t)rate;
@end

@implementation WCM_FTController

- (WCM_FTController)init
{
  v3.receiver = self;
  v3.super_class = WCM_FTController;
  result = [(WCM_Controller *)&v3 init];
  *(&result->_currentCallTargetBitRate + 4) = 0;
  *(&result->super.mProcessId + 1) = 0;
  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WCM_FTController;
  [(WCM_Controller *)&v2 dealloc];
}

- (void)handleMessage:(id)message
{
  uint64 = xpc_dictionary_get_uint64(message, "kMessageId");
  if (uint64 == 200)
  {

    [(WCM_FTController *)self handleFaceTimeCallConfig:message];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Unknown FT Message id: %lld", uint64];
  }
}

- (void)handleFaceTimeCallConfig:(id)config
{
  value = xpc_dictionary_get_value(config, "kMessageArgs");
  if (value)
  {
    [(WCM_FTController *)self setCurrentCallTargetBitRate:xpc_dictionary_get_uint64(value, "kWCMFTCallConfig_TargetBitRate")];
  }

  [WCM_Logging logLevel:2 message:@"FT Current Bit RateTarget: %lld", [(WCM_FTController *)self currentCallTargetBitRate]];
  v5 = +[WCM_PolicyManager singleton];

  [v5 updateControllerState:200];
}

- (void)updateFTRate:(unint64_t)rate
{
  if ([(WCM_FTController *)self currentBitRate]== rate)
  {
    [WCM_Logging logLevel:4 message:@"Already at FT Rate :%lld", rate];
  }

  else
  {
    [(WCM_FTController *)self setCurrentBitRate:rate];
    [WCM_Logging logLevel:2 message:@"Modulating FT data rate to %lld", rate];
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_uint64(v5, "kWCMFTCallConfig_BitrateCapability", rate);
      xpc_dictionary_set_uint64(v6, "kWCMFTCallConfig_InterferenceLevel", 0);
      [(WCM_Controller *)self sendMessage:1101 withArgs:v6];

      xpc_release(v6);
    }
  }
}

- (void)getFaceTimeCallConfig
{
  [WCM_Logging logLevel:3 message:@"Asking for FT data rate"];

  [(WCM_Controller *)self sendMessage:1100 withArgs:0];
}

@end