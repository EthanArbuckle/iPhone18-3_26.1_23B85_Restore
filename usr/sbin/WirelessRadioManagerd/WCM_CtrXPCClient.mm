@interface WCM_CtrXPCClient
- (BOOL)getListenCoexLoadChange;
- (BOOL)getRCU2Status;
- (BOOL)storeListenCoexLoadChange:(BOOL)a3;
- (BOOL)storeRCU2Status:(BOOL)a3;
- (BOOL)threadCOEXStatus;
- (WCM_CtrXPCClient)init;
- (void)HandleThreadStart:(id)a3;
- (void)HandleThreadStop:(id)a3;
- (void)RCU2Init;
- (void)setCellScanFreqTable:(id)a3;
- (void)updateCellScanFreqTable;
- (void)updateWiFiChannel:(int64_t)a3;
@end

@implementation WCM_CtrXPCClient

- (BOOL)getRCU2Status
{
  v2 = +[WCM_PolicyManager singleton];
  v3 = [v2 activeCoexFeatures];
  v4 = [v3 containsObject:@"RCU2SupportIntegrated"];

  if (v4)
  {
    [WCM_Logging logLevel:4 message:@" RCU2: In getRCU2Status - Reading value"];
    v5 = CFPreferencesCopyAppValue(@"previousRCU2State", @"com.apple.WirelessRadioManager.debug");
    if (v5)
    {
      v6 = v5;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v6))
      {
        value = 0;
        [WCM_Logging logLevel:4 message:@" RCU2: In getRCU2Status - for RCU2 state info %@", v6];
        if (CFDictionaryGetValueIfPresent(v6, @"state", &value))
        {
          v8 = CFStringCompare(@"TRUE", value, 0) == kCFCompareEqualTo;
          v9 = "FALSE";
          if (v8)
          {
            v9 = "TRUE";
          }

          [WCM_Logging logLevel:4 message:@" RCU2: In getRCU2Status - Reading value %s", v9];
          goto LABEL_14;
        }

        v12 = @" RCU2: In getRCU2Status - Reading value FAILED";
      }

      else
      {
        v12 = @" RCU2: In getRCU2Status - previousRCU2State not found";
      }

      [WCM_Logging logLevel:4 message:v12];
      v8 = 0;
LABEL_14:
      CFRelease(v6);
      return v8;
    }

    v10 = @" RCU2: In getRCU2Status - previousRCU2State not found";
    v11 = 4;
  }

  else
  {
    v10 = @"RCU2 Controller - RCU2_SUPPORT_INTEGRATED - Feature not enabled - return from getRCU2Status";
    v11 = 2;
  }

  [WCM_Logging logLevel:v11 message:v10];
  return 0;
}

- (void)setCellScanFreqTable:(id)a3
{
  v14 = a3;
  v4 = objc_alloc_init(NSMutableString);
  v5 = objc_alloc_init(NSMutableString);
  if (v14)
  {
    [WCM_Logging logLevel:2 message:@"RCU2 Controller - setCellScanFreqTable: %@ ", v14];
    v6 = [v14 count];
    [v4 appendFormat:@"%02X", v6];
    if (v6)
    {
      v7 = 0;
      v8 = v6;
      do
      {
        v9 = [v14 objectAtIndex:v7];
        v10 = [v9 objectAtIndex:0];
        v11 = [v10 integerValue];

        v12 = [v9 objectAtIndex:1];
        LOWORD(v10) = [v12 integerValue];

        [v4 appendFormat:@"%02X", HIBYTE(v11)];
        [v4 appendFormat:@"%02X", v11];
        [v5 appendFormat:@"%02X", BYTE1(v10)];
        [v5 appendFormat:@"%02X", v10];

        ++v7;
      }

      while (v7 < v8);
    }

    [v4 appendString:v5];
  }

  cellScanFreqTableStr = self->cellScanFreqTableStr;
  self->cellScanFreqTableStr = v4;
}

- (void)updateCellScanFreqTable
{
  cellScanFreqTableStr = self->cellScanFreqTableStr;
  if (!cellScanFreqTableStr)
  {
    v4 = +[WCM_PolicyManager singleton];
    v5 = [v4 platformManager];
    v6 = [v5 wcmCellularScanProtectionCellFrequenciesforBT];
    [(WCM_CtrXPCClient *)self setCellScanFreqTable:v6];

    cellScanFreqTableStr = self->cellScanFreqTableStr;
  }

  [WCM_Logging logLevel:2 message:@"RCU2 Controller - updateCellScanFreqTable: %@ ", cellScanFreqTableStr];
  v7 = self->cellScanFreqTableStr;
  if (v7)
  {
    if ([(NSString *)v7 length])
    {
      CtrClientPtr = self->CtrClientPtr;
      if (CtrClientPtr)
      {
        if (self->threadRadioUp)
        {
          [CtrClientPtr setProperty:"vendor:coex:scanFreqTable" prperty_val:[(NSString *)self->cellScanFreqTableStr UTF8String]];
          if (v9)
          {
            [WCM_Logging logLevel:2 message:@"RCU2 Controller - updateCellScanFreqTable failed! "];
          }

          if (v11 < 0)
          {
            operator delete(__p);
          }
        }
      }
    }
  }
}

