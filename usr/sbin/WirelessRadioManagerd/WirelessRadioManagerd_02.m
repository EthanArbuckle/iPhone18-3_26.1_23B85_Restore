void sub_10007F0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV3_SDK::~ARI_UtaIdcRTSetScanFreqRspCbV3_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10007F29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  AriSdk::ARI_UtaIdcConfigMiscParamReqV3_SDK::~ARI_UtaIdcConfigMiscParamReqV3_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10007F2B8(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcConfigMiscParamRspCbV3_SDK::ARI_UtaIdcConfigMiscParamRspCbV3_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x491E0000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226702848 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcConfigMiscParamRspCbV3_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcConfigMiscParamRspCbV3_SDK::~ARI_UtaIdcConfigMiscParamRspCbV3_SDK(v11);
}

void sub_10007F3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcConfigMiscParamRspCbV3_SDK::~ARI_UtaIdcConfigMiscParamRspCbV3_SDK(va);
  _Unwind_Resume(a1);
}

const char *sub_10007F424(unsigned int a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_10023F758[a1];
  }
}

const char *sub_10007F448(int a1)
{
  if (a1 > 99)
  {
    if (a1 <= 103)
    {
      if (a1 > 101)
      {
        if (a1 == 102)
        {
          return "kEX_3GPP2_HRPD";
        }

        else
        {
          return "kEX_3GPP2_EHRPD";
        }
      }

      else if (a1 == 100)
      {
        return "kEX_3GPP_MAX";
      }

      else
      {
        return "kEX_3GPP2_1X";
      }
    }

    if (a1 > 200)
    {
      if (a1 == 201)
      {
        return "kEX_WLAN";
      }

      if (a1 == 300)
      {
        return "kEX_WLAN_MAX";
      }
    }

    else
    {
      if (a1 == 104)
      {
        return "kEX_3GPP2_WLAN";
      }

      if (a1 == 200)
      {
        return "kEX_3GPP2_MAX";
      }
    }

    return "???";
  }

  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return "kEX_NULL_BEARER";
      case 1:
        return "kEX_3GPP_WCDMA";
      case 2:
        return "kEX_3GPP_GERAN";
    }

    return "???";
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return "kEX_3GPP_WLAN";
    }

    if (a1 == 6)
    {
      return "kEX_3GPP_5G";
    }

    return "???";
  }

  if (a1 == 3)
  {
    return "kEX_3GPP_LTE";
  }

  else
  {
    return "kEX_3GPP_TDSCDMA";
  }
}

const char *sub_10007F5AC(const mach_header_64 *a1)
{
  if (a1 < 0x20000)
  {
    if (a1 > 255)
    {
      if (a1 <= 4095)
      {
        if (a1 > 1023)
        {
          if (a1 == 1024)
          {
            return "k3GPP_S2B";
          }

          if (a1 == 2048)
          {
            return "k3GPP_LTE_LIMITED";
          }
        }

        else
        {
          if (a1 == 256)
          {
            return "k3GPP_EDGE";
          }

          if (a1 == 512)
          {
            return "k3GPP_GSM";
          }
        }
      }

      else if (a1 < 0x4000)
      {
        if (a1 == 4096)
        {
          return "k3GPP_LTE_FDD";
        }

        if (a1 == 0x2000)
        {
          return "k3GPP_LTE_TDD";
        }
      }

      else
      {
        if (a1 == 0x4000)
        {
          return "k3GPP_TDSCDMA";
        }

        if (a1 == 0x8000)
        {
          return "k3GPP_DC_HSUPA";
        }

        if (a1 == 0x10000)
        {
          return "k3GPP_LTE_CA_DL";
        }
      }
    }

    else if (a1 <= 7)
    {
      if (a1 > 1)
      {
        if (a1 == 2)
        {
          return "k3GPP_HSDPA";
        }

        if (a1 == 4)
        {
          return "k3GPP_HSUPA";
        }
      }

      else
      {
        if (!a1)
        {
          return "kUnspecified";
        }

        if (a1 == 1)
        {
          return "k3GPP_WCDMA";
        }
      }
    }

    else if (a1 <= 31)
    {
      if (a1 == 8)
      {
        return "k3GPP_HSDPAPLUS";
      }

      if (a1 == 16)
      {
        return "k3GPP_DC_HSDPAPLUS";
      }
    }

    else
    {
      if (a1 == 32)
      {
        return "k3GPP_64_QAM";
      }

      if (a1 == 64)
      {
        return "k3GPP_HSPA";
      }

      if (a1 == 128)
      {
        return "k3GPP_GPRS";
      }
    }
  }

  else if (a1 <= 0xFFFFFFFFLL)
  {
    if (a1 <= 0x7FFFFFF)
    {
      if (a1 > 0x1FFFFFF)
      {
        if (a1 == 0x2000000)
        {
          return "k3GPP2_1X_IS2000";
        }

        if (a1 == 0x4000000)
        {
          return "k3GPP2_1X_IS2000_REL_A";
        }
      }

      else
      {
        if (a1 == 0x20000)
        {
          return "k3GPP_LTE_CA_UL";
        }

        if (a1 == 0x1000000)
        {
          return "k3GPP2_1X_IS95";
        }
      }
    }

    else if (a1 <= 0x1FFFFFFF)
    {
      if (a1 == 0x8000000)
      {
        return "k3GPP2_HDR_REV0_DPA";
      }

      if (a1 == 0x10000000)
      {
        return "k3GPP2_HDR_REVA_DPA";
      }
    }

    else
    {
      if (a1 == 0x20000000)
      {
        return "k3GPP2_HDR_REVB_DPA";
      }

      if (a1 == 0x40000000)
      {
        return "k3GPP2_HDR_REVA_MPA";
      }

      if (a1 == 0x80000000)
      {
        return "k3GPP2_HDR_REVB_MPA";
      }
    }
  }

  else if (a1 > 0xFFFFFFFFFFLL)
  {
    if (a1 <= 0x3FFFFFFFFFFLL)
    {
      if (a1 == 0x10000000000)
      {
        return "k3GPP_5G_TDD";
      }

      if (a1 == 0x20000000000)
      {
        return "k3GPP_5G_SUB6";
      }
    }

    else
    {
      if (a1 == 0x40000000000)
      {
        return "k3GPP_5G_MMWAVE";
      }

      if (a1 == 0x80000000000)
      {
        return "k3GPP_5G_NSA";
      }

      if (a1 == 0x100000000000)
      {
        return "k3GPP_5G_SA";
      }
    }
  }

  else if (a1 <= 0x3FFFFFFFFLL)
  {
    if (a1 == &_mh_execute_header)
    {
      return "k3GPP2_HDR_REVA_EMPA";
    }

    if (a1 == 0x200000000)
    {
      return "k3GPP2_HDR_REVB_EMPA";
    }
  }

  else
  {
    if (a1 == 0x400000000)
    {
      return "k3GPP2_HDR_REVB_MMPA";
    }

    if (a1 == 0x800000000)
    {
      return "k3GPP2_HDR_EVDO_FMC";
    }

    if (a1 == 0x1000000000)
    {
      return "k3GPP2_1X_CS";
    }
  }

  return "<unknown mask, probably a composite mask>";
}

const char *sub_10007F970(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "???";
  }

  else
  {
    return off_10023F770[a1 - 1];
  }
}

const char *sub_10007F998(int a1)
{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "kTemporary";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "kPermanent";
  }
}

const char *sub_10007F9C4(unsigned int a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_10023F788[a1];
  }
}

const char *sub_10007F9E8(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      return "k3GPP5gSib2PlmnR15";
    }

    if (a1 != 8)
    {
      if (a1 == 16)
      {
        return "k3GPPRestrictDecodedChannelNumberRegister";
      }

      return "???";
    }

    return "k3GPPSib2UpperLayer";
  }

  else
  {
    if (!a1)
    {
      return "kUnspecified";
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return "k3GPP5gUltraWideBand";
      }

      return "???";
    }

    return "k3GPP5gBasic";
  }
}

const char *sub_10007FA70(uint64_t a1)
{
  if (a1 > 31)
  {
    if (a1 > 255)
    {
      switch(a1)
      {
        case 256:
          return "kInitialAttach";
        case 512:
          return "kEmergency";
        case 2048:
          return "kMissionCriticalSrv";
      }
    }

    else
    {
      switch(a1)
      {
        case 32:
          return "kHighPriorityData";
        case 64:
          return "kOverTheAirAdmin";
        case 128:
          return "kCarrierBrandedSrv";
      }
    }
  }

  else if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        return "kMMS";
      case 8:
        return "kDialUpNetwork";
      case 16:
        return "kSupl";
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        return "kUnSpecified";
      case 1:
        return "kDefaultInternet";
      case 2:
        return "kIMS";
    }
  }

  return "???";
}

const char *sub_10007FB80(uint64_t a1)
{
  if (a1 <= 7)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return "kOutOfService";
      }

      if (a1 == 4)
      {
        return "kLimitedService";
      }
    }

    else
    {
      if (!a1)
      {
        return "kUnspecified";
      }

      if (a1 == 1)
      {
        return "kCircuitSwitchedFallBack";
      }
    }
  }

  else if (a1 <= 31)
  {
    if (a1 == 8)
    {
      return "kVoiceOnSameSubscription";
    }

    if (a1 == 16)
    {
      return "kVoiceOnOtherSubscription";
    }
  }

  else
  {
    switch(a1)
    {
      case 32:
        return "kSingleRadioVoiceCallContinuity";
      case 64:
        return "kCircuitSwitchedOnly";
      case 128:
        return "kAttachPending";
    }
  }

  return "???";
}

const char *sub_10007FC54(unsigned int a1)
{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_10023F7A0[a1];
  }
}

const char *sub_10007FC78(unsigned int a1)
{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_10023F7E0[a1];
  }
}

const char *sub_10007FC9C(unsigned int a1)
{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_10023F810[a1];
  }
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[WCM_Server singleton];
  if ([+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    +[WRM_HandoverManager WRM_HandoverManagerSingleton];
    +[WCM_Logging reloadiRATSettingsFromPreferences];
  }

  [v1 startService];
  objc_autoreleasePoolPop(v0);
  [+[NSRunLoop currentRunLoop](NSRunLoop run];
  return 0;
}

uint64_t sub_100081460(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1002B7E48;
  qword_1002B7E48 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_1000816F4(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"FChargingCADebug_ startFastChargingDurationTimer"];
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"fastChargingTimerHandler:" selector:0 userInfo:1 repeats:600.0];
  [*(a1 + 32) setFastChargingDurationTimer:v2];
}

id sub_100082E08(uint64_t a1)
{
  v18[0] = @"Band";
  v17 = [*(a1 + 32) objectForKeyedSubscript:?];
  v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v17 intValue]);
  v19[0] = v16;
  v18[1] = @"TxSlotCount";
  v15 = [*(a1 + 32) objectForKeyedSubscript:@"txCount"];
  v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v15 intValue]);
  v19[1] = v14;
  v18[2] = @"TxSlotSpmiBlankingEnabledCount";
  v13 = [*(a1 + 32) objectForKeyedSubscript:@"spmiEnableCount"];
  v2 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 intValue]);
  v19[2] = v2;
  v18[3] = @"TxSlotWci2BlankingEnabledCount";
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"wci2EnableCount"];
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 intValue]);
  v19[3] = v4;
  v18[4] = @"TxSlotSpmiBlankingRequestedCount";
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"spmiRequestCount"];
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 intValue]);
  v19[4] = v6;
  v18[5] = @"TxSlotWci2BlankingRequestededCount";
  v7 = [*(a1 + 32) objectForKeyedSubscript:@"wci2RequestCount"];
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 intValue]);
  v19[5] = v8;
  v18[6] = @"TxSlotBlankCount";
  v9 = [*(a1 + 32) objectForKeyedSubscript:@"blankCount"];
  v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue]);
  v19[6] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:7];

  return v11;
}

id sub_1000835CC(uint64_t a1)
{
  v16[0] = @"EnableCount";
  v15 = [*(a1 + 32) wrmFastChargingFreqStat];
  v14 = [v15 objectForKeyedSubscript:@"EnableCount"];
  v13 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v14 intValue]);
  v17[0] = v13;
  v16[1] = @"DisableCount";
  v12 = [*(a1 + 32) wrmFastChargingFreqStat];
  v2 = [v12 objectForKeyedSubscript:@"DisableCount"];
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 intValue]);
  v17[1] = v3;
  v16[2] = @"LowBandDisableCount";
  v4 = [*(a1 + 32) wrmFastChargingFreqStat];
  v5 = [v4 objectForKeyedSubscript:@"LowBandDisableCount"];
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 intValue]);
  v17[2] = v6;
  v16[3] = @"NonLowBandDisableCount";
  v7 = [*(a1 + 32) wrmFastChargingFreqStat];
  v8 = [v7 objectForKeyedSubscript:@"NonLowBandDisableCount"];
  v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 intValue]);
  v17[3] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:4];

  return v10;
}

id sub_100083D10(uint64_t a1)
{
  v9[0] = @"DisableDurationPercent";
  v2 = [NSNumber numberWithInt:*(a1 + 40)];
  v10[0] = v2;
  v9[1] = @"LowBandDisableDurationPercent";
  v3 = [NSNumber numberWithInt:*(a1 + 48)];
  v10[1] = v3;
  v9[2] = @"NoneLowBandDisableDurationPercent";
  v4 = [NSNumber numberWithInt:*(a1 + 56)];
  v10[2] = v4;
  v9[3] = @"PowerState";
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) cellPowerOn]);
  v10[3] = v5;
  v9[4] = @"TotalDuration";
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) totalDuration]);
  v10[4] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:5];

  return v7;
}

id sub_1000840A0(uint64_t a1)
{
  v16[0] = @"IssueBand";
  v15 = [*(a1 + 32) objectForKeyedSubscript:?];
  v17[0] = v15;
  v16[1] = @"IssueType";
  v14 = [*(a1 + 32) objectForKeyedSubscript:?];
  v17[1] = v14;
  v16[2] = @"IssueCount";
  v13 = [*(a1 + 32) objectForKeyedSubscript:@"count"];
  v2 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 intValue]);
  v17[2] = v2;
  v16[3] = @"HasIssue";
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 intValue] != 0);
  v17[3] = v4;
  v16[4] = @"WiFiAGCMode_0_Count";
  v5 = [*(a1 + 32) objectForKeyedSubscript:?];
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 intValue]);
  v17[4] = v6;
  v16[5] = @"WiFiAGCMode_1_Count";
  v7 = [*(a1 + 32) objectForKeyedSubscript:?];
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 intValue]);
  v17[5] = v8;
  v16[6] = @"WiFiAGCMode_2_Count";
  v9 = [*(a1 + 32) objectForKeyedSubscript:?];
  v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue]);
  v17[6] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:7];

  return v11;
}

id sub_100084508(uint64_t a1)
{
  v16[0] = @"IssueBand";
  v15 = [*(a1 + 32) objectForKeyedSubscript:?];
  v17[0] = v15;
  v16[1] = @"IssueType";
  v14 = [*(a1 + 32) objectForKeyedSubscript:?];
  v17[1] = v14;
  v16[2] = @"IssueCount";
  v13 = [*(a1 + 32) objectForKeyedSubscript:@"count"];
  v2 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 intValue]);
  v17[2] = v2;
  v16[3] = @"HasIssue";
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 intValue] != 0);
  v17[3] = v4;
  v16[4] = @"BTAGCMode_0_Count";
  v5 = [*(a1 + 32) objectForKeyedSubscript:?];
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 intValue]);
  v17[4] = v6;
  v16[5] = @"BTAGCMode_1_Count";
  v7 = [*(a1 + 32) objectForKeyedSubscript:?];
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 intValue]);
  v17[5] = v8;
  v16[6] = @"BTAGCMode_2_Count";
  v9 = [*(a1 + 32) objectForKeyedSubscript:?];
  v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue]);
  v17[6] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:7];

  return v11;
}

id sub_100084970(uint64_t a1)
{
  v18[0] = @"IssueBand";
  v17 = [*(a1 + 32) objectForKeyedSubscript:?];
  v19[0] = v17;
  v18[1] = @"IssueType";
  v16 = [*(a1 + 32) objectForKeyedSubscript:?];
  v19[1] = v16;
  v18[2] = @"IssueCount";
  v15 = [*(a1 + 32) objectForKeyedSubscript:@"count"];
  v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v15 intValue]);
  v19[2] = v14;
  v18[3] = @"AFH_0_20";
  v13 = [*(a1 + 32) objectForKeyedSubscript:?];
  v2 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 intValue]);
  v19[3] = v2;
  v18[4] = @"AFH_21_40";
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 intValue]);
  v19[4] = v4;
  v18[5] = @"AFH_41_60";
  v5 = [*(a1 + 32) objectForKeyedSubscript:?];
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 intValue]);
  v19[5] = v6;
  v18[6] = @"AFH_61_79";
  v7 = [*(a1 + 32) objectForKeyedSubscript:?];
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 intValue]);
  v19[6] = v8;
  v18[7] = @"AFH_ALL";
  v9 = [*(a1 + 32) objectForKeyedSubscript:?];
  v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue]);
  v19[7] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:8];

  return v11;
}

uint64_t sub_100084C18(void *a1)
{
  v1 = [a1 bytes];
  v2 = xmmword_100195AD0;
  v3 = xmmword_100195AE0;
  v4 = 0uLL;
  v5 = 80;
  v6.i64[0] = 0x700000007;
  v6.i64[1] = 0x700000007;
  v7.i64[0] = 0x800000008;
  v7.i64[1] = 0x800000008;
  v8 = 0uLL;
  do
  {
    v9 = vld1_dup_s8(v1++);
    v10 = vmovl_u8(v9);
    v8 = vaddq_s32((*&vshlq_u32(vmovl_high_u16(v10), vnegq_s32(vandq_s8(v2, v6))) & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), v8);
    v4 = vaddq_s32((*&vshlq_u32(vmovl_u16(*v10.i8), vnegq_s32(vandq_s8(v3, v6))) & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), v4);
    v3 = vaddq_s32(v3, v7);
    v2 = vaddq_s32(v2, v7);
    v5 -= 8;
  }

  while (v5);
  return vaddvq_s32(vaddq_s32(v4, v8));
}

id sub_1000855B0(id result)
{
  if (!qword_1002B7E60)
  {
    v1.receiver = *(result + 4);
    v1.super_class = &OBJC_METACLASS___WRM_SCService;
    qword_1002B7E60 = [objc_msgSendSuper2(&v1 allocWithZone:{0), "init"}];
    [qword_1002B7E60 registerForCellularDataLQM];
    return [WCM_Logging logLevel:26 message:@"WRM_SCServiceControllerSingleton created"];
  }

  return result;
}

id sub_100085A34(const __SCDynamicStore *a1)
{
  [WCM_Logging logLevel:22 message:@"updateCellularDataLQM called"];
  v2 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  valuePtr = [v2 getCellularDataLQM];
  v3 = kSCEntNetLinkQuality;
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, @"pdp_ip0", kSCEntNetLinkQuality);
  v5 = SCDynamicStoreCopyValue(a1, NetworkInterfaceEntity);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v6, v3);
      if (Value)
      {
        v9 = Value;
        v10 = CFGetTypeID(Value);
        if (v10 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
        }
      }
    }
  }

  if (NetworkInterfaceEntity)
  {
    CFRelease(NetworkInterfaceEntity);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  [v2 setCellularDataLQM:valuePtr];
  return [WCM_Logging logLevel:22 message:@"Rcvd Data LQM from updateCellularDataLQM: %d", valuePtr];
}

void sub_100085FD0(uint64_t a1, char a2, void *a3)
{
  [WCM_Logging logLevel:22 message:@"Inside radioPreferencesChanged"];
  v5 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  if ((a2 & 2) == 0)
  {
    v6 = @"return radioPreferencesChanged:no preference changed";
LABEL_3:

    [WCM_Logging logLevel:22 message:v6];
    return;
  }

  v7 = v5;
  if ([a3 isEqualToString:@"AirplaneMode"])
  {
    [v7 getAirPlaneMode];
    [objc_msgSend(+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"radioPreferencesChanged: AirplaneMode is %d", [v7 isAirPlaneModeEnabled]);
    v8 = [v7 getAPMHandle];
  }

  else
  {
    if (![a3 isEqualToString:@"TelephonyState"])
    {
      if ([a3 isEqualToString:@"WiFi"])
      {
        [v7 getWiFiMode];
        SCPreferencesSynchronize([v7 getWiFiHandle]);
        v9 = dispatch_time(0, 3000000000);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000863F0;
        block[3] = &unk_10023DB28;
        block[4] = v7;
        dispatch_after(v9, [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")], block);
        return;
      }

      v6 = @"Notification recevied for unsupported preference";
      goto LABEL_3;
    }

    [v7 getTelephonyMode];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"radioPreferencesChanged: Telephony Mode is %d", [v7 isTelephonyEnabled]);
    v8 = [v7 getTelephonyHandle];
  }

  SCPreferencesSynchronize(v8);
}

id sub_1000863F0(uint64_t a1)
{
  v2 = [*(a1 + 32) isWiFiPrimary];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"radioPreferencesChanged: WiFi Mode changed, wifiState: %d, WiFi primary: %d", [*(a1 + 32) isWiFiEnabled], objc_msgSend(*(a1 + 32), "isWiFiPrimary"));
  v3 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

  return [v3 toggleSAState:v2];
}

id sub_100086A20(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 16);
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        result = [v7 getProcessId];
        if (result == *(a1 + 48))
        {
          *(*(*(a1 + 40) + 8) + 40) = v7;
          return result;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1000878B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  v21 = v19;

  _Unwind_Resume(a1);
}

void sub_10008796C(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"CellStationProperties"];
  if (v2)
  {
    v3 = [NSPredicate predicateWithFormat:@"%K == %@", @"gci", *(a1 + 32)];
    [v2 setPredicate:v3];

    [v2 setResultType:4];
    [v2 setFetchLimit:1];
    v4 = [*(a1 + 40) private_queue_context];
    v14 = 0;
    v5 = [v4 executeFetchRequest:v2 error:&v14];
    v6 = v14;

    [WCM_Logging logLevel:22 message:@"CellStationManager: Created fetch request"];
    v7 = [v5 firstObject];
    v8 = [v7 BOOLValue];

    v9 = *(a1 + 32);
    if (v8)
    {
      v10 = @"CellStationManager: The given cellID %@ is FR2 Capable";
    }

    else
    {
      v10 = @"CellStationManager: The given cellID %@ is not FR2 Capable";
    }

    [WCM_Logging logLevel:22 message:v10, *(a1 + 32)];
    v11 = [*(a1 + 40) private_queue_context];
    [v11 reset];

    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, v8);
    }
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"CellStationManager: Error creating fetch request"];
    v13 = *(a1 + 48);
    if (v13)
    {
      (*(v13 + 16))(v13, 0);
    }
  }
}

const char *sub_100087E6C(unint64_t a1)
{
  if (a1 > 2)
  {
    return "CTSubscriptionSlotUnknown";
  }

  else
  {
    return (&off_10023F9A0)[a1];
  }
}

const char *sub_100087E90(int a1)
{
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        return "IBI_RAT_GSM";
      }

      if (a1 == 2)
      {
        return "IBI_RAT_UMTS";
      }

      return "IBI_RAT_NOT_AVAILABLE";
    }

    if (a1 == 3)
    {
      return "IBI_RAT_LTE";
    }

    else
    {
      return "IBI_RAT_CDMA_1x";
    }
  }

  else
  {
    if (a1 > 6)
    {
      switch(a1)
      {
        case 7:
          return "IBI_RAT_SRLTE_1xLTE";
        case 8:
          return "IBI_RAT_NR";
        case 0x7FFFFFFF:
          return "IBIRat_ARM41_INT_ENFORCE";
      }

      return "IBI_RAT_NOT_AVAILABLE";
    }

    if (a1 == 5)
    {
      return "IBI_RAT_CDMA_EVDO";
    }

    else
    {
      return "IBI_RAT_HYBRID_1xEVDO";
    }
  }
}

