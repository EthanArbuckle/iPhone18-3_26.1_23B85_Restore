@interface WRM_SCService
+ (id)WRM_SCServiceControllerSingleton;
- (BOOL)isWiFiPrimary;
- (WRM_SCService)init;
- (void)configureAirplaneNotification;
- (void)configureTelephonyNotification;
- (void)configureWiFiNotification;
- (void)dealloc;
- (void)getAirPlaneMode;
- (void)getTelephonyMode;
- (void)getWiFiMode;
- (void)registerForCellularDataLQM;
@end

@implementation WRM_SCService

- (BOOL)isWiFiPrimary
{
  v2 = [(NWPathEvaluator *)self->mWiFiPathEvaluator path];

  return [v2 usesInterfaceType:1];
}

+ (id)WRM_SCServiceControllerSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000855B0;
  block[3] = &unk_10023DB28;
  block[4] = a1;
  if (qword_1002B7E58 != -1)
  {
    dispatch_once(&qword_1002B7E58, block);
  }

  return qword_1002B7E60;
}

- (WRM_SCService)init
{
  v5.receiver = self;
  v5.super_class = WRM_SCService;
  v2 = [(WRM_SCService *)&v5 init];
  if (v2)
  {
    v2->mQueue = dispatch_queue_create("com.apple.WirelessRadioManager.SCDClient", 0);
    v2->mStore = 0;
    v2->mValidDataLqm = 0;
    v2->mWiFiEnabled = 0;
    v2->mTelephonyRef = 0;
    v2->mWiFiRef = 0;
    v2->mAirplaneRef = 0;
    *&v2->mAirPlaneModeEnabled = 256;
    v2->mBackHaulBroken = 0;
    v3 = objc_alloc_init(NWParameters);
    v2->mParams = v3;
    [(NWParameters *)v3 setRequiredInterfaceType:2];
    v2->mCellPathEvaluator = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:v2->mParams];
    v2->mWiFiPathEvaluator = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:0];
    v2->mWiFiConnectedToCarPlay = 0;
    [(WRM_SCService *)v2 configureAirplaneNotification];
    [(WRM_SCService *)v2 configureTelephonyNotification];
    [(WRM_SCService *)v2 configureWiFiNotification];
  }

  return v2;
}

- (void)dealloc
{
  [WCM_Logging logLevel:22 message:@"WRM_SCService dealloc"];
  mStore = self->mStore;
  if (mStore)
  {
    CFRelease(mStore);
  }

  self->mStore = 0;
  self->mValidDataLqm = 0;
  mAirplaneRef = self->mAirplaneRef;
  if (mAirplaneRef)
  {
    SCPreferencesSetDispatchQueue(mAirplaneRef, 0);
    CFRelease(self->mAirplaneRef);
  }

  self->mAirplaneRef = 0;
  mTelephonyRef = self->mTelephonyRef;
  if (mTelephonyRef)
  {
    SCPreferencesSetDispatchQueue(mTelephonyRef, 0);
    CFRelease(self->mTelephonyRef);
  }

  mifnameCf = self->mifnameCf;
  if (mifnameCf)
  {
    CFRelease(mifnameCf);
  }

  mParams = self->mParams;
  if (mParams)
  {
    CFRelease(mParams);
  }

  mCellPathEvaluator = self->mCellPathEvaluator;
  if (mCellPathEvaluator)
  {
    CFRelease(mCellPathEvaluator);
  }

  mWiFiPathEvaluator = self->mWiFiPathEvaluator;
  if (mWiFiPathEvaluator)
  {
    CFRelease(mWiFiPathEvaluator);
  }

  mQueue = self->mQueue;
  if (mQueue)
  {
    dispatch_release(mQueue);
    self->mQueue = 0;
  }

  self->mTelephonyRef = 0;
  v11.receiver = self;
  v11.super_class = WRM_SCService;
  [(WRM_SCService *)&v11 dealloc];
}

- (void)registerForCellularDataLQM
{
  valuePtr = [(WRM_SCService *)self getCellularDataLQM];
  v3 = SCDynamicStoreCreate(0, @"com.apple.WirelessRadioManagerd", sub_100085A34, 0);
  self->mStore = v3;
  if (v3)
  {
    v4 = kSCEntNetLinkQuality;
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, @"pdp_ip0", kSCEntNetLinkQuality);
    v6 = SCDynamicStoreCopyValue(self->mStore, NetworkInterfaceEntity);
    v7 = v6;
    if (v6)
    {
      v8 = CFGetTypeID(v6);
      if (v8 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v7, v4);
        if (Value)
        {
          v10 = Value;
          v11 = CFGetTypeID(Value);
          if (v11 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v10, kCFNumberIntType, &valuePtr);
          }
        }
      }
    }

    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v13 = Mutable;
      CFArrayAppendValue(Mutable, NetworkInterfaceEntity);
      if (!SCDynamicStoreSetNotificationKeys(self->mStore, v13, 0))
      {
        [WCM_Logging logLevel:22 message:@"SCDynamicStoreSetNotificationKeys failed"];
      }

      if (!SCDynamicStoreSetDispatchQueue(self->mStore, [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")]))
      {
        [WCM_Logging logLevel:22 message:@"SCDynamicStoreSetDispatchQueue failed"];
      }

      [WCM_Logging logLevel:22 message:@"registerForCellularDataLQM passed"];
      CFRelease(v13);
      if (NetworkInterfaceEntity)
      {
        CFRelease(NetworkInterfaceEntity);
      }

      if (v7)
      {
        CFRelease(v7);
      }

      [(WRM_SCService *)self setCellularDataLQM:valuePtr];
      [WCM_Logging logLevel:22 message:@"SCDynamicStoreCreate succesful, data LQM: %d", valuePtr];
    }

    else
    {
      [WCM_Logging logLevel:22 message:@"CFArrayCreateMutable failed", v14];
    }
  }

  else
  {

    [WCM_Logging logLevel:22 message:@"SCDynamicStoreCreate failed"];
  }
}

- (void)getAirPlaneMode
{
  objc_sync_enter(self);
  Value = SCPreferencesGetValue([(WRM_SCService *)self getAPMHandle], @"AirplaneMode");
  [WCM_Logging logLevel:22 message:@"Inside getAirPlaneMode"];
  if (Value)
  {
    v4 = CFGetTypeID(Value);
    if (v4 == CFBooleanGetTypeID())
    {
      self->mAirPlaneModeEnabled = CFBooleanGetValue(Value) != 0;
    }

    else
    {
      [WCM_Logging logLevel:16 message:@"AirplaneMode is not BOOLean"];
    }

    objc_sync_exit(self);
    [WCM_Logging logLevel:18 message:@"getAirPlaneMode: %d", self->mAirPlaneModeEnabled];
  }

  else
  {
    [WCM_Logging logLevel:16 message:@"getAirPlaneMode: plistRef is NULL"];

    objc_sync_exit(self);
  }
}

- (void)getWiFiMode
{
  objc_sync_enter(self);
  self->mWiFiEnabled = [SCPreferencesGetValue(self->mWiFiRef @"AllowEnable")] != 0;

  objc_sync_exit(self);
}

- (void)getTelephonyMode
{
  objc_sync_enter(self);
  Value = SCPreferencesGetValue([(WRM_SCService *)self getTelephonyHandle], @"TelephonyState");
  [WCM_Logging logLevel:22 message:@"Inside getTelephonyMode"];
  if (!Value)
  {
    self->mTelephonyEnabled = 1;
    [WCM_Logging logLevel:16 message:@"getTelephonyMode: plistRef is NULL"];
    goto LABEL_11;
  }

  [WCM_Logging logLevel:22 message:@"getTelephonyMode: current telephony state %d", self->mTelephonyEnabled];
  v4 = CFGetTypeID(Value);
  if (v4 != CFDictionaryGetTypeID())
  {
    v7 = @"Error: TelephonyState plist is not dictionary";
LABEL_10:
    [WCM_Logging logLevel:22 message:v7];
    [WCM_Logging logLevel:16 message:@"getTelephonyMode: Updated state: %d", self->mTelephonyEnabled];
    goto LABEL_11;
  }

  [WCM_Logging logLevel:22 message:@"getTelephonyMode processing: TelephonyState key"];
  v5 = CFDictionaryGetValue(Value, @"TelephonyEnabled");
  if (v5)
  {
    v6 = CFBooleanGetValue(v5);
    if (v6)
    {
      v7 = @"getTelephonyMode: mTelephonyEnabled: TRUE";
    }

    else
    {
      v7 = @"getTelephonyMode: mTelephonyEnabled: FALSE";
    }

    self->mTelephonyEnabled = v6 != 0;
    goto LABEL_10;
  }

  [WCM_Logging logLevel:16 message:@"getTelephonyMode: telephonyState is NULL"];
LABEL_11:

  objc_sync_exit(self);
}

- (void)configureAirplaneNotification
{
  *&context.version = unk_10023F8B0;
  memset(&context.retain, 0, 24);
  [WCM_Logging logLevel:22 message:@"Inside configureAirplaneNotification"];
  v3 = SCPreferencesCreateWithAuthorization(0, @"com.apple.WirelessRadioManager:registerForAirplaneModeNotifications", @"com.apple.radios.plist", 0);
  self->mAirplaneRef = v3;
  if (v3)
  {
    SCPreferencesSetCallback(v3, sub_100085FD0, &context);
    SCPreferencesSetDispatchQueue(self->mAirplaneRef, self->mQueue);
  }

  else
  {
    v4 = SCError();
    [WCM_Logging logLevel:22 message:@"Failed to create airplane mode preference handle: %d", SCErrorString(v4)];
  }

  [WCM_Logging logLevel:22 message:@"configureAirplaneNotification, calling getAirPlaneMode modification"];
  [(WRM_SCService *)self getAirPlaneMode];
}

- (void)configureTelephonyNotification
{
  *&context.version = unk_10023F8D8;
  memset(&context.retain, 0, 24);
  [WCM_Logging logLevel:22 message:@"Inside configureTelephonyNotification"];
  v3 = SCPreferencesCreateWithAuthorization(0, @"com.apple.WirelessRadioManager:registerForAirplaneModeNotifications", @"com.apple.radios.plist", 0);
  self->mTelephonyRef = v3;
  if (v3)
  {
    SCPreferencesSetCallback(v3, sub_100085FD0, &context);
    SCPreferencesSetDispatchQueue(self->mTelephonyRef, self->mQueue);
  }

  else
  {
    v4 = SCError();
    [WCM_Logging logLevel:22 message:@"Failed to create telephony preference handle: %d", SCErrorString(v4)];
  }

  [WCM_Logging logLevel:22 message:@"configureTelephonyNotification, calling getTelephonyMode notification"];
  [(WRM_SCService *)self getTelephonyMode];
}

- (void)configureWiFiNotification
{
  *&context.version = unk_10023F900;
  memset(&context.retain, 0, 24);
  [WCM_Logging logLevel:22 message:@"Inside configureWiFiNotification"];
  v3 = SCPreferencesCreateWithAuthorization(0, @"com.apple.WirelessRadioManager:registerForWiFiNotifications", @"com.apple.wifi.plist", 0);
  self->mWiFiRef = v3;
  if (v3)
  {
    SCPreferencesSetCallback(v3, sub_100085FD0, &context);
    SCPreferencesSetDispatchQueue(self->mWiFiRef, self->mQueue);
  }

  else
  {
    v4 = SCError();
    [WCM_Logging logLevel:22 message:@"Failed to create WiFi preference handle: %d", SCErrorString(v4)];
  }

  [(WRM_SCService *)self getWiFiMode];
  [WCM_Logging logLevel:22 message:@"configureWiFiNotification, calling getWiFiMode notification"];
}

@end