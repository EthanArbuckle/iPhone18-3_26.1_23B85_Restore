@interface WRM_iRATClientController
- (BOOL)isLowPowerModePeriodicWakeUpNotificationSubscribed;
- (BOOL)isVoiceLqmSubscribed;
- (WRM_iRATClientController)init;
- (id)getMobilityContextFromList:(unint64_t)a3;
- (id)getStaleContextFromList;
- (int)getMyClientType;
- (void)addMobilityContextToList:(id)a3;
- (void)deactivateMobilityContexts;
- (void)dealloc;
- (void)deleteMobilityContext:(unint64_t)a3;
- (void)existingContexts;
- (void)handleBBAssertBGAppActive:(id)a3;
- (void)handleBasebandMetricsInterfaceRequest:(id)a3;
- (void)handleCommCenterBasebandOperatingChange:(id)a3;
- (void)handleDisconnection:(id)a3;
- (void)handleGetStreamingMetrics:(id)a3;
- (void)handleIWLANMetrics:(id)a3;
- (void)handleLinkPrefGetMetrics:(id)a3;
- (void)handleLinkPrefSubscribe:(id)a3;
- (void)handleLinkPrefSubscribeCM:(id)a3;
- (void)handleLinkPrefSubscribeFaceTimeCalling:(id)a3;
- (void)handleLinkPrefSubscribeIDS:(id)a3;
- (void)handleLinkPreferenceNotification:(BOOL)a3;
- (void)handleLinkPreferenceNotificationCM:(BOOL)a3;
- (void)handleLinkPreferenceNotificationFaceTimeCalling:(BOOL)a3 :(id)a4 :(id)a5;
- (void)handleLinkPreferenceNotificationIDS:(BOOL)a3;
- (void)handleMessage:(id)a3;
- (void)handleMetricsReportFaceTimeCalling:(id)a3;
- (void)handleMetricsReportIDS:(id)a3;
- (void)handleSIPStalledMetrics:(id)a3;
- (void)handleStallCM:(id)a3;
- (void)handleSubscribeStatusUpdate:(id)a3;
- (void)handleSubscribeStatusUpdateCM:(id)a3;
- (void)handleSubscribeStatusUpdateFaceTimeCalling:(id)a3;
- (void)handleSubscribeStatusUpdateIDS:(id)a3;
- (void)handleSubscribeStatusUpdateTerminus:(id)a3;
- (void)postiRATNotificationToEnableDisableCellData:(unint64_t)a3 :(BOOL)a4;
- (void)purgeStaleMobilityContexts;
- (void)removeAllMobilityContextsFromList;
- (void)removeMobilityContextFromList:(id)a3;
- (void)setLowPowerModePeriodicWakeUpNotificationSubscribed:(BOOL)a3;
- (void)setVoiceLqmSubscribed:(BOOL)a3;
@end

@implementation WRM_iRATClientController

- (int)getMyClientType
{
  [WCM_Logging logLevel:18 message:@"getMyClientType, myProcessID: %d", [(WCM_Controller *)self getProcessId]];
  v3 = [(WCM_Controller *)self getProcessId]- 7;
  if (v3 < 0x1C && ((0xE2FFFF3u >> v3) & 1) != 0)
  {
    return dword_100195A28[v3];
  }

  [WCM_Logging logLevel:18 message:@"myClientType = ClientUnknown"];
  return 0;
}

- (WRM_iRATClientController)init
{
  v4.receiver = self;
  v4.super_class = WRM_iRATClientController;
  v2 = [(WCM_Controller *)&v4 init];
  if (v2)
  {
    *(v2 + 52) = dispatch_queue_create("com.apple.WirelessRadioManager.iRATClient", 0);
    v2[44] = 1;
    *(v2 + 5) = 0;
    *(v2 + 6) = 0;
    v2[28] = 0;
    *(v2 + 8) = 2;
    *(v2 + 36) = 1;
    *(v2 + 68) = 0;
    *(v2 + 60) = objc_alloc_init(NSMutableArray);
    v2[76] = 0;
    v2[77] = 0;
  }

  return v2;
}

- (void)dealloc
{
  [WCM_Logging logLevel:24 message:@"WRM_iRATClientController dealloc"];
  v3 = *(&self->mActive + 4);
  if (v3)
  {
    dispatch_release(v3);
  }

  *(&self->mActive + 4) = 0;
  if (*(&self->mQueue + 4))
  {
    [(WRM_iRATClientController *)self removeAllMobilityContextsFromList];

    *(&self->mQueue + 4) = 0;
  }

  v4.receiver = self;
  v4.super_class = WRM_iRATClientController;
  [(WCM_Controller *)&v4 dealloc];
}