uint64_t sub_100087F8C(double a1)
{
  if (((a1 + 110.0 + 1.0) & ~((a1 + 110.0 + 1.0) >> 31)) >= 0x3Fu)
  {
    return 63;
  }

  else
  {
    return ((a1 + 110.0 + 1.0) & ~((a1 + 110.0 + 1.0) >> 31));
  }
}

uint64_t sub_100087FBC(double a1)
{
  if (((a1 + 120.0 + 1.0) & ~((a1 + 120.0 + 1.0) >> 31)) >= 0x60u)
  {
    return 96;
  }

  else
  {
    return ((a1 + 120.0 + 1.0) & ~((a1 + 120.0 + 1.0) >> 31));
  }
}

uint64_t sub_100087FEC(double a1)
{
  if (((a1 + 24.0 + a1 + 24.0 + 1.0) & ~((a1 + 24.0 + a1 + 24.0 + 1.0) >> 31)) >= 0x31u)
  {
    return 49;
  }

  else
  {
    return ((a1 + 24.0 + a1 + 24.0 + 1.0) & ~((a1 + 24.0 + a1 + 24.0 + 1.0) >> 31));
  }
}

uint64_t sub_10008801C(double a1)
{
  if (((a1 + 31.0 + a1 + 31.0 + 1.0) & ~((a1 + 31.0 + a1 + 31.0 + 1.0) >> 31)) >= 0x3Eu)
  {
    return 62;
  }

  else
  {
    return ((a1 + 31.0 + a1 + 31.0 + 1.0) & ~((a1 + 31.0 + a1 + 31.0 + 1.0) >> 31));
  }
}

uint64_t sub_10008804C(double a1)
{
  if (((a1 + 19.5 + a1 + 19.5 + 1.0) & ~((a1 + 19.5 + a1 + 19.5 + 1.0) >> 31)) >= 0x22u)
  {
    return 34;
  }

  else
  {
    return ((a1 + 19.5 + a1 + 19.5 + 1.0) & ~((a1 + 19.5 + a1 + 19.5 + 1.0) >> 31));
  }
}

uint64_t sub_100088080(double a1)
{
  if (((a1 + 140.0 + 1.0) & ~((a1 + 140.0 + 1.0) >> 31)) >= 0x61u)
  {
    return 97;
  }

  else
  {
    return ((a1 + 140.0 + 1.0) & ~((a1 + 140.0 + 1.0) >> 31));
  }
}

uint64_t sub_1000880B0(double a1)
{
  v1 = (a1 + a1);
  if (v1 >= 100)
  {
    v1 = 100;
  }

  if (v1 <= -100)
  {
    return 4294967196;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000880D4(double a1)
{
  if (((a1 + 10.0 + a1 + 10.0 + 1.0) & ~((a1 + 10.0 + a1 + 10.0 + 1.0) >> 31)) >= 0x3Cu)
  {
    return 60;
  }

  else
  {
    return ((a1 + 10.0 + a1 + 10.0 + 1.0) & ~((a1 + 10.0 + a1 + 10.0 + 1.0) >> 31));
  }
}

uint64_t sub_100088218(double a1, double a2)
{
  v2 = (a1 / a2);
  if (v2 <= 1)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10008822C(double a1)
{
  if (a1 <= 1)
  {
    return 1;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_10008823C(double a1)
{
  v1 = (a1 + a1);
  if (v1 <= 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100088250(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    LODWORD(v1) = *v1;
    if (v1 == 99 || (v2 = *(a1 + 88)) != 0 && *v2 < v1)
    {
      v3 = 0;
      LODWORD(v1) = 0;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v1 | (v3 << 8);
}

uint64_t sub_100088298(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    LODWORD(v1) = *v1;
    if (v1 == 99 || (v2 = *(a1 + 96)) != 0 && *v2 < v1)
    {
      v3 = 0;
      LODWORD(v1) = 0;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v1 | (v3 << 8);
}

const char *sub_1000882E0(unsigned int a1)
{
  if (a1 > 8)
  {
    return "Invalid RAT";
  }

  else
  {
    return (&off_10023F9B8)[a1];
  }
}

double sub_100088304(unsigned int a1, int a2)
{
  result = 0.0;
  if (a2 <= 3)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        v3 = a1 + -1.0;
        v4 = -120.0;
      }

      else
      {
        if (a2 != 3)
        {
          return result;
        }

        v3 = a1 + -1.0;
        v4 = -140.0;
      }

      return v3 + v4;
    }

    goto LABEL_10;
  }

  if (a2 == 4 || a2 == 5)
  {
LABEL_10:
    v3 = a1 + -1.0;
    v4 = -110.0;
    return v3 + v4;
  }

  if (a2 != 8)
  {
    return result;
  }

  v3 = a1 + -1.0;
  v4 = -156.0;
  return v3 + v4;
}

const char *sub_1000883A4(unsigned int a1)
{
  if (a1 > 8)
  {
    return "Invalid RAT";
  }

  else
  {
    return (&off_10023FA00)[a1];
  }
}

double sub_1000883C8(unsigned int a1, int a2)
{
  if (a2 <= 3)
  {
    if (a2 == 2)
    {
      v2 = a1 + -1.0;
      v3 = -24.0;
      return v3 + v2 * 0.5;
    }

    if (a2 == 3)
    {
      v2 = a1 + -1.0;
      v3 = -19.5;
      return v3 + v2 * 0.5;
    }
  }

  else
  {
    switch(a2)
    {
      case 4:
        v2 = a1 + -1.0;
        v3 = -31.0;
        return v3 + v2 * 0.5;
      case 5:
        v2 = a1 + -1.0;
        v3 = -10.0;
        return v3 + v2 * 0.5;
      case 8:
        v2 = a1;
        v3 = -43.0;
        return v3 + v2 * 0.5;
    }
  }

  return 0.0;
}

char *sub_100088644(tlv *a1, const unsigned __int8 *a2, _DWORD *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4, a4);
  *a3 = *a1;
  return a1 + 4;
}

uint64_t sub_100088684(uint64_t a1, const unsigned __int8 *a2, _DWORD *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4, a4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4, v7);
  a3[1] = *(a1 + 4);
  return a1 + 8;
}

_DWORD *sub_1000886E0(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

uint64_t sub_1000886F8(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 4, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 4), v6, 4, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 8);
  return (v9 << 32) | v7;
}

void sub_100088768(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100088750);
}

_DWORD **sub_10008877C(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

char *sub_10008879C(tlv *a1, const unsigned __int8 *a2, void *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 8, a4);
  *a3 = *a1;
  return a1 + 8;
}

uint64_t sub_1000887E0(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 8, a4);
  result = *v5;
  *a1 = (v5 + 8);
  return result;
}

void sub_10008881C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100088810);
}

void **sub_100088830(void **result, void *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t sub_100088844(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 1), v6, 1, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 2);
  return v7 | (v9 << 8);
}

void sub_1000888AC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100088898);
}

uint64_t sub_1000888C0(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 1), v6, 1, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 2);
  return v7 | (v9 << 8);
}

void sub_100088928(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100088914);
}

uint64_t sub_10008893C(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 1), v6, 1, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 2);
  return v7 | (v9 << 8);
}

void sub_1000889A4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100088990);
}

uint64_t sub_1000889B8(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 1), v6, 1, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 2);
  return v7 | (v9 << 8);
}

void sub_100088A20(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100088A0CLL);
}

uint64_t sub_100088A34(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 1), v6, 1, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 2);
  return v7 | (v9 << 8);
}

void sub_100088A9C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100088A88);
}

uint64_t sub_100088AB0(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 1), v6, 2, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 3);
  return (v9 << 16) | v7;
}

void sub_100088B1C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100088B08);
}

uint64_t sub_100088B30(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 1), v6, 1, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 2);
  return v7 | (v9 << 8);
}

void sub_100088B98(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100088B84);
}

uint64_t sub_100088BAC(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 1), v6, 1, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 2);
  return v7 | (v9 << 8);
}

void sub_100088C14(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100088C00);
}

uint64_t sub_100088C28(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 1), v6, 1, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 2);
  return v7 | (v9 << 8);
}

void sub_100088C90(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100088C7CLL);
}

uint64_t sub_100088CA4(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5;
  *a1 = (v5 + 1);
  return result;
}

void sub_100088CE0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100088CD4);
}

uint64_t sub_100088CF4(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 1), v6, 1, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 2);
  return v7 | (v9 << 8);
}

void sub_100088D5C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100088D48);
}

uint64_t sub_100088D70(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_100088DAC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100088DA0);
}

uint64_t sub_100088DC0(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_100088DFC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100088DF0);
}

char *sub_100088E10(tlv *a1, const unsigned __int8 *a2, BOOL *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1, a4);
  *a3 = *a1 != 0;
  return a1 + 1;
}

BOOL sub_100088E50(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5 != 0;
  *a1 = (v5 + 1);
  return result;
}

void sub_100088E94(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100088E88);
}

BOOL sub_100088EA8(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5 != 0;
  *a1 = (v5 + 1);
  return result;
}

void sub_100088EEC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100088EE0);
}

BOOL sub_100088F00(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5 != 0;
  *a1 = (v5 + 1);
  return result;
}

void sub_100088F44(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100088F38);
}

BOOL sub_100088F58(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5 != 0;
  *a1 = (v5 + 1);
  return result;
}

void sub_100088F9C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100088F90);
}

uint64_t sub_100088FB0(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5;
  *a1 = (v5 + 1);
  return result;
}

void sub_100088FEC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100088FE0);
}

uint64_t sub_100089000(uint64_t a1, const unsigned __int8 *a2, _BYTE *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1, a4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 1, v7);
  a3[1] = *(a1 + 1);
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 1, v8);
  a3[2] = *(a1 + 2);
  tlv::throwIfNotEnoughBytes((a1 + 3), a2, 1, v9);
  a3[3] = *(a1 + 3);
  return a1 + 4;
}

_BYTE *sub_10008908C(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1 + 4;
}

uint64_t sub_1000890B4(uint64_t *a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = 0;
  *a1 = sub_100089000(*a1, (*a1 + a2), &v5, a4);
  return v5;
}

void sub_1000890F8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000890E4);
}

_BYTE **sub_100089108(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  v2[2] = a2[2];
  v2[3] = a2[3];
  *result = v2 + 4;
  return result;
}

uint64_t sub_100089138(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 1), v6, 1, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 2);
  return v7 | (v9 << 8);
}

void sub_1000891A0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x10008918CLL);
}

uint64_t sub_1000891B4(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 1), v6, 2, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 3);
  return (v9 << 16) | v7;
}

void sub_100089220(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x10008920CLL);
}

uint64_t sub_100089234(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5;
  *a1 = (v5 + 1);
  return result;
}

void sub_100089270(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100089264);
}

uint64_t sub_100089284(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5;
  *a1 = (v5 + 1);
  return result;
}

void sub_1000892C0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000892B4);
}

uint64_t sub_1000892D4(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 2, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 2), v6, 2, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 4);
  return (v9 << 16) | v7;
}

void sub_100089340(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x10008932CLL);
}

BOOL sub_100089354(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5 != 0;
  *a1 = (v5 + 1);
  return result;
}

void sub_100089398(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x10008938CLL);
}

BOOL sub_1000893AC(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5 != 0;
  *a1 = (v5 + 1);
  return result;
}

void sub_1000893F0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000893E4);
}

uint64_t sub_100089404(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5;
  *a1 = (v5 + 1);
  return result;
}

void sub_100089440(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100089434);
}

uint64_t sub_100089454(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 2, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 2), v6, 2, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 4);
  return (v9 << 16) | v7;
}

void sub_1000894C0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000894ACLL);
}

BOOL sub_1000894D4(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5 != 0;
  *a1 = (v5 + 1);
  return result;
}

void sub_100089518(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x10008950CLL);
}

uint64_t sub_10008952C(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4, a4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4, v7);
  *(a3 + 4) = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4, v8);
  *(a3 + 8) = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4, v9);
  *(a3 + 12) = *(a1 + 12);
  tlv::throwIfNotEnoughBytes((a1 + 16), a2, 1, v10);
  *(a3 + 16) = *(a1 + 16) != 0;
  return a1 + 17;
}

uint64_t sub_1000895D8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  return a1 + 17;
}

uint64_t sub_100089610@<X0>(uint64_t *a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = sub_10008952C(*a1, (*a1 + a2), a4, a3);
  *a1 = result;
  return result;
}

void sub_10008964C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

uint64_t *sub_100089678(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 8) = *(a2 + 8);
  *(v2 + 12) = *(a2 + 12);
  *(v2 + 16) = *(a2 + 16);
  *result = v2 + 17;
  return result;
}

uint64_t sub_1000896B0@<X0>(uint64_t *a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = sub_10008952C(*a1, (*a1 + a2), a4, a3);
  *a1 = result;
  return result;
}

void sub_1000896EC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

uint64_t sub_100089710@<X0>(uint64_t *a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = sub_10008952C(*a1, (*a1 + a2), a4, a3);
  *a1 = result;
  return result;
}

void sub_10008974C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

uint64_t sub_100089770@<X0>(uint64_t *a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = sub_10008952C(*a1, (*a1 + a2), a4, a3);
  *a1 = result;
  return result;
}

void sub_1000897AC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

BOOL sub_1000897D0(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5 != 0;
  *a1 = (v5 + 1);
  return result;
}

void sub_100089814(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100089808);
}

BOOL sub_100089828(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5 != 0;
  *a1 = (v5 + 1);
  return result;
}

void sub_10008986C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100089860);
}

uint64_t sub_100089880(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5;
  *a1 = (v5 + 1);
  return result;
}

void sub_1000898BC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000898B0);
}

uint64_t sub_1000898D0(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1, a4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 1, v7);
  *(a3 + 1) = *(a1 + 1);
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 1, v8);
  *(a3 + 2) = *(a1 + 2);
  tlv::throwIfNotEnoughBytes((a1 + 3), a2, 1, v9);
  *(a3 + 3) = *(a1 + 3);
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 1, v10);
  *(a3 + 4) = *(a1 + 4) != 0;
  tlv::throwIfNotEnoughBytes((a1 + 5), a2, 4, v11);
  *(a3 + 8) = *(a1 + 5);
  tlv::throwIfNotEnoughBytes((a1 + 9), a2, 4, v12);
  *(a3 + 12) = *(a1 + 9);
  tlv::throwIfNotEnoughBytes((a1 + 13), a2, 4, v13);
  *(a3 + 16) = *(a1 + 13);
  tlv::throwIfNotEnoughBytes((a1 + 17), a2, 4, v14);
  *(a3 + 20) = *(a1 + 17);
  tlv::throwIfNotEnoughBytes((a1 + 21), a2, 4, v15);
  *(a3 + 24) = *(a1 + 21);
  tlv::throwIfNotEnoughBytes((a1 + 25), a2, 4, v16);
  *(a3 + 28) = *(a1 + 25);
  tlv::throwIfNotEnoughBytes((a1 + 29), a2, 4, v17);
  *(a3 + 32) = *(a1 + 29);
  return a1 + 33;
}

uint64_t sub_100089A24(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 12);
  *(a1 + 13) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 20);
  *(a1 + 21) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 28);
  *(a1 + 29) = *(a2 + 32);
  return a1 + 33;
}

uint64_t sub_100089A94@<X0>(uint64_t *a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 4) = 0;
  *a4 = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  *(a4 + 32) = 0;
  result = sub_1000898D0(*a1, (*a1 + a2), a4, a3);
  *a1 = result;
  return result;
}

void sub_100089ADC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

uint64_t sub_100089B08(uint64_t *a1, uint64_t a2)
{
  result = sub_100089A24(*a1, a2);
  *a1 = result;
  return result;
}

void sub_10008CAC0()
{
  [WCM_Logging logLevel:24 message:@"Handover learner: Alert closed"];
  if (qword_1002B7BC0)
  {
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, qword_1002B7BC0, kCFRunLoopDefaultMode);
  }

  if (qword_1002B7BB8)
  {
    CFRelease(qword_1002B7BB8);
    qword_1002B7BB8 = 0;
  }

  if (qword_1002B7BC0)
  {
    CFRelease(qword_1002B7BC0);
    qword_1002B7BC0 = 0;
  }
}

id sub_10008CC20(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  qword_1002B7E88 = result;
  return result;
}

id sub_10008CEC8(uint64_t a1)
{
  if (+[CMActivityAlarm activityAlarmAvailable])
  {
    v2 = *(a1 + 32);
    if (!v2[8])
    {
      result = [v2 waitForStaticState:v2[11]];
      *(*(a1 + 32) + 32) = 1;
      return result;
    }

    v3 = @"Alarm:Activity alarm already running \n";
  }

  else
  {
    v3 = @"Alarm: Motion activity not supported on the platform \n";
  }

  return [WCM_Logging logLevel:21 message:v3];
}

void sub_10008D05C(uint64_t a1)
{
  if (+[CMActivityAlarm activityAlarmAvailable])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 48);
    if (v3)
    {
      [v3 invalidate];

      *(*(a1 + 32) + 48) = 0;
      v2 = *(a1 + 32);
    }

    v4 = *(v2 + 56);
    if (v4)
    {
      [v4 invalidate];

      *(*(a1 + 32) + 56) = 0;
      v2 = *(a1 + 32);
    }

    v5 = *(v2 + 64);
    if (v5)
    {
      [v5 invalidate];

      *(*(a1 + 32) + 64) = 0;
      v2 = *(a1 + 32);
    }

    v6 = *(v2 + 72);
    if (v6)
    {
      [v6 invalidate];

      *(*(a1 + 32) + 72) = 0;
      v2 = *(a1 + 32);
    }

    v7 = *(v2 + 80);
    if (v7)
    {
      [v7 invalidate];

      *(*(a1 + 32) + 80) = 0;
      v2 = *(a1 + 32);
    }

    *(v2 + 36) = 5;
    *(*(a1 + 32) + 40) = 5;
    *(*(a1 + 32) + 32) = 0;
  }
}

