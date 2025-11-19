@interface WCM_WiFiController
- (BOOL)didWiFiDeviceReset;
- (BOOL)isAWDLInProgress;
- (BOOL)isAssociated;
- (BOOL)isAutoUnlockRangingInProgress;
- (BOOL)isCarPlaySessionInProgress;
- (BOOL)isCoPresenceInProgress;
- (BOOL)isEnsembleInProgress;
- (BOOL)isSideCarInProgress;
- (WCM_WiFiController)init;
- (id)getLeastCongestedWifiParam;
- (id)getWiFiServiceSingletone;
- (int)getCarPlayScanRelaxReason;
- (int)getPhyMode;
- (int64_t)getNumberOfSpatialStream;
- (int64_t)getNumberOfSpatialStreamOnAccessPoint;
- (void)dealloc;
- (void)handleDisconnection:(id)a3;
- (void)handleMessage:(id)a3;
- (void)handleWiFiLinkDown:(int)a3;
- (void)handleWiFiResetFlag;
- (void)setAntennaSelectionWiFiEnh:(id)a3;
- (void)setCoexParams:(void *)a3 withValue:(void *)a4;
- (void)toggleWiFiLQMIfNeeded:(BOOL)a3;
- (void)update5GHzHostAPState:(BOOL)a3;
- (void)updateCarPlaySessionState:(BOOL)a3 reason:(int)a4;
- (void)updateCatsState:(unsigned __int8)a3 bitmap:(unint64_t)a4;
- (void)updateContentionFreeWiFiInfoToRC2:(unsigned int)a3 count:(unsigned int)a4;
- (void)updatePowerState:(BOOL)a3;
- (void)updateWeightAvgLQM:(unsigned int)a3 txRate:(unsigned int)a4;
- (void)updateWiFiState:(int)a3 channel:(unsigned int)a4 centerFreq:(unsigned int)a5 bandwidth:(unsigned int)a6 hostAp:(BOOL)a7;
@end

@implementation WCM_WiFiController

- (int)getPhyMode
{
  v2 = [(WCM_WiFiController *)self wifiService];

  return [(WCM_WiFiService *)v2 getPhyMode];
}

- (BOOL)didWiFiDeviceReset
{
  v2 = [(WCM_WiFiController *)self wifiService];

  return [(WCM_WiFiService *)v2 didWiFiDeviceReset];
}

- (void)handleWiFiResetFlag
{
  v2 = [(WCM_WiFiController *)self wifiService];

  [(WCM_WiFiService *)v2 setWiFiResetFlag];
}

