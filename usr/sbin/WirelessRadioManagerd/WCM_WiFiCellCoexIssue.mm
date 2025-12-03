@interface WCM_WiFiCellCoexIssue
- (BOOL)wifiBtAgcCoexModeEnabledInPolicy:(double)policy cellDlHighFreq:(double)freq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)highFreq agccoexmode:(int *)agccoexmode;
- (WCM_WiFiCellCoexIssue)initWithCoexIssueConfig:(id *)config;
- (id)HFBTAntBlkBandsForCellUlLowFreq:(double)freq cellUlHighFreq:(double)highFreq;
- (id)getAllBtChannelsInBandForBtHighFreq:(double)freq btLowFreq:(double)lowFreq;
- (id)wiFiEnhChannelsAffectedByCellUlLowFreq:(double)freq cellUlHighFreq:(double)highFreq;
- (id)wiFiEnhOclChannelsAffectedByCellUlLowFreq:(double)freq cellUlHighFreq:(double)highFreq;
- (id)wifi5GHzChannelsAffectedByNR79UlLowFreq:(double)freq cellUlHighFreq:(double)highFreq;
- (id)wifiChannelsAffectedByCellUlLowFreq:(double)freq cellUlHighFreq:(double)highFreq wifi5G:(BOOL)g;
- (id)wifiChannelsIMD3ByCellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq wifi5G:(BOOL)g;
- (id)wifiChannelsToAvoidForCellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq wifi5G:(BOOL)g wifiEssentialChannel:(int *)channel;
- (id)wifiChannelsToAvoidWiFiEnhForCellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq;
- (id)wifiOclChannelsAffectedByCellUlLowFreq:(double)freq cellUlHighFreq:(double)highFreq isWifi5G:(BOOL)g;
- (id)wifiPHSChannelsToBlocklistForCellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq wifi5G:(BOOL)g wifiEssentialChannel:(int *)channel;
- (void)cellFreqRangeWithIssueForCellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq wifiLowFreq:(double)wifiLowFreq wifiHighFreq:(double)wifiHighFreq cellTxIssueRange:(id *)range cellRxIssueRange:(id *)self0;
- (void)dealloc;
@end

@implementation WCM_WiFiCellCoexIssue