id sub_10008D368(uint64_t a1)
{
  [WCM_Logging logLevel:18 message:@"Alarm Acitivity: Static alarm fired"];
  [WCM_Logging logLevel:18 message:@"Alarm: waitForStaticState: updating mobility state to stationary"];
  *(*(a1 + 32) + 36) = 0;
  [*(a1 + 32) notifyHandoverManager:*(*(a1 + 32) + 36)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v2[9];

  return [v2 waitForActivityState:v3 :v4];
}

id sub_10008D4C0(uint64_t a1)
{
  [WCM_Logging logLevel:18 message:@"Alarm Acitivity: mPedestrianAfterStatic alarm fired"];
  [WCM_Logging logLevel:18 message:@"Alarm: waitForPedestrianState: updating mobility state to Walking"];
  *(*(a1 + 32) + 36) = 4;
  [*(a1 + 32) notifyHandoverManager:*(*(a1 + 32) + 36)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v2[9];

  return [v2 waitForActivityState:v3 :v4];
}

id sub_10008D61C(uint64_t a1)
{
  [WCM_Logging logLevel:18 message:@"Alarm Acitivity: Walking alarm fired"];
  [WCM_Logging logLevel:18 message:@"Alarm: waitForWalkingState: updating mobility state to Walking"];
  *(*(a1 + 32) + 36) = 1;
  [*(a1 + 32) notifyHandoverManager:*(*(a1 + 32) + 36)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v2[9];

  return [v2 waitForActivityState:v3 :v4];
}

id sub_10008D778(uint64_t a1)
{
  [WCM_Logging logLevel:18 message:@"Alarm Acitivity: Running alarm fired"];
  [WCM_Logging logLevel:18 message:@"Alarm: waitForRunningState: updating mobility state to Running"];
  *(*(a1 + 32) + 36) = 2;
  [*(a1 + 32) notifyHandoverManager:*(*(a1 + 32) + 36)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v2[9];

  return [v2 waitForActivityState:v3 :v4];
}

id sub_10008D8D4(uint64_t a1)
{
  [WCM_Logging logLevel:18 message:@"Alarm Acitivity: Driving alarm fired"];
  [WCM_Logging logLevel:18 message:@"Alarm: waitForDrivingState: updating mobility state to Driving"];
  *(*(a1 + 32) + 36) = 3;
  [*(a1 + 32) notifyHandoverManager:*(*(a1 + 32) + 36)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v2[9];

  return [v2 waitForActivityState:v3 :v4];
}

uint64_t sub_10008E030(double a1, double a2)
{
  v2 = 0;
  for (i = &qword_100196CC0; ; i += 5)
  {
    v4 = *i > a1 || i[1] < a1;
    if (*(i - 2) <= a2 && *(i - 1) >= a2 && !v4)
    {
      break;
    }

    if (++v2 == 89)
    {
      LOWORD(v2) = 0;
      return v2;
    }
  }

  return v2;
}

uint64_t sub_10008E098(double a1, double a2)
{
  v2 = 0;
  for (i = &qword_100196040; ; i += 5)
  {
    v4 = *i > a1 || i[1] < a1;
    if (*(i - 2) <= a2 && *(i - 1) >= a2 && !v4)
    {
      break;
    }

    if (++v2 == 80)
    {
      LOWORD(v2) = 0;
      return v2;
    }
  }

  return v2;
}

double sub_10008E100(double a1, double a2, double a3)
{
  if (a1 >= a3)
  {
    return a3;
  }

  else
  {
    return a1;
  }
}

BOOL sub_10008E124(double *a1, double a2, double a3, double a4, double a5)
{
  if (a2 >= a4)
  {
    v5 = a2;
  }

  else
  {
    v5 = a4;
  }

  v6 = a2 + a3;
  if (v6 >= a4 + a5)
  {
    v6 = a4 + a5;
  }

  if (a1 && v5 < v6)
  {
    *a1 = v5;
    a1[1] = v6 - v5;
  }

  return v5 < v6;
}

BOOL sub_10008E15C(double *a1, double a2, double a3, double a4, double a5)
{
  v5 = a2 + a2;
  v6 = a2 + a3 + a2 + a3 - (a2 + a2);
  if (v5 >= a4)
  {
    v7 = v5;
  }

  else
  {
    v7 = a4;
  }

  v8 = a4 + a5;
  if (v5 + v6 < v8)
  {
    v8 = v5 + v6;
  }

  if (a1 && v7 < v8)
  {
    *a1 = v5;
    a1[1] = v6;
  }

  return v7 < v8;
}

BOOL sub_10008E1A0(double *a1, double a2, double a3, double a4, double a5)
{
  v5 = a2 * 3.0;
  v6 = (a2 + a3) * 3.0 - a2 * 3.0;
  if (v5 >= a4)
  {
    v7 = v5;
  }

  else
  {
    v7 = a4;
  }

  v8 = a4 + a5;
  if (v5 + v6 < v8)
  {
    v8 = v5 + v6;
  }

  if (a1 && v7 < v8)
  {
    *a1 = v5;
    a1[1] = v6;
  }

  return v7 < v8;
}

BOOL sub_10008E1E8(double *a1, double a2, double a3, double a4, double a5)
{
  v5 = a2 * 0.5;
  v6 = (a2 + a3) * 0.5 - a2 * 0.5;
  if (v5 >= a4)
  {
    v7 = v5;
  }

  else
  {
    v7 = a4;
  }

  v8 = a4 + a5;
  if (v5 + v6 < v8)
  {
    v8 = v5 + v6;
  }

  if (a1 && v7 < v8)
  {
    *a1 = v5;
    a1[1] = v6;
  }

  return v7 < v8;
}

BOOL sub_10008E230(double *a1, double a2, double a3, double a4, double a5)
{
  v5 = a2 / 3.0;
  v6 = (a2 + a3) / 3.0 - a2 / 3.0;
  if (v5 >= a4)
  {
    v7 = v5;
  }

  else
  {
    v7 = a4;
  }

  v8 = a4 + a5;
  if (v5 + v6 < v8)
  {
    v8 = v5 + v6;
  }

  if (a1 && v7 < v8)
  {
    *a1 = v5;
    a1[1] = v6;
  }

  return v7 < v8;
}

uint64_t sub_10008E278(double *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a2 + a3 * 0.5 <= a4 + a5 * 0.5)
  {
    v7 = a2 + a3;
    v8 = a4 + a5;
    v9 = a4;
    v10 = a2;
  }

  else
  {
    v7 = a4 + a5;
    v8 = a2 + a3;
    v9 = a2;
    v10 = a4;
  }

  v11 = a2 + a4;
  v12 = v8 + v7 - v11;
  if (v11 >= a6)
  {
    v13 = v11;
  }

  else
  {
    v13 = a6;
  }

  v14 = v11 + v12;
  v15 = a6 + a7;
  if (v11 + v12 >= v15)
  {
    v14 = v15;
  }

  if (v13 >= v14)
  {
    v11 = v9 - v7;
    v12 = v8 - v10 - (v9 - v7);
    if (v9 - v7 >= a6)
    {
      v16 = v9 - v7;
    }

    else
    {
      v16 = a6;
    }

    v17 = v11 + v12;
    if (v11 + v12 >= v15)
    {
      v17 = v15;
    }

    if (v16 >= v17)
    {
      return 0;
    }
  }

  if (a1)
  {
    *a1 = v11;
    a1[1] = v12;
  }

  return 1;
}

uint64_t sub_10008E324(double *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a2 + a3 * 0.5 <= a4 + a5 * 0.5)
  {
    v7 = a2 + a3;
    v8 = a4 + a5;
    v9 = a4;
    a4 = a2;
  }

  else
  {
    v7 = a4 + a5;
    v8 = a2 + a3;
    v9 = a2;
  }

  v10 = -(v7 - v9 * 2.0);
  v11 = -(a4 - v8 * 2.0) - v10;
  if (v10 >= a6)
  {
    v12 = -(v7 - v9 * 2.0);
  }

  else
  {
    v12 = a6;
  }

  v13 = v11 - (v7 - v9 * 2.0);
  v14 = a6 + a7;
  if (v13 >= v14)
  {
    v13 = v14;
  }

  if (v12 >= v13)
  {
    v10 = -(v8 - a4 * 2.0);
    v11 = -(v9 - v7 * 2.0) - v10;
    if (v10 >= a6)
    {
      v15 = -(v8 - a4 * 2.0);
    }

    else
    {
      v15 = a6;
    }

    v16 = v11 - (v8 - a4 * 2.0);
    if (v16 >= v14)
    {
      v16 = v14;
    }

    if (v15 >= v16)
    {
      v10 = v9 + -v7 * 2.0;
      v11 = v8 + -a4 * 2.0 - v10;
      if (v10 >= a6)
      {
        v17 = v9 + -v7 * 2.0;
      }

      else
      {
        v17 = a6;
      }

      v18 = v10 + v11;
      if (v10 + v11 >= v14)
      {
        v18 = v14;
      }

      if (v17 >= v18)
      {
        return 0;
      }
    }
  }

  if (a1)
  {
    *a1 = v10;
    a1[1] = v11;
  }

  return 1;
}

uint64_t sub_10008E404(double *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a2 + a3 * 0.5 <= a4 + a5 * 0.5)
  {
    v7 = a2 + a3;
    v8 = a4 + a5;
    v9 = a4;
    a4 = a2;
  }

  else
  {
    v7 = a4 + a5;
    v8 = a2 + a3;
    v9 = a2;
  }

  v10 = -(v7 - v9 * 4.0);
  v11 = -(a4 - v8 * 4.0) - v10;
  if (v10 >= a6)
  {
    v12 = -(v7 - v9 * 4.0);
  }

  else
  {
    v12 = a6;
  }

  v13 = v11 - (v7 - v9 * 4.0);
  v14 = a6 + a7;
  if (v13 >= v14)
  {
    v13 = v14;
  }

  if (v12 >= v13)
  {
    v10 = -(v8 - a4 * 4.0);
    v11 = -(v9 - v7 * 4.0) - v10;
    if (v10 >= a6)
    {
      v15 = -(v8 - a4 * 4.0);
    }

    else
    {
      v15 = a6;
    }

    v16 = v10 + v11;
    if (v10 + v11 >= v14)
    {
      v16 = v14;
    }

    if (v15 >= v16)
    {
      return 0;
    }
  }

  if (a1)
  {
    *a1 = v10;
    a1[1] = v11;
  }

  return 1;
}

double sub_10008E4B0(double a1, double a2, double a3)
{
  if (a1 != 0.0)
  {
    if (a3 == 0.0)
    {
      return a1;
    }

    else if (a1 < a3)
    {
      return a1;
    }
  }

  return a3;
}

BOOL sub_10008E4F4(float64x2_t *a1, double *a2, double a3, double a4, double a5, double a6)
{
  v6 = a3 + a3;
  v7 = a3 + a4 + a3 + a4 - (a3 + a3);
  if (a3 + a3 >= a5)
  {
    v8 = a3 + a3;
  }

  else
  {
    v8 = a5;
  }

  v9 = v6 + v7;
  v10 = a5 + a6;
  if (v9 >= v10)
  {
    v9 = v10;
  }

  if (v8 < v9)
  {
    if (a1)
    {
      v11.f64[0] = v8;
      v11.f64[1] = v9 - v8;
      __asm { FMOV            V4.2D, #0.5 }

      *a1 = vmulq_f64(v11, _Q4);
    }

    if (a2)
    {
      *a2 = v8;
      a2[1] = v9 - v8;
    }
  }

  return v8 < v9;
}

BOOL sub_10008E554(float64x2_t *a1, double *a2, double a3, double a4, double a5, double a6)
{
  v6 = a3 * 3.0;
  v7 = (a3 + a4) * 3.0 - a3 * 3.0;
  if (a3 * 3.0 >= a5)
  {
    v8 = a3 * 3.0;
  }

  else
  {
    v8 = a5;
  }

  v9 = v6 + v7;
  v10 = a5 + a6;
  if (v9 >= v10)
  {
    v9 = v10;
  }

  if (v8 < v9)
  {
    if (a1)
    {
      v11.f64[0] = v8;
      v11.f64[1] = v9 - v8;
      __asm { FMOV            V4.2D, #3.0 }

      *a1 = vdivq_f64(v11, _Q4);
    }

    if (a2)
    {
      *a2 = v8;
      a2[1] = v9 - v8;
    }
  }

  return v8 < v9;
}

BOOL sub_10008E5B8(float64x2_t *a1, double *a2, double a3, double a4, double a5, double a6)
{
  v6 = a3 * 0.5;
  v7 = (a3 + a4) * 0.5 - a3 * 0.5;
  if (a3 * 0.5 >= a5)
  {
    v8 = a3 * 0.5;
  }

  else
  {
    v8 = a5;
  }

  v9 = v6 + v7;
  v10 = a5 + a6;
  if (v9 >= v10)
  {
    v9 = v10;
  }

  if (v8 < v9)
  {
    if (a1)
    {
      v11.f64[0] = v8;
      v11.f64[1] = v9 - v8;
      *a1 = vaddq_f64(v11, v11);
    }

    if (a2)
    {
      *a2 = v8;
      a2[1] = v9 - v8;
    }
  }

  return v8 < v9;
}

BOOL sub_10008E618(float64x2_t *a1, double *a2, double a3, double a4, double a5, double a6)
{
  v6 = a3 / 3.0;
  v7 = (a3 + a4) / 3.0 - a3 / 3.0;
  if (a3 / 3.0 >= a5)
  {
    v8 = a3 / 3.0;
  }

  else
  {
    v8 = a5;
  }

  v9 = v6 + v7;
  v10 = a5 + a6;
  if (v9 >= v10)
  {
    v9 = v10;
  }

  if (v8 < v9)
  {
    if (a1)
    {
      v11.f64[0] = v8;
      v11.f64[1] = v9 - v8;
      __asm { FMOV            V4.2D, #3.0 }

      *a1 = vmulq_f64(v11, _Q4);
    }

    if (a2)
    {
      *a2 = v8;
      a2[1] = v9 - v8;
    }
  }

  return v8 < v9;
}

BOOL sub_10008E67C(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = a4 + a5 * 0.5;
  v10 = a6 + a7 * 0.5;
  if (v9 > v10)
  {
    v11 = a6 + a7;
    v12 = a4 + a5;
    v13 = a4;
  }

  else
  {
    v11 = a4 + a5;
    v12 = a6 + a7;
    v13 = a6;
    a6 = a4;
  }

  if (v13 - v11 >= a8)
  {
    v14 = v13 - v11;
  }

  else
  {
    v14 = a8;
  }

  v15 = v13 - v11 + v12 - a6 - (v13 - v11);
  if (v15 >= a8 + a9)
  {
    v15 = a8 + a9;
  }

  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  if (v14 < v15)
  {
    v20 = v14 + v15 - v14;
    if (a3)
    {
      *a3 = v14;
      a3[1] = v15 - v14;
    }

    v16 = a6 + v14;
    if (a6 + v14 < v13)
    {
      v16 = v13;
    }

    v21 = v11 + v20;
    if (v11 + v20 > v12)
    {
      v21 = v12;
    }

    if (v16 < v21)
    {
      v17 = v21 - v16;
    }

    else
    {
      v16 = 0.0;
      v17 = 0.0;
    }

    v22 = v13 - v20;
    if (v22 >= a6)
    {
      v19 = v22;
    }

    else
    {
      v19 = a6;
    }

    v23 = v12 - v14;
    if (v12 - v14 > v11)
    {
      v23 = v11;
    }

    if (v19 >= v23)
    {
      v19 = 0.0;
    }

    else
    {
      v18 = v23 - v19;
    }
  }

  if (v9 > v10)
  {
    if (a1)
    {
      *a1 = v16;
      a1[1] = v17;
    }

    v16 = v19;
    v17 = v18;
  }

  else if (a1)
  {
    *a1 = v19;
    a1[1] = v18;
  }

  if (a2)
  {
    *a2 = v16;
    a2[1] = v17;
  }

  return v14 < v15;
}

BOOL sub_10008E790(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v12 = a6;
  v13 = a4;
  v14 = a6 + a7 * 0.5;
  v43 = a4 + a5 * 0.5;
  if (v43 > v14)
  {
    v15 = a6 + a7;
    v16 = a4 + a5;
    a6 = a4;
    a4 = v12;
  }

  else
  {
    v15 = a4 + a5;
    v16 = a6 + a7;
  }

  v48 = 0.0;
  v49 = 0.0;
  v17 = v13 + v12;
  v18 = v16 + v15 - (v13 + v12);
  if (v17 >= a8)
  {
    v19 = v17;
  }

  else
  {
    v19 = a8;
  }

  v20 = v17 + v18;
  if (v20 >= a8 + a9)
  {
    v21 = a8 + a9;
  }

  else
  {
    v21 = v20;
  }

  v42 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  if (v19 < v21)
  {
    v42 = v21 - v19;
    v27 = v19 + v21 - v19;
    v28 = v19 - v16;
    if (v19 - v16 < a4)
    {
      v28 = a4;
    }

    v29 = v27 - a6;
    if (v27 - a6 > v15)
    {
      v29 = v15;
    }

    if (v28 >= v29)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = v29 - v28;
    }

    if (v28 >= v29)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = v28;
    }

    if (v19 - v15 >= a6)
    {
      v24 = v19 - v15;
    }

    else
    {
      v24 = a6;
    }

    v30 = v27 - a4;
    if (v30 > v16)
    {
      v30 = v16;
    }

    if (v24 >= v30)
    {
      v22 = v19;
      v24 = 0.0;
    }

    else
    {
      v23 = v30 - v24;
      v22 = v19;
    }
  }

  v46 = 0.0;
  v47 = 0.0;
  v44 = 0.0;
  v45 = 0.0;
  sub_10008E67C(&v46, &v44, &v48, a4, v15 - a4, a6, v16 - a6, a8, a9);
  v32 = v46;
  v31 = v47;
  if (v26 != 0.0)
  {
    if (v46 == 0.0)
    {
      v31 = v25;
      v32 = v26;
    }

    else
    {
      v33 = v46 + v47;
      if (v26 < v46)
      {
        v32 = v26;
      }

      if (v25 + v26 >= v33)
      {
        v33 = v25 + v26;
      }

      v31 = v33 - v32;
    }
  }

  v34 = v44;
  v35 = v45;
  if (v24 != 0.0)
  {
    if (v24 >= v44)
    {
      v36 = v44;
    }

    else
    {
      v36 = v24;
    }

    v37 = v44 + v45;
    if (v23 + v24 >= v44 + v45)
    {
      v37 = v23 + v24;
    }

    v35 = v37 - v36;
    if (v44 == 0.0)
    {
      v35 = v23;
      v34 = v24;
    }

    else
    {
      v34 = v36;
    }
  }

  if (a3)
  {
    v39 = v48;
    v38 = v49;
    if (v22 != 0.0)
    {
      if (v48 == 0.0)
      {
        v38 = v42;
        v39 = v22;
      }

      else
      {
        v40 = v48 + v49;
        if (v22 < v48)
        {
          v39 = v22;
        }

        if (v42 + v22 >= v40)
        {
          v40 = v42 + v22;
        }

        v38 = v40 - v39;
      }
    }

    *a3 = v39;
    a3[1] = v38;
  }

  if (v43 > v14)
  {
    if (a1)
    {
      *a1 = v34;
      a1[1] = v35;
    }

    v34 = v32;
    v35 = v31;
  }

  else if (a1)
  {
    *a1 = v32;
    a1[1] = v31;
  }

  if (a2)
  {
    *a2 = v34;
    a2[1] = v35;
  }

  return v19 < v21;
}

BOOL sub_10008E9F8(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v14 = a6;
  v47 = a6 + a7 * 0.5;
  v48 = a4 + a5 * 0.5;
  if (v48 > v47)
  {
    v15 = a6 + a7;
    v16 = a4 + a5;
    v17 = a4;
  }

  else
  {
    v15 = a4 + a5;
    v16 = a6 + a7;
    v17 = a6;
    v14 = a4;
  }

  v58 = 0.0;
  v59 = 0.0;
  v57 = 0uLL;
  v55 = 0.0;
  v56 = 0.0;
  v53 = 0.0;
  v54 = 0.0;
  v51 = 0.0;
  v52 = 0.0;
  v49 = 0.0;
  v50 = 0.0;
  v18 = -(v15 - v17 * 2.0);
  if (v18 >= a8)
  {
    v19 = -(v15 - v17 * 2.0);
  }

  else
  {
    v19 = a8;
  }

  v20 = -(v14 - v16 * 2.0) - v18 - (v15 - v17 * 2.0);
  v21 = a8 + a9;
  if (v20 >= a8 + a9)
  {
    v20 = a8 + a9;
  }

  v22 = v19 < v20;
  v23 = 0uLL;
  if (v19 < v20)
  {
    sub_10008E67C(&v58, v57.f64, &v51, v14, v15 - v14, v17 + v17, v16 + v16 - (v17 + v17), a8, a9);
    __asm { FMOV            V1.2D, #0.5 }

    v23 = vmulq_f64(v57, _Q1);
  }

  v29 = -(v16 - v14 * 2.0);
  if (v29 >= a8)
  {
    v30 = -(v16 - v14 * 2.0);
  }

  else
  {
    v30 = a8;
  }

  v31 = -(v17 - v15 * 2.0) - v29 - (v16 - v14 * 2.0);
  if (v31 >= v21)
  {
    v31 = a8 + a9;
  }

  if (v30 >= v31)
  {
    v32 = v58;
    v33 = 0.0;
    if (v58 == 0.0)
    {
      v32 = 0.0;
    }

    else
    {
      v33 = v59;
    }
  }

  else
  {
    v46 = v23;
    sub_10008E67C(&v55, &v53, &v49, v14 + v14, v15 + v15 - (v14 + v14), v17, v16 - v17, a8, a9);
    v23 = v46;
    v32 = v55 * 0.5;
    v33 = v56 * 0.5;
    v34 = v59;
    if (v58 >= v55 * 0.5)
    {
      v35 = v55 * 0.5;
    }

    else
    {
      v35 = v58;
    }

    v36 = v58 + v59;
    if (v58 + v59 < v32 + v33)
    {
      v36 = v32 + v33;
    }

    v37 = v36 - v35;
    if (v32 == 0.0)
    {
      v35 = v58;
    }

    else
    {
      v34 = v37;
    }

    v22 = 1;
    if (v58 != 0.0)
    {
      v33 = v34;
      v32 = v35;
    }
  }

  v38 = v53;
  v39 = v54;
  if (v23.f64[0] != 0.0)
  {
    if (v23.f64[0] >= v53)
    {
      v40 = v53;
    }

    else
    {
      v40 = v23.f64[0];
    }

    v41 = v53 + v54;
    if (v23.f64[0] + v23.f64[1] >= v53 + v54)
    {
      v41 = v23.f64[0] + v23.f64[1];
    }

    v39 = v41 - v40;
    if (v53 == 0.0)
    {
      v39 = v23.f64[1];
      v38 = v23.f64[0];
    }

    else
    {
      v38 = v40;
    }
  }

  if (a3)
  {
    v42 = v50;
    v43 = v49;
    if (v51 != 0.0)
    {
      if (v49 == 0.0)
      {
        v42 = v52;
        v43 = v51;
      }

      else
      {
        v44 = v49 + v50;
        if (v51 < v49)
        {
          v43 = v51;
        }

        if (v51 + v52 >= v44)
        {
          v44 = v51 + v52;
        }

        v42 = v44 - v43;
      }
    }

    *a3 = v43;
    a3[1] = v42;
  }

  if (v48 > v47)
  {
    if (a1)
    {
      *a1 = v38;
      a1[1] = v39;
    }

    v38 = v32;
    v39 = v33;
  }

  else if (a1)
  {
    *a1 = v32;
    a1[1] = v33;
  }

  if (a2)
  {
    *a2 = v38;
    a2[1] = v39;
  }

  return v22;
}

BOOL sub_10008ECB4(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v14 = a6;
  v47 = a6 + a7 * 0.5;
  v48 = a4 + a5 * 0.5;
  if (v48 > v47)
  {
    v15 = a6 + a7;
    v16 = a4 + a5;
    v17 = a4;
  }

  else
  {
    v15 = a4 + a5;
    v16 = a6 + a7;
    v17 = a6;
    v14 = a4;
  }

  v58 = 0.0;
  v59 = 0.0;
  v57 = 0uLL;
  v55 = 0.0;
  v56 = 0.0;
  v53 = 0.0;
  v54 = 0.0;
  v51 = 0.0;
  v52 = 0.0;
  v49 = 0.0;
  v50 = 0.0;
  v18 = -(v15 - v17 * 4.0);
  if (v18 >= a8)
  {
    v19 = -(v15 - v17 * 4.0);
  }

  else
  {
    v19 = a8;
  }

  v20 = -(v14 - v16 * 4.0) - v18 - (v15 - v17 * 4.0);
  v21 = a8 + a9;
  if (v20 >= a8 + a9)
  {
    v20 = a8 + a9;
  }

  v22 = v19 < v20;
  v23 = 0uLL;
  if (v19 < v20)
  {
    sub_10008E67C(&v58, v57.f64, &v51, v14, v15 - v14, v17 * 4.0, v16 * 4.0 - v17 * 4.0, a8, a9);
    __asm { FMOV            V1.2D, #0.25 }

    v23 = vmulq_f64(v57, _Q1);
  }

  v29 = -(v16 - v14 * 4.0);
  if (v29 >= a8)
  {
    v30 = -(v16 - v14 * 4.0);
  }

  else
  {
    v30 = a8;
  }

  v31 = -(v17 - v15 * 4.0) - v29 - (v16 - v14 * 4.0);
  if (v31 >= v21)
  {
    v31 = a8 + a9;
  }

  if (v30 >= v31)
  {
    v32 = v58;
    v33 = 0.0;
    if (v58 == 0.0)
    {
      v32 = 0.0;
    }

    else
    {
      v33 = v59;
    }
  }

  else
  {
    v46 = v23;
    sub_10008E67C(&v55, &v53, &v49, v14 * 4.0, v15 * 4.0 - v14 * 4.0, v17, v16 - v17, a8, a9);
    v23 = v46;
    v32 = v55 * 0.25;
    v33 = v56 * 0.25;
    v34 = v59;
    if (v58 >= v55 * 0.25)
    {
      v35 = v55 * 0.25;
    }

    else
    {
      v35 = v58;
    }

    v36 = v58 + v59;
    if (v58 + v59 < v32 + v33)
    {
      v36 = v32 + v33;
    }

    v37 = v36 - v35;
    if (v32 == 0.0)
    {
      v35 = v58;
    }

    else
    {
      v34 = v37;
    }

    v22 = 1;
    if (v58 != 0.0)
    {
      v33 = v34;
      v32 = v35;
    }
  }

  v38 = v53;
  v39 = v54;
  if (v23.f64[0] != 0.0)
  {
    if (v23.f64[0] >= v53)
    {
      v40 = v53;
    }

    else
    {
      v40 = v23.f64[0];
    }

    v41 = v53 + v54;
    if (v23.f64[0] + v23.f64[1] >= v53 + v54)
    {
      v41 = v23.f64[0] + v23.f64[1];
    }

    v39 = v41 - v40;
    if (v53 == 0.0)
    {
      v39 = v23.f64[1];
      v38 = v23.f64[0];
    }

    else
    {
      v38 = v40;
    }
  }

  if (a3)
  {
    v42 = v50;
    v43 = v49;
    if (v51 != 0.0)
    {
      if (v49 == 0.0)
      {
        v42 = v52;
        v43 = v51;
      }

      else
      {
        v44 = v49 + v50;
        if (v51 < v49)
        {
          v43 = v51;
        }

        if (v51 + v52 >= v44)
        {
          v44 = v51 + v52;
        }

        v42 = v44 - v43;
      }
    }

    *a3 = v43;
    a3[1] = v42;
  }

  if (v48 > v47)
  {
    if (a1)
    {
      *a1 = v38;
      a1[1] = v39;
    }

    v38 = v32;
    v39 = v33;
  }

  else if (a1)
  {
    *a1 = v32;
    a1[1] = v33;
  }

  if (a2)
  {
    *a2 = v38;
    a2[1] = v39;
  }

  return v22;
}

uint64_t sub_10008EF74(uint64_t a1, int a2)
{
  if (a2 == 40)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if (a2 == 80)
  {
    v4 = 3;
  }

  if (a2 == 160)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  if (a1 < 0xE)
  {
    return a1;
  }

  v6 = 0;
  while (dword_100197E10[v6] != a1)
  {
    v6 += 5;
    if (v6 == 230)
    {
      return a1;
    }
  }

  v7 = dword_100197E10[v5 + v6];
  if (v7 == 1)
  {
    return a1;
  }

  if (!v7)
  {
    [WCM_Logging logLevel:5 message:@"Wrong combination wifiChannel(%d), bw (%d)", a1, v5, v2, v3];
    return 0;
  }

  return v7;
}

double sub_10008F030(uint64_t a1)
{
  if (a1 >= 0xE)
  {
    v1 = 0.0;
    v2 = &word_1001981AA;
    v3 = 46;
    do
    {
      if (*(v2 - 1) == a1)
      {
        v1 = *v2;
      }

      v2 += 3;
      --v3;
    }

    while (v3);
  }

  else
  {
    v1 = (5 * a1 + 2407);
  }

  if (v1 == 0.0)
  {
    [WCM_Logging logLevel:5 message:@"cannot get center frequency for wifiChannel(%d)", a1];
  }

  return v1;
}

double sub_10008F0C8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 40)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if (a2 == 80)
  {
    v5 = 3;
  }

  if (a2 == 160)
  {
    v6 = 4;
  }

  else
  {
    v6 = v5;
  }

  if (a3 == 4)
  {
    if (![&off_100285A48 containsObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", a1)}])
    {
      [WCM_Logging logLevel:0 message:@"wifiChannel index (%d) is not part of new wifiBand index (%d)", a1, 4];
      goto LABEL_30;
    }

    v9 = &word_1001983B6;
    v7 = 0.0;
    v10 = 59;
    v11 = &word_1001983B6;
    do
    {
      v12 = *v11;
      v11 += 5;
      if (v12 == a1)
      {
        v13 = v9[v6];
        v7 = v13;
        if (!v13)
        {
          [WCM_Logging logLevel:0 message:@"wifiChannel index (%d) does not support bandwidth with index (%d), in band idx (%d)", a1, v6, 4];
        }
      }

      v9 = v11;
      --v10;
    }

    while (v10);
  }

  else
  {
    if (a3 != 3)
    {
      if (a3 == 2)
      {
        if ([&off_100285A18 containsObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", a1)}])
        {
          v7 = (5 * a1 + 2407);
          goto LABEL_33;
        }

        [WCM_Logging logLevel:0 message:@"wifiChannel index (%d) is not part of 2.4GHz wifiBand index(%d)", a1, 2];
      }

      else
      {
        [WCM_Logging logLevel:0 message:@"wifiBand input is invald (%d)", a3, v16];
      }

LABEL_30:
      v7 = 0.0;
LABEL_34:
      [WCM_Logging logLevel:4 message:@"Zero centerFreq identified because either channel index/bandwidth mismatch, or invalid channel band index. Print: wifiChannel=(%d), bandwidth index =(%d), band idx =(%d) ", a1, v6, a3];
      return v7;
    }

    if (![&off_100285A30 containsObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", a1)}])
    {
      [WCM_Logging logLevel:0 message:@"wifiChannel index (%d) is not part of 5GHz wifiBand index (%d)", a1, 3];
      goto LABEL_30;
    }

    v8 = 0;
    while (word_1001982BC[v8] != a1)
    {
      v8 += 5;
      if (v8 == 125)
      {
        goto LABEL_30;
      }
    }

    v14 = word_1001982BC[v6 + v8];
    v7 = v14;
    if (!v14)
    {
      [WCM_Logging logLevel:0 message:@"wifiChannel index (%d) does not support bandwidth with index (%d), in band idx (%d)", a1, v6, 3];
    }
  }

LABEL_33:
  if (v7 == 0.0)
  {
    goto LABEL_34;
  }

  return v7;
}

double sub_10008F338(uint64_t a1)
{
  v1 = 20.0;
  if (a1 >= 0xE)
  {
    v2 = &word_1001981AC;
    v3 = 46;
    while (*(v2 - 2) != a1)
    {
      v2 += 3;
      if (!--v3)
      {
        v1 = 0.0;
        goto LABEL_7;
      }
    }

    v4 = *v2;
    v1 = v4;
    if (v4)
    {
      return v1;
    }

LABEL_7:
    [WCM_Logging logLevel:5 message:@"cannot get bandwidth for wifiChannel(%d)", a1];
  }

  return v1;
}

double sub_10008F3C8(uint64_t a1)
{
  if (a1 >= 0xE)
  {
    v3 = &word_1001981AC;
    v4 = 46;
    while (*(v3 - 2) != a1)
    {
      v3 += 3;
      if (!--v4)
      {
        v2 = 0.0;
        v1 = 0.0;
        goto LABEL_9;
      }
    }

    v1 = *(v3 - 1);
    v2 = *v3;
  }

  else
  {
    v1 = (5 * a1 + 2407);
    v2 = 20.0;
  }

  if (v1 == 0.0)
  {
LABEL_9:
    [WCM_Logging logLevel:5 message:@"cannot get frequency/bandwidth for wifiChannel(%d)", a1];
  }

  return v1 + v2 * -0.5;
}

id sub_10008F480(double a1, double a2)
{
  v4 = +[NSMutableArray array];
  v5 = &word_1001983B8;
  v6 = a1 + a2;
  v7 = 59;
  v8 = &word_1001983B8;
  do
  {
    v9 = *v8;
    v8 += 5;
    v10 = v9 + -10.0;
    if (v10 >= a1)
    {
      v11 = v10;
    }

    else
    {
      v11 = a1;
    }

    v12 = v10 + 20.0;
    if (v12 >= v6)
    {
      v12 = v6;
    }

    if (v11 < v12)
    {
      [v4 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *(v5 - 1))}];
    }

    v5 = v8;
    --v7;
  }

  while (v7);
  return v4;
}

id sub_10008F53C(double a1, double a2)
{
  if (a1 >= 2401.5001)
  {
    v2 = a1;
  }

  else
  {
    v2 = 2401.5001;
  }

  v3 = fmin(a1 + a2, 2480.4999);
  if (v2 >= v3)
  {
    return &__NSArray0__struct;
  }

  v4 = v3 - v2;
  v5 = +[NSMutableArray array];
  v6 = llround(v2);
  v7 = llround(v2 + v4);
  v8 = (v6 - 2402);
  if (v8 <= v7 - 2402)
  {
    v9 = v7 - v6 + 1;
    do
    {
      [v5 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v8)}];
      v8 = (v8 + 1);
      --v9;
    }

    while (v9);
  }

  return v5;
}

id sub_10008F600(double a1, double a2, double a3, double a4)
{
  v5 = a3 + -0.5 + 0.0001;
  v6 = a4 + 0.5 + -0.0001 - v5;
  if (a1 >= v5)
  {
    v7 = a1;
  }

  else
  {
    v7 = v5;
  }

  v8 = a1 + a2;
  if (v8 >= v5 + v6)
  {
    v8 = v5 + v6;
  }

  if (v7 >= v8)
  {
    return &__NSArray0__struct;
  }

  v9 = v8 - v7;
  v10 = +[NSMutableArray array];
  v11 = (llround(v7) - a3);
  v12 = (llround(v7 + v9) - a3);
  if (v11 <= v12)
  {
    v13 = v12 + 1;
    do
    {
      [v10 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v11)}];
      v11 = (v11 + 1);
    }

    while (v13 != v11);
  }

  return v10;
}

id sub_10008F700(uint64_t a1, uint64_t a2)
{
  if (a2 > 13 || a1 > 13 || a2 < a1)
  {
    [WCM_Logging logLevel:1 message:@"invalid channelBegin(%d) channelEnd(%d)", a1, a2];
    return &__NSArray0__struct;
  }

  else
  {
    v4 = sub_10008F53C((5 * a1 + 2397), (5 * a2 + 2417) - (5 * a1 + 2397));
    v5 = v4;
    if (a1 == 1 || a2 == 13)
    {
      v5 = [v4 mutableCopy];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10008F834;
      v7[3] = &unk_10023FAB0;
      v8 = a1 == 1;
      [v5 sortUsingComparator:v7];
    }

    else
    {
      [WCM_Logging logLevel:1 message:@"abnormal WiFi blocklist channel configuration for OOB channelBegin(%d) channelEnd(%d)", a1, a2];
    }
  }

  return v5;
}

uint64_t sub_10008F834(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 intValue];
  if (((v5 > [a3 intValue]) ^ *(a1 + 32)))
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

NSMutableArray *sub_10008F890(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = [NSMutableArray arrayWithCapacity:a2 - a1 + 1];
  if (v3)
  {
    if (a2 == 78)
    {
      if (v3 <= 78)
      {
        LODWORD(v5) = 79;
        do
        {
          v5 = (v5 - 1);
          [(NSMutableArray *)v4 addObject:[NSNumber numberWithInt:v5]];
        }

        while (v5 > v3);
      }

      return v4;
    }

    [WCM_Logging logLevel:1 message:@"abnormal BT blocklist channel configuration for OOB channelBegin(%d) channelEnd(%d)", v3, a2];
  }

  if (a2 >= v3)
  {
    v6 = a2 + 1;
    do
    {
      [(NSMutableArray *)v4 addObject:[NSNumber numberWithInt:v3]];
      v3 = (v3 + 1);
    }

    while (v6 != v3);
  }

  return v4;
}

NSMutableData *sub_10008F978(void *a1)
{
  v2 = [NSMutableData dataWithCapacity:10];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v8 = [*(*(&v9 + 1) + 8 * v6) unsignedCharValue];
        [(NSMutableData *)v2 appendBytes:&v8 length:1];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return v2;
}

uint64_t sub_10008FA88(void *a1, int a2)
{
  if (!a2)
  {
    return 79 - [a1 count];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v3)
  {
    return 76;
  }

  v4 = v3;
  v5 = *v12;
  v6 = 76;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(a1);
      }

      v8 = [*(*(&v11 + 1) + 8 * i) intValue];
      if (v8)
      {
        v9 = v8 == 24;
      }

      else
      {
        v9 = 1;
      }

      if (!v9 && v8 != 78)
      {
        v6 = (v6 - 1);
      }
    }

    v4 = [a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v4);
  return v6;
}

NSMutableArray *sub_100090054(int a1, unsigned int a2, unsigned int a3)
{
  v4 = a2;
  if (a2 <= a3 && (a2 - 1) <= 0xE8u && (a3 - 1) <= 0xE8u && a1)
  {
    v5 = +[NSMutableArray array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [&off_100285BC8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(&off_100285BC8);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          if ([v10 intValue] >= v4 && objc_msgSend(v10, "intValue") <= a3)
          {
            [(NSMutableArray *)v5 addObject:v10];
          }
        }

        v7 = [&off_100285BC8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  else if (a2 > a3 || (a2 - 1) > 0xCu || (a3 - 1) > 0xCu)
  {
    v5 = 0;
    if (a2 <= a3 && (a2 - 32) <= 0x8Du && (a3 - 32) <= 0x8Du)
    {
      v5 = +[NSMutableArray array];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = [&off_100285BE0 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v18;
        do
        {
          for (j = 0; j != v12; j = j + 1)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(&off_100285BE0);
            }

            v15 = *(*(&v17 + 1) + 8 * j);
            if ([v15 intValue] >= v4 && objc_msgSend(v15, "intValue") <= a3)
            {
              [(NSMutableArray *)v5 addObject:v15];
            }
          }

          v12 = [&off_100285BE0 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v12);
      }
    }
  }

  else
  {
    v5 = [NSMutableArray arrayWithCapacity:a3 - a2 + 1];
    do
    {
      [(NSMutableArray *)v5 addObject:[NSNumber numberWithInt:v4++]];
    }

    while (a3 >= v4);
  }

  return v5;
}

const char *sub_100096BF8(unsigned int a1)
{
  if (a1 <= 4)
  {
    return off_10023FE60[a1];
  }

  else
  {
    return "<ISSUE_PRIORITY_INVALID>";
  }
}

int64_t sub_1000978A4(id a1, id a2, id a3)
{
  v4 = [a2 intValue];
  if (v4 > [a3 intValue])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

int64_t sub_100097DA8(id a1, id a2, id a3)
{
  v4 = [a2 intValue];
  if (v4 > [a3 intValue])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

int64_t sub_10009812C(id a1, id a2, id a3)
{
  v4 = [a2 intValue];
  if (v4 > [a3 intValue])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

int64_t sub_100098B44(id a1, id a2, id a3)
{
  v4 = [a2 intValue];
  if (v4 > [a3 intValue])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

int64_t sub_1000991EC(id a1, id a2, id a3)
{
  v4 = [a2 intValue];
  if (v4 > [a3 intValue])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

int64_t sub_100099A84(id a1, id a2, id a3)
{
  v4 = [a2 intValue];
  if (v4 > [a3 intValue])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

int64_t sub_10009A2A0(id a1, id a2, id a3)
{
  v4 = [a2 intValue];
  if (v4 > [a3 intValue])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

int64_t sub_10009A578(id a1, id a2, id a3)
{
  v4 = [a2 intValue];
  if (v4 > [a3 intValue])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

int64_t sub_10009A890(id a1, id a2, id a3)
{
  v4 = [a2 intValue];
  if (v4 > [a3 intValue])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

id sub_10009B9D0(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 isEqual:&__kCFBooleanTrue];
  if (result)
  {
    v7 = *(a1 + 32);

    return [v7 setObject:a3 forKeyedSubscript:a2];
  }

  return result;
}

id sub_10009BA40(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 isEqual:&__kCFBooleanTrue];
  if (result)
  {
    v7 = *(a1 + 32);

    return [v7 setObject:a3 forKeyedSubscript:a2];
  }

  return result;
}

const char *sub_10009CFF4(unsigned int a1)
{
  if (a1 <= 3)
  {
    return off_10023FF00[a1];
  }

  else
  {
    return "<ANTENNA_COMBINATION_INVALID>";
  }
}

NSData *sub_10009D018(uint64_t a1, uint64_t a2)
{
  v4 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/WirelessCoexManager.framework"];
  if (v4)
  {
    v5 = [(NSBundle *)v4 URLForResource:a1 withExtension:a2];
    if (v5)
    {
      result = [+[NSFileManager defaultManager](NSFileManager contentsAtPath:"contentsAtPath:", [(NSURL *)v5 path]];
      if (result)
      {
        return result;
      }

      v7 = @"No contents for resource '%@.%@'";
    }

    else
    {
      v7 = @"No resource found for '%@.%@'";
    }
  }

  else
  {
    v7 = @"Bundle not found for resource '%@.%@'";
  }

  [WCM_Logging logLevel:18 message:v7, a1, a2];
  return 0;
}

void sub_10009D3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009D500(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = WRM_IPTelephonyController;
  [WCM_Logging logLevel:22 message:@"CellularThroughput: Download task starting"];
  v7 = [a2 fileSize];
  [a2 speed];
  v9 = v8;
  [*(*(a1 + 32) + 16) stopMetadataCollection];
  *(*(a1 + 32) + 8) = 0;
  if (a3)
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, @"NO");
    }

    [WCM_Logging logLevel:22 message:@"CellularThroughput: Download task errored out"];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"CellularThroughput: Download task completed, downloaded %u bytes in %f seconds, throughput %f Mbps", v7, (8 * v7) / (v9 * 1000000.0), *&v9];
    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, @"YES");
    }

    v12 = +[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary, "dictionaryWithDictionary:", [*(*(a1 + 32) + 16) getDataForCoreAnalytics]);
    if (v12)
    {
      *(*(a1 + 32) + 24) = +[WRM_BWEvalManager WRM_BWEvalManagerSingleton];
      v13 = [*(*(a1 + 32) + 24) getSpeedTestMetrics];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v14 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v31;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v30 + 1) + 8 * i);
            v19 = [v13 objectForKey:v18];
            NSLog(@"CellularThroughput metrics from BWEstimator: key=%@ value=%@", v18, v19);
            -[NSMutableDictionary setObject:forKey:](v12, "setObject:forKey:", v19, [&off_10028D940 objectForKey:v18]);
          }

          v15 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v15);
      }

      NSLog(@"CellularThroughput flattenedDictionary dictionary count: %lu", [(NSMutableDictionary *)v12 count]);
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v20 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
      v6 = WRM_IPTelephonyController;
      if (v20)
      {
        v21 = v20;
        v22 = *v27;
        do
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v27 != v22)
            {
              objc_enumerationMutation(v12);
            }

            NSLog(@"CellularThroughput flattenedDictionary dictionary from speed test: key=%@ value=%@", *(*(&v26 + 1) + 8 * j), [(NSMutableDictionary *)v12 valueForKey:*(*(&v26 + 1) + 8 * j)]);
          }

          v21 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v21);
      }
    }

    else
    {
      [WCM_Logging logLevel:22 message:@"CellularThroughput: Unable to save to CoreAnalytics: flattenedDictionary dictonary returned from NPTKit is empty"];
      v24 = *(a1 + 40);
      if (v24)
      {
        (*(v24 + 16))(v24, @"NO");
      }
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10009D900;
    v25[3] = &unk_10023FF28;
    v25[4] = v12;
    [WRM_CAInterface sendCAEventLazy:@"com.apple.wifiqa.speed.throughput" payloadBuilder:v25];
    [&v6[98] logLevel:22 message:@"CellularThroughput: save results to CoreAnalytics"];
    [(NSMutableDictionary *)v12 removeAllObjects];
  }
}

