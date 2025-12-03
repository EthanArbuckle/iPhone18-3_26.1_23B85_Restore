@interface WiFiAnalyticsManager
+ (id)sharedWiFiAnalyticsManager;
- (BOOL)isHighCongestionNetwork:(__WiFiNetwork *)network;
- (BOOL)isMovingNetwork:(__WiFiNetwork *)network;
- (BOOL)isNetworkTraitsCacheValid;
- (BOOL)isOmnipresentNetwork:(__WiFiNetwork *)network;
- (BOOL)isPoorCoverageNetwork:(__WiFiNetwork *)network;
- (WADeviceAnalyticsClient)deviceAnalyticsClient;
- (WiFiAnalyticsManager)init;
- (__WiFiNetwork)_copyCreateEquivalentWiFiNetwork:(id)network authFlags:(int64_t)flags;
- (id)copyAllStoredNetworkSsids;
- (id)copyGeoTagsForNetworkAtLocation:(__WiFiNetwork *)location location:(id)a4;
- (id)copyLanForNetwork:(__CFString *)network isBSSID:(BOOL)d;
- (id)copyNetworksInSameLanAs:(__WiFiNetwork *)as;
- (id)copyNetworksWithNetworkSignature:(__CFString *)signature ipv6NetworkSignature:(__CFString *)networkSignature;
- (id)copyPreferenceScoreDictionaryForNetwork:(__WiFiNetwork *)network;
- (id)copyScoreSortedNetworksAvailableAtLocation:(id)location;
- (id)higherBandNetworksAvailableAtLocation:(id)location;
- (id)networksAvailableAtLocation:(id)location;
- (unint64_t)countNetworksAvailableAtLocation:(id)location;
- (unint64_t)countNetworksInSameLanAs:(__WiFiNetwork *)as;
- (unint64_t)isWithin:(double)within fromLocation:(id)location forNetwork:(__WiFiNetwork *)network;
- (unsigned)getColocatedStateFromPreferenceScoreDictionary:(id)dictionary;
- (void)getAdaptiveRoamParams:(__CFString *)params ssid:(__CFString *)ssid;
- (void)setWiFiManager:(__WiFiManager *)manager;
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
          storeLoaded = [(WADeviceAnalyticsClient *)self->_deviceAnalyticsClient storeLoaded];
          v10 = @"NO";
          if (storeLoaded)
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
  dateTraitCachesUpdated = [(WiFiAnalyticsManager *)self dateTraitCachesUpdated];

  if (dateTraitCachesUpdated)
  {
    v4 = +[NSDate date];
    dateTraitCachesUpdated2 = [(WiFiAnalyticsManager *)self dateTraitCachesUpdated];
    [v4 timeIntervalSinceDate:dateTraitCachesUpdated2];
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
  selfCopy = self;
  v7 = selfCopy;
  deviceAnalyticsClient = [(WiFiAnalyticsManager *)selfCopy deviceAnalyticsClient];

  if (!deviceAnalyticsClient)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient is nil", "-[WiFiAnalyticsManager updateNetworkTraitsCache]"}];
    }

    goto LABEL_9;
  }

  if ([(WiFiAnalyticsManager *)selfCopy traitsCacheUpdateBusy])
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

  [(WiFiAnalyticsManager *)selfCopy setTraitsCacheUpdateBusy:1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A6EC;
  block[3] = &unk_10025EB70;
  block[4] = selfCopy;
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

- (void)setWiFiManager:(__WiFiManager *)manager
{
  if (manager)
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

- (__WiFiNetwork)_copyCreateEquivalentWiFiNetwork:(id)network authFlags:(int64_t)flags
{
  flagsCopy = flags;
  networkCopy = network;
  if (!networkCopy)
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
  CFDictionarySetValue(Mutable, @"SSID_STR", networkCopy);
  v8 = sub_10000AD2C(kCFAllocatorDefault, v7);
  v9 = v8;
  if ((flagsCopy & 8) != 0)
  {
    sub_10009F0A0(v8, 1);
  }

  else if (flagsCopy)
  {
    sub_10009EF54(v8, 1);
  }

  else if ((flagsCopy & 4) != 0)
  {
    sub_10009E158(v8, 1, flagsCopy & 2);
  }

  else if ((flagsCopy & 2) != 0)
  {
    sub_10009E2E4(v8, 1);
  }

  sub_10000AD34(v9, @"AP_MODE", [NSNumber numberWithInt:2]);
  CFRelease(v7);
LABEL_12:

  return v9;
}

- (void)getAdaptiveRoamParams:(__CFString *)params ssid:(__CFString *)ssid
{
  paramsCopy = params;
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
    v8 = paramsCopy;
    dispatch_async(v6, v7);
  }
}

- (id)higherBandNetworksAvailableAtLocation:(id)location
{
  locationCopy = location;
  deviceAnalyticsClient = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (deviceAnalyticsClient)
  {
    if (locationCopy)
    {
      timestamp = [locationCopy timestamp];
      deviceAnalyticsClient = timestamp;
      if (timestamp)
      {
        [timestamp timeIntervalSinceNow];
        if (v7 > -120.0)
        {
          v8 = [(WiFiAnalyticsManager *)self networksAvailableAtLocation:locationCopy withinDistance:2 inBand:dbl_1001CE030[v7 > -60.0]];
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
      deviceAnalyticsClient = 0;
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

- (unint64_t)isWithin:(double)within fromLocation:(id)location forNetwork:(__WiFiNetwork *)network
{
  locationCopy = location;
  deviceAnalyticsClient = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!deviceAnalyticsClient)
  {
    sub_100138B40();
LABEL_9:
    v13 = 0;
    goto LABEL_5;
  }

  if (!locationCopy)
  {
    sub_100138AD4();
    goto LABEL_9;
  }

  v10 = sub_10000A878(network);
  if (!v10)
  {
    sub_100138A68();
    goto LABEL_9;
  }

  v11 = v10;
  deviceAnalyticsClient2 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];
  v13 = [deviceAnalyticsClient2 isNetworkWithinRangeOfLocation:v11 range:locationCopy location:within];

LABEL_5:
  return v13;
}

- (id)copyScoreSortedNetworksAvailableAtLocation:(id)location
{
  locationCopy = location;
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Feature removed - not used since adoption of UNIFIED AUTO JOIN"];
  }

  objc_autoreleasePoolPop(v4);

  return 0;
}

- (id)copyPreferenceScoreDictionaryForNetwork:(__WiFiNetwork *)network
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Feature removed - not used since adoption of UNIFIED AUTO JOIN"];
  }

  objc_autoreleasePoolPop(v3);
  return 0;
}

- (unsigned)getColocatedStateFromPreferenceScoreDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Feature removed - not used since adoption of UNIFIED AUTO JOIN"];
  }

  objc_autoreleasePoolPop(v4);

  return 0;
}

