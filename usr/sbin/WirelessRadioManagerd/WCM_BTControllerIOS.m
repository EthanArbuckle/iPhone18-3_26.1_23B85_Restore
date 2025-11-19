@interface WCM_BTControllerIOS
- (BOOL)isBTMetricsValid;
- (WCM_BTControllerIOS)init;
- (double)getBtRxPer;
- (double)getBtTxPer;
- (id)createBTHCIExternalFrameConfigParams:(id)a3;
- (id)createChannelParameters:(id)a3;
- (int)getBTRole;
- (int)getBTState;
- (void)bspBandSwitchReject:(int)a3 targetBand:(int)a4;
- (void)bspNotifyChannelQuality:(int)a3 quality:(unint64_t)a4;
- (void)bspRegulatoryInfoRequest:(id)a3 timeStamp:(int64_t)a4;
- (void)bspSetFrequencyBandToUse:(int)a3 allowedBands:(int)a4;
- (void)bspStatusRequest;
- (void)bspUpdateWiFiStatus:(BOOL)a3;
- (void)dealloc;
- (void)handelAFHMap:(id)a3;
- (void)handleAntennaPreferenceBResponse:(id)a3;
- (void)handleAntennaSwitchNotification:(id)a3;
- (void)handleBTBandwidthLoad:(id)a3;
- (void)handleBTMetricsRpt:(id)a3;
- (void)handleBTPhyRpt:(id)a3;
- (void)handleDisconnection:(id)a3;
- (void)handleHFBTChannelMap:(id)a3;
- (void)handleLTELinkQuality:(id)a3;
- (void)handleLeConn:(id)a3;
- (void)handleLeDiscoveryScanStateChange:(id)a3;
- (void)handleMessage:(id)a3;
- (void)handleRawRSSI:(id)a3;
- (void)printAFHMap:(char *)a3;
- (void)printBLEAFHMap:(char *)a3;
- (void)printHFBTChannelMap:(char *)a3;
- (void)resetBtMetrics;
- (void)updateAntennaRSSIOffset;
- (void)updateBLEActiveScanPwrLmtAssertionInterval:(unint64_t)a3;
- (void)updateBTRCU2TimingArray:(id)a3;
- (void)updateCoexRxGainMode:(id)a3;
- (void)updateHPCellularCoexMode:(BOOL)a3;
- (void)updateMWSChannelParameters:(id)a3;
- (void)updateMWSFrameConfig:(id)a3;
- (void)updateMWSScanFrequencyTable:(id)a3;
- (void)updateMWSSignalingConfig;
- (void)updatePreferredAFHMap:(id)a3;
- (void)updatePreferredHFBTChannelMap:(id)a3;
- (void)updateWCI2Mode:(BOOL)a3;
- (void)updateWiFiCatsState:(unsigned __int8)a3 bitmap:(unint64_t)a4 band:(int)a5 desiredBtDc:(int)a6;
- (void)updateWiFiCriticalEnabled:(BOOL)a3;
@end

@implementation WCM_BTControllerIOS