uint64_t sub_10009D964()
{
  if (!qword_1002B7E98)
  {
    qword_1002B7E98 = _sl_dlopen();
  }

  return qword_1002B7E98;
}

uint64_t sub_10009DA34(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002B7E98 = result;
  return result;
}

Class sub_10009DAC4(uint64_t a1)
{
  sub_10009DB1C();
  result = objc_getClass("NPTPerformanceTestConfiguration");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10015F534();
  }

  qword_1002B7EA0 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void sub_10009DB1C()
{
  v0 = 0;
  if (!sub_10009D964())
  {
    sub_10015F59C(&v0);
  }
}

Class sub_10009DB60(uint64_t a1)
{
  sub_10009DB1C();
  result = objc_getClass("NPTPerformanceTest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10015F604();
  }

  qword_1002B7EA8 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void sub_10009DF5C(id a1, NSError *a2)
{
  if (a2)
  {
    [WCM_Logging logLevel:0 message:@"BTController initial CBDiscovery Error: %@", a2];
  }
}

id sub_10009DFB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [WCM_Logging logLevel:2 message:@"BTController initial AudioAccessoryDevice Error: %@", a2];
    [*(*(a1 + 32) + 20) invalidate];

    *(*(a1 + 32) + 20) = 0;
    *(*(a1 + 32) + 20) = objc_alloc_init(AADeviceManager);
    [*(*(a1 + 32) + 20) setDispatchQueue:*(*(a1 + 32) + 28)];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10009E1C4;
    v9[3] = &unk_10023FFF8;
    v10 = *(a1 + 32);
    [*(v10 + 20) setDeviceFoundHandler:v9];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10009E1D0;
    v7[3] = &unk_10023FFF8;
    v8 = *(a1 + 32);
    [*(v8 + 20) setDeviceLostHandler:v7];
    result = [WCM_Logging logLevel:2 message:@"BTController initial activation was unsuccessful"];
    if (dword_1002B78E0 == -1)
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 28);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10009E1DC;
      handler[3] = &unk_10023E178;
      handler[4] = v4;
      return notify_register_dispatch("com.apple.AudioAccessory.daemonStarted", &dword_1002B78E0, v5, handler);
    }
  }

  else
  {

    return [WCM_Logging logLevel:2 message:@"BTController initial AudioAccessoryDevice Activated Successfully"];
  }

  return result;
}

void sub_10009E1F8(id a1, NSError *a2)
{
  if (a2)
  {
    [WCM_Logging logLevel:2 message:@"BTController Register AudioAccessoryDevice Error: %@", a2];
  }

  else
  {

    [WCM_Logging logLevel:2 message:@"BTController Register AudioAccessoryDevice Activated Successfully"];
  }
}

id sub_10009EA10(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(a1 + 32) + 44) = v2;
  if ((v2 & 1) == 0)
  {
    *(*(a1 + 32) + 48) = 0;
    *(*(a1 + 32) + 52) = 0;
    *(*(a1 + 32) + 60) = 0;
    *(*(a1 + 32) + 68) = 0;
    *(*(a1 + 32) + 76) = 0;
    *(*(a1 + 32) + 100) = 0;
    *(*(a1 + 32) + 108) = 0;
    *(*(a1 + 32) + 116) = 0;
    *(*(a1 + 32) + 52) = 0;
    *(*(a1 + 32) + 76) = 0;
    *(*(a1 + 32) + 116) = 0;
    *(*(a1 + 32) + 124) = 0;
    *(*(a1 + 32) + 132) = 0;
    *(*(a1 + 32) + 140) = 0;
    *(*(a1 + 32) + 148) = 0;
    *(*(a1 + 32) + 172) = &stru_100255120;
    if (qword_1002B7CB8)
    {
      xpc_release(qword_1002B7CB8);
      qword_1002B7CB8 = 0;
    }

    if (qword_1002B7CB0)
    {
      xpc_release(qword_1002B7CB0);
      qword_1002B7CB0 = 0;
    }

    v3 = [*(a1 + 32) btConnections];
    objc_sync_enter(v3);
    [objc_msgSend(*(a1 + 32) "btConnections")];
    objc_sync_exit(v3);
    v4 = [*(a1 + 32) allBTConnections];
    objc_sync_enter(v4);
    [objc_msgSend(*(a1 + 32) "allBTConnections")];
    objc_sync_exit(v4);
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [*(a1 + 32) printBTConnections];
  }

  v5 = +[WCM_PolicyManager singleton];
  v6 = [*(a1 + 32) powerState];

  return [v5 updateBTPowerState:v6];
}

NSDictionary *sub_1000A0994(void *a1)
{
  v2 = a1[5];
  v5[0] = a1[4];
  v4[0] = @"deviceEnumeration";
  v4[1] = @"duration";
  v5[1] = [NSNumber numberWithUnsignedLongLong:v2];
  v4[2] = @"percentIn2G";
  v5[2] = [NSNumber numberWithUnsignedLongLong:a1[6]];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];
}

NSDictionary *sub_1000A0CC0(void *a1)
{
  v2 = a1[5];
  v5[0] = a1[4];
  v4[0] = @"profileName";
  v4[1] = @"durationMinutes";
  v5[1] = [NSNumber numberWithUnsignedLongLong:v2];
  v4[2] = @"btDurPercent";
  v5[2] = [NSNumber numberWithUnsignedLongLong:a1[6]];
  v4[3] = @"hybridPercent";
  v5[3] = [NSNumber numberWithUnsignedLongLong:a1[7]];
  v4[4] = @"parallelPercent";
  v5[4] = [NSNumber numberWithUnsignedLongLong:a1[8]];
  v4[5] = @"btDurAirPercent";
  v5[5] = [NSNumber numberWithUnsignedLongLong:a1[9]];
  v4[6] = @"wlrssiCoexAvg";
  v5[6] = [NSNumber numberWithLongLong:a1[10]];
  v4[7] = @"btrssiCoexAvg";
  v5[7] = [NSNumber numberWithLongLong:a1[11]];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:8];
}