- (void)handleMessage:(id)a3
{
  uint64 = xpc_dictionary_get_uint64(a3, "kMessageId");
  [WCM_Logging logLevel:24 message:@"Received message-id: %lld from iRAT Client, params are %@", uint64, a3];
  if (uint64 <= 599)
  {
    switch(uint64)
    {
      case 400:

        [(WRM_iRATClientController *)self handleLinkPrefSubscribe:a3];
        break;
      case 401:

        [(WRM_iRATClientController *)self handleSubscribeStatusUpdate:a3];
        break;
      case 402:

        [(WRM_iRATClientController *)self handleLinkPrefSubscribeIDS:a3];
        break;
      case 403:

        [(WRM_iRATClientController *)self handleSubscribeStatusUpdateIDS:a3];
        break;
      case 404:

        [(WRM_iRATClientController *)self handleLinkPrefSubscribeCM:a3];
        break;
      case 405:

        [(WRM_iRATClientController *)self handleSubscribeStatusUpdateCM:a3];
        break;
      case 406:

        [(WRM_iRATClientController *)self handleLinkPrefSubscribeFaceTimeCalling:a3];
        break;
      case 407:

        [(WRM_iRATClientController *)self handleSubscribeStatusUpdateFaceTimeCalling:a3];
        break;
      case 408:
      case 409:
      case 413:
      case 414:
      case 421:
      case 422:
        goto LABEL_30;
      case 410:

        [(WRM_iRATClientController *)self handleCommCenterBasebandOperatingChange:a3];
        break;
      case 411:

        [(WRM_iRATClientController *)self handleBBAssertBGAppActive:a3];
        break;
      case 412:
      case 418:

        [(WRM_iRATClientController *)self handleStallCM:a3];
        break;
      case 415:

        [(WRM_iRATClientController *)self handleLinkPrefGetMetrics:a3];
        break;
      case 416:

        [(WRM_iRATClientController *)self handleIWLANMetrics:a3];
        break;
      case 417:

        [(WRM_iRATClientController *)self handleGetStreamingMetrics:a3];
        break;
      case 419:
        v7 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

        [v7 handleDataPlanUpdate:a3];
        break;
      case 420:

        [(WRM_iRATClientController *)self handleSIPStalledMetrics:a3];
        break;
      case 423:
        [WCM_Logging logLevel:28 message:@"MLPredictedThroughput: WRMMLPredictedThroughput: handleMessage"];
        v8 = +[WRM_BWEvalManager WRM_BWEvalManagerSingleton];

        [v8 handleGetMLPredictedThroughput:a3];
        break;
      default:
        if ((uint64 - 201) >= 2)
        {
          goto LABEL_30;
        }

        [(WRM_iRATClientController *)self handleMetricsReportFaceTimeCalling:a3];
        break;
    }

    return;
  }

  if (uint64 <= 2099)
  {
    if ((uint64 - 2000) >= 3)
    {
      if (uint64 == 600)
      {

        [(WRM_iRATClientController *)self handleMetricsReportIDS:a3];
        return;
      }

LABEL_30:

      [WCM_Logging logLevel:24 message:@"Received unsupported iRAT client message"];
      return;
    }

    goto LABEL_18;
  }

  if (uint64 > 2549)
  {
    if (uint64 == 2550)
    {

      [(WRM_iRATClientController *)self setVoiceLqmSubscribed:1];
    }

    else
    {
      if (uint64 != 2809)
      {
        goto LABEL_30;
      }

      v6 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

      [v6 handleGetVoiceLqmValue:a3];
    }
  }

  else
  {
    if (uint64 == 2100)
    {
LABEL_18:

      [(WRM_iRATClientController *)self handleBasebandMetricsInterfaceRequest:a3];
      return;
    }

    if (uint64 != 2500)
    {
      goto LABEL_30;
    }

    [(WRM_iRATClientController *)self setLowPowerModePeriodicWakeUpNotificationSubscribed:1];
  }
}

- (void)handleDisconnection:(id)a3
{
  v5 = [(WRM_iRATClientController *)self getMyClientType];
  v6 = [(WCM_Controller *)self getProcessId];
  [WCM_Logging logLevel:18 message:@"handleDisconnection from client %d, pid %d", v5, v6];
  v7 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

  [v7 handleDisconnection:a3 pid:v6];
}

- (void)handleLinkPrefSubscribe:(id)a3
{
  v4 = [(WRM_iRATClientController *)self getMyClientType];
  xpc_dictionary_set_uint64(a3, "kClientType", v4);
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  v6 = xpc_dictionary_get_value(value, "kWRMApplicationTypeList");
  if (v6)
  {
    v7 = v6;
    v19 = a3;
    count = xpc_array_get_count(v6);
    if (count)
    {
      v9 = count;
      v10 = 0;
      if (v4 == 22)
      {
        v11 = "ClientCoreMediaStreaming";
      }

      else
      {
        v11 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
      }

      v12 = (v4 - 1);
      do
      {
        v13 = xpc_array_get_value(v7, v10);
        uint64 = xpc_dictionary_get_uint64(v13, "kWRMApplicationType");
        v15 = xpc_dictionary_get_uint64(v13, "kWRMDesiredLinkQoS");
        v16 = xpc_dictionary_get_uint64(v13, "kWRMDesiredBandwidth");
        v17 = v11;
        if (v12 <= 0x14)
        {
          v17 = off_10023F608[v12];
        }

        [WCM_Logging logLevel:18 message:@"%s: Record#=%d, Application Type=%llu, LinkQoS=%llu, Bandwidth=%llu Client Type=%d(%s)", "[WRM_iRATClientController handleLinkPrefSubscribe:]", v10++, uint64, v15, v16, v4, v17];
      }

      while (v9 != v10);
    }

    v18 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

    [v18 updateControllerState:v19];
  }

  else
  {

    [WCM_Logging logLevel:16 message:@"Discarding invalid Subscribe message from CT client"];
  }
}