- (unint64_t)countNetworksAvailableAtLocation:(id)location
{
  locationCopy = location;
  deviceAnalyticsClient = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!deviceAnalyticsClient)
  {
    sub_100138C18();
LABEL_7:
    v6 = 0;
    goto LABEL_4;
  }

  if (!locationCopy)
  {
    sub_100138BAC();
    goto LABEL_7;
  }

  v6 = [(WiFiAnalyticsManager *)self countNetworksAvailableAtLocation:locationCopy withinDistance:0 inBand:300.0];
LABEL_4:

  return v6;
}

- (id)networksAvailableAtLocation:(id)location
{
  locationCopy = location;
  deviceAnalyticsClient = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (deviceAnalyticsClient)
  {
    if (locationCopy)
    {
      v6 = [(WiFiAnalyticsManager *)self networksAvailableAtLocation:locationCopy withinDistance:0 inBand:300.0];
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

- (id)copyGeoTagsForNetworkAtLocation:(__WiFiNetwork *)location location:(id)a4
{
  v6 = a4;
  deviceAnalyticsClient = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!deviceAnalyticsClient)
  {
    sub_100138EA0();
LABEL_10:
    v9 = 0;
    location = 0;
    goto LABEL_6;
  }

  if (!location)
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

  location = sub_10000A878(location);
  if (!location)
  {
    sub_100138D5C();
    goto LABEL_12;
  }

  deviceAnalyticsClient2 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];
  v9 = [deviceAnalyticsClient2 copyGeoTagsForNetwork:location location:v6];

LABEL_6:
  return v9;
}

- (BOOL)isMovingNetwork:(__WiFiNetwork *)network
{
  deviceAnalyticsClient = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!deviceAnalyticsClient)
  {
    sub_100139048();
    v7 = 0;
    network = 0;
    goto LABEL_8;
  }

  if (!network)
  {
    sub_100138FDC();
    goto LABEL_7;
  }

  network = sub_10000A878(network);
  if (![(WiFiAnalyticsManager *)self isNetworkTraitsCacheValid])
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  movingNetworkSsidsCache = [(WiFiAnalyticsManager *)self movingNetworkSsidsCache];
  v7 = [movingNetworkSsidsCache containsObject:network];

LABEL_8:
  return v7;
}

