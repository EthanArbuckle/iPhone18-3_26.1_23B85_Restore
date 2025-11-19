@interface WiFiAnalyticsManager
+ (id)sharedWiFiAnalyticsManager;
- (BOOL)isHighCongestionNetwork:(__WiFiNetwork *)a3;
- (BOOL)isMovingNetwork:(__WiFiNetwork *)a3;
- (BOOL)isNetworkTraitsCacheValid;
- (BOOL)isOmnipresentNetwork:(__WiFiNetwork *)a3;
- (BOOL)isPoorCoverageNetwork:(__WiFiNetwork *)a3;
- (WADeviceAnalyticsClient)deviceAnalyticsClient;
- (WiFiAnalyticsManager)init;
- (__WiFiNetwork)_copyCreateEquivalentWiFiNetwork:(id)a3 authFlags:(int64_t)a4;
- (id)copyAllStoredNetworkSsids;
- (id)copyGeoTagsForNetworkAtLocation:(__WiFiNetwork *)a3 location:(id)a4;
- (id)copyLanForNetwork:(__CFString *)a3 isBSSID:(BOOL)a4;
- (id)copyNetworksInSameLanAs:(__WiFiNetwork *)a3;
- (id)copyNetworksWithNetworkSignature:(__CFString *)a3 ipv6NetworkSignature:(__CFString *)a4;
- (id)copyPreferenceScoreDictionaryForNetwork:(__WiFiNetwork *)a3;
- (id)copyScoreSortedNetworksAvailableAtLocation:(id)a3;
- (id)higherBandNetworksAvailableAtLocation:(id)a3;
- (id)networksAvailableAtLocation:(id)a3;
- (unint64_t)countNetworksAvailableAtLocation:(id)a3;
- (unint64_t)countNetworksInSameLanAs:(__WiFiNetwork *)a3;
- (unint64_t)isWithin:(double)a3 fromLocation:(id)a4 forNetwork:(__WiFiNetwork *)a5;
- (unsigned)getColocatedStateFromPreferenceScoreDictionary:(id)a3;
- (void)getAdaptiveRoamParams:(__CFString *)a3 ssid:(__CFString *)a4;
- (void)setWiFiManager:(__WiFiManager *)a3;
- (void)updateNetworkTraitsCache;
@end

@implementation WiFiAnalyticsManager

+ (id)sharedWiFiAnalyticsManager
{
  if (objc_opt_class())
  {
    if (qword_100298478 != -1)
    {
      sub_10013840C();
    }
  }

  else
  {
    sub_100138420();
  }

  v2 = qword_100298470;

  return v2;
}

- (WADeviceAnalyticsClient)deviceAnalyticsClient
{
  if (objc_opt_class())
  {
    if (!self->_deviceAnalyticsClient)
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: attempting to initialize deviceAnalyticsClient", "-[WiFiAnalyticsManager deviceAnalyticsClient]"}];
      }

      objc_autoreleasePoolPop(v3);
      v4 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
      deviceAnalyticsClient = self->_deviceAnalyticsClient;
      self->_deviceAnalyticsClient = v4;

      v6 = self->_deviceAnalyticsClient;
      v7 = objc_autoreleasePoolPush();
      v8 = off_100298C40;
      if (v6)
      {
        if (off_100298C40)
        {
          v9 = [(WADeviceAnalyticsClient *)self->_deviceAnalyticsClient storeLoaded];
          v10 = @"NO";
          if (v9)
          {
            v10 = @"YES";
          }

          [v8 WFLog:3 message:{"%s: deviceAnalyticsClient initialized successfully and store loaded: %@", "-[WiFiAnalyticsManager deviceAnalyticsClient]", v10}];
        }
      }

      else if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: unable to init deviceAnalyticsClient", "-[WiFiAnalyticsManager deviceAnalyticsClient]", v13}];
      }

      objc_autoreleasePoolPop(v7);
      self->_roamParamsQueryPending = 0;
    }
  }

  else
  {
    sub_100138558();
  }

  v11 = self->_deviceAnalyticsClient;

  return v11;
}