- (int)getBTState
{
  result = [(WCM_BTController *)self powerState];
  if (result)
  {
    if ([(NSMutableArray *)[(WCM_BTController *)self btConnections] count])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (double)getBtTxPer
{
  v3 = [(WCM_BTControllerIOS *)self mMovingAvgReTxCount];
  v4 = [(WCM_BTControllerIOS *)self mMovingAvgSuccessfulTxCount];
  return v3 / (([(WCM_BTControllerIOS *)self mMovingAvgReTxCount]+ v4) + 0.000001);
}

- (WCM_BTControllerIOS)init
{
  v7.receiver = self;
  v7.super_class = WCM_BTControllerIOS;
  v2 = [(WCM_BTController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 45) = 0;
    v2[184] = 0;
    *(v2 + 47) = 4;
    *(v2 + 48) = 4;
    *(v2 + 196) = 0;
    *(v2 + 204) = 0;
    *(v2 + 212) = 0;
    *(v2 + 220) = 0;
    v2[246] = 0;
    *(v2 + 228) = 0;
    *(v2 + 59) = 3;
    *(v2 + 60) = 255;
    v2[244] = 0;
    v2[245] = 0;
    v2[358] = 0;
    *(v2 + 247) = -1;
    *(v2 + 255) = -1;
    *(v2 + 257) = -1;
    v2[261] = -1;
    *&v4 = -1;
    *(&v4 + 1) = -1;
    *(v2 + 262) = v4;
    *(v2 + 278) = v4;
    *(v2 + 294) = v4;
    *(v2 + 310) = v4;
    *(v2 + 326) = v4;
    *(v2 + 342) = v4;
    *(v2 + 359) = -1;
    *(v2 + 367) = -1;
    *(v2 + 369) = -1;
    *(v2 + 377) = -1;
    *(v2 + 379) = -1;
    *(v2 + 387) = -1;
    *(v2 + 389) = -1;
    *(v2 + 397) = -1;
    *(v2 + 404) = 0;
    *(v2 + 412) = 0;
    *(v2 + 420) = 0;
    *(v2 + 428) = 0;
    *(v2 + 436) = -1;
    *(v2 + 444) = -1;
    [v2 setMClassicRssi:128];
    [(WCM_BTControllerIOS *)v3 setMMovingAvgRSSI:128.0];
    [(WCM_BTControllerIOS *)v3 setMLeRssi:128];
    [(WCM_BTControllerIOS *)v3 setMMovingAvgRSSI:128.0];
    [(WCM_BTControllerIOS *)v3 setMLeSuccessfulTxCount:0];
    [(WCM_BTControllerIOS *)v3 setMLeSuccessfulTxCount:0];
    [(WCM_BTControllerIOS *)v3 setMLeReTxCount:0];
    [(WCM_BTControllerIOS *)v3 setMLeSuccessfulRxCount:0];
    [(WCM_BTControllerIOS *)v3 setMLeRxErrorCount:0];
    [(WCM_BTControllerIOS *)v3 setMLeCoexDenialCount:0];
    [(WCM_BTControllerIOS *)v3 setMClassicSuccessfulTxCount:0];
    [(WCM_BTControllerIOS *)v3 setMClassicReTxCount:0];
    [(WCM_BTControllerIOS *)v3 setMClassicSuccessfulRxCount:0];
    [(WCM_BTControllerIOS *)v3 setMClassicRxErrorCount:0];
    [(WCM_BTControllerIOS *)v3 setMClassicCoexDenialCount:0];
    [(WCM_BTControllerIOS *)v3 setMPrevActivePhy:0];
    [(WCM_BTControllerIOS *)v3 setMActivePhy:0];
    [(WCM_BTControllerIOS *)v3 setMActivePhyValid:0];
    [(WCM_BTControllerIOS *)v3 setMNonMagnetUtilization:0.0];
    [(WCM_BTControllerIOS *)v3 setMMetricsReportReason:0];
    [(WCM_BTControllerIOS *)v3 setMFlushCount:0];
    [(WCM_BTControllerIOS *)v3 setMBtPhyRate:0];
    [(WCM_BTControllerIOS *)v3 setMMovingAvgReTxCount:0];
    [(WCM_BTControllerIOS *)v3 setMMovingAvgRxErrorCount:0];
    [(WCM_BTControllerIOS *)v3 setMMovingAvgSuccessfulRxCount:0];
    [(WCM_BTControllerIOS *)v3 setMMovingAvgSuccessfulTxCount:0];
    [(WCM_BTControllerIOS *)v3 setMNumberofSamples:0];
    [(WCM_BTControllerIOS *)v3 setMLQMLinkEvalCounter:0];
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    [(WCM_BTControllerIOS *)v3 setQueue:dispatch_queue_create("com.apple.WirelessRadioManager.BTController", v5)];
  }

  return v3;
}

- (void)dealloc
{
  v3 = *(&self->mMWSDlBandwidth + 4);
  if (v3)
  {
    xpc_release(v3);
  }

  if ([(WCM_BTControllerIOS *)self queue])
  {
    dispatch_release([(WCM_BTControllerIOS *)self queue]);
  }

  [(WCM_BTControllerIOS *)self setQueue:0];
  v4.receiver = self;
  v4.super_class = WCM_BTControllerIOS;
  [(WCM_BTController *)&v4 dealloc];
}

- (void)handleDisconnection:(id)a3
{
  [WCM_Logging logLevel:2 message:@"BTControllerIOS handleDisconnection"];

  [(WCM_BTControllerIOS *)self handlePowerState:0];
}

- (void)handleMessage:(id)a3
{
  uint64 = xpc_dictionary_get_uint64(a3, "kMessageId");
  switch(uint64)
  {
    case 0x1F5uLL:

      [(WCM_BTController *)self handleAudioConfig:a3];
      break;
    case 0x1F6uLL:

      [(WCM_BTControllerIOS *)self handleScanStart:a3];
      break;
    case 0x1F7uLL:

      [(WCM_BTControllerIOS *)self handleScanStop:a3];
      break;
    case 0x1F8uLL:

      [(WCM_BTControllerIOS *)self handleLinkQaulity:a3];
      break;
    case 0x1F9uLL:

      [(WCM_BTControllerIOS *)self handleLTELinkQuality:a3];
      break;
    case 0x1FAuLL:

      [(WCM_BTController *)self handleLocalDeviceState:a3];
      break;
    case 0x1FBuLL:

      [(WCM_BTControllerIOS *)self handelAFHMap:a3];
      break;
    case 0x1FCuLL:

      [(WCM_BTControllerIOS *)self handleRawRSSI:a3];
      break;
    case 0x1FDuLL:
    case 0x202uLL:
    case 0x203uLL:
    case 0x204uLL:
      goto LABEL_10;
    case 0x1FEuLL:

      [(WCM_BTControllerIOS *)self handleAntennaPreferenceBResponse:a3];
      break;
    case 0x1FFuLL:

      [(WCM_BTControllerIOS *)self handleAntennaSwitchNotification:a3];
      break;
    case 0x200uLL:

      [(WCM_BTControllerIOS *)self handleBTMetricsRpt:a3];
      break;
    case 0x201uLL:

      [(WCM_BTControllerIOS *)self handleBTPhyRpt:a3];
      break;
    case 0x205uLL:

      [(WCM_BTControllerIOS *)self handleHFBTChannelMap:a3];
      break;
    case 0x206uLL:

      [(WCM_BTControllerIOS *)self handleLeDiscoveryScanStateChange:a3];
      break;
    case 0x207uLL:

      [(WCM_BTController *)self handleLeAdvePaState:a3];
      break;
    default:
      if (uint64 == 108)
      {

        [(WCM_BTControllerIOS *)self handleLeConn:a3];
      }

      else if (uint64 == 1406)
      {

        [(WCM_BTControllerIOS *)self handleBTBandwidthLoad:a3];
      }

      else
      {
LABEL_10:
        [WCM_Logging logLevel:0 message:@"BT controller dropping message-id %lld", uint64];
      }

      break;
  }
}

- (int)getBTRole
{
  v3 = [(NSMutableArray *)[(WCM_BTController *)self btConnections] count];
  if (v3)
  {
    if (v3 == 1)
    {
      LODWORD(v4) = [-[NSMutableArray objectAtIndexedSubscript:](-[WCM_BTController btConnections](self "btConnections")] != 2;
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v5 = [(WCM_BTController *)self btConnections];
      v4 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        v6 = v4;
        v7 = *v11;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(v5);
            }

            if ([*(*(&v10 + 1) + 8 * i) getRole] != 2)
            {
              LODWORD(v4) = 2;
              return v4;
            }
          }

          v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
          LODWORD(v4) = 0;
          if (v6)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  else
  {
    LODWORD(v4) = 3;
  }

  return v4;
}

- (void)updateWCI2Mode:(BOOL)a3
{
  if (LOBYTE(self->mKeepWake) != a3)
  {
    v3 = a3;
    LOBYTE(self->mKeepWake) = a3;
    v5 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    if (v3)
    {
      v6 = v5;
      v7 = [v5 wcmBTWCI2ModeSendMsgBitmap];
      v8 = [v6 wcmBTWCI2ModeRecvMsgBitmap];
    }

    else
    {
      v8 = 128;
      v7 = 2;
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    [WCM_Logging logLevel:3 message:@"ConfigureWCI2 mode : RX=%lld, TX=%lld", v8, v7];
    if (v9)
    {
      xpc_dictionary_set_uint64(v9, "kWCMBTSetWCI2Mode_ReceiveMessage", v8);
      xpc_dictionary_set_uint64(v9, "kWCMBTSetWCI2Mode_SendMessage", v7);
      [(WCM_Controller *)self sendMessage:1413 withArgs:v9];

      xpc_release(v9);
    }
  }
}

- (void)updateMWSSignalingConfig
{
  v12 = *off_100240200;
  v13 = *off_100240210;
  *keys = *off_1002401B0;
  v8 = *off_1002401C0;
  v9 = *off_1002401D0;
  v14 = "kWCMBTSetMWSSignaling_MWSPriorityAssertOffsetRequest";
  v10 = *off_1002401E0;
  v11 = *off_1002401F0;
  v3 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  values[0] = xpc_int64_create([v3 wcmWCI2MWSRxAssertOffset]);
  values[1] = xpc_uint64_create([v3 wcmWCI2MWSRxAssertJitter]);
  values[2] = xpc_int64_create([v3 wcmWCI2MWSRxDeAssertOffset]);
  values[3] = xpc_uint64_create([v3 wcmWCI2MWSRxDeAssertJitter]);
  values[4] = xpc_int64_create([v3 wcmWCI2MWSTxAssertOffset]);
  values[5] = xpc_uint64_create([v3 wcmWCI2MWSTxAssertJitter]);
  values[6] = xpc_int64_create([v3 wcmWCI2MWSTxDeAssertOffset]);
  values[7] = xpc_uint64_create([v3 wcmWCI2MWSTxDeAssertJitter]);
  values[8] = xpc_int64_create([v3 wcmWCI2MWSPatternAssertOffset]);
  values[9] = xpc_uint64_create([v3 wcmWCI2MWSPatternAssertJitter]);
  values[10] = xpc_int64_create([v3 wcmWCI2MWSInactivityAssertOffset]);
  values[11] = xpc_uint64_create([v3 wcmWCI2MWSInactivityAssertJitter]);
  values[12] = xpc_int64_create([v3 wcmWCI2MWSScanFrequencyAssertOffset]);
  values[13] = xpc_uint64_create([v3 wcmWCI2MWSScanFrequencyAssertJitter]);
  values[14] = xpc_uint64_create([v3 wcmWCI2MWSPriorityAssertOffsetRequest]);
  v4 = xpc_dictionary_create(keys, values, 0xFuLL);
  for (i = 0; i != 15; ++i)
  {
    xpc_release(values[i]);
  }

  [(WCM_Controller *)self sendMessage:1412 withArgs:v4];
  xpc_release(v4);
}

- (void)updateMWSChannelParameters:(id)a3
{
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    return;
  }

  if (a3)
  {
    v5 = &self->mRoleRequested + 1;
    v6 = BYTE1(self->mRoleRequested);
    v7 = 1;
LABEL_6:
    if (v7 == v6 && ([a3 cachedULCenterFreq], v8 == *&self->mDefaultAntenna) && (objc_msgSend(a3, "cachedULBandwidth"), v9 == *(&self->mMWSDlCenterFreq + 4)) && (objc_msgSend(a3, "dlCenterFreq"), v10 == *(&self->mMWSUlCenterFreq + 4)) && (objc_msgSend(a3, "dlBandwidth"), v11 == *(&self->mMWSUlBandwidth + 4)) && BYTE2(self->mRoleRequested) == objc_msgSend(a3, "tddBand"))
    {
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"Same MWS Enabled - NOT updating. cellular.tddBand=%d, mWSTDDBand=%d", [a3 tddBand], BYTE2(self->mRoleRequested));
    }

    else
    {
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"MWS needs Enabling - Something Changed. cellular.tddBand=%d, mWSTDDBand=%d", [a3 tddBand], BYTE2(self->mRoleRequested));
      [a3 cachedULCenterFreq];
      *&self->mDefaultAntenna = v12;
      [a3 cachedULBandwidth];
      *(&self->mMWSDlCenterFreq + 4) = v13;
      [a3 dlCenterFreq];
      *(&self->mMWSUlCenterFreq + 4) = v14;
      [a3 dlBandwidth];
      *(&self->mMWSUlBandwidth + 4) = v15;
      BYTE2(self->mRoleRequested) = [a3 tddBand];
      *v5 = a3 != 0;
      v16 = [(WCM_BTControllerIOS *)self createChannelParameters:a3];

      [(WCM_Controller *)self sendMessage:1410 withArgs:v16];
    }

    return;
  }

  [WCM_Logging logLevel:4 message:@"ZeroFreqDebug: CellController is Null in updateMWSChannelParameters."];
  *(&self->mMWSUlBandwidth + 4) = 0.0;
  *(&self->mMWSDlCenterFreq + 4) = 0.0;
  *(&self->mMWSUlCenterFreq + 4) = 0.0;
  *&self->mDefaultAntenna = 0;
  v5 = &self->mRoleRequested + 1;
  if ((self->mRoleRequested & 0x100) != 0)
  {
    v7 = 0;
    v6 = 1;
    goto LABEL_6;
  }

  [WCM_Logging logLevel:4 message:@"MWS already disabled"];
}

- (void)updateMWSFrameConfig:(id)a3
{
  if (!a3)
  {
    return;
  }

  v4 = [(WCM_BTControllerIOS *)self createBTHCIExternalFrameConfigParams:?];
  v5 = *(&self->mMWSDlBandwidth + 4);
  if (v5)
  {
    if (xpc_equal(v5, v4))
    {

      [WCM_Logging logLevel:4 message:@"Same FrameConfig - NOT Updtaing"];
      return;
    }

    v6 = *(&self->mMWSDlBandwidth + 4);
    if (v6)
    {
      xpc_release(v6);
    }
  }

  *(&self->mMWSDlBandwidth + 4) = xpc_copy(v4);
  [WCM_Logging logLevel:4 message:@"Updating FrameConfig"];
  v7 = *(&self->mMWSDlBandwidth + 4);

  [(WCM_Controller *)self sendMessage:1411 withArgs:v7];
}

- (void)updateBLEActiveScanPwrLmtAssertionInterval:(unint64_t)a3
{
  v5 = xpc_uint64_create(a3);
  [WCM_Logging logLevel:4 message:@"DLDebug_ Configuring BLE Active Scan Power Limiting (Type6 MSG) Assertion Interval as %llu", a3];
  [(WCM_Controller *)self sendMessage:1427 withArgs:v5];

  xpc_release(v5);
}

- (void)updateHPCellularCoexMode:(BOOL)a3
{
  v3 = a3;
  v5 = xpc_BOOL_create(a3);
  if (v3)
  {
    [WCM_Logging logLevel:4 message:@"HPCellular_ To disable BT due to HPCellularCoexMode %d", 1];
    v6 = 1445;
  }

  else
  {
    [WCM_Logging logLevel:4 message:@"HPCellular_ To enable BT due to HPCellularCoexMode %d", 0];
    v6 = 1444;
  }

  [(WCM_Controller *)self sendMessage:v6 withArgs:v5];

  xpc_release(v5);
}

- (void)updatePreferredAFHMap:(id)a3
{
  [a3 getBytes:&bytes length:10];
  v5 = bytes == *(&self->mRoleRequested + 3) && v37 == *&self->mCurrentAFHMap[4];
  v6 = WRM_IPTelephonyController;
  if (v5)
  {
    [WCM_Logging logLevel:4 message:@"AFH already set to %@", a3];
  }

  else
  {
    [(WCM_BTControllerIOS *)self printAFHMap:&self->mRoleRequested + 3];
    [WCM_Logging logLevel:2 message:@"AFH needs update to %@", a3];
    [(WCM_BTControllerIOS *)self printAFHMap:&bytes];
    *(&self->mRoleRequested + 3) = bytes;
    *&self->mCurrentAFHMap[4] = v37;
    v7 = xpc_data_create(&bytes, 0xAuLL);
    [(WCM_Controller *)self sendMessage:1408 withArgs:v7];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    xpc_release(v7);
  }

  v8 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  if (a3 && v8)
  {
    v31 = self;
    for (i = 0; i != 10; ++i)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        if ((*(&bytes + i) >> v10))
        {
          v11 |= 0x80u >> v10;
        }

        else
        {
          v11 &= ~(0x80u >> v10);
        }

        ++v10;
      }

      while (v10 != 8);
      v35[i] = v11;
      [WCM_Logging logLevel:4 message:@"DLDebugBLE_ coexBTAFHMap_BitAscend[%ld] = %d", i, v11];
    }

    v12 = CFBitVectorCreate(kCFAllocatorDefault, v35, 80);
    Mutable = CFBitVectorCreateMutable(kCFAllocatorDefault, 40);
    CFBitVectorSetCount(Mutable, 40);
    v14 = 1;
    CFBitVectorSetAllBits(Mutable, 1u);
    MutableCopy = CFBitVectorCreateMutableCopy(kCFAllocatorDefault, 40, Mutable);
    v16 = 3;
    do
    {
      v17 = CFBitVectorGetBitAtIndex(v12, v16 - 2) && CFBitVectorGetBitAtIndex(v12, v16 - 1) && CFBitVectorGetBitAtIndex(v12, v16) != 0;
      CFBitVectorSetBitAtIndex(Mutable, v14++, v17);
      v16 += 2;
    }

    while (v14 != 40);
    for (j = 0; j != 11; ++j)
    {
      BitAtIndex = CFBitVectorGetBitAtIndex(Mutable, j + 1);
      CFBitVectorSetBitAtIndex(MutableCopy, j, BitAtIndex);
    }

    for (k = 13; k != 39; ++k)
    {
      v21 = CFBitVectorGetBitAtIndex(Mutable, k);
      CFBitVectorSetBitAtIndex(MutableCopy, k - 2, v21);
    }

    for (m = 37; m != 40; ++m)
    {
      CFBitVectorSetBitAtIndex(MutableCopy, m, 1u);
    }

    v38.location = 0;
    v38.length = 40;
    CFBitVectorGetBits(MutableCopy, v38, v32);
    for (n = 0; n != 5; ++n)
    {
      v24 = v6;
      v25 = v32[n];
      v26 = v24;
      [&v24[98] logLevel:4 message:{@"DLDebugBLE_ coexBTAFHMap[%ld] = %d", n, v32[n]}];
      for (ii = 0; ii != 8; ++ii)
      {
        if ((v25 >> ii))
        {
          v11 |= 0x80u >> ii;
        }

        else
        {
          v11 &= ~(0x80u >> ii);
        }
      }

      *(&v33 + n) = v11;
      v6 = v26;
      [&v26[98] logLevel:4 message:{@"DLDebugBLE_ coexBTAFHMap_BitAscend[%ld] = %d", n, v11}];
    }

    v28 = [NSData dataWithBytes:&v33 length:5];
    if (v33 == *&v31->mCurrentAFHMap[6] && v34 == v31->mCurrentBLEAFHMap[0])
    {
      [&v26[98] logLevel:4 message:{@"DLDebug_ BLE AFH already set to %@", v28}];
    }

    else
    {
      [(WCM_BTControllerIOS *)v31 printBLEAFHMap:&v31->mCurrentAFHMap[6]];
      [&v26[98] logLevel:2 message:{@"DLDebug_ BLE AFH newBLEMap_BitVector needs update to %@", v28}];
      [(WCM_BTControllerIOS *)v31 printBLEAFHMap:&v33];
      *&v31->mCurrentAFHMap[6] = v33;
      v31->mCurrentBLEAFHMap[0] = v34;
      v30 = xpc_data_create(&v33, 5uLL);
      [&v6[98] logLevel:2 message:@"DLDebug_ Sending XPC Message for coexBLEAFHMap"];
      [(WCM_Controller *)v31 sendMessage:1425 withArgs:v30];
      xpc_release(v30);
    }

    CFRelease(v12);
    CFRelease(Mutable);
    CFRelease(MutableCopy);
  }
}

