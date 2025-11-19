@interface WCM_WiFiCellCoexIssue
- (BOOL)wifiBtAgcCoexModeEnabledInPolicy:(double)a3 cellDlHighFreq:(double)a4 cellUlLowFreq:(double)a5 cellUlHighFreq:(double)a6 agccoexmode:(int *)a7;
- (WCM_WiFiCellCoexIssue)initWithCoexIssueConfig:(id *)a3;
- (id)HFBTAntBlkBandsForCellUlLowFreq:(double)a3 cellUlHighFreq:(double)a4;
- (id)getAllBtChannelsInBandForBtHighFreq:(double)a3 btLowFreq:(double)a4;
- (id)wiFiEnhChannelsAffectedByCellUlLowFreq:(double)a3 cellUlHighFreq:(double)a4;
- (id)wiFiEnhOclChannelsAffectedByCellUlLowFreq:(double)a3 cellUlHighFreq:(double)a4;
- (id)wifi5GHzChannelsAffectedByNR79UlLowFreq:(double)a3 cellUlHighFreq:(double)a4;
- (id)wifiChannelsAffectedByCellUlLowFreq:(double)a3 cellUlHighFreq:(double)a4 wifi5G:(BOOL)a5;
- (id)wifiChannelsIMD3ByCellDlLowFreq:(double)a3 cellDlHighFreq:(double)a4 cellUlLowFreq:(double)a5 cellUlHighFreq:(double)a6 wifi5G:(BOOL)a7;
- (id)wifiChannelsToAvoidForCellDlLowFreq:(double)a3 cellDlHighFreq:(double)a4 cellUlLowFreq:(double)a5 cellUlHighFreq:(double)a6 wifi5G:(BOOL)a7 wifiEssentialChannel:(int *)a8;
- (id)wifiChannelsToAvoidWiFiEnhForCellDlLowFreq:(double)a3 cellDlHighFreq:(double)a4 cellUlLowFreq:(double)a5 cellUlHighFreq:(double)a6;
- (id)wifiOclChannelsAffectedByCellUlLowFreq:(double)a3 cellUlHighFreq:(double)a4 isWifi5G:(BOOL)a5;
- (id)wifiPHSChannelsToBlocklistForCellDlLowFreq:(double)a3 cellDlHighFreq:(double)a4 cellUlLowFreq:(double)a5 cellUlHighFreq:(double)a6 wifi5G:(BOOL)a7 wifiEssentialChannel:(int *)a8;
- (void)cellFreqRangeWithIssueForCellDlLowFreq:(double)a3 cellDlHighFreq:(double)a4 cellUlLowFreq:(double)a5 cellUlHighFreq:(double)a6 wifiLowFreq:(double)a7 wifiHighFreq:(double)a8 cellTxIssueRange:(id *)a9 cellRxIssueRange:(id *)a10;
- (void)dealloc;
@end

@implementation WCM_WiFiCellCoexIssue

