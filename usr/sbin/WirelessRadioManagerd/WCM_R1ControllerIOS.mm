@interface WCM_R1ControllerIOS
- (WCM_R1ControllerIOS)init;
- (void)dealloc;
- (void)handleMessage:(id)message;
- (void)handleRCU1Connection:(id)connection;
- (void)handleRCU1NBRangingActive:(id)active;
- (void)handleRCU1QueryStatus:(id)status;
@end

@implementation WCM_R1ControllerIOS

- (WCM_R1ControllerIOS)init
{
  v4.receiver = self;
  v4.super_class = WCM_R1ControllerIOS;
  v2 = [(WCM_R1Controller *)&v4 init];
  [(WCM_R1Controller *)v2 setMRCU1NbBandMask:0];
  return v2;
}

- (void)dealloc
{
  v3 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  if (v3)
  {
    [v3 updateWiFiRCU1ModeChanged:1 andChannelChanged:1 andMode:&off_1002710D0 andChannel:&off_1002710D0];
  }

  v4.receiver = self;
  v4.super_class = WCM_R1ControllerIOS;
  [(WCM_R1Controller *)&v4 dealloc];
}

- (void)handleMessage:(id)message
{
  uint64 = xpc_dictionary_get_uint64(message, "kMessageId");
  [WCM_Logging logLevel:2 message:@"In RCU1 Controller handleMessage messageId = %lld", uint64];
  switch(uint64)
  {
    case 0x322uLL:

      [(WCM_R1ControllerIOS *)self handleRCU1NBRangingActive:message];
      break;
    case 0x321uLL:

      [(WCM_R1ControllerIOS *)self handleRCU1QueryStatus:message];
      break;
    case 0x320uLL:

      [(WCM_R1ControllerIOS *)self handleRCU1Connection:message];
      break;
    default:
      [WCM_Logging logLevel:0 message:@"RCU1 controller dropping message-id %lld", uint64];
      break;
  }
}

- (void)handleRCU1Connection:(id)connection
{
  value = xpc_dictionary_get_value(connection, "kMessageArgs");
  [(WCM_R1Controller *)self setMRCU1PowerOn:xpc_dictionary_get_BOOL(value, "kWCMRCU1PowerOn")];
  if (xpc_dictionary_get_value(value, "kWCMRCU1ChannelNum"))
  {
    [(WCM_R1Controller *)self setMRCU1ChannelNum:xpc_dictionary_get_uint64(value, "kWCMRCU1ChannelNum")];
  }

  if (xpc_dictionary_get_value(value, "kWCMRCU1OnDuration"))
  {
    [(WCM_R1Controller *)self setMRCU1OnDuration:xpc_dictionary_get_uint64(value, "kWCMRCU1OnDuration")];
  }

  if (xpc_dictionary_get_value(value, "kWCMRCU1CycleLength"))
  {
    [(WCM_R1Controller *)self setMRCU1CycleLength:xpc_dictionary_get_uint64(value, "kWCMRCU1CycleLength")];
  }

  if (xpc_dictionary_get_value(value, "kWCMRCU1NumerOfCycles"))
  {
    [(WCM_R1Controller *)self setMRCU1NumberOfCycles:xpc_dictionary_get_uint64(value, "kWCMRCU1NumerOfCycles")];
  }

  if (xpc_dictionary_get_value(value, "kWCMRCU1FrameFormat"))
  {
    [(WCM_R1Controller *)self setMRCU1FrameFormat:xpc_dictionary_get_uint64(value, "kWCMRCU1FrameFormat")];
  }

  if (xpc_dictionary_get_value(value, "kWCMRCU1UseCaseNum"))
  {
    [(WCM_R1Controller *)self setMRCU1UseCaseNum:xpc_dictionary_get_uint64(value, "kWCMRCU1UseCaseNum")];
  }

  if (xpc_dictionary_get_value(value, "kWCMRCU1SideChBandMask"))
  {
    [(WCM_R1Controller *)self setMRCU1NbBandMask:xpc_dictionary_get_uint64(value, "kWCMRCU1SideChBandMask")];
  }

  v5 = [(WCM_R1Controller *)self mRCU1PowerOn]&& ([(WCM_R1Controller *)self mRCU1ChannelNum]== 5 || [(WCM_R1Controller *)self mRCU1NbBandMask]);
  [(WCM_R1Controller *)self setMRCU15GHzInUse:v5];
  [WCM_Logging logLevel:2 message:@"Received from RCU1 Controller Power = (%d) Channel Num = (%d) On Duration = (%d) Cycle Length = (%d) Number of Cycles = (%d) Frame Format = (%d) Use Case Num = (%d) Side Band Mask = (%d)", [(WCM_R1Controller *)self mRCU1PowerOn], [(WCM_R1Controller *)self mRCU1ChannelNum], [(WCM_R1Controller *)self mRCU1OnDuration], [(WCM_R1Controller *)self mRCU1CycleLength], [(WCM_R1Controller *)self mRCU1NumberOfCycles], [(WCM_R1Controller *)self mRCU1FrameFormat], [(WCM_R1Controller *)self mRCU1UseCaseNum], [(WCM_R1Controller *)self mRCU1NbBandMask]];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  if ([+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [WCM_Logging logLevel:2 message:@"Update RCU1 channel = %d, NBBandMask = %d", [(WCM_R1Controller *)self mRCU1ChannelNum], [(WCM_R1Controller *)self mRCU1NbBandMask]];
    v6 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    mRCU1ChannelNum = [(WCM_R1Controller *)self mRCU1ChannelNum];
    mRCU1NbBandMask = [(WCM_R1Controller *)self mRCU1NbBandMask];

    [v6 updateRc1ChannelNumber:mRCU1ChannelNum NbChannelBitmask:mRCU1NbBandMask];
  }
}

- (void)handleRCU1QueryStatus:(id)status
{
  singleton = [+[WCM_PolicyManager singleton](WCM_PolicyManager singleton];
  v5 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  powerState = [singleton powerState];
  powerState2 = [v5 powerState];
  getAny5GHzBTDevicesConnected = [v5 getAny5GHzBTDevicesConnected];
  wifiState = [singleton wifiState];
  v10 = 0x202010000uLL >> (8 * wifiState);
  if (wifiState >= 5)
  {
    LOBYTE(v10) = 0;
  }

  [(WCM_R1ControllerIOS *)self sendRCU1Message:powerState wifiBand:v10 & 3 btPowerState:powerState2 btBand:getAny5GHzBTDevicesConnected isForce:1];
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    -[WCM_R1ControllerIOS sendBlockEnhancedMms:](self, "sendBlockEnhancedMms:", [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] > 0xB);
  }

  v11 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  if (v11)
  {

    [v11 updateRc1OverallConfig];
  }
}

- (void)handleRCU1NBRangingActive:(id)active
{
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    value = xpc_dictionary_get_value(active, "kMessageArgs");
    v5 = xpc_BOOL_get_value(value);
    v6 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];

    [v6 setNBRanigngSessionActive:v5];
  }
}

@end