- (WCM_WiFiController)init
{
  [WCM_Logging logLevel:2 message:@"WiFi controller init"];
  v7.receiver = self;
  v7.super_class = WCM_WiFiController;
  v3 = [(WCM_Controller *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v3[20] = 0;
    *(v3 + 6) = 0;
    v3[21] = 0;
    *(v3 + 7) = 0;
    *(v3 + 8) = 0;
    *(v3 + 9) = 0;
    *(v3 + 10) = 0;
    *(v3 + 11) = 0;
    v3[23] = 0;
    *(v3 + 68) = 0;
    *(v3 + 13) = 10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E9EA4;
    block[3] = &unk_10023DB28;
    block[4] = v3;
    dispatch_sync(&_dispatch_main_q, block);
  }

  return v4;
}

- (void)dealloc
{
  [WCM_Logging logLevel:2 message:@"WiFi controller dealloc"];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E9FC0;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_sync(&_dispatch_main_q, block);
  v3.receiver = self;
  v3.super_class = WCM_WiFiController;
  [(WCM_Controller *)&v3 dealloc];
}

- (id)getWiFiServiceSingletone
{
  if ([(WCM_Controller *)self getProcessId])
  {
    if ([(WCM_Controller *)self getProcessId]== 1)
    {
      v3 = "WCMWiFi";
    }

    else if ([(WCM_Controller *)self getProcessId]== 2)
    {
      v3 = "WCMFaceTime";
    }

    else if ([(WCM_Controller *)self getProcessId]== 3)
    {
      v3 = "WCMCellular";
    }

    else if ([(WCM_Controller *)self getProcessId]== 4)
    {
      v3 = "WCMBT";
    }

    else
    {
      if ([(WCM_Controller *)self getProcessId]== 5)
      {
        goto LABEL_12;
      }

      if ([(WCM_Controller *)self getProcessId]== 29)
      {
        v3 = "WCMRCU1";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 30)
      {
        v3 = "WCMRCU2";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 31)
      {
        v3 = "WRMAirPlay";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 38)
      {
        v3 = "WCMP2PAWDL";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 39)
      {
        v3 = "WCMP2PNAN";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 6)
      {
        v3 = "WRMCommander";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 7)
      {
        v3 = "WRMCommCenter";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 8)
      {
        v3 = "WRMNetworkd";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 9)
      {
        v3 = "WRMWiFiCalling";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 10)
      {
        v3 = "WRMIPTelephony";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 11)
      {
        v3 = "WRMIdsClient";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 12)
      {
        v3 = "WRMIdsTool";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 13)
      {
        v3 = "WRMIMGVideo";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 14)
      {
        v3 = "WRMFaceTimeCalling";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 15)
      {
        v3 = "WRMCallKitTelephony";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 16)
      {
        v3 = "WRMLocationd";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 17)
      {
        v3 = "WRMCarousel";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 18)
      {
        v3 = "WRMMusic";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 19)
      {
        v3 = "WRMTerminus";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 20)
      {
        v3 = "WRMIMGVideoTest";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 21)
      {
        v3 = "WRMCommCenter1";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 22)
      {
        v3 = "WRMSiri";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 23)
      {
        v3 = "WRMWebkit";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 24)
      {
        v3 = "WRMWebkitMail";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 25)
      {
        v3 = "WRMWebkitNotification";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 26)
      {
        v3 = "WRMWirelessStress";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 33)
      {
        v3 = "WRMNPT";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 34)
      {
        v3 = "WRMCoreMediaStreaming";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 35)
      {
        v3 = "WCMSharing";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 37)
      {
        v3 = "WCMFrequencyTool";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 27)
      {
        v3 = "WRMTest";
        goto LABEL_75;
      }

      if ([(WCM_Controller *)self getProcessId]== 5)
      {
LABEL_12:
        v3 = "WCMTest";
      }

      else if ([(WCM_Controller *)self getProcessId]== 40)
      {
        v3 = "WRMHomeKit";
      }

      else if ([(WCM_Controller *)self getProcessId]== 41)
      {
        v3 = "WRMMIC";
      }

      else
      {
        v5 = [(WCM_Controller *)self getProcessId];
        v3 = "INVALID_PROC_ID!!!";
        if (v5 == 42)
        {
          v3 = "WRMSOS";
        }
      }
    }
  }

  else
  {
    v3 = "WCMUnknown";
  }

LABEL_75:
  [WCM_Logging logLevel:0 message:@"WCM_WiFiController(%s) getWiFiServiceSingletone default implementation", v3];
  return 0;
}

- (BOOL)isAssociated
{
  v2 = [(WCM_WiFiController *)self wifiService];

  return [(WCM_WiFiService *)v2 isAssociated];
}

- (BOOL)isAWDLInProgress
{
  v2 = [(WCM_WiFiController *)self wifiService];

  return [(WCM_WiFiService *)v2 isAWDLInProgress];
}

- (BOOL)isSideCarInProgress
{
  v2 = [(WCM_WiFiController *)self wifiService];

  return [(WCM_WiFiService *)v2 isSideCarInProgress];
}

- (BOOL)isEnsembleInProgress
{
  v2 = [(WCM_WiFiController *)self wifiService];

  return [(WCM_WiFiService *)v2 isEnsembleInProgress];
}

- (BOOL)isCarPlaySessionInProgress
{
  v2 = [(WCM_WiFiController *)self wifiService];

  return [(WCM_WiFiService *)v2 isCarPlaySessionInProgress];
}

- (BOOL)isAutoUnlockRangingInProgress
{
  v2 = [(WCM_WiFiController *)self wifiService];

  return [(WCM_WiFiService *)v2 isAutoUnlockRangingInProgress];
}

- (int)getCarPlayScanRelaxReason
{
  v2 = [(WCM_WiFiController *)self wifiService];

  return [(WCM_WiFiService *)v2 getCarPlayScanRelaxReason];
}

- (id)getLeastCongestedWifiParam
{
  v2 = [(WCM_WiFiController *)self wifiService];

  return [(WCM_WiFiService *)v2 getLeastCongestedWifiParam];
}

- (BOOL)isCoPresenceInProgress
{
  v2 = [(WCM_WiFiController *)self wifiService];

  return [(WCM_WiFiService *)v2 isCoPresenceInProgress];
}

- (int64_t)getNumberOfSpatialStream
{
  v2 = [(WCM_WiFiController *)self wifiService];

  return [(WCM_WiFiService *)v2 getNumberOfSpatialStream];
}

- (int64_t)getNumberOfSpatialStreamOnAccessPoint
{
  v2 = [(WCM_WiFiController *)self wifiService];

  return [(WCM_WiFiService *)v2 getNumberOfSpatialStreamOnAccessPoint];
}

- (void)toggleWiFiLQMIfNeeded:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000EA7B0;
  v3[3] = &unk_10023E008;
  v4 = a3;
  v3[4] = self;
  dispatch_sync(&_dispatch_main_q, v3);
}

- (void)updatePowerState:(BOOL)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EA918;
  block[3] = &unk_10023DCA0;
  v4 = a3;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], block);
}