- (WCM_WiFiCellCoexIssue)initWithCoexIssueConfig:(id *)a3
{
  v27.receiver = self;
  v27.super_class = WCM_WiFiCellCoexIssue;
  v4 = [(WCM_WiFiCellCoexIssue *)&v27 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v4->_issueType = a3->var1;
  v4->_enableWifiChannelAvoidance = a3->var2;
  v4->_wifiUlAntennaBitmapOnCellLAT = a3->var3;
  v4->_wifiUlAntennaBitmapOnCellUAT = a3->var4;
  v4->_wifiDlAntennaBitmapOnCellLAT = a3->var5;
  v4->_wifiDlAntennaBitmapOnCellUAT = a3->var6;
  v4->_wifiUlAntennaBitmapOnCellAntBitmap000 = a3->var7;
  v4->_wifiUlAntennaBitmapOnCellAntBitmap001 = a3->var8;
  v4->_wifiUlAntennaBitmapOnCellAntBitmap010 = a3->var9;
  v4->_wifiUlAntennaBitmapOnCellAntBitmap011 = a3->var10;
  v4->_wifiUlAntennaBitmapOnCellAntBitmap100 = a3->var11;
  v4->_wifiUlAntennaBitmapOnCellAntBitmap101 = a3->var12;
  v4->_wifiUlAntennaBitmapOnCellAntBitmap110 = a3->var13;
  v4->_wifiUlAntennaBitmapOnCellAntBitmap111 = a3->var14;
  v4->_wifiDlAntennaBitmapOnCellAntBitmap000 = a3->var15;
  v4->_wifiDlAntennaBitmapOnCellAntBitmap001 = a3->var16;
  v4->_wifiDlAntennaBitmapOnCellAntBitmap010 = a3->var17;
  v4->_wifiDlAntennaBitmapOnCellAntBitmap011 = a3->var18;
  v4->_wifiDlAntennaBitmapOnCellAntBitmap100 = a3->var19;
  v4->_wifiDlAntennaBitmapOnCellAntBitmap101 = a3->var20;
  v4->_wifiDlAntennaBitmapOnCellAntBitmap110 = a3->var21;
  v4->_wifiDlAntennaBitmapOnCellAntBitmap111 = a3->var22;
  v4->_cellTxPowerLimit = a3->var23;
  v4->_cellFrequencyLimitForOOB = a3->var24;
  v4->_cellBandwidthLimitForOOB = a3->var25;
  v4->_cellFrequencyLimitForBTAFH = a3->var60;
  v4->_btDiversityBlocklistTypeForC0B0 = a3->var30;
  v4->_btDiversityBlocklistTypeForC0B1 = a3->var31;
  v4->_btDiversityBlocklistTypeForC1B0 = a3->var32;
  v4->_btDiversityBlocklistTypeForC1B1 = a3->var33;
  v4->_watchAntType = a3->var42;
  v4->_wifiBtAgcCoexModeEnable = a3->var43;
  v4->_ulcaPriority = a3->var44;
  v4->_ulcaPriorityCCWiFi = a3->var45;
  v4->_ulcaPriorityCCBT = a3->var46;
  v4->_btAgcCoexModeEnable = a3->var47;
  v6 = a3->var48;
  v4->_cellAntBlkEnableIdx = v6;
  v4->_isWifiConditionalMitigationRequired = v6 != 0;
  v4->_isWifiEnhBand = a3->var51;
  v4->_HFBTAntBlkBandUnii1Enabled = a3->var54;
  v4->_HFBTAntBlkBandUnii3Enabled = a3->var55;
  v4->_HFBTAntBlkBandUnii5aEnabled = a3->var56;
  v4->_HFBTAntBlkBandUnii5bEnabled = a3->var57;
  v4->_HFBTAntBlkBandUnii5cEnabled = a3->var58;
  v4->_HFBTAntBlkBandUnii5dEnabled = a3->var59;
  if ((v4->_issueType & 0xFFFFFFFE) != 0xC)
  {
    return v5;
  }

  v7 = sub_100090054(a3->var51, a3->var26, a3->var27);
  if (v7)
  {
    wifiChannelsToAvoidForCellOOB = [(NSMutableArray *)v7 copy];
    v5->_wifiChannelsToAvoidForCellOOB = wifiChannelsToAvoidForCellOOB;
  }

  else
  {
    if (a3->var26 || a3->var27)
    {
      v24 = a3;
      v11 = @"pIssueConfig(%p) has invalid WiFi channel to avoid on OOB";
LABEL_47:
      [WCM_Logging logLevel:0 message:v11, v24, var0, v26];
      goto LABEL_48;
    }

    wifiChannelsToAvoidForCellOOB = v5->_wifiChannelsToAvoidForCellOOB;
  }

  [WCM_Logging logLevel:4 message:@"initWithCoexIssueConfig: _wifiChannelsToAvoidForCellOOB: %@", wifiChannelsToAvoidForCellOOB];
  v9 = sub_100090054(a3->var51, a3->var49, a3->var50);
  if (!v9)
  {
    if (!*&a3->var49)
    {
      wifiChannelsToAvoidForOCL = v5->_wifiChannelsToAvoidForOCL;
      goto LABEL_13;
    }

    [WCM_Logging logLevel:4 message:@"initWithCoexIssueConfig pIssueConfig(%p) has invalid WiFi OCL channel [%d, %d] to avoid on OOB. Going back to use wifiChannelsToAvoidForCellOOB", a3, a3->var49, a3->var50];
    v9 = v5->_wifiChannelsToAvoidForCellOOB;
  }

  wifiChannelsToAvoidForOCL = [(NSMutableArray *)v9 copy];
  v5->_wifiChannelsToAvoidForOCL = wifiChannelsToAvoidForOCL;
LABEL_13:
  [WCM_Logging logLevel:4 message:@"initWithCoexIssueConfig: _wifiChannelsToAvoidForOCL: %@", wifiChannelsToAvoidForOCL];
  v12 = sub_100090054(a3->var51, a3->var52, a3->var53);
  if (!v12)
  {
    if (*&a3->var52)
    {
      [WCM_Logging logLevel:4 message:@"pIssueConfig(%p) has invalid WiFi PHS channel [%d, %d] to avoid on OOB. Going back to use wifiChannelsToAvoidForCellOOB", a3, a3->var52, a3->var53];
LABEL_48:

      return 0;
    }

    v12 = v5->_wifiChannelsToAvoidForCellOOB;
  }

  v13 = [(NSMutableArray *)v12 copy];
  v5->_wifiChannelsToAvoidForPHS = v13;
  [WCM_Logging logLevel:4 message:@"initWithCoexIssueConfig: _wifiChannelsToAvoidForPHS: %@", v13];
  v14 = sub_100090054(a3->var51, a3->var28, a3->var29);
  if (v14)
  {
    v5->_wifiChannelsToDoAntennaSelectionForCellOOB = [(NSMutableArray *)v14 copy];
    goto LABEL_18;
  }

  if (a3->var28 || a3->var29)
  {
    v24 = a3;
    var0 = a3->var0;
    v11 = @"pIssueConfig(%p) and pIssueConfig->_issueBand(%d) has invalid WiFi channel to do antenna selection on OOB";
    goto LABEL_47;
  }

LABEL_18:
  if (v5->_btDiversityBlocklistTypeForC0B0 != 3)
  {
    goto LABEL_23;
  }

  var34 = a3->var34;
  if (var34 > 0x4E || (var35 = a3->var35, var35 > 0x4E) || var34 > var35)
  {
    v24 = a3;
    v11 = @"pIssueConfig(%p) has invalid BT channel to avoid for C0B0";
    goto LABEL_47;
  }

  v5->_btChannelsToAvoidForC0B0 = sub_10008F890(var34, var35);
LABEL_23:
  if (v5->_btDiversityBlocklistTypeForC0B1 != 3)
  {
    goto LABEL_28;
  }

  var36 = a3->var36;
  if (var36 > 0x4E || (var37 = a3->var37, var37 > 0x4E) || var36 > var37)
  {
    v24 = a3;
    v11 = @"pIssueConfig(%p) has invalid BT channel to avoid for C0B1";
    goto LABEL_47;
  }

  v5->_btChannelsToAvoidForC0B1 = sub_10008F890(var36, var37);
LABEL_28:
  if (v5->_btDiversityBlocklistTypeForC1B0 != 3)
  {
    goto LABEL_33;
  }

  var38 = a3->var38;
  if (var38 > 0x4E || (var39 = a3->var39, var39 > 0x4E) || var38 > var39)
  {
    v24 = a3;
    v11 = @"pIssueConfig(%p) has invalid BT channel to avoid for C1B0";
    goto LABEL_47;
  }

  v5->_btChannelsToAvoidForC1B0 = sub_10008F890(var38, var39);
LABEL_33:
  if (v5->_btDiversityBlocklistTypeForC1B1 == 3)
  {
    v21 = a3->var40;
    if (v21 <= 0x4E)
    {
      var41 = a3->var41;
      if (var41 <= 0x4E && v21 <= var41)
      {
        v5->_btChannelsToAvoidForC1B1 = sub_10008F890(v21, var41);
        return v5;
      }
    }

    v24 = a3;
    v11 = @"pIssueConfig(%p) has invalid BT channel to avoid for C1B1";
    goto LABEL_47;
  }

  return v5;
}

- (void)dealloc
{
  wifiChannelsToAvoidForOCL = self->_wifiChannelsToAvoidForOCL;
  if (wifiChannelsToAvoidForOCL)
  {
  }

  wifiChannelsToAvoidForPHS = self->_wifiChannelsToAvoidForPHS;
  if (wifiChannelsToAvoidForPHS)
  {
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
  }

  v5.receiver = self;
  v5.super_class = WCM_WiFiCellCoexIssue;
  [(WCM_WiFiCellCoexIssue *)&v5 dealloc];
}

- (id)wifiChannelsAffectedByCellUlLowFreq:(double)a3 cellUlHighFreq:(double)a4 wifi5G:(BOOL)a5
{
  v5 = a5;
  if ([(WCM_WiFiCellCoexIssue *)self issueType]&& [(WCM_WiFiCellCoexIssue *)self issueType]!= 9 && ([(WCM_WiFiCellCoexIssue *)self issueType]& 0xFFFFFFFE) != 0xC)
  {
    v16 = 0;
    enableWifiChannelAvoidance = self->_enableWifiChannelAvoidance;
    goto LABEL_24;
  }

  enableWifiChannelAvoidance = self->_enableWifiChannelAvoidance;
  if (!enableWifiChannelAvoidance)
  {
    v16 = 1;
LABEL_24:
    [WCM_Logging logLevel:4 message:@"wifiChannelsAffectedByCellUlLowFreq: isWiFiVictimIssue is %d, _enableWifiChannelAvoidance is %d, Thus return empty array.", v16, enableWifiChannelAvoidance];
    return &__NSArray0__struct;
  }

  v10 = a4 - a3;
  v11 = 2402.0;
  if (v5)
  {
    v11 = 5160.0;
  }

  issueType = self->_issueType;
  if (issueType > 11)
  {
    if (issueType == 12)
    {
      if (self->_cellFrequencyLimitForOOB <= a3)
      {
        return &__NSArray0__struct;
      }
    }

    else
    {
      if (issueType != 13)
      {
        goto LABEL_26;
      }

      if (self->_cellFrequencyLimitForOOB >= a4)
      {
        return &__NSArray0__struct;
      }
    }

    if (v10 > self->_cellBandwidthLimitForOOB)
    {
      return self->_wifiChannelsToAvoidForCellOOB;
    }

    return &__NSArray0__struct;
  }

  if (!issueType)
  {
    v13 = a3 * 3.0;
    v14 = (v10 + a3) * 3.0 - a3 * 3.0;
    if (a3 * 3.0 >= v11)
    {
      v11 = a3 * 3.0;
    }

    v19 = 2482.0;
    if (v5)
    {
      v19 = 5835.0;
    }

    if (v13 + v14 < v19)
    {
      v19 = v13 + v14;
    }

    if (v11 < v19)
    {
      [WCM_Logging logLevel:4 message:@"3 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&a3, *&a4, a3 * 3.0, v13 + v14];
      goto LABEL_36;
    }

    return &__NSArray0__struct;
  }

  if (issueType != 9)
  {
LABEL_26:
    if (issueType == 999)
    {
      v18 = "NO_ISSUE_TYPE";
    }

    else if (issueType <= 0xE)
    {
      v18 = off_10023FE88[issueType];
    }

    else
    {
      v18 = "<ISSUE_TYPE_INVALID>";
    }

    [WCM_Logging logLevel:0 message:@"%s is not considered for WiFi channels to enable WCI2", v18, v20];
    return &__NSArray0__struct;
  }

  v13 = a3 + a3;
  v14 = v10 + a3 + v10 + a3 - (a3 + a3);
  if (a3 + a3 >= v11)
  {
    v11 = a3 + a3;
  }

  v15 = 2482.0;
  if (v5)
  {
    v15 = 5835.0;
  }

  if (v13 + v14 < v15)
  {
    v15 = v13 + v14;
  }

  if (v11 >= v15)
  {
    return &__NSArray0__struct;
  }

  [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&a3, *&a4, a3 + a3, v13 + v14];
LABEL_36:

  return sub_10000B5B4(0, v13, v14);
}

- (id)wiFiEnhChannelsAffectedByCellUlLowFreq:(double)a3 cellUlHighFreq:(double)a4
{
  [WCM_Logging logLevel:4 message:@"WiFiEnhBitmap_ wiFiEnhChannelsAffectedByCellUlLowFreq gets called and self.issueType is %d", [(WCM_WiFiCellCoexIssue *)self issueType]];
  if ([(WCM_WiFiCellCoexIssue *)self issueType]&& [(WCM_WiFiCellCoexIssue *)self issueType]!= 9 && ([(WCM_WiFiCellCoexIssue *)self issueType]& 0xFFFFFFFE) != 0xC)
  {
    v13 = 0;
    enableWifiChannelAvoidance = self->_enableWifiChannelAvoidance;
    goto LABEL_19;
  }

  enableWifiChannelAvoidance = self->_enableWifiChannelAvoidance;
  if (!enableWifiChannelAvoidance)
  {
    v13 = 1;
LABEL_19:
    [WCM_Logging logLevel:4 message:@"WiFiEnhBitmap_ isWiFiVictimIssue is %d, _enableWifiChannelAvoidance is %d, Thus return empty array.", v13, enableWifiChannelAvoidance];
    return &__NSArray0__struct;
  }

  v8 = a4 - a3;
  issueType = self->_issueType;
  if (issueType > 11)
  {
    if (issueType == 12)
    {
      if (self->_cellFrequencyLimitForOOB <= a3)
      {
        return &__NSArray0__struct;
      }
    }

    else
    {
      if (issueType != 13)
      {
        goto LABEL_21;
      }

      if (self->_cellFrequencyLimitForOOB >= a4)
      {
        return &__NSArray0__struct;
      }
    }

    if (v8 > self->_cellBandwidthLimitForOOB)
    {
      return self->_wifiChannelsToAvoidForCellOOB;
    }

    return &__NSArray0__struct;
  }

  if (!issueType)
  {
    v10 = a3 * 3.0;
    v11 = (v8 + a3) * 3.0 - a3 * 3.0;
    if (a3 * 3.0 >= 5945.0)
    {
      v16 = a3 * 3.0;
    }

    else
    {
      v16 = 5945.0;
    }

    if (v16 < fmin(v10 + v11, 7125.0))
    {
      [WCM_Logging logLevel:4 message:@"WiFiEnhBitmap_: 3 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&a3, *&a4, a3 * 3.0, v10 + v11];
      goto LABEL_28;
    }

    return &__NSArray0__struct;
  }

  if (issueType != 9)
  {
LABEL_21:
    if (issueType == 999)
    {
      v15 = "NO_ISSUE_TYPE";
    }

    else if (issueType <= 0xE)
    {
      v15 = off_10023FE88[issueType];
    }

    else
    {
      v15 = "<ISSUE_TYPE_INVALID>";
    }

    [WCM_Logging logLevel:0 message:@"WiFiEnhBitmap_: %s is not considered for WiFi channels to enable WCI2", v15, v17];
    return &__NSArray0__struct;
  }

  v10 = a3 + a3;
  v11 = v8 + a3 + v8 + a3 - (a3 + a3);
  if (a3 + a3 >= 5945.0)
  {
    v12 = a3 + a3;
  }

  else
  {
    v12 = 5945.0;
  }

  if (v12 >= fmin(v10 + v11, 7125.0))
  {
    return &__NSArray0__struct;
  }

  [WCM_Logging logLevel:4 message:@"WiFiEnhBitmap_: 2 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&a3, *&a4, a3 + a3, v10 + v11];
LABEL_28:

  return sub_10008F480(v10, v11);
}

- (id)wifiOclChannelsAffectedByCellUlLowFreq:(double)a3 cellUlHighFreq:(double)a4 isWifi5G:(BOOL)a5
{
  v5 = a5;
  [WCM_Logging logLevel:4 message:@"V2BtimapDebug_ wifiOclChannelsAffectedByCellUlLowFreq gets called and self.issueType is %d", [(WCM_WiFiCellCoexIssue *)self issueType]];
  if ([(WCM_WiFiCellCoexIssue *)self issueType]&& [(WCM_WiFiCellCoexIssue *)self issueType]!= 9 && ([(WCM_WiFiCellCoexIssue *)self issueType]& 0xFFFFFFFE) != 0xC)
  {
    v16 = 0;
    enableWifiChannelAvoidance = self->_enableWifiChannelAvoidance;
    goto LABEL_24;
  }

  enableWifiChannelAvoidance = self->_enableWifiChannelAvoidance;
  if (!enableWifiChannelAvoidance)
  {
    v16 = 1;
LABEL_24:
    [WCM_Logging logLevel:4 message:@"V2BtimapDebug_ isWiFiVictimIssue is %d, _enableWifiChannelAvoidance is %d, Thus return empty array.", v16, enableWifiChannelAvoidance];
    return &__NSArray0__struct;
  }

  v10 = a4 - a3;
  v11 = 2402.0;
  if (v5)
  {
    v11 = 5160.0;
  }

  issueType = self->_issueType;
  if (issueType > 11)
  {
    if (issueType == 12)
    {
      if (self->_cellFrequencyLimitForOOB <= a3)
      {
        return &__NSArray0__struct;
      }
    }

    else
    {
      if (issueType != 13)
      {
        goto LABEL_26;
      }

      if (self->_cellFrequencyLimitForOOB >= a4)
      {
        return &__NSArray0__struct;
      }
    }

    if (v10 > self->_cellBandwidthLimitForOOB)
    {
      return self->_wifiChannelsToAvoidForOCL;
    }

    return &__NSArray0__struct;
  }

  if (!issueType)
  {
    v13 = a3 * 3.0;
    v14 = (v10 + a3) * 3.0 - a3 * 3.0;
    if (a3 * 3.0 >= v11)
    {
      v11 = a3 * 3.0;
    }

    v19 = 2482.0;
    if (v5)
    {
      v19 = 5835.0;
    }

    if (v13 + v14 < v19)
    {
      v19 = v13 + v14;
    }

    if (v11 < v19)
    {
      [WCM_Logging logLevel:4 message:@"3 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&a3, *&a4, a3 * 3.0, v13 + v14];
      goto LABEL_36;
    }

    return &__NSArray0__struct;
  }

  if (issueType != 9)
  {
LABEL_26:
    if (issueType == 999)
    {
      v18 = "NO_ISSUE_TYPE";
    }

    else if (issueType <= 0xE)
    {
      v18 = off_10023FE88[issueType];
    }

    else
    {
      v18 = "<ISSUE_TYPE_INVALID>";
    }

    [WCM_Logging logLevel:0 message:@"%s is not considered for WiFi channels to enable WCI2", v18, v20];
    return &__NSArray0__struct;
  }

  v13 = a3 + a3;
  v14 = v10 + a3 + v10 + a3 - (a3 + a3);
  if (a3 + a3 >= v11)
  {
    v11 = a3 + a3;
  }

  v15 = 2482.0;
  if (v5)
  {
    v15 = 5835.0;
  }

  if (v13 + v14 < v15)
  {
    v15 = v13 + v14;
  }

  if (v11 >= v15)
  {
    return &__NSArray0__struct;
  }

  [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&a3, *&a4, a3 + a3, v13 + v14];
LABEL_36:

  return sub_10000B5B4(0, v13, v14);
}

- (id)wiFiEnhOclChannelsAffectedByCellUlLowFreq:(double)a3 cellUlHighFreq:(double)a4
{
  [WCM_Logging logLevel:4 message:@"WiFiEnhBitmap_ wiFiEnhChannelsAffectedByCellUlLowFreq gets called and self.issueType is %d", [(WCM_WiFiCellCoexIssue *)self issueType]];
  if ([(WCM_WiFiCellCoexIssue *)self issueType]&& [(WCM_WiFiCellCoexIssue *)self issueType]!= 9 && ([(WCM_WiFiCellCoexIssue *)self issueType]& 0xFFFFFFFE) != 0xC)
  {
    v13 = 0;
    enableWifiChannelAvoidance = self->_enableWifiChannelAvoidance;
    goto LABEL_19;
  }

  enableWifiChannelAvoidance = self->_enableWifiChannelAvoidance;
  if (!enableWifiChannelAvoidance)
  {
    v13 = 1;
LABEL_19:
    [WCM_Logging logLevel:4 message:@"WiFiEnhBitmap_ isWiFiVictimIssue is %d, _enableWifiChannelAvoidance is %d, Thus return empty array.", v13, enableWifiChannelAvoidance];
    return &__NSArray0__struct;
  }

  v8 = a4 - a3;
  issueType = self->_issueType;
  if (issueType > 11)
  {
    if (issueType == 12)
    {
      if (self->_cellFrequencyLimitForOOB <= a3)
      {
        return &__NSArray0__struct;
      }
    }

    else
    {
      if (issueType != 13)
      {
        goto LABEL_21;
      }

      if (self->_cellFrequencyLimitForOOB >= a4)
      {
        return &__NSArray0__struct;
      }
    }

    if (v8 > self->_cellBandwidthLimitForOOB)
    {
      return self->_wifiChannelsToAvoidForOCL;
    }

    return &__NSArray0__struct;
  }

  if (!issueType)
  {
    v10 = a3 * 3.0;
    v11 = (v8 + a3) * 3.0 - a3 * 3.0;
    if (a3 * 3.0 >= 5945.0)
    {
      v16 = a3 * 3.0;
    }

    else
    {
      v16 = 5945.0;
    }

    if (v16 < fmin(v10 + v11, 7125.0))
    {
      [WCM_Logging logLevel:4 message:@"WiFiEnhBitmap_: 3 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&a3, *&a4, a3 * 3.0, v10 + v11];
      goto LABEL_28;
    }

    return &__NSArray0__struct;
  }

  if (issueType != 9)
  {
LABEL_21:
    if (issueType == 999)
    {
      v15 = "NO_ISSUE_TYPE";
    }

    else if (issueType <= 0xE)
    {
      v15 = off_10023FE88[issueType];
    }

    else
    {
      v15 = "<ISSUE_TYPE_INVALID>";
    }

    [WCM_Logging logLevel:0 message:@"WiFiEnhBitmap_: %s is not considered for WiFi channels to enable WCI2", v15, v17];
    return &__NSArray0__struct;
  }

  v10 = a3 + a3;
  v11 = v8 + a3 + v8 + a3 - (a3 + a3);
  if (a3 + a3 >= 5945.0)
  {
    v12 = a3 + a3;
  }

  else
  {
    v12 = 5945.0;
  }

  if (v12 >= fmin(v10 + v11, 7125.0))
  {
    return &__NSArray0__struct;
  }

  [WCM_Logging logLevel:4 message:@"WiFiEnhBitmap_: 2 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&a3, *&a4, a3 + a3, v10 + v11];
LABEL_28:

  return sub_10008F480(v10, v11);
}

- (id)wifi5GHzChannelsAffectedByNR79UlLowFreq:(double)a3 cellUlHighFreq:(double)a4
{
  if (([(WCM_WiFiCellCoexIssue *)self issueType]& 0xFFFFFFFE) == 0xC && self->_enableWifiChannelAvoidance && self->_issueType == 13 && self->_cellFrequencyLimitForOOB < a4 && a4 - a3 > self->_cellBandwidthLimitForOOB)
  {
    return self->_wifiChannelsToAvoidForCellOOB;
  }

  else
  {
    return &__NSArray0__struct;
  }
}

- (id)wifiChannelsIMD3ByCellDlLowFreq:(double)a3 cellDlHighFreq:(double)a4 cellUlLowFreq:(double)a5 cellUlHighFreq:(double)a6 wifi5G:(BOOL)a7
{
  v12 = a6 - a5;
  v13 = a4 - a3;
  if (a7)
  {
    v14 = 5160.0;
  }

  else
  {
    v14 = 2402.0;
  }

  if (a7)
  {
    v15 = 675.0;
  }

  else
  {
    v15 = 80.0;
  }

  v16 = +[NSMutableArray array];
  if (sub_10008E324(0, a5, v12, v14, v15, a3, v13))
  {
    v17 = -(a4 - a5 * 2.0);
    v18 = -(a3 - a6 * 2.0) - v17 - (a4 - a5 * 2.0);
    [WCM_Logging logLevel:4 message:@"TYPE7_2GWIFI_SUPPORT_: 2 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = CellRx(%lf~%lf)", *&a5, *&a6, *&v17, *&v18, *&a3, *&a4];
    if (a7)
    {
      v19 = &word_1001981AC;
      v20 = 46;
      do
      {
        v21 = *v19;
        v22 = *(v19 - 1) + v21 * -0.5;
        if (v22 >= v17)
        {
          v23 = *(v19 - 1) + v21 * -0.5;
        }

        else
        {
          v23 = -(a4 - a5 * 2.0);
        }

        v24 = v22 + v21;
        if (v24 >= v18)
        {
          v24 = -(a3 - a6 * 2.0) - v17 - (a4 - a5 * 2.0);
        }

        if (v23 < v24)
        {
          [v16 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *(v19 - 2))}];
        }

        v19 += 3;
        --v20;
      }

      while (v20);
    }

    else
    {
      v25 = 1;
      for (i = 2402; i != 2467; i += 5)
      {
        v27 = i;
        if (v17 > i)
        {
          v27 = -(a4 - a5 * 2.0);
        }

        v28 = (i + 20);
        if (v18 <= v28)
        {
          v28 = -(a3 - a6 * 2.0) - v17 - (a4 - a5 * 2.0);
        }

        if (v27 < v28)
        {
          [v16 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v25)}];
        }

        v25 = (v25 + 1);
      }
    }
  }

  else
  {
    [WCM_Logging logLevel:4 message:@"TYPE7_2GWIFI_SUPPORT_: No IMD3 issue detected after calculation. Returning empty channel array."];
    return &__NSArray0__struct;
  }

  return v16;
}

- (id)getAllBtChannelsInBandForBtHighFreq:(double)a3 btLowFreq:(double)a4
{
  if (a3 > 5250.0 || a4 < 5150.0)
  {
    if (a3 > 5850.0 || a4 < 5725.0)
    {
      if ((a3 > 6050.0 || a4 < 5925.0) && (a3 > 6175.0 || a4 < 6051.0) && (a3 > 6300.0 || a4 < 6176.0))
      {
        if (a3 > 6425.0 || (a3 = 6301.0, a4 < 6301.0))
        {
          [WCM_Logging logLevel:0 message:@"Unknown BT band range", a3, a4];
          objc_exception_throw(NSInternalInconsistencyException);
        }
      }

      v4 = 125;
    }

    else
    {
      v4 = 126;
    }
  }

  else
  {
    v4 = 101;
  }

  v5 = [NSMutableArray arrayWithCapacity:v4];
  v6 = 0;
  do
  {
    [(NSMutableArray *)v5 addObject:[NSNumber numberWithInt:v6]];
    v6 = (v6 + 1);
  }

  while (v4 != v6);
  return v5;
}

- (id)HFBTAntBlkBandsForCellUlLowFreq:(double)a3 cellUlHighFreq:(double)a4
{
  v7 = [&off_10028D8F0 mutableCopy];
  issueType = self->_issueType;
  if (issueType == 13)
  {
    if (([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] & 1) != 0 || self->_cellFrequencyLimitForOOB >= a4)
    {
      return v7;
    }
  }

  else if (issueType != 12 || ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] & 1) != 0 || self->_cellFrequencyLimitForOOB <= a3)
  {
    return v7;
  }

  if (a4 - a3 > self->_cellBandwidthLimitForOOB && self->_wifiChannelsToAvoidForCellOOB)
  {
    [v7 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", self->_HFBTAntBlkBandUnii1Enabled, a4 - a3), @"AntBlkBandUnii1Enabled"}];
    [v7 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", self->_HFBTAntBlkBandUnii3Enabled), @"AntBlkBandUnii3Enabled"}];
    [v7 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", self->_HFBTAntBlkBandUnii5aEnabled), @"AntBlkBandUnii5aEnabled"}];
    [v7 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", self->_HFBTAntBlkBandUnii5bEnabled), @"AntBlkBandUnii5bEnabled"}];
    [v7 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", self->_HFBTAntBlkBandUnii5cEnabled), @"AntBlkBandUnii5cEnabled"}];
    [v7 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", self->_HFBTAntBlkBandUnii5dEnabled), @"AntBlkBandUnii5dEnabled"}];
  }

  return v7;
}

- (id)wifiChannelsToAvoidForCellDlLowFreq:(double)a3 cellDlHighFreq:(double)a4 cellUlLowFreq:(double)a5 cellUlHighFreq:(double)a6 wifi5G:(BOOL)a7 wifiEssentialChannel:(int *)a8
{
  if (a7)
  {
    v10 = 5160.0;
  }

  else
  {
    v10 = 2402.0;
  }

  if (a7)
  {
    v11 = 675.0;
  }

  else
  {
    v11 = 80.0;
  }

  if (self->_enableWifiChannelAvoidance)
  {
    issueType = self->_issueType;
    v15 = a7;
    v18 = a6 - a5;
    v19 = a4 - a3;
    switch(issueType)
    {
      case 0:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_3CELL_3FO_WIFI_VICTIM ..."];
        v20 = a5 * 3.0;
        v21 = (v18 + a5) * 3.0 - a5 * 3.0;
        if (a5 * 3.0 >= v10)
        {
          v22 = a5 * 3.0;
        }

        else
        {
          v22 = v10;
        }

        v23 = 2482.0;
        if (v15)
        {
          v23 = 5835.0;
        }

        if (v20 + v21 < v23)
        {
          v23 = v20 + v21;
        }

        if (v22 < v23)
        {
          [WCM_Logging logLevel:4 message:@"3 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&a5, *&a6, a5 * 3.0, v20 + v21, v61, v62];
          goto LABEL_100;
        }

        v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_3CELL_3FO_WIFI_VICTIM ...No Coex Issue found";
        goto LABEL_130;
      case 1:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_2WIFI_CELL_IMD3_CELL_VICTIM ..."];
        if (!sub_10008E324(0, v10, v11, a5, v18, a3, a4 - a3))
        {
          goto LABEL_75;
        }

        v32 = (a3 + a5) * 0.5;
        v33 = (a4 + a6) * 0.5 - v32;
        [WCM_Logging logLevel:4 message:@"2 x WifiTx(%lf~%lf) - CellTx(%lf~%lf) = CellRx(%lf~%lf)", *&v32, v32 + v33, *&a5, *&a6, *&a3, *&a4];
        goto LABEL_113;
      case 2:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_CELL_IMD2_GPS_VICTIM ..."];
        if (sub_10008E278(0, v10, v11, a5, v18, 1573.374, 4.092))
        {
          v20 = a5 + 1573.374;
          v21 = a6 + 1577.466 - (a5 + 1573.374);
          [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - CellTx(%lf~%lf) = GpsRx(%lf~%lf)", a5 + 1573.374, a5 + 1573.374 + v21, *&a5, *&a6, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
          goto LABEL_100;
        }

        v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_CELL_IMD2_GPS_VICTIM ...No Coex Issue found";
        goto LABEL_130;
      case 3:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_CELL_IMD2_CELL_VICTIM ..."];
        if (sub_10008E278(0, v10, v11, a5, v18, a3, a4 - a3))
        {
          v32 = a3 + a5;
          v33 = a4 + a6 - (a3 + a5);
          [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - CellTx(%lf~%lf) = CellRx(%lf~%lf)", a3 + a5, a3 + a5 + v33, *&a5, *&a6, *&a3, *&a4];
          goto LABEL_113;
        }

        v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_CELL_IMD2_CELL_VICTIM ...No Coex Issue found";
        goto LABEL_130;
      case 4:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_2CELL_WIFI_IMD3_CELL_VICTIM ..."];
        if (sub_10008E324(0, a5, v18, v10, v11, a3, a4 - a3))
        {
          v32 = -(a4 - a5 * 2.0);
          v33 = -(a3 - a6 * 2.0) - v32;
          [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = CellRx(%lf~%lf)", *&a5, *&a6, *&v32, v33 - (a4 - a5 * 2.0), *&a3, *&a4];
          goto LABEL_113;
        }

LABEL_75:
        v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_2WIFI_CELL_IMD3_CELL_VICTIM ...No Coex Issue found";
        goto LABEL_130;
      case 5:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_2CELL_WIFI_IMD3_GPS_VICTIM ..."];
        if (sub_10008E324(0, a5, v18, v10, v11, 1573.374, 4.092))
        {
          v20 = a5 * 2.0 + -1577.466;
          v21 = a6 * 2.0 + -1573.374 - v20;
          [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = GpsRx(%lf~%lf)", *&a5, *&a6, *&v20, v20 + v21, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
          goto LABEL_100;
        }

        v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_2CELL_WIFI_IMD3_GPS_VICTIM ...No Coex Issue found";
        goto LABEL_130;
      case 6:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_2CELL_IMD3_GPS_VICTIM ..."];
        if (sub_10008E324(0, v10, v11, a5, v18, 1573.374, 4.092))
        {
          v20 = a5 * 2.0 + 1573.374;
          v21 = a6 * 2.0 + 1577.466 - v20;
          [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - 2 x CellTx(%lf~%lf) = GpsRx(%lf~%lf)", *&v20, v20 + v21, *&a5, *&a6, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
          goto LABEL_100;
        }

        v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_2CELL_IMD3_GPS_VICTIM ...No Coex Issue found";
        goto LABEL_130;
      case 7:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_2CELL_IMD3_CELL_VICTIM ..."];
        if (sub_10008E324(0, v10, v11, a5, v18, a3, a4 - a3))
        {
          v32 = a3 + a5 * 2.0;
          v33 = a4 + a6 * 2.0 - v32;
          [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - 2 x CellTx(%lf~%lf) = CellRx(%lf~%lf)", *&v32, v32 + v33, *&a5, *&a6, *&a3, *&a4];
          goto LABEL_113;
        }

        v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_2CELL_IMD3_CELL_VICTIM ...No Coex Issue found";
        goto LABEL_130;
      case 8:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_4CELL_WIFI_IMD5_CELL_VICTIM ..."];
        if (!sub_10008E404(0, a5, v18, v10, v11, a3, a4 - a3))
        {
          v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_4CELL_WIFI_IMD5_CELL_VICTIM ...No Coex Issue found";
          goto LABEL_130;
        }

        v32 = -(a4 - a5 * 4.0);
        v33 = -(a3 - a6 * 4.0) - v32;
        [WCM_Logging logLevel:4 message:@"4 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = CellRx(%lf~%lf)", *&a5, *&a6, *&v32, v33 - (a4 - a5 * 4.0), *&a3, *&a4];
LABEL_113:
        v54 = v32;
        v55 = v33;
        goto LABEL_114;
      case 9:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_2CELL_2FO_WIFI_VICTIM ..."];
        v20 = a5 + a5;
        v21 = v18 + a5 + v18 + a5 - (a5 + a5);
        if (a5 + a5 >= v10)
        {
          v42 = a5 + a5;
        }

        else
        {
          v42 = v10;
        }

        v43 = 2482.0;
        if (v15)
        {
          v43 = 5835.0;
        }

        if (v20 + v21 < v43)
        {
          v43 = v20 + v21;
        }

        if (v42 >= v43)
        {
          v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_2CELL_2FO_WIFI_VICTIM ...No Coex Issue found";
          goto LABEL_130;
        }

        [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&a5, *&a6, a5 + a5, v20 + v21, v61, v62];
LABEL_100:
        v54 = v20;
        v55 = v21;
        goto LABEL_114;
      case 10:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_2RECIPROCAL_CELL_VICTIM ..."];
        v24 = v10 * 0.5;
        v56 = 1241.0;
        if (v15)
        {
          v56 = 2917.5;
        }

        v26 = v56 - v24;
        if (v24 >= a3)
        {
          v57 = v10 * 0.5;
        }

        else
        {
          v57 = a3;
        }

        v58 = v19 + a3;
        if (v24 + v26 < v19 + a3)
        {
          v58 = v24 + v26;
        }

        if (v57 < v58)
        {
          [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) / 2 = CellRx(%lf~%lf)", v10 * 0.5, v24 + v26, *&a3, *&a4];
          goto LABEL_110;
        }

        v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_2RECIPROCAL_CELL_VICTIM ...No Coex Issue found";
        goto LABEL_130;
      case 11:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_3RECIPROCAL_CELL_VICTIM ..."];
        v24 = v10 / 3.0;
        v29 = 827.333333;
        if (v15)
        {
          v29 = 1945.0;
        }

        v26 = v29 - v24;
        if (v24 >= a3)
        {
          v30 = v10 / 3.0;
        }

        else
        {
          v30 = a3;
        }

        v31 = v19 + a3;
        if (v24 + v26 < v19 + a3)
        {
          v31 = v24 + v26;
        }

        if (v30 < v31)
        {
          [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) / 3 = CellRx(%lf~%lf)", v10 / 3.0, v24 + v26, *&a3, *&a4];
          goto LABEL_110;
        }

        v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_3RECIPROCAL_CELL_VICTIM ...No Coex Issue found";
        goto LABEL_130;
      case 12:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_OOB_ISM_RIGHT for freq < %f, bw > %f ...", *&self->_cellFrequencyLimitForOOB, *&self->_cellBandwidthLimitForOOB];
        if (self->_cellFrequencyLimitForOOB <= a5 || v18 <= self->_cellBandwidthLimitForOOB)
        {
          v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_OOB_ISM_RIGHT ...No Coex Issue found";
          goto LABEL_130;
        }

        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        wifiChannelsToAvoidForCellOOB = self->_wifiChannelsToAvoidForCellOOB;
        v35 = [(NSArray *)wifiChannelsToAvoidForCellOOB countByEnumeratingWithState:&v67 objects:v72 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v68;
          v38 = 13;
          do
          {
            for (i = 0; i != v36; i = i + 1)
            {
              if (*v68 != v37)
              {
                objc_enumerationMutation(wifiChannelsToAvoidForCellOOB);
              }

              v40 = [*(*(&v67 + 1) + 8 * i) intValue];
              v41 = v40 > 0xB || ((1 << v40) & 0x842) == 0;
              if (!v41 && v40 < v38)
              {
                v38 = v40;
              }
            }

            v36 = [(NSArray *)wifiChannelsToAvoidForCellOOB countByEnumeratingWithState:&v67 objects:v72 count:16];
          }

          while (v36);
          if (a8 && v38 != 13)
          {
            *a8 = v38;
          }
        }

        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_OOB_ISM_RIGHT... return channels %@", self->_wifiChannelsToAvoidForCellOOB];
        return self->_wifiChannelsToAvoidForCellOOB;
      case 13:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_OOB_ISM_LEFT for freq > %f, bw > %f ...", *&self->_cellFrequencyLimitForOOB, *&self->_cellBandwidthLimitForOOB];
        if (self->_cellFrequencyLimitForOOB >= a6 || v18 <= self->_cellBandwidthLimitForOOB)
        {
          v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_OOB_ISM_LEFT ...No Coex Issue found";
          goto LABEL_130;
        }

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v45 = self->_wifiChannelsToAvoidForCellOOB;
        v46 = [(NSArray *)v45 countByEnumeratingWithState:&v63 objects:v71 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = 0;
          v49 = *v64;
          do
          {
            for (j = 0; j != v47; j = j + 1)
            {
              if (*v64 != v49)
              {
                objc_enumerationMutation(v45);
              }

              v51 = [*(*(&v63 + 1) + 8 * j) intValue];
              v52 = v51 > 0xB || ((1 << v51) & 0x842) == 0;
              if (!v52 && v51 > v48)
              {
                v48 = v51;
              }
            }

            v47 = [(NSArray *)v45 countByEnumeratingWithState:&v63 objects:v71 count:16];
          }

          while (v47);
          if (a8 && v48)
          {
            *a8 = v48;
          }
        }

        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_OOB_ISM_LEFT... return channels %@", self->_wifiChannelsToAvoidForCellOOB];
        return self->_wifiChannelsToAvoidForCellOOB;
      case 14:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_2WIFI_2FO_CELL_VICTIM ..."];
        v24 = v10 + v10;
        v25 = 4964.0;
        if (v15)
        {
          v25 = 11670.0;
        }

        v26 = v25 - v24;
        if (v24 >= a3)
        {
          v27 = v10 + v10;
        }

        else
        {
          v27 = a3;
        }

        v28 = v19 + a3;
        if (v24 + v26 < v19 + a3)
        {
          v28 = v24 + v26;
        }

        if (v27 < v28)
        {
          [WCM_Logging logLevel:4 message:@"(2 x WiFiTx)(i.e. %lf~%lf) = CellRx(%lf~%lf)", v10 + v10, v24 + v26, *&a3, *&a4];
LABEL_110:
          v54 = v24;
          v55 = v26;
LABEL_114:

          return sub_10000B5B4(a8, v54, v55);
        }

        v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_2WIFI_2FO_CELL_VICTIM ...No Coex Issue found";
LABEL_130:
        [WCM_Logging logLevel:4 message:v44, v59, v60];
        break;
      default:
        [WCM_Logging logLevel:0 message:@"WCM_WiFiCellCoexIssue(%p) has invalid _issueType(%d)", self, issueType];
        return &__NSArray0__struct;
    }
  }

  return &__NSArray0__struct;
}

- (id)wifiPHSChannelsToBlocklistForCellDlLowFreq:(double)a3 cellDlHighFreq:(double)a4 cellUlLowFreq:(double)a5 cellUlHighFreq:(double)a6 wifi5G:(BOOL)a7 wifiEssentialChannel:(int *)a8
{
  if (a7)
  {
    v12 = 5160.0;
  }

  else
  {
    v12 = 2402.0;
  }

  if (a7)
  {
    v13 = 675.0;
  }

  else
  {
    v13 = 80.0;
  }

  issueType = self->_issueType;
  v17 = a6 - a5;
  v18 = a4 - a3;
  switch(issueType)
  {
    case 0:
      v19 = a5 * 3.0;
      v20 = (v17 + a5) * 3.0 - a5 * 3.0;
      if (a5 * 3.0 >= v12)
      {
        v21 = a5 * 3.0;
      }

      else
      {
        v21 = v12;
      }

      v22 = 2482.0;
      if (a7)
      {
        v22 = 5835.0;
      }

      if (v19 + v20 < v22)
      {
        v22 = v19 + v20;
      }

      if (v21 >= v22)
      {
        goto LABEL_113;
      }

      [WCM_Logging logLevel:4 message:@"3 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&a5, *&a6, a5 * 3.0, v19 + v20, v56, v57];
      goto LABEL_96;
    case 1:
      if (!sub_10008E324(0, v12, v13, a5, v17, a3, v18))
      {
        goto LABEL_113;
      }

      v31 = (a3 + a5) * 0.5;
      v32 = (a4 + a6) * 0.5 - v31;
      [WCM_Logging logLevel:4 message:@"2 x WifiTx(%lf~%lf) - CellTx(%lf~%lf) = CellRx(%lf~%lf)", *&v31, v31 + v32, *&a5, *&a6, *&a3, *&a4];
      goto LABEL_109;
    case 2:
      if (!sub_10008E278(0, v12, v13, a5, v17, 1573.374, 4.092))
      {
        goto LABEL_113;
      }

      v19 = a5 + 1573.374;
      v20 = a6 + 1577.466 - (a5 + 1573.374);
      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - CellTx(%lf~%lf) = GpsRx(%lf~%lf)", a5 + 1573.374, a5 + 1573.374 + v20, *&a5, *&a6, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
      goto LABEL_96;
    case 3:
      if (!sub_10008E278(0, v12, v13, a5, v17, a3, v18))
      {
        goto LABEL_113;
      }

      v31 = a3 + a5;
      v32 = a4 + a6 - (a3 + a5);
      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - CellTx(%lf~%lf) = CellRx(%lf~%lf)", a3 + a5, a3 + a5 + v32, *&a5, *&a6, *&a3, *&a4];
      goto LABEL_109;
    case 4:
      if (!sub_10008E324(0, a5, v17, v12, v13, a3, v18))
      {
        goto LABEL_113;
      }

      v31 = -(a4 - a5 * 2.0);
      v32 = -(a3 - a6 * 2.0) - v31;
      [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = CellRx(%lf~%lf)", *&a5, *&a6, *&v31, v32 - (a4 - a5 * 2.0), *&a3, *&a4];
      goto LABEL_109;
    case 5:
      if (!sub_10008E324(0, a5, v17, v12, v13, 1573.374, 4.092))
      {
        goto LABEL_113;
      }

      v19 = a5 * 2.0 + -1577.466;
      v20 = a6 * 2.0 + -1573.374 - v19;
      [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = GpsRx(%lf~%lf)", *&a5, *&a6, *&v19, v19 + v20, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
      goto LABEL_96;
    case 6:
      if (!sub_10008E324(0, v12, v13, a5, v17, 1573.374, 4.092))
      {
        goto LABEL_113;
      }

      v19 = a5 * 2.0 + 1573.374;
      v20 = a6 * 2.0 + 1577.466 - v19;
      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - 2 x CellTx(%lf~%lf) = GpsRx(%lf~%lf)", *&v19, v19 + v20, *&a5, *&a6, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
      goto LABEL_96;
    case 7:
      if (!sub_10008E324(0, v12, v13, a5, v17, a3, v18))
      {
        goto LABEL_113;
      }

      v31 = a3 + a5 * 2.0;
      v32 = a4 + a6 * 2.0 - v31;
      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - 2 x CellTx(%lf~%lf) = CellRx(%lf~%lf)", *&v31, v31 + v32, *&a5, *&a6, *&a3, *&a4];
      goto LABEL_109;
    case 8:
      if (!sub_10008E404(0, a5, v17, v12, v13, a3, v18))
      {
        goto LABEL_113;
      }

      v31 = -(a4 - a5 * 4.0);
      v32 = -(a3 - a6 * 4.0) - v31;
      [WCM_Logging logLevel:4 message:@"4 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = CellRx(%lf~%lf)", *&a5, *&a6, *&v31, v32 - (a4 - a5 * 4.0), *&a3, *&a4];
LABEL_109:
      v51 = v31;
      v52 = v32;
      goto LABEL_110;
    case 9:
      v19 = a5 + a5;
      v20 = v17 + a5 + v17 + a5 - (a5 + a5);
      if (a5 + a5 >= v12)
      {
        v41 = a5 + a5;
      }

      else
      {
        v41 = v12;
      }

      v42 = 2482.0;
      if (a7)
      {
        v42 = 5835.0;
      }

      if (v19 + v20 < v42)
      {
        v42 = v19 + v20;
      }

      if (v41 >= v42)
      {
        goto LABEL_113;
      }

      [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&a5, *&a6, a5 + a5, v19 + v20, v56, v57];
LABEL_96:
      v51 = v19;
      v52 = v20;
      goto LABEL_110;
    case 10:
      v23 = v12 * 0.5;
      v53 = 1241.0;
      if (a7)
      {
        v53 = 2917.5;
      }

      v25 = v53 - v23;
      if (v23 >= a3)
      {
        v54 = v12 * 0.5;
      }

      else
      {
        v54 = a3;
      }

      v55 = v18 + a3;
      if (v23 + v25 < v18 + a3)
      {
        v55 = v23 + v25;
      }

      if (v54 >= v55)
      {
        goto LABEL_113;
      }

      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) / 2 = CellRx(%lf~%lf)", *&v23, v23 + v25, *&a3, *&a4];
      goto LABEL_106;
    case 11:
      v23 = v12 / 3.0;
      v28 = 827.333333;
      if (a7)
      {
        v28 = 1945.0;
      }

      v25 = v28 - v23;
      if (v23 >= a3)
      {
        v29 = v12 / 3.0;
      }

      else
      {
        v29 = a3;
      }

      v30 = v18 + a3;
      if (v23 + v25 < v18 + a3)
      {
        v30 = v23 + v25;
      }

      if (v29 >= v30)
      {
        goto LABEL_113;
      }

      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) / 3 = CellRx(%lf~%lf)", *&v23, v23 + v25, *&a3, *&a4];
      goto LABEL_106;
    case 12:
      if (self->_cellFrequencyLimitForOOB <= a5 || v17 <= self->_cellBandwidthLimitForOOB)
      {
        goto LABEL_113;
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      wifiChannelsToAvoidForCellOOB = self->_wifiChannelsToAvoidForCellOOB;
      v34 = [(NSArray *)wifiChannelsToAvoidForCellOOB countByEnumeratingWithState:&v62 objects:v67 count:16];
      if (!v34)
      {
        goto LABEL_93;
      }

      v35 = v34;
      v36 = *v63;
      v37 = 13;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v63 != v36)
          {
            objc_enumerationMutation(wifiChannelsToAvoidForCellOOB);
          }

          v39 = [*(*(&v62 + 1) + 8 * i) intValue];
          v40 = v39 > 0xB || ((1 << v39) & 0x842) == 0;
          if (!v40 && v39 < v37)
          {
            v37 = v39;
          }
        }

        v35 = [(NSArray *)wifiChannelsToAvoidForCellOOB countByEnumeratingWithState:&v62 objects:v67 count:16];
      }

      while (v35);
      if (!a8 || v37 == 13)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    case 13:
      if (self->_cellFrequencyLimitForOOB >= a6 || v17 <= self->_cellBandwidthLimitForOOB)
      {
        goto LABEL_113;
      }

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v43 = self->_wifiChannelsToAvoidForCellOOB;
      v44 = [(NSArray *)v43 countByEnumeratingWithState:&v58 objects:v66 count:16];
      if (v44)
      {
        v45 = v44;
        v37 = 0;
        v46 = *v59;
        do
        {
          for (j = 0; j != v45; j = j + 1)
          {
            if (*v59 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = [*(*(&v58 + 1) + 8 * j) intValue];
            v49 = v48 > 0xB || ((1 << v48) & 0x842) == 0;
            if (!v49 && v48 > v37)
            {
              v37 = v48;
            }
          }

          v45 = [(NSArray *)v43 countByEnumeratingWithState:&v58 objects:v66 count:16];
        }

        while (v45);
        if (a8 && v37)
        {
LABEL_92:
          *a8 = v37;
        }
      }

LABEL_93:
      result = self->_wifiChannelsToAvoidForPHS;
      break;
    case 14:
      v23 = v12 + v12;
      v24 = 4964.0;
      if (a7)
      {
        v24 = 11670.0;
      }

      v25 = v24 - v23;
      if (v23 >= a3)
      {
        v26 = v12 + v12;
      }

      else
      {
        v26 = a3;
      }

      v27 = v18 + a3;
      if (v23 + v25 < v18 + a3)
      {
        v27 = v23 + v25;
      }

      if (v26 >= v27)
      {
        goto LABEL_113;
      }

      [WCM_Logging logLevel:4 message:@"(2 x WiFiTx)(i.e. %lf~%lf) = CellRx(%lf~%lf)", *&v23, v23 + v25, *&a3, *&a4];
LABEL_106:
      v51 = v23;
      v52 = v25;
LABEL_110:

      result = sub_10000B5B4(a8, v51, v52);
      break;
    default:
      [WCM_Logging logLevel:0 message:@"WCM_WiFiCellCoexIssue(%p) has invalid _issueType(%d)", self, issueType];
LABEL_113:
      result = &__NSArray0__struct;
      break;
  }

  return result;
}

- (id)wifiChannelsToAvoidWiFiEnhForCellDlLowFreq:(double)a3 cellDlHighFreq:(double)a4 cellUlLowFreq:(double)a5 cellUlHighFreq:(double)a6
{
  if (!self->_enableWifiChannelAvoidance)
  {
    return &__NSArray0__struct;
  }

  issueType = self->_issueType;
  v11 = a6 - a5;
  v12 = a4 - a3;
  switch(issueType)
  {
    case 0:
      v13 = a5 * 3.0;
      v14 = (v11 + a5) * 3.0 - a5 * 3.0;
      if (a5 * 3.0 >= 5945.0)
      {
        v15 = a5 * 3.0;
      }

      else
      {
        v15 = 5945.0;
      }

      if (v15 >= fmin(v13 + v14, 7125.0))
      {
        return &__NSArray0__struct;
      }

      [WCM_Logging logLevel:4 message:@"3 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&a5, *&a6, a5 * 3.0, v13 + v14, v29, v30];
      goto LABEL_41;
    case 1:
      if (!sub_10008E324(0, 5945.0, 1180.0, a5, v11, a3, v12))
      {
        return &__NSArray0__struct;
      }

      v22 = (a3 + a5) * 0.5;
      v23 = (a4 + a6) * 0.5 - v22;
      [WCM_Logging logLevel:4 message:@"2 x WifiTx(%lf~%lf) - CellTx(%lf~%lf) = CellRx(%lf~%lf)", *&v22, v22 + v23, *&a5, *&a6, *&a3, *&a4];
      goto LABEL_49;
    case 2:
      if (!sub_10008E278(0, 5945.0, 1180.0, a5, v11, 1573.374, 4.092))
      {
        return &__NSArray0__struct;
      }

      v13 = a5 + 1573.374;
      v14 = a6 + 1577.466 - (a5 + 1573.374);
      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - CellTx(%lf~%lf) = GpsRx(%lf~%lf)", a5 + 1573.374, a5 + 1573.374 + v14, *&a5, *&a6, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
      goto LABEL_41;
    case 3:
      if (!sub_10008E278(0, 5945.0, 1180.0, a5, v11, a3, v12))
      {
        return &__NSArray0__struct;
      }

      v22 = a3 + a5;
      v23 = a4 + a6 - (a3 + a5);
      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - CellTx(%lf~%lf) = CellRx(%lf~%lf)", a3 + a5, a3 + a5 + v23, *&a5, *&a6, *&a3, *&a4];
      goto LABEL_49;
    case 4:
      if (!sub_10008E324(0, a5, v11, 5945.0, 1180.0, a3, v12))
      {
        return &__NSArray0__struct;
      }

      v22 = -(a4 - a5 * 2.0);
      v23 = -(a3 - a6 * 2.0) - v22;
      [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = CellRx(%lf~%lf)", *&a5, *&a6, *&v22, v23 - (a4 - a5 * 2.0), *&a3, *&a4];
      goto LABEL_49;
    case 5:
      if (!sub_10008E324(0, a5, v11, 5945.0, 1180.0, 1573.374, 4.092))
      {
        return &__NSArray0__struct;
      }

      v13 = a5 * 2.0 + -1577.466;
      v14 = a6 * 2.0 + -1573.374 - v13;
      [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = GpsRx(%lf~%lf)", *&a5, *&a6, *&v13, v13 + v14, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
      goto LABEL_41;
    case 6:
      if (!sub_10008E324(0, 5945.0, 1180.0, a5, v11, 1573.374, 4.092))
      {
        return &__NSArray0__struct;
      }

      v13 = a5 * 2.0 + 1573.374;
      v14 = a6 * 2.0 + 1577.466 - v13;
      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - 2 x CellTx(%lf~%lf) = GpsRx(%lf~%lf)", *&v13, v13 + v14, *&a5, *&a6, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
      goto LABEL_41;
    case 7:
      if (!sub_10008E324(0, 5945.0, 1180.0, a5, v11, a3, v12))
      {
        return &__NSArray0__struct;
      }

      v22 = a3 + a5 * 2.0;
      v23 = a4 + a6 * 2.0 - v22;
      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - 2 x CellTx(%lf~%lf) = CellRx(%lf~%lf)", *&v22, v22 + v23, *&a5, *&a6, *&a3, *&a4];
      goto LABEL_49;
    case 8:
      if (!sub_10008E404(0, a5, v11, 5945.0, 1180.0, a3, v12))
      {
        return &__NSArray0__struct;
      }

      v22 = -(a4 - a5 * 4.0);
      v23 = -(a3 - a6 * 4.0) - v22;
      [WCM_Logging logLevel:4 message:@"4 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = CellRx(%lf~%lf)", *&a5, *&a6, *&v22, v23 - (a4 - a5 * 4.0), *&a3, *&a4];
LABEL_49:
      v26 = v22;
      v19 = v23;
      goto LABEL_50;
    case 9:
      v13 = a5 + a5;
      v14 = v11 + a5 + v11 + a5 - (a5 + a5);
      if (a5 + a5 >= 5945.0)
      {
        v24 = a5 + a5;
      }

      else
      {
        v24 = 5945.0;
      }

      if (v24 >= fmin(v13 + v14, 7125.0))
      {
        return &__NSArray0__struct;
      }

      [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&a5, *&a6, a5 + a5, v13 + v14, v29, v30];
LABEL_41:
      v26 = v13;
      v19 = v14;
      goto LABEL_50;
    case 10:
      v16 = 0x40A7390000000000;
      v27 = fmax(a3, 2972.5);
      v28 = v12 + a3;
      if (v12 + a3 > 3562.5)
      {
        v28 = 3562.5;
      }

      if (v27 >= v28)
      {
        return &__NSArray0__struct;
      }

      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) / 2 = CellRx(%lf~%lf)", 0x40A7390000000000, 0x40ABD50000000000, *&a3, *&a4];
      v19 = 590.0;
      goto LABEL_46;
    case 11:
      v16 = 0x409EF6AAAAAAAAABLL;
      v20 = fmax(a3, 1981.66667);
      v21 = v12 + a3;
      if (v12 + a3 > 2375.0)
      {
        v21 = 2375.0;
      }

      if (v20 >= v21)
      {
        return &__NSArray0__struct;
      }

      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) / 3 = CellRx(%lf~%lf)", 0x409EF6AAAAAAAAABLL, 0x40A28E0000000000, *&a3, *&a4];
      v19 = 393.333333;
      goto LABEL_46;
    case 12:
      if (self->_cellFrequencyLimitForOOB <= a5)
      {
        return &__NSArray0__struct;
      }

      goto LABEL_37;
    case 13:
      if (self->_cellFrequencyLimitForOOB >= a6)
      {
        return &__NSArray0__struct;
      }

LABEL_37:
      if (v11 <= self->_cellBandwidthLimitForOOB)
      {
        return &__NSArray0__struct;
      }

      result = self->_wifiChannelsToAvoidForCellOOB;
      break;
    case 14:
      v16 = 0x40C7390000000000;
      v17 = fmax(a3, 11890.0);
      v18 = v12 + a3;
      if (v12 + a3 > 14250.0)
      {
        v18 = 14250.0;
      }

      if (v17 >= v18)
      {
        return &__NSArray0__struct;
      }

      [WCM_Logging logLevel:4 message:@"(2 x WiFiTx)(i.e. %lf~%lf) = CellRx(%lf~%lf)", 0x40C7390000000000, 0x40CBD50000000000, *&a3, *&a4];
      v19 = 2360.0;
LABEL_46:
      v26 = *&v16;
LABEL_50:

      return sub_10008F480(v26, v19);
    default:
      [WCM_Logging logLevel:0 message:@"WiFiType7_WiFiEnh: WCM_WiFiCellCoexIssue(%p) has invalid _issueType(%d)", self, issueType];
      return &__NSArray0__struct;
  }

  return result;
}

- (BOOL)wifiBtAgcCoexModeEnabledInPolicy:(double)a3 cellDlHighFreq:(double)a4 cellUlLowFreq:(double)a5 cellUlHighFreq:(double)a6 agccoexmode:(int *)a7
{
  v9 = a6 - a5;
  issueType = self->_issueType;
  switch(issueType)
  {
    case 0xD:
      if (self->_cellFrequencyLimitForOOB >= a6)
      {
        return 0;
      }

      goto LABEL_11;
    case 0xC:
      if (self->_cellFrequencyLimitForOOB <= a5)
      {
        return 0;
      }

LABEL_11:
      if (v9 > self->_cellBandwidthLimitForOOB)
      {
        goto LABEL_12;
      }

      return 0;
    case 0:
      v11 = (v9 + a5) * 3.0 - a5 * 3.0;
      v12 = 2402.0;
      if (a5 * 3.0 >= 2402.0)
      {
        v12 = a5 * 3.0;
      }

      if (v12 >= fmin(a5 * 3.0 + v11, 2482.0))
      {
        return 0;
      }

LABEL_12:
      *a7 = self->_wifiBtAgcCoexModeEnable;
      return 1;
  }

  [WCM_Logging logLevel:0 message:@"WCM_WiFiCellCoexIssue(%p) has invalid _issueType(%d) in AgcCoexMode", v9, a4, self, issueType, v7, v8];
  return 0;
}

- (void)cellFreqRangeWithIssueForCellDlLowFreq:(double)a3 cellDlHighFreq:(double)a4 cellUlLowFreq:(double)a5 cellUlHighFreq:(double)a6 wifiLowFreq:(double)a7 wifiHighFreq:(double)a8 cellTxIssueRange:(id *)a9 cellRxIssueRange:(id *)a10
{
  v38 = 0;
  v37 = 0;
  issueType = self->_issueType;
  v16 = a3;
  v17 = a6 - a5;
  v18 = a4 - a3;
  v19 = a8 - a7;
  switch(issueType)
  {
    case 0:
      v22 = a5 * 3.0;
      v23 = (v17 + a5) * 3.0 - a5 * 3.0;
      if (v22 >= a7)
      {
        v24 = v22;
      }

      else
      {
        v24 = a7;
      }

      v25 = v22 + v23;
      if (v25 >= v19 + a7)
      {
        v25 = v19 + a7;
      }

      if (v24 < v25)
      {
        v38.var0 = v24 / 3.0;
        v38.var1 = (v25 - v24) / 3.0;
        [WCM_Logging logLevel:4 message:@"3 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", v24 / 3.0, v24 / 3.0 + v38.var1, *&a7, *&a8, v35, v36];
      }

      break;
    case 1:
    case 4:
    case 7:
      if (sub_10008E9F8(0, &v38.var0, &v37.var0, a7, a8 - a7, a5, v17, a3, v18))
      {
        [WCM_Logging logLevel:4 message:@"2 x WifiTx(%lf~%lf) - CellTx(%lf~%lf) = CellRx(%lf~%lf)", *&a7, *&a8, *&v38.var0, v38.var0 + v38.var1, *&v37.var0, v37.var0 + v37.var1];
      }

      break;
    case 2:
      if (sub_10008E9F8(0, &v38.var0, 0, a7, v19, a5, v17, 1573.374, 4.092))
      {
        [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - CellTx(%lf~%lf) = GpsRx(%lf~%lf)", *&a7, *&a8, *&v38.var0, v38.var0 + v38.var1, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
      }

      break;
    case 3:
      if (sub_10008E790(0, &v38.var0, &v37.var0, a7, a8 - a7, a5, v17, a3, v18))
      {
        [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - CellTx(%lf~%lf) = CellRx(%lf~%lf)", *&a7, *&a8, *&v38.var0, v38.var0 + v38.var1, *&v37.var0, v37.var0 + v37.var1];
      }

      break;
    case 5:
    case 6:
      if (sub_10008E9F8(&v38.var0, 0, 0, a5, v17, a7, v19, 1573.374, 4.092))
      {
        [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = GpsRx(%lf~%lf)", *&v38.var0, v38.var0 + v38.var1, *&a7, *&a8, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
      }

      break;
    case 8:
      if (sub_10008ECB4(&v38.var0, 0, &v37.var0, a5, v17, a7, a8 - a7, a3, v18))
      {
        [WCM_Logging logLevel:4 message:@"4 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = CellRx(%lf~%lf)", *&v38.var0, v38.var0 + v38.var1, *&a7, *&a8, *&v37.var0, v37.var0 + v37.var1];
      }

      break;
    case 9:
      v27 = a5 + a5;
      v28 = v17 + a5 + v17 + a5 - (a5 + a5);
      if (v27 >= a7)
      {
        v29 = v27;
      }

      else
      {
        v29 = a7;
      }

      v30 = v27 + v28;
      if (v30 >= v19 + a7)
      {
        v30 = v19 + a7;
      }

      if (v29 < v30)
      {
        v38.var0 = v29 * 0.5;
        v38.var1 = (v30 - v29) * 0.5;
        [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", v29 * 0.5, v29 * 0.5 + v38.var1, *&a7, *&a8, v35, v36];
      }

      break;
    case 10:
      if (a7 * 0.5 >= a3)
      {
        a3 = a7 * 0.5;
      }

      v32 = a7 * 0.5 + (v19 + a7) * 0.5 - a7 * 0.5;
      if (v32 >= v18 + v16)
      {
        v32 = v18 + v16;
      }

      if (a3 < v32)
      {
        v37.var0 = a3;
        v37.var1 = v32 - a3;
        [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) / 2 = CellRx(%lf~%lf)", *&a7, *&a8, *&a3, a3 + v32 - a3, v35, v36];
      }

      break;
    case 11:
      if (a7 / 3.0 >= a3)
      {
        a3 = a7 / 3.0;
      }

      v21 = a7 / 3.0 + (v19 + a7) / 3.0 - a7 / 3.0;
      if (v21 >= v18 + v16)
      {
        v21 = v18 + v16;
      }

      if (a3 < v21)
      {
        v37.var0 = a3;
        v37.var1 = v21 - a3;
        [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) / 3 = CellRx(%lf~%lf)", *&a7, *&a8, *&a3, a3 + v21 - a3, v35, v36];
      }

      break;
    case 12:
      cellFrequencyLimitForOOB = self->_cellFrequencyLimitForOOB;
      if (cellFrequencyLimitForOOB > a5 && v17 > self->_cellBandwidthLimitForOOB)
      {
        v38.var0 = a5;
        v38.var1 = cellFrequencyLimitForOOB - a5;
      }

      break;
    case 13:
      v31 = self->_cellFrequencyLimitForOOB;
      if (v31 < a6 && v17 > self->_cellBandwidthLimitForOOB)
      {
        v38.var0 = self->_cellFrequencyLimitForOOB;
        v38.var1 = a6 - v31;
      }

      break;
    case 14:
      if (a7 + a7 >= a3)
      {
        a3 = a7 + a7;
      }

      v20 = a7 + a7 + v19 + a7 + v19 + a7 - (a7 + a7);
      if (v20 >= v18 + v16)
      {
        v20 = v18 + v16;
      }

      if (a3 < v20)
      {
        v37.var0 = a3;
        v37.var1 = v20 - a3;
        [WCM_Logging logLevel:4 message:@"(2 x WiFiTx)(i.e. %lf~%lf) = CellRx(%lf~%lf)", *&a7, *&a8, *&a3, a3 + v20 - a3, v35, v36];
      }

      break;
    default:
      [WCM_Logging logLevel:0 message:@"WCM_WiFiCellCoexIssue(%p) has invalid _issueType(%d)", self, issueType, v33, v34, v35, v36];
      break;
  }

  if (a9)
  {
    *a9 = v38;
  }

  if (a10)
  {
    *a10 = v37;
  }
}

@end