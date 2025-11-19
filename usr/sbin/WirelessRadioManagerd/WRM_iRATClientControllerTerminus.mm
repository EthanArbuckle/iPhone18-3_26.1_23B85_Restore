@interface WRM_iRATClientControllerTerminus
- (WRM_iRATClientControllerTerminus)init;
- (void)dealloc;
- (void)handleLinkPrefSubscribeTerminus:(id)a3;
- (void)handleLinkPreferenceNotificationTerminus;
- (void)handleMessage:(id)a3;
- (void)handleSubscribeStatusUpdateTerminus:(id)a3;
@end

@implementation WRM_iRATClientControllerTerminus

- (WRM_iRATClientControllerTerminus)init
{
  v4.receiver = self;
  v4.super_class = WRM_iRATClientControllerTerminus;
  v2 = [(WRM_iRATClientController *)&v4 init];
  if (v2)
  {
    [(WRM_iRATClientControllerTerminus *)v2 setQueue:dispatch_queue_create("com.apple.WirelessRadioManager.iRATClientTerminus", 0)];
    [(WRM_iRATClientControllerTerminus *)v2 setMTerminusContext:objc_alloc_init(WRM_TerminusContext)];
    [(WRM_iRATClientControllerTerminus *)v2 setRxClientType:0];
  }

  return v2;
}

- (void)dealloc
{
  [WCM_Logging logLevel:24 message:@"WRM_iRATClientControllerTerminus: dealloc!!!"];
  if ([(WRM_iRATClientControllerTerminus *)self queue])
  {
    dispatch_release([(WRM_iRATClientControllerTerminus *)self queue]);
  }

  [(WRM_iRATClientControllerTerminus *)self setQueue:0];
  if ([(WRM_iRATClientControllerTerminus *)self mTerminusContext])
  {

    [(WRM_iRATClientControllerTerminus *)self setMTerminusContext:0];
  }

  [(WRM_iRATClientControllerTerminus *)self setRxClientType:0];
  v3.receiver = self;
  v3.super_class = WRM_iRATClientControllerTerminus;
  [(WRM_iRATClientController *)&v3 dealloc];
}

- (void)handleMessage:(id)a3
{
  uint64 = xpc_dictionary_get_uint64(a3, "kMessageId");
  if (uint64 > 420)
  {
    if (uint64 == 421)
    {
      v6 = +[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton];

      [v6 updateControllerState:a3];
    }

    else
    {
      if (uint64 != 2500)
      {
LABEL_12:

        [WCM_Logging logLevel:24 message:@"Received unsupported iRAT client message"];
        return;
      }

      [(WRM_iRATClientController *)self setLowPowerModePeriodicWakeUpNotificationSubscribed:1];
    }
  }

  else
  {
    if (uint64 != 413)
    {
      if (uint64 == 414)
      {

        [(WRM_iRATClientControllerTerminus *)self handleSubscribeStatusUpdateTerminus:a3];
        return;
      }

      goto LABEL_12;
    }

    [(WRM_iRATClientControllerTerminus *)self handleLinkPrefSubscribeTerminus:a3];
  }
}

- (void)handleLinkPrefSubscribeTerminus:(id)a3
{
  xpc_dictionary_set_uint64(a3, "kClientType", [(WRM_iRATClientController *)self getMyClientType]);
  if (xpc_dictionary_get_value(a3, "kMessageArgs"))
  {
    v4 = +[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton];

    [v4 updateControllerState:a3];
  }

  else
  {

    [WCM_Logging logLevel:16 message:@"Discarding invalid Subscribe message from Terminus client"];
  }
}

- (void)handleSubscribeStatusUpdateTerminus:(id)a3
{
  xpc_dictionary_set_uint64(a3, "kClientType", [(WRM_iRATClientController *)self getMyClientType]);
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value)
  {
    v5 = value;
    uint64 = xpc_dictionary_get_uint64(value, "kWRMProximityLinkRecommendationType");
    [WCM_Logging logLevel:18 message:@"Application link preference %d active %d", uint64, xpc_dictionary_get_BOOL(v5, "kWRMProximityAppLinkPreferenceActive")];
    v7 = +[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton];

    [v7 updateControllerState:a3];
  }

  else
  {

    [WCM_Logging logLevel:16 message:@"Discarding invalid status update message from Terminus client"];
  }
}