- (BOOL)isNetworkTraitsCacheValid
{
  v3 = [(WiFiAnalyticsManager *)self dateTraitCachesUpdated];

  if (v3)
  {
    v4 = +[NSDate date];
    v5 = [(WiFiAnalyticsManager *)self dateTraitCachesUpdated];
    [v4 timeIntervalSinceDate:v5];
    v7 = v6;

    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v9 = "No";
      if (v7 > 600.0)
      {
        v9 = "Yes";
      }

      [off_100298C40 WFLog:3 message:{"%s: Cache needs update: %s. Time difference %.2f", "-[WiFiAnalyticsManager isNetworkTraitsCacheValid]", v9, *&v7}];
    }

    objc_autoreleasePoolPop(v8);
    v10 = v7 <= 600.0;
    if (v7 > 600.0)
    {
      [(WiFiAnalyticsManager *)self updateNetworkTraitsCache];
    }
  }

  else
  {
    [(WiFiAnalyticsManager *)self updateNetworkTraitsCache];
    v10 = 0;
  }

  return v10 & ![(WiFiAnalyticsManager *)self traitsCacheUpdateBusy];
}

- (void)updateNetworkTraitsCache
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = sub_100002B10;
  v6[4] = sub_10000673C;
  v2 = self;
  v7 = v2;
  v3 = [(WiFiAnalyticsManager *)v2 deviceAnalyticsClient];

  if (!v3)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient is nil", "-[WiFiAnalyticsManager updateNetworkTraitsCache]"}];
    }

    goto LABEL_9;
  }

  if ([(WiFiAnalyticsManager *)v2 traitsCacheUpdateBusy])
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: cache updates already in progress", "-[WiFiAnalyticsManager updateNetworkTraitsCache]"}];
    }

LABEL_9:
    objc_autoreleasePoolPop(v4);
    goto LABEL_4;
  }

  [(WiFiAnalyticsManager *)v2 setTraitsCacheUpdateBusy:1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A6EC;
  block[3] = &unk_10025EB70;
  block[4] = v2;
  block[5] = v6;
  dispatch_async(qword_100298C50, block);
LABEL_4:
  _Block_object_dispose(v6, 8);
}

- (WiFiAnalyticsManager)init
{
  v17.receiver = self;
  v17.super_class = WiFiAnalyticsManager;
  v2 = [(WiFiAnalyticsManager *)&v17 init];
  v3 = v2;
  if (v2)
  {
    deviceAnalyticsClient = v2->_deviceAnalyticsClient;
    v2->_deviceAnalyticsClient = 0;

    v5 = objc_alloc_init(NSMutableArray);
    movingNetworkSsidsCache = v3->_movingNetworkSsidsCache;
    v3->_movingNetworkSsidsCache = v5;

    v7 = objc_alloc_init(NSMutableArray);
    omnipresentNetworkSsidsCache = v3->_omnipresentNetworkSsidsCache;
    v3->_omnipresentNetworkSsidsCache = v7;

    v9 = objc_alloc_init(NSMutableArray);
    poorCoverageNetworkSsidsCache = v3->_poorCoverageNetworkSsidsCache;
    v3->_poorCoverageNetworkSsidsCache = v9;

    v11 = objc_alloc_init(NSMutableArray);
    highCongestionNetworkSsidsCache = v3->_highCongestionNetworkSsidsCache;
    v3->_highCongestionNetworkSsidsCache = v11;

    dateTraitCachesUpdated = v3->_dateTraitCachesUpdated;
    v3->_dateTraitCachesUpdated = 0;

    v3->_traitsCacheUpdateBusy = 0;
    v14 = objc_alloc_init(NSMutableArray);
    usageCache = v3->_usageCache;
    v3->_usageCache = v14;
  }

  else
  {
    sub_10013848C();
  }

  return v3;
}

- (void)setWiFiManager:(__WiFiManager *)a3
{
  if (a3)
  {
    [(WiFiAnalyticsManager *)self setWifiManager:?];
    Current = CFAbsoluteTimeGetCurrent();

    [(WiFiAnalyticsManager *)self setManagerInitTime:Current];
  }

  else
  {
    sub_1001384EC();
  }
}