- (void)handleLinkPrefSubscribeIDS:(id)a3
{
  v4 = [(WRM_iRATClientController *)self getMyClientType];
  xpc_dictionary_set_uint64(a3, "kClientType", v4);
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value && (v6 = value, (v7 = xpc_dictionary_get_value(value, "kWRMApplicationTypeList")) != 0))
  {
    v8 = v7;
    v21 = a3;
    uint64 = xpc_dictionary_get_uint64(v6, "kWRMSubscriptionType");
    [WCM_Logging logLevel:27 message:@"handleLinkPrefSubscribeIDS: Subscription Type: %llu", uint64];
    count = xpc_array_get_count(v8);
    if (count)
    {
      v10 = count;
      v11 = 0;
      if (v4 == 22)
      {
        v12 = "ClientCoreMediaStreaming";
      }

      else
      {
        v12 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
      }

      v13 = (v4 - 1);
      do
      {
        v14 = xpc_array_get_value(v8, v11);
        v15 = xpc_dictionary_get_uint64(v14, "kWRMApplicationType");
        v16 = xpc_dictionary_get_uint64(v14, "kWRMDesiredLinkQoS");
        v17 = xpc_dictionary_get_uint64(v14, "kWRMDesiredBandwidth");
        v18 = v12;
        if (v13 <= 0x14)
        {
          v18 = off_10023F608[v13];
        }

        [WCM_Logging logLevel:27 message:@"%s: Record#=%d, Application Type=%llu, LinkQoS=%llu, Bandwidth=%llu Client Type=%d(%s)", "[WRM_iRATClientController handleLinkPrefSubscribeIDS:]", v11++, v15, v16, v17, v4, v18];
      }

      while (v10 != v11);
    }

    if (uint64 == 1)
    {
      v19 = +[WRM_FT_HandoverManager WRM_FT_HandoverManagerSingleton];
    }

    else
    {
      v19 = +[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton];
    }

    [v19 updateControllerState:v21];
  }

  else
  {

    [WCM_Logging logLevel:16 message:@"Discarding invalid Subscribe message from IDS client"];
  }
}

- (void)handleLinkPrefGetMetrics:(id)a3
{
  xpc_dictionary_set_uint64(a3, "kClientType", [(WRM_iRATClientController *)self getMyClientType]);
  if (xpc_dictionary_get_value(a3, "kMessageArgs"))
  {
    v4 = +[WRM_FT_HandoverManager WRM_FT_HandoverManagerSingleton];

    [v4 updateControllerState:a3];
  }

  else
  {

    [WCM_Logging logLevel:16 message:@"Discarding invalid Subscribe message from SIRI client"];
  }
}

- (void)handleLinkPrefSubscribeFaceTimeCalling:(id)a3
{
  v4 = [(WRM_iRATClientController *)self getMyClientType];
  xpc_dictionary_set_uint64(a3, "kClientType", v4);
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value && (v6 = xpc_dictionary_get_value(value, "kWRMApplicationTypeList")) != 0)
  {
    v7 = v6;
    v19 = a3;
    count = xpc_array_get_count(v6);
    if (count)
    {
      v9 = count;
      v10 = 0;
      if (v4 == 22)
      {
        v11 = "ClientCoreMediaStreaming";
      }

      else
      {
        v11 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
      }

      v12 = (v4 - 1);
      do
      {
        v13 = xpc_array_get_value(v7, v10);
        uint64 = xpc_dictionary_get_uint64(v13, "kWRMApplicationType");
        v15 = xpc_dictionary_get_uint64(v13, "kWRMDesiredLinkQoS");
        v16 = xpc_dictionary_get_uint64(v13, "kWRMDesiredBandwidth");
        v17 = v11;
        if (v12 <= 0x14)
        {
          v17 = off_10023F608[v12];
        }

        [WCM_Logging logLevel:18 message:@"%s: Record#=%d, Application Type=%llu, LinkQoS=%llu, Bandwidth=%llu Client Type=%d(%s)", "[WRM_iRATClientController handleLinkPrefSubscribeFaceTimeCalling:]", v10++, uint64, v15, v16, v4, v17];
      }

      while (v9 != v10);
    }

    v18 = +[WRM_FT_HandoverManager WRM_FT_HandoverManagerSingleton];

    [v18 updateControllerState:v19];
  }

  else
  {

    [WCM_Logging logLevel:16 message:@"Discarding invalid Subscribe message from FaceTime Calling client"];
  }
}

- (void)handleMetricsReportIDS:(id)a3
{
  xpc_dictionary_set_uint64(a3, "kClientType", [(WRM_iRATClientController *)self getMyClientType]);
  if (xpc_dictionary_get_uint64(a3, "kWRMSubscriptionType") == 1)
  {
    v4 = +[WRM_FT_HandoverManager WRM_FT_HandoverManagerSingleton];
  }

  else
  {
    v4 = +[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton];
  }

  [v4 updateControllerState:a3];
}

- (void)handleMetricsReportFaceTimeCalling:(id)a3
{
  xpc_dictionary_set_uint64(a3, "kClientType", [(WRM_iRATClientController *)self getMyClientType]);
  v4 = +[WRM_FT_HandoverManager WRM_FT_HandoverManagerSingleton];

  [v4 updateControllerState:a3];
}

- (void)handleGetStreamingMetrics:(id)a3
{
  v4 = +[WRM_BWEvalManager WRM_BWEvalManagerSingleton];

  [v4 updateControllerState:a3];
}