- (void)updatePreferredHFBTChannelMap:(id)a3
{
  [WCM_Logging logLevel:2 message:@"HFAFHDebug_ channel map update to %@", a3];
  v5 = [a3 bytes];
  if (!memcmp(v5, &self->mCurrentBLEAFHMap[1], 0x60uLL))
  {

    [WCM_Logging logLevel:4 message:@"HFAFHDebug_ Channel map already set to the same"];
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"HFAFHDebug_ Channel map needs update"];
    [WCM_Logging logLevel:2 message:@"HFAFHDebug_ New channel map"];
    [(WCM_BTControllerIOS *)self printHFBTChannelMap:v5];
    v6 = v5[1];
    *&self->mCurrentBLEAFHMap[1] = *v5;
    *&self->mCurrentHFBTChannelMap[12] = v6;
    v7 = v5[2];
    v8 = v5[3];
    v9 = v5[5];
    *&self->mCurrentHFBTChannelMap[60] = v5[4];
    *&self->mCurrentHFBTChannelMap[76] = v9;
    *&self->mCurrentHFBTChannelMap[28] = v7;
    *&self->mCurrentHFBTChannelMap[44] = v8;
    v10 = xpc_data_create(v5, 0x60uLL);
    [(WCM_Controller *)self sendMessage:1432 withArgs:v10];

    xpc_release(v10);
  }
}