- (__WiFiNetwork)_copyCreateEquivalentWiFiNetwork:(id)a3 authFlags:(int64_t)a4
{
  v4 = a4;
  v5 = a3;
  if (!v5)
  {
    sub_100138630();
LABEL_15:
    v9 = 0;
    goto LABEL_12;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    sub_1001385C4();
    goto LABEL_15;
  }

  v7 = Mutable;
  CFDictionarySetValue(Mutable, @"SSID_STR", v5);
  v8 = sub_10000AD2C(kCFAllocatorDefault, v7);
  v9 = v8;
  if ((v4 & 8) != 0)
  {
    sub_10009F0A0(v8, 1);
  }

  else if (v4)
  {
    sub_10009EF54(v8, 1);
  }

  else if ((v4 & 4) != 0)
  {
    sub_10009E158(v8, 1, v4 & 2);
  }

  else if ((v4 & 2) != 0)
  {
    sub_10009E2E4(v8, 1);
  }

  sub_10000AD34(v9, @"AP_MODE", [NSNumber numberWithInt:2]);
  CFRelease(v7);
LABEL_12:

  return v9;
}

- (void)getAdaptiveRoamParams:(__CFString *)a3 ssid:(__CFString *)a4
{
  v5 = a3;
  if ([(WiFiAnalyticsManager *)self roamParamsQueryPending])
  {
    sub_10013869C();
  }

  else
  {
    [(WiFiAnalyticsManager *)self setRoamParamsQueryPending:1];
    v6 = qword_100298C50;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100039E08;
    v7[3] = &unk_10025EB00;
    v7[4] = self;
    v8 = v5;
    dispatch_async(v6, v7);
  }
}

- (id)higherBandNetworksAvailableAtLocation:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (v5)
  {
    if (v4)
    {
      v6 = [v4 timestamp];
      v5 = v6;
      if (v6)
      {
        [v6 timeIntervalSinceNow];
        if (v7 > -120.0)
        {
          v8 = [(WiFiAnalyticsManager *)self networksAvailableAtLocation:v4 withinDistance:2 inBand:dbl_1001CE030[v7 > -60.0]];
          goto LABEL_6;
        }

        sub_1001388B8();
      }

      else
      {
        sub_100138924();
      }
    }

    else
    {
      sub_100138990();
      v5 = 0;
    }
  }

  else
  {
    sub_1001389FC();
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (unint64_t)isWithin:(double)a3 fromLocation:(id)a4 forNetwork:(__WiFiNetwork *)a5
{
  v8 = a4;
  v9 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!v9)
  {
    sub_100138B40();
LABEL_9:
    v13 = 0;
    goto LABEL_5;
  }

  if (!v8)
  {
    sub_100138AD4();
    goto LABEL_9;
  }

  v10 = sub_10000A878(a5);
  if (!v10)
  {
    sub_100138A68();
    goto LABEL_9;
  }

  v11 = v10;
  v12 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];
  v13 = [v12 isNetworkWithinRangeOfLocation:v11 range:v8 location:a3];

LABEL_5:
  return v13;
}

- (id)copyScoreSortedNetworksAvailableAtLocation:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Feature removed - not used since adoption of UNIFIED AUTO JOIN"];
  }

  objc_autoreleasePoolPop(v4);

  return 0;
}

- (id)copyPreferenceScoreDictionaryForNetwork:(__WiFiNetwork *)a3
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Feature removed - not used since adoption of UNIFIED AUTO JOIN"];
  }

  objc_autoreleasePoolPop(v3);
  return 0;
}

- (unsigned)getColocatedStateFromPreferenceScoreDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Feature removed - not used since adoption of UNIFIED AUTO JOIN"];
  }

  objc_autoreleasePoolPop(v4);

  return 0;
}