xpc_object_t sub_1000A529C(uint64_t a1)
{
  value = xpc_dictionary_get_value(*(a1 + 32), "kMessageArgs");
  if (value)
  {
    v3 = value;
    v4 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
    if (xpc_dictionary_get_value(v3, "kWCMBTMetricsReport_Active_PHY"))
    {
      uint64 = xpc_dictionary_get_uint64(v3, "kWCMBTMetricsReport_Active_PHY");
    }

    else
    {
      [*(a1 + 40) setMActivePhyValid:0];
      [*(a1 + 40) setMActivePhy:0];
      uint64 = 0;
    }

    [*(a1 + 40) mActivePhy];
    [*(a1 + 40) setMActivePhy:uint64];
    [*(a1 + 40) setMActivePhyValid:1];
    [*(a1 + 40) setMNumberofSamples:{objc_msgSend(*(a1 + 40), "mNumberofSamples") + 1}];
    if ([*(a1 + 40) mActivePhy] == 2)
    {
      if (xpc_dictionary_get_value(v3, "kWCMBTMetricsReport_Classic_RSSI"))
      {
        [*(a1 + 40) setMClassicRssi:{128 - (xpc_dictionary_get_uint64(v3, "kWCMBTMetricsReport_Classic_RSSI") & 0x7F)}];
        [*(a1 + 40) mMovingAvgRSSI];
        v8 = v7;
        v9 = [*(a1 + 40) mClassicRssi];
        if (v8 == 128.0)
        {
          v10 = v9;
LABEL_19:
          [*(a1 + 40) setMMovingAvgRSSI:v10];
          goto LABEL_20;
        }

        if (v9 != 128)
        {
          v15 = ([v4 dataBtMovingAvgAlphaDenum] - 1);
          [*(a1 + 40) mMovingAvgRSSI];
          v17 = [*(a1 + 40) mClassicRssi] + v15 * v16;
          v10 = v17 / [v4 dataBtMovingAvgAlphaDenum];
          goto LABEL_19;
        }
      }

      else
      {
        [*(a1 + 40) setMClassicRssi:128];
      }

LABEL_20:
      if (xpc_dictionary_get_value(v3, "kWCMBTMetricsReportClassicSuccessfulTxCount"))
      {
        v18 = xpc_dictionary_get_uint64(v3, "kWCMBTMetricsReportClassicSuccessfulTxCount");
        [*(a1 + 40) setMClassicSuccessfulTxCount:v18];
        [*(a1 + 40) setMMovingAvgSuccessfulTxCount:{(v18 + objc_msgSend(*(a1 + 40), "mMovingAvgSuccessfulTxCount") * (objc_msgSend(v4, "dataBtMovingAvgAlphaDenum") - 1)) / objc_msgSend(v4, "dataBtMovingAvgAlphaDenum")}];
      }

      else
      {
        [*(a1 + 40) setMClassicSuccessfulTxCount:0];
      }

      if (xpc_dictionary_get_value(v3, "kWCMBTMetricsReportClassicReTxCount"))
      {
        v19 = xpc_dictionary_get_uint64(v3, "kWCMBTMetricsReportClassicReTxCount");
        [*(a1 + 40) setMClassicReTxCount:v19];
        [*(a1 + 40) setMMovingAvgReTxCount:{(v19 + objc_msgSend(*(a1 + 40), "mMovingAvgReTxCount") * (objc_msgSend(v4, "dataBtMovingAvgAlphaDenum") - 1)) / objc_msgSend(v4, "dataBtMovingAvgAlphaDenum")}];
      }

      else
      {
        [*(a1 + 40) setMClassicReTxCount:0];
      }

      if (xpc_dictionary_get_value(v3, "kWCMBTMetricsReportClassicSuccessfulRxCount"))
      {
        v20 = xpc_dictionary_get_uint64(v3, "kWCMBTMetricsReportClassicSuccessfulRxCount");
        [*(a1 + 40) setMClassicSuccessfulRxCount:v20];
        [*(a1 + 40) setMMovingAvgSuccessfulRxCount:{(v20 + objc_msgSend(*(a1 + 40), "mMovingAvgSuccessfulRxCount") * (objc_msgSend(v4, "dataBtMovingAvgAlphaDenum") - 1)) / objc_msgSend(v4, "dataBtMovingAvgAlphaDenum")}];
      }

      else
      {
        [*(a1 + 40) setMClassicSuccessfulRxCount:0];
      }

      if (xpc_dictionary_get_value(v3, "kWCMBTMetricsReportClassicRxErrorCount"))
      {
        v21 = xpc_dictionary_get_uint64(v3, "kWCMBTMetricsReportClassicRxErrorCount");
        [*(a1 + 40) setMClassicRxErrorCount:v21];
        [*(a1 + 40) setMMovingAvgRxErrorCount:{(v21 + objc_msgSend(*(a1 + 40), "mMovingAvgRxErrorCount") * (objc_msgSend(v4, "dataBtMovingAvgAlphaDenum") - 1)) / objc_msgSend(v4, "dataBtMovingAvgAlphaDenum")}];
      }

      else
      {
        [*(a1 + 40) setMClassicRxErrorCount:0];
      }

      if (xpc_dictionary_get_value(v3, "kWCMBTMetricsReportClassicCoexDenialCount"))
      {
        v22 = xpc_dictionary_get_uint64(v3, "kWCMBTMetricsReportClassicCoexDenialCount");
        v23 = *(a1 + 40);
      }

      else
      {
        v23 = *(a1 + 40);
        v22 = 0;
      }

      [v23 setMClassicCoexDenialCount:v22];
      goto LABEL_56;
    }

    if ([*(a1 + 40) mActivePhy] != 1)
    {
LABEL_56:
      if (xpc_dictionary_get_value(v3, "kWCMBTMetricsReport_NonMagnetUtilization"))
      {
        [*(a1 + 40) setMNonMagnetUtilization:{xpc_dictionary_get_double(v3, "kWCMBTMetricsReport_NonMagnetUtilization")}];
      }

      if (xpc_dictionary_get_value(v3, "kWCMBTMetricsReport_MagnetReportReason"))
      {
        [*(a1 + 40) setMMetricsReportReason:{xpc_dictionary_get_uint64(v3, "kWCMBTMetricsReport_MagnetReportReason")}];
        if ([*(a1 + 40) mMetricsReportReason])
        {
          if ([*(a1 + 40) mMetricsReportReason] == 1)
          {
            v33 = "Classic disconnected";
          }

          else
          {
            v34 = [*(a1 + 40) mMetricsReportReason];
            v33 = "INVALID!!!";
            if (v34 == 2)
            {
              v33 = "LE disconnected";
            }
          }
        }

        else
        {
          v33 = "Periodic interval";
        }

        [WCM_Logging logLevel:2 message:@"Metric report reason is %s", v33];
      }

      result = xpc_dictionary_get_value(v3, "kWCMBTMetricsReport_flushCount");
      if (result)
      {
        v35 = xpc_dictionary_get_uint64(v3, "kWCMBTMetricsReport_flushCount");
        v36 = *(a1 + 40);

        return [v36 setMFlushCount:v35];
      }

      return result;
    }

    if (xpc_dictionary_get_value(v3, "kWCMBTMetricsReport_LE_RSSI"))
    {
      [*(a1 + 40) setMLeRssi:{128 - (xpc_dictionary_get_uint64(v3, "kWCMBTMetricsReport_LE_RSSI") & 0x7F)}];
      [*(a1 + 40) mMovingAvgRSSI];
      v12 = v11;
      v13 = [*(a1 + 40) mLeRssi];
      if (v12 == 128.0)
      {
        v14 = v13;
LABEL_39:
        [*(a1 + 40) setMMovingAvgRSSI:v14];
        goto LABEL_40;
      }

      if (v13 != 128)
      {
        v24 = ([v4 dataBtMovingAvgAlphaDenum] - 1);
        [*(a1 + 40) mMovingAvgRSSI];
        v26 = [*(a1 + 40) mLeRssi] + v24 * v25;
        v14 = v26 / [v4 dataBtMovingAvgAlphaDenum];
        goto LABEL_39;
      }
    }

    else
    {
      [*(a1 + 40) setMLeRssi:128];
    }

LABEL_40:
    if (xpc_dictionary_get_value(v3, "kWCMBTMetricsReportLeSuccessfulTxCount"))
    {
      v27 = xpc_dictionary_get_uint64(v3, "kWCMBTMetricsReportLeSuccessfulTxCount");
      [*(a1 + 40) setMLeSuccessfulTxCount:v27];
      [*(a1 + 40) setMMovingAvgSuccessfulTxCount:{(v27 + objc_msgSend(*(a1 + 40), "mMovingAvgSuccessfulTxCount") * (objc_msgSend(v4, "dataBtMovingAvgAlphaDenum") - 1)) / objc_msgSend(v4, "dataBtMovingAvgAlphaDenum")}];
    }

    else
    {
      [*(a1 + 40) setMLeSuccessfulTxCount:0];
    }

    if (xpc_dictionary_get_value(v3, "kWCMBTMetricsReportLeReTxCount"))
    {
      v28 = xpc_dictionary_get_uint64(v3, "kWCMBTMetricsReportLeReTxCount");
      [*(a1 + 40) setMLeReTxCount:v28];
      [*(a1 + 40) setMMovingAvgReTxCount:{(v28 + objc_msgSend(*(a1 + 40), "mMovingAvgReTxCount") * (objc_msgSend(v4, "dataBtMovingAvgAlphaDenum") - 1)) / objc_msgSend(v4, "dataBtMovingAvgAlphaDenum")}];
    }

    else
    {
      [*(a1 + 40) setMLeReTxCount:0];
    }

    if (xpc_dictionary_get_value(v3, "kWCMBTMetricsReportLeSuccessfulRxCount"))
    {
      v29 = xpc_dictionary_get_uint64(v3, "kWCMBTMetricsReportLeSuccessfulRxCount");
      [*(a1 + 40) setMLeSuccessfulRxCount:v29];
      [*(a1 + 40) setMMovingAvgSuccessfulRxCount:{(v29 + objc_msgSend(*(a1 + 40), "mMovingAvgSuccessfulRxCount") * (objc_msgSend(v4, "dataBtMovingAvgAlphaDenum") - 1)) / objc_msgSend(v4, "dataBtMovingAvgAlphaDenum")}];
    }

    else
    {
      [*(a1 + 40) setMLeSuccessfulRxCount:0];
    }

    if (xpc_dictionary_get_value(v3, "kWCMBTMetricsReportLeRxErrorCount"))
    {
      v30 = xpc_dictionary_get_uint64(v3, "kWCMBTMetricsReportLeRxErrorCount");
      [*(a1 + 40) setMLeRxErrorCount:v30];
      [*(a1 + 40) setMMovingAvgRxErrorCount:{(v30 + objc_msgSend(*(a1 + 40), "mMovingAvgRxErrorCount") * (objc_msgSend(v4, "dataBtMovingAvgAlphaDenum") - 1)) / objc_msgSend(v4, "dataBtMovingAvgAlphaDenum")}];
    }

    else
    {
      [*(a1 + 40) setMLeRxErrorCount:0];
    }

    if (xpc_dictionary_get_value(v3, "kWCMBTMetricsReportLeCoexDenialCount"))
    {
      v31 = xpc_dictionary_get_uint64(v3, "kWCMBTMetricsReportLeCoexDenialCount");
      v32 = *(a1 + 40);
    }

    else
    {
      v32 = *(a1 + 40);
      v31 = 0;
    }

    [v32 setMLeCoexDenialCount:v31];
    goto LABEL_56;
  }

  return [WCM_Logging logLevel:0 message:@"handleBTMetricsRpt: Error Getting BT metrics!!!"];
}

id sub_1000A5B2C(uint64_t a1)
{
  value = xpc_dictionary_get_value(*(a1 + 32), "kMessageArgs");
  if (value)
  {
    v3 = value;
    if (xpc_dictionary_get_value(value, "kWCMBTPhyReport_LE_PHY_RATE"))
    {
      [*(a1 + 40) setMBtPhyRate:{xpc_dictionary_get_uint64(v3, "kWCMBTPhyReport_LE_PHY_RATE")}];
    }

    if (xpc_dictionary_get_value(v3, "kWCMBTPhyReport_CLASSIC_PHY_RATE"))
    {
      [*(a1 + 40) setMBtPhyRate:{xpc_dictionary_get_uint64(v3, "kWCMBTPhyReport_CLASSIC_PHY_RATE")}];
    }

    return +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"BTMetrics: BtPhyRate %llu", [*(a1 + 40) mBtPhyRate]);
  }

  else
  {

    return [WCM_Logging logLevel:0 message:@"handleBTPhyRpt: Error Getting Args"];
  }
}

void sub_1000A7A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A7A4C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A7B40;
    block[3] = &unk_100240260;
    v8 = v3;
    v9 = v5;
    v10 = *(a1 + 32);
    dispatch_async(v6, block);
  }

  else
  {
    [WCM_Logging logLevel:24 message:@"ProximityLinkEval: ClientCBDeviceHandler: strongSelf does not exist"];
  }
}

void sub_1000A7B40(uint64_t a1)
{
  [WCM_Logging logLevel:24 message:@"ProximityLinkEval: ClientCBDeviceHandler: callback, initialized for CBDevice %@", *(a1 + 32)];
  v2 = [*(*(a1 + 40) + 40) getRSSI];
  if (v2 != -1)
  {
    v3 = v2;
    if (!*(*(a1 + 40) + 16))
    {
      [WCM_Logging logLevel:24 message:@"ProximityLinkEval: ClientCBDeviceHandler: initializing mRSSIDict"];
      v4 = +[NSMutableDictionary dictionary];
      v5 = *(a1 + 48);
      v6 = *(v5 + 16);
      *(v5 + 16) = v4;
    }

    v17 = +[NSMutableDictionary dictionary];
    v7 = [NSNumber numberWithInt:v3];
    [v17 setObject:v7 forKey:@"btRssi"];

    v8 = [*(a1 + 32) model];
    [v17 setObject:v8 forKey:@"model"];

    v9 = *(*(a1 + 40) + 16);
    v10 = [*(a1 + 32) idsDeviceID];
    [v9 setObject:v17 forKey:v10];

    v11 = [*(a1 + 32) idsDeviceID];
    v12 = [*(a1 + 32) model];
    [WCM_Logging logLevel:24 message:@"ProximityLinkEval: ClientCBDeviceHandler: RSSI Stats collected: DeviceID %@, Model %@, btRssi %d", v11, v12, v3];

    v13 = [*(a1 + 32) model];
    v14 = [v13 lowercaseString];
    LODWORD(v9) = [v14 containsString:@"iphone"];

    if (v9)
    {
      v15 = *(*(a1 + 40) + 48);
      v16 = [*(a1 + 32) idsDeviceID];
      [v15 addObject:v16];
    }
  }
}

id sub_1000A7F44(uint64_t a1)
{
  v21[0] = @"btRssi";
  v2 = [*(a1 + 32) valueForKey:?];
  if (v2)
  {
    v3 = [*(a1 + 32) valueForKey:@"btRssi"];
  }

  else
  {
    v3 = @"UNKNOWN";
  }

  v19 = v3;
  v22[0] = v3;
  v22[1] = @"WiFi";
  v21[1] = @"linkType";
  v21[2] = @"phoneBatteryLife";
  v4 = [*(a1 + 32) valueForKey:@"batteryLife"];
  if (v4)
  {
    v5 = [*(a1 + 32) valueForKey:@"batteryLife"];
  }

  else
  {
    v5 = @"UNKNOWN";
  }

  v18 = v5;
  v22[2] = v5;
  v21[3] = @"signalBar";
  v6 = [*(a1 + 32) valueForKey:@"signalStrength"];
  if (v6)
  {
    v7 = [*(a1 + 32) valueForKey:@"signalStrength"];
  }

  else
  {
    v7 = @"UNKNOWN";
  }

  v22[3] = v7;
  v21[4] = @"ratType";
  v8 = [*(a1 + 32) valueForKey:@"networkType"];
  v20 = v2;
  if (v8)
  {
    v9 = *(a1 + 40);
    v17 = [*(a1 + 32) valueForKey:@"networkType"];
    v10 = [v9 nameForNetworkType:?];
  }

  else
  {
    v10 = @"UNKNOWN_RADIO";
  }

  v22[4] = v10;
  v21[5] = @"wifiRssi";
  v11 = [NSNumber numberWithInt:*(*(a1 + 40) + 56)];
  v22[5] = v11;
  v21[6] = @"wifiSnr";
  v12 = [NSNumber numberWithInt:*(*(a1 + 40) + 60)];
  v22[6] = v12;
  v21[7] = @"cca";
  v13 = [NSNumber numberWithInt:*(*(a1 + 40) + 64)];
  v22[7] = v13;
  v21[8] = @"devicePointOfInterest";
  v14 = [NSNumber numberWithInt:*(*(a1 + 40) + 68)];
  v22[8] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:9];

  if (v8)
  {
  }

  if (v6)
  {
  }

  if (v4)
  {
  }

  if (v20)
  {
  }

  return v15;
}

void sub_1000A87E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = *(a1 + 32);
    v25 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v25)
    {
      v24 = *v28;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v3 = *(*(&v27 + 1) + 8 * i);
          v4 = +[NSMutableDictionary dictionary];
          v5 = [v3 deviceName];
          [v4 setObject:v5 forKey:@"deviceName"];

          v6 = [v3 model];
          [v4 setObject:v6 forKey:@"model"];

          v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 networkType]);
          [v4 setObject:v7 forKey:@"networkType"];

          v8 = [v3 batteryLife];
          [v4 setObject:v8 forKey:@"batteryLife"];

          v9 = [v3 signalStrength];
          [v4 setObject:v9 forKey:@"signalStrength"];

          v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 group]);
          [v4 setObject:v10 forKey:@"group"];

          v11 = WeakRetained[3];
          v12 = [v3 deviceIdentifier];
          [v11 setObject:v4 forKey:v12];

          v13 = [v3 deviceIdentifier];
          v14 = [v3 deviceName];
          v15 = [v3 model];
          v16 = [v3 networkType];
          v17 = [v3 batteryLife];
          v18 = [v3 signalStrength];
          +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"ProximityLinkEval: session: PHS Stats collected: deviceID %@, deviceName %@, model %@, networkType %d, batteryLife %@, signalStrength %@, group %ld", v13, v14, v15, v16, v17, v18, [v3 group]);

          v19 = [v3 model];
          v20 = [v19 lowercaseString];
          LODWORD(v13) = [v20 containsString:@"iphone"];

          if (v13)
          {
            v21 = WeakRetained[6];
            v22 = [v3 deviceIdentifier];
            [v21 addObject:v22];
          }
        }

        v25 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v25);
    }
  }

  else
  {
    [WCM_Logging logLevel:24 message:@"ProximityLinkEval: session: strongSelf does not exist"];
  }
}

void sub_1000A9420(uint64_t a1)
{
  [WCM_Logging logLevel:22 message:@"DataStoreManager: Writing to data store"];
  v2 = [*(*(a1 + 32) + 8) persistentContainer];
  v3 = [v2 viewContext];
  v4 = [NSEntityDescription insertNewObjectForEntityForName:@"CoreDataStore" inManagedObjectContext:v3];

  v5 = [*(a1 + 40) objectForKey:@"cellID"];

  if (v5)
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"cellID"];
    [v4 setCellID:v6];
  }

  v7 = [*(a1 + 40) objectForKey:@"bssid"];

  if (v7)
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:@"bssid"];
    [v4 setBssid:v8];
  }

  v9 = [*(a1 + 40) objectForKey:@"cell_backhaul"];

  if (v9)
  {
    v10 = [*(a1 + 40) objectForKeyedSubscript:@"cell_backhaul"];
    [v4 setCell_backhaul:{objc_msgSend(v10, "intValue")}];
  }

  v11 = [*(a1 + 40) objectForKey:@"wifi_backhaul"];

  if (v11)
  {
    v12 = [*(a1 + 40) objectForKeyedSubscript:@"wifi_backhaul"];
    [v4 setWifi_backhaul:{objc_msgSend(v12, "intValue")}];
  }

  v13 = [*(a1 + 40) objectForKey:@"tcpRTT"];

  if (v13)
  {
    v14 = [*(a1 + 40) objectForKeyedSubscript:@"tcpRTT"];
    [v4 setTcpRTT:{objc_msgSend(v14, "intValue")}];
  }

  v15 = [*(*(a1 + 32) + 8) persistentContainer];
  v16 = [v15 viewContext];
  v19 = 0;
  [v16 save:&v19];
  v17 = v19;

  [WCM_Logging logLevel:22 message:@"DataStoreManager: Write: No Error saving context"];
  v18 = *(a1 + 48);
  if (v18)
  {
    (*(v18 + 16))(v18, 1);
  }
}

void sub_1000A9980(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A9E34;
  v18[3] = &unk_100240370;
  v19 = *(a1 + 56);
  [v2 fetchObjectsForCellID:v3 completionHandler:v18];

  v4 = *(*(a1 + 32) + 24);
  if (v4)
  {
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"DataStoreManager: number of fecthed objects: %lu", [v4 count]);
    if (![*(*(a1 + 32) + 24) count])
    {
      [WCM_Logging logLevel:22 message:@"DataStoreManager: The given cellID not found to update. Writing this record to the data store."];
      [*(a1 + 32) write:*(a1 + 40) completionHandler:*(a1 + 56)];
      goto LABEL_13;
    }

    if ([*(*(a1 + 32) + 24) count] == 1)
    {
      v5 = [*(*(a1 + 32) + 24) objectAtIndex:0];
      v13 = [v5 valueForKey:@"cellID"];
      v14 = [v5 valueForKey:@"bssid"];
      v15 = [v5 valueForKey:@"cell_backhaul"];
      v16 = [v5 valueForKey:@"wifi_backhaul"];
      v17 = [v5 valueForKey:@"tcpRTT"];
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"DataStoreManager: the current record for given cellID is %@, %@, %d, %d, %d", v13, v14, [v15 intValue], objc_msgSend(v16, "intValue"), objc_msgSend(v17, "intValue"));
      v20[0] = @"cellID";
      v6 = [v5 valueForKey:@"cellID"];
      v21[0] = v6;
      v20[1] = @"bssid";
      v7 = [v5 valueForKey:@"bssid"];
      v21[1] = v7;
      v20[2] = @"cell_backhaul";
      v8 = [v5 valueForKey:@"cell_backhaul"];
      v21[2] = v8;
      v20[3] = @"wifi_backhaul";
      v9 = [v5 valueForKey:@"wifi_backhaul"];
      v21[3] = v9;
      v20[4] = @"tcpRTT";
      v10 = [v5 valueForKey:?];
      v21[4] = v10;
      v11 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:5];

      if ([v11 isEqualToDictionary:*(a1 + 40)])
      {
        [WCM_Logging logLevel:22 message:@"DataStoreManager: Update: No change in field values"];
      }

      else
      {
        [WCM_Logging logLevel:22 message:@"DataStoreManager: Update record for given bssid"];
        [*(a1 + 32) write:*(a1 + 40) completionHandler:*(a1 + 56)];
      }

      goto LABEL_13;
    }

    [WCM_Logging logLevel:22 message:@"DataStoreManager: Update: Number of records > 1 for given bssid to update"];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"DataStoreManager: No Records found to update"];
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    (*(v12 + 16))(v12, 0);
  }

LABEL_13:
}

uint64_t sub_1000A9E34(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))(result, 0);
    }
  }

  return result;
}

void sub_1000A9FA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000AA3AC;
  v22[3] = &unk_1002403C0;
  v22[4] = v2;
  v23 = *(a1 + 48);
  [v2 fetchObjectsForCellID:v3 completionHandler:v22];
  if ([*(*(a1 + 32) + 24) count])
  {
    v4 = [*(*(a1 + 32) + 24) count];
    v5 = *(a1 + 40);
    if (v4 == 1)
    {
      [WCM_Logging logLevel:22 message:@"DataStoreManager: Record for given cellID %@ found", *(a1 + 40)];
      v6 = [*(*(a1 + 32) + 24) lastObject];
      v7 = [v6 valueForKey:@"cellID"];
      v8 = [v6 valueForKey:@"bssid"];
      v9 = [v6 valueForKey:@"cell_backhaul"];
      v10 = [v9 intValue];
      v11 = [v6 valueForKey:@"wifi_backhaul"];
      v12 = [v11 intValue];
      v13 = [v6 valueForKey:@"tcpRTT"];
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"DataStoreManager: the current record for given cellID is %@, %@, %d, %d, %d", v7, v8, v10, v12, [v13 intValue]);

      v14 = *(a1 + 48);
      if (v14)
      {
        v24[0] = @"cellID";
        v15 = [v6 valueForKey:?];
        v25[0] = v15;
        v24[1] = @"bssid";
        v16 = [v6 valueForKey:?];
        v25[1] = v16;
        v24[2] = @"cell_backhaul";
        v17 = [v6 valueForKey:?];
        v25[2] = v17;
        v24[3] = @"wifi_backhaul";
        v18 = [v6 valueForKey:?];
        v25[3] = v18;
        v24[4] = @"tcpRTT";
        v19 = [v6 valueForKey:?];
        v25[4] = v19;
        v20 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:5];
        (*(v14 + 16))(v14, v20);
      }

      goto LABEL_10;
    }

    [WCM_Logging logLevel:22 message:@"DataStoreManager: Number of records > 1 for given cellID %@", *(a1 + 40)];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"DataStoreManager: The given cellID %@ not found", *(a1 + 40)];
  }

  v21 = *(a1 + 48);
  if (v21)
  {
    (*(v21 + 16))(v21, 0);
  }