- (void)handleLinkPrefSubscribeCM:(id)a3
{
  v4 = [(WRM_iRATClientController *)self getMyClientType];
  xpc_dictionary_set_uint64(a3, "kClientType", v4);
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value)
  {
    v6 = xpc_dictionary_get_value(value, "kWRMApplicationTypeList");
    if (v6)
    {
      v7 = v6;
      v20 = a3;
      count = xpc_array_get_count(v6);
      if (count)
      {
        v9 = count;
        v10 = 0;
        if (v4 == 22)
        {
          v11 = "ClientCoreMediaStreaming";
        }

        else
        {
          v11 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
        }

        v12 = (v4 - 1);
        do
        {
          v13 = xpc_array_get_value(v7, v10);
          uint64 = xpc_dictionary_get_uint64(v13, "kWRMApplicationType");
          v15 = xpc_dictionary_get_uint64(v13, "kWRMDesiredLinkQoS");
          v16 = xpc_dictionary_get_uint64(v13, "kWRMDesiredBandwidth");
          v17 = v11;
          if (v12 <= 0x14)
          {
            v17 = off_10023F608[v12];
          }

          [WCM_Logging logLevel:18 message:@"%s: Record#=%d, Application Type=%llu, LinkQoS=%llu, Bandwidth=%llu Client Type=%d(%s)", "[WRM_iRATClientController handleLinkPrefSubscribeCM:]", v10++, uint64, v15, v16, v4, v17];
        }

        while (v9 != v10);
      }

      v18 = +[WRM_BWEvalManager WRM_BWEvalManagerSingleton];

      [v18 updateControllerState:v20];
      return;
    }

    v19 = @"Discarding invalid Subscribe message from CM client";
  }

  else
  {
    v19 = @"Discarding invalid Subscribe message from CM  client";
  }

  [WCM_Logging logLevel:16 message:v19];
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

- (void)handleSubscribeStatusUpdateIDS:(id)a3
{
  xpc_dictionary_set_uint64(a3, "kClientType", [(WRM_iRATClientController *)self getMyClientType]);
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value && (v5 = value, (v6 = xpc_dictionary_get_value(value, "kWRMApplicationTypeList")) != 0))
  {
    v7 = v6;
    uint64 = xpc_dictionary_get_uint64(v5, "kWRMSubscriptionType");
    count = xpc_array_get_count(v7);
    if (count)
    {
      v9 = count;
      for (i = 0; i != v9; ++i)
      {
        v11 = xpc_array_get_value(v7, i);
        v12 = xpc_dictionary_get_uint64(v11, "kWRMApplicationType");
        [WCM_Logging logLevel:18 message:@"Application Type=%llu, LinkType=%llu ", v12, xpc_dictionary_get_uint64(v11, "kWRMLinkType")];
      }
    }

    if (uint64 == 1)
    {
      v13 = +[WRM_FT_HandoverManager WRM_FT_HandoverManagerSingleton];
    }

    else
    {
      v13 = +[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton];
    }

    [v13 updateControllerState:a3];
  }

  else
  {

    [WCM_Logging logLevel:16 message:@"Discarding invalid status update message from IDS client"];
  }
}

- (void)handleStallCM:(id)a3
{
  xpc_dictionary_set_uint64(a3, "kClientType", [(WRM_iRATClientController *)self getMyClientType]);
  if (xpc_dictionary_get_value(a3, "kMessageArgs"))
  {
    v4 = +[WRM_BWEvalManager WRM_BWEvalManagerSingleton];

    [v4 updateControllerState:a3];
  }

  else
  {

    [WCM_Logging logLevel:16 message:@"Discarding invalid status update message from CM client"];
  }
}

- (void)handleSubscribeStatusUpdateCM:(id)a3
{
  xpc_dictionary_set_uint64(a3, "kClientType", [(WRM_iRATClientController *)self getMyClientType]);
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value && (v5 = xpc_dictionary_get_value(value, "kWRMApplicationTypeList")) != 0)
  {
    v6 = v5;
    count = xpc_array_get_count(v5);
    if (count)
    {
      v8 = count;
      for (i = 0; i != v8; ++i)
      {
        v10 = xpc_array_get_value(v6, i);
        uint64 = xpc_dictionary_get_uint64(v10, "kWRMApplicationType");
        [WCM_Logging logLevel:18 message:@"Application Type=%llu, LinkType=%llu ", uint64, xpc_dictionary_get_uint64(v10, "kWRMLinkType")];
      }
    }

    v12 = +[WRM_BWEvalManager WRM_BWEvalManagerSingleton];

    [v12 updateControllerState:a3];
  }

  else
  {

    [WCM_Logging logLevel:16 message:@"Discarding invalid status update message from CM client"];
  }
}

- (void)handleSubscribeStatusUpdateFaceTimeCalling:(id)a3
{
  xpc_dictionary_set_uint64(a3, "kClientType", [(WRM_iRATClientController *)self getMyClientType]);
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value && (v5 = xpc_dictionary_get_value(value, "kWRMApplicationTypeList")) != 0)
  {
    v6 = v5;
    count = xpc_array_get_count(v5);
    if (count)
    {
      v8 = count;
      for (i = 0; i != v8; ++i)
      {
        v10 = xpc_array_get_value(v6, i);
        uint64 = xpc_dictionary_get_uint64(v10, "kWRMApplicationType");
        [WCM_Logging logLevel:29 message:@"Application Type=%llu, LinkType=%llu ", uint64, xpc_dictionary_get_uint64(v10, "kWRMLinkType")];
      }
    }

    v12 = +[WRM_FT_HandoverManager WRM_FT_HandoverManagerSingleton];

    [v12 updateControllerState:a3];
  }

  else
  {

    [WCM_Logging logLevel:16 message:@"Discarding invalid status update message from FaceTimeCalling client"];
  }
}