- (void)updateCarPlaySessionState:(BOOL)a3 reason:(int)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EA9FC;
  block[3] = &unk_100242080;
  v6 = a3;
  v5 = a4;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], block);
}

- (void)updateContentionFreeWiFiInfoToRC2:(unsigned int)a3 count:(unsigned int)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EAB48;
  block[3] = &unk_10023DD00;
  v5 = a3;
  v6 = a4;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], block);
}

- (void)updateCatsState:(unsigned __int8)a3 bitmap:(unint64_t)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000EAC94;
  v4[3] = &unk_1002420A0;
  v5 = a3;
  v4[4] = a4;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], v4);
}

- (void)handleWiFiLinkDown:(int)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EAE28;
  block[3] = &unk_1002420C0;
  v4 = a3;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], block);
}

- (void)updateWiFiState:(int)a3 channel:(unsigned int)a4 centerFreq:(unsigned int)a5 bandwidth:(unsigned int)a6 hostAp:(BOOL)a7
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EAFB8;
  block[3] = &unk_1002420E0;
  v8 = a3;
  v9 = a4;
  v12 = a7;
  v10 = a5;
  v11 = a6;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], block);
}

- (void)update5GHzHostAPState:(BOOL)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EB4C4;
  block[3] = &unk_10023DCA0;
  v4 = a3;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], block);
}

- (void)updateWeightAvgLQM:(unsigned int)a3 txRate:(unsigned int)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EB610;
  block[3] = &unk_10023DD00;
  v5 = a4;
  v6 = a3;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], block);
}

- (void)handleDisconnection:(id)a3
{
  [WCM_Logging logLevel:2 message:@"WiFiController handleDisconnection"];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v3 = +[WCM_PolicyManager singleton];

  [v3 updateWiFiRadioState:0];
}

- (void)handleMessage:(id)a3
{
  uint64 = xpc_dictionary_get_uint64(a3, "kMessageId");
  [WCM_Logging logLevel:2 message:@"In WCMWIFI Controller handleMessage messageId = %lld", uint64];
  if (uint64 == 2602)
  {
    value = xpc_dictionary_get_value(a3, "kMessageArgs");
    string = xpc_dictionary_get_string(value, "kWCM_WLMWS_TestName");
    v13 = xpc_dictionary_get_string(value, "kWCM_WLMWS_TestKey");
    if (!strcmp(string, "antenna_selection"))
    {
      array = xpc_dictionary_get_array(value, "kWCM_WLMWS_TestAntennaSelectionArray");
      v17 = +[NSMutableArray array];
      count = xpc_array_get_count(array);
      if (count)
      {
        v19 = count;
        for (i = 0; i != v19; ++i)
        {
          v21 = xpc_array_get_value(array, i);
          [v17 addObject:{+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", xpc_uint64_get_value(v21))}];
        }
      }

      [(WCM_WiFiController *)self setAntennaSelectionWiFiEnh:v17];
    }

    else
    {
      v14 = xpc_dictionary_get_value(value, "kWCM_WLMWS_TestChannelBitmap");
      v15 = +[NSMutableDictionary dictionary];
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_1000EBBAC;
      applier[3] = &unk_100242108;
      applier[4] = v15;
      xpc_dictionary_apply(v14, applier);
      [(WCM_WiFiController *)self setCoexParams:v13 withValue:v15];
    }

    [WCM_Logging logLevel:0 message:@"WCMTestWifiCoexConfiguration controller dropping message-id %lld", 2602];
  }

  else if (uint64 == 2601)
  {
    v6 = xpc_dictionary_get_uint64(a3, "kWCMTestWiFiNetworkConfiguration_Band");
    v7 = xpc_dictionary_get_uint64(a3, "kWCMTestWiFiNetworkConfiguration_Channel");
    v8 = xpc_dictionary_get_uint64(a3, "kWCMTestWiFiNetworkConfiguration_CenterFrequency");
    v9 = xpc_dictionary_get_uint64(a3, "kWCMTestWiFiNetworkConfiguration_Bandwidth");
    v10 = xpc_dictionary_get_BOOL(a3, "kWCMTestWiFiNetworkConfiguration_Mode");
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [(WCM_WiFiController *)self updateWiFiState:v6 channel:v7 centerFreq:v8 bandwidth:v9 hostAp:v10];
    [WCM_Logging logLevel:0 message:@"WCMTestWiFiNetworkConfiguration controller dropping message-id %lld", 2601];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"RCU1 controller dropping message-id %lld", uint64];
  }
}

- (void)setCoexParams:(void *)a3 withValue:(void *)a4
{
  v6 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  if (v6)
  {

    [v6 setCoexParams:a3 withValue:a4];
  }
}

- (void)setAntennaSelectionWiFiEnh:(id)a3
{
  v4 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  if (v4)
  {

    [v4 setAntennaSelectionWiFiEnh:a3];
  }
}

@end