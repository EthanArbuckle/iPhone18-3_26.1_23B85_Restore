@interface WRM_BTBeaconController
+ (id)WRM_BTBeaconControllerSingleton;
- (WRM_BTBeaconController)init;
- (int)getRSSI;
- (void)onBleBeaconReceived:(id)received;
@end

@implementation WRM_BTBeaconController

+ (id)WRM_BTBeaconControllerSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007E100;
  block[3] = &unk_10023DD00;
  block[4] = self;
  if (qword_1002B7E40 != -1)
  {
    dispatch_once(&qword_1002B7E40, block);
  }

  v2 = qword_1002B7E38;

  return v2;
}

- (WRM_BTBeaconController)init
{
  v18.receiver = self;
  v18.super_class = WRM_BTBeaconController;
  v2 = [(WRM_BTBeaconController *)&v18 init];
  v2->mRSSI = -1;
  v3 = dispatch_queue_create("com.apple.WirelessRadioManager.BT", 0);
  mBTQueue = v2->mBTQueue;
  v2->mBTQueue = v3;

  v5 = objc_alloc_init(CBDiscovery);
  mDiscovery = v2->mDiscovery;
  v2->mDiscovery = v5;

  [WCM_Logging logLevel:24 message:@"BTBeacon Controller::CBDiscovery: object initialized"];
  [(CBDiscovery *)v2->mDiscovery setDiscoveryFlags:0x100000000040];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007E2E8;
  v16[3] = &unk_10023F6D0;
  v7 = v2;
  v17 = v7;
  [(CBDiscovery *)v2->mDiscovery setDeviceFoundHandler:v16];
  [(CBDiscovery *)v2->mDiscovery setDeviceLostHandler:&stru_10023F710];
  [(CBDiscovery *)v2->mDiscovery setDispatchQueue:v2->mBTQueue];
  v8 = v2->mDiscovery;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10007E38C;
  v14 = &unk_10023F738;
  v9 = v7;
  v15 = v9;
  [(CBDiscovery *)v8 activateWithCompletion:&v11];
  [WCM_Logging logLevel:24 message:@"BTBeacon Controller Initialized", v11, v12, v13, v14];

  return v9;
}

- (void)onBleBeaconReceived:(id)received
{
  receivedCopy = received;
  if (([receivedCopy deviceFlags] & 0x80) != 0)
  {
    idsDeviceID = [receivedCopy idsDeviceID];
    uTF8String = [idsDeviceID UTF8String];
    identifier = [receivedCopy identifier];
    uTF8String2 = [identifier UTF8String];
    model = [receivedCopy model];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"BTBeacon Controller::onBleBeaconReceived: IDS ID %s, BT identifier %s, Model %s, RSSI %d", uTF8String, uTF8String2, [model UTF8String], objc_msgSend(receivedCopy, "bleRSSI"));

    self->mRSSI = [receivedCopy bleRSSI];
    clientCBDeviceHandler = [(WRM_BTBeaconController *)self clientCBDeviceHandler];

    if (clientCBDeviceHandler)
    {
      clientCBDeviceHandler2 = [(WRM_BTBeaconController *)self clientCBDeviceHandler];
      (clientCBDeviceHandler2)[2](clientCBDeviceHandler2, receivedCopy);
    }
  }
}

- (int)getRSSI
{
  result = self->mRSSI;
  if (result == -1)
  {
    [WCM_Logging logLevel:24 message:@"BTBeacon Controller::getRSSI: RSSI Value has not been initialized."];
    return self->mRSSI;
  }

  return result;
}

@end