- (void)updateAntennaRSSIOffset
{
  if ([(WCM_BTController *)self powerState]&& (self->mRoleRequested & 1) == 0)
  {
    LOBYTE(self->mRoleRequested) = 1;
    [WCM_Logging logLevel:2 message:@"Setting BT Antenna Offsets: %@, %@", &off_10028E020, &off_1002710B8];
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v3, "kWCMBTAntennaAction", 5uLL);
    xpc_dictionary_set_uint64(v3, "kWCMBTAntennaParam1", [&off_10028E020 intValue]);
    xpc_dictionary_set_uint64(v3, "kWCMBTAntennaParam2", [&off_1002710B8 intValue]);
    [(WCM_Controller *)self sendMessage:1421 withArgs:v3];

    xpc_release(v3);
  }
}

- (void)updateMWSScanFrequencyTable:(id)a3
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v5, "kWCMBTNumScanFrequencies", [a3 count]);
  v6 = xpc_array_create(0, 0);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = xpc_uint64_create([objc_msgSend(v11 objectAtIndex:{0), "integerValue"}]);
        v13 = xpc_uint64_create([objc_msgSend(v11 objectAtIndex:{1), "integerValue"}]);
        v14 = xpc_array_create(0, 0);
        xpc_array_append_value(v14, v12);
        xpc_array_append_value(v14, v13);
        xpc_array_append_value(v6, v14);
        xpc_release(v12);
        xpc_release(v13);
        xpc_release(v14);
      }

      v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  xpc_dictionary_set_value(v5, "kWCMBTScanFrequencies", v6);
  xpc_release(v6);
  [WCM_Logging logLevel:2 message:@"Setting BT MWS Scan Freq Table"];
  [(WCM_Controller *)self sendMessage:1422 withArgs:v5];
  xpc_release(v5);
}

- (void)updateCoexRxGainMode:(id)a3
{
  v5 = self->mCurrentHFBTChannelMap[92];
  if (v5 == [a3 BOOLValue])
  {
    [WCM_Logging logLevel:2 message:@"BT Agc Rx Coex Gain Mode already set to %d", self->mCurrentHFBTChannelMap[92]];
  }

  else
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kWCMBTCoexRxGainModeEnable", [a3 intValue]);
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"Setting BT Agc Rx Coex Gain Mode %d", [a3 intValue]);
    self->mCurrentHFBTChannelMap[92] = [a3 BOOLValue];
    [(WCM_Controller *)self sendMessage:1424 withArgs:v6];

    xpc_release(v6);
  }
}