- (BOOL)isOmnipresentNetwork:(__WiFiNetwork *)network
{
  deviceAnalyticsClient = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!deviceAnalyticsClient)
  {
    sub_100139120();
    v7 = 0;
    network = 0;
    goto LABEL_8;
  }

  if (!network)
  {
    sub_1001390B4();
    goto LABEL_7;
  }

  network = sub_10000A878(network);
  if (![(WiFiAnalyticsManager *)self isNetworkTraitsCacheValid])
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  omnipresentNetworkSsidsCache = [(WiFiAnalyticsManager *)self omnipresentNetworkSsidsCache];
  v7 = [omnipresentNetworkSsidsCache containsObject:network];

LABEL_8:
  return v7;
}

- (BOOL)isPoorCoverageNetwork:(__WiFiNetwork *)network
{
  deviceAnalyticsClient = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!deviceAnalyticsClient)
  {
    sub_1001391F8();
    v7 = 0;
    network = 0;
    goto LABEL_8;
  }

  if (!network)
  {
    sub_10013918C();
    goto LABEL_7;
  }

  network = sub_10000A878(network);
  if (![(WiFiAnalyticsManager *)self isNetworkTraitsCacheValid])
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  poorCoverageNetworkSsidsCache = [(WiFiAnalyticsManager *)self poorCoverageNetworkSsidsCache];
  v7 = [poorCoverageNetworkSsidsCache containsObject:network];

LABEL_8:
  return v7;
}

- (BOOL)isHighCongestionNetwork:(__WiFiNetwork *)network
{
  deviceAnalyticsClient = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!deviceAnalyticsClient)
  {
    sub_1001392D0();
    v7 = 0;
    network = 0;
    goto LABEL_8;
  }

  if (!network)
  {
    sub_100139264();
    goto LABEL_7;
  }

  network = sub_10000A878(network);
  if (![(WiFiAnalyticsManager *)self isNetworkTraitsCacheValid])
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  highCongestionNetworkSsidsCache = [(WiFiAnalyticsManager *)self highCongestionNetworkSsidsCache];
  v7 = [highCongestionNetworkSsidsCache containsObject:network];

LABEL_8:
  return v7;
}

- (id)copyAllStoredNetworkSsids
{
  deviceAnalyticsClient = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (deviceAnalyticsClient)
  {
    deviceAnalyticsClient2 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];
    copyAllStoredNetworkSsids = [deviceAnalyticsClient2 copyAllStoredNetworkSsids];

    return copyAllStoredNetworkSsids;
  }

  else
  {
    sub_10013933C();
    return 0;
  }
}

