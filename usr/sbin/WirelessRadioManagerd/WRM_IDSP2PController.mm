@interface WRM_IDSP2PController
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)wrm_IDSP2PControllerSingleton;
- (BOOL)isRemoteWiFiGood;
- (BOOL)updateDevicePairingState;
- (WRM_IDSP2PController)init;
- (void)InitService;
- (void)WrmSendp2pMessage:(id)a3 MessageBody:(id)a4 withOptions:(id)a5;
- (void)dealloc;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 connectedDevicesChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
@end

@implementation WRM_IDSP2PController

+ (id)wrm_IDSP2PControllerSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000460CC;
  block[3] = &unk_10023DB28;
  block[4] = a1;
  if (qword_1002B7DA8 != -1)
  {
    dispatch_once(&qword_1002B7DA8, block);
  }

  return qword_1002B7DB0;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v3 = [a1 wrm_IDSP2PControllerSingleton];

  return v3;
}

- (WRM_IDSP2PController)init
{
  v4.receiver = self;
  v4.super_class = WRM_IDSP2PController;
  v2 = [(WRM_IDSP2PController *)&v4 init];
  if (v2)
  {
    [(WRM_IDSP2PController *)v2 setQueue:dispatch_queue_create("com.apple.WirelessRadioManager.P2PIDS", 0)];
    [WCM_Logging logLevel:27 message:@"IDSP2PSync: P2PSync module initialized"];
    [(WRM_IDSP2PController *)v2 setServiceInitDone:0];
    [(WRM_IDSP2PController *)v2 setConnectedDevices:objc_alloc_init(NSArray)];
    [(WRM_IDSP2PController *)v2 setCompanionWifiStatus:objc_alloc_init(NSString)];
    [(WRM_IDSP2PController *)v2 setCompanionWifiStatus:@"LinkUP"];
    [(WRM_IDSP2PController *)v2 setDevicePaired:0];
    [(WRM_IDSP2PController *)v2 setCompanionBTVersusWiFiRecommendation:objc_alloc_init(NSString)];
    [(WRM_IDSP2PController *)v2 setCompanionBTVersusWiFiRecommendation:@"WIFI"];
    [(WRM_IDSP2PController *)v2 setCompanionInternetConnectionAvailable:objc_alloc_init(NSString)];
    [(WRM_IDSP2PController *)v2 setCompanionInternetConnectionAvailable:@"YES"];
    [(WRM_IDSP2PController *)v2 setCompanionBTRssi:objc_alloc_init(NSString)];
    [(WRM_IDSP2PController *)v2 setCompanionBTRssi:@"-40"];
    [(WRM_IDSP2PController *)v2 setCompanionWIFIRssi:objc_alloc_init(NSString)];
    [(WRM_IDSP2PController *)v2 setCompanionWIFIRssi:@"-50"];
  }

  return v2;
}

- (void)dealloc
{
  [WCM_Logging logLevel:27 message:@"IDSP2PSync: Dealloc called for P2P IDS Manager"];
  if ([(WRM_IDSP2PController *)self ConnectedDevices])
  {
  }

  if ([(WRM_IDSP2PController *)self CompanionWifiStatus])
  {
  }

  v3.receiver = self;
  v3.super_class = WRM_IDSP2PController;
  [(WRM_IDSP2PController *)&v3 dealloc];
}