LABEL_10:
}

uint64_t sub_1000AA3AC(uint64_t result, int a2)
{
  if (!a2 || !*(*(result + 32) + 24))
  {
    result = *(result + 40);
    if (result)
    {
      return (*(result + 16))(result, 0);
    }
  }

  return result;
}

NSDictionary *sub_1000AB104(uint64_t a1)
{
  v3[0] = @"btConnectionCount";
  v4[0] = [NSNumber numberWithUnsignedInteger:*(*(a1 + 32) + 8)];
  v3[1] = @"A2DPMaxDeviceCount";
  v4[1] = [NSNumber numberWithUnsignedInteger:*(*(a1 + 32) + 16)];
  v3[2] = @"ESCOMaxDeviceCount";
  v4[2] = [NSNumber numberWithUnsignedInteger:*(*(a1 + 32) + 24)];
  v3[3] = @"LEAMaxDeviceCount";
  v4[3] = [NSNumber numberWithUnsignedInteger:*(*(a1 + 32) + 56)];
  v3[4] = @"LEMaxDeviceCount";
  v4[4] = [NSNumber numberWithUnsignedInteger:*(*(a1 + 32) + 48)];
  v3[5] = @"SCOMaxDeviceCount";
  v4[5] = [NSNumber numberWithUnsignedInteger:*(*(a1 + 32) + 32)];
  v3[6] = @"HIDMaxDeviceCount";
  v4[6] = [NSNumber numberWithUnsignedInteger:*(*(a1 + 32) + 40)];
  v3[7] = @"LLAMaxDeviceCount";
  v4[7] = [NSNumber numberWithUnsignedInteger:*(*(a1 + 32) + 64)];
  v3[8] = @"hasBtConnection";
  v4[8] = [NSNumber numberWithBool:*(*(a1 + 32) + 8) != 0];
  v3[9] = @"hasA2DPDevice";
  v4[9] = [NSNumber numberWithBool:*(*(a1 + 32) + 16) != 0];
  v3[10] = @"hasESCODevice";
  v4[10] = [NSNumber numberWithBool:*(*(a1 + 32) + 24) != 0];
  v3[11] = @"hasLEADevice";
  v4[11] = [NSNumber numberWithBool:*(*(a1 + 32) + 56) != 0];
  v3[12] = @"hasLEDevice";
  v4[12] = [NSNumber numberWithBool:*(*(a1 + 32) + 48) != 0];
  v3[13] = @"hasSCODevice";
  v4[13] = [NSNumber numberWithBool:*(*(a1 + 32) + 32) != 0];
  v3[14] = @"hasHIDDevice";
  v4[14] = [NSNumber numberWithBool:*(*(a1 + 32) + 40) != 0];
  v3[15] = @"hasLLADevice";
  v4[15] = [NSNumber numberWithBool:*(*(a1 + 32) + 64) != 0];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:16];
}

id sub_1000AB6BC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002B7EC8;
  v7 = qword_1002B7EC8;
  if (!qword_1002B7EC8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000AC258;
    v3[3] = &unk_10023DCC8;
    v3[4] = &v4;
    sub_1000AC258(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000AB784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000ABBDC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002B7ED8;
  v7 = qword_1002B7ED8;
  if (!qword_1002B7ED8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000AC418;
    v3[3] = &unk_10023DCC8;
    v3[4] = &v4;
    sub_1000AC418(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000ABCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000ABE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AC22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1000AC258(uint64_t a1)
{
  sub_1000AC2B0();
  result = objc_getClass("MLFeatureValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10015F6B4();
  }

  qword_1002B7EC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000AC2B0()
{
  v0[0] = 0;
  if (!qword_1002B7ED0)
  {
    v0[1] = _NSConcreteStackBlock;
    v0[2] = 3221225472;
    v0[3] = sub_1000AC3A4;
    v0[4] = &unk_10023DD00;
    v0[5] = v0;
    v1 = off_1002403E0;
    v2 = 0;
    qword_1002B7ED0 = _sl_dlopen();
  }

  if (!qword_1002B7ED0)
  {
    sub_10015F730(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t sub_1000AC3A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002B7ED0 = result;
  return result;
}

Class sub_1000AC418(uint64_t a1)
{
  sub_1000AC2B0();
  result = objc_getClass("MLModel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10015F7B0();
  }

  qword_1002B7ED8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1000AC470(uint64_t a1)
{
  sub_1000AC2B0();
  result = objc_getClass("MLPredictionOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10015F82C();
  }

  qword_1002B7EE0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1000AC4C8(uint64_t a1)
{
  sub_1000AC2B0();
  result = objc_getClass("MLArrayBatchProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10015F8A8();
  }

  qword_1002B7EE8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000AC528(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4, a4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4, v7);
  *(a3 + 4) = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 8, v8);
  *(a3 + 8) = *(a1 + 8);
  return a1 + 16;
}

uint64_t sub_1000AC59C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  return a1 + 16;
}

uint64_t sub_1000AC5C4(uint64_t *a1, int a2, uint64_t a3, unint64_t a4)
{
  v5[0] = 0;
  v5[1] = 0;
  *a1 = sub_1000AC528(*a1, (*a1 + a2), v5, a4);
  return v5[0];
}

void sub_1000AC608(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000AC5F4);
}

uint64_t *sub_1000AC620(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 8) = *(a2 + 8);
  *result = v2 + 16;
  return result;
}

uint64_t sub_1000AC654(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4, a4);
  result = *v5;
  *a1 = (v5 + 4);
  return result;
}

void sub_1000AC690(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000AC684);
}

_DWORD **sub_1000AC6A4(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t sub_1000AC6B8(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4, a4);
  result = *v5;
  *a1 = (v5 + 4);
  return result;
}

void sub_1000AC6F4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000AC6E8);
}

std::string::value_type *sub_1000AC708(tlv *a1, const unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1;
  tlv::throwIfNotEnoughBytes(a1, a2, 1, a4);
  v7 = *v6;
  v6 = (v6 + 1);
  tlv::throwIfNotEnoughBytes(v6, a2, v7, v8);
  v9 = v6 + v7;
  sub_1000ADAA4(a3, v6, v9, v7);
  tlv::throwIfNotEnoughBytes(v9, a2, 8, v10);
  *(a3 + 24) = *v9;
  tlv::throwIfNotEnoughBytes((v9 + 8), a2, 4, v11);
  *(a3 + 32) = *(v9 + 2);
  tlv::throwIfNotEnoughBytes((v9 + 12), a2, 4, v12);
  *(a3 + 36) = *(v9 + 3);
  tlv::throwIfNotEnoughBytes((v9 + 16), a2, 8, v13);
  *(a3 + 40) = *(v9 + 2);
  tlv::throwIfNotEnoughBytes((v9 + 24), a2, 8, v14);
  *(a3 + 48) = *(v9 + 3);
  tlv::throwIfNotEnoughBytes((v9 + 32), a2, 1, v15);
  *(a3 + 56) = v9[32] != 0;
  return v9 + 33;
}

_BYTE *sub_1000AC810(_BYTE *a1, _BYTE *a2)
{
  v2 = a2;
  LOBYTE(v3) = a2[23];
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 1);
  }

  *a1 = v3;
  v4 = a1 + 1;
  v5 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  memcpy(a1 + 1, a2, v6);
  v7 = v2[23];
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v2 + 1);
  }

  v8 = &v4[v7];
  *v8 = *(v2 + 3);
  *(v8 + 2) = *(v2 + 8);
  *(v8 + 3) = *(v2 + 9);
  *(v8 + 2) = *(v2 + 5);
  *(v8 + 3) = *(v2 + 6);
  v8[32] = v2[56];
  return v8 + 33;
}

uint64_t sub_1000AC8B8(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  return v1 + 34;
}

std::string::value_type *sub_1000AC8D4@<X0>(tlv **a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  *(a4 + 41) = 0u;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  result = sub_1000AC708(*a1, *a1 + a2, a4, a3);
  *a1 = result;
  return result;
}

void sub_1000AC91C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000AC910);
}

void sub_1000AC92C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000AC948(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  return v1 + 37;
}

_BYTE *sub_1000AC964(_BYTE **a1, _BYTE *a2)
{
  result = sub_1000AC810(*a1, a2);
  *a1 = result;
  return result;
}

std::string::value_type *sub_1000AC990(tlv *a1, const unsigned __int8 *a2, uint64_t *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1, a4);
  v8 = *a1;
  v7 = a1 + 1;
  sub_1000ADC14(a3, v8);
  v10 = *a3;
  v11 = a3[1];
  while (1)
  {
    result = v7;
    if (v10 == v11)
    {
      break;
    }

    v7 = sub_1000AC708(v7, a2, v10, v9);
    v10 += 64;
  }

  return result;
}

_BYTE *sub_1000AC9FC(_BYTE *a1, _DWORD *a2)
{
  *a1 = (a2[2] - *a2) >> 6;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  while (v3 != v4)
  {
    result = sub_1000AC810(result, v3);
    v3 += 64;
  }

  return result;
}

uint64_t sub_1000ACA48(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = *(v1 + 23);
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(v1 + 8);
    }

    v3 += v4 + 34;
    v1 += 64;
  }

  while (v1 != v2);
  return v3 + 1;
}

std::string::value_type *sub_1000ACA90@<X0>(tlv **a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  result = sub_1000AC990(*a1, *a1 + a2, a4, a3);
  *a1 = result;
  return result;
}

void sub_1000ACAD8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000ACAC8);
}

void sub_1000ACAE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000ADB70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000ACB00(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 4;
  }

  v3 = 0;
  do
  {
    v4 = *(v1 + 23);
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(v1 + 8);
    }

    v3 += v4 + 34;
    v1 += 64;
  }

  while (v1 != v2);
  return v3 + 4;
}

_BYTE *sub_1000ACB48(_BYTE **a1, _DWORD *a2)
{
  result = sub_1000AC9FC(*a1, a2);
  *a1 = result;
  return result;
}

uint64_t sub_1000ACB74(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4, a4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4, v7);
  *(a3 + 4) = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 8, v8);
  *(a3 + 8) = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 16), a2, 8, v9);
  *(a3 + 16) = *(a1 + 16);
  return a1 + 24;
}

uint64_t sub_1000ACC00(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1 + 24;
}

uint64_t sub_1000ACC30@<X0>(uint64_t *a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  result = sub_1000ACB74(*a1, (*a1 + a2), a4, a3);
  *a1 = result;
  return result;
}

void sub_1000ACC6C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

uint64_t *sub_1000ACC98(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 8) = *(a2 + 8);
  *(v2 + 16) = *(a2 + 16);
  *result = v2 + 24;
  return result;
}

uint64_t sub_1000ACCC8(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 8, a4);
  result = *v5;
  *a1 = (v5 + 8);
  return result;
}

void sub_1000ACD04(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000ACCF8);
}

uint64_t sub_1000ACD18(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4, a4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4, v7);
  *(a3 + 4) = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4, v8);
  *(a3 + 8) = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4, v9);
  *(a3 + 12) = *(a1 + 12);
  tlv::throwIfNotEnoughBytes((a1 + 16), a2, 2, v10);
  *(a3 + 16) = *(a1 + 16);
  tlv::throwIfNotEnoughBytes((a1 + 18), a2, 8, v11);
  *(a3 + 24) = *(a1 + 18);
  return a1 + 26;
}

uint64_t sub_1000ACDD4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 24);
  return a1 + 26;
}

uint64_t sub_1000ACE14@<X0>(uint64_t *a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = 0;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = sub_1000ACD18(*a1, (*a1 + a2), a4, a3);
  *a1 = result;
  return result;
}

void sub_1000ACE54(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

uint64_t *sub_1000ACE80(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 8) = *(a2 + 8);
  *(v2 + 12) = *(a2 + 12);
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 18) = *(a2 + 24);
  *result = v2 + 26;
  return result;
}

uint64_t sub_1000ACEC0(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 4, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 4), v6, 4, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 8);
  return (v9 << 32) | v7;
}

void sub_1000ACF30(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000ACF18);
}

uint64_t sub_1000ACF44(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4, a4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 1, v7);
  *(a3 + 4) = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 5), a2, 1, v8);
  *(a3 + 5) = *(a1 + 5);
  tlv::throwIfNotEnoughBytes((a1 + 6), a2, 1, v9);
  *(a3 + 6) = *(a1 + 6);
  return a1 + 7;
}

uint64_t sub_1000ACFD0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 6) = *(a2 + 6);
  return a1 + 7;
}

uint64_t sub_1000ACFF8(uint64_t *a1, int a2, uint64_t a3, unint64_t a4)
{
  *(&v5 + 3) = 0;
  LODWORD(v5) = 0;
  *a1 = sub_1000ACF44(*a1, (*a1 + a2), &v5, a4);
  return v5;
}

void sub_1000AD040(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000AD02CLL);
}

uint64_t *sub_1000AD058(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 5) = *(a2 + 5);
  *(v2 + 6) = *(a2 + 6);
  *result = v2 + 7;
  return result;
}

uint64_t sub_1000AD088(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4, a4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 1, v7);
  *(a3 + 4) = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 5), a2, 1, v8);
  *(a3 + 5) = *(a1 + 5);
  return a1 + 6;
}

uint64_t sub_1000AD0FC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 5);
  return a1 + 6;
}

uint64_t sub_1000AD11C(uint64_t *a1, int a2, uint64_t a3, unint64_t a4)
{
  LODWORD(v5) = 0;
  WORD2(v5) = 0;
  *a1 = sub_1000AD088(*a1, (*a1 + a2), &v5, a4);
  return v5;
}

void sub_1000AD164(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000AD150);
}

uint64_t *sub_1000AD174(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 5) = *(a2 + 5);
  *result = v2 + 6;
  return result;
}

uint64_t sub_1000AD19C(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1, a4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 1, v7);
  *(a3 + 1) = *(a1 + 1);
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 1, v8);
  *(a3 + 2) = *(a1 + 2);
  tlv::throwIfNotEnoughBytes((a1 + 3), a2, 4, v9);
  *(a3 + 4) = *(a1 + 3);
  tlv::throwIfNotEnoughBytes((a1 + 7), a2, 4, v10);
  *(a3 + 8) = *(a1 + 7);
  tlv::throwIfNotEnoughBytes((a1 + 11), a2, 1, v11);
  *(a3 + 12) = *(a1 + 11);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 1, v12);
  *(a3 + 13) = *(a1 + 12);
  tlv::throwIfNotEnoughBytes((a1 + 13), a2, 4, v13);
  *(a3 + 16) = *(a1 + 13);
  tlv::throwIfNotEnoughBytes((a1 + 17), a2, 4, v14);
  *(a3 + 20) = *(a1 + 17);
  tlv::throwIfNotEnoughBytes((a1 + 21), a2, 4, v15);
  *(a3 + 24) = *(a1 + 21);
  tlv::throwIfNotEnoughBytes((a1 + 25), a2, 2, v16);
  *(a3 + 28) = *(a1 + 25);
  tlv::throwIfNotEnoughBytes((a1 + 27), a2, 1, v17);
  *(a3 + 30) = *(a1 + 27);
  return a1 + 28;
}

uint64_t sub_1000AD2E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 4);
  *(a1 + 7) = *(a2 + 8);
  *(a1 + 11) = *(a2 + 12);
  *(a1 + 12) = *(a2 + 13);
  *(a1 + 13) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 20);
  *(a1 + 21) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 28);
  *(a1 + 27) = *(a2 + 30);
  return a1 + 28;
}

uint64_t sub_1000AD358@<X0>(uint64_t *a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 2) = 0;
  *(a4 + 4) = 0;
  *(a4 + 12) = 0;
  *(a4 + 16) = 0;
  *(a4 + 23) = 0;
  result = sub_1000AD19C(*a1, (*a1 + a2), a4, a3);
  *a1 = result;
  return result;
}

void sub_1000AD3A4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

uint64_t sub_1000AD3D0(uint64_t *a1, uint64_t a2)
{
  result = sub_1000AD2E8(*a1, a2);
  *a1 = result;
  return result;
}

BOOL sub_1000AD3FC(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5 != 0;
  *a1 = (v5 + 1);
  return result;
}

void sub_1000AD440(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000AD434);
}

unint64_t sub_1000AD454(tlv *a1, const unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1, a4);
  v9 = *a1;
  v8 = a1 + 1;
  *a3 = v9;
  for (i = (a3 + 8); v8 < a2; v8 = sub_1000AC528(v8, a2, v13 - 16, v7))
  {
    v12 = *(a3 + 16);
    v11 = *(a3 + 24);
    if (v12 >= v11)
    {
      v14 = (v12 - *i) >> 4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 60)
      {
        sub_100049DAC();
      }

      v16 = v11 - *i;
      if (v16 >> 3 > v15)
      {
        v15 = v16 >> 3;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF0)
      {
        v17 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        sub_1000ADFF8(a3 + 8, v17);
      }

      v18 = (16 * v14);
      *v18 = 0;
      v18[1] = 0;
      v13 = 16 * v14 + 16;
      v19 = *(a3 + 8);
      v20 = *(a3 + 16) - v19;
      v21 = 16 * v14 - v20;
      memcpy(v18 - v20, v19, v20);
      v22 = *(a3 + 8);
      *(a3 + 8) = v21;
      *(a3 + 16) = v13;
      *(a3 + 24) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v12 = 0;
      v12[1] = 0;
      v13 = (v12 + 2);
    }

    *(a3 + 16) = v13;
  }

  return v8;
}

_BYTE *sub_1000AD57C(_BYTE *a1, uint64_t a2)
{
  *a1 = *a2;
  result = a1 + 1;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  while (v3 != v4)
  {
    *result = *v3;
    *(result + 1) = *(v3 + 4);
    *(result + 1) = *(v3 + 8);
    result += 16;
    v3 += 16;
  }

  return result;
}

unint64_t sub_1000AD5B8(uint64_t a1)
{
  if (*(a1 + 16) == *(a1 + 8))
  {
    return 1;
  }

  else
  {
    return ((*(a1 + 16) - *(a1 + 8)) & 0xFFFFFFFFFFFFFFF0) + 1;
  }
}

unint64_t sub_1000AD5D0@<X0>(tlv **a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  result = sub_1000AD454(*a1, *a1 + a2, a4, a3);
  *a1 = result;
  return result;
}

void sub_1000AD620(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000AD610);
}

void sub_1000AD630(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1000AD64C(uint64_t a1)
{
  if (*(a1 + 16) == *(a1 + 8))
  {
    return 4;
  }

  else
  {
    return (*(a1 + 16) - *(a1 + 8)) & 0xFFFFFFFFFFFFFFF0 | 4;
  }
}

_BYTE **sub_1000AD668(_BYTE **result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  v3 = v2 + 1;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  while (v4 != v5)
  {
    *v3 = *v4;
    *(v3 + 1) = *(v4 + 4);
    *(v3 + 1) = *(v4 + 8);
    v3 += 16;
    v4 += 16;
  }

  *result = v3;
  return result;
}

BOOL sub_1000AD6AC(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5 != 0;
  *a1 = (v5 + 1);
  return result;
}

void sub_1000AD6F0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000AD6E4);
}

BOOL sub_1000AD704(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5 != 0;
  *a1 = (v5 + 1);
  return result;
}

void sub_1000AD748(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000AD73CLL);
}

BOOL sub_1000AD75C(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5 != 0;
  *a1 = (v5 + 1);
  return result;
}

void sub_1000AD7A0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000AD794);
}

char *sub_1000AD7B4(tlv *a1, const unsigned __int8 *a2, _DWORD *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1, a4);
  *a3 = *a1;
  return a1 + 1;
}

uint64_t sub_1000AD7F8(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5;
  *a1 = (v5 + 1);
  return result;
}

void sub_1000AD834(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000AD828);
}

_BYTE **sub_1000AD848(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t sub_1000AD85C(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4, a4);
  result = *v5;
  *a1 = (v5 + 4);
  return result;
}

void sub_1000AD898(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000AD88CLL);
}

uint64_t sub_1000AD8AC(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4, a4);
  result = *v5;
  *a1 = (v5 + 4);
  return result;
}

void sub_1000AD8E8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000AD8DCLL);
}

uint64_t sub_1000AD8FC(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4, a4);
  result = *v5;
  *a1 = (v5 + 4);
  return result;
}

void sub_1000AD938(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000AD92CLL);
}

BOOL sub_1000AD94C(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5 != 0;
  *a1 = (v5 + 1);
  return result;
}

void sub_1000AD990(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000AD984);
}

BOOL sub_1000AD9A4(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5 != 0;
  *a1 = (v5 + 1);
  return result;
}

void sub_1000AD9E8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000AD9DCLL);
}

BOOL sub_1000AD9FC(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5 != 0;
  *a1 = (v5 + 1);
  return result;
}

void sub_1000ADA40(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000ADA34);
}

uint64_t sub_1000ADA54(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4, a4);
  result = *v5;
  *a1 = (v5 + 4);
  return result;
}

void sub_1000ADA90(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000ADA84);
}

void sub_1000ADAA4(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

void sub_1000ADB70(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000ADBC4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000ADBC4(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 41);
    v3 -= 8;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_1000ADC14(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 6;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = (*a1 + (a2 << 6));
      while (v3 != v6)
      {
        v7 = *(v3 - 41);
        v3 -= 8;
        if (v7 < 0)
        {
          operator delete(*v3);
        }
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_1000ADCA8(a1, v5);
  }
}

void sub_1000ADCA8(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 6)
  {
    if (a2)
    {
      bzero(*(a1 + 8), a2 << 6);
      v5 += a2 << 6;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 6);
    if (v7 >> 58)
    {
      sub_100049DAC();
    }

    v8 = v6 >> 6;
    v9 = v4 - *a1;
    if (v9 >> 5 > v7)
    {
      v7 = v9 >> 5;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFC0)
    {
      v10 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v18 = a1;
    if (v10)
    {
      sub_1000ADDD0(a1, v10);
    }

    v15 = 0;
    v16 = (v8 << 6);
    bzero((v8 << 6), a2 << 6);
    v17 = (v8 << 6) + (a2 << 6);
    v11 = *(a1 + 8);
    v12 = (v8 << 6) + *a1 - v11;
    sub_1000ADE18(a1, *a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = *(a1 + 16);
    *(a1 + 8) = v17;
    *&v17 = v13;
    *(&v17 + 1) = v14;
    v15 = v13;
    v16 = v13;
    sub_1000ADF64(&v15);
  }
}

void sub_1000ADDBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000ADF64(va);
  _Unwind_Resume(a1);
}

void sub_1000ADDD0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_100049E98();
}

uint64_t sub_1000ADE18(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      v9 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 40) = v9;
      *(a4 + 24) = v8;
      v6 += 4;
      a4 += 64;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 4;
    }
  }

  return sub_1000ADEE4(v11);
}

uint64_t sub_1000ADEE4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000ADF1C(a1);
  }

  return a1;
}