- (void)handleSubscribeStatusUpdate:(id)a3
{
  xpc_dictionary_set_uint64(a3, "kClientType", [(WRM_iRATClientController *)self getMyClientType]);
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value && (v5 = xpc_dictionary_get_value(value, "kWRMApplicationTypeList")) != 0)
  {
    v6 = v5;
    count = xpc_array_get_count(v5);
    if (count)
    {
      v8 = count;
      for (i = 0; i != v8; ++i)
      {
        v10 = xpc_array_get_value(v6, i);
        uint64 = xpc_dictionary_get_uint64(v10, "kWRMApplicationType");
        [WCM_Logging logLevel:18 message:@"Application Type=%llu, LinkType=%llu ", uint64, xpc_dictionary_get_uint64(v10, "kWRMLinkType")];
      }
    }

    v12 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

    [v12 updateControllerState:a3];
  }

  else
  {

    [WCM_Logging logLevel:16 message:@"Discarding invalid status update message from CommCenter client"];
  }
}

- (void)handleSIPStalledMetrics:(id)a3
{
  v4 = [(WRM_iRATClientController *)self getMyClientType];
  xpc_dictionary_set_uint64(a3, "kClientType", v4);
  if (xpc_dictionary_get_value(a3, "kMessageArgs"))
  {
    v5 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

    [v5 updateControllerState:a3];
  }

  else
  {
    [WCM_Logging logLevel:16 message:@"Discarding invalid WRMIWLANWiFiCallTunnelStalled message from client : %d", v4];
  }
}

- (void)handleIWLANMetrics:(id)a3
{
  v4 = [(WRM_iRATClientController *)self getMyClientType];
  xpc_dictionary_set_uint64(a3, "kClientType", v4);
  if (xpc_dictionary_get_value(a3, "kMessageArgs"))
  {
    v5 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

    [v5 updateControllerState:a3];
  }

  else
  {
    [WCM_Logging logLevel:16 message:@"Discarding invalid WRMiWLANMetricsReport message from client : %d", v4];
  }
}

- (void)handleCommCenterBasebandOperatingChange:(id)a3
{
  v4 = [(WRM_iRATClientController *)self getMyClientType];
  xpc_dictionary_set_uint64(a3, "kClientType", v4);
  if (xpc_dictionary_get_value(a3, "kMessageArgs"))
  {
    v5 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

    [v5 updateProximityState:a3];
  }

  else
  {
    [WCM_Logging logLevel:16 message:@"Discarding invalid CommCenterBasebandOperatingChange message from client : %d", v4];
  }
}

- (void)handleBBAssertBGAppActive:(id)a3
{
  v4 = [(WRM_iRATClientController *)self getMyClientType];
  xpc_dictionary_set_uint64(a3, "kClientType", v4);
  [WCM_Logging logLevel:18 message:@"handleBBAssertBGAppActive message from client : %d", v4];
  v5 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

  [v5 updateControllerState:a3];
}

- (void)handleBasebandMetricsInterfaceRequest:(id)a3
{
  xpc_dictionary_set_uint64(a3, "kClientType", [(WRM_iRATClientController *)self getMyClientType]);
  if (xpc_dictionary_get_value(a3, "kMessageArgs"))
  {
    v4 = +[WRM_BWEvalManager WRM_BWEvalManagerSingleton];

    [v4 updateControllerState:a3];
  }

  else
  {

    [WCM_Logging logLevel:16 message:@"Discarding invalid message from WirelessCoexManager client in iRATClientController::handleBasebandMetricsInterfaceRequest because message is nil"];
  }
}

- (void)addMobilityContextToList:(id)a3
{
  [*(&self->mQueue + 4) addObject:a3];

  [(WRM_iRATClientController *)self existingContexts];
}

- (void)removeMobilityContextFromList:(id)a3
{
  [*(&self->mQueue + 4) removeObject:a3];

  [(WRM_iRATClientController *)self existingContexts];
}

- (void)removeAllMobilityContextsFromList
{
  [*(&self->mQueue + 4) removeAllObjects];

  [WCM_Logging logLevel:18 message:@"Released all mobility contests from iRAT Client"];
}

- (void)deleteMobilityContext:(unint64_t)a3
{
  v4 = [(WRM_iRATClientController *)self getMobilityContextFromList:a3];
  if (v4)
  {
    v5 = v4;
    [(WRM_iRATClientController *)self removeMobilityContextFromList:v4];
  }
}

- (id)getMobilityContextFromList:(unint64_t)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(&self->mQueue + 4);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 getApplicationType] == a3)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)getStaleContextFromList
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(&self->mQueue + 4);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *v10;
LABEL_3:
  v6 = 0;
  while (1)
  {
    if (*v10 != v5)
    {
      objc_enumerationMutation(v2);
    }

    v7 = *(*(&v9 + 1) + 8 * v6);
    if ([v7 mobilityContextStale])
    {
      return v7;
    }

    if (v4 == ++v6)
    {
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)purgeStaleMobilityContexts
{
  v3 = [(WRM_iRATClientController *)self getStaleContextFromList];
  if (v3)
  {
    v4 = v3;
    do
    {
      [(WRM_iRATClientController *)self removeMobilityContextFromList:v4];
      v4 = [(WRM_iRATClientController *)self getStaleContextFromList];
    }

    while (v4);
  }
}

- (void)deactivateMobilityContexts
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(&self->mQueue + 4);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * i) activateMobilityContext:0];
      }

      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)existingContexts
{
  v3 = [(WRM_iRATClientController *)self getMyClientType];
  if ((v3 - 1) >= 0x15)
  {
    if (v3 == 22)
    {
      v4 = "ClientCoreMediaStreaming";
    }

    else
    {
      v4 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
    }
  }

  else
  {
    v4 = off_10023F608[(v3 - 1)];
  }

  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"Client Type: %d(%s), Number of active sessions: %lu", v3, v4, [*(&self->mQueue + 4) count]);
}