- (BOOL)threadCOEXStatus
{
  [WCM_Logging logLevel:2 message:@"RCU2 Controller COEX status - ENTER"];
  [WCM_Logging logLevel:2 message:@"RCU2 Controller COEX status- %d EXIT", 1];
  return 1;
}

- (BOOL)storeRCU2Status:(BOOL)a3
{
  v3 = a3;
  v4 = +[WCM_PolicyManager singleton];
  v5 = [v4 activeCoexFeatures];
  v6 = [v5 containsObject:@"RCU2SupportIntegrated"];

  if (v6)
  {
    [WCM_Logging logLevel:4 message:@" RCU2: In storeRCU2Status.."];
    if (v3)
    {
      v7 = off_1002B7790;
    }

    else
    {
      v7 = off_1002B7798;
    }

    if (v3)
    {
      v8 = @" RCU2: In storeRCU2Status.. - Writing value TRUE";
    }

    else
    {
      v8 = @" RCU2: In storeRCU2Status.. - Writing value FALSE";
    }

    v9 = CFDictionaryCreate(kCFAllocatorDefault, off_1002B7788, v7, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    [WCM_Logging logLevel:4 message:v8];
    CFPreferencesSetAppValue(@"previousRCU2State", v9, @"com.apple.WirelessRadioManager.debug");
    if (CFPreferencesAppSynchronize(@"com.apple.WirelessRadioManager.debug"))
    {
      v10 = @" RCU2: In storeRCU2Status.. - Actual write:- passed";
    }

    else
    {
      v10 = @" RCU2: In storeRCU2Status.. - Actual write:- failed";
    }

    [WCM_Logging logLevel:1 message:v10];
    CFRelease(v9);
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"RCU2 Controller - RCU2_SUPPORT_INTEGRATED - Feature not enabled - return from storeRCU2Status"];
  }

  return v6;
}

- (BOOL)getListenCoexLoadChange
{
  [WCM_Logging logLevel:4 message:@" RCU2: In storeListenCoexLoadChange - Reading value"];
  v2 = CFPreferencesCopyAppValue(@"previousStoreListenCoexLoadChange", @"com.apple.WirelessRadioManager.debug");
  if (v2)
  {
    v3 = v2;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      value = 0;
      [WCM_Logging logLevel:4 message:@" RCU2: In getListenCoexLoadChange - for RCU2 state info %@", v3];
      if (CFDictionaryGetValueIfPresent(v3, @"ListenCoexLoad", &value))
      {
        v5 = CFStringCompare(@"TRUE", value, 0) == kCFCompareEqualTo;
        v6 = "FALSE";
        if (v5)
        {
          v6 = "TRUE";
        }

        [WCM_Logging logLevel:4 message:@" RCU2: In getListenCoexLoadChange - Reading value %s", v6];
        goto LABEL_11;
      }

      v7 = @" RCU2: In getListenCoexLoadChange - Reading value FAILED";
    }

    else
    {
      v7 = @" RCU2: In getListenCoexLoadChange - previousStoreListenCoexLoadChange not found";
    }

    [WCM_Logging logLevel:4 message:v7];
    v5 = 0;
LABEL_11:
    CFRelease(v3);
    return v5;
  }

  [WCM_Logging logLevel:4 message:@" RCU2: In getListenCoexLoadChange - previousStoreListenCoexLoadChange not found"];
  return 0;
}

