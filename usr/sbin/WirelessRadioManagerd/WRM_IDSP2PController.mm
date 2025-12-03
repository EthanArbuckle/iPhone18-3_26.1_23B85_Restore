@interface WRM_IDSP2PController
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)wrm_IDSP2PControllerSingleton;
- (BOOL)isRemoteWiFiGood;
- (BOOL)updateDevicePairingState;
- (WRM_IDSP2PController)init;
- (void)InitService;
- (void)WrmSendp2pMessage:(id)message MessageBody:(id)body withOptions:(id)options;
- (void)dealloc;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
@end

@implementation WRM_IDSP2PController

+ (id)wrm_IDSP2PControllerSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000460CC;
  block[3] = &unk_10023DB28;
  block[4] = self;
  if (qword_1002B7DA8 != -1)
  {
    dispatch_once(&qword_1002B7DA8, block);
  }

  return qword_1002B7DB0;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  wrm_IDSP2PControllerSingleton = [self wrm_IDSP2PControllerSingleton];

  return wrm_IDSP2PControllerSingleton;
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

- (void)WrmSendp2pMessage:(id)message MessageBody:(id)body withOptions:(id)options
{
  v11[0] = @"msg.name";
  v11[1] = @"msg.body";
  v12[0] = message;
  v12[1] = body;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 27, @"IDSP2PSync: Sending hint to Gizmo '%s' having contents %s", [message UTF8String], objc_msgSend(body, "UTF8String"));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100046500;
  block[3] = &unk_10023E058;
  block[4] = self;
  block[5] = v9;
  block[6] = options;
  dispatch_async([(WRM_IDSP2PController *)self queue], block);
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  [WCM_Logging logLevel:27 message:@"IDSP2PSync: Incoming message received", message, d, context];
  v10 = [message objectForKey:@"msg.body"];
  v11 = [message objectForKey:@"msg.name"];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 27, @" IDSP2PSync <= Incoming message '%s' with contents %@: %lu keys; from device '%s'", [v11 UTF8String], v10, objc_msgSend(message, "count"), objc_msgSend(d, "UTF8String"));
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
  companionWifiStatus = [(WRM_IDSP2PController *)self CompanionWifiStatus];

  return [(NSString *)companionWifiStatus isEqualToString:@"LinkUP"];
}

- (BOOL)updateDevicePairingState
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectedDevices = [(WRM_IDSP2PController *)self ConnectedDevices];
  v3 = [(NSArray *)connectedDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(connectedDevices);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (v8 && ([v8 isLocallyPaired] & 1) != 0)
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v4 = [(NSArray *)connectedDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)service:(id)service devicesChanged:(id)changed
{
  [WCM_Logging logLevel:27 message:@"IDSP2PSync: devicesChanged called"];
  changedCopy = changed;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100046D5C;
  v8[3] = &unk_10023DC80;
  v8[4] = changed;
  v8[5] = self;
  dispatch_async(queue, v8);
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  [WCM_Logging logLevel:27 message:@"IDSP2PSync: connectedDevicesChanged called"];
  changedCopy = changed;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100046F88;
  block[3] = &unk_10023DB28;
  block[4] = changed;
  dispatch_async(queue, block);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  if (success)
  {
    v9 = "true";
  }

  else
  {
    v9 = "false";
  }

  uTF8String = [identifier UTF8String];
  if (error)
  {
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 27, @"IDSP2PSync: -- didSendWithSuccess: %s identifier: %s error: %s", v9, uTF8String, [objc_msgSend(error "description")]);
  }

  else
  {
    [WCM_Logging logLevel:27 message:@"IDSP2PSync:   -- didSendWithSuccess: %s identifier: %s", v9, uTF8String, v11];
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