- (void)handleLinkPreferenceNotification:(BOOL)a3
{
  v3 = a3;
  v25 = +[WRM_MetricsService getSingleton];
  v5 = xpc_array_create(0, 0);
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"handleLinkPreferenceNotification: Total number of contexts in iRAT client: %d", [*(&self->mQueue + 4) count]);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = self;
  v6 = *(&self->mQueue + 4);
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v7)
  {
LABEL_29:
    [WCM_Logging logLevel:24 message:@"No need to send link preference notification."];
    if (!v3)
    {
      goto LABEL_31;
    }

LABEL_30:
    [(WRM_iRATClientController *)v26 purgeStaleMobilityContexts];
    [(WRM_iRATClientController *)v26 deactivateMobilityContexts];
    goto LABEL_31;
  }

  v8 = v7;
  v9 = v5;
  v10 = 0;
  v11 = *v28;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v27 + 1) + 8 * i);
      if (v3)
      {
        if ([v13 mobilityContextStale])
        {
          continue;
        }
      }

      else if (![v13 linkPreferenceNotificationRequired])
      {
        continue;
      }

      v14 = [v13 getConnectedLinkType];
      v15 = [v13 getMappedApplicationType];
      v16 = [v13 getHandoverReasonType];
      [v25 getReasonStr:v16 :string];
      v17 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v17, "kWRMApplicationType", v15);
      xpc_dictionary_set_uint64(v17, "kWRMLinkType", v14);
      xpc_dictionary_set_uint64(v17, "kWRMSubscribeSlotInfo", [(WRM_iRATClientController *)v26 getActiveSlot]);
      xpc_dictionary_set_uint64(v17, "kWRMLinkTypeChangeReasonCode", v16);
      xpc_dictionary_set_string(v17, "kWRMLinkTypeChangeReasonString", string);
      xpc_array_append_value(v9, v17);
      v18 = "UNKNOWN_APP!!!";
      if (v15 == 2)
      {
        v18 = "CT_Th_Call";
      }

      if (v15 == 1)
      {
        v18 = "CT_VOICE";
      }

      if (!v15)
      {
        v18 = "CT_DATA";
      }

      if (v14 >= 3)
      {
        v19 = "UNKNOWN_WRM_IWLAN_LINK_TYPE!!!";
        if (v14 == 3)
        {
          v19 = "WRM_IWLAN_BLUETOOTH";
        }
      }

      else
      {
        v19 = off_10023F6B0[v14];
      }

      [WCM_Logging logLevel:24 message:@"{%s}Link Preference Notification required for application type =%lld, preferred = %d(%s)", v18, v15, v14, v19];
      v10 = 1;
    }

    v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v8);
  v5 = v9;
  if ((v10 & 1) == 0)
  {
    goto LABEL_29;
  }

  v20 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v20, "kWRMApplicationTypeList", v5);
  [(WCM_Controller *)v26 sendMessage:1300 withArgs:v20];
  [WCM_Logging logLevel:24 message:@"Sending Link Preference Notification."];
  count = xpc_array_get_count(v5);
  if (count)
  {
    v22 = count;
    for (j = 0; j != v22; ++j)
    {
      value = xpc_array_get_value(v5, j);
      xpc_release(value);
    }
  }

  xpc_release(v20);
  if (v3)
  {
    goto LABEL_30;
  }

LABEL_31:
  xpc_release(v5);
}

- (void)handleLinkPreferenceNotificationIDS:(BOOL)a3
{
  v4 = xpc_array_create(0, 0);
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 27, @"handleLinkPreferenceNotification: Total number of contexts in iRAT client: %d", [*(&self->mQueue + 4) count]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = *(&self->mQueue + 4);
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v6)
  {
    goto LABEL_25;
  }

  v7 = v6;
  v23 = self;
  v8 = 0;
  v9 = 0;
  v10 = *v25;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v25 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v24 + 1) + 8 * i);
      if ([v12 linkPreferenceNotificationRequired])
      {
        v13 = [v12 getConnectedLinkType];
        v14 = [v12 getApplicationType];
        v8 = [v12 getSubscriptionType];
        v15 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v15, "kWRMApplicationType", v14);
        xpc_dictionary_set_uint64(v15, "kWRMLinkType", v13);
        xpc_array_append_value(v4, v15);
        v16 = "UNKNOWN_APP!!!";
        if (v14 == 2)
        {
          v16 = "CT_Th_Call";
        }

        if (v14 == 1)
        {
          v16 = "CT_VOICE";
        }

        if (!v14)
        {
          v16 = "CT_DATA";
        }

        if (v13 >= 3)
        {
          v17 = "UNKNOWN_WRM_IWLAN_LINK_TYPE!!!";
          if (v13 == 3)
          {
            v17 = "WRM_IWLAN_BLUETOOTH";
          }
        }

        else
        {
          v17 = off_10023F6B0[v13];
        }

        [WCM_Logging logLevel:27 message:@"{%s}Link Preference Notification required for application type =%lld, preferred = %d(%s)", v16, v14, v13, v17];
        [v12 setLinkPreferenceNotificationRequired:0];
        v9 = 1;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v7);
  if (v9)
  {
    v18 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v18, "kWRMApplicationTypeList", v4);
    xpc_dictionary_set_uint64(v18, "kWRMSubscriptionType", v8);
    [(WCM_Controller *)v23 sendMessage:1301 withArgs:v18];
    [WCM_Logging logLevel:27 message:@"Sending Link Preference Notification."];
    count = xpc_array_get_count(v4);
    if (count)
    {
      v20 = count;
      for (j = 0; j != v20; ++j)
      {
        value = xpc_array_get_value(v4, j);
        xpc_release(value);
      }
    }

    xpc_release(v18);
  }

  else
  {
LABEL_25:
    [WCM_Logging logLevel:27 message:@"No need to send link preference notification."];
  }

  xpc_release(v4);
}