- (unint64_t)countNetworksAvailableAtLocation:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!v5)
  {
    sub_100138C18();
LABEL_7:
    v6 = 0;
    goto LABEL_4;
  }

  if (!v4)
  {
    sub_100138BAC();
    goto LABEL_7;
  }

  v6 = [(WiFiAnalyticsManager *)self countNetworksAvailableAtLocation:v4 withinDistance:0 inBand:300.0];
LABEL_4:

  return v6;
}

- (id)networksAvailableAtLocation:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (v5)
  {
    if (v4)
    {
      v6 = [(WiFiAnalyticsManager *)self networksAvailableAtLocation:v4 withinDistance:0 inBand:300.0];
      goto LABEL_4;
    }

    sub_100138C84();
  }

  else
  {
    sub_100138CF0();
  }

  v6 = 0;
LABEL_4:

  return v6;
}

- (id)copyGeoTagsForNetworkAtLocation:(__WiFiNetwork *)a3 location:(id)a4
{
  v6 = a4;
  v7 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!v7)
  {
    sub_100138EA0();
LABEL_10:
    v9 = 0;
    a3 = 0;
    goto LABEL_6;
  }

  if (!a3)
  {
    sub_100138E34();
LABEL_12:
    v9 = 0;
    goto LABEL_6;
  }

  if (!v6)
  {
    sub_100138DC8();
    goto LABEL_10;
  }

  a3 = sub_10000A878(a3);
  if (!a3)
  {
    sub_100138D5C();
    goto LABEL_12;
  }

  v8 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];
  v9 = [v8 copyGeoTagsForNetwork:a3 location:v6];

LABEL_6:
  return v9;
}

- (BOOL)isMovingNetwork:(__WiFiNetwork *)a3
{
  v5 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!v5)
  {
    sub_100139048();
    v7 = 0;
    a3 = 0;
    goto LABEL_8;
  }

  if (!a3)
  {
    sub_100138FDC();
    goto LABEL_7;
  }

  a3 = sub_10000A878(a3);
  if (![(WiFiAnalyticsManager *)self isNetworkTraitsCacheValid])
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v6 = [(WiFiAnalyticsManager *)self movingNetworkSsidsCache];
  v7 = [v6 containsObject:a3];

LABEL_8:
  return v7;
}

- (BOOL)isOmnipresentNetwork:(__WiFiNetwork *)a3
{
  v5 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!v5)
  {
    sub_100139120();
    v7 = 0;
    a3 = 0;
    goto LABEL_8;
  }

  if (!a3)
  {
    sub_1001390B4();
    goto LABEL_7;
  }

  a3 = sub_10000A878(a3);
  if (![(WiFiAnalyticsManager *)self isNetworkTraitsCacheValid])
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v6 = [(WiFiAnalyticsManager *)self omnipresentNetworkSsidsCache];
  v7 = [v6 containsObject:a3];

LABEL_8:
  return v7;
}

- (BOOL)isPoorCoverageNetwork:(__WiFiNetwork *)a3
{
  v5 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!v5)
  {
    sub_1001391F8();
    v7 = 0;
    a3 = 0;
    goto LABEL_8;
  }

  if (!a3)
  {
    sub_10013918C();
    goto LABEL_7;
  }

  a3 = sub_10000A878(a3);
  if (![(WiFiAnalyticsManager *)self isNetworkTraitsCacheValid])
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v6 = [(WiFiAnalyticsManager *)self poorCoverageNetworkSsidsCache];
  v7 = [v6 containsObject:a3];

LABEL_8:
  return v7;
}

- (BOOL)isHighCongestionNetwork:(__WiFiNetwork *)a3
{
  v5 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!v5)
  {
    sub_1001392D0();
    v7 = 0;
    a3 = 0;
    goto LABEL_8;
  }

  if (!a3)
  {
    sub_100139264();
    goto LABEL_7;
  }

  a3 = sub_10000A878(a3);
  if (![(WiFiAnalyticsManager *)self isNetworkTraitsCacheValid])
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v6 = [(WiFiAnalyticsManager *)self highCongestionNetworkSsidsCache];
  v7 = [v6 containsObject:a3];

LABEL_8:
  return v7;
}