- (void)updateBTRCU2TimingArray:(id)a3
{
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v5)
  {
    v6 = v5;
    xpc_dictionary_set_BOOL(v5, "kWCMBTRC2GrantEnable", [objc_msgSend(a3 objectAtIndex:{0), "BOOLValue"}]);
    xpc_dictionary_set_uint64(v6, "kWCMBTRC2TimingT3", [objc_msgSend(a3 objectAtIndex:{1), "unsignedIntValue"}]);
    xpc_dictionary_set_uint64(v6, "kWCMBTRC2TimingT4", [objc_msgSend(a3 objectAtIndex:{2), "unsignedIntValue"}]);
    [(WCM_Controller *)self sendMessage:1428 withArgs:v6];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"Sent message to BT: RC2 grant En:%d T3:%d T4:%d", [objc_msgSend(a3 objectAtIndex:{0), "BOOLValue"}], objc_msgSend(objc_msgSend(a3, "objectAtIndex:", 1), "unsignedIntValue"), objc_msgSend(objc_msgSend(a3, "objectAtIndex:", 2), "unsignedIntValue"));

    xpc_release(v6);
  }

  else
  {

    [WCM_Logging logLevel:2 message:@"Failed to send message to BT RC2 grant request message XPC failed (state)"];
  }
}

- (void)updateWiFiCriticalEnabled:(BOOL)a3
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v5, "kWCMAirplayCritical", a3);
  [(WCM_Controller *)self sendMessage:106 withArgs:v5];

  xpc_release(v5);
}

- (void)updateWiFiCatsState:(unsigned __int8)a3 bitmap:(unint64_t)a4 band:(int)a5 desiredBtDc:(int)a6
{
  v9 = a3;
  v11 = xpc_dictionary_create(0, 0, 0);
  v12 = xpc_uint64_create(v9);
  xpc_dictionary_set_value(v11, "kWCMBTWiFiState_Priority", v12);
  xpc_release(v12);
  v13 = xpc_uint64_create(a4);
  xpc_dictionary_set_value(v11, "kWCMWiFiState_Bitmap", v13);
  xpc_release(v13);
  v14 = xpc_uint64_create(a5);
  xpc_dictionary_set_value(v11, "kWCMWiFiState_Band", v14);
  xpc_release(v14);
  v15 = xpc_uint64_create(a6);
  xpc_dictionary_set_value(v11, "kWCMWiFiState_DesiredBtDc", v15);
  xpc_release(v15);
  [(WCM_Controller *)self sendMessage:107 withArgs:v11];

  xpc_release(v11);
}

- (void)bspUpdateWiFiStatus:(BOOL)a3
{
  v3 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v5)
  {
    v6 = v5;
    v7 = xpc_uint64_create(1uLL);
    xpc_dictionary_set_value(v6, "BSP_CommandType", v7);
    xpc_release(v7);
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      v9 = v8;
      v10 = xpc_uint64_create(v3);
      xpc_dictionary_set_value(v9, "BSP_PowerState", v10);
      xpc_release(v10);
      xpc_dictionary_set_value(v6, "BSP_CommandParams", v9);
      xpc_release(v9);
    }

    [(WCM_Controller *)self sendMessage:1431 withArgs:v6];

    xpc_release(v6);
  }
}

- (void)bspSetFrequencyBandToUse:(int)a3 allowedBands:(int)a4
{
  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7)
  {
    v8 = v7;
    v9 = xpc_uint64_create(2uLL);
    xpc_dictionary_set_value(v8, "BSP_CommandType", v9);
    xpc_release(v9);
    v10 = xpc_dictionary_create(0, 0, 0);
    if (v10)
    {
      v11 = v10;
      v12 = xpc_uint64_create(a3);
      xpc_dictionary_set_value(v11, "BSP_FrequencyBand", v12);
      xpc_release(v12);
      v13 = xpc_uint64_create(a4);
      xpc_dictionary_set_value(v11, "BSP_AllowedBands", v13);
      xpc_release(v13);
      xpc_dictionary_set_value(v8, "BSP_CommandParams", v11);
      xpc_release(v11);
    }

    [(WCM_Controller *)self sendMessage:1431 withArgs:v8];

    xpc_release(v8);
  }
}

- (void)bspNotifyChannelQuality:(int)a3 quality:(unint64_t)a4
{
  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7)
  {
    v8 = v7;
    v9 = xpc_uint64_create(3uLL);
    xpc_dictionary_set_value(v8, "BSP_CommandType", v9);
    xpc_release(v9);
    v10 = xpc_dictionary_create(0, 0, 0);
    if (v10)
    {
      v11 = v10;
      v12 = xpc_uint64_create(a3);
      xpc_dictionary_set_value(v11, "BSP_FrequencyBand", v12);
      xpc_release(v12);
      v13 = xpc_uint64_create(a4);
      xpc_dictionary_set_value(v11, "BSP_ChannelQuality", v13);
      xpc_release(v13);
      xpc_dictionary_set_value(v8, "BSP_CommandParams", v11);
      xpc_release(v11);
    }

    [(WCM_Controller *)self sendMessage:1431 withArgs:v8];

    xpc_release(v8);
  }
}

- (void)bspStatusRequest
{
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3)
  {
    v4 = v3;
    v5 = xpc_uint64_create(5uLL);
    xpc_dictionary_set_value(v4, "BSP_CommandType", v5);
    xpc_release(v5);
    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6)
    {
      v7 = v6;
      v8 = xpc_uint64_create(0);
      xpc_dictionary_set_value(v7, "dummy", v8);
      xpc_release(v8);
      xpc_dictionary_set_value(v4, "BSP_CommandParams", v7);
      xpc_release(v7);
    }

    [(WCM_Controller *)self sendMessage:1431 withArgs:v4];

    xpc_release(v4);
  }
}

- (void)bspBandSwitchReject:(int)a3 targetBand:(int)a4
{
  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7)
  {
    v8 = v7;
    v9 = xpc_uint64_create(6uLL);
    xpc_dictionary_set_value(v8, "BSP_CommandType", v9);
    xpc_release(v9);
    v10 = xpc_dictionary_create(0, 0, 0);
    if (v10)
    {
      v11 = v10;
      v12 = xpc_uint64_create(a3);
      xpc_dictionary_set_value(v11, "BSP_ReasonCode", v12);
      xpc_release(v12);
      v13 = xpc_uint64_create(a4);
      xpc_dictionary_set_value(v11, "BSP_TargetBand", v13);
      xpc_release(v13);
      xpc_dictionary_set_value(v8, "BSP_CommandParams", v11);
      xpc_release(v11);
    }

    [(WCM_Controller *)self sendMessage:1431 withArgs:v8];

    xpc_release(v8);
  }
}

- (void)bspRegulatoryInfoRequest:(id)a3 timeStamp:(int64_t)a4
{
  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7)
  {
    v8 = v7;
    v9 = xpc_uint64_create(7uLL);
    xpc_dictionary_set_value(v8, "BSP_CommandType", v9);
    xpc_release(v9);
    v10 = xpc_dictionary_create(0, 0, 0);
    if (v10)
    {
      v11 = v10;
      xpc_dictionary_set_string(v10, "BSP_CountryCode", [a3 UTF8String]);
      xpc_dictionary_set_int64(v11, "BSP_CountryCodeTimeStamp", a4);
      xpc_dictionary_set_value(v8, "BSP_CommandParams", v11);
      xpc_release(v11);
    }

    [(WCM_Controller *)self sendMessage:1431 withArgs:v8];

    xpc_release(v8);
  }
}