- (WCM_WiFiCellCoexIssue)initWithCoexIssueConfig:(id *)config
{
  v27.receiver = self;
  v27.super_class = WCM_WiFiCellCoexIssue;
  v4 = [(WCM_WiFiCellCoexIssue *)&v27 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v4->_issueType = config->var1;
  v4->_enableWifiChannelAvoidance = config->var2;
  v4->_wifiUlAntennaBitmapOnCellLAT = config->var3;
  v4->_wifiUlAntennaBitmapOnCellUAT = config->var4;
  v4->_wifiDlAntennaBitmapOnCellLAT = config->var5;
  v4->_wifiDlAntennaBitmapOnCellUAT = config->var6;
  v4->_wifiUlAntennaBitmapOnCellAntBitmap000 = config->var7;
  v4->_wifiUlAntennaBitmapOnCellAntBitmap001 = config->var8;
  v4->_wifiUlAntennaBitmapOnCellAntBitmap010 = config->var9;
  v4->_wifiUlAntennaBitmapOnCellAntBitmap011 = config->var10;
  v4->_wifiUlAntennaBitmapOnCellAntBitmap100 = config->var11;
  v4->_wifiUlAntennaBitmapOnCellAntBitmap101 = config->var12;
  v4->_wifiUlAntennaBitmapOnCellAntBitmap110 = config->var13;
  v4->_wifiUlAntennaBitmapOnCellAntBitmap111 = config->var14;
  v4->_wifiDlAntennaBitmapOnCellAntBitmap000 = config->var15;
  v4->_wifiDlAntennaBitmapOnCellAntBitmap001 = config->var16;
  v4->_wifiDlAntennaBitmapOnCellAntBitmap010 = config->var17;
  v4->_wifiDlAntennaBitmapOnCellAntBitmap011 = config->var18;
  v4->_wifiDlAntennaBitmapOnCellAntBitmap100 = config->var19;
  v4->_wifiDlAntennaBitmapOnCellAntBitmap101 = config->var20;
  v4->_wifiDlAntennaBitmapOnCellAntBitmap110 = config->var21;
  v4->_wifiDlAntennaBitmapOnCellAntBitmap111 = config->var22;
  v4->_cellTxPowerLimit = config->var23;
  v4->_cellFrequencyLimitForOOB = config->var24;
  v4->_cellBandwidthLimitForOOB = config->var25;
  v4->_cellFrequencyLimitForBTAFH = config->var60;
  v4->_btDiversityBlocklistTypeForC0B0 = config->var30;
  v4->_btDiversityBlocklistTypeForC0B1 = config->var31;
  v4->_btDiversityBlocklistTypeForC1B0 = config->var32;
  v4->_btDiversityBlocklistTypeForC1B1 = config->var33;
  v4->_watchAntType = config->var42;
  v4->_wifiBtAgcCoexModeEnable = config->var43;
  v4->_ulcaPriority = config->var44;
  v4->_ulcaPriorityCCWiFi = config->var45;
  v4->_ulcaPriorityCCBT = config->var46;
  v4->_btAgcCoexModeEnable = config->var47;
  v6 = config->var48;
  v4->_cellAntBlkEnableIdx = v6;
  v4->_isWifiConditionalMitigationRequired = v6 != 0;
  v4->_isWifiEnhBand = config->var51;
  v4->_HFBTAntBlkBandUnii1Enabled = config->var54;
  v4->_HFBTAntBlkBandUnii3Enabled = config->var55;
  v4->_HFBTAntBlkBandUnii5aEnabled = config->var56;
  v4->_HFBTAntBlkBandUnii5bEnabled = config->var57;
  v4->_HFBTAntBlkBandUnii5cEnabled = config->var58;
  v4->_HFBTAntBlkBandUnii5dEnabled = config->var59;
  if ((v4->_issueType & 0xFFFFFFFE) != 0xC)
  {
    return v5;
  }

  v7 = sub_100090054(config->var51, config->var26, config->var27);
  if (v7)
  {
    wifiChannelsToAvoidForCellOOB = [(NSMutableArray *)v7 copy];
    v5->_wifiChannelsToAvoidForCellOOB = wifiChannelsToAvoidForCellOOB;
  }

  else
  {
    if (config->var26 || config->var27)
    {
      configCopy6 = config;
      v11 = @"pIssueConfig(%p) has invalid WiFi channel to avoid on OOB";
LABEL_47:
      [WCM_Logging logLevel:0 message:v11, configCopy6, var0, v26];
      goto LABEL_48;
    }

    wifiChannelsToAvoidForCellOOB = v5->_wifiChannelsToAvoidForCellOOB;
  }

  [WCM_Logging logLevel:4 message:@"initWithCoexIssueConfig: _wifiChannelsToAvoidForCellOOB: %@", wifiChannelsToAvoidForCellOOB];
  v9 = sub_100090054(config->var51, config->var49, config->var50);
  if (!v9)
  {
    if (!*&config->var49)
    {
      wifiChannelsToAvoidForOCL = v5->_wifiChannelsToAvoidForOCL;
      goto LABEL_13;
    }

    [WCM_Logging logLevel:4 message:@"initWithCoexIssueConfig pIssueConfig(%p) has invalid WiFi OCL channel [%d, %d] to avoid on OOB. Going back to use wifiChannelsToAvoidForCellOOB", config, config->var49, config->var50];
    v9 = v5->_wifiChannelsToAvoidForCellOOB;
  }

  wifiChannelsToAvoidForOCL = [(NSMutableArray *)v9 copy];
  v5->_wifiChannelsToAvoidForOCL = wifiChannelsToAvoidForOCL;
LABEL_13:
  [WCM_Logging logLevel:4 message:@"initWithCoexIssueConfig: _wifiChannelsToAvoidForOCL: %@", wifiChannelsToAvoidForOCL];
  v12 = sub_100090054(config->var51, config->var52, config->var53);
  if (!v12)
  {
    if (*&config->var52)
    {
      [WCM_Logging logLevel:4 message:@"pIssueConfig(%p) has invalid WiFi PHS channel [%d, %d] to avoid on OOB. Going back to use wifiChannelsToAvoidForCellOOB", config, config->var52, config->var53];
LABEL_48:

      return 0;
    }

    v12 = v5->_wifiChannelsToAvoidForCellOOB;
  }

  v13 = [(NSMutableArray *)v12 copy];
  v5->_wifiChannelsToAvoidForPHS = v13;
  [WCM_Logging logLevel:4 message:@"initWithCoexIssueConfig: _wifiChannelsToAvoidForPHS: %@", v13];
  v14 = sub_100090054(config->var51, config->var28, config->var29);
  if (v14)
  {
    v5->_wifiChannelsToDoAntennaSelectionForCellOOB = [(NSMutableArray *)v14 copy];
    goto LABEL_18;
  }

  if (config->var28 || config->var29)
  {
    configCopy6 = config;
    var0 = config->var0;
    v11 = @"pIssueConfig(%p) and pIssueConfig->_issueBand(%d) has invalid WiFi channel to do antenna selection on OOB";
    goto LABEL_47;
  }

LABEL_18:
  if (v5->_btDiversityBlocklistTypeForC0B0 != 3)
  {
    goto LABEL_23;
  }

  var34 = config->var34;
  if (var34 > 0x4E || (var35 = config->var35, var35 > 0x4E) || var34 > var35)
  {
    configCopy6 = config;
    v11 = @"pIssueConfig(%p) has invalid BT channel to avoid for C0B0";
    goto LABEL_47;
  }

  v5->_btChannelsToAvoidForC0B0 = sub_10008F890(var34, var35);
LABEL_23:
  if (v5->_btDiversityBlocklistTypeForC0B1 != 3)
  {
    goto LABEL_28;
  }

  var36 = config->var36;
  if (var36 > 0x4E || (var37 = config->var37, var37 > 0x4E) || var36 > var37)
  {
    configCopy6 = config;
    v11 = @"pIssueConfig(%p) has invalid BT channel to avoid for C0B1";
    goto LABEL_47;
  }

  v5->_btChannelsToAvoidForC0B1 = sub_10008F890(var36, var37);
LABEL_28:
  if (v5->_btDiversityBlocklistTypeForC1B0 != 3)
  {
    goto LABEL_33;
  }

  var38 = config->var38;
  if (var38 > 0x4E || (var39 = config->var39, var39 > 0x4E) || var38 > var39)
  {
    configCopy6 = config;
    v11 = @"pIssueConfig(%p) has invalid BT channel to avoid for C1B0";
    goto LABEL_47;
  }

  v5->_btChannelsToAvoidForC1B0 = sub_10008F890(var38, var39);
LABEL_33:
  if (v5->_btDiversityBlocklistTypeForC1B1 == 3)
  {
    v21 = config->var40;
    if (v21 <= 0x4E)
    {
      var41 = config->var41;
      if (var41 <= 0x4E && v21 <= var41)
      {
        v5->_btChannelsToAvoidForC1B1 = sub_10008F890(v21, var41);
        return v5;
      }
    }

    configCopy6 = config;
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

- (id)wifiChannelsAffectedByCellUlLowFreq:(double)freq cellUlHighFreq:(double)highFreq wifi5G:(BOOL)g
{
  gCopy = g;
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

  v10 = highFreq - freq;
  v11 = 2402.0;
  if (gCopy)
  {
    v11 = 5160.0;
  }

  issueType = self->_issueType;
  if (issueType > 11)
  {
    if (issueType == 12)
    {
      if (self->_cellFrequencyLimitForOOB <= freq)
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

      if (self->_cellFrequencyLimitForOOB >= highFreq)
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
    v13 = freq * 3.0;
    v14 = (v10 + freq) * 3.0 - freq * 3.0;
    if (freq * 3.0 >= v11)
    {
      v11 = freq * 3.0;
    }

    v19 = 2482.0;
    if (gCopy)
    {
      v19 = 5835.0;
    }

    if (v13 + v14 < v19)
    {
      v19 = v13 + v14;
    }

    if (v11 < v19)
    {
      [WCM_Logging logLevel:4 message:@"3 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&freq, *&highFreq, freq * 3.0, v13 + v14];
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

  v13 = freq + freq;
  v14 = v10 + freq + v10 + freq - (freq + freq);
  if (freq + freq >= v11)
  {
    v11 = freq + freq;
  }

  v15 = 2482.0;
  if (gCopy)
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

  [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&freq, *&highFreq, freq + freq, v13 + v14];
LABEL_36:

  return sub_10000B5B4(0, v13, v14);
}

- (id)wiFiEnhChannelsAffectedByCellUlLowFreq:(double)freq cellUlHighFreq:(double)highFreq
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

  v8 = highFreq - freq;
  issueType = self->_issueType;
  if (issueType > 11)
  {
    if (issueType == 12)
    {
      if (self->_cellFrequencyLimitForOOB <= freq)
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

      if (self->_cellFrequencyLimitForOOB >= highFreq)
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
    v10 = freq * 3.0;
    v11 = (v8 + freq) * 3.0 - freq * 3.0;
    if (freq * 3.0 >= 5945.0)
    {
      v16 = freq * 3.0;
    }

    else
    {
      v16 = 5945.0;
    }

    if (v16 < fmin(v10 + v11, 7125.0))
    {
      [WCM_Logging logLevel:4 message:@"WiFiEnhBitmap_: 3 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&freq, *&highFreq, freq * 3.0, v10 + v11];
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

  v10 = freq + freq;
  v11 = v8 + freq + v8 + freq - (freq + freq);
  if (freq + freq >= 5945.0)
  {
    v12 = freq + freq;
  }

  else
  {
    v12 = 5945.0;
  }

  if (v12 >= fmin(v10 + v11, 7125.0))
  {
    return &__NSArray0__struct;
  }

  [WCM_Logging logLevel:4 message:@"WiFiEnhBitmap_: 2 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&freq, *&highFreq, freq + freq, v10 + v11];
LABEL_28:

  return sub_10008F480(v10, v11);
}

- (id)wifiOclChannelsAffectedByCellUlLowFreq:(double)freq cellUlHighFreq:(double)highFreq isWifi5G:(BOOL)g
{
  gCopy = g;
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

  v10 = highFreq - freq;
  v11 = 2402.0;
  if (gCopy)
  {
    v11 = 5160.0;
  }

  issueType = self->_issueType;
  if (issueType > 11)
  {
    if (issueType == 12)
    {
      if (self->_cellFrequencyLimitForOOB <= freq)
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

      if (self->_cellFrequencyLimitForOOB >= highFreq)
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
    v13 = freq * 3.0;
    v14 = (v10 + freq) * 3.0 - freq * 3.0;
    if (freq * 3.0 >= v11)
    {
      v11 = freq * 3.0;
    }

    v19 = 2482.0;
    if (gCopy)
    {
      v19 = 5835.0;
    }

    if (v13 + v14 < v19)
    {
      v19 = v13 + v14;
    }

    if (v11 < v19)
    {
      [WCM_Logging logLevel:4 message:@"3 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&freq, *&highFreq, freq * 3.0, v13 + v14];
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

  v13 = freq + freq;
  v14 = v10 + freq + v10 + freq - (freq + freq);
  if (freq + freq >= v11)
  {
    v11 = freq + freq;
  }

  v15 = 2482.0;
  if (gCopy)
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

  [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&freq, *&highFreq, freq + freq, v13 + v14];
LABEL_36:

  return sub_10000B5B4(0, v13, v14);
}

- (id)wiFiEnhOclChannelsAffectedByCellUlLowFreq:(double)freq cellUlHighFreq:(double)highFreq
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

  v8 = highFreq - freq;
  issueType = self->_issueType;
  if (issueType > 11)
  {
    if (issueType == 12)
    {
      if (self->_cellFrequencyLimitForOOB <= freq)
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

      if (self->_cellFrequencyLimitForOOB >= highFreq)
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
    v10 = freq * 3.0;
    v11 = (v8 + freq) * 3.0 - freq * 3.0;
    if (freq * 3.0 >= 5945.0)
    {
      v16 = freq * 3.0;
    }

    else
    {
      v16 = 5945.0;
    }

    if (v16 < fmin(v10 + v11, 7125.0))
    {
      [WCM_Logging logLevel:4 message:@"WiFiEnhBitmap_: 3 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&freq, *&highFreq, freq * 3.0, v10 + v11];
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

  v10 = freq + freq;
  v11 = v8 + freq + v8 + freq - (freq + freq);
  if (freq + freq >= 5945.0)
  {
    v12 = freq + freq;
  }

  else
  {
    v12 = 5945.0;
  }

  if (v12 >= fmin(v10 + v11, 7125.0))
  {
    return &__NSArray0__struct;
  }

  [WCM_Logging logLevel:4 message:@"WiFiEnhBitmap_: 2 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&freq, *&highFreq, freq + freq, v10 + v11];
LABEL_28:

  return sub_10008F480(v10, v11);
}

- (id)wifi5GHzChannelsAffectedByNR79UlLowFreq:(double)freq cellUlHighFreq:(double)highFreq
{
  if (([(WCM_WiFiCellCoexIssue *)self issueType]& 0xFFFFFFFE) == 0xC && self->_enableWifiChannelAvoidance && self->_issueType == 13 && self->_cellFrequencyLimitForOOB < highFreq && highFreq - freq > self->_cellBandwidthLimitForOOB)
  {
    return self->_wifiChannelsToAvoidForCellOOB;
  }

  else
  {
    return &__NSArray0__struct;
  }
}

- (id)wifiChannelsIMD3ByCellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq wifi5G:(BOOL)g
{
  v12 = ulHighFreq - lowFreq;
  v13 = highFreq - freq;
  if (g)
  {
    v14 = 5160.0;
  }

  else
  {
    v14 = 2402.0;
  }

  if (g)
  {
    v15 = 675.0;
  }

  else
  {
    v15 = 80.0;
  }

  v16 = +[NSMutableArray array];
  if (sub_10008E324(0, lowFreq, v12, v14, v15, freq, v13))
  {
    v17 = -(highFreq - lowFreq * 2.0);
    v18 = -(freq - ulHighFreq * 2.0) - v17 - (highFreq - lowFreq * 2.0);
    [WCM_Logging logLevel:4 message:@"TYPE7_2GWIFI_SUPPORT_: 2 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = CellRx(%lf~%lf)", *&lowFreq, *&ulHighFreq, *&v17, *&v18, *&freq, *&highFreq];
    if (g)
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
          v23 = -(highFreq - lowFreq * 2.0);
        }

        v24 = v22 + v21;
        if (v24 >= v18)
        {
          v24 = -(freq - ulHighFreq * 2.0) - v17 - (highFreq - lowFreq * 2.0);
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
          v27 = -(highFreq - lowFreq * 2.0);
        }

        v28 = (i + 20);
        if (v18 <= v28)
        {
          v28 = -(freq - ulHighFreq * 2.0) - v17 - (highFreq - lowFreq * 2.0);
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

- (id)getAllBtChannelsInBandForBtHighFreq:(double)freq btLowFreq:(double)lowFreq
{
  if (freq > 5250.0 || lowFreq < 5150.0)
  {
    if (freq > 5850.0 || lowFreq < 5725.0)
    {
      if ((freq > 6050.0 || lowFreq < 5925.0) && (freq > 6175.0 || lowFreq < 6051.0) && (freq > 6300.0 || lowFreq < 6176.0))
      {
        if (freq > 6425.0 || (freq = 6301.0, lowFreq < 6301.0))
        {
          [WCM_Logging logLevel:0 message:@"Unknown BT band range", freq, lowFreq];
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

- (id)HFBTAntBlkBandsForCellUlLowFreq:(double)freq cellUlHighFreq:(double)highFreq
{
  v7 = [&off_10028D8F0 mutableCopy];
  issueType = self->_issueType;
  if (issueType == 13)
  {
    if (([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] & 1) != 0 || self->_cellFrequencyLimitForOOB >= highFreq)
    {
      return v7;
    }
  }

  else if (issueType != 12 || ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] & 1) != 0 || self->_cellFrequencyLimitForOOB <= freq)
  {
    return v7;
  }

  if (highFreq - freq > self->_cellBandwidthLimitForOOB && self->_wifiChannelsToAvoidForCellOOB)
  {
    [v7 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", self->_HFBTAntBlkBandUnii1Enabled, highFreq - freq), @"AntBlkBandUnii1Enabled"}];
    [v7 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", self->_HFBTAntBlkBandUnii3Enabled), @"AntBlkBandUnii3Enabled"}];
    [v7 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", self->_HFBTAntBlkBandUnii5aEnabled), @"AntBlkBandUnii5aEnabled"}];
    [v7 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", self->_HFBTAntBlkBandUnii5bEnabled), @"AntBlkBandUnii5bEnabled"}];
    [v7 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", self->_HFBTAntBlkBandUnii5cEnabled), @"AntBlkBandUnii5cEnabled"}];
    [v7 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", self->_HFBTAntBlkBandUnii5dEnabled), @"AntBlkBandUnii5dEnabled"}];
  }

  return v7;
}

- (id)wifiChannelsToAvoidForCellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq wifi5G:(BOOL)g wifiEssentialChannel:(int *)channel
{
  if (g)
  {
    v10 = 5160.0;
  }

  else
  {
    v10 = 2402.0;
  }

  if (g)
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
    gCopy = g;
    v18 = ulHighFreq - lowFreq;
    v19 = highFreq - freq;
    switch(issueType)
    {
      case 0:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_3CELL_3FO_WIFI_VICTIM ..."];
        v20 = lowFreq * 3.0;
        v21 = (v18 + lowFreq) * 3.0 - lowFreq * 3.0;
        if (lowFreq * 3.0 >= v10)
        {
          v22 = lowFreq * 3.0;
        }

        else
        {
          v22 = v10;
        }

        v23 = 2482.0;
        if (gCopy)
        {
          v23 = 5835.0;
        }

        if (v20 + v21 < v23)
        {
          v23 = v20 + v21;
        }

        if (v22 < v23)
        {
          [WCM_Logging logLevel:4 message:@"3 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&lowFreq, *&ulHighFreq, lowFreq * 3.0, v20 + v21, v61, v62];
          goto LABEL_100;
        }

        v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_3CELL_3FO_WIFI_VICTIM ...No Coex Issue found";
        goto LABEL_130;
      case 1:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_2WIFI_CELL_IMD3_CELL_VICTIM ..."];
        if (!sub_10008E324(0, v10, v11, lowFreq, v18, freq, highFreq - freq))
        {
          goto LABEL_75;
        }

        v32 = (freq + lowFreq) * 0.5;
        v33 = (highFreq + ulHighFreq) * 0.5 - v32;
        [WCM_Logging logLevel:4 message:@"2 x WifiTx(%lf~%lf) - CellTx(%lf~%lf) = CellRx(%lf~%lf)", *&v32, v32 + v33, *&lowFreq, *&ulHighFreq, *&freq, *&highFreq];
        goto LABEL_113;
      case 2:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_CELL_IMD2_GPS_VICTIM ..."];
        if (sub_10008E278(0, v10, v11, lowFreq, v18, 1573.374, 4.092))
        {
          v20 = lowFreq + 1573.374;
          v21 = ulHighFreq + 1577.466 - (lowFreq + 1573.374);
          [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - CellTx(%lf~%lf) = GpsRx(%lf~%lf)", lowFreq + 1573.374, lowFreq + 1573.374 + v21, *&lowFreq, *&ulHighFreq, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
          goto LABEL_100;
        }

        v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_CELL_IMD2_GPS_VICTIM ...No Coex Issue found";
        goto LABEL_130;
      case 3:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_CELL_IMD2_CELL_VICTIM ..."];
        if (sub_10008E278(0, v10, v11, lowFreq, v18, freq, highFreq - freq))
        {
          v32 = freq + lowFreq;
          v33 = highFreq + ulHighFreq - (freq + lowFreq);
          [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - CellTx(%lf~%lf) = CellRx(%lf~%lf)", freq + lowFreq, freq + lowFreq + v33, *&lowFreq, *&ulHighFreq, *&freq, *&highFreq];
          goto LABEL_113;
        }

        v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_CELL_IMD2_CELL_VICTIM ...No Coex Issue found";
        goto LABEL_130;
      case 4:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_2CELL_WIFI_IMD3_CELL_VICTIM ..."];
        if (sub_10008E324(0, lowFreq, v18, v10, v11, freq, highFreq - freq))
        {
          v32 = -(highFreq - lowFreq * 2.0);
          v33 = -(freq - ulHighFreq * 2.0) - v32;
          [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = CellRx(%lf~%lf)", *&lowFreq, *&ulHighFreq, *&v32, v33 - (highFreq - lowFreq * 2.0), *&freq, *&highFreq];
          goto LABEL_113;
        }

LABEL_75:
        v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_2WIFI_CELL_IMD3_CELL_VICTIM ...No Coex Issue found";
        goto LABEL_130;
      case 5:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_2CELL_WIFI_IMD3_GPS_VICTIM ..."];
        if (sub_10008E324(0, lowFreq, v18, v10, v11, 1573.374, 4.092))
        {
          v20 = lowFreq * 2.0 + -1577.466;
          v21 = ulHighFreq * 2.0 + -1573.374 - v20;
          [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = GpsRx(%lf~%lf)", *&lowFreq, *&ulHighFreq, *&v20, v20 + v21, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
          goto LABEL_100;
        }

        v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_2CELL_WIFI_IMD3_GPS_VICTIM ...No Coex Issue found";
        goto LABEL_130;
      case 6:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_2CELL_IMD3_GPS_VICTIM ..."];
        if (sub_10008E324(0, v10, v11, lowFreq, v18, 1573.374, 4.092))
        {
          v20 = lowFreq * 2.0 + 1573.374;
          v21 = ulHighFreq * 2.0 + 1577.466 - v20;
          [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - 2 x CellTx(%lf~%lf) = GpsRx(%lf~%lf)", *&v20, v20 + v21, *&lowFreq, *&ulHighFreq, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
          goto LABEL_100;
        }

        v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_2CELL_IMD3_GPS_VICTIM ...No Coex Issue found";
        goto LABEL_130;
      case 7:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_2CELL_IMD3_CELL_VICTIM ..."];
        if (sub_10008E324(0, v10, v11, lowFreq, v18, freq, highFreq - freq))
        {
          v32 = freq + lowFreq * 2.0;
          v33 = highFreq + ulHighFreq * 2.0 - v32;
          [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - 2 x CellTx(%lf~%lf) = CellRx(%lf~%lf)", *&v32, v32 + v33, *&lowFreq, *&ulHighFreq, *&freq, *&highFreq];
          goto LABEL_113;
        }

        v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_2CELL_IMD3_CELL_VICTIM ...No Coex Issue found";
        goto LABEL_130;
      case 8:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_4CELL_WIFI_IMD5_CELL_VICTIM ..."];
        if (!sub_10008E404(0, lowFreq, v18, v10, v11, freq, highFreq - freq))
        {
          v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_4CELL_WIFI_IMD5_CELL_VICTIM ...No Coex Issue found";
          goto LABEL_130;
        }

        v32 = -(highFreq - lowFreq * 4.0);
        v33 = -(freq - ulHighFreq * 4.0) - v32;
        [WCM_Logging logLevel:4 message:@"4 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = CellRx(%lf~%lf)", *&lowFreq, *&ulHighFreq, *&v32, v33 - (highFreq - lowFreq * 4.0), *&freq, *&highFreq];
LABEL_113:
        v54 = v32;
        v55 = v33;
        goto LABEL_114;
      case 9:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_2CELL_2FO_WIFI_VICTIM ..."];
        v20 = lowFreq + lowFreq;
        v21 = v18 + lowFreq + v18 + lowFreq - (lowFreq + lowFreq);
        if (lowFreq + lowFreq >= v10)
        {
          v42 = lowFreq + lowFreq;
        }

        else
        {
          v42 = v10;
        }

        v43 = 2482.0;
        if (gCopy)
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

        [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&lowFreq, *&ulHighFreq, lowFreq + lowFreq, v20 + v21, v61, v62];
LABEL_100:
        v54 = v20;
        v55 = v21;
        goto LABEL_114;
      case 10:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_2RECIPROCAL_CELL_VICTIM ..."];
        v24 = v10 * 0.5;
        v56 = 1241.0;
        if (gCopy)
        {
          v56 = 2917.5;
        }

        v26 = v56 - v24;
        if (v24 >= freq)
        {
          freqCopy = v10 * 0.5;
        }

        else
        {
          freqCopy = freq;
        }

        v58 = v19 + freq;
        if (v24 + v26 < v19 + freq)
        {
          v58 = v24 + v26;
        }

        if (freqCopy < v58)
        {
          [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) / 2 = CellRx(%lf~%lf)", v10 * 0.5, v24 + v26, *&freq, *&highFreq];
          goto LABEL_110;
        }

        v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_2RECIPROCAL_CELL_VICTIM ...No Coex Issue found";
        goto LABEL_130;
      case 11:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_3RECIPROCAL_CELL_VICTIM ..."];
        v24 = v10 / 3.0;
        v29 = 827.333333;
        if (gCopy)
        {
          v29 = 1945.0;
        }

        v26 = v29 - v24;
        if (v24 >= freq)
        {
          freqCopy2 = v10 / 3.0;
        }

        else
        {
          freqCopy2 = freq;
        }

        v31 = v19 + freq;
        if (v24 + v26 < v19 + freq)
        {
          v31 = v24 + v26;
        }

        if (freqCopy2 < v31)
        {
          [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) / 3 = CellRx(%lf~%lf)", v10 / 3.0, v24 + v26, *&freq, *&highFreq];
          goto LABEL_110;
        }

        v44 = @"wifiChannelsToAvoid: Check ISSUE_TYPE_WIFI_3RECIPROCAL_CELL_VICTIM ...No Coex Issue found";
        goto LABEL_130;
      case 12:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_OOB_ISM_RIGHT for freq < %f, bw > %f ...", *&self->_cellFrequencyLimitForOOB, *&self->_cellBandwidthLimitForOOB];
        if (self->_cellFrequencyLimitForOOB <= lowFreq || v18 <= self->_cellBandwidthLimitForOOB)
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

              intValue = [*(*(&v67 + 1) + 8 * i) intValue];
              v41 = intValue > 0xB || ((1 << intValue) & 0x842) == 0;
              if (!v41 && intValue < v38)
              {
                v38 = intValue;
              }
            }

            v36 = [(NSArray *)wifiChannelsToAvoidForCellOOB countByEnumeratingWithState:&v67 objects:v72 count:16];
          }

          while (v36);
          if (channel && v38 != 13)
          {
            *channel = v38;
          }
        }

        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_OOB_ISM_RIGHT... return channels %@", self->_wifiChannelsToAvoidForCellOOB];
        return self->_wifiChannelsToAvoidForCellOOB;
      case 13:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_OOB_ISM_LEFT for freq > %f, bw > %f ...", *&self->_cellFrequencyLimitForOOB, *&self->_cellBandwidthLimitForOOB];
        if (self->_cellFrequencyLimitForOOB >= ulHighFreq || v18 <= self->_cellBandwidthLimitForOOB)
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

              intValue2 = [*(*(&v63 + 1) + 8 * j) intValue];
              v52 = intValue2 > 0xB || ((1 << intValue2) & 0x842) == 0;
              if (!v52 && intValue2 > v48)
              {
                v48 = intValue2;
              }
            }

            v47 = [(NSArray *)v45 countByEnumeratingWithState:&v63 objects:v71 count:16];
          }

          while (v47);
          if (channel && v48)
          {
            *channel = v48;
          }
        }

        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_OOB_ISM_LEFT... return channels %@", self->_wifiChannelsToAvoidForCellOOB];
        return self->_wifiChannelsToAvoidForCellOOB;
      case 14:
        [WCM_Logging logLevel:4 message:@"wifiChannelsToAvoid: Check ISSUE_TYPE_2WIFI_2FO_CELL_VICTIM ..."];
        v24 = v10 + v10;
        v25 = 4964.0;
        if (gCopy)
        {
          v25 = 11670.0;
        }

        v26 = v25 - v24;
        if (v24 >= freq)
        {
          freqCopy3 = v10 + v10;
        }

        else
        {
          freqCopy3 = freq;
        }

        v28 = v19 + freq;
        if (v24 + v26 < v19 + freq)
        {
          v28 = v24 + v26;
        }

        if (freqCopy3 < v28)
        {
          [WCM_Logging logLevel:4 message:@"(2 x WiFiTx)(i.e. %lf~%lf) = CellRx(%lf~%lf)", v10 + v10, v24 + v26, *&freq, *&highFreq];
LABEL_110:
          v54 = v24;
          v55 = v26;
LABEL_114:

          return sub_10000B5B4(channel, v54, v55);
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

- (id)wifiPHSChannelsToBlocklistForCellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq wifi5G:(BOOL)g wifiEssentialChannel:(int *)channel
{
  if (g)
  {
    v12 = 5160.0;
  }

  else
  {
    v12 = 2402.0;
  }

  if (g)
  {
    v13 = 675.0;
  }

  else
  {
    v13 = 80.0;
  }

  issueType = self->_issueType;
  v17 = ulHighFreq - lowFreq;
  v18 = highFreq - freq;
  switch(issueType)
  {
    case 0:
      v19 = lowFreq * 3.0;
      v20 = (v17 + lowFreq) * 3.0 - lowFreq * 3.0;
      if (lowFreq * 3.0 >= v12)
      {
        v21 = lowFreq * 3.0;
      }

      else
      {
        v21 = v12;
      }

      v22 = 2482.0;
      if (g)
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

      [WCM_Logging logLevel:4 message:@"3 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&lowFreq, *&ulHighFreq, lowFreq * 3.0, v19 + v20, v56, v57];
      goto LABEL_96;
    case 1:
      if (!sub_10008E324(0, v12, v13, lowFreq, v17, freq, v18))
      {
        goto LABEL_113;
      }

      v31 = (freq + lowFreq) * 0.5;
      v32 = (highFreq + ulHighFreq) * 0.5 - v31;
      [WCM_Logging logLevel:4 message:@"2 x WifiTx(%lf~%lf) - CellTx(%lf~%lf) = CellRx(%lf~%lf)", *&v31, v31 + v32, *&lowFreq, *&ulHighFreq, *&freq, *&highFreq];
      goto LABEL_109;
    case 2:
      if (!sub_10008E278(0, v12, v13, lowFreq, v17, 1573.374, 4.092))
      {
        goto LABEL_113;
      }

      v19 = lowFreq + 1573.374;
      v20 = ulHighFreq + 1577.466 - (lowFreq + 1573.374);
      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - CellTx(%lf~%lf) = GpsRx(%lf~%lf)", lowFreq + 1573.374, lowFreq + 1573.374 + v20, *&lowFreq, *&ulHighFreq, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
      goto LABEL_96;
    case 3:
      if (!sub_10008E278(0, v12, v13, lowFreq, v17, freq, v18))
      {
        goto LABEL_113;
      }

      v31 = freq + lowFreq;
      v32 = highFreq + ulHighFreq - (freq + lowFreq);
      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - CellTx(%lf~%lf) = CellRx(%lf~%lf)", freq + lowFreq, freq + lowFreq + v32, *&lowFreq, *&ulHighFreq, *&freq, *&highFreq];
      goto LABEL_109;
    case 4:
      if (!sub_10008E324(0, lowFreq, v17, v12, v13, freq, v18))
      {
        goto LABEL_113;
      }

      v31 = -(highFreq - lowFreq * 2.0);
      v32 = -(freq - ulHighFreq * 2.0) - v31;
      [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = CellRx(%lf~%lf)", *&lowFreq, *&ulHighFreq, *&v31, v32 - (highFreq - lowFreq * 2.0), *&freq, *&highFreq];
      goto LABEL_109;
    case 5:
      if (!sub_10008E324(0, lowFreq, v17, v12, v13, 1573.374, 4.092))
      {
        goto LABEL_113;
      }

      v19 = lowFreq * 2.0 + -1577.466;
      v20 = ulHighFreq * 2.0 + -1573.374 - v19;
      [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = GpsRx(%lf~%lf)", *&lowFreq, *&ulHighFreq, *&v19, v19 + v20, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
      goto LABEL_96;
    case 6:
      if (!sub_10008E324(0, v12, v13, lowFreq, v17, 1573.374, 4.092))
      {
        goto LABEL_113;
      }

      v19 = lowFreq * 2.0 + 1573.374;
      v20 = ulHighFreq * 2.0 + 1577.466 - v19;
      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - 2 x CellTx(%lf~%lf) = GpsRx(%lf~%lf)", *&v19, v19 + v20, *&lowFreq, *&ulHighFreq, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
      goto LABEL_96;
    case 7:
      if (!sub_10008E324(0, v12, v13, lowFreq, v17, freq, v18))
      {
        goto LABEL_113;
      }

      v31 = freq + lowFreq * 2.0;
      v32 = highFreq + ulHighFreq * 2.0 - v31;
      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - 2 x CellTx(%lf~%lf) = CellRx(%lf~%lf)", *&v31, v31 + v32, *&lowFreq, *&ulHighFreq, *&freq, *&highFreq];
      goto LABEL_109;
    case 8:
      if (!sub_10008E404(0, lowFreq, v17, v12, v13, freq, v18))
      {
        goto LABEL_113;
      }

      v31 = -(highFreq - lowFreq * 4.0);
      v32 = -(freq - ulHighFreq * 4.0) - v31;
      [WCM_Logging logLevel:4 message:@"4 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = CellRx(%lf~%lf)", *&lowFreq, *&ulHighFreq, *&v31, v32 - (highFreq - lowFreq * 4.0), *&freq, *&highFreq];
LABEL_109:
      v51 = v31;
      v52 = v32;
      goto LABEL_110;
    case 9:
      v19 = lowFreq + lowFreq;
      v20 = v17 + lowFreq + v17 + lowFreq - (lowFreq + lowFreq);
      if (lowFreq + lowFreq >= v12)
      {
        v41 = lowFreq + lowFreq;
      }

      else
      {
        v41 = v12;
      }

      v42 = 2482.0;
      if (g)
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

      [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&lowFreq, *&ulHighFreq, lowFreq + lowFreq, v19 + v20, v56, v57];
LABEL_96:
      v51 = v19;
      v52 = v20;
      goto LABEL_110;
    case 10:
      v23 = v12 * 0.5;
      v53 = 1241.0;
      if (g)
      {
        v53 = 2917.5;
      }

      v25 = v53 - v23;
      if (v23 >= freq)
      {
        freqCopy = v12 * 0.5;
      }

      else
      {
        freqCopy = freq;
      }

      v55 = v18 + freq;
      if (v23 + v25 < v18 + freq)
      {
        v55 = v23 + v25;
      }

      if (freqCopy >= v55)
      {
        goto LABEL_113;
      }

      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) / 2 = CellRx(%lf~%lf)", *&v23, v23 + v25, *&freq, *&highFreq];
      goto LABEL_106;
    case 11:
      v23 = v12 / 3.0;
      v28 = 827.333333;
      if (g)
      {
        v28 = 1945.0;
      }

      v25 = v28 - v23;
      if (v23 >= freq)
      {
        freqCopy2 = v12 / 3.0;
      }

      else
      {
        freqCopy2 = freq;
      }

      v30 = v18 + freq;
      if (v23 + v25 < v18 + freq)
      {
        v30 = v23 + v25;
      }

      if (freqCopy2 >= v30)
      {
        goto LABEL_113;
      }

      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) / 3 = CellRx(%lf~%lf)", *&v23, v23 + v25, *&freq, *&highFreq];
      goto LABEL_106;
    case 12:
      if (self->_cellFrequencyLimitForOOB <= lowFreq || v17 <= self->_cellBandwidthLimitForOOB)
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

          intValue = [*(*(&v62 + 1) + 8 * i) intValue];
          v40 = intValue > 0xB || ((1 << intValue) & 0x842) == 0;
          if (!v40 && intValue < v37)
          {
            v37 = intValue;
          }
        }

        v35 = [(NSArray *)wifiChannelsToAvoidForCellOOB countByEnumeratingWithState:&v62 objects:v67 count:16];
      }

      while (v35);
      if (!channel || v37 == 13)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    case 13:
      if (self->_cellFrequencyLimitForOOB >= ulHighFreq || v17 <= self->_cellBandwidthLimitForOOB)
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

            intValue2 = [*(*(&v58 + 1) + 8 * j) intValue];
            v49 = intValue2 > 0xB || ((1 << intValue2) & 0x842) == 0;
            if (!v49 && intValue2 > v37)
            {
              v37 = intValue2;
            }
          }

          v45 = [(NSArray *)v43 countByEnumeratingWithState:&v58 objects:v66 count:16];
        }

        while (v45);
        if (channel && v37)
        {
LABEL_92:
          *channel = v37;
        }
      }

LABEL_93:
      result = self->_wifiChannelsToAvoidForPHS;
      break;
    case 14:
      v23 = v12 + v12;
      v24 = 4964.0;
      if (g)
      {
        v24 = 11670.0;
      }

      v25 = v24 - v23;
      if (v23 >= freq)
      {
        freqCopy3 = v12 + v12;
      }

      else
      {
        freqCopy3 = freq;
      }

      v27 = v18 + freq;
      if (v23 + v25 < v18 + freq)
      {
        v27 = v23 + v25;
      }

      if (freqCopy3 >= v27)
      {
        goto LABEL_113;
      }

      [WCM_Logging logLevel:4 message:@"(2 x WiFiTx)(i.e. %lf~%lf) = CellRx(%lf~%lf)", *&v23, v23 + v25, *&freq, *&highFreq];
LABEL_106:
      v51 = v23;
      v52 = v25;
LABEL_110:

      result = sub_10000B5B4(channel, v51, v52);
      break;
    default:
      [WCM_Logging logLevel:0 message:@"WCM_WiFiCellCoexIssue(%p) has invalid _issueType(%d)", self, issueType];
LABEL_113:
      result = &__NSArray0__struct;
      break;
  }

  return result;
}

- (id)wifiChannelsToAvoidWiFiEnhForCellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq
{
  if (!self->_enableWifiChannelAvoidance)
  {
    return &__NSArray0__struct;
  }

  issueType = self->_issueType;
  v11 = ulHighFreq - lowFreq;
  v12 = highFreq - freq;
  switch(issueType)
  {
    case 0:
      v13 = lowFreq * 3.0;
      v14 = (v11 + lowFreq) * 3.0 - lowFreq * 3.0;
      if (lowFreq * 3.0 >= 5945.0)
      {
        v15 = lowFreq * 3.0;
      }

      else
      {
        v15 = 5945.0;
      }

      if (v15 >= fmin(v13 + v14, 7125.0))
      {
        return &__NSArray0__struct;
      }

      [WCM_Logging logLevel:4 message:@"3 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&lowFreq, *&ulHighFreq, lowFreq * 3.0, v13 + v14, v29, v30];
      goto LABEL_41;
    case 1:
      if (!sub_10008E324(0, 5945.0, 1180.0, lowFreq, v11, freq, v12))
      {
        return &__NSArray0__struct;
      }

      v22 = (freq + lowFreq) * 0.5;
      v23 = (highFreq + ulHighFreq) * 0.5 - v22;
      [WCM_Logging logLevel:4 message:@"2 x WifiTx(%lf~%lf) - CellTx(%lf~%lf) = CellRx(%lf~%lf)", *&v22, v22 + v23, *&lowFreq, *&ulHighFreq, *&freq, *&highFreq];
      goto LABEL_49;
    case 2:
      if (!sub_10008E278(0, 5945.0, 1180.0, lowFreq, v11, 1573.374, 4.092))
      {
        return &__NSArray0__struct;
      }

      v13 = lowFreq + 1573.374;
      v14 = ulHighFreq + 1577.466 - (lowFreq + 1573.374);
      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - CellTx(%lf~%lf) = GpsRx(%lf~%lf)", lowFreq + 1573.374, lowFreq + 1573.374 + v14, *&lowFreq, *&ulHighFreq, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
      goto LABEL_41;
    case 3:
      if (!sub_10008E278(0, 5945.0, 1180.0, lowFreq, v11, freq, v12))
      {
        return &__NSArray0__struct;
      }

      v22 = freq + lowFreq;
      v23 = highFreq + ulHighFreq - (freq + lowFreq);
      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - CellTx(%lf~%lf) = CellRx(%lf~%lf)", freq + lowFreq, freq + lowFreq + v23, *&lowFreq, *&ulHighFreq, *&freq, *&highFreq];
      goto LABEL_49;
    case 4:
      if (!sub_10008E324(0, lowFreq, v11, 5945.0, 1180.0, freq, v12))
      {
        return &__NSArray0__struct;
      }

      v22 = -(highFreq - lowFreq * 2.0);
      v23 = -(freq - ulHighFreq * 2.0) - v22;
      [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = CellRx(%lf~%lf)", *&lowFreq, *&ulHighFreq, *&v22, v23 - (highFreq - lowFreq * 2.0), *&freq, *&highFreq];
      goto LABEL_49;
    case 5:
      if (!sub_10008E324(0, lowFreq, v11, 5945.0, 1180.0, 1573.374, 4.092))
      {
        return &__NSArray0__struct;
      }

      v13 = lowFreq * 2.0 + -1577.466;
      v14 = ulHighFreq * 2.0 + -1573.374 - v13;
      [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = GpsRx(%lf~%lf)", *&lowFreq, *&ulHighFreq, *&v13, v13 + v14, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
      goto LABEL_41;
    case 6:
      if (!sub_10008E324(0, 5945.0, 1180.0, lowFreq, v11, 1573.374, 4.092))
      {
        return &__NSArray0__struct;
      }

      v13 = lowFreq * 2.0 + 1573.374;
      v14 = ulHighFreq * 2.0 + 1577.466 - v13;
      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - 2 x CellTx(%lf~%lf) = GpsRx(%lf~%lf)", *&v13, v13 + v14, *&lowFreq, *&ulHighFreq, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
      goto LABEL_41;
    case 7:
      if (!sub_10008E324(0, 5945.0, 1180.0, lowFreq, v11, freq, v12))
      {
        return &__NSArray0__struct;
      }

      v22 = freq + lowFreq * 2.0;
      v23 = highFreq + ulHighFreq * 2.0 - v22;
      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - 2 x CellTx(%lf~%lf) = CellRx(%lf~%lf)", *&v22, v22 + v23, *&lowFreq, *&ulHighFreq, *&freq, *&highFreq];
      goto LABEL_49;
    case 8:
      if (!sub_10008E404(0, lowFreq, v11, 5945.0, 1180.0, freq, v12))
      {
        return &__NSArray0__struct;
      }

      v22 = -(highFreq - lowFreq * 4.0);
      v23 = -(freq - ulHighFreq * 4.0) - v22;
      [WCM_Logging logLevel:4 message:@"4 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = CellRx(%lf~%lf)", *&lowFreq, *&ulHighFreq, *&v22, v23 - (highFreq - lowFreq * 4.0), *&freq, *&highFreq];
LABEL_49:
      v26 = v22;
      v19 = v23;
      goto LABEL_50;
    case 9:
      v13 = lowFreq + lowFreq;
      v14 = v11 + lowFreq + v11 + lowFreq - (lowFreq + lowFreq);
      if (lowFreq + lowFreq >= 5945.0)
      {
        v24 = lowFreq + lowFreq;
      }

      else
      {
        v24 = 5945.0;
      }

      if (v24 >= fmin(v13 + v14, 7125.0))
      {
        return &__NSArray0__struct;
      }

      [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", *&lowFreq, *&ulHighFreq, lowFreq + lowFreq, v13 + v14, v29, v30];
LABEL_41:
      v26 = v13;
      v19 = v14;
      goto LABEL_50;
    case 10:
      v16 = 0x40A7390000000000;
      v27 = fmax(freq, 2972.5);
      v28 = v12 + freq;
      if (v12 + freq > 3562.5)
      {
        v28 = 3562.5;
      }

      if (v27 >= v28)
      {
        return &__NSArray0__struct;
      }

      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) / 2 = CellRx(%lf~%lf)", 0x40A7390000000000, 0x40ABD50000000000, *&freq, *&highFreq];
      v19 = 590.0;
      goto LABEL_46;
    case 11:
      v16 = 0x409EF6AAAAAAAAABLL;
      v20 = fmax(freq, 1981.66667);
      v21 = v12 + freq;
      if (v12 + freq > 2375.0)
      {
        v21 = 2375.0;
      }

      if (v20 >= v21)
      {
        return &__NSArray0__struct;
      }

      [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) / 3 = CellRx(%lf~%lf)", 0x409EF6AAAAAAAAABLL, 0x40A28E0000000000, *&freq, *&highFreq];
      v19 = 393.333333;
      goto LABEL_46;
    case 12:
      if (self->_cellFrequencyLimitForOOB <= lowFreq)
      {
        return &__NSArray0__struct;
      }

      goto LABEL_37;
    case 13:
      if (self->_cellFrequencyLimitForOOB >= ulHighFreq)
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
      v17 = fmax(freq, 11890.0);
      v18 = v12 + freq;
      if (v12 + freq > 14250.0)
      {
        v18 = 14250.0;
      }

      if (v17 >= v18)
      {
        return &__NSArray0__struct;
      }

      [WCM_Logging logLevel:4 message:@"(2 x WiFiTx)(i.e. %lf~%lf) = CellRx(%lf~%lf)", 0x40C7390000000000, 0x40CBD50000000000, *&freq, *&highFreq];
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

- (BOOL)wifiBtAgcCoexModeEnabledInPolicy:(double)policy cellDlHighFreq:(double)freq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)highFreq agccoexmode:(int *)agccoexmode
{
  v9 = highFreq - lowFreq;
  issueType = self->_issueType;
  switch(issueType)
  {
    case 0xD:
      if (self->_cellFrequencyLimitForOOB >= highFreq)
      {
        return 0;
      }

      goto LABEL_11;
    case 0xC:
      if (self->_cellFrequencyLimitForOOB <= lowFreq)
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
      v11 = (v9 + lowFreq) * 3.0 - lowFreq * 3.0;
      v12 = 2402.0;
      if (lowFreq * 3.0 >= 2402.0)
      {
        v12 = lowFreq * 3.0;
      }

      if (v12 >= fmin(lowFreq * 3.0 + v11, 2482.0))
      {
        return 0;
      }

LABEL_12:
      *agccoexmode = self->_wifiBtAgcCoexModeEnable;
      return 1;
  }

  [WCM_Logging logLevel:0 message:@"WCM_WiFiCellCoexIssue(%p) has invalid _issueType(%d) in AgcCoexMode", v9, freq, self, issueType, v7, v8];
  return 0;
}

- (void)cellFreqRangeWithIssueForCellDlLowFreq:(double)freq cellDlHighFreq:(double)highFreq cellUlLowFreq:(double)lowFreq cellUlHighFreq:(double)ulHighFreq wifiLowFreq:(double)wifiLowFreq wifiHighFreq:(double)wifiHighFreq cellTxIssueRange:(id *)range cellRxIssueRange:(id *)self0
{
  v38 = 0;
  v37 = 0;
  issueType = self->_issueType;
  freqCopy = freq;
  v17 = ulHighFreq - lowFreq;
  v18 = highFreq - freq;
  v19 = wifiHighFreq - wifiLowFreq;
  switch(issueType)
  {
    case 0:
      v22 = lowFreq * 3.0;
      v23 = (v17 + lowFreq) * 3.0 - lowFreq * 3.0;
      if (v22 >= wifiLowFreq)
      {
        wifiLowFreqCopy = v22;
      }

      else
      {
        wifiLowFreqCopy = wifiLowFreq;
      }

      v25 = v22 + v23;
      if (v25 >= v19 + wifiLowFreq)
      {
        v25 = v19 + wifiLowFreq;
      }

      if (wifiLowFreqCopy < v25)
      {
        v38.var0 = wifiLowFreqCopy / 3.0;
        v38.var1 = (v25 - wifiLowFreqCopy) / 3.0;
        [WCM_Logging logLevel:4 message:@"3 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", wifiLowFreqCopy / 3.0, wifiLowFreqCopy / 3.0 + v38.var1, *&wifiLowFreq, *&wifiHighFreq, v35, v36];
      }

      break;
    case 1:
    case 4:
    case 7:
      if (sub_10008E9F8(0, &v38.var0, &v37.var0, wifiLowFreq, wifiHighFreq - wifiLowFreq, lowFreq, v17, freq, v18))
      {
        [WCM_Logging logLevel:4 message:@"2 x WifiTx(%lf~%lf) - CellTx(%lf~%lf) = CellRx(%lf~%lf)", *&wifiLowFreq, *&wifiHighFreq, *&v38.var0, v38.var0 + v38.var1, *&v37.var0, v37.var0 + v37.var1];
      }

      break;
    case 2:
      if (sub_10008E9F8(0, &v38.var0, 0, wifiLowFreq, v19, lowFreq, v17, 1573.374, 4.092))
      {
        [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - CellTx(%lf~%lf) = GpsRx(%lf~%lf)", *&wifiLowFreq, *&wifiHighFreq, *&v38.var0, v38.var0 + v38.var1, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
      }

      break;
    case 3:
      if (sub_10008E790(0, &v38.var0, &v37.var0, wifiLowFreq, wifiHighFreq - wifiLowFreq, lowFreq, v17, freq, v18))
      {
        [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) - CellTx(%lf~%lf) = CellRx(%lf~%lf)", *&wifiLowFreq, *&wifiHighFreq, *&v38.var0, v38.var0 + v38.var1, *&v37.var0, v37.var0 + v37.var1];
      }

      break;
    case 5:
    case 6:
      if (sub_10008E9F8(&v38.var0, 0, 0, lowFreq, v17, wifiLowFreq, v19, 1573.374, 4.092))
      {
        [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = GpsRx(%lf~%lf)", *&v38.var0, v38.var0 + v38.var1, *&wifiLowFreq, *&wifiHighFreq, 0x4098957EF9DB22D1, 0x4098A5DD2F1A9FBFLL];
      }

      break;
    case 8:
      if (sub_10008ECB4(&v38.var0, 0, &v37.var0, lowFreq, v17, wifiLowFreq, wifiHighFreq - wifiLowFreq, freq, v18))
      {
        [WCM_Logging logLevel:4 message:@"4 x CellTx(%lf~%lf) - WifiTx(%lf~%lf) = CellRx(%lf~%lf)", *&v38.var0, v38.var0 + v38.var1, *&wifiLowFreq, *&wifiHighFreq, *&v37.var0, v37.var0 + v37.var1];
      }

      break;
    case 9:
      v27 = lowFreq + lowFreq;
      v28 = v17 + lowFreq + v17 + lowFreq - (lowFreq + lowFreq);
      if (v27 >= wifiLowFreq)
      {
        wifiLowFreqCopy2 = v27;
      }

      else
      {
        wifiLowFreqCopy2 = wifiLowFreq;
      }

      v30 = v27 + v28;
      if (v30 >= v19 + wifiLowFreq)
      {
        v30 = v19 + wifiLowFreq;
      }

      if (wifiLowFreqCopy2 < v30)
      {
        v38.var0 = wifiLowFreqCopy2 * 0.5;
        v38.var1 = (v30 - wifiLowFreqCopy2) * 0.5;
        [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) = WifiRx(%lf~%lf)", wifiLowFreqCopy2 * 0.5, wifiLowFreqCopy2 * 0.5 + v38.var1, *&wifiLowFreq, *&wifiHighFreq, v35, v36];
      }

      break;
    case 10:
      if (wifiLowFreq * 0.5 >= freq)
      {
        freq = wifiLowFreq * 0.5;
      }

      v32 = wifiLowFreq * 0.5 + (v19 + wifiLowFreq) * 0.5 - wifiLowFreq * 0.5;
      if (v32 >= v18 + freqCopy)
      {
        v32 = v18 + freqCopy;
      }

      if (freq < v32)
      {
        v37.var0 = freq;
        v37.var1 = v32 - freq;
        [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) / 2 = CellRx(%lf~%lf)", *&wifiLowFreq, *&wifiHighFreq, *&freq, freq + v32 - freq, v35, v36];
      }

      break;
    case 11:
      if (wifiLowFreq / 3.0 >= freq)
      {
        freq = wifiLowFreq / 3.0;
      }

      v21 = wifiLowFreq / 3.0 + (v19 + wifiLowFreq) / 3.0 - wifiLowFreq / 3.0;
      if (v21 >= v18 + freqCopy)
      {
        v21 = v18 + freqCopy;
      }

      if (freq < v21)
      {
        v37.var0 = freq;
        v37.var1 = v21 - freq;
        [WCM_Logging logLevel:4 message:@"WifiTx(%lf~%lf) / 3 = CellRx(%lf~%lf)", *&wifiLowFreq, *&wifiHighFreq, *&freq, freq + v21 - freq, v35, v36];
      }

      break;
    case 12:
      cellFrequencyLimitForOOB = self->_cellFrequencyLimitForOOB;
      if (cellFrequencyLimitForOOB > lowFreq && v17 > self->_cellBandwidthLimitForOOB)
      {
        v38.var0 = lowFreq;
        v38.var1 = cellFrequencyLimitForOOB - lowFreq;
      }

      break;
    case 13:
      v31 = self->_cellFrequencyLimitForOOB;
      if (v31 < ulHighFreq && v17 > self->_cellBandwidthLimitForOOB)
      {
        v38.var0 = self->_cellFrequencyLimitForOOB;
        v38.var1 = ulHighFreq - v31;
      }

      break;
    case 14:
      if (wifiLowFreq + wifiLowFreq >= freq)
      {
        freq = wifiLowFreq + wifiLowFreq;
      }

      v20 = wifiLowFreq + wifiLowFreq + v19 + wifiLowFreq + v19 + wifiLowFreq - (wifiLowFreq + wifiLowFreq);
      if (v20 >= v18 + freqCopy)
      {
        v20 = v18 + freqCopy;
      }

      if (freq < v20)
      {
        v37.var0 = freq;
        v37.var1 = v20 - freq;
        [WCM_Logging logLevel:4 message:@"(2 x WiFiTx)(i.e. %lf~%lf) = CellRx(%lf~%lf)", *&wifiLowFreq, *&wifiHighFreq, *&freq, freq + v20 - freq, v35, v36];
      }

      break;
    default:
      [WCM_Logging logLevel:0 message:@"WCM_WiFiCellCoexIssue(%p) has invalid _issueType(%d)", self, issueType, v33, v34, v35, v36];
      break;
  }

  if (range)
  {
    *range = v38;
  }

  if (issueRange)
  {
    *issueRange = v37;
  }
}

@end