- (void)handleLinkPreferenceNotificationCM:(BOOL)a3
{
  v4 = xpc_array_create(0, 0);
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"handleLinkPreferenceNotification: Total number of contexts in iRAT client: %d", [*(&self->mQueue + 4) count]);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(&self->mQueue + 4);
  v5 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = v5;
  v27 = self;
  v7 = 0;
  v8 = *v32;
  v28 = *v32;
  do
  {
    v9 = 0;
    v29 = v6;
    do
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v31 + 1) + 8 * v9);
      if ([v10 linkPreferenceNotificationRequired])
      {
        v11 = [v10 getConnectedLinkType];
        v12 = [v10 getApplicationType];
        v13 = [v10 getMinEvalBW];
        v14 = [v10 getMaxEvalBW];
        v15 = v4;
        v16 = [v10 getMinMovEvalBW];
        v17 = [v10 getMaxMovEvalBW];
        v18 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v18, "kWRMApplicationType", v12);
        xpc_dictionary_set_uint64(v18, "kWRMLinkType", v11);
        xpc_dictionary_set_uint64(v18, "kWRMCurrentLinkBandwidthEstimateMin", v13);
        xpc_dictionary_set_uint64(v18, "kWRMCurrentLinkBandwidthEstimateMax", v14);
        v19 = v16;
        v4 = v15;
        xpc_dictionary_set_uint64(v18, "kWRMCurrentLinkMovBandwidthEstimateMin", v19);
        xpc_dictionary_set_uint64(v18, "kWRMCurrentLinkMovBandwidthEstimateMax", v17);
        xpc_dictionary_set_uint64(v18, "kWRMCellLoad", [+[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton](WRM_EnhancedCTService "wrm_EnhancedCTServiceSingleton")]);
        xpc_array_append_value(v15, v18);
        v20 = "UNKNOWN_APP!!!";
        if (v12 == 2)
        {
          v20 = "CT_Th_Call";
        }

        if (v12 == 1)
        {
          v20 = "CT_VOICE";
        }

        if (!v12)
        {
          v20 = "CT_DATA";
        }

        if (v11 >= 3)
        {
          v21 = "UNKNOWN_WRM_IWLAN_LINK_TYPE!!!";
          if (v11 == 3)
          {
            v21 = "WRM_IWLAN_BLUETOOTH";
          }
        }

        else
        {
          v21 = off_10023F6B0[v11];
        }

        [WCM_Logging logLevel:24 message:@"{%s}Link Preference Notification required for application type =%lld, preferred = %d(%s)", v20, v12, v11, v21];
        [v10 setLinkPreferenceNotificationRequired:0];
        v7 = 1;
        v8 = v28;
        v6 = v29;
      }

      v9 = v9 + 1;
    }

    while (v6 != v9);
    v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v6);
  if (v7)
  {
    v22 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v22, "kWRMApplicationTypeList", v4);
    [(WCM_Controller *)v27 sendMessage:1302 withArgs:v22];
    [WCM_Logging logLevel:24 message:@"Sending Link Preference Notification."];
    count = xpc_array_get_count(v4);
    if (count)
    {
      v24 = count;
      for (i = 0; i != v24; ++i)
      {
        value = xpc_array_get_value(v4, i);
        xpc_release(value);
      }
    }

    xpc_release(v22);
  }

  else
  {
LABEL_25:
    [WCM_Logging logLevel:24 message:@"No need to send link preference notification."];
  }

  xpc_release(v4);
}