- (void)handleLeConn:(id)a3
{
  [WCM_Logging logLevel:2 message:@"Received LeConn msg: %@", a3];
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value)
  {
    v6 = value;
    *&self->mDiversityAFHMapForC1B1[11] = xpc_dictionary_get_uint64(value, "kWCMBTLeConnect_DC");
    *(&self->mLeConnDutyCycle + 4) = xpc_dictionary_get_uint64(v6, "kWCMBTLeConnect_OverrideReason");
    *(&self->mLeConnReason + 4) = xpc_dictionary_get_uint64(v6, "kWCMBTLeConnect_Band");
    *(&self->mLeConnBand + 4) = xpc_dictionary_get_uint64(v6, "kWCMBTLeConnect_Duration");
    v7 = +[WCM_PolicyManager singleton];

    [v7 updateControllerState:108];
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"Error Getting Args"];
  }
}

- (void)handleLeDiscoveryScanStateChange:(id)a3
{
  [WCM_Logging logLevel:2 message:@"Received LeScanStateChange msg"];
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value)
  {
    v6 = value;
    *(&self->mLeConnDuration + 4) = xpc_dictionary_get_int64(value, "kWCMBTLeDiscoveryScan_State");
    *(&self->mLeDiscoveryScanState + 4) = xpc_dictionary_get_int64(v6, "kWCMBTLeDiscoveryScan_UseCase");
    if (qword_1002B78E8 != *(&self->mLeConnDuration + 4))
    {
      [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
      qword_1002B78E8 = *(&self->mLeConnDuration + 4);
    }
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"Error Getting Args"];
  }
}

- (void)handleBTBandwidthLoad:(id)a3
{
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kWCMBTWirelessLoadValue");
  v5 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];

  [v5 setWirelessLoad:uint64];
}

- (void)handleLTELinkQuality:(id)a3
{
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kWCMBTLTELinkQuality_Type");
  v5 = xpc_dictionary_get_value(value, "kWCMBTLTELinkQuality_ChannelMap");
  if (v5)
  {
    [WCM_Logging logLevel:5 message:@"Link Quality Type = %d, Channel Map Count = %zu", uint64, xpc_array_get_count(v5)];
    if (uint64 <= 5)
    {
      if (uint64 > 2)
      {
        if (uint64 == 3)
        {
          v6 = @" Rx Error Count - LTE Tx ACTIVE";
        }

        else if (uint64 == 4)
        {
          v6 = @" Rx Total Count - LTE Tx ACTIVE";
        }

        else
        {
          v6 = @" Rx Error Count - LTE Tx NOT-ACTIVE";
        }

        goto LABEL_26;
      }

      if (uint64 == 1)
      {
        v6 = @" Average RSSI - LTE TX ACTIVE";
        goto LABEL_26;
      }

      if (uint64 == 2)
      {
        v6 = @" Average RSSI - LTE TX NOT-ACTIVE";
        goto LABEL_26;
      }
    }

    else
    {
      if (uint64 <= 8)
      {
        if (uint64 == 6)
        {
          v6 = @" Rx Total Count - LTE Tx NOT-ACTIVE";
        }

        else if (uint64 == 7)
        {
          v6 = @"Tx Rexmit Count - LTE Tx ACTIVE";
        }

        else
        {
          v6 = @"Tx Total Count - LTE Tx ACTIVE";
        }

        goto LABEL_26;
      }

      switch(uint64)
      {
        case 9:
          v6 = @"Tx Rexmit Count - LTE Tx NOT-ACTIVE";
          goto LABEL_26;
        case 0xA:
          v6 = @"Tx Total Count - LTE Tx NOT-ACTIVE";
          goto LABEL_26;
        case 0xB:
          v6 = @" Background RSSI - LTE TX NOT-ACTIVE";
LABEL_26:
          v7 = 3;
          goto LABEL_27;
      }
    }

    [WCM_Logging logLevel:3 message:@" Invalid Link Quality Type Message %d", uint64];
    return;
  }

  v6 = @"Error getting Channel Map array";
  v7 = 0;
LABEL_27:

  [WCM_Logging logLevel:v7 message:v6];
}

- (void)resetBtMetrics
{
  [(WCM_BTControllerIOS *)self setMClassicRssi:128];
  [(WCM_BTControllerIOS *)self setMLeRssi:128];
  [(WCM_BTControllerIOS *)self setMMovingAvgRSSI:128.0];
  [(WCM_BTControllerIOS *)self setMLeSuccessfulTxCount:0];
  [(WCM_BTControllerIOS *)self setMLeSuccessfulTxCount:0];
  [(WCM_BTControllerIOS *)self setMLeReTxCount:0];
  [(WCM_BTControllerIOS *)self setMLeSuccessfulRxCount:0];
  [(WCM_BTControllerIOS *)self setMLeRxErrorCount:0];
  [(WCM_BTControllerIOS *)self setMLeCoexDenialCount:0];
  [(WCM_BTControllerIOS *)self setMClassicSuccessfulTxCount:0];
  [(WCM_BTControllerIOS *)self setMClassicReTxCount:0];
  [(WCM_BTControllerIOS *)self setMClassicSuccessfulRxCount:0];
  [(WCM_BTControllerIOS *)self setMClassicRxErrorCount:0];
  [(WCM_BTControllerIOS *)self setMClassicCoexDenialCount:0];
  [(WCM_BTControllerIOS *)self setMPrevActivePhy:0];
  [(WCM_BTControllerIOS *)self setMActivePhy:0];
  [(WCM_BTControllerIOS *)self setMActivePhyValid:0];
  [(WCM_BTControllerIOS *)self setMNonMagnetUtilization:0.0];
  [(WCM_BTControllerIOS *)self setMMetricsReportReason:0];
  [(WCM_BTControllerIOS *)self setMFlushCount:0];
  [(WCM_BTControllerIOS *)self setMBtPhyRate:0];
  [(WCM_BTControllerIOS *)self setMMovingAvgReTxCount:0];
  [(WCM_BTControllerIOS *)self setMMovingAvgRxErrorCount:0];
  [(WCM_BTControllerIOS *)self setMMovingAvgSuccessfulRxCount:0];
  [(WCM_BTControllerIOS *)self setMMovingAvgSuccessfulTxCount:0];

  [(WCM_BTControllerIOS *)self setMNumberofSamples:0];
}

- (void)handleBTMetricsRpt:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000A529C;
  v3[3] = &unk_10023DC80;
  v3[4] = a3;
  v3[5] = self;
  dispatch_async([(WCM_BTControllerIOS *)self queue], v3);
}

- (void)handleBTPhyRpt:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000A5B2C;
  v3[3] = &unk_10023DC80;
  v3[4] = a3;
  v3[5] = self;
  dispatch_async([(WCM_BTControllerIOS *)self queue], v3);
}