void sub_1000ADF1C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 41);
    v1 -= 8;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_1000ADF64(uint64_t a1)
{
  sub_1000ADF9C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000ADF9C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 8;
      *(a1 + 16) = v2 - 8;
      if (*(v2 - 41) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_1000ADFF8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100049E98();
}

void sub_1000AE3E0()
{
  if (*(v0 - 89) < 0)
  {
    operator delete(*(v0 - 112));
  }

  if (*(v0 - 65) < 0)
  {
    operator delete(*(v0 - 88));
  }

  operator delete();
}

void sub_1000AE7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_100054008(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

id sub_1000AE7F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a1 + 32);
  if (!v2)
  {
    return [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: set NAS Indication Register successful.", *(v3 + 32), v6, v7];
  }

  v4 = *(a2 + 4);
  return [WCM_Logging logLevel:16 message:@"QMI.NAS.%d: failed to set NAS Indication Register. Error %d %s", *(v3 + 32), v2, qmi::asString()];
}

void sub_1000AE9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_100054008(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

id sub_1000AE9D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a1 + 32);
  if (!v2)
  {
    return [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: nas::SisNrAvailable::Response successful.", *(v3 + 32), v6, v7];
  }

  v4 = *(a2 + 4);
  return [WCM_Logging logLevel:16 message:@"QMI.NAS.%d: nas::SisNrAvailable::Response Error %d %s", *(v3 + 32), v2, qmi::asString()];
}

void sub_1000AEC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_100054008(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_1000AECA4(const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      sub_100049DAC();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_100049E54(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_1000AED80(uint64_t a1, const void **a2)
{
  v6 = 0;
  sub_1000AECA4(a2, &v6);
  v5 = 50;
  sub_1000AECA4(a2, &v5);
  v4 = 100;
  sub_1000AECA4(a2, &v4);
  v3 = 250;
  sub_1000AECA4(a2, &v3);
}

void sub_1000AEDF4(uint64_t a1, const void **a2)
{
  v6 = -185;
  sub_1000AECA4(a2, &v6);
  v5 = -160;
  sub_1000AECA4(a2, &v5);
  v4 = -150;
  sub_1000AECA4(a2, &v4);
  v3 = -50;
  sub_1000AECA4(a2, &v3);
}

void sub_1000AEE6C(uint64_t a1, const void **a2)
{
  v3 = -1300;
  sub_1000AECA4(a2, &v3);
  v3 = -1190;
  sub_1000AECA4(a2, &v3);
  v3 = -1180;
  sub_1000AECA4(a2, &v3);
  v3 = -1160;
  sub_1000AECA4(a2, &v3);
  v3 = -1110;
  sub_1000AECA4(a2, &v3);
  v3 = -1100;
  sub_1000AECA4(a2, &v3);
  v3 = -1000;
  sub_1000AECA4(a2, &v3);
  v3 = -900;
  sub_1000AECA4(a2, &v3);
  v3 = -850;
  sub_1000AECA4(a2, &v3);
  v3 = -800;
  sub_1000AECA4(a2, &v3);
}

void sub_1000AEF5C(uint64_t a1, const void **a2)
{
  v8 = 250;
  sub_1000AECA4(a2, &v8);
  v7 = 200;
  sub_1000AECA4(a2, &v7);
  v6 = 150;
  sub_1000AECA4(a2, &v6);
  v5 = 100;
  sub_1000AECA4(a2, &v5);
  v4 = 28;
  sub_1000AECA4(a2, &v4);
  v3 = 24;
  sub_1000AECA4(a2, &v3);
}

id sub_1000AEFFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a1 + 32);
  if (!v2)
  {
    return [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: set NAS Config Info2 successful.", *(v3 + 32), v6, v7];
  }

  v4 = *(a2 + 4);
  return [WCM_Logging logLevel:16 message:@"QMI.NAS.%d: failed to set NAS Config Info2. Error %d %s", *(v3 + 32), v2, qmi::asString()];
}

id sub_1000AF214(uint64_t a1, char *a2)
{
  [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: received WCDMA SigInfo rssi %d ECIO %d", *(*(a1 + 32) + 32), *a2, -((*(a2 + 1) + (*(a2 + 1) >> 15)) >> 1)];
  result = [*(a1 + 40) setActiveSlot:*(a1 + 48)];
  if (*a2)
  {
    v5 = *(a2 + 1) * -0.5;
    v6 = v5 + *a2;
    [*(a1 + 40) setServingCellRSSI:*(*(a1 + 32) + 32) forSim:?];
    [*(a1 + 40) setServingCellECIO:*(*(a1 + 32) + 32) forSim:v5];
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 32) + 32);

    return [v7 setServingCellRSCP:v8 forSim:v6];
  }

  return result;
}

uint64_t sub_1000AF3CC(uint64_t a1, qmi::MessageBase *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000AF448;
  v3[3] = &unk_1002404D8;
  v3[4] = *(a1 + 32);
  v4 = v3;
  return sub_1000B62BC(a2, 1, &v4);
}

void sub_1000AF528(id a1, const void *a2)
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000AF64C;
  v3[3] = &unk_100240520;
  v3[5] = v5;
  v3[6] = v7;
  v3[4] = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
  v4 = v3;
  if ((sub_1000B6560(a2, 1, &v4) & 1) == 0)
  {
    [WCM_Logging logLevel:22 message:@"QMI: received vlqm indication w/o enhancedVlqm."];
  }

  _Block_object_dispose(v5, 8);
  _Block_object_dispose(v7, 8);
}

void sub_1000AF620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

id sub_1000AF64C(void *a1, unsigned __int8 *a2)
{
  v4 = a2[1] + 1;
  v5 = *a2;
  v6 = sub_1000457B8(a2[2]);
  v7 = sub_1000457F4(a2[3]);
  [WCM_Logging logLevel:22 message:@"QMI.NAS.%u: received Enhanced VoiceLQM version%u, linkQuality=%s, reason=%s, IMSPreferred=%d, totalAudioErasures=%u, totalAudioPlaybacks=%u, voiceCodec=%s, SINR=%fdB, RSRP=%ddBm", v4, v5, v6, v7, a2[4], *(a2 + 2), *(a2 + 3), sub_100045898(*(a2 + 4)), *(a2 + 5) * 0.2 + -20.0, *(a2 + 6)];
  v9 = a2[2];
  if (v9 == 50)
  {
    v10 = 50;
  }

  else
  {
    v10 = 100;
  }

  if (v9 == 10)
  {
    v11 = 10;
  }

  else
  {
    v11 = v10;
  }

  *(*(a1[5] + 8) + 24) = v11;
  LODWORD(v8) = *(a2 + 3);
  *(*(a1[6] + 8) + 24) = (100 * *(a2 + 2)) / (v8 + 0.000001);
  v12 = a2[1];
  v13 = a1[4];
  v14 = *(*(a1[5] + 8) + 24);
  v15 = a2[4];
  v16 = *(*(a1[6] + 8) + 24);
  v17 = *(a2 + 6);

  return [v13 processVoiceLqmQMI:v12 VLQM:v14 IMSPreference:v15 AudioErasure:v16 RSRP:v17];
}

void sub_1000AF928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_100054008(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

id sub_1000AF968(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*(a2 + 4))
  {
    return [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: bindQMIClientToSlotType failed: %s", *(v2 + 32), qmi::asString()];
  }

  else
  {
    return [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: bindQMIClientToSlotType success", *(v2 + 32), v4];
  }
}

void sub_1000AFB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_100054008(&a9);
  qmi::MutableMessageBase::~MutableMessageBase(&a14);
  _Unwind_Resume(a1);
}

void sub_1000AFB30(id a1, const void *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    v3 = *(a2 + 1);
    [WCM_Logging logLevel:16 message:@"QMI: failed to query SINR. Error %d %s", v2, qmi::asString()];
  }

  [WCM_Logging logLevel:22 message:@"QMI: query SINR successful."];
}

void sub_1000AFD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_100054008(&a15);
  qmi::MutableMessageBase::~MutableMessageBase(&a26);
  _Unwind_Resume(a1);
}

id sub_1000AFD7C(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 40);
  *a2 = v2;
  v3 = *(a1 + 41);
  a2[1] = v3;
  v4 = *(a1 + 42);
  a2[2] = v4;
  v5 = *(a1 + 43);
  a2[3] = v5;
  return [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: VoIP app: %d, Call State: %d, CallType: %d, telephonyCall: %d ", *(*(a1 + 32) + 32), v2, v3, v4, v5];
}

id sub_1000AFDE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(*(a1 + 32) + 32);
    v5 = *(a2 + 4);
    [WCM_Logging logLevel:16 message:@"QMI.NAS.%d: failed to send VoIP message. Error %d %s", v4, v3, qmi::asString()];
  }

  return [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: Send VoIP message.", *(*(a1 + 32) + 32)];
}

void sub_1000B0008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_100054008(&a15);
  qmi::MutableMessageBase::~MutableMessageBase(&a26);
  _Unwind_Resume(a1);
}

id sub_1000B0034(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 40);
  *a2 = v2;
  v3 = *(a1 + 41);
  a2[1] = v3;
  return [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: Screen unlock status %d, Screen Status: %d ", *(*(a1 + 32) + 32), v2, v3];
}

id sub_1000B008C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(*(a1 + 32) + 32);
    v5 = *(a2 + 4);
    [WCM_Logging logLevel:16 message:@"QMI.NAS.%d: failed to send lock status message. Error %d %s", v4, v3, qmi::asString()];
  }

  return [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: Send SDM lock/unlock message.", *(*(a1 + 32) + 32)];
}

void sub_1000B02AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_100054008(&a15);
  qmi::MutableMessageBase::~MutableMessageBase(&a26);
  _Unwind_Resume(a1);
}

id sub_1000B02D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 42);
  *a2 = v2;
  v3 = *(a1 + 40);
  *(a2 + 2) = v3;
  return [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: notifyAVStatus state: %d, BW: %d", *(*(a1 + 32) + 32), v2, v3];
}

id sub_1000B0330(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(*(a1 + 32) + 32);
    v5 = *(a2 + 4);
    [WCM_Logging logLevel:16 message:@"QMI.NAS.%d: failed to send AV status message. Error %d %s", v4, v3, qmi::asString()];
  }

  return [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: Send AVStatus message state.", *(*(a1 + 32) + 32)];
}

void sub_1000B053C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100054008(va);
  qmi::MutableMessageBase::~MutableMessageBase((v7 - 120));
  _Unwind_Resume(a1);
}

id sub_1000B0568(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 40);
  *a2 = v2;
  return [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: notifyFTDupelicationState state: %d ", *(*(a1 + 32) + 32), v2];
}

id sub_1000B05B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(*(a1 + 32) + 32);
    v5 = *(a2 + 4);
    [WCM_Logging logLevel:16 message:@"QMI.NAS.%d: failed to send Dupe status message. Error %d %s", v4, v3, qmi::asString()];
  }

  return [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: Send FTDDupeState message state.", *(*(a1 + 32) + 32)];
}

void sub_1000B07C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100054008(va);
  qmi::MutableMessageBase::~MutableMessageBase((v7 - 120));
  _Unwind_Resume(a1);
}

id sub_1000B07EC(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 40);
  *a2 = v2;
  return [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: notifyStreamingEBHState state: %d ", *(*(a1 + 32) + 32), v2];
}

id sub_1000B0838(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(*(a1 + 32) + 32);
    v5 = *(a2 + 4);
    [WCM_Logging logLevel:16 message:@"QMI.NAS.%d: failed to send EBH status message. Error %d %s", v4, v3, qmi::asString()];
  }

  return [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: Send fEBH message state.", *(*(a1 + 32) + 32)];
}

void sub_1000B0AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100054008(va);
  qmi::MutableMessageBase::~MutableMessageBase((v7 - 136));
  _Unwind_Resume(a1);
}

id sub_1000B0AEC(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 40);
  *a2 = v2;
  return [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: setBBSAState disabled : %d ", *(*(a1 + 32) + 32), v2];
}

id sub_1000B0B38(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 40);
  *a2 = v2;
  return [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: setBBSAState slot mask: %d", *(*(a1 + 32) + 32), v2];
}

id sub_1000B0B84(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(*(a1 + 32) + 32);
    v5 = *(a2 + 4);
    [WCM_Logging logLevel:16 message:@"QMI.NAS.%d: failed to send setBBSAState message. Error %d %s", v4, v3, qmi::asString()];
  }

  return [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: Send setBBSAState message state.", *(*(a1 + 32) + 32)];
}

void sub_1000B0E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_100054008(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B0E78(uint64_t a1, qmi::MessageBase *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000B0EF4;
  v3[3] = &unk_1002406A0;
  v3[4] = *(a1 + 32);
  v4 = v3;
  return sub_1000B8840(a2, 16, &v4);
}

id sub_1000B0EF4(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: WrmSdmLocationDbInfoRegister::Indication locationDbRequired=%u", *(*(a1 + 32) + 32), v3];
  v4 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
  v5 = *(*(a1 + 32) + 32);

  return [v4 updateWrmSdmLocationDbInfoRegister:v3 forSim:v5];
}

void sub_1000B0F6C(uint64_t a1, qmi::MessageBase *a2)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B115C;
  v6[3] = &unk_1002406C8;
  v6[4] = &v16;
  v6[5] = &v12;
  v7 = v6;
  sub_1000B8AE4(a2, 16, &v7);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B1180;
  v5[3] = &unk_1002406F0;
  v5[4] = &v8;
  v7 = v5;
  sub_1000B8BE8(a2, 17, &v7);
  [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: received WrmSdmLocationDbInfoFetch ind mcc=%u, mnc=%u, cellID=%llu", *(*(a1 + 32) + 32), *(v17 + 6), *(v13 + 6), v9[3]];
  v4 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
  [v4 fetchWrmSdmLocationDbInfoWithMcc:*(v17 + 6) Mnc:*(v13 + 6) CellId:v9[3] ForSim:*(*(a1 + 32) + 32)];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
}

void sub_1000B1124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Block_object_dispose((v17 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B115C(uint64_t result, _DWORD *a2)
{
  *(*(*(result + 32) + 8) + 24) = *a2;
  *(*(*(result + 40) + 8) + 24) = a2[1];
  return result;
}

id sub_1000B1194(uint64_t a1, unsigned int *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = *(*(a1 + 32) + 32);
    v4 = a2[1];
    return [WCM_Logging logLevel:16 message:@"QMI.NAS.%d: WrmSdmLocationDbInfoRegister::Response Error %d %s", v3, v2, qmi::asString()];
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B1260;
    v6[3] = &unk_100240718;
    v6[4] = *(a1 + 32);
    v7 = v6;
    return sub_1000B8E8C(a2, 16, &v7);
  }
}

id sub_1000B1260(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: WrmSdmLocationDbInfoRegister::Response locationDbRequired = %d", *(*(a1 + 32) + 32), v3];
  v4 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
  v5 = *(*(a1 + 32) + 32);

  return [v4 updateWrmSdmLocationDbInfoRegister:v3 forSim:v5];
}

void sub_1000B1360(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 <= 3)
  {
    if (!v1)
    {
      v5 = *(a1 + 32);
      v3 = (v5 + 9);
      if (v5[10] != v5[9])
      {
        [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: setWrmSdmLocationDbPushOneEntryForCellType LTE entry exceeds max limit", v5[4]];
        return;
      }

      goto LABEL_16;
    }

    if (v1 == 3)
    {
      v2 = *(a1 + 32);
      v3 = (v2 + 15);
      if (v2[16] != v2[15])
      {
        [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: setWrmSdmLocationDbPushOneEntryForCellType SA entry exceeds max limit", v2[4]];
        return;
      }

      goto LABEL_16;
    }

LABEL_10:
    [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: setLocationDbInfoPushOneEntryForCellType ERROR: invalid CellType, has to be CellTypeLTE, CellType5GSA, or CellType5GNSA", *(*(a1 + 32) + 32)];
    return;
  }

  if (v1 != 4)
  {
    if (v1 == 5)
    {
      v4 = *(a1 + 32);
      v3 = (v4 + 18);
      if (v4[19] != v4[18])
      {
        [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: setWrmSdmLocationDbPushOneEntryForCellType SADC entry exceeds max limit", v4[4]];
        return;
      }

      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v6 = *(a1 + 32);
  v3 = (v6 + 12);
  if (v6[13] != v6[12])
  {
    [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: setWrmSdmLocationDbPushOneEntryForCellType LTENSA entry exceeds max limit", v6[4]];
    return;
  }

LABEL_16:

  sub_1000B14D0(v3, (a1 + 44), (a1 + 60), (a1 + 48), (a1 + 52), (a1 + 56));
}

void sub_1000B14D0(uint64_t a1, _DWORD *a2, char *a3, int *a4, int *a5, int *a6)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 >= v8)
  {
    v14 = *a1;
    v15 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 2);
    v16 = v15 + 1;
    if (v15 + 1 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_100049DAC();
    }

    v17 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v14) >> 2);
    if (2 * v17 > v16)
    {
      v16 = 2 * v17;
    }

    if (v17 >= 0x666666666666666)
    {
      v18 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (v18 <= 0xCCCCCCCCCCCCCCCLL)
      {
        operator new();
      }

      sub_100049E98();
    }

    v19 = 4 * ((v7 - *a1) >> 2);
    v20 = *a3;
    v21 = *a4;
    v22 = *a5;
    v23 = *a6;
    *v19 = *a2;
    *(v19 + 4) = v20;
    *(v19 + 8) = v21;
    *(v19 + 12) = v22;
    *(v19 + 16) = v23;
    v13 = 20 * v15 + 20;
    v24 = (20 * v15 - (v7 - v14));
    memcpy(v24, v14, v7 - v14);
    *a1 = v24;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v9 = *a3;
    v10 = *a4;
    v11 = *a5;
    v12 = *a6;
    *v7 = *a2;
    *(v7 + 4) = v9;
    *(v7 + 8) = v10;
    *(v7 + 12) = v11;
    *(v7 + 16) = v12;
    v13 = v7 + 20;
  }

  *(a1 + 8) = v13;
}

void sub_1000B16C8(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(a1 + 32) + 48) = *(a1 + 56);
  *(*(a1 + 32) + 52) = *(a1 + 48);
  *(*(a1 + 32) + 56) = *(a1 + 52);
  *(*(a1 + 32) + 64) = v2;
  v3 = qmi::MutableMessageBase::MutableMessageBase(v47, 0x556Bu);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000B1BF4;
  v46[3] = &unk_100240740;
  v46[4] = *(a1 + 32);
  v4 = sub_1000B9130(v3, 16);
  sub_1000B1BF4(v46, v4);
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000B1C04;
  v45[3] = &unk_100240768;
  v45[4] = *(a1 + 32);
  v5 = sub_1000B9338(v47, 17);
  sub_1000B1C04(v45, v5);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1000B1C20;
  v44[3] = &unk_100240790;
  v44[4] = *(a1 + 32);
  v6 = sub_1000B954C(v47, 18);
  sub_1000B1C20(v44, v6);
  v9 = *(a1 + 32);
  if (*(v9 + 48) == 1)
  {
    v11 = *(v9 + 72);
    v10 = *(v9 + 80);
    v12 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v10 - v11) >> 2));
    if (v10 == v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    v14 = sub_1000B1ECC(v10, v10, v11, v11, v13, 1, v8);
    v15 = *(a1 + 32);
    v17 = *(v15 + 96);
    v16 = *(v15 + 104);
    v18 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v16 - v17) >> 2));
    if (v16 == v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    v20 = sub_1000B1ECC(v16, v16, v17, v17, v19, 1, v14);
    v21 = *(a1 + 32);
    v23 = *(v21 + 120);
    v22 = *(v21 + 128);
    v24 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v22 - v23) >> 2));
    if (v22 == v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24;
    }

    v26 = sub_1000B1ECC(v22, v22, v23, v23, v25, 1, v20);
    v27 = *(a1 + 32);
    v29 = *(v27 + 144);
    v28 = *(v27 + 152);
    v30 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v28 - v29) >> 2));
    if (v28 == v29)
    {
      v31 = 0;
    }

    else
    {
      v31 = v30;
    }

    sub_1000B1ECC(v28, v28, v29, v29, v31, 1, v26);
    v9 = *(a1 + 32);
    if (*(v9 + 72) != *(v9 + 80))
    {
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_1000B1C30;
      v43[3] = &unk_1002407B8;
      v43[4] = v9;
      v32 = sub_1000B975C(v47, 19);
      sub_1000B1C30(v43, v32);
      v9 = *(a1 + 32);
    }

    if (*(v9 + 96) != *(v9 + 104))
    {
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_1000B1C84;
      v42[3] = &unk_1002407E0;
      v42[4] = v9;
      v33 = sub_1000B997C(v47, 20);
      sub_1000B1C84(v42, v33);
      v9 = *(a1 + 32);
    }

    if (*(v9 + 120) != *(v9 + 128))
    {
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_1000B1CD8;
      v41[3] = &unk_100240808;
      v41[4] = v9;
      v34 = sub_1000B9B9C(v47, 21);
      sub_1000B1CD8(v41, v34);
      v9 = *(a1 + 32);
    }

    if (*(v9 + 144) != *(v9 + 152))
    {
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1000B1D2C;
      v40[3] = &unk_100240830;
      v40[4] = v9;
      v35 = sub_1000B9DBC(v47, 22);
      sub_1000B1D2C(v40, v35);
      v9 = *(a1 + 32);
    }
  }

  v36[5] = *(v9 + 16);
  v36[6] = QMIServiceMsg::create(v47, v7);
  v37 = 25000;
  v38 = 0;
  v39 = 0;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000B1D80;
  v36[3] = &unk_10023E9A0;
  v36[4] = *(a1 + 32);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1000B9FDC;
  aBlock[3] = &unk_10023EB40;
  aBlock[4] = v36;
  v39 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v39)
  {
    _Block_release(v39);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v47);
}

void sub_1000B1BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100054008(va);
  qmi::MutableMessageBase::~MutableMessageBase((v6 - 120));
  _Unwind_Resume(a1);
}

uint64_t sub_1000B1C04(uint64_t result, _DWORD *a2)
{
  *a2 = *(*(result + 32) + 52);
  a2[1] = *(*(result + 32) + 56);
  return result;
}

uint64_t sub_1000B1C30(uint64_t result, uint64_t a2)
{
  *a2 = *(*(*(result + 32) + 72) + 8);
  *(a2 + 4) = *(*(*(result + 32) + 72) + 12);
  *(a2 + 8) = *(*(*(result + 32) + 72) + 16);
  *(a2 + 12) = **(*(result + 32) + 72);
  *(a2 + 16) = *(*(*(result + 32) + 72) + 4);
  return result;
}

uint64_t sub_1000B1C84(uint64_t result, uint64_t a2)
{
  *a2 = *(*(*(result + 32) + 96) + 8);
  *(a2 + 4) = *(*(*(result + 32) + 96) + 12);
  *(a2 + 8) = *(*(*(result + 32) + 96) + 16);
  *(a2 + 12) = **(*(result + 32) + 96);
  *(a2 + 16) = *(*(*(result + 32) + 96) + 4);
  return result;
}

uint64_t sub_1000B1CD8(uint64_t result, uint64_t a2)
{
  *a2 = *(*(*(result + 32) + 120) + 8);
  *(a2 + 4) = *(*(*(result + 32) + 120) + 12);
  *(a2 + 8) = *(*(*(result + 32) + 120) + 16);
  *(a2 + 12) = **(*(result + 32) + 120);
  *(a2 + 16) = *(*(*(result + 32) + 120) + 4);
  return result;
}