- (id)copyAllStoredNetworkSsids
{
  v3 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (v3)
  {
    v4 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];
    v5 = [v4 copyAllStoredNetworkSsids];

    return v5;
  }

  else
  {
    sub_10013933C();
    return 0;
  }
}

- (unint64_t)countNetworksInSameLanAs:(__WiFiNetwork *)a3
{
  if (!a3)
  {
    sub_100139480();
    return 0;
  }

  v5 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!v5)
  {
    sub_100139414();
    return 0;
  }

  v6 = sub_10000A878(a3);
  if (!v6)
  {
    sub_1001393A8();
    return 0;
  }

  v7 = v6;
  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136446722;
    v13 = "[WiFiAnalyticsManager countNetworksInSameLanAs:]";
    v14 = 1024;
    v15 = 544;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Calling deviceAnalyticsClient countNetworksInSameLanAs:%@", &v12, 0x1Cu);
  }

  v9 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];
  v10 = [v9 countNetworksInSameLanAs:v7 withError:0];

  return v10;
}

- (id)copyNetworksInSameLanAs:(__WiFiNetwork *)a3
{
  v3 = a3;
  if (!a3)
  {
    sub_1001395C4();
LABEL_12:
    v7 = 0;
    v5 = 0;
    goto LABEL_8;
  }

  v5 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!v5)
  {
    sub_100139558();
    v7 = 0;
    v3 = 0;
    goto LABEL_8;
  }

  v3 = sub_10000A878(v3);
  if (!v3)
  {
    sub_1001394EC();
    goto LABEL_12;
  }

  v6 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];
  v11 = 0;
  v7 = [v6 networksInSameLanAs:v3 withError:&v11];
  v5 = v11;

  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient networksInSameLanAs failed with error: %@", "-[WiFiAnalyticsManager copyNetworksInSameLanAs:]", v5}];
    }

    objc_autoreleasePoolPop(v8);
  }

LABEL_8:
  v9 = v7;

  return v9;
}

- (id)copyNetworksWithNetworkSignature:(__CFString *)a3 ipv6NetworkSignature:(__CFString *)a4
{
  if (!(a3 | a4))
  {
    sub_10013971C();
    v9 = 0;
    v10 = 0;
    v7 = 0;
    goto LABEL_8;
  }

  v7 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!v7)
  {
    sub_1001396B0();
LABEL_12:
    v9 = 0;
    v10 = 0;
    goto LABEL_8;
  }

  v7 = [WADeviceAnalytics_DHCPServerInfo dhcpServerInfoWithv4Signature:a3 v6Signature:a4];
  if (!v7)
  {
    sub_100139630(a3, a4);
    goto LABEL_12;
  }

  v8 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];
  v14 = 0;
  v9 = [v8 networksInLan:v7 withError:&v14];
  v10 = v14;

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient networksInLan failed with error: %@", "-[WiFiAnalyticsManager copyNetworksWithNetworkSignature:ipv6NetworkSignature:]", v10}];
    }

    objc_autoreleasePoolPop(v11);
  }

LABEL_8:
  v12 = v9;

  return v12;
}

- (id)copyLanForNetwork:(__CFString *)a3 isBSSID:(BOOL)a4
{
  v4 = a3;
  if (!a3)
  {
    sub_1001397F4();
LABEL_13:
    v12 = 0;
    goto LABEL_10;
  }

  v5 = a4;
  v7 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!v7)
  {
    sub_100139788();
    v4 = 0;
    goto LABEL_13;
  }

  v8 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];
  v9 = v8;
  if (v5)
  {
    v16 = 0;
    v10 = &v16;
    v11 = [v8 lanForBssid:v4 withError:&v16];
  }

  else
  {
    v15 = 0;
    v10 = &v15;
    v11 = [v8 lanForSsid:v4 withError:&v15];
  }

  v4 = v11;
  v12 = *v10;

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient lanFor(Bssid|Sssid) failed with error: %@", "-[WiFiAnalyticsManager copyLanForNetwork:isBSSID:]", v12}];
    }

    objc_autoreleasePoolPop(v13);
  }

LABEL_10:

  return v4;
}

@end