- (void)handelAFHMap:(id)a3
{
  [WCM_Logging logLevel:3 message:@"Received AFH Map Message %@", a3];
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (!value)
  {
    v9 = @"Error Getting Args";
LABEL_9:

    [WCM_Logging logLevel:0 message:v9];
    return;
  }

  v6 = value;
  [WCM_Logging logLevel:2 message:@"Received AFH Mode %llu", xpc_dictionary_get_uint64(value, "kWCMBTAFHMode")];
  v7 = xpc_dictionary_get_value(v6, "kWCMBTAFHBDA");
  if (!v7)
  {
    v9 = @"Invalid BDA Obj";
    goto LABEL_9;
  }

  if (xpc_data_get_bytes(v7, buffer, 0, 6uLL))
  {
    v8 = xpc_dictionary_get_value(v6, "kWCMBTAFHChannelMap");
    if (v8)
    {
      if (xpc_data_get_bytes(v8, v12, 0, 0xAuLL))
      {
        [(WCM_BTControllerIOS *)self printAFHMap:v12];
        return;
      }

      v10 = @"Error Getting afhMap";
    }

    else
    {
      v10 = @"Invalid Map Obj";
    }
  }

  else
  {
    v10 = @"Error Getting BDA";
  }

  [WCM_Logging logLevel:0 message:v10];
}

- (void)handleHFBTChannelMap:(id)a3
{
  [WCM_Logging logLevel:3 message:@"HFAFHDebug_ Received Channel Map Message %@", a3];
  length = 0;
  data = xpc_dictionary_get_data(a3, "kMessageArgs", &length);
  if (data && length > 0x5F)
  {
    for (i = 0; i != 96; ++i)
    {
      v8[i] = data[i];
    }

    [(WCM_BTControllerIOS *)self printHFBTChannelMap:v8];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"HFAFHDebug_ Error Getting Channel Map"];
  }
}

- (void)handleRawRSSI:(id)a3
{
  [WCM_Logging logLevel:3 message:@"Received RAW RSSI Message %@", a3];
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value)
  {
    v5 = value;
    [WCM_Logging logLevel:2 message:@"Received RSSI -%llu\n", 128 - (xpc_dictionary_get_uint64(value, "kWCMBTRAWRSSI") & 0x7F)];
    v6 = xpc_dictionary_get_value(v5, "kWCMBTRSSIBDA");
    if (v6)
    {
      if (xpc_data_get_bytes(v6, buffer, 0, 6uLL))
      {
        [WCM_Logging logLevel:2 message:@"RSSI BDA = %2x:%2x:%2x:%2x:%2x:%2x\n", buffer[0], buffer[1], buffer[2], buffer[3], buffer[4], buffer[5]];
      }

      else
      {
        [WCM_Logging logLevel:0 message:@"Error Getting BDA", v8, v9, v10, v11, v12, v13];
      }

      return;
    }

    v7 = @"Invalid BDA Obj";
  }

  else
  {
    v7 = @"Error Getting Args";
  }

  [WCM_Logging logLevel:0 message:v7];
}

- (void)handleAntennaPreferenceBResponse:(id)a3
{
  [WCM_Logging logLevel:4 message:@"YYDebug_ Received BT Antenna PreferenceB Response"];
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value)
  {
    v5 = value;
    uint64 = xpc_dictionary_get_uint64(value, "kWCMBTAntennaAction");
    v7 = xpc_dictionary_get_uint64(v5, "kWCMBTStatus");
    v8 = xpc_dictionary_get_uint64(v5, "kWCMBTCurrentAntenna");
    [WCM_Logging logLevel:4 message:@"YYDebug_ antennaAction(%u) status(%llu) currentAnt(%llu) previousAnt(%llu)", uint64, v7, v8, xpc_dictionary_get_uint64(v5, "kWCMBTPreviousAntenna")];
  }
}

- (void)handleAntennaSwitchNotification:(id)a3
{
  [WCM_Logging logLevel:3 message:@"Received BT Antenna Switch Notification"];
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  if (value)
  {
    v5 = value;
    uint64 = xpc_dictionary_get_uint64(value, "kWCMBTCurrentAntenna");
    [WCM_Logging logLevel:2 message:@"connectionHandle(%llu) currentAntenna(%llu)", xpc_dictionary_get_uint64(v5, "kWCMBTConnectionHandle"), uint64];
  }
}

- (void)printAFHMap:(char *)a3
{
  v4 = 0;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *v8 = 0u;
  v9 = 0u;
  do
  {
    v5 = 0;
    v6 = v8;
    do
    {
      if ((a3[v4] >> v5))
      {
        v7 = 88;
      }

      else
      {
        v7 = 46;
      }

      sprintf(v6, "  %c  ", v7);
      ++v5;
      v6 += 5;
    }

    while (v5 != 8);
    [WCM_Logging logLevel:4 message:@"AFH Map [%2d - %2d]: %s", (8 * v4), (8 * (v4 & 0xFFFFFFF)) | 7, v8];
    ++v4;
  }

  while (v4 != 10);
}

- (void)printHFBTChannelMap:(char *)a3
{
  v4 = 0;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *v8 = 0u;
  v9 = 0u;
  do
  {
    v5 = v8;
    v6 = 8;
    do
    {
      if ((a3[v4] >> --v6))
      {
        v7 = 88;
      }

      else
      {
        v7 = 46;
      }

      sprintf(v5, "  %c  ", v7);
      v5 += 5;
    }

    while (v6);
    [WCM_Logging logLevel:4 message:@"HFAFHDebug_ Map [%2d - %2d]: %s", (8 * v4), (8 * (v4 & 0xFFFFFFF)) | 7, v8];
    ++v4;
  }

  while (v4 != 96);
}

- (void)printBLEAFHMap:(char *)a3
{
  [WCM_Logging logLevel:4 message:@"DLDebug_ Printing BLE AFH Map"];
  v4 = 0;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *v8 = 0u;
  v9 = 0u;
  do
  {
    v5 = 0;
    v6 = v8;
    do
    {
      if ((a3[v4] >> v5))
      {
        v7 = 89;
      }

      else
      {
        v7 = 110;
      }

      sprintf(v6, "  %c  ", v7);
      ++v5;
      v6 += 5;
    }

    while (v5 != 8);
    [WCM_Logging logLevel:4 message:@"BLE AFH Map [%2d - %2d]: %s", (8 * v4), (8 * (v4 & 0xFFFFFFF)) | 7, v8];
    ++v4;
  }

  while (v4 != 5);
}