uint64_t sub_1000B1D2C(uint64_t result, uint64_t a2)
{
  *a2 = *(*(*(result + 32) + 144) + 8);
  *(a2 + 4) = *(*(*(result + 32) + 144) + 12);
  *(a2 + 8) = *(*(*(result + 32) + 144) + 16);
  *(a2 + 12) = **(*(result + 32) + 144);
  *(a2 + 16) = *(*(*(result + 32) + 144) + 4);
  return result;
}

id sub_1000B1D80(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = *(a2 + 4);
    result = [WCM_Logging logLevel:16 message:@"QMI.NAS.%d: WrmSdmLocationDbInfo::Response Error %d %s", *(v4 + 32), v3, qmi::asString()];
  }

  else
  {
    result = [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: WrmSdmLocationDbInfo::Response Successful", *(v4 + 32), v7, v8];
  }

  *(*(a1 + 32) + 80) = *(*(a1 + 32) + 72);
  *(*(a1 + 32) + 104) = *(*(a1 + 32) + 96);
  *(*(a1 + 32) + 128) = *(*(a1 + 32) + 120);
  *(*(a1 + 32) + 152) = *(*(a1 + 32) + 144);
  return result;
}

__n128 sub_1000B1ECC(uint64_t a1, uint64_t i, uint64_t a3, unint64_t a4, uint64_t a5, char a6, __n128 result)
{
LABEL_1:
  v12 = i;
LABEL_2:
  for (i = v12; ; i = v93)
  {
    v13 = i - a4;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((i - a4) >> 2);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        if (*(a4 + 16) < *(i - 4))
        {
          v240 = *(i - 4);
          v221 = *(i - 20);
          v133 = *a4;
          *(i - 4) = *(a4 + 16);
          *(i - 20) = v133;
LABEL_111:
          result = v221;
          *a4 = v221;
          *(a4 + 16) = v240;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v128 = (i - 20);
      v129 = (i - 40);
      v134 = *(i - 24);
      if (v134 >= *(i - 4))
      {
        if (*(i - 44) < v134)
        {
          v188 = *(i - 24);
          result = *v129;
          v189 = *(i - 44);
          *(i - 40) = *(i - 60);
          *(i - 24) = v189;
          *(i - 60) = result;
          *(i - 44) = v188;
          if (*(i - 24) < *(i - 4))
          {
            v243 = *(i - 4);
            v226 = *v128;
            v190 = *v129;
            *(i - 4) = *(i - 24);
            *v128 = v190;
            result = v226;
            *v129 = v226;
            *(i - 24) = v243;
          }
        }
      }

      else
      {
        v135 = (i - 60);
        if (*(i - 44) < v134)
        {
          v241 = *(i - 4);
          v222 = *v128;
          v136 = *v135;
          *(i - 4) = *(i - 44);
          *v128 = v136;
          result = v222;
          *v135 = v222;
          v137 = v241;
          goto LABEL_186;
        }

        v245 = *(i - 4);
        v229 = *v128;
        v201 = *v129;
        *(i - 4) = *(i - 24);
        *v128 = v201;
        result = v229;
        *v129 = v229;
        *(i - 24) = v245;
        if (*(i - 44) < *(i - 24))
        {
          v137 = *(i - 24);
          result = *v129;
          v202 = *(i - 44);
          *v129 = *v135;
          *(i - 24) = v202;
          *v135 = result;
LABEL_186:
          *(i - 44) = v137;
        }
      }

      if (*(a4 + 16) >= *(i - 44))
      {
        return result;
      }

      v203 = (i - 60);
      v204 = *(i - 44);
      result = *(i - 60);
      v205 = *(a4 + 16);
      *v203 = *a4;
      v203[1].n128_u32[0] = v205;
      *a4 = result;
      *(a4 + 16) = v204;
      if (*(i - 44) >= *(i - 24))
      {
        return result;
      }

      v206 = *(i - 24);
      result = *v129;
      v207 = *(i - 44);
      *v129 = *v203;
      *(i - 24) = v207;
      *v203 = result;
      *(i - 44) = v206;
LABEL_190:
      if (*(i - 24) < *(i - 4))
      {
        v246 = v128[1].n128_u32[0];
        v230 = *v128;
        v208 = *v129;
        v128[1].n128_u32[0] = v129[1].n128_u32[0];
        *v128 = v208;
        result = v230;
        *v129 = v230;
        v129[1].n128_u32[0] = v246;
      }

      return result;
    }

    if (v14 == 5)
    {
      result.n128_u64[0] = sub_1000B2E54(result, a1, i, i - 20, i - 20, i - 40, i - 40, i - 60, i - 60, a3, a4 + 20).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v13 <= 479)
    {
      if (a6)
      {
        if (i != a4)
        {
          v138 = (i - 20);
          if (i - 20 != a4)
          {
            v139 = 0;
            v140 = (i - 4);
            do
            {
              v141 = v138[-1].n128_u32[3];
              v142 = v138[1].n128_u32[0];
              v138 = (v138 - 20);
              if (v141 < v142)
              {
                v223 = *v138;
                v143 = v140;
                v144 = v139;
                do
                {
                  v145 = v143;
                  *(v143 - 36) = v143[-1];
                  v143[-2].n128_u32[3] = v143->n128_u32[0];
                  if (!v144)
                  {
                    break;
                  }

                  v143 = (v143 + 20);
                  v144 -= 20;
                }

                while (v141 < v145[1].n128_u32[1]);
                result = v223;
                v145[-1] = v223;
                v145->n128_u32[0] = v141;
              }

              v139 += 20;
              v140 = (v140 - 20);
            }

            while (v138 != a4);
          }
        }
      }

      else if (i != a4)
      {
        v191 = (i - 20);
        if (i - 20 != a4)
        {
          do
          {
            v192 = (v191 - 20);
            v193 = v191[-1].n128_u32[3];
            if (v193 < v191[1].n128_u32[0])
            {
              v194 = (v191 + 20);
              v227 = *v192;
              v195 = &v191[-2].n128_i8[12];
              do
              {
                v196 = *(v195 + 20);
                v191[-1].n128_u32[3] = *(v195 + 9);
                *(v191 - 20) = v196;
                v197 = *(v195 + 14);
                v195 += 20;
                v191 = v194;
                v194 = (v194 + 20);
              }

              while (v193 < v197);
              result = v227;
              *v195 = v227;
              *(v195 + 4) = v193;
            }

            v191 = v192;
          }

          while (v192 != a4);
        }
      }

      return result;
    }

    if (!a5)
    {
      if (i != a4)
      {
        v146 = (v14 - 2) >> 1;
        v147 = v146;
        do
        {
          v148 = v147;
          v149 = 0xCCCCCCCCCCCCCCCDLL * ((20 * v147) >> 2);
          if (v146 >= v149)
          {
            v150 = 2 * v149;
            v151 = (2 * v149) | 1;
            v152 = i - 20 * v151;
            v153 = v150 + 2;
            if (v153 < v14)
            {
              v154 = *(v152 - 4);
              v155 = *(v152 - 24);
              v156 = v154 >= v155;
              v157 = v154 >= v155 ? 0 : -20;
              v152 += v157;
              if (!v156)
              {
                v151 = v153;
              }
            }

            v158 = i - 20 * v148;
            v159 = *(v158 - 4);
            if (*(v152 - 4) >= v159)
            {
              v224 = *(v158 - 20);
              do
              {
                v160 = v158;
                v158 = v152;
                v161 = *(v152 - 20);
                *(v160 - 4) = *(v152 - 4);
                *(v160 - 20) = v161;
                if (v146 < v151)
                {
                  break;
                }

                v162 = (2 * v151) | 1;
                v152 = i - 20 * v162;
                v151 = 2 * v151 + 2;
                if (v151 >= v14)
                {
                  v151 = v162;
                }

                else
                {
                  v163 = *(v152 - 4);
                  v164 = *(v152 - 24);
                  v165 = v163 >= v164;
                  if (v163 >= v164)
                  {
                    v166 = 0;
                  }

                  else
                  {
                    v166 = -20;
                  }

                  v152 += v166;
                  if (v165)
                  {
                    v151 = v162;
                  }
                }
              }

              while (*(v152 - 4) >= v159);
              *(v158 - 20) = v224;
              *(v158 - 4) = v159;
            }
          }

          v147 = v148 - 1;
        }

        while (v148);
        v167 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 2);
        do
        {
          v168 = 0;
          v242 = *(i - 4);
          v225 = *(i - 20);
          v169 = i;
          do
          {
            v170 = v169 + 20 * ~v168;
            v171 = (2 * v168) | 1;
            v172 = 2 * v168 + 2;
            if (v172 < v167)
            {
              v173 = *(v170 - 4);
              v174 = *(v170 - 24);
              v175 = v173 >= v174;
              v176 = v173 >= v174 ? 0 : -20;
              v170 += v176;
              if (!v175)
              {
                v171 = v172;
              }
            }

            v177 = *(v170 - 20);
            *(v169 - 4) = *(v170 - 4);
            *(v169 - 20) = v177;
            v169 = v170;
            v168 = v171;
          }

          while (v171 <= ((v167 - 2) >> 1));
          v178 = (v170 - 20);
          if (v170 == a4 + 20)
          {
            result = v225;
            *(v170 - 4) = v242;
            *v178 = v225;
          }

          else
          {
            v179 = *a4;
            *(v170 - 4) = *(a4 + 16);
            *v178 = v179;
            result = v225;
            *a4 = v225;
            *(a4 + 16) = v242;
            if (i - v178 >= 21)
            {
              v180 = (-2 - 0x3333333333333333 * ((i - v178) >> 2)) >> 1;
              v181 = i - 20 * v180;
              v182 = *(v170 - 4);
              if (*(v181 - 4) < v182)
              {
                v212 = *v178;
                do
                {
                  v183 = v181;
                  v184 = *(v181 - 20);
                  *(v170 - 4) = *(v181 - 4);
                  *(v170 - 20) = v184;
                  if (!v180)
                  {
                    break;
                  }

                  v180 = (v180 - 1) >> 1;
                  v181 = i - 20 * v180;
                  v170 = v183;
                }

                while (*(v181 - 4) < v182);
                result = v212;
                *(v183 - 20) = v212;
                *(v183 - 4) = v182;
              }
            }
          }

          a4 += 20;
        }

        while (v167-- > 2);
      }

      return result;
    }

    v15 = -20 * (v14 >> 1);
    v16 = v15 + i;
    if (v14 >= 0x81)
    {
      v17 = v16 - 20;
      v18 = (i - 20);
      v19 = *(v16 - 4);
      if (v19 >= *(i - 4))
      {
        if (*(a4 + 16) < v19)
        {
          v28 = *(v16 - 4);
          v29 = *v17;
          v30 = *(a4 + 16);
          *v17 = *a4;
          *(v16 - 4) = v30;
          *a4 = v29;
          *(a4 + 16) = v28;
          if (*(v16 - 4) < *(i - 4))
          {
            v232 = *(i - 4);
            v214 = *v18;
            v31 = *v17;
            *(i - 4) = *(v16 - 4);
            *v18 = v31;
            *v17 = v214;
            *(v16 - 4) = v232;
          }
        }
      }

      else
      {
        if (*(a4 + 16) < v19)
        {
          v231 = *(i - 4);
          v213 = *v18;
          v20 = *a4;
          *(i - 4) = *(a4 + 16);
          *v18 = v20;
          *a4 = v213;
          v21 = v231;
          goto LABEL_27;
        }

        v235 = *(i - 4);
        v216 = *v18;
        v35 = *v17;
        *(i - 4) = *(v16 - 4);
        *v18 = v35;
        *v17 = v216;
        *(v16 - 4) = v235;
        if (*(a4 + 16) < *(v16 - 4))
        {
          v21 = *(v16 - 4);
          v36 = *v17;
          v37 = *(a4 + 16);
          *v17 = *a4;
          *(v16 - 4) = v37;
          *a4 = v36;
LABEL_27:
          *(a4 + 16) = v21;
        }
      }

      v38 = i + v15;
      v39 = (i - 40);
      v40 = *(i + v15 + 16);
      if (v40 >= *(i - 24))
      {
        if (*(a4 + 36) < v40)
        {
          v44 = *(v38 + 16);
          v45 = *v38;
          v46 = *(a4 + 36);
          *v38 = *(a4 + 20);
          *(v38 + 16) = v46;
          *(a4 + 20) = v45;
          *(a4 + 36) = v44;
          if (*(v38 + 16) < *(i - 24))
          {
            v47 = *(i - 24);
            v48 = *v39;
            v49 = *(v38 + 16);
            *v39 = *v38;
            *(i - 24) = v49;
            *v38 = v48;
            *(v38 + 16) = v47;
          }
        }
      }

      else
      {
        if (*(a4 + 36) < v40)
        {
          v41 = *(i - 24);
          v42 = *v39;
          v43 = *(a4 + 36);
          *v39 = *(a4 + 20);
          *(i - 24) = v43;
          goto LABEL_39;
        }

        v54 = *(i - 24);
        v55 = *v39;
        v56 = *(v38 + 16);
        *v39 = *v38;
        *(i - 24) = v56;
        *v38 = v55;
        *(v38 + 16) = v54;
        if (*(a4 + 36) < *(v38 + 16))
        {
          v41 = *(v38 + 16);
          v42 = *v38;
          v57 = *(a4 + 36);
          *v38 = *(a4 + 20);
          *(v38 + 16) = v57;
LABEL_39:
          *(a4 + 20) = v42;
          *(a4 + 36) = v41;
        }
      }

      v58 = v18 + v15;
      v59 = &v18[-1] + v15 - 4;
      v60 = (i - 60);
      v61 = *(v58 - 1);
      if (v61 >= *(i - 44))
      {
        if (*(a4 + 56) < v61)
        {
          v65 = *(v59 + 16);
          v66 = *v59;
          v67 = *(a4 + 56);
          *v59 = *(a4 + 40);
          *(v59 + 16) = v67;
          *(a4 + 40) = v66;
          *(a4 + 56) = v65;
          if (*(v58 - 1) < *(i - 44))
          {
            v68 = *(i - 44);
            v69 = *v60;
            v70 = *(v59 + 16);
            *v60 = *v59;
            *(i - 44) = v70;
            *v59 = v69;
            *(v59 + 16) = v68;
          }
        }
      }

      else
      {
        if (*(a4 + 56) < v61)
        {
          v62 = *(i - 44);
          v63 = *v60;
          v64 = *(a4 + 56);
          *v60 = *(a4 + 40);
          *(i - 44) = v64;
          goto LABEL_48;
        }

        v71 = *(i - 44);
        v72 = *v60;
        v73 = *(v59 + 16);
        *v60 = *v59;
        *(i - 44) = v73;
        *v59 = v72;
        *(v59 + 16) = v71;
        if (*(a4 + 56) < *(v58 - 1))
        {
          v62 = *(v59 + 16);
          v63 = *v59;
          v74 = *(a4 + 56);
          *v59 = *(a4 + 40);
          *(v59 + 16) = v74;
LABEL_48:
          *(a4 + 40) = v63;
          *(a4 + 56) = v62;
        }
      }

      v75 = *(v16 - 4);
      v76 = *(v58 - 1);
      if (v75 >= *(v38 + 16))
      {
        if (v76 < v75)
        {
          v80 = *(v16 - 4);
          v81 = *v17;
          v82 = *(v59 + 16);
          *v17 = *v59;
          *(v16 - 4) = v82;
          *v59 = v81;
          *(v59 + 16) = v80;
          if (*(v16 - 4) < *(v38 + 16))
          {
            v83 = *(v38 + 16);
            v84 = *v38;
            v85 = *(v17 + 16);
            *v38 = *v17;
            *(v38 + 16) = v85;
            *v17 = v84;
            *(v17 + 16) = v83;
          }
        }
      }

      else
      {
        if (v76 < v75)
        {
          v77 = *(v38 + 16);
          v78 = *v38;
          v79 = *(v59 + 16);
          *v38 = *v59;
          *(v38 + 16) = v79;
          goto LABEL_57;
        }

        v86 = *(v38 + 16);
        v87 = *v38;
        v88 = *(v16 - 4);
        *v38 = *v17;
        *(v38 + 16) = v88;
        *v17 = v87;
        *(v16 - 4) = v86;
        if (*(v58 - 1) < *(v16 - 4))
        {
          v77 = *(v16 - 4);
          v78 = *v17;
          v89 = *(v59 + 16);
          *v17 = *v59;
          *(v17 + 16) = v89;
LABEL_57:
          *v59 = v78;
          *(v59 + 16) = v77;
        }
      }

      v237 = *(i - 4);
      v218 = *v18;
      v90 = *v17;
      *(i - 4) = *(v17 + 16);
      *v18 = v90;
      *v17 = v218;
      *(v17 + 16) = v237;
      goto LABEL_59;
    }

    v22 = (i - 20);
    v23 = v16 - 20;
    v24 = *(i - 4);
    if (v24 >= *(v16 - 4))
    {
      if (*(a4 + 16) < v24)
      {
        v233 = *(i - 4);
        v215 = *v22;
        v32 = *a4;
        *(i - 4) = *(a4 + 16);
        *v22 = v32;
        *a4 = v215;
        *(a4 + 16) = v233;
        if (*(i - 4) < *(v16 - 4))
        {
          v33 = *v23;
          v234 = *(v16 - 4);
          v34 = *(i - 4);
          *v23 = *v22;
          *(v16 - 4) = v34;
          *(i - 4) = v234;
          *v22 = v33;
        }
      }
    }

    else
    {
      if (*(a4 + 16) < v24)
      {
        v25 = *(v16 - 4);
        v26 = *v23;
        v27 = *(a4 + 16);
        *v23 = *a4;
        *(v23 + 16) = v27;
        *a4 = v26;
LABEL_36:
        *(a4 + 16) = v25;
        goto LABEL_59;
      }

      v50 = *v23;
      v51 = *(v16 - 4);
      v52 = *(i - 4);
      *v23 = *v22;
      *(v23 + 16) = v52;
      *(i - 4) = v51;
      *v22 = v50;
      if (*(a4 + 16) < *(i - 4))
      {
        v236 = *(i - 4);
        v217 = *v22;
        v53 = *a4;
        *(i - 4) = *(a4 + 16);
        *v22 = v53;
        *a4 = v217;
        v25 = v236;
        goto LABEL_36;
      }
    }

LABEL_59:
    --a5;
    if ((a6 & 1) != 0 || *(i + 16) < *(i - 4))
    {
      v104 = 0;
      v105 = a1;
      v211 = *(i - 20);
      v106 = *(i - 4);
      do
      {
        v107 = *(i + v104 - 24);
        v104 -= 20;
      }

      while (v107 < v106);
      v108 = i + v104;
      v109 = a4;
      if (v104 == -20)
      {
        v110 = a4;
        while (v108 > v110)
        {
          v111 = v110 + 20;
          v112 = *(v110 + 16);
          v110 += 20;
          if (v112 < v106)
          {
            goto LABEL_89;
          }
        }

        v111 = v110;
      }

      else
      {
        do
        {
          v111 = v109 + 20;
          v113 = *(v109 + 16);
          v109 += 20;
        }

        while (v113 >= v106);
      }

LABEL_89:
      if (v108 <= v111)
      {
        v117 = v108 + 20;
      }

      else
      {
        v114 = v108;
        v115 = v111;
        do
        {
          v239 = *(v114 - 4);
          v220 = *(v114 - 20);
          v116 = *(v115 - 20);
          *(v114 - 4) = *(v115 - 4);
          *(v114 - 20) = v116;
          *(v115 - 4) = v239;
          *(v115 - 20) = v220;
          v117 = v114 + 20;
          do
          {
            v118 = *(v114 - 24);
            v114 -= 20;
            v117 -= 20;
          }

          while (v118 < v106);
          do
          {
            v119 = *(v115 + 16);
            v115 += 20;
          }

          while (v119 >= v106);
        }

        while (v114 > v115);
      }

      if (v117 != i)
      {
        v120 = *(v117 - 20);
        *(i - 4) = *(v117 - 4);
        *(i - 20) = v120;
      }

      v12 = v117 - 20;
      *(v117 - 20) = v211;
      *(v117 - 4) = v106;
      if (v108 > v111)
      {
LABEL_102:
        v125 = v105;
        v126 = i;
        v127 = a3;
        sub_1000B1ECC(v125, v126, v117, v117, a5, a6 & 1);
        a3 = v127;
        a6 = 0;
        a1 = v117;
        goto LABEL_2;
      }

      v209 = a1;
      v121 = a1;
      v122 = a3;
      v123 = sub_1000B30B8(a1, i, v117, v117, v211);
      if (!sub_1000B30B8(v117 - 20, v117 - 20, v122, a4, v124))
      {
        a1 = v117;
        a3 = v122;
        v105 = v121;
        if (v123)
        {
          goto LABEL_2;
        }

        goto LABEL_102;
      }

      a3 = v117;
      a4 = v117;
      a1 = v209;
      if (v123)
      {
        return result;
      }

      goto LABEL_1;
    }

    v210 = *(i - 20);
    v91 = *(i - 4);
    if (v91 >= *(a4 + 16))
    {
      v95 = (i - 24);
      do
      {
        v93 = (v95 + 1);
        if ((v95 + 1) <= a4)
        {
          break;
        }

        v96 = *v95;
        v95 -= 5;
      }

      while (v91 >= v96);
    }

    else
    {
      v92 = i;
      do
      {
        v93 = (v92 - 20);
        v94 = *(v92 - 24);
        v92 -= 20;
      }

      while (v91 >= v94);
    }

    v97 = a4;
    if (v93 > a4)
    {
      v98 = a4;
      do
      {
        v97 = v98 + 20;
        v99 = *(v98 + 16);
        v98 += 20;
      }

      while (v91 < v99);
    }

    while (v93 > v97)
    {
      v238 = v93[-1].n128_i32[3];
      v219 = *(&v93[-2] + 12);
      v100 = *(v97 - 20);
      v93[-1].n128_u32[3] = *(v97 - 4);
      *(v93 - 20) = v100;
      *(v97 - 4) = v238;
      *(v97 - 20) = v219;
      do
      {
        v101 = v93[-2].n128_u32[2];
        v93 = (v93 - 20);
      }

      while (v91 >= v101);
      do
      {
        v102 = *(v97 + 16);
        v97 += 20;
      }

      while (v91 < v102);
    }

    if (&v93[1].n128_u8[4] != i)
    {
      v103 = *v93;
      *(i - 4) = v93[1].n128_u32[0];
      *(i - 20) = v103;
    }

    a6 = 0;
    result = v210;
    *v93 = v210;
    v93[1].n128_u32[0] = v91;
  }

  v128 = (i - 20);
  v129 = (i - 40);
  v130 = *(i - 24);
  v131 = *(a4 + 16);
  if (v130 >= *(i - 4))
  {
    if (v131 >= v130)
    {
      return result;
    }

    v186 = *(i - 24);
    result = *v129;
    v187 = *(a4 + 16);
    *v129 = *a4;
    *(i - 24) = v187;
    *a4 = result;
    *(a4 + 16) = v186;
    goto LABEL_190;
  }

  if (v131 < v130)
  {
    v240 = *(i - 4);
    v221 = *v128;
    v132 = *a4;
    *(i - 4) = *(a4 + 16);
    *v128 = v132;
    goto LABEL_111;
  }

  v244 = *(i - 4);
  v228 = *v128;
  v198 = *v129;
  *(i - 4) = *(i - 24);
  *v128 = v198;
  result = v228;
  *v129 = v228;
  *(i - 24) = v244;
  if (*(a4 + 16) < *(i - 24))
  {
    v199 = *(i - 24);
    result = *v129;
    v200 = *(a4 + 16);
    *v129 = *a4;
    *(i - 24) = v200;
    *a4 = result;
    *(a4 + 16) = v199;
  }

  return result;
}