- (unint64_t)countNetworksInSameLanAs:(__WiFiNetwork *)as
{
  if (!as)
  {
    sub_100139480();
    return 0;
  }

  deviceAnalyticsClient = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!deviceAnalyticsClient)
  {
    sub_100139414();
    return 0;
  }

  v6 = sub_10000A878(as);
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

  deviceAnalyticsClient2 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];
  v10 = [deviceAnalyticsClient2 countNetworksInSameLanAs:v7 withError:0];

  return v10;
}

- (id)copyNetworksInSameLanAs:(__WiFiNetwork *)as
{
  asCopy = as;
  if (!as)
  {
    sub_1001395C4();
LABEL_12:
    v7 = 0;
    deviceAnalyticsClient = 0;
    goto LABEL_8;
  }

  deviceAnalyticsClient = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!deviceAnalyticsClient)
  {
    sub_100139558();
    v7 = 0;
    asCopy = 0;
    goto LABEL_8;
  }

  asCopy = sub_10000A878(asCopy);
  if (!asCopy)
  {
    sub_1001394EC();
    goto LABEL_12;
  }

  deviceAnalyticsClient2 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];
  v11 = 0;
  v7 = [deviceAnalyticsClient2 networksInSameLanAs:asCopy withError:&v11];
  deviceAnalyticsClient = v11;

  if (deviceAnalyticsClient)
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: deviceAnalyticsClient networksInSameLanAs failed with error: %@", "-[WiFiAnalyticsManager copyNetworksInSameLanAs:]", deviceAnalyticsClient}];
    }

    objc_autoreleasePoolPop(v8);
  }

LABEL_8:
  v9 = v7;

  return v9;
}

- (id)copyNetworksWithNetworkSignature:(__CFString *)signature ipv6NetworkSignature:(__CFString *)networkSignature
{
  if (!(signature | networkSignature))
  {
    sub_10013971C();
    v9 = 0;
    v10 = 0;
    deviceAnalyticsClient = 0;
    goto LABEL_8;
  }

  deviceAnalyticsClient = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!deviceAnalyticsClient)
  {
    sub_1001396B0();
LABEL_12:
    v9 = 0;
    v10 = 0;
    goto LABEL_8;
  }

  deviceAnalyticsClient = [WADeviceAnalytics_DHCPServerInfo dhcpServerInfoWithv4Signature:signature v6Signature:networkSignature];
  if (!deviceAnalyticsClient)
  {
    sub_100139630(signature, networkSignature);
    goto LABEL_12;
  }

  deviceAnalyticsClient2 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];
  v14 = 0;
  v9 = [deviceAnalyticsClient2 networksInLan:deviceAnalyticsClient withError:&v14];
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

- (id)copyLanForNetwork:(__CFString *)network isBSSID:(BOOL)d
{
  networkCopy = network;
  if (!network)
  {
    sub_1001397F4();
LABEL_13:
    v12 = 0;
    goto LABEL_10;
  }

  dCopy = d;
  deviceAnalyticsClient = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];

  if (!deviceAnalyticsClient)
  {
    sub_100139788();
    networkCopy = 0;
    goto LABEL_13;
  }

  deviceAnalyticsClient2 = [(WiFiAnalyticsManager *)self deviceAnalyticsClient];
  v9 = deviceAnalyticsClient2;
  if (dCopy)
  {
    v16 = 0;
    v10 = &v16;
    v11 = [deviceAnalyticsClient2 lanForBssid:networkCopy withError:&v16];
  }

  else
  {
    v15 = 0;
    v10 = &v15;
    v11 = [deviceAnalyticsClient2 lanForSsid:networkCopy withError:&v15];
  }

  networkCopy = v11;
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

  return networkCopy;
}

@end