- (void)handleLinkPreferenceNotificationFaceTimeCalling:(BOOL)a3 :(id)a4 :(id)a5
{
  v7 = a3;
  v36 = +[WRM_MetricsService getSingleton];
  v9 = xpc_array_create(0, 0);
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 29, @"handleLinkPreferenceNotification: Total number of contexts in iRAT client: %d", [*(&self->mQueue + 4) count]);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = *(&self->mQueue + 4);
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v11)
  {
LABEL_28:
    [WCM_Logging logLevel:29 message:@"No need to send link preference notification."];
    if (!v7)
    {
      goto LABEL_30;
    }

LABEL_29:
    [(WRM_iRATClientController *)self purgeStaleMobilityContexts];
    [(WRM_iRATClientController *)self deactivateMobilityContexts];
    goto LABEL_30;
  }

  v12 = v11;
  v33 = a4;
  v34 = a5;
  v13 = v9;
  v35 = self;
  v14 = 0;
  v15 = *v38;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v38 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v37 + 1) + 8 * i);
      if (v7)
      {
        if ([v17 mobilityContextStale])
        {
          continue;
        }
      }

      else if (![v17 linkPreferenceNotificationRequired])
      {
        continue;
      }

      v18 = [v17 getConnectedLinkType];
      v19 = [v17 getApplicationType];
      v20 = [v17 getHandoverReasonType];
      [v36 getReasonStr:v20 :string];
      v21 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v21, "kWRMApplicationType", v19);
      xpc_dictionary_set_uint64(v21, "kWRMLinkType", v18);
      xpc_dictionary_set_uint64(v21, "kWRMLinkTypeChangeReasonCode", v20);
      xpc_dictionary_set_string(v21, "kWRMLinkTypeChangeReasonString", string);
      xpc_array_append_value(v13, v21);
      v22 = "UNKNOWN_APP!!!";
      if (v19 == 2)
      {
        v22 = "CT_Th_Call";
      }

      if (v19 == 1)
      {
        v22 = "CT_VOICE";
      }

      if (!v19)
      {
        v22 = "CT_DATA";
      }

      if (v18 >= 3)
      {
        v23 = "UNKNOWN_WRM_IWLAN_LINK_TYPE!!!";
        if (v18 == 3)
        {
          v23 = "WRM_IWLAN_BLUETOOTH";
        }
      }

      else
      {
        v23 = off_10023F6B0[v18];
      }

      [WCM_Logging logLevel:29 message:@"{%s}Link Preference Notification required for application type =%lld, preferred = %d(%s)", v22, v19, v18, v23];
      v14 = 1;
    }

    v12 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v12);
  self = v35;
  v9 = v13;
  if ((v14 & 1) == 0)
  {
    goto LABEL_28;
  }

  v24 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v24, "kWRMApplicationTypeList", v9);
  v25 = [v33 getServingCellType];
  v26 = v25;
  switch(v25)
  {
    case 9u:
      [v33 getNrRSRP];
      goto LABEL_33;
    case 2u:
      [v33 getServingCellRSCP];
LABEL_33:
      xpc_dictionary_set_int64(v24, "kcSigStrength", v27);
      break;
    case 1u:
      [v33 getServingCellRSRP];
      goto LABEL_33;
  }

  xpc_dictionary_set_int64(v24, "kcSignalBar", [v33 getCurrentSignalBars]);
  xpc_dictionary_set_int64(v24, "kcServingCellType", v26);
  if ([v34 isWiFiPrimaryInterface])
  {
    xpc_dictionary_set_int64(v24, "kwRSSI", [v34 getRSSI]);
    xpc_dictionary_set_int64(v24, "kwSNR", [v34 getSNR]);
    [v34 getTxPer];
    xpc_dictionary_set_int64(v24, "kwPER", (v28 * 100.0));
    xpc_dictionary_set_int64(v24, "kwCCA", [v34 getCCA]);
  }

  [(WCM_Controller *)v35 sendMessage:1303 withArgs:v24];
  [WCM_Logging logLevel:29 message:@"Sending Link Preference Notification."];
  count = xpc_array_get_count(v9);
  if (count)
  {
    v30 = count;
    for (j = 0; j != v30; ++j)
    {
      value = xpc_array_get_value(v9, j);
      xpc_release(value);
    }
  }

  xpc_release(v24);
  if (v7)
  {
    goto LABEL_29;
  }

LABEL_30:
  xpc_release(v9);
}

- (void)postiRATNotificationToEnableDisableCellData:(unint64_t)a3 :(BOOL)a4
{
  v4 = a4;
  v7 = xpc_array_create(0, 0);
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v8, "kWRMApplicationType", a3);
  v9 = !v4;
  xpc_dictionary_set_uint64(v8, "kWRMLinkType", v9);
  xpc_array_append_value(v7, v8);
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v10, "kWRMApplicationTypeList", v7);
  [(WCM_Controller *)self sendMessage:1300 withArgs:v10];
  [WCM_Logging logLevel:24 message:@"Sending Link Preference notification, triggered by networking agent, %d", v9];
  count = xpc_array_get_count(v7);
  if (count)
  {
    v12 = count;
    for (i = 0; i != v12; ++i)
    {
      value = xpc_array_get_value(v7, i);
      xpc_release(value);
    }
  }

  xpc_release(v10);

  xpc_release(v7);
}

- (BOOL)isLowPowerModePeriodicWakeUpNotificationSubscribed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(&self->mActive + 4);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007DCEC;
  v5[3] = &unk_10023DD60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setLowPowerModePeriodicWakeUpNotificationSubscribed:(BOOL)a3
{
  v3 = *(&self->mActive + 4);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10007DD88;
  v4[3] = &unk_10023E008;
  v5 = a3;
  v4[4] = self;
  dispatch_async(v3, v4);
}

- (BOOL)isVoiceLqmSubscribed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(&self->mActive + 4);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007DE9C;
  v5[3] = &unk_10023DD60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setVoiceLqmSubscribed:(BOOL)a3
{
  v3 = *(&self->mActive + 4);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10007DF38;
  v4[3] = &unk_10023E008;
  v5 = a3;
  v4[4] = self;
  dispatch_async(v3, v4);
}

@end