- (id)createBTHCIExternalFrameConfigParams:(id)a3
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = xpc_array_create(0, 0);
  v6 = xpc_array_create(0, 0);
  v7 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v8 = xpc_uint64_create(0x2710uLL);
  xpc_dictionary_set_value(v4, "kWCMBTSetMWSExternalConfig_ExtFrameDuration", v8);
  xpc_release(v8);
  v9 = xpc_int64_create([v7 wcmWCI2FrameSyncAssertOffset]);
  xpc_dictionary_set_value(v4, "kWCMBTSetMWSExternalConfig_ExtFrameSyncAssertOffset", v9);
  xpc_release(v9);
  v10 = xpc_uint64_create([v7 wcmWCI2FrameSyncAssertJitter]);
  xpc_dictionary_set_value(v4, "kWCMBTSetMWSExternalConfig_ExtFrameSyncAssertJitter", v10);
  xpc_release(v10);
  if (![a3 tddBand] || (objc_msgSend(v7, "wcmBTSupportTDDFrameConfig") & 1) == 0)
  {
    v36 = xpc_uint64_create(1uLL);
    xpc_dictionary_set_value(v4, "kWCMBTSetMWSExternalConfig_ExtNumPeriods", v36);
    xpc_release(v36);
    v37 = xpc_uint64_create(2uLL);
    xpc_array_append_value(v5, v37);
    xpc_release(v37);
    v38 = xpc_uint64_create(0x2710uLL);
    xpc_array_append_value(v6, v38);
    xpc_release(v38);
    [WCM_Logging logLevel:3 message:@"Creating MWS_ExtFrameConfig: FDD", v43, v44];
    goto LABEL_25;
  }

  v11 = [a3 tddULDLConfig];
  v12 = [a3 subframeFormat];
  v13 = [a3 dlCPConfig];
  v14 = [a3 ulCPConfig];
  if (v11 > 6 || v12 > 9)
  {
    [WCM_Logging logLevel:0 message:@"ExtFrameConfig : Invalid Config ULDL = %llu, sff = %llu", v11, v12];
    goto LABEL_25;
  }

  v15 = 0;
  v16 = 0;
  v17 = 120;
  if (!v14)
  {
    v17 = 80;
  }

  xdict = v4;
  v46 = (&unk_1001986F8 + 4 * v12 + v17);
  v47 = (&unk_1001986F8 + 40 * (v13 != 0) + 4 * v12);
  v48 = &aDsuuudsuuudsuu[10 * v11 + 1];
  do
  {
    v18 = aDsuuudsuuudsuu[10 * v11 + v15];
    v19 = xpc_uint64_create(v18 != 68);
    xpc_array_append_value(v5, v19);
    xpc_release(v19);
    v20 = 0;
    v21 = -v16;
    do
    {
      v22 = v21;
      if (9 - v15 == v20)
      {
        v28 = 9;
LABEL_21:
        v35 = xpc_uint64_create(1000 - v22);
        xpc_array_append_value(v6, v35);
        xpc_release(v35);
        v16 = 0;
        goto LABEL_22;
      }

      v23 = v48[v15 + v20++];
      v21 -= 1000;
    }

    while (v23 == v18);
    if (v23 != 83)
    {
      v28 = v15 - 1 + v20;
      goto LABEL_21;
    }

    v24 = v6;
    v25 = llroundf(*v47);
    v26 = v11;
    v27 = llroundf(*v46);
    v28 = v15 + v20;
    if (v18 == 68)
    {
      v29 = v25;
    }

    else
    {
      v29 = v27;
    }

    if (v18 == 68)
    {
      v16 = v27;
    }

    else
    {
      v16 = v25;
    }

    v30 = xpc_uint64_create((v29 - v21));
    xpc_array_append_value(v24, v30);
    xpc_release(v30);
    v31 = xpc_uint64_create(3uLL);
    xpc_array_append_value(v5, v31);
    v32 = v25 + v27;
    v11 = v26;
    xpc_release(v31);
    v33 = 1000 - v32;
    v6 = v24;
    v34 = xpc_uint64_create(v33);
    xpc_array_append_value(v24, v34);
    xpc_release(v34);
LABEL_22:
    v15 = v28 + 1;
  }

  while (v28 < 9);
  [WCM_Logging logLevel:3 message:@"Creating MWS_ExtFrameConfig: TDD with %zu Types", xpc_array_get_count(v5)];
  v4 = xdict;
LABEL_25:
  xpc_dictionary_set_value(v4, "kWCMBTSetMWSExternalConfig_ExtPeriodDuration", v6);
  xpc_dictionary_set_value(v4, "kWCMBTSetMWSExternalConfig_ExtPeriodType", v5);
  count = xpc_array_get_count(v5);
  v40 = xpc_uint64_create(count);
  xpc_dictionary_set_value(v4, "kWCMBTSetMWSExternalConfig_ExtNumPeriods", v40);
  xpc_release(v40);
  xpc_release(v6);
  xpc_release(v5);
  v41 = v4;
  return v4;
}

- (id)createChannelParameters:(id)a3
{
  *keys = *off_100240228;
  v19 = *off_100240238;
  v20 = *off_100240248;
  v16 = 0u;
  v17 = 0u;
  *values = 0u;
  if (a3)
  {
    if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
    {
      if ([a3 btClkAlgnFlag])
      {
        values[0] = xpc_uint64_create(1uLL);
        v4 = @"clkAlgnTDDFreqCheck: channelParamValue[0] is set to 1, because cellular.btClkAlgnFlag is %d";
      }

      else
      {
        values[0] = xpc_uint64_create(0);
        v4 = @"clkAlgnTDDFreqCheck: channelParamValue[0] is set to 0, because cellular.btClkAlgnFlag is %d";
      }
    }

    else
    {
      values[0] = xpc_uint64_create(1uLL);
      v4 = @"clkAlgnTDDFreqCheck: channelParamValue[0] is set to 1 with cellular.btClkAlgnFlag being %d. This is to take care of legacy devices that is not covered by the feature flag Clk_Algn_TDD_Fix";
    }

    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, v4, [a3 btClkAlgnFlag]);
    [a3 dlCenterFreq];
    values[1] = xpc_uint64_create(v7);
    [a3 cachedULCenterFreq];
    *&v16 = xpc_uint64_create(v8);
    [a3 dlBandwidth];
    *(&v16 + 1) = xpc_uint64_create(v9);
    [a3 cachedULBandwidth];
    *&v17 = xpc_uint64_create(v10);
    v6 = [a3 tddBand] ^ 1;
  }

  else
  {
    [WCM_Logging logLevel:4 message:@"ZeroFreqDebug: CellController is Null in createChannelParameters."];
    values[0] = xpc_uint64_create(0);
    values[1] = xpc_uint64_create(0);
    *&v16 = xpc_uint64_create(0);
    *(&v16 + 1) = xpc_uint64_create(0);
    v5 = xpc_uint64_create(0);
    v6 = 0;
    *&v17 = v5;
  }

  *(&v17 + 1) = xpc_uint64_create(v6);
  v11 = xpc_dictionary_create(keys, values, 6uLL);
  [WCM_Logging logLevel:3 message:@"Creating MWS_ChannelParameter: %llu", xpc_uint64_get_value(values[0])];
  for (i = 0; i != 6; ++i)
  {
    xpc_release(values[i]);
  }

  v13 = v11;
  return v11;
}

- (double)getBtRxPer
{
  v3 = [(WCM_BTControllerIOS *)self mMovingAvgRxErrorCount];
  v4 = [(WCM_BTControllerIOS *)self mMovingAvgSuccessfulRxCount];
  return v3 / (([(WCM_BTControllerIOS *)self mMovingAvgRxErrorCount]+ v4) + 0.000001);
}

- (BOOL)isBTMetricsValid
{
  v3 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  v4 = [(WCM_BTControllerIOS *)self mNumberofSamples];
  return v4 >= [v3 dataBtMovingAvgAlphaDenum];
}

@end