- (void)WrmSendp2pMessage:(id)a3 MessageBody:(id)a4 withOptions:(id)a5
{
  v11[0] = @"msg.name";
  v11[1] = @"msg.body";
  v12[0] = a3;
  v12[1] = a4;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 27, @"IDSP2PSync: Sending hint to Gizmo '%s' having contents %s", [a3 UTF8String], objc_msgSend(a4, "UTF8String"));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100046500;
  block[3] = &unk_10023E058;
  block[4] = self;
  block[5] = v9;
  block[6] = a5;
  dispatch_async([(WRM_IDSP2PController *)self queue], block);
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  [WCM_Logging logLevel:27 message:@"IDSP2PSync: Incoming message received", a5, a6, a7];
  v10 = [a5 objectForKey:@"msg.body"];
  v11 = [a5 objectForKey:@"msg.name"];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 27, @" IDSP2PSync <= Incoming message '%s' with contents %@: %lu keys; from device '%s'", [v11 UTF8String], v10, objc_msgSend(a5, "count"), objc_msgSend(a6, "UTF8String"));
  if ([v11 isEqualToString:@"WiFi status"])
  {
    if ([(WRM_IDSP2PController *)self CompanionWifiStatus])
    {
    }

    -[WRM_IDSP2PController setCompanionWifiStatus:](self, "setCompanionWifiStatus:", [v10 copy]);
    [WCM_Logging logLevel:27 message:@" IDSP2PSync Companion Wifi Status is %@", [(WRM_IDSP2PController *)self CompanionWifiStatus]];
  }

  if ([v11 isEqualToString:@"BT versus WiFi pref"])
  {
    if ([(WRM_IDSP2PController *)self CompanionBTVersusWiFiRecommendation])
    {
    }

    -[WRM_IDSP2PController setCompanionWifiStatus:](self, "setCompanionWifiStatus:", [v10 copy]);
    [WCM_Logging logLevel:27 message:@" IDSP2PSync Companion BT versus WiFi recommendation is %@", [(WRM_IDSP2PController *)self CompanionBTVersusWiFiRecommendation]];
  }

  if ([v11 isEqualToString:@"Internet Available"])
  {
    if ([(WRM_IDSP2PController *)self CompanionInternetConnectionAvailable])
    {
    }

    -[WRM_IDSP2PController setCompanionInternetConnectionAvailable:](self, "setCompanionInternetConnectionAvailable:", [v10 copy]);
    [WCM_Logging logLevel:27 message:@" IDSP2PSync Companion Internet available %@", [(WRM_IDSP2PController *)self CompanionInternetConnectionAvailable]];
  }

  if ([v11 isEqualToString:@"BT RSSI"])
  {
    if ([(WRM_IDSP2PController *)self CompanionBTRssi])
    {
    }

    -[WRM_IDSP2PController setCompanionBTRssi:](self, "setCompanionBTRssi:", [v10 copy]);
    [WCM_Logging logLevel:27 message:@" IDSP2PSync Companion BT RSSI %@", [(WRM_IDSP2PController *)self CompanionBTRssi]];
  }

  if ([v11 isEqualToString:@"WIFI RSSI"])
  {
    if ([(WRM_IDSP2PController *)self CompanionWIFIRssi])
    {
    }

    -[WRM_IDSP2PController setCompanionWIFIRssi:](self, "setCompanionWIFIRssi:", [v10 copy]);
    [WCM_Logging logLevel:27 message:@" IDSP2PSync Companion Wifi RSSI %@", [(WRM_IDSP2PController *)self CompanionWIFIRssi]];
  }

  v12 = +[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton];

  [v12 evaluateBTWiFiLinkForTerminus];
}

- (BOOL)isRemoteWiFiGood
{
  v2 = [(WRM_IDSP2PController *)self CompanionWifiStatus];

  return [(NSString *)v2 isEqualToString:@"LinkUP"];
}

- (BOOL)updateDevicePairingState
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(WRM_IDSP2PController *)self ConnectedDevices];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = @"%s: Device is Paired!";
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (v8 && ([v8 isLocallyPaired] & 1) != 0)
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

    v9 = 0;
    v6 = @"%s: Device is NOT Paired!";
  }

  else
  {
    v9 = 0;
    v6 = @"%s: Device is NOT Paired!";
  }

LABEL_13:
  [WCM_Logging logLevel:27 message:v6, "[WRM_IDSP2PController updateDevicePairingState]"];
  return v9;
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  [WCM_Logging logLevel:27 message:@"IDSP2PSync: devicesChanged called"];
  v6 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100046D5C;
  v8[3] = &unk_10023DC80;
  v8[4] = a4;
  v8[5] = self;
  dispatch_async(queue, v8);
}

- (void)service:(id)a3 connectedDevicesChanged:(id)a4
{
  [WCM_Logging logLevel:27 message:@"IDSP2PSync: connectedDevicesChanged called"];
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100046F88;
  block[3] = &unk_10023DB28;
  block[4] = a4;
  dispatch_async(queue, block);
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8
{
  if (a6)
  {
    v9 = "true";
  }

  else
  {
    v9 = "false";
  }

  v10 = [a5 UTF8String];
  if (a7)
  {
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 27, @"IDSP2PSync: -- didSendWithSuccess: %s identifier: %s error: %s", v9, v10, [objc_msgSend(a7 "description")]);
  }

  else
  {
    [WCM_Logging logLevel:27 message:@"IDSP2PSync:   -- didSendWithSuccess: %s identifier: %s", v9, v10, v11];
  }
}

- (void)InitService
{
  [WCM_Logging logLevel:27 message:@"IDSP2PSync: InitService called"];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047130;
  block[3] = &unk_10023DB28;
  block[4] = self;
  dispatch_async(queue, block);
}

@end