- (void)handleLinkPreferenceNotificationTerminus
{
  v3 = xpc_array_create(0, 0);
  if ([(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] mBtLinkRecommendationUpdateNeeded]|| [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] mForceUpdateNeeded])
  {
    v4 = [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] mBtLinkIsRecommended];
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v5, "kWRMProximityLinkRecommendationType", 1uLL);
    xpc_dictionary_set_BOOL(v5, "kWRMProximityLinkisRecommended", v4);
    xpc_array_append_value(v3, v5);
    [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] setMBtLinkRecommendationUpdateNeeded:0];
  }

  if ([(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] mCompanionWifiLinkRecommendationUpdateNeeded])
  {
    v6 = [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] mCompanionWifiLinkIsRecommended];
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v7, "kWRMProximityLinkRecommendationType", 0);
    xpc_dictionary_set_BOOL(v7, "kWRMProximityLinkisRecommended", v6);
    xpc_array_append_value(v3, v7);
    [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] setMCompanionWifiLinkRecommendationUpdateNeeded:0];
  }

  if ([(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] mDirectWifiLinkRecommendationUpdateNeeded]|| [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] mForceUpdateNeeded])
  {
    v8 = [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] mDirectWifiLinkIsRecommended];
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v9, "kWRMProximityLinkRecommendationType", 2uLL);
    xpc_dictionary_set_BOOL(v9, "kWRMProximityLinkisRecommended", v8);
    xpc_dictionary_set_uint64(v9, "kWRMProximityBtRssi", [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] btMovingAvgRSSI]);
    xpc_dictionary_set_int64(v9, "kWRMProximityBtRetransmissionRateTx", [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] btRetransmissionRateTx]);
    xpc_dictionary_set_int64(v9, "kWRMProximityBtRetransmissionRateRx", [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] btRetransmissionRateRx]);
    xpc_dictionary_set_int64(v9, "kWRMProximityBtTech", [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] btTech]);
    xpc_dictionary_set_int64(v9, "kWRMProximityWifiRssi", [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] wifiRSSI]);
    xpc_dictionary_set_int64(v9, "kWRMProximityWifiSnr", [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] wifiSNR]);
    xpc_dictionary_set_int64(v9, "kWRMProximityWifiBeaconPer", [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] beaconPER]);
    xpc_dictionary_set_int64(v9, "kWRMProximityWifiNwType", [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] nwType]);
    xpc_dictionary_set_int64(v9, "kWRMProximityWifiLSMBeRecommendation", [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] lsmRecommendationBe]);
    xpc_dictionary_set_int64(v9, "kWRMProximityWifiExpectedThroughputVIBE", [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] expectedThroughputVIBE]);
    xpc_dictionary_set_int64(v9, "kWRMProximityWifiPacketLifetimeVIBE", [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] packetLifetimeVIBE]);
    xpc_dictionary_set_int64(v9, "kWRMProximityWifiPacketLossRateVIBE", [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] packetLossRateVIBE]);
    xpc_array_append_value(v3, v9);
    [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] setMDirectWifiLinkRecommendationUpdateNeeded:0];
  }

  count = xpc_array_get_count(v3);
  if (count)
  {
    v11 = count;
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v12, "kWRMApplicationTypeList", v3);
    [(WCM_Controller *)self sendMessage:1305 withArgs:v12];
    [WCM_Logging logLevel:27 message:@"Sending Proximity Link Preference Notification having %d recommendation(s)", v11];
    v13 = xpc_array_get_count(v3);
    if (v13)
    {
      v14 = v13;
      for (i = 0; i != v14; ++i)
      {
        value = xpc_array_get_value(v3, i);
        xpc_release(value);
      }
    }

    xpc_release(v12);
  }

  else
  {
    [WCM_Logging logLevel:27 message:@"No need to send link preference notification as no change in recommendation"];
  }

  xpc_release(v3);
  [(WRM_TerminusContext *)[(WRM_iRATClientControllerTerminus *)self mTerminusContext] setMForceUpdateNeeded:0];
  v17 = [(WRM_iRATClientControllerTerminus *)self mTerminusContext];

  [(WRM_TerminusContext *)v17 setMIsRetry:0];
}

@end