- (BOOL)storeListenCoexLoadChange:(BOOL)a3
{
  v3 = a3;
  [WCM_Logging logLevel:4 message:@" RCU2: In storeListenCoexLoadChange.."];
  if (v3)
  {
    v4 = off_1002B77A8;
  }

  else
  {
    v4 = &off_1002B77B0;
  }

  if (v3)
  {
    v5 = @" RCU2: In storeListenCoexLoadChange.. - Writing value TRUE";
  }

  else
  {
    v5 = @" RCU2: In storeListenCoexLoadChange.. - Writing value FALSE";
  }

  v6 = CFDictionaryCreate(kCFAllocatorDefault, off_1002B77A0, v4, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  [WCM_Logging logLevel:4 message:v5];
  CFPreferencesSetAppValue(@"previousStoreListenCoexLoadChange", v6, @"com.apple.WirelessRadioManager.debug");
  if (CFPreferencesAppSynchronize(@"com.apple.WirelessRadioManager.debug"))
  {
    v7 = @" RCU2: In storeListenCoexLoadChange.. - Actual write:- passed";
  }

  else
  {
    v7 = @" RCU2: In storeListenCoexLoadChange.. - Actual write:- failed";
  }

  [WCM_Logging logLevel:1 message:v7];
  CFRelease(v6);
  return 1;
}

- (void)updateWiFiChannel:(int64_t)a3
{
  wifiChannelLoad = self->wifiChannelLoad;
  if (wifiChannelLoad == a3)
  {

    [WCM_Logging logLevel:2 message:@"RCU2 Controller No Change in WiFi Channel - Not Updating"];
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"RCU2 Controller WiFi channel changed from %ld to %ld", wifiChannelLoad, a3];
    self->wifiChannelLoad = a3;
    btWirelessLoad = self->btWirelessLoad;
    wifiBandLoad = self->wifiBandLoad;
    AWDLRealTimeModeEnabled = self->AWDLRealTimeModeEnabled;

    [(WCM_CtrXPCClient *)self sendFullWirelessLoad:btWirelessLoad wifiBandInfo:wifiBandLoad AWDLRealTimeModeInfo:AWDLRealTimeModeEnabled wifiChannelInfo:a3];
  }
}

- (void)HandleThreadStart:(id)a3
{
  v4 = a3;
  self->threadRadioUp = 1;
  v10 = v4;
  v5 = xpc_dictionary_get_value(v4, "kMessageArgs");
  v6 = xpc_dictionary_get_BOOL(v5, "kWCMThreadListenCoexLoadChange");
  self->threadListenCoexLoadChange = v6;
  [WCM_Logging logLevel:2 message:@"RCU2 Controller - Threadradio started - enabling sending messages - Current value = %d ListenCoexLoadChange = %d", self->threadRadioUp, v6];
  [(WCM_CtrXPCClient *)self RCU2Init];
  [(WCM_CtrXPCClient *)self setWirelessLoad:LODWORD(self->wifi_bt_cellular_load)];
  [(WCM_CtrXPCClient *)self storeRCU2Status:self->threadRadioUp];
  [(WCM_CtrXPCClient *)self storeListenCoexLoadChange:self->threadListenCoexLoadChange];
  [(WCM_CtrXPCClient *)self updateCellScanFreqTable];
  v7 = +[WCM_PolicyManager singleton];
  [v7 handleWiFiBTCoexChange];

  v8 = +[WCM_PolicyManager singleton];
  [v8 configureBTAntennaSelection];

  v9 = +[WCM_PolicyManager singleton];
  [v9 updateThreadRadioState:self->threadRadioUp];
}

- (void)RCU2Init
{
  v3 = [[CtrClient alloc] init:"client.xpc.WirelessRadioManager"];
  CtrClientPtr = self->CtrClientPtr;
  self->CtrClientPtr = v3;

  _objc_release_x1(v3, CtrClientPtr);
}

- (void)HandleThreadStop:(id)a3
{
  v7 = a3;
  v4 = xpc_dictionary_get_value(v7, "kMessageArgs");
  self->threadListenCoexLoadChange = xpc_dictionary_get_BOOL(v4, "kWCMThreadListenCoexLoadChange");
  self->threadRadioUp = 0;
  [(WCM_CtrXPCClient *)self storeRCU2Status:0];
  [(WCM_CtrXPCClient *)self storeListenCoexLoadChange:self->threadListenCoexLoadChange];
  [WCM_Logging logLevel:2 message:@"RCU2 Controller - Threadradio Stopped - Disabling sending messages- Current value = %d ListenCoexLoadChange = %d", self->threadRadioUp, self->threadListenCoexLoadChange];
  v5 = +[WCM_PolicyManager singleton];
  [v5 handleWiFiBTCoexChange];

  if (!self->threadListenCoexLoadChange)
  {
    CtrClientPtr = self->CtrClientPtr;
    self->CtrClientPtr = 0;
  }
}

- (WCM_CtrXPCClient)init
{
  v4.receiver = self;
  v4.super_class = WCM_CtrXPCClient;
  v2 = [(WCM_CtrXPCClient *)&v4 init];
  [WCM_Logging logLevel:2 message:@"RCU2 Controller - Initilization"];
  *(v2 + 2) = 0;
  v2[24] = 0;
  *(v2 + 7) = 0;
  v2[64] = 0;
  *(v2 + 4) = 0;
  *(v2 + 5) = 0;
  *(v2 + 45) = 0;
  v2[25] = [v2 getRCU2Status];
  v2[26] = [v2 getListenCoexLoadChange];
  if (v2[25] == 1)
  {
    [v2 RCU2Init];
  }

  return v2;
}

@end