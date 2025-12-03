@interface WAIOReporterMessagePopulator
+ (id)getIORPopAvailabeIOReportersTempFile;
+ (id)getTmpDir;
+ (id)getUnavailablePredTempFile;
+ (id)getUsageTempFile;
- (BOOL)_runIOLegendTest;
- (BOOL)doesMessageNeedPrepopulation:(id)prepopulation;
- (BOOL)runIOLegendTest;
- (WAIOReporterMessagePopulator)init;
- (WAIOReporterMessagePopulator)initWithCoder:(id)coder;
- (WAIOReporterPersistenceDelegate)persistenceDelegate;
- (WAIOReporterPopulatorMessageDelegate)messageDelegate;
- (id)_buildPredicateList:(int64_t)list wlan:(int64_t)wlan;
- (id)_createStructuredIOReportDictionary:(id)dictionary;
- (id)_getCachedUsage;
- (id)createChannelWithProviderID:(id)d providerName:(id)name legCh:(id)ch groupName:(id)groupName subgroupName:(id)subgroupName chinfo:(id)chinfo;
- (id)getCachedUsage;
- (id)getPerPeerPopulator;
- (unint64_t)_addDriverChannelsMatchingPredicateList:(int64_t)list;
- (unsigned)_getCCPipeDriverForWLAN;
- (unsigned)_getIOServiceWithForceRefresh:(BOOL)refresh apple80211:(id)apple80211;
- (unsigned)_iorPreparedForSampling:(unsigned __int8)sampling;
- (unsigned)doesChannelExistInStructuredDict:(id)dict providerName:(id)name legCh:(id)ch groupName:(id)groupName subgroupName:(id)subgroupName chinfo:(id)chinfo;
- (unsigned)doesDriverHaveChannelsInStructuredDict:(int64_t)dict containsStale:(char *)stale;
- (void)_buildOrRescanToBuildChannelAvailabilityCaches:(int64_t)caches;
- (void)_calculateEstimatedUptime;
- (void)_cancelDelayedInvocationForPersist;
- (void)_cancelDelayedInvocationForRescan;
- (void)_clearIOReporterCache;
- (void)_delayedInvocationForPersist;
- (void)_delayedInvocationForRescan;
- (void)_findChannelsAndBuildChannelCaches:(int64_t)caches;
- (void)_freeIORCaches;
- (void)_freeSubscriptionSample:(id)sample;
- (void)_handleUnpersistForUsageData;
- (void)_incrementPredicateCachedUsageWithPrefix:(id)prefix q:(id *)q;
- (void)_persistIORObjects:(unsigned __int8)objects;
- (void)_prepopulateMessage:(id)message forProcess:(id)process groupType:(int64_t)type andReply:(id)reply isResubscribe:(BOOL)resubscribe;
- (void)_removeIORChannelsPersistenceFiles;
- (void)_scanPredicatesWithMode:(int64_t)mode;
- (void)_signalPotentialNewIORChannels;
- (void)_unpersistIORObjects;
- (void)determineChannelsPerIORPopulatable;
- (void)determineChannelsPerIORPopulatableWithinPopulatorBlock;
- (void)encodeWithCoder:(id)coder;
- (void)freeIORCaches;
- (void)injectErrorOnNextCreateOrUpdateSample;
- (void)persistIORObjects:(unsigned __int8)objects;
- (void)prepopulateMessage:(id)message forProcess:(id)process groupType:(int64_t)type andReply:(id)reply;
- (void)prepopulateMessageWithinPopulatorBlock:(id)block forProcess:(id)process groupType:(int64_t)type andReply:(id)reply;
- (void)scanPredicatesNotYetFoundAndMutable;
- (void)signalPotentialNewIORChannels;
- (void)unpersistIORObjects;
- (void)updateListOfMonitoredPeers:(id)peers;
@end

@implementation WAIOReporterMessagePopulator

- (WAIOReporterMessagePopulator)init
{
  v16.receiver = self;
  v16.super_class = WAIOReporterMessagePopulator;
  v2 = [(WAIOReporterMessagePopulator *)&v16 init];
  if (v2)
  {
    if (qword_10010DD78 != -1)
    {
      dispatch_once(&qword_10010DD78, &stru_1000ED7C0);
    }

    if (qword_10010DD48 != -1)
    {
      dispatch_once(&qword_10010DD48, &stru_1000ED700);
    }

    if (qword_10010DD58 != -1)
    {
      dispatch_once(&qword_10010DD58, &stru_1000ED740);
    }

    if (qword_10010DD60 != -1)
    {
      dispatch_once(&qword_10010DD60, &stru_1000ED760);
    }

    if (qword_10010DD68 != -1)
    {
      dispatch_once(&qword_10010DD68, &stru_1000ED780);
    }

    if (qword_10010DD50 != -1)
    {
      dispatch_once(&qword_10010DD50, &stru_1000ED720);
    }

    if (qword_10010DD70 != -1)
    {
      dispatch_once(&qword_10010DD70, &stru_1000ED7A0);
    }

    v3 = objc_alloc_init(NSMutableArray);
    [(WAIOReporterMessagePopulator *)v2 setCachedPredicatesNotYetFound:v3];

    v4 = objc_alloc_init(NSMutableDictionary);
    [(WAIOReporterMessagePopulator *)v2 setCachedUsage:v4];

    v5 = [NSString stringWithFormat:@"dunno"];
    [(WAIOReporterMessagePopulator *)v2 setInfraInterfaceName:v5];

    v6 = +[RecommendationPreferences sharedObject];
    [(WAIOReporterMessagePopulator *)v2 setPreferences:v6];

    preferences = [(WAIOReporterMessagePopulator *)v2 preferences];

    if (preferences)
    {
      *&v2->_ioReportersCacheNeedsUpdating = 0;
      v2->_persistFileExistedAtPIDLoad = 0;
      v8 = +[NSProcessInfo processInfo];
      v2->_pid = [v8 processIdentifier];

      v9 = +[NSDate now];
      pidLaunchDate = v2->_pidLaunchDate;
      v2->_pidLaunchDate = v9;

      v2->_srv = 0;
      drvName = v2->_drvName;
      v2->_drvName = 0;

      providerNum = v2->_providerNum;
      v2->_providerNum = 0;

      v2->_wlanType = 0;
      p_super = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v14 = dispatch_queue_create("com.apple.wifi.analytics.IOReporterQ", p_super);
      [(WAIOReporterMessagePopulator *)v2 setQueue:v14];
    }

    else
    {
      v14 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v18 = "[WAIOReporterMessagePopulator init]";
        v19 = 1024;
        v20 = 411;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error RecommendationPreferences init", buf, 0x12u);
      }

      p_super = &v2->super;
      v2 = 0;
    }
  }

  else
  {
    p_super = 0;
  }

  return v2;
}

- (id)getPerPeerPopulator
{
  perPeerPop = [(WAIOReporterMessagePopulator *)self perPeerPop];

  if (!perPeerPop)
  {
    v4 = [_TtC14wifianalyticsd18WAPerPeerPopulator alloc];
    queue = [(WAIOReporterMessagePopulator *)self queue];
    v6 = [(WAPerPeerPopulator *)v4 initWithQueue:queue];
    [(WAIOReporterMessagePopulator *)self setPerPeerPop:v6];
  }

  return [(WAIOReporterMessagePopulator *)self perPeerPop];
}

- (unsigned)_getIOServiceWithForceRefresh:(BOOL)refresh apple80211:(id)apple80211
{
  apple80211Copy = apple80211;
  if (refresh || (srv = self->_srv) == 0)
  {
    [WAUtil incrementValueForKey:@"Fetch IOService Calls" inMutableDict:self->_cachedUsage onQueue:self->_queue];
    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446466;
      v11 = "[WAIOReporterMessagePopulator _getIOServiceWithForceRefresh:apple80211:]";
      v12 = 1024;
      v13 = 451;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Getting _srv", &v10, 0x12u);
    }

    srv = [apple80211Copy getIOReportingService];
    self->_srv = srv;
  }

  return srv;
}

- (unsigned)_getCCPipeDriverForWLAN
{
  *mainPort = 0;
  v2 = IOServiceNameMatching("CCPipe");
  if (!v2)
  {
    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v15 = "[WAIOReporterMessagePopulator _getCCPipeDriverForWLAN]";
      v16 = 1024;
      v17 = 467;
      v11 = "%{public}s::%d:IOServiceMatching failed";
LABEL_29:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, buf, 0x12u);
    }

LABEL_30:

LABEL_31:
    v4 = 0;
    goto LABEL_21;
  }

  v3 = v2;
  if (IOMainPort(0, &mainPort[1]))
  {
    v12 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v15 = "[WAIOReporterMessagePopulator _getCCPipeDriverForWLAN]";
      v16 = 1024;
      v17 = 470;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:IOMasterPort failed", buf, 0x12u);
    }

    CFRelease(v3);
    goto LABEL_31;
  }

  if (IOServiceGetMatchingServices(mainPort[1], v3, mainPort))
  {
    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v15 = "[WAIOReporterMessagePopulator _getCCPipeDriverForWLAN]";
      v16 = 1024;
      v17 = 473;
      v11 = "%{public}s::%d:IOServiceGetMatchingServices failed";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v4 = IOIteratorNext(mainPort[0]);
  if (v4)
  {
    while (1)
    {
      v5 = IORegistryEntrySearchCFProperty(v4, "IOService", @"LogIdentifier", kCFAllocatorDefault, 3u);
      v6 = CFGetTypeID(v5);
      if (v6 == CFStringGetTypeID() && CFStringCompare(v5, @"wlan0", 0) == kCFCompareEqualTo)
      {
        v8 = WALogCategoryDefaultHandle();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_20;
        }

        *buf = 136446722;
        v15 = "[WAIOReporterMessagePopulator _getCCPipeDriverForWLAN]";
        v16 = 1024;
        v17 = 482;
        v18 = 2112;
        v19 = v5;
        goto LABEL_19;
      }

      if (v5)
      {
        CFRelease(v5);
      }

      v5 = IORegistryEntrySearchCFProperty(v4, "IOService", @"Owner", kCFAllocatorDefault, 3u);
      v7 = CFGetTypeID(v5);
      if (v7 == CFStringGetTypeID() && CFStringCompare(v5, @"com.apple.driver.ACIWiFiDriver", 0) == kCFCompareEqualTo)
      {
        break;
      }

      if (v5)
      {
        CFRelease(v5);
      }

      v4 = IOIteratorNext(mainPort[0]);
      if (!v4)
      {
        goto LABEL_21;
      }
    }

    v8 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    *buf = 136446722;
    v15 = "[WAIOReporterMessagePopulator _getCCPipeDriverForWLAN]";
    v16 = 1024;
    v17 = 495;
    v18 = 2112;
    v19 = v5;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Found Match %@", buf, 0x1Cu);
LABEL_20:

    CFRelease(v5);
  }

LABEL_21:
  IOObjectRelease(mainPort[0]);
  return v4;
}

- (void)freeIORCaches
{
  objc_initWeak(&location, self);
  v3 = WALogCategoryDefaultHandle();
  v4 = os_signpost_id_generate(v3);

  v5 = WALogCategoryDefaultHandle();
  v6 = v5;
  if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "IOR freeIORCaches", "", buf, 2u);
  }

  queue = [(WAIOReporterMessagePopulator *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100022FA4;
  v8[3] = &unk_1000ED808;
  objc_copyWeak(v9, &location);
  v9[1] = v4;
  dispatch_sync(queue, v8);

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)_freeIORCaches
{
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[WAIOReporterMessagePopulator _freeIORCaches]";
    v8 = 1024;
    v9 = 528;
    v10 = 2080;
    v11 = "[WAIOReporterMessagePopulator _freeIORCaches]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s", &v6, 0x1Cu);
  }

  v4 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v4))
  {
    LOWORD(v6) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR _freeIORCaches", "", &v6, 2u);
  }

  [(WAIOReporterMessagePopulator *)self setCachedChannelsCountPerIORPopulatable:0];
  [(WAIOReporterMessagePopulator *)self setCachedIOPopAvailableChannels:0];
  [(WAIOReporterMessagePopulator *)self setCachedIOReportSubbedChannels:0];
  [(WAIOReporterMessagePopulator *)self setCachedIOReportSample:0];
  v5 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v6) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR _freeIORCaches", "", &v6, 2u);
  }
}

- (void)_freeSubscriptionSample:(id)sample
{
  sampleCopy = sample;
  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136446722;
    v27 = "[WAIOReporterMessagePopulator _freeSubscriptionSample:]";
    v28 = 1024;
    v29 = 541;
    v30 = 2112;
    v31 = sampleCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Clearing cachedIOReportSubbedChannels and cachedIOReportSample for %@", &v26, 0x1Cu);
  }

  v6 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v6))
  {
    LOWORD(v26) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR _freeSubscriptionSample", "", &v26, 2u);
  }

  cachedIOReportSubbedChannels = [(WAIOReporterMessagePopulator *)self cachedIOReportSubbedChannels];
  v8 = [cachedIOReportSubbedChannels objectForKeyedSubscript:sampleCopy];
  v9 = [v8 objectForKeyedSubscript:@"iorsub"];

  if (v9)
  {
    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136446722;
      v27 = "[WAIOReporterMessagePopulator _freeSubscriptionSample:]";
      v28 = 1024;
      v29 = 545;
      v30 = 2112;
      v31 = sampleCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Freeing cachedIOReportSubbedChannels iorsub for %@", &v26, 0x1Cu);
    }

    cachedIOReportSubbedChannels2 = [(WAIOReporterMessagePopulator *)self cachedIOReportSubbedChannels];
    v12 = [cachedIOReportSubbedChannels2 objectForKeyedSubscript:sampleCopy];
    [v12 setObject:0 forKeyedSubscript:@"iorsub"];
  }

  cachedIOReportSample = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
  v14 = [cachedIOReportSample objectForKeyedSubscript:sampleCopy];
  v15 = [v14 objectForKeyedSubscript:@"sampleValues"];

  if (v15)
  {
    v16 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136446722;
      v27 = "[WAIOReporterMessagePopulator _freeSubscriptionSample:]";
      v28 = 1024;
      v29 = 550;
      v30 = 2112;
      v31 = sampleCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Freeing cachedIOReportSample sampleValues for %@", &v26, 0x1Cu);
    }

    cachedIOReportSample2 = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
    v18 = [cachedIOReportSample2 objectForKeyedSubscript:sampleCopy];
    [v18 setObject:0 forKeyedSubscript:@"sampleValues"];
  }

  cachedIOReportSample3 = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
  v20 = [cachedIOReportSample3 objectForKeyedSubscript:sampleCopy];
  v21 = [v20 objectForKeyedSubscript:@"structuredDict"];

  if (v21)
  {
    v22 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136446722;
      v27 = "[WAIOReporterMessagePopulator _freeSubscriptionSample:]";
      v28 = 1024;
      v29 = 555;
      v30 = 2112;
      v31 = sampleCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Freeing cachedIOReportSample structuredDict for %@", &v26, 0x1Cu);
    }

    cachedIOReportSample4 = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
    v24 = [cachedIOReportSample4 objectForKeyedSubscript:sampleCopy];
    [v24 setObject:0 forKeyedSubscript:@"structuredDict"];
  }

  v25 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v25))
  {
    LOWORD(v26) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR _freeSubscriptionSample", "", &v26, 2u);
  }
}

- (BOOL)runIOLegendTest
{
  objc_initWeak(&location, self);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = [(WAIOReporterMessagePopulator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023754;
  block[3] = &unk_1000ED830;
  objc_copyWeak(&v6, &location);
  block[4] = &v7;
  dispatch_sync(queue, block);

  LOBYTE(queue) = *(v8 + 24);
  objc_destroyWeak(&v6);
  _Block_object_dispose(&v7, 8);
  objc_destroyWeak(&location);
  return queue;
}

- (BOOL)_runIOLegendTest
{
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v31 = "[WAIOReporterMessagePopulator _runIOLegendTest]";
    v32 = 1024;
    v33 = 580;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:runIOLegendTest starting", buf, 0x12u);
  }

  if (!self->_hasAttemptedUnpersisting)
  {
    [(WAIOReporterMessagePopulator *)self _unpersistIORObjects];
  }

  v4 = +[WAApple80211Manager sharedObject];
  getInfraApple80211 = [v4 getInfraApple80211];

  if (getInfraApple80211)
  {
    v6 = v26;
    *&v26 = @"Interface en";

    v7 = *(&v26 + 1);
    *(&v26 + 1) = @"Peer";

    v8 = v27;
    *&v27 = @"00:00:00:00:00:00";

    v9 = *(&v28 + 1);
    *(&v28 + 1) = @"DataPath";

    context = objc_autoreleasePoolPush();
    v25 = 0;
    [WAUtil incrementValueForKey:@"Legend Query Calls" inMutableDict:self->_cachedUsage onQueue:self->_queue];
    v10 = [getInfraApple80211 getIOReportLegendItemsMatching:&v26 retErr:&v25];
    if (v25 == 1)
    {
      [WAUtil incrementValueForKey:@"Legend Query Failed" inMutableDict:self->_cachedUsage onQueue:self->_queue];
      [(WAIOReporterMessagePopulator *)self _incrementPredicateCachedUsageWithPrefix:@"Failed Pred: " q:&v26];
      v11 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v31 = "[WAIOReporterMessagePopulator _runIOLegendTest]";
        v32 = 1024;
        v33 = 604;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:legendFetchError with getIOReportLegendItemsMatching", buf, 0x12u);
      }
    }

    if (![v10 count])
    {
      [(WAIOReporterMessagePopulator *)self _incrementPredicateCachedUsageWithPrefix:@"Zero Results Pred: " q:&v26];
    }

    v23 = [v10 count];
    if (v23)
    {
      v12 = 100;
      do
      {
        v13 = WALogCategoryDefaultHandle();
        if (os_signpost_enabled(v13))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR getIOReportLegendItemsMatching", "", buf, 2u);
        }

        [WAUtil incrementValueForKey:@"Legend Query Calls" inMutableDict:self->_cachedUsage onQueue:self->_queue];
        v14 = [getInfraApple80211 getIOReportLegendItemsMatching:&v26 retErr:&v25];

        if (v25 == 1)
        {
          [WAUtil incrementValueForKey:@"Legend Query Failed" inMutableDict:self->_cachedUsage onQueue:self->_queue];
          [(WAIOReporterMessagePopulator *)self _incrementPredicateCachedUsageWithPrefix:@"Failed Pred: " q:&v26];
          v15 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v31 = "[WAIOReporterMessagePopulator _runIOLegendTest]";
            v32 = 1024;
            v33 = 621;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:legendFetchError with getIOReportLegendItemsMatching", buf, 0x12u);
          }
        }

        if (![v14 count])
        {
          [(WAIOReporterMessagePopulator *)self _incrementPredicateCachedUsageWithPrefix:@"Zero Results Pred: " q:&v26];
          v16 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v31 = "[WAIOReporterMessagePopulator _runIOLegendTest]";
            v32 = 1024;
            v33 = 626;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find requests from query", buf, 0x12u);
          }
        }

        v17 = WALogCategoryDefaultHandle();
        if (os_signpost_enabled(v17))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR getIOReportLegendItemsMatching", "", buf, 2u);
        }

        v10 = v14;
        --v12;
      }

      while (v12);
    }

    else
    {
      v22 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v31 = "[WAIOReporterMessagePopulator _runIOLegendTest]";
        v32 = 1024;
        v33 = 609;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}s::%d:getIOReportLegendItemsMatching returned 0 size", buf, 0x12u);
      }

      v14 = v10;
    }

    objc_autoreleasePoolPop(context);
    if (v23)
    {
      v18 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v31 = "[WAIOReporterMessagePopulator _runIOLegendTest]";
        v32 = 1024;
        v33 = 635;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:runIOLegendTest complete: success", buf, 0x12u);
      }

      v19 = 1;
      goto LABEL_37;
    }
  }

  else
  {
    v20 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v31 = "[WAIOReporterMessagePopulator _runIOLegendTest]";
      v32 = 1024;
      v33 = 587;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d:invalid apple80211API", buf, 0x12u);
    }
  }

  v18 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v31 = "[WAIOReporterMessagePopulator _runIOLegendTest]";
    v32 = 1024;
    v33 = 639;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:runIOLegendTest failed", buf, 0x12u);
  }

  v19 = 0;
LABEL_37:

  sub_100023E34(&v26);
  return v19;
}

- (unsigned)doesChannelExistInStructuredDict:(id)dict providerName:(id)name legCh:(id)ch groupName:(id)groupName subgroupName:(id)subgroupName chinfo:(id)chinfo
{
  nameCopy = name;
  chCopy = ch;
  groupNameCopy = groupName;
  subgroupNameCopy = subgroupName;
  cachedIOReportSample = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
  v17 = [cachedIOReportSample objectForKeyedSubscript:&off_100102D40];
  v18 = [v17 objectForKeyedSubscript:@"structuredDict"];

  v19 = [v18 objectForKeyedSubscript:nameCopy];

  if (!v19)
  {
    goto LABEL_16;
  }

  v20 = [v18 objectForKeyedSubscript:nameCopy];
  v21 = [v20 objectForKeyedSubscript:groupNameCopy];

  if (!v21)
  {
    v19 = 0;
    goto LABEL_17;
  }

  v22 = [v18 objectForKeyedSubscript:nameCopy];
  v23 = [v22 objectForKeyedSubscript:groupNameCopy];
  v24 = [v23 objectForKeyedSubscript:subgroupNameCopy];

  if (!v24)
  {
    goto LABEL_15;
  }

  if ([chCopy count] <= 1)
  {
    v33 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v38 = "[WAIOReporterMessagePopulator doesChannelExistInStructuredDict:providerName:legCh:groupName:subgroupName:chinfo:]";
      v39 = 1024;
      v40 = 663;
      v34 = "%{public}s::%d:legCh is not >= 2";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v34, buf, 0x12u);
    }

LABEL_14:

LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  v25 = [chCopy objectAtIndex:2];
  if (!v25)
  {
    v33 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v38 = "[WAIOReporterMessagePopulator doesChannelExistInStructuredDict:providerName:legCh:groupName:subgroupName:chinfo:]";
      v39 = 1024;
      v40 = 665;
      v34 = "%{public}s::%d:chName not valid";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v19 = v25;
  v26 = [v18 objectForKeyedSubscript:nameCopy];
  v27 = [v26 objectForKeyedSubscript:groupNameCopy];
  v28 = [v27 objectForKeyedSubscript:subgroupNameCopy];
  v29 = [v28 objectForKeyedSubscript:v19];

  if (!v29)
  {
LABEL_16:
    LOBYTE(v21) = 0;
    goto LABEL_17;
  }

  v30 = [chCopy objectAtIndex:0];
  unsignedLongLongValue = [v30 unsignedLongLongValue];

  v21 = [v18 objectForKeyedSubscript:nameCopy];
  v31 = [v21 objectForKeyedSubscript:groupNameCopy];
  v32 = [v31 objectForKeyedSubscript:subgroupNameCopy];
  [v32 objectForKeyedSubscript:v19];

  LOBYTE(v21) = unsignedLongLongValue == IOReportChannelGetChannelID();
LABEL_17:

  return v21;
}

- (unsigned)doesDriverHaveChannelsInStructuredDict:(int64_t)dict containsStale:(char *)stale
{
  entryID = 0;
  *stale = 0;
  cachedIOReportSample = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
  if (!cachedIOReportSample)
  {
    return cachedIOReportSample;
  }

  v7 = cachedIOReportSample;
  cachedIOReportSample2 = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
  v9 = [cachedIOReportSample2 objectForKeyedSubscript:&off_100102D40];
  if (!v9)
  {

    goto LABEL_9;
  }

  v10 = v9;
  cachedIOReportSample3 = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
  v12 = [cachedIOReportSample3 objectForKeyedSubscript:&off_100102D40];
  v13 = [v12 objectForKeyedSubscript:@"structuredDict"];

  if (!v13)
  {
    goto LABEL_52;
  }

  memset(name, 0, sizeof(name));
  cachedIOReportSample4 = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
  v15 = [cachedIOReportSample4 objectForKeyedSubscript:&off_100102D40];
  v7 = [v15 objectForKeyedSubscript:@"structuredDict"];

  if (dict != 1)
  {
    if (dict)
    {
      getInfraApple80211 = 0;
      goto LABEL_35;
    }

    v16 = +[WAApple80211Manager sharedObject];
    getInfraApple80211 = [v16 getInfraApple80211];

    if (getInfraApple80211)
    {
      getIOReportingService = [getInfraApple80211 getIOReportingService];
      goto LABEL_11;
    }

    v41 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v53 = "[WAIOReporterMessagePopulator doesDriverHaveChannelsInStructuredDict:containsStale:]";
      v54 = 1024;
      v55 = 706;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}s::%d:invalid apple80211API", buf, 0x12u);
    }

LABEL_9:
    goto LABEL_52;
  }

  getIOReportingService = [(WAIOReporterMessagePopulator *)self _getCCPipeDriverForWLAN];
  getInfraApple80211 = 0;
LABEL_11:
  if (!getIOReportingService)
  {
LABEL_35:
    v37 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
LABEL_38:

      goto LABEL_52;
    }

    *buf = 136446722;
    v53 = "[WAIOReporterMessagePopulator doesDriverHaveChannelsInStructuredDict:containsStale:]";
    v54 = 1024;
    v55 = 716;
    v56 = 2048;
    dictCopy3 = dict;
    v38 = "%{public}s::%d:Can't find io_service_t for driver %ld";
LABEL_37:
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, v38, buf, 0x1Cu);
    goto LABEL_38;
  }

  if (IORegistryEntryGetRegistryEntryID(getIOReportingService, &entryID))
  {
    v37 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 136446722;
    v53 = "[WAIOReporterMessagePopulator doesDriverHaveChannelsInStructuredDict:containsStale:]";
    v54 = 1024;
    v55 = 718;
    v56 = 2048;
    dictCopy3 = dict;
    v38 = "%{public}s::%d:Can't call IORegistryEntryGetRegistryEntryID on driver %ld";
    goto LABEL_37;
  }

  if (IORegistryEntryGetName(getIOReportingService, name))
  {
    v37 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 136446722;
    v53 = "[WAIOReporterMessagePopulator doesDriverHaveChannelsInStructuredDict:containsStale:]";
    v54 = 1024;
    v55 = 720;
    v56 = 2048;
    dictCopy3 = dict;
    v38 = "%{public}s::%d:Can't call IORegistryEntryGetName on driver %ld";
    goto LABEL_37;
  }

  v43 = getInfraApple80211;
  v46 = [NSString stringWithCString:name encoding:4];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [v7 allKeys];
  v19 = [obj countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (!v19)
  {
    goto LABEL_51;
  }

  v20 = v19;
  v21 = *v48;
  while (2)
  {
    for (i = 0; i != v20; i = i + 1)
    {
      if (*v48 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v47 + 1) + 8 * i);
      v24 = [v7 objectForKeyedSubscript:v23];

      if (!v24)
      {
        nextObject = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(nextObject, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v53 = "[WAIOReporterMessagePopulator doesDriverHaveChannelsInStructuredDict:containsStale:]";
          v54 = 1024;
          v55 = 730;
          v56 = 2112;
          dictCopy3 = v23;
          v39 = "%{public}s::%d:Issue strDict[foundDriver] %@ doesnt have value";
          goto LABEL_43;
        }

LABEL_50:

        goto LABEL_51;
      }

      if ([v23 containsString:v46])
      {
        v25 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446978;
          v53 = "[WAIOReporterMessagePopulator doesDriverHaveChannelsInStructuredDict:containsStale:]";
          v54 = 1024;
          v55 = 733;
          v56 = 2112;
          dictCopy3 = v46;
          v58 = 2112;
          v59 = v23;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found matching driver name %@ in dict as %@", buf, 0x26u);
        }

        *stale = 1;
      }

      v26 = [v7 objectForKeyedSubscript:v23];
      objectEnumerator = [v26 objectEnumerator];
      nextObject = [objectEnumerator nextObject];

      if (!nextObject)
      {
        nextObject = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(nextObject, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v53 = "[WAIOReporterMessagePopulator doesDriverHaveChannelsInStructuredDict:containsStale:]";
          v54 = 1024;
          v55 = 738;
          v56 = 2112;
          dictCopy3 = v23;
          v39 = "%{public}s::%d:Issue firstGroup %@ doesnt have value";
LABEL_43:
          _os_log_impl(&_mh_execute_header, nextObject, OS_LOG_TYPE_ERROR, v39, buf, 0x1Cu);
        }

        goto LABEL_50;
      }

      objectEnumerator2 = [nextObject objectEnumerator];
      nextObject2 = [objectEnumerator2 nextObject];

      if (!nextObject2)
      {
        nextObject2 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(nextObject2, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v53 = "[WAIOReporterMessagePopulator doesDriverHaveChannelsInStructuredDict:containsStale:]";
          v54 = 1024;
          v55 = 741;
          v56 = 2112;
          dictCopy3 = 0;
          _os_log_impl(&_mh_execute_header, nextObject2, OS_LOG_TYPE_ERROR, "%{public}s::%d:Issue firstSubGroup %@ doesnt have value", buf, 0x1Cu);
        }

        goto LABEL_49;
      }

      objectEnumerator3 = [nextObject2 objectEnumerator];
      nextObject3 = [objectEnumerator3 nextObject];

      if (!nextObject3)
      {
        v40 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v53 = "[WAIOReporterMessagePopulator doesDriverHaveChannelsInStructuredDict:containsStale:]";
          v54 = 1024;
          v55 = 744;
          v56 = 2112;
          dictCopy3 = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}s::%d:Issue firstChannel %@ doesnt have value", buf, 0x1Cu);
        }

LABEL_49:
        goto LABEL_50;
      }

      v33 = [nextObject3 objectForKeyedSubscript:@"DriverID"];
      unsignedLongLongValue = [v33 unsignedLongLongValue];
      v35 = entryID;

      if (unsignedLongLongValue == v35)
      {
        v36 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          v53 = "[WAIOReporterMessagePopulator doesDriverHaveChannelsInStructuredDict:containsStale:]";
          v54 = 1024;
          v55 = 747;
          v56 = 2112;
          dictCopy3 = nextObject3;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Found matching firstChannel %@ with matching drvID", buf, 0x1Cu);
        }

        *stale = 0;
        LOBYTE(cachedIOReportSample) = 1;
        return cachedIOReportSample;
      }
    }

    v20 = [obj countByEnumeratingWithState:&v47 objects:v60 count:16];
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_51:

LABEL_52:
  LOBYTE(cachedIOReportSample) = 0;
  return cachedIOReportSample;
}

- (id)createChannelWithProviderID:(id)d providerName:(id)name legCh:(id)ch groupName:(id)groupName subgroupName:(id)subgroupName chinfo:(id)chinfo
{
  dCopy = d;
  nameCopy = name;
  chCopy = ch;
  groupNameCopy = groupName;
  subgroupNameCopy = subgroupName;
  chinfoCopy = chinfo;
  if ([chCopy count] <= 1)
  {
    v24 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = 136446466;
      v27 = "[WAIOReporterMessagePopulator createChannelWithProviderID:providerName:legCh:groupName:subgroupName:chinfo:]";
      v28 = 1024;
      v29 = 765;
      v25 = "%{public}s::%d:legCh is not >= 2";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v25, &v26, 0x12u);
    }
  }

  else
  {
    v19 = objc_alloc_init(NSMutableDictionary);
    if (v19)
    {
      v20 = v19;
      [v19 setObject:dCopy forKeyedSubscript:@"DriverID"];
      [v20 setObject:nameCopy forKeyedSubscript:@"DriverName"];
      [v20 setObject:chCopy forKeyedSubscript:@"LegendChannel"];
      if (groupNameCopy)
      {
        [v20 setObject:groupNameCopy forKeyedSubscript:@"IOReportGroupName"];
      }

      if (subgroupNameCopy)
      {
        [v20 setObject:subgroupNameCopy forKeyedSubscript:@"IOReportSubGroupName"];
      }

      if (chinfoCopy)
      {
        [v20 setObject:chinfoCopy forKeyedSubscript:@"IOReportChannelInfo"];
      }

      v21 = v20;
      v22 = v21;
      goto LABEL_10;
    }

    v24 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = 136446466;
      v27 = "[WAIOReporterMessagePopulator createChannelWithProviderID:providerName:legCh:groupName:subgroupName:chinfo:]";
      v28 = 1024;
      v29 = 768;
      v25 = "%{public}s::%d:failed to alloc newch";
      goto LABEL_17;
    }
  }

  v21 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v26 = 136446466;
    v27 = "[WAIOReporterMessagePopulator createChannelWithProviderID:providerName:legCh:groupName:subgroupName:chinfo:]";
    v28 = 1024;
    v29 = 792;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to create IOReportChannelRef", &v26, 0x12u);
  }

  v22 = 0;
LABEL_10:

  return v22;
}

- (void)_incrementPredicateCachedUsageWithPrefix:(id)prefix q:(id *)q
{
  var7 = &stru_1000F04E0;
  var0 = q->var0;
  var1 = q->var1;
  if (!q->var0)
  {
    var0 = &stru_1000F04E0;
  }

  if (!var1)
  {
    var1 = &stru_1000F04E0;
  }

  var2 = q->var2;
  var3 = q->var3;
  if (!var2)
  {
    var2 = &stru_1000F04E0;
  }

  if (!var3)
  {
    var3 = &stru_1000F04E0;
  }

  var4 = q->var4;
  var5 = q->var5;
  if (!var4)
  {
    var4 = &stru_1000F04E0;
  }

  if (!var5)
  {
    var5 = &stru_1000F04E0;
  }

  var6 = q->var6;
  if (!var6)
  {
    var6 = &stru_1000F04E0;
  }

  if (q->var7)
  {
    var7 = q->var7;
  }

  var7 = [NSString stringWithFormat:@"%@ G: %@, %@, %@, %@ g: %@, %@, %@, %@", prefix, var0, var1, var2, var3, var4, var5, var6, var7];
  [WAUtil incrementValueForKey:var7 inMutableDict:self->_cachedUsage onQueue:self->_queue];
}

- (id)_buildPredicateList:(int64_t)list wlan:(int64_t)wlan
{
  v6 = 0;
  if (list > 1)
  {
    if (list == 2)
    {
      v6 = [(NSMutableArray *)self->_cachedPredicatesNotYetFound copy];
      goto LABEL_151;
    }

    if (list != 3)
    {
      goto LABEL_151;
    }

    v6 = objc_alloc_init(NSMutableArray);
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v21 = qword_10010DD20;
    v22 = [v21 countByEnumeratingWithState:&v97 objects:v140 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v98;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v98 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v97 + 1) + 8 * i);
          v27 = [v26 objectForKeyedSubscript:@"mutates"];

          if (v27)
          {
            [v6 addObject:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v97 objects:v140 count:16];
      }

      while (v23);
    }

    switch(wlan)
    {
      case 1:
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v28 = qword_10010DD30;
        v61 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v89 objects:v138 count:16];
        if (v61)
        {
          v62 = v61;
          v63 = *v90;
          do
          {
            for (j = 0; j != v62; j = j + 1)
            {
              if (*v90 != v63)
              {
                objc_enumerationMutation(v28);
              }

              v65 = *(*(&v89 + 1) + 8 * j);
              v66 = [v65 objectForKeyedSubscript:@"mutates"];

              if (v66)
              {
                [v6 addObject:v65];
              }
            }

            v62 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v89 objects:v138 count:16];
          }

          while (v62);
        }

        goto LABEL_150;
      case 4:
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v28 = qword_10010DD40;
        v49 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v85 objects:v137 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v86;
          do
          {
            for (k = 0; k != v50; k = k + 1)
            {
              if (*v86 != v51)
              {
                objc_enumerationMutation(v28);
              }

              v53 = *(*(&v85 + 1) + 8 * k);
              v54 = [v53 objectForKeyedSubscript:{@"mutates", v85}];

              if (v54)
              {
                [v6 addObject:v53];
              }
            }

            v50 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v85 objects:v137 count:16];
          }

          while (v50);
        }

        goto LABEL_150;
      case 2:
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v28 = qword_10010DD28;
        v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v93 objects:v139 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v94;
          do
          {
            for (m = 0; m != v30; m = m + 1)
            {
              if (*v94 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v93 + 1) + 8 * m);
              v34 = [v33 objectForKeyedSubscript:@"mutates"];

              if (v34)
              {
                [v6 addObject:v33];
              }
            }

            v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v93 objects:v139 count:16];
          }

          while (v30);
        }

        goto LABEL_150;
    }

    v73 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v147 = "[WAIOReporterMessagePopulator _buildPredicateList:wlan:]";
      v148 = 1024;
      v149 = 942;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unknown and unhandled WAWiFiDriverType when handling kWAIORIOReporterSearchMutablePredicates", buf, 0x12u);
    }

    v28 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(&v28->super.super, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_150;
    }

    *buf = 0;
    v74 = "Unknown and unhandled WAWiFiDriverType when handling kWAIORIOReporterSearchMutablePredicates";
  }

  else
  {
    if (list)
    {
      if (list != 1)
      {
        goto LABEL_151;
      }

      v6 = objc_alloc_init(NSMutableArray);
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v7 = qword_10010DD20;
      v8 = [v7 countByEnumeratingWithState:&v117 objects:v145 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v118;
        do
        {
          for (n = 0; n != v9; n = n + 1)
          {
            if (*v118 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v117 + 1) + 8 * n);
            v13 = [v12 objectForKeyedSubscript:@"mutates"];

            if (v13)
            {
              [v6 addObject:v12];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v117 objects:v145 count:16];
        }

        while (v9);
      }

      switch(wlan)
      {
        case 1:
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v14 = qword_10010DD30;
          v55 = [v14 countByEnumeratingWithState:&v109 objects:v143 count:16];
          if (v55)
          {
            v56 = v55;
            v57 = *v110;
            do
            {
              for (ii = 0; ii != v56; ii = ii + 1)
              {
                if (*v110 != v57)
                {
                  objc_enumerationMutation(v14);
                }

                v59 = *(*(&v109 + 1) + 8 * ii);
                v60 = [v59 objectForKeyedSubscript:@"mutates"];

                if (v60)
                {
                  [v6 addObject:v59];
                }
              }

              v56 = [v14 countByEnumeratingWithState:&v109 objects:v143 count:16];
            }

            while (v56);
          }

          break;
        case 4:
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v14 = qword_10010DD40;
          v43 = [v14 countByEnumeratingWithState:&v105 objects:v142 count:16];
          if (v43)
          {
            v44 = v43;
            v45 = *v106;
            do
            {
              for (jj = 0; jj != v44; jj = jj + 1)
              {
                if (*v106 != v45)
                {
                  objc_enumerationMutation(v14);
                }

                v47 = *(*(&v105 + 1) + 8 * jj);
                v48 = [v47 objectForKeyedSubscript:@"mutates"];

                if (v48)
                {
                  [v6 addObject:v47];
                }
              }

              v44 = [v14 countByEnumeratingWithState:&v105 objects:v142 count:16];
            }

            while (v44);
          }

          break;
        case 2:
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v14 = qword_10010DD28;
          v15 = [v14 countByEnumeratingWithState:&v113 objects:v144 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v114;
            do
            {
              for (kk = 0; kk != v16; kk = kk + 1)
              {
                if (*v114 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v113 + 1) + 8 * kk);
                v20 = [v19 objectForKeyedSubscript:@"mutates"];

                if (v20)
                {
                  [v6 addObject:v19];
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v113 objects:v144 count:16];
            }

            while (v16);
          }

          break;
        default:
          v67 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v147 = "[WAIOReporterMessagePopulator _buildPredicateList:wlan:]";
            v148 = 1024;
            v149 = 888;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unknown and unhandled WAWiFiDriverType when handling kWAIORIOReporterSearchUnfoundAndMutablePredicates", buf, 0x12u);
          }

          v14 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Unknown and unhandled WAWiFiDriverType when handling kWAIORIOReporterSearchUnfoundAndMutablePredicates", buf, 2u);
          }

          break;
      }

      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v28 = self->_cachedPredicatesNotYetFound;
      v68 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v101 objects:v141 count:16];
      if (v68)
      {
        v69 = v68;
        v70 = *v102;
        do
        {
          for (mm = 0; mm != v69; mm = mm + 1)
          {
            if (*v102 != v70)
            {
              objc_enumerationMutation(v28);
            }

            v72 = *(*(&v101 + 1) + 8 * mm);
            if (([v6 containsObject:v72] & 1) == 0)
            {
              [v6 addObject:v72];
            }
          }

          v69 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v101 objects:v141 count:16];
        }

        while (v69);
      }

      goto LABEL_150;
    }

    v6 = [qword_10010DD20 mutableCopy];
    if (wlan > 2)
    {
      if (wlan == 3)
      {
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v28 = qword_10010DD38;
        v80 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v121 objects:v150 count:16];
        if (v80)
        {
          v81 = v80;
          v82 = *v122;
          do
          {
            for (nn = 0; nn != v81; nn = nn + 1)
            {
              if (*v122 != v82)
              {
                objc_enumerationMutation(v28);
              }

              [v6 addObject:*(*(&v121 + 1) + 8 * nn)];
            }

            v81 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v121 objects:v150 count:16];
          }

          while (v81);
        }

        goto LABEL_150;
      }

      if (wlan == 4)
      {
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v28 = qword_10010DD40;
        v39 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v125 objects:v151 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v126;
          do
          {
            for (i1 = 0; i1 != v40; i1 = i1 + 1)
            {
              if (*v126 != v41)
              {
                objc_enumerationMutation(v28);
              }

              [v6 addObject:*(*(&v125 + 1) + 8 * i1)];
            }

            v40 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v125 objects:v151 count:16];
          }

          while (v40);
        }

        goto LABEL_150;
      }
    }

    else
    {
      if (wlan == 1)
      {
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v28 = qword_10010DD30;
        v76 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v129 objects:v152 count:16];
        if (v76)
        {
          v77 = v76;
          v78 = *v130;
          do
          {
            for (i2 = 0; i2 != v77; i2 = i2 + 1)
            {
              if (*v130 != v78)
              {
                objc_enumerationMutation(v28);
              }

              [v6 addObject:*(*(&v129 + 1) + 8 * i2)];
            }

            v77 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v129 objects:v152 count:16];
          }

          while (v77);
        }

        goto LABEL_150;
      }

      if (wlan == 2)
      {
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v28 = qword_10010DD28;
        v35 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v133 objects:v153 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v134;
          do
          {
            for (i3 = 0; i3 != v36; i3 = i3 + 1)
            {
              if (*v134 != v37)
              {
                objc_enumerationMutation(v28);
              }

              [v6 addObject:*(*(&v133 + 1) + 8 * i3)];
            }

            v36 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v133 objects:v153 count:16];
          }

          while (v36);
        }

        goto LABEL_150;
      }
    }

    v75 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v147 = "[WAIOReporterMessagePopulator _buildPredicateList:wlan:]";
      v148 = 1024;
      v149 = 844;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unknown and unhandled WAWiFiDriverType when handling kWAIORIOReporterSearchAllStaticPredicates", buf, 0x12u);
    }

    v28 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(&v28->super.super, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_150;
    }

    *buf = 0;
    v74 = "Unknown and unhandled WAWiFiDriverType when handling kWAIORIOReporterSearchAllStaticPredicates";
  }

  _os_log_fault_impl(&_mh_execute_header, &v28->super.super, OS_LOG_TYPE_FAULT, v74, buf, 2u);
LABEL_150:

LABEL_151:

  return v6;
}

- (unint64_t)_addDriverChannelsMatchingPredicateList:(int64_t)list
{
  entryID = 0;
  v3 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v3))
  {
    *buf = 134217984;
    *&buf[4] = list;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR addDriverChannelsMatchingPredicateList", "Mode %ld", buf, 0xCu);
  }

  v4 = +[WAApple80211Manager sharedObject];
  getInfraApple80211 = [v4 getInfraApple80211];

  if (!getInfraApple80211)
  {
    v11 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_163;
    }

    *buf = 136446466;
    *&buf[4] = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
    *&buf[12] = 1024;
    *&buf[14] = 966;
    v116 = "%{public}s::%d:invalid apple80211API";
LABEL_161:
    v117 = v11;
    v118 = 18;
LABEL_162:
    _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_ERROR, v116, buf, v118);
    goto LABEL_163;
  }

  selfCopy2 = self;
  if (self->_srv && self->_drvName && self->_providerNum && self->_drvPath && self->_wlanType)
  {
    goto LABEL_25;
  }

  v6 = [(WAIOReporterMessagePopulator *)self _getIOServiceWithForceRefresh:0 apple80211:getInfraApple80211];
  self->_srv = v6;
  if (!v6)
  {
    v11 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_163;
    }

    *buf = 136446466;
    *&buf[4] = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
    *&buf[12] = 1024;
    *&buf[14] = 973;
    v116 = "%{public}s::%d:Failed to retrieve io_service_t of driver";
    goto LABEL_161;
  }

  if (!IORegistryEntryGetRegistryEntryID(v6, &entryID))
  {
    goto LABEL_17;
  }

  v7 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    srv = self->_srv;
    *buf = 136446978;
    *&buf[4] = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
    *&buf[12] = 1024;
    *&buf[14] = 976;
    *&buf[18] = 2048;
    *&buf[20] = entryID;
    *&buf[28] = 1024;
    *&buf[30] = srv;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to convert IORegistryEntryGetRegistryEntryID %llx _srv was %d", buf, 0x22u);
  }

  v9 = [(WAIOReporterMessagePopulator *)self _getIOServiceWithForceRefresh:1 apple80211:getInfraApple80211];
  self->_srv = v9;
  v10 = WALogCategoryDefaultHandle();
  v11 = v10;
  if (!v9)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_163;
    }

    *buf = 136446466;
    *&buf[4] = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
    *&buf[12] = 1024;
    *&buf[14] = 980;
    v116 = "%{public}s::%d:Failed to find io_service_t";
    goto LABEL_161;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_srv;
    *buf = 136446722;
    *&buf[4] = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
    *&buf[12] = 1024;
    *&buf[14] = 982;
    *&buf[18] = 1024;
    *&buf[20] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found new io_service_t _srv is now %d", buf, 0x18u);
  }

  if (!IORegistryEntryGetRegistryEntryID(self->_srv, &entryID))
  {
LABEL_17:
    getIOReportingDriverName = [getInfraApple80211 getIOReportingDriverName];
    drvName = self->_drvName;
    self->_drvName = getIOReportingDriverName;

    if (self->_drvName)
    {
      v15 = [NSNumber alloc];
      v16 = [v15 initWithLongLong:entryID];
      providerNum = self->_providerNum;
      self->_providerNum = v16;

      if (self->_providerNum)
      {
        getIOReportingClassPath = [getInfraApple80211 getIOReportingClassPath];
        drvPath = self->_drvPath;
        self->_drvPath = getIOReportingClassPath;

        if (self->_drvPath)
        {
          getDriverType = [getInfraApple80211 getDriverType];
          selfCopy2 = self;
          self->_wlanType = getDriverType;
          if (getDriverType)
          {
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_10002258C;
            *&buf[24] = &unk_1000ED7E0;
            *&buf[32] = getDriverType;
            if (qword_10010DD10 != -1)
            {
              dispatch_once(&qword_10010DD10, buf);
            }

            if (!self->_drvName || !self->_providerNum)
            {
LABEL_143:
              v11 = WALogCategoryDefaultHandle();
              if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_163;
              }

              v112 = selfCopy2->_drvName == 0;
              wlanType = selfCopy2->_wlanType;
              v114 = selfCopy2->_providerNum == 0;
              v115 = selfCopy2->_drvPath == 0;
              *buf = 136447490;
              *&buf[4] = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
              *&buf[12] = 1024;
              *&buf[14] = 1001;
              *&buf[18] = 1024;
              *&buf[20] = v112;
              *&buf[24] = 1024;
              *&buf[26] = v114;
              *&buf[30] = 1024;
              *&buf[32] = v115;
              *&buf[36] = 2048;
              *&buf[38] = wlanType;
              v116 = "%{public}s::%d:Invalid drvName %d and providerNum %d and drvPath %d _wlanType %ld";
              v117 = v11;
              v118 = 46;
              goto LABEL_162;
            }

LABEL_25:
            if (selfCopy2->_drvPath && selfCopy2->_wlanType)
            {
              [(WAIOReporterMessagePopulator *)selfCopy2 _buildPredicateList:list wlan:?];
              v157 = 0u;
              v158 = 0u;
              v155 = 0u;
              obj = v156 = 0u;
              v130 = [obj countByEnumeratingWithState:&v155 objects:v177 count:16];
              if (!v130)
              {
                v128 = 0;
                v129 = 0;
                v139 = 0;
                goto LABEL_138;
              }

              v128 = 0;
              v129 = 0;
              v139 = 0;
              v121 = *v156;
              *&v21 = 136447490;
              v119 = v21;
              while (1)
              {
                for (i = 0; i != v130; i = i + 1)
                {
                  if (*v156 != v121)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v22 = *(*(&v155 + 1) + 8 * i);
                  v176 = 0u;
                  memset(buf, 0, sizeof(buf));
                  v154 = 0;
                  v23 = WALogCategoryDefaultHandle();
                  if (os_signpost_enabled(v23))
                  {
                    *v160 = 0;
                    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR Query and append IOReportLegend", "", v160, 2u);
                  }

                  v24 = [v22 objectForKeyedSubscript:@"gbegin"];
                  v25 = v24 == 0;

                  if (!v25)
                  {
                    v26 = [v22 objectForKeyedSubscript:@"gbegin"];
                    v27 = *buf;
                    *buf = v26;
                  }

                  v119 = [v22 objectForKeyedSubscript:@"gcont", v119];
                  v29 = v119 == 0;

                  if (!v29)
                  {
                    v30 = [v22 objectForKeyedSubscript:@"gcont"];
                    v31 = *&buf[8];
                    *&buf[8] = v30;
                  }

                  v32 = [v22 objectForKeyedSubscript:@"gends"];
                  v33 = v32 == 0;

                  if (!v33)
                  {
                    v34 = [v22 objectForKeyedSubscript:@"gends"];
                    v35 = *&buf[16];
                    *&buf[16] = v34;
                  }

                  v36 = [v22 objectForKeyedSubscript:@"gis"];
                  v37 = v36 == 0;

                  if (!v37)
                  {
                    v38 = [v22 objectForKeyedSubscript:@"gis"];
                    v39 = *&buf[24];
                    *&buf[24] = v38;
                  }

                  v40 = [v22 objectForKeyedSubscript:@"sgbegin"];
                  v41 = v40 == 0;

                  if (!v41)
                  {
                    v42 = [v22 objectForKeyedSubscript:@"sgbegin"];
                    v43 = *&buf[32];
                    *&buf[32] = v42;
                  }

                  v44 = [v22 objectForKeyedSubscript:@"sgcont"];
                  v45 = v44 == 0;

                  if (!v45)
                  {
                    v46 = [v22 objectForKeyedSubscript:@"sgcont"];
                    v47 = *&buf[40];
                    *&buf[40] = v46;
                  }

                  v48 = [v22 objectForKeyedSubscript:@"sgends"];
                  v49 = v48 == 0;

                  if (!v49)
                  {
                    v50 = [v22 objectForKeyedSubscript:@"sgends"];
                    v51 = v176;
                    *&v176 = v50;
                  }

                  v52 = [v22 objectForKeyedSubscript:@"sgis"];
                  v53 = v52 == 0;

                  if (!v53)
                  {
                    v54 = [v22 objectForKeyedSubscript:@"sgis"];
                    v55 = *(&v176 + 1);
                    *(&v176 + 1) = v54;
                  }

                  [WAUtil incrementValueForKey:@"Legend Query Calls" inMutableDict:self->_cachedUsage onQueue:self->_queue];
                  v138 = [getInfraApple80211 getIOReportLegendItemsMatching:buf retErr:&v154];
                  if (v154 == 1)
                  {
                    [WAUtil incrementValueForKey:@"Legend Query Failed" inMutableDict:self->_cachedUsage onQueue:self->_queue];
                    [(WAIOReporterMessagePopulator *)self _incrementPredicateCachedUsageWithPrefix:@"Failed Pred: " q:buf];
                    v56 = WALogCategoryDefaultHandle();
                    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                    {
                      *v160 = 136446722;
                      v161 = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
                      v162 = 1024;
                      v163 = 1047;
                      v164 = 2112;
                      v165 = v22;
                      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%{public}s::%d:legendFetchError with getIOReportLegendItemsMatching pred %@", v160, 0x1Cu);
                    }
                  }

                  if (![v138 count])
                  {
                    [(WAIOReporterMessagePopulator *)self _incrementPredicateCachedUsageWithPrefix:@"Zero Results Pred: " q:buf];
                    if (([(NSMutableArray *)self->_cachedPredicatesNotYetFound containsObject:v22]& 1) != 0)
                    {
                      v96 = [v22 objectForKeyedSubscript:@"rare"];
                      v97 = v96 == 0;

                      v98 = WALogCategoryDefaultHandle();
                      v99 = os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT);
                      if (!v97)
                      {
                        if (v99)
                        {
                          *v160 = 136446722;
                          v161 = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
                          v162 = 1024;
                          v163 = 1062;
                          v164 = 2112;
                          v165 = v22;
                          v100 = v98;
                          v101 = "%{public}s::%d:Failed to discover known missing rare pred %@";
                          goto LABEL_119;
                        }

LABEL_120:

                        v92 = WALogCategoryDefaultHandle();
                        if (!os_signpost_enabled(v92))
                        {
                          goto LABEL_123;
                        }

                        *v160 = 138412290;
                        v161 = v22;
                        v93 = v92;
                        v94 = "Failed Dictionary %@";
                        v95 = 12;
                        goto LABEL_122;
                      }

                      if (!v99)
                      {
                        goto LABEL_120;
                      }

                      *v160 = 136446722;
                      v161 = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
                      v162 = 1024;
                      v163 = 1060;
                      v164 = 2112;
                      v165 = v22;
                      v100 = v98;
                      v101 = "%{public}s::%d:Failed to discover known missing pred %@";
                    }

                    else
                    {
                      v102 = WALogCategoryDefaultHandle();
                      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
                      {
                        v103 = [(NSMutableArray *)self->_cachedPredicatesNotYetFound count];
                        *v160 = 136446978;
                        v161 = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
                        v162 = 1024;
                        v163 = 1054;
                        v164 = 2048;
                        v165 = v103;
                        v166 = 2112;
                        v167 = v22;
                        _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Adding _cachedPredicatesNotYetFound existing count %lu %@", v160, 0x26u);
                      }

                      [(NSMutableArray *)self->_cachedPredicatesNotYetFound addObject:v22];
                      v98 = WALogCategoryDefaultHandle();
                      if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_120;
                      }

                      cachedPredicatesNotYetFound = self->_cachedPredicatesNotYetFound;
                      *v160 = 136446722;
                      v161 = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
                      v162 = 1024;
                      v163 = 1057;
                      v164 = 2112;
                      v165 = cachedPredicatesNotYetFound;
                      v100 = v98;
                      v101 = "%{public}s::%d:_cachedPredicatesNotYetFound is now %@";
                    }

LABEL_119:
                    _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, v101, v160, 0x1Cu);
                    goto LABEL_120;
                  }

                  v57 = WALogCategoryDefaultHandle();
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                  {
                    v58 = [v138 count];
                    *v160 = 136446978;
                    v161 = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
                    v162 = 1024;
                    v163 = 1070;
                    v164 = 2048;
                    v165 = v58;
                    v166 = 2112;
                    v167 = v22;
                    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found %lu legends pred %@", v160, 0x26u);
                  }

                  if ([(NSMutableArray *)self->_cachedPredicatesNotYetFound containsObject:v22])
                  {
                    v59 = WALogCategoryDefaultHandle();
                    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                    {
                      *v160 = 136446722;
                      v161 = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
                      v162 = 1024;
                      v163 = 1073;
                      v164 = 2112;
                      v165 = v22;
                      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found a previously missing pred %@", v160, 0x1Cu);
                    }

                    [(NSMutableArray *)self->_cachedPredicatesNotYetFound removeObject:v22];
                    v60 = WALogCategoryDefaultHandle();
                    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                    {
                      v61 = self->_cachedPredicatesNotYetFound;
                      *v160 = 136446722;
                      v161 = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
                      v162 = 1024;
                      v163 = 1075;
                      v164 = 2112;
                      v165 = v61;
                      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:_cachedPredicatesNotYetFound is now %@", v160, 0x1Cu);
                    }
                  }

                  v152 = 0u;
                  v153 = 0u;
                  v150 = 0u;
                  v151 = 0u;
                  v132 = v138;
                  v123 = [v132 countByEnumeratingWithState:&v150 objects:v174 count:16];
                  if (v123)
                  {
                    v126 = *v151;
                    do
                    {
                      for (j = 0; j != v123; j = j + 1)
                      {
                        if (*v151 != v126)
                        {
                          objc_enumerationMutation(v132);
                        }

                        v62 = *(*(&v150 + 1) + 8 * j);
                        v134 = [v62 objectForKeyedSubscript:@"IOReportChannels"];
                        v136 = [v62 objectForKeyedSubscript:@"IOReportChannelInfo"];
                        v63 = [v62 objectForKeyedSubscript:@"IOReportGroupName"];
                        v64 = [v62 objectForKeyedSubscript:@"IOReportSubGroupName"];
                        if (v64)
                        {
                          v65 = v63 == 0;
                        }

                        else
                        {
                          v65 = 0;
                        }

                        if (!v65)
                        {
                          v148 = 0u;
                          v149 = 0u;
                          v146 = 0u;
                          v147 = 0u;
                          v131 = v134;
                          v66 = [v131 countByEnumeratingWithState:&v146 objects:v173 count:16];
                          v124 = v63;
                          v125 = v64;
                          if (!v66)
                          {
                            goto LABEL_101;
                          }

                          v122 = *v147;
                          while (1)
                          {
                            v120 = v66;
                            for (k = 0; k != v120; k = k + 1)
                            {
                              if (*v147 != v122)
                              {
                                objc_enumerationMutation(v131);
                              }

                              v68 = *(*(&v146 + 1) + 8 * k);
                              v69 = v139;
                              if (!v139)
                              {
                                cachedIOPopAvailableChannels = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
                                v84 = [cachedIOPopAvailableChannels objectForKeyedSubscript:&off_100102D40];
                                v85 = v84 == 0;

                                if (v85)
                                {
                                  Aggregate = IOReportCreateAggregate();
                                  cachedIOPopAvailableChannels2 = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
                                  [cachedIOPopAvailableChannels2 setObject:Aggregate forKeyedSubscript:&off_100102D40];
                                }

                                cachedIOPopAvailableChannels3 = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
                                v89 = [cachedIOPopAvailableChannels3 objectForKeyedSubscript:&off_100102D40];

                                v69 = v89;
                                if (!v89)
                                {
                                  v105 = WALogCategoryDefaultHandle();
                                  if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                                  {
                                    *v160 = 136446466;
                                    v161 = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
                                    v162 = 1024;
                                    v163 = 1112;
                                    _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to alloc drvchs", v160, 0x12u);
                                  }

                                  v106 = WALogCategoryDefaultHandle();
                                  if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                                  {
                                    *v160 = 136446466;
                                    v161 = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
                                    v162 = 1024;
                                    v163 = 1114;
                                    _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to alloc drvchs", v160, 0x12u);
                                  }

                                  v139 = 0;
                                  goto LABEL_131;
                                }
                              }

                              v139 = v69;
                              v70 = [v69 objectForKeyedSubscript:@"IOReportChannels"];
                              if (!v70)
                              {
                                v71 = objc_alloc_init(NSMutableArray);
                                [v139 setObject:v71 forKeyedSubscript:@"IOReportChannels"];

                                v70 = [v139 objectForKeyedSubscript:@"IOReportChannels"];
                                if (!v70)
                                {
                                  v106 = WALogCategoryDefaultHandle();
                                  if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                                  {
                                    *v160 = 136446466;
                                    v161 = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
                                    v162 = 1024;
                                    v163 = 1122;
                                    _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to retrieve or alloc chlist", v160, 0x12u);
                                  }

LABEL_131:

                                  sub_100023E34(buf);
                                  v11 = obj;
                                  v107 = obj;
                                  goto LABEL_132;
                                }
                              }

                              v144 = 0u;
                              v145 = 0u;
                              v142 = 0u;
                              v143 = 0u;
                              cachedIOPopAvailableChannels4 = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
                              v73 = [cachedIOPopAvailableChannels4 objectForKeyedSubscript:&off_100102D40];
                              v74 = [v73 objectForKeyedSubscript:@"IOReportChannels"];

                              v75 = [v74 countByEnumeratingWithState:&v142 objects:v172 count:16];
                              if (v75)
                              {
                                v76 = *v143;
                                while (2)
                                {
                                  for (m = 0; m != v75; m = m + 1)
                                  {
                                    if (*v143 != v76)
                                    {
                                      objc_enumerationMutation(v74);
                                    }

                                    v78 = *(*(&v142 + 1) + 8 * m);
                                    ChannelID = IOReportChannelGetChannelID();
                                    v80 = [v68 objectAtIndex:0];
                                    unsignedLongLongValue = [v80 unsignedLongLongValue];

                                    if (unsignedLongLongValue == ChannelID)
                                    {
                                      ++v128;
                                      goto LABEL_91;
                                    }
                                  }

                                  v75 = [v74 countByEnumeratingWithState:&v142 objects:v172 count:16];
                                  if (v75)
                                  {
                                    continue;
                                  }

                                  break;
                                }
                              }

                              v82 = [(WAIOReporterMessagePopulator *)self createChannelWithProviderID:self->_providerNum providerName:self->_drvName legCh:v68 groupName:v124 subgroupName:v125 chinfo:v136];
                              if (v82)
                              {
                                [v70 addObject:v82];
                                ++v129;
                              }

                              else
                              {
                                v74 = WALogCategoryDefaultHandle();
                                if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                                {
                                  *v160 = v119;
                                  v161 = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
                                  v162 = 1024;
                                  v163 = 1140;
                                  v164 = 2112;
                                  v165 = v124;
                                  v166 = 2112;
                                  v167 = v125;
                                  v168 = 2112;
                                  v169 = v68;
                                  v170 = 2112;
                                  v171 = v136;
                                  _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to create channel groupName %@ subgroup %@ legCh %@ chinfo %@, continuing", v160, 0x3Au);
                                }

LABEL_91:

                                v82 = 0;
                              }
                            }

                            v66 = [v131 countByEnumeratingWithState:&v146 objects:v173 count:16];
                            if (!v66)
                            {
LABEL_101:

                              v91 = v124;
                              v90 = v125;
                              goto LABEL_105;
                            }
                          }
                        }

                        v90 = WALogCategoryDefaultHandle();
                        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                        {
                          *v160 = 136446722;
                          v161 = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
                          v162 = 1024;
                          v163 = 1087;
                          v164 = 2112;
                          v91 = v64;
                          v165 = v64;
                          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unpacking legend yields subgroupName %@ with no groupName, continuing", v160, 0x1Cu);
                        }

                        else
                        {
                          v91 = v64;
                        }

LABEL_105:
                      }

                      v123 = [v132 countByEnumeratingWithState:&v150 objects:v174 count:16];
                    }

                    while (v123);
                  }

                  v92 = WALogCategoryDefaultHandle();
                  if (os_signpost_enabled(v92))
                  {
                    *v160 = 0;
                    v93 = v92;
                    v94 = "";
                    v95 = 2;
LABEL_122:
                    _os_signpost_emit_with_name_impl(&_mh_execute_header, v93, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR Query and append IOReportLegend", v94, v160, v95);
                  }

LABEL_123:

                  sub_100023E34(buf);
                }

                v130 = [obj countByEnumeratingWithState:&v155 objects:v177 count:16];
                if (!v130)
                {
LABEL_138:

                  v110 = WALogCategoryDefaultHandle();
                  if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136446978;
                    *&buf[4] = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
                    *&buf[12] = 1024;
                    *&buf[14] = 1155;
                    *&buf[18] = 2048;
                    *&buf[20] = v129;
                    *&buf[28] = 2048;
                    *&buf[30] = v128;
                    _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Finished finding IOReporter channels... Success - added %lu duplicate %lu", buf, 0x26u);
                  }

                  v109 = WALogCategoryDefaultHandle();
                  if (os_signpost_enabled(v109))
                  {
                    *buf = 134217984;
                    *&buf[4] = list;
                    _os_signpost_emit_with_name_impl(&_mh_execute_header, v109, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR addDriverChannelsMatchingPredicateList", "Mode %ld", buf, 0xCu);
                  }

                  goto LABEL_142;
                }
              }
            }

            goto LABEL_143;
          }

          v11 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_163;
          }

          *buf = 136446466;
          *&buf[4] = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
          *&buf[12] = 1024;
          *&buf[14] = 997;
          v116 = "%{public}s::%d:failed to get _wlanType through getDriverType";
        }

        else
        {
          v11 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_163;
          }

          *buf = 136446466;
          *&buf[4] = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
          *&buf[12] = 1024;
          *&buf[14] = 994;
          v116 = "%{public}s::%d:failed to get _drvPath through getIOReportingClassPath";
        }
      }

      else
      {
        v11 = WALogCategoryDefaultHandle();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_163;
        }

        *buf = 136446466;
        *&buf[4] = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
        *&buf[12] = 1024;
        *&buf[14] = 991;
        v116 = "%{public}s::%d:failed to alloc providerNum";
      }
    }

    else
    {
      v11 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_163;
      }

      *buf = 136446466;
      *&buf[4] = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
      *&buf[12] = 1024;
      *&buf[14] = 988;
      v116 = "%{public}s::%d:Failed to get _drvName through getIOReportingDriverName";
    }

    goto LABEL_161;
  }

  v11 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    *&buf[4] = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
    *&buf[12] = 1024;
    *&buf[14] = 984;
    *&buf[18] = 2048;
    *&buf[20] = entryID;
    v116 = "%{public}s::%d:Failed to convert IORegistryEntryGetRegistryEntryID %llx";
    v117 = v11;
    v118 = 28;
    goto LABEL_162;
  }

LABEL_163:
  v128 = 0;
  v129 = 0;
  v107 = 0;
  v139 = 0;
LABEL_132:

  v108 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    *&buf[4] = "[WAIOReporterMessagePopulator _addDriverChannelsMatchingPredicateList:]";
    *&buf[12] = 1024;
    *&buf[14] = 1163;
    *&buf[18] = 2048;
    *&buf[20] = v129;
    *&buf[28] = 2048;
    *&buf[30] = v128;
    _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_ERROR, "%{public}s::%d:Finished finding IOReporter channels... Error - added %lu duplicate %lu", buf, 0x26u);
  }

  v109 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v109))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v109, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR addDriverChannelsMatchingPredicateList", "Error", buf, 2u);
  }

  obj = v107;
LABEL_142:

  return v129;
}

- (void)signalPotentialNewIORChannels
{
  objc_initWeak(&location, self);
  v3 = WALogCategoryDefaultHandle();
  v4 = os_signpost_id_generate(v3);

  v5 = WALogCategoryDefaultHandle();
  v6 = v5;
  if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "IOR signalPotentialNewIORChannels", "", buf, 2u);
  }

  queue = [(WAIOReporterMessagePopulator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000274B8;
  block[3] = &unk_1000ED858;
  objc_copyWeak(v9, &location);
  block[4] = self;
  v9[1] = v4;
  dispatch_sync(queue, block);

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)_signalPotentialNewIORChannels
{
  v3 = +[NSDate date];
  if (self->_rescanTimerRunning)
  {
    getInfraApple80211 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(getInfraApple80211, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
      v129 = 1024;
      v130 = 1206;
      _os_log_impl(&_mh_execute_header, getInfraApple80211, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Ignoring, waiting for _rescanTimerRunning to run", buf, 0x12u);
    }

    goto LABEL_132;
  }

  [WAUtil incrementValueForKey:@"Rescan Signal Count" inMutableDict:self->_cachedUsage onQueue:self->_queue];
  [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Rescan Siganl Date"];
  [(NSMutableDictionary *)self->_cachedUsage setObject:v3 forKey:@"Rescan Siganl Date"];
  v5 = +[WAApple80211Manager sharedObject];
  getInfraApple80211 = [v5 getInfraApple80211];

  if (!getInfraApple80211)
  {
    v50 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_94;
    }

    *buf = 136446466;
    v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
    v129 = 1024;
    v130 = 1215;
    v80 = "%{public}s::%d:invalid apple80211API";
    v81 = v50;
    v82 = OS_LOG_TYPE_ERROR;
    goto LABEL_93;
  }

  getPhyMode = [getInfraApple80211 getPhyMode];
  v7 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Phy Types Found after signal API"];

  if (!v7)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableDictionary *)self->_cachedUsage setObject:v8 forKeyedSubscript:@"Phy Types Found after signal API"];
  }

  v9 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Phy Types Found after signal API"];
  v10 = [NSNumber numberWithUnsignedInteger:getPhyMode];
  v11 = [v9 objectForKeyedSubscript:v10];

  v124 = getPhyMode;
  if (!v11)
  {
    v25 = objc_alloc_init(NSMutableDictionary);
    v26 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Phy Types Found after signal API"];
    v27 = [NSNumber numberWithUnsignedInteger:getPhyMode];
    [v26 setObject:v25 forKeyedSubscript:v27];

    v21 = 0;
    v23 = 1;
    v24 = 1;
LABEL_23:
    v22 = 1;
    goto LABEL_24;
  }

  v12 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
    v129 = 1024;
    v130 = 1232;
    v131 = 2048;
    v132 = *&getPhyMode;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Already recscanned due to this phy %lu", buf, 0x1Cu);
  }

  cachedIOPopAvailableChannels = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
  v14 = [cachedIOPopAvailableChannels objectForKeyedSubscript:&off_100102D40];
  v15 = [v14 count];

  v16 = [(NSMutableDictionary *)self->_cachedChannelsCountPerIORPopulatable objectForKeyedSubscript:&off_100102D40];
  unsignedIntegerValue = [v16 unsignedIntegerValue];

  if (unsignedIntegerValue > v15)
  {
    v18 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(NSMutableDictionary *)self->_cachedChannelsCountPerIORPopulatable objectForKeyedSubscript:&off_100102D40];
      unsignedIntegerValue2 = [v19 unsignedIntegerValue];
      *buf = 136446978;
      v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
      v129 = 1024;
      v130 = 1241;
      v131 = 2048;
      v132 = *&v15;
      v133 = 2048;
      v134 = *&unsignedIntegerValue2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Considering Exploratory Rescan: currentChannelCount %lu previous max chanels %lu", buf, 0x26u);
    }

    v21 = 0;
    v22 = 0;
    v23 = 1;
    v24 = 1;
    goto LABEL_24;
  }

  v28 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Rescan Permitted: Last Rescan Date"];

  if (v28)
  {
    v29 = [(NSMutableDictionary *)self->_cachedUsage valueForKey:@"Rescan Permitted: Last Rescan Date"];
    [v3 timeIntervalSinceDate:v29];
    if (v30 >= 0.0)
    {
      v31 = v30;
    }

    else
    {
      v31 = -v30;
    }

    if ([(RecommendationPreferences *)self->_preferences ior_rescan_budget_exploratory_seconds]< v31)
    {
      v32 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
        v129 = 1024;
        v130 = 1256;
        v131 = 2048;
        v132 = v31;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Considering Exploratory Rescan: Last rescan was %f s ago", buf, 0x1Cu);
      }

      v21 = 0;
      v24 = 0;
      v23 = 1;
      goto LABEL_23;
    }
  }

  v54 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
    v129 = 1024;
    v130 = 1265;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Rescan not selected due to isExploratory or isLessThanPreviousMaxChannels", buf, 0x12u);
  }

  v55 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Interface Types Found after signal API"];

  if (!v55)
  {
    v56 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableDictionary *)self->_cachedUsage setObject:v56 forKeyedSubscript:@"Interface Types Found after signal API"];
  }

  v124 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Interface Types Found after signal API", v124];
  v58 = [v124 objectForKeyedSubscript:@"ap"];
  if (v58)
  {
  }

  else
  {
    hasSoftAPInterfaceListed = [getInfraApple80211 hasSoftAPInterfaceListed];

    if (hasSoftAPInterfaceListed)
    {
      v60 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
        v129 = 1024;
        v130 = 1280;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:New Interface found AP", buf, 0x12u);
      }

      v23 = 0;
      v24 = 1;
      v22 = 1;
      v21 = @"ap";
      goto LABEL_24;
    }
  }

  v61 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Interface Types Found after signal API"];
  v62 = [v61 objectForKeyedSubscript:@"nan"];
  if (v62)
  {
  }

  else
  {
    hasNANInterfaceListed = [getInfraApple80211 hasNANInterfaceListed];

    if (hasNANInterfaceListed)
    {
      v70 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
        v129 = 1024;
        v130 = 1288;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:New Interface found NAN", buf, 0x12u);
      }

      v23 = 0;
      v24 = 1;
      v22 = 1;
      v21 = @"nan";
      goto LABEL_24;
    }
  }

  v71 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Interface Types Found after signal API"];
  v72 = [v71 objectForKeyedSubscript:@"awdl"];
  if (v72)
  {
  }

  else
  {
    hasAWDLInterfaceListed = [getInfraApple80211 hasAWDLInterfaceListed];

    if (hasAWDLInterfaceListed)
    {
      v74 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
        v129 = 1024;
        v130 = 1296;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:New Interface found AWDL", buf, 0x12u);
      }

      v23 = 0;
      v24 = 1;
      v22 = 1;
      v21 = @"awdl";
      goto LABEL_24;
    }
  }

  v75 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Interface Types Found after signal API"];
  v76 = [v75 objectForKeyedSubscript:@"ir"];
  if (v76)
  {

LABEL_91:
    v50 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_94;
    }

    *buf = 136446466;
    v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
    v129 = 1024;
    v130 = 1309;
    v80 = "%{public}s::%d:Rescan not selected due to No new Interfaces found";
    v81 = v50;
    v82 = OS_LOG_TYPE_DEBUG;
LABEL_93:
    _os_log_impl(&_mh_execute_header, v81, v82, v80, buf, 0x12u);
    goto LABEL_94;
  }

  hasIRInterfaceListed = [getInfraApple80211 hasIRInterfaceListed];

  if (!hasIRInterfaceListed)
  {
    goto LABEL_91;
  }

  v79 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
    v129 = 1024;
    v130 = 1304;
    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:New Interface found IR", buf, 0x12u);
  }

  v23 = 0;
  v24 = 1;
  v22 = 1;
  v21 = @"ir";
LABEL_24:
  v1242 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Rescan Permitted: Last Rescan Date", v124];

  if (v1242)
  {
    v34 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Rescan Permitted: Last Rescan Date"];
    [v3 timeIntervalSinceDate:v34];
    v36 = v35;

    v37 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v38 = -v36;
      v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
      if (v36 >= 0.0)
      {
        v38 = v36;
      }

      v129 = 1024;
      v130 = 1317;
      v131 = 2048;
      v132 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Last rescan was %f s ago", buf, 0x1Cu);
    }
  }

  v126 = v22;
  if (v23)
  {
    if (v11)
    {
      if (v22)
      {
        if (v24)
        {
          v39 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
            v129 = 1024;
            v130 = 1383;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%{public}s::%d:Testing budget with no reason", buf, 0x12u);
          }

          v40 = v24;

          goto LABEL_103;
        }

        v63 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Rescan Reason: Explore Date"];

        if (v63)
        {
          v64 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Rescan Reason: Explore Date"];
          [v3 timeIntervalSinceDate:v64];
          v66 = v65;

          if (v66 < 0.0)
          {
            v66 = -v66;
          }

          ior_rescan_budget_less_than_previous_max_channels_seconds = [(RecommendationPreferences *)self->_preferences ior_rescan_budget_less_than_previous_max_channels_seconds];
          v50 = WALogCategoryDefaultHandle();
          v68 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
          if (v66 < ior_rescan_budget_less_than_previous_max_channels_seconds)
          {
            if (v68)
            {
              v52 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Rescan Reason: Explore Count"];
              *buf = 136446978;
              v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
              v129 = 1024;
              v130 = 1366;
              v131 = 2112;
              v132 = *&v52;
              v133 = 2048;
              v134 = v66;
              v53 = "%{public}s::%d:Rescan Budget Denied: Explore - previous rescans %@ - last check was %f s ago";
              goto LABEL_68;
            }

            goto LABEL_94;
          }

          if (v68)
          {
            v85 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Rescan Reason: Explore Count"];
            *buf = 136446978;
            v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
            v129 = 1024;
            v130 = 1369;
            v131 = 2112;
            v132 = *&v85;
            v133 = 2048;
            v134 = v66;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Rescan Budget OK: Missing Channels - previous rescans %@ - last check was %f s ago", buf, 0x26u);
          }
        }

        else
        {
          v50 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
            v129 = 1024;
            v130 = 1372;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Rescan Budget OK: Explore - first rescan", buf, 0x12u);
          }
        }

        v40 = v24;

        [WAUtil incrementValueForKey:@"Rescan Reason: Explore Count" inMutableDict:self->_cachedUsage onQueue:self->_queue];
        cachedUsage = self->_cachedUsage;
        v43 = @"Rescan Reason: Explore Date";
      }

      else
      {
        v45 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Rescan Reason: Low Channel Date"];

        if (v45)
        {
          v46 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Rescan Reason: Low Channel Date"];
          [v3 timeIntervalSinceDate:v46];
          v48 = v47;

          if (v48 < 0.0)
          {
            v48 = -v48;
          }

          ior_rescan_budget_less_than_previous_max_channels_seconds2 = [(RecommendationPreferences *)self->_preferences ior_rescan_budget_less_than_previous_max_channels_seconds];
          v50 = WALogCategoryDefaultHandle();
          v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
          if (v48 < ior_rescan_budget_less_than_previous_max_channels_seconds2)
          {
            if (v51)
            {
              v52 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Rescan Reason: Low Channel Count"];
              *buf = 136446978;
              v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
              v129 = 1024;
              v130 = 1344;
              v131 = 2112;
              v132 = *&v52;
              v133 = 2048;
              v134 = v48;
              v53 = "%{public}s::%d:Rescan Budget Denied: Missing Channels - previous rescans %@ - last check was %f s ago";
LABEL_68:
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, v53, buf, 0x26u);
            }

LABEL_94:

            [WAUtil incrementValueForKey:@"Rescan Denied" inMutableDict:self->_cachedUsage onQueue:self->_queue];
            v83 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              v84 = self->_cachedUsage;
              *buf = 136446722;
              v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
              v129 = 1024;
              v130 = 1456;
              v131 = 2112;
              v132 = *&v84;
              _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Rescan not performed: %@", buf, 0x1Cu);
            }

            goto LABEL_132;
          }

          if (v51)
          {
            v77 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Rescan Reason: Low Channel Count"];
            *buf = 136446978;
            v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
            v129 = 1024;
            v130 = 1347;
            v131 = 2112;
            v132 = *&v77;
            v133 = 2048;
            v134 = v48;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Rescan Budget OK: Missing Channels - previous rescans %@ - last check was %f s ago", buf, 0x26u);
          }
        }

        else
        {
          v50 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
            v129 = 1024;
            v130 = 1350;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Rescan Budget OK: Missing Channels - first rescan", buf, 0x12u);
          }
        }

        v40 = v24;

        [WAUtil incrementValueForKey:@"Rescan Reason: Low Channel Count" inMutableDict:self->_cachedUsage onQueue:self->_queue];
        cachedUsage = self->_cachedUsage;
        v43 = @"Rescan Reason: Low Channel Date";
      }
    }

    else
    {
      v44 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
        v129 = 1024;
        v130 = 1330;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Rescan Budget OK: New Phy - granted", buf, 0x12u);
      }

      v40 = v24;

      [WAUtil incrementValueForKey:@"Rescan Reason: New Phy Count" inMutableDict:self->_cachedUsage onQueue:self->_queue];
      cachedUsage = self->_cachedUsage;
      v43 = @"Rescan Reason: New Phy Date";
    }
  }

  else
  {
    v41 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
      v129 = 1024;
      v130 = 1321;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Rescan Budget OK: New Interface - granted", buf, 0x12u);
    }

    v40 = v24;

    [WAUtil incrementValueForKey:@"Rescan Reason: New Interface Count" inMutableDict:self->_cachedUsage onQueue:self->_queue];
    cachedUsage = self->_cachedUsage;
    v43 = @"Rescan Reason: New Interface Date";
  }

  [(NSMutableDictionary *)cachedUsage removeObjectForKey:v43];
  [(NSMutableDictionary *)self->_cachedUsage setObject:v3 forKey:v43];
LABEL_103:
  [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Rescan Permitted: Last Rescan Date"];
  [(NSMutableDictionary *)self->_cachedUsage setObject:v3 forKey:@"Rescan Permitted: Last Rescan Date"];
  [WAUtil incrementValueForKey:@"Rescan Permitted: Last Rescan Count" inMutableDict:self->_cachedUsage onQueue:self->_queue];
  v86 = WALogCategoryDefaultHandle();
  v87 = v86;
  if ((v23 & 1) == 0)
  {
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
      v129 = 1024;
      v130 = 1395;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:IORescan: New Interface found - rescanning", buf, 0x12u);
    }

    v88 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Interface Types Found after signal API"];
    v89 = [v88 objectForKeyedSubscript:v21];

    if (!v89)
    {
      v90 = objc_alloc_init(NSMutableDictionary);
      v91 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Interface Types Found after signal API"];
      [v91 setObject:v90 forKeyedSubscript:v21];
    }

    v92 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Interface Types Found after signal API"];
    v93 = [v92 objectForKeyedSubscript:v21];
    [WAUtil incrementValueForKey:@"Rescan Permitted: Last Rescan Count" inMutableDict:v93 onQueue:self->_queue];

    v94 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Interface Types Found after signal API"];
    v95 = [v94 objectForKeyedSubscript:v21];
    v96 = [v95 objectForKeyedSubscript:@"Rescan Permitted: Last Rescan Date"];

    if (v96)
    {
      v97 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Interface Types Found after signal API"];
      v98 = [v97 objectForKeyedSubscript:v21];
      [v98 setObject:0 forKeyedSubscript:@"Rescan Permitted: Last Rescan Date"];
    }

    v99 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Interface Types Found after signal API"];
    v100 = [v99 objectForKeyedSubscript:v21];
    [v100 setObject:v3 forKeyedSubscript:@"Rescan Permitted: Last Rescan Date"];

    v101 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_130;
    }

    *buf = 136446466;
    v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
    v129 = 1024;
    v130 = 1409;
    goto LABEL_129;
  }

  if (v11)
  {
    if (v126)
    {
      if (v40)
      {
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
          v129 = 1024;
          v130 = 1447;
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "%{public}s::%d:Rescan granted with no reason", buf, 0x12u);
        }

        goto LABEL_132;
      }

      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
        v129 = 1024;
        v130 = 1438;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:IORescan: Performing exploratory scan - rescanning", buf, 0x12u);
      }

      [WAUtil incrementValueForKey:@"Rescan Reason: Explore Count" inMutableDict:self->_cachedUsage onQueue:self->_queue];
      [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Rescan Reason: Explore Date"];
      [(NSMutableDictionary *)self->_cachedUsage setObject:v3 forKey:@"Rescan Reason: Explore Date"];
      v123 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
        v129 = 1024;
        v130 = 1443;
        _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Running _buildOrRescanToBuildChannelAvailabilityCaches:kWAIORIOReporterSearchUnfoundAndMutablePredicates", buf, 0x12u);
      }

      [(WAIOReporterMessagePopulator *)self _buildOrRescanToBuildChannelAvailabilityCaches:1];
      selfCopy2 = self;
      v122 = 1;
LABEL_131:
      [(WAIOReporterMessagePopulator *)selfCopy2 _iorPreparedForSampling:v122];
      goto LABEL_132;
    }

    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
      v129 = 1024;
      v130 = 1429;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:IORescan: Max channels still not found - rescanning", buf, 0x12u);
    }

    [WAUtil incrementValueForKey:@"Rescan Reason: Low Channel Count" inMutableDict:self->_cachedUsage onQueue:self->_queue];
    [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Rescan Reason: Low Channel Date"];
    [(NSMutableDictionary *)self->_cachedUsage setObject:v3 forKey:@"Rescan Reason: Low Channel Date"];
    v101 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
LABEL_130:

      [(WAIOReporterMessagePopulator *)self _buildOrRescanToBuildChannelAvailabilityCaches:1];
      selfCopy2 = self;
      v122 = 0;
      goto LABEL_131;
    }

    *buf = 136446466;
    v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
    v129 = 1024;
    v130 = 1434;
LABEL_129:
    _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Running _buildOrRescanToBuildChannelAvailabilityCaches:kWAIORIOReporterSearchUnfoundAndMutablePredicates", buf, 0x12u);
    goto LABEL_130;
  }

  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v128 = "[WAIOReporterMessagePopulator _signalPotentialNewIORChannels]";
    v129 = 1024;
    v130 = 1413;
    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:IORescan: New Phy Type in use - scheduling rescanning", buf, 0x12u);
  }

  v102 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Phy Types Found after signal API"];
  v103 = [NSNumber numberWithUnsignedInteger:v125];
  v104 = [v102 objectForKeyedSubscript:v103];

  if (!v104)
  {
    v105 = objc_alloc_init(NSMutableDictionary);
    v106 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Phy Types Found after signal API"];
    v107 = [NSNumber numberWithUnsignedInteger:v125];
    [v106 setObject:v105 forKeyedSubscript:v107];
  }

  v108 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Phy Types Found after signal API"];
  v109 = [NSNumber numberWithUnsignedInteger:v125];
  v110 = [v108 objectForKeyedSubscript:v109];
  [WAUtil incrementValueForKey:@"Rescan Permitted: Last Rescan Count" inMutableDict:v110 onQueue:self->_queue];

  v111 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Phy Types Found after signal API"];
  v112 = [NSNumber numberWithUnsignedInteger:v125];
  v113 = [v111 objectForKeyedSubscript:v112];
  v114 = [v113 objectForKeyedSubscript:@"Rescan Permitted: Last Rescan Date"];

  if (v114)
  {
    v115 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Phy Types Found after signal API"];
    v116 = [NSNumber numberWithUnsignedInteger:v125];
    v117 = [v115 objectForKeyedSubscript:v116];
    [v117 setObject:0 forKeyedSubscript:@"Rescan Permitted: Last Rescan Date"];
  }

  v118 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Phy Types Found after signal API"];
  v119 = [NSNumber numberWithUnsignedInteger:v125];
  v120 = [v118 objectForKeyedSubscript:v119];
  [v120 setObject:v3 forKeyedSubscript:@"Rescan Permitted: Last Rescan Date"];

  [(WAIOReporterMessagePopulator *)self _delayedInvocationForRescan];
LABEL_132:
}

- (void)_cancelDelayedInvocationForRescan
{
  if (self->_rescanTimerRunning)
  {
    rescanTimer = self->_rescanTimer;
    if (rescanTimer)
    {
      if (!dispatch_source_testcancel(rescanTimer))
      {
        v4 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 136446466;
          v8 = "[WAIOReporterMessagePopulator _cancelDelayedInvocationForRescan]";
          v9 = 1024;
          v10 = 1465;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Timer exists and is valid, Suspending", &v7, 0x12u);
        }

        dispatch_suspend(self->_rescanTimer);
        self->_rescanTimerRunning = 0;
        v5 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          rescanTimerRunning = self->_rescanTimerRunning;
          v7 = 136446722;
          v8 = "[WAIOReporterMessagePopulator _cancelDelayedInvocationForRescan]";
          v9 = 1024;
          v10 = 1468;
          v11 = 1024;
          v12 = rescanTimerRunning;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:setting _rescanTimerRunning %d", &v7, 0x18u);
        }
      }
    }
  }
}

- (void)_delayedInvocationForRescan
{
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    rescanTimerRunning = self->_rescanTimerRunning;
    ior_rescan_new_phy_delay_seconds = [(RecommendationPreferences *)self->_preferences ior_rescan_new_phy_delay_seconds];
    rescanTimer = self->_rescanTimer;
    v7 = rescanTimer != 0;
    if (rescanTimer)
    {
      v8 = dispatch_source_testcancel(rescanTimer) != 0;
    }

    else
    {
      v8 = 0;
    }

    *buf = 136447490;
    v33 = "[WAIOReporterMessagePopulator _delayedInvocationForRescan]";
    v34 = 1024;
    v35 = 1474;
    v36 = 1024;
    *v37 = rescanTimerRunning;
    *&v37[4] = 2048;
    *&v37[6] = ior_rescan_new_phy_delay_seconds;
    v38 = 1024;
    v39 = v7;
    v40 = 1024;
    v41 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:_rescanTimerRunning is %d ior_rescan_new_phy_delay_seconds is %lu _timer exists %d testcancel is %d", buf, 0x2Eu);
  }

  if (self->_rescanTimerRunning)
  {
    goto LABEL_31;
  }

  v9 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v33 = "[WAIOReporterMessagePopulator _delayedInvocationForRescan]";
    v34 = 1024;
    v35 = 1477;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Setting timer", buf, 0x12u);
  }

  v10 = self->_rescanTimer;
  if (v10)
  {
    if (!dispatch_source_testcancel(v10))
    {
LABEL_22:
      v18 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        ior_rescan_new_phy_delay_seconds2 = [(RecommendationPreferences *)self->_preferences ior_rescan_new_phy_delay_seconds];
        *buf = 136446722;
        v33 = "[WAIOReporterMessagePopulator _delayedInvocationForRescan]";
        v34 = 1024;
        v35 = 1503;
        v36 = 2048;
        *v37 = ior_rescan_new_phy_delay_seconds2;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Starting dispatch_source_set_timer fire in %lu s", buf, 0x1Cu);
      }

      v20 = self->_rescanTimer;
      v21 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 1000000000 * [(RecommendationPreferences *)self->_preferences ior_rescan_new_phy_delay_seconds]);
      dispatch_source_set_timer(v20, v21, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      v22 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v33 = "[WAIOReporterMessagePopulator _delayedInvocationForRescan]";
        v34 = 1024;
        v35 = 1505;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Starting dispatch_source_set_timer Done", buf, 0x12u);
      }

      v23 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v33 = "[WAIOReporterMessagePopulator _delayedInvocationForRescan]";
        v34 = 1024;
        v35 = 1507;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:dispatch_resume _timer", buf, 0x12u);
      }

      dispatch_resume(self->_rescanTimer);
      self->_rescanTimerRunning = 1;
      v24 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = self->_rescanTimerRunning;
        *buf = 136446722;
        v33 = "[WAIOReporterMessagePopulator _delayedInvocationForRescan]";
        v34 = 1024;
        v35 = 1511;
        v36 = 1024;
        *v37 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:setting _rescanTimerRunning %d", buf, 0x18u);
      }

LABEL_31:
      v26 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = self->_rescanTimerRunning;
        ior_rescan_new_phy_delay_seconds3 = [(RecommendationPreferences *)self->_preferences ior_rescan_new_phy_delay_seconds];
        v29 = self->_rescanTimer;
        if (v29)
        {
          v30 = dispatch_source_testcancel(v29) == 0;
        }

        else
        {
          v30 = 0;
        }

        *buf = 136447234;
        v33 = "[WAIOReporterMessagePopulator _delayedInvocationForRescan]";
        v34 = 1024;
        v35 = 1515;
        v36 = 1024;
        *v37 = v27;
        *&v37[4] = 2048;
        *&v37[6] = ior_rescan_new_phy_delay_seconds3;
        v38 = 1024;
        v39 = v30;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Timer State : Enabled %d Period(ms) %lu valid %d", buf, 0x28u);
      }

      goto LABEL_36;
    }

LABEL_17:
    v15 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v33 = "[WAIOReporterMessagePopulator _delayedInvocationForRescan]";
      v34 = 1024;
      v35 = 1489;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Setting dispatch_source_set_event_handler", buf, 0x12u);
    }

    v16 = self->_rescanTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100029660;
    handler[3] = &unk_1000ED880;
    handler[4] = self;
    dispatch_source_set_event_handler(v16, handler);
    v17 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v33 = "[WAIOReporterMessagePopulator _delayedInvocationForRescan]";
      v34 = 1024;
      v35 = 1500;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Setting block Done", buf, 0x12u);
    }

    goto LABEL_22;
  }

  v11 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v33 = "[WAIOReporterMessagePopulator _delayedInvocationForRescan]";
    v34 = 1024;
    v35 = 1483;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Creating _rescanTimer", buf, 0x12u);
  }

  v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
  v13 = self->_rescanTimer;
  self->_rescanTimer = v12;

  v14 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v33 = "[WAIOReporterMessagePopulator _delayedInvocationForRescan]";
    v34 = 1024;
    v35 = 1485;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Creating _rescanTimer Done", buf, 0x12u);
  }

  if (self->_rescanTimer)
  {
    goto LABEL_17;
  }

  v26 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "Failed to create _timer", buf, 2u);
  }

LABEL_36:
}

- (void)scanPredicatesNotYetFoundAndMutable
{
  objc_initWeak(&location, self);
  queue = [(WAIOReporterMessagePopulator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000298DC;
  block[3] = &unk_1000ED678;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_sync(queue, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_scanPredicatesWithMode:(int64_t)mode
{
  cachedIOPopAvailableChannels = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
  v6 = [cachedIOPopAvailableChannels objectForKeyedSubscript:&off_100102D40];

  if (v6)
  {
    cachedIOPopAvailableChannels2 = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
    v8 = [cachedIOPopAvailableChannels2 objectForKeyedSubscript:&off_100102D40];
    v9 = [v8 count];

    if (!mode)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
    if (!mode)
    {
      goto LABEL_9;
    }
  }

  if (!v9)
  {
    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 136446978;
      v33 = "[WAIOReporterMessagePopulator _scanPredicatesWithMode:]";
      v34 = 1024;
      v35 = 1545;
      v36 = 2048;
      modeCopy2 = mode;
      v38 = 2048;
      v39 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:predicateSearch %ld when previousChannelCount %lu, changing predicateSearch to kWAIORIOReporterSearchAllStaticPredicates", &v32, 0x26u);
    }

    mode = 0;
    goto LABEL_13;
  }

LABEL_9:
  if (mode == 2)
  {
    cachedPredicatesNotYetFound = [(WAIOReporterMessagePopulator *)self cachedPredicatesNotYetFound];
    if (cachedPredicatesNotYetFound)
    {
      v12 = cachedPredicatesNotYetFound;
      cachedPredicatesNotYetFound2 = [(WAIOReporterMessagePopulator *)self cachedPredicatesNotYetFound];
      v14 = [cachedPredicatesNotYetFound2 count];

      if (!v14)
      {
        v30 = WALogCategoryDefaultHandle();
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        v32 = 136446466;
        v33 = "[WAIOReporterMessagePopulator _scanPredicatesWithMode:]";
        v34 = 1024;
        v35 = 1552;
        v31 = "%{public}s::%d:predicateSearch kWAIORIOReporterSearchUnfoundPredicates when cachedPredicatesNotYetFound count == 0 returning without scanning";
        goto LABEL_29;
      }
    }

    mode = 2;
  }

LABEL_13:
  v15 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v15))
  {
    LOWORD(v32) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR _scanPredicatesWithMode", "", &v32, 2u);
  }

  v16 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 136446722;
    v33 = "[WAIOReporterMessagePopulator _scanPredicatesWithMode:]";
    v34 = 1024;
    v35 = 1558;
    v36 = 2048;
    modeCopy2 = mode;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:addDriverChannelsMatchingPredicateList from _scanPredicatesWithMode %ld", &v32, 0x1Cu);
  }

  v17 = [(WAIOReporterMessagePopulator *)self _addDriverChannelsMatchingPredicateList:mode];
  if (v17)
  {
    v18 = v17;
    v19 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 136446722;
      v33 = "[WAIOReporterMessagePopulator _scanPredicatesWithMode:]";
      v34 = 1024;
      v35 = 1563;
      v36 = 2048;
      modeCopy2 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found %lu new channels", &v32, 0x1Cu);
    }

    cachedIOPopAvailableChannels3 = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
    v21 = [cachedIOPopAvailableChannels3 objectForKeyedSubscript:&off_100102D40];
    v22 = [v21 count];

    [(WAIOReporterMessagePopulator *)self _freeSubscriptionSample:&off_100102D40];
    cachedChannelsCountPerIORPopulatable = [(WAIOReporterMessagePopulator *)self cachedChannelsCountPerIORPopulatable];
    v24 = [cachedChannelsCountPerIORPopulatable objectForKeyedSubscript:&off_100102D40];
    unsignedIntValue = [v24 unsignedIntValue];

    if (v22 > unsignedIntValue)
    {
      v26 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136447490;
        v33 = "[WAIOReporterMessagePopulator _scanPredicatesWithMode:]";
        v34 = 1024;
        v35 = 1570;
        v36 = 2112;
        modeCopy2 = &off_100102D40;
        v38 = 2048;
        v39 = v18;
        v40 = 2048;
        v41 = v9;
        v42 = 2048;
        v43 = v22;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Increasing max known channel count for group %@ by %lu from %lu to %lu", &v32, 0x3Au);
      }

      v27 = [[NSNumber alloc] initWithUnsignedLong:v22];
      cachedChannelsCountPerIORPopulatable2 = [(WAIOReporterMessagePopulator *)self cachedChannelsCountPerIORPopulatable];
      [cachedChannelsCountPerIORPopulatable2 setObject:v27 forKeyedSubscript:&off_100102D40];
    }

    self->_ioReportersCacheNeedsUpdating = 1;
  }

  v29 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v29))
  {
    LOWORD(v32) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR _scanPredicatesWithMode", "", &v32, 2u);
  }

  v30 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 136446466;
    v33 = "[WAIOReporterMessagePopulator _scanPredicatesWithMode:]";
    v34 = 1024;
    v35 = 1579;
    v31 = "%{public}s::%d:_scanPredicatesWithMode Complete";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v31, &v32, 0x12u);
  }

LABEL_30:
}

- (void)_buildOrRescanToBuildChannelAvailabilityCaches:(int64_t)caches
{
  cachedIOPopAvailableChannels = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
  v6 = [NSNumber numberWithUnsignedInteger:5];
  v7 = [cachedIOPopAvailableChannels objectForKeyedSubscript:v6];

  v8 = WALogCategoryDefaultHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = 136446722;
      v11 = "[WAIOReporterMessagePopulator _buildOrRescanToBuildChannelAvailabilityCaches:]";
      v12 = 1024;
      v13 = 1597;
      v14 = 2048;
      cachesCopy = caches;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Running _scanPredicatesWithMode:%ld", &v10, 0x1Cu);
    }

    [(WAIOReporterMessagePopulator *)self _scanPredicatesWithMode:caches];
  }

  else
  {
    if (v9)
    {
      v10 = 136446466;
      v11 = "[WAIOReporterMessagePopulator _buildOrRescanToBuildChannelAvailabilityCaches:]";
      v12 = 1024;
      v13 = 1590;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Running _findChannelsAndBuildChannelCaches:kWAIORIOReporterSearchAllStaticPredicates", &v10, 0x12u);
    }

    [(WAIOReporterMessagePopulator *)self _findChannelsAndBuildChannelCaches:0];
  }
}

- (void)_findChannelsAndBuildChannelCaches:(int64_t)caches
{
  v104 = 0;
  value = 0;
  v103 = 0;
  [WAUtil incrementValueForKey:@"Find Channels Calls" inMutableDict:self->_cachedUsage onQueue:self->_queue];
  cachedChannelsCountPerIORPopulatable = [(WAIOReporterMessagePopulator *)self cachedChannelsCountPerIORPopulatable];

  if (!cachedChannelsCountPerIORPopulatable)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    [(WAIOReporterMessagePopulator *)self setCachedChannelsCountPerIORPopulatable:v6];
  }

  cachedIOPopAvailableChannels = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];

  if (cachedIOPopAvailableChannels)
  {
    cachedIOPopAvailableChannels2 = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
    v9 = [cachedIOPopAvailableChannels2 objectForKeyedSubscript:&off_100102D40];
    v10 = [v9 count];

    v11 = v10 == 0;
    if (!caches)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = objc_alloc_init(NSMutableDictionary);
    [(WAIOReporterMessagePopulator *)self setCachedIOPopAvailableChannels:v12];

    v11 = 1;
    if (!caches)
    {
      goto LABEL_11;
    }
  }

  if (v11)
  {
    v13 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
      v108 = 1024;
      v109 = 1630;
      v110 = 2048;
      *v111 = caches;
      *&v111[8] = 2048;
      v112 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:predicateSearch %ld when previousChannelCount %lu, changing predicateSearch to kWAIORIOReporterSearchAllStaticPredicates", buf, 0x26u);
    }

    caches = 0;
LABEL_15:
    v18 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR FindChannelsAndBuildChannelCaches", "", buf, 2u);
    }

    cachedUsage = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
    if (cachedUsage)
    {
      cachedIOReportSample = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
      v21 = [cachedIOReportSample objectForKeyedSubscript:&off_100102D40];
      if (v21)
      {
        v22 = v21;
        cachedIOReportSample2 = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
        v24 = [cachedIOReportSample2 objectForKeyedSubscript:&off_100102D40];
        v25 = [v24 objectForKeyedSubscript:@"structuredDict"];

        if (v25)
        {
          LODWORD(cachedUsage) = [(WAIOReporterMessagePopulator *)self doesDriverHaveChannelsInStructuredDict:1 containsStale:&v103];
          v26 = [(WAIOReporterMessagePopulator *)self doesDriverHaveChannelsInStructuredDict:0 containsStale:&v103 + 1];
          v27 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = "is found";
            v29 = "is";
            if (v26)
            {
              v30 = "is found";
            }

            else
            {
              v30 = "is not found";
            }

            v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
            v108 = 1024;
            v109 = 1648;
            *v111 = v30;
            if (HIBYTE(v103))
            {
              v31 = "is";
            }

            else
            {
              v31 = "is not";
            }

            *buf = 136447490;
            if (!cachedUsage)
            {
              v28 = "is not found";
            }

            v110 = 2080;
            *&v111[8] = 2080;
            v112 = v31;
            if (!v103)
            {
              v29 = "is not";
            }

            v113 = 2080;
            v114 = v28;
            v115 = 2080;
            v116 = v29;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WiFi %s and %s stale, CoreCapture %s and %s stale", buf, 0x3Au);
          }

          v32 = v26 == 0;
LABEL_36:
          if (HIBYTE(v103) | v103)
          {
            [WAUtil incrementValueForKey:@"Fault Detection: Stale DriverID Count" inMutableDict:self->_cachedUsage onQueue:self->_queue];
            [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Fault Detection: Stale DriverID Date"];
            cachedUsage = self->_cachedUsage;
            v33 = +[NSDate now];
            [cachedUsage setObject:v33 forKey:@"Fault Detection: Stale DriverID Date"];

            [(WAIOReporterMessagePopulator *)self _clearIOReporterCache];
            LODWORD(cachedUsage) = 0;
          }

          else if (!v32)
          {
            v36 = [(NSMutableArray *)self->_cachedPredicatesNotYetFound count];
            v37 = WALogCategoryDefaultHandle();
            v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
            if (v36)
            {
              if (v38)
              {
                *buf = 136446722;
                v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
                v108 = 1024;
                v109 = 1668;
                v110 = 2048;
                *v111 = caches;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Some predicates not found, searching %ld", buf, 0x1Cu);
              }

              v39 = WALogCategoryDefaultHandle();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446722;
                v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
                v108 = 1024;
                v109 = 1670;
                v110 = 2048;
                *v111 = caches;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Running _buildOrRescanToBuildChannelAvailabilityCaches:%ld", buf, 0x1Cu);
              }

              selfCopy2 = self;
              cachesCopy = caches;
            }

            else
            {
              if (v38)
              {
                *buf = 136446466;
                v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
                v108 = 1024;
                v109 = 1673;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:All predicates found, searching kWAIORIOReporterSearchMutablePredicates", buf, 0x12u);
              }

              v42 = WALogCategoryDefaultHandle();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
                v108 = 1024;
                v109 = 1675;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Running _buildOrRescanToBuildChannelAvailabilityCaches:kWAIORIOReporterSearchMutablePredicates", buf, 0x12u);
              }

              selfCopy2 = self;
              cachesCopy = 3;
            }

            [(WAIOReporterMessagePopulator *)selfCopy2 _buildOrRescanToBuildChannelAvailabilityCaches:cachesCopy];
LABEL_56:
            cachedIOPopAvailableChannels3 = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
            v44 = [cachedIOPopAvailableChannels3 objectForKeyedSubscript:&off_100102D40];

            if (!v44 || IOReportGetChannelCount() <= 0)
            {
              v97 = WALogCategoryDefaultHandle();
              if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
                v108 = 1024;
                v109 = 1681;
                _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "%{public}s::%d:No WiFi Channels found", buf, 0x12u);
              }

              if (v44)
              {
                CFRelease(v44);
                v44 = 0;
              }

              goto LABEL_119;
            }

            if (!cachedUsage)
            {
              if ([(WAIOReporterMessagePopulator *)self _getCCPipeDriverForWLAN])
              {
                v45 = IOReportCopyChannelsForDriver();
                if (v45 && IOReportGetChannelCount() > 0)
                {
                  v46 = WALogCategoryDefaultHandle();
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                  {
                    ChannelCount = IOReportGetChannelCount();
                    v48 = IOReportGetChannelCount();
                    *buf = 136446978;
                    v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
                    v108 = 1024;
                    v109 = 1690;
                    v110 = 1024;
                    *v111 = ChannelCount;
                    *&v111[4] = 1024;
                    *&v111[6] = v48;
                    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding %d channels to %d", buf, 0x1Eu);
                  }

                  v49 = IOReportMergeChannels();
                  v50 = WALogCategoryDefaultHandle();
                  v51 = v50;
                  if (!v49)
                  {
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                    {
                      v52 = IOReportGetChannelCount();
                      *buf = 136446722;
                      v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
                      v108 = 1024;
                      v109 = 1696;
                      v110 = 1024;
                      *v111 = v52;
                      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Final channel count %d", buf, 0x18u);
                    }

                    CFRelease(v45);
                    goto LABEL_71;
                  }

                  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446722;
                    v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
                    v108 = 1024;
                    v109 = 1694;
                    v110 = 2112;
                    *v111 = v104;
                    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%{public}s::%d:Couldn't get additionalChannels from CCLogPipe driver %@", buf, 0x1Cu);
                  }
                }

                else
                {
                  v102 = WALogCategoryDefaultHandle();
                  if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446722;
                    v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
                    v108 = 1024;
                    v109 = 1688;
                    v110 = 2112;
                    *v111 = v104;
                    _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "%{public}s::%d:Couldn't get additionalChannels from CCLogPipe driver %@", buf, 0x1Cu);
                  }

                  if (!v45)
                  {
                    goto LABEL_119;
                  }
                }

                CFRelease(v45);
                goto LABEL_119;
              }

              v53 = WALogCategoryDefaultHandle();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
                v108 = 1024;
                v109 = 1699;
                _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%{public}s::%d:Couldn't find _getCCPipeDriverForWLAN", buf, 0x12u);
              }
            }

LABEL_71:
            CFDictionaryGetValueIfPresent(v44, @"IOReportChannels", &value);
            if (value && CFArrayGetCount(value))
            {
              infraInterfaceName = [(WAIOReporterMessagePopulator *)self infraInterfaceName];
              if ([infraInterfaceName isEqualToString:@"dunno"])
              {
              }

              else
              {
                infraInterfaceName2 = [(WAIOReporterMessagePopulator *)self infraInterfaceName];

                if (infraInterfaceName2)
                {
LABEL_78:
                  v59 = WALogCategoryDefaultHandle();
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
                  {
                    infraInterfaceName3 = [(WAIOReporterMessagePopulator *)self infraInterfaceName];
                    *buf = 136446722;
                    v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
                    v108 = 1024;
                    v109 = 1714;
                    v110 = 2112;
                    *v111 = infraInterfaceName3;
                    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "%{public}s::%d:InterfaceName is %@", buf, 0x1Cu);
                  }

                  v61 = WALogCategoryDefaultHandle();
                  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
                  {
                    cachedIOPopAvailableChannels4 = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
                    v63 = [cachedIOPopAvailableChannels4 objectForKeyedSubscript:&off_100102D40];
                    v64 = [v63 objectForKeyedSubscript:@"IOReportChannels"];
                    v65 = [v64 count];
                    *buf = 136446978;
                    v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
                    v108 = 1024;
                    v109 = 1717;
                    v110 = 2112;
                    *v111 = &off_100102D40;
                    *&v111[8] = 2048;
                    v112 = v65;
                    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Cached group %@ has size %lu", buf, 0x26u);
                  }

                  Count = CFArrayGetCount(value);
                  cachedIOPopAvailableChannels5 = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
                  v68 = [cachedIOPopAvailableChannels5 objectForKeyedSubscript:&off_100102D40];
                  v69 = [v68 objectForKeyedSubscript:@"IOReportChannels"];
                  v70 = [v69 count];

                  if (v70 != Count)
                  {
                    v71 = WALogCategoryDefaultHandle();
                    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
                    {
                      cachedChannelsCountPerIORPopulatable2 = [(WAIOReporterMessagePopulator *)self cachedChannelsCountPerIORPopulatable];
                      v73 = [cachedChannelsCountPerIORPopulatable2 objectForKeyedSubscript:&off_100102D40];
                      cachedIOPopAvailableChannels6 = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
                      v75 = [cachedIOPopAvailableChannels6 objectForKeyedSubscript:&off_100102D40];
                      v76 = [v75 objectForKeyedSubscript:@"IOReportChannels"];
                      v77 = [v76 count];
                      *buf = 136447490;
                      v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
                      v108 = 1024;
                      v109 = 1723;
                      v110 = 2112;
                      *v111 = &off_100102D40;
                      *&v111[8] = 2112;
                      v112 = v73;
                      v113 = 2048;
                      v114 = v77;
                      v115 = 2048;
                      v116 = Count;
                      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Found New Channels to add to cache for group %@, we know we should have %@, current cached channel size %lu new size %lu", buf, 0x3Au);
                    }

                    self->_ioReportersCacheNeedsUpdating = 1;
                    [(WAIOReporterMessagePopulator *)self _freeSubscriptionSample:&off_100102D40];
                    cachedChannelsCountPerIORPopulatable3 = [(WAIOReporterMessagePopulator *)self cachedChannelsCountPerIORPopulatable];
                    v79 = [cachedChannelsCountPerIORPopulatable3 objectForKeyedSubscript:&off_100102D40];
                    unsignedIntValue = [v79 unsignedIntValue];

                    if (Count > unsignedIntValue)
                    {
                      v81 = WALogCategoryDefaultHandle();
                      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                      {
                        cachedChannelsCountPerIORPopulatable4 = [(WAIOReporterMessagePopulator *)self cachedChannelsCountPerIORPopulatable];
                        v83 = [cachedChannelsCountPerIORPopulatable4 objectForKeyedSubscript:&off_100102D40];
                        *buf = 136447234;
                        v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
                        v108 = 1024;
                        v109 = 1730;
                        v110 = 2112;
                        *v111 = &off_100102D40;
                        *&v111[8] = 2112;
                        v112 = v83;
                        v113 = 2048;
                        v114 = Count;
                        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Increasing max known channel count for group %@ from %@ to %lu", buf, 0x30u);
                      }

                      v84 = [[NSNumber alloc] initWithUnsignedLong:Count];
                      cachedChannelsCountPerIORPopulatable5 = [(WAIOReporterMessagePopulator *)self cachedChannelsCountPerIORPopulatable];
                      [cachedChannelsCountPerIORPopulatable5 setObject:v84 forKeyedSubscript:&off_100102D40];

                      goto LABEL_96;
                    }

                    cachedChannelsCountPerIORPopulatable6 = [(WAIOReporterMessagePopulator *)self cachedChannelsCountPerIORPopulatable];
                    v87 = [cachedChannelsCountPerIORPopulatable6 objectForKeyedSubscript:&off_100102D40];
                    unsignedIntValue2 = [v87 unsignedIntValue];

                    v89 = WALogCategoryDefaultHandle();
                    v90 = os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG);
                    if (Count == unsignedIntValue2)
                    {
                      if (v90)
                      {
                        *buf = 136446722;
                        v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
                        v108 = 1024;
                        v109 = 1733;
                        v110 = 2112;
                        *v111 = &off_100102D40;
                        _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEBUG, "%{public}s::%d:All known channels for group %@ have been found", buf, 0x1Cu);
                      }
                    }

                    else if (v90)
                    {
                      cachedChannelsCountPerIORPopulatable7 = [(WAIOReporterMessagePopulator *)self cachedChannelsCountPerIORPopulatable];
                      v92 = [cachedChannelsCountPerIORPopulatable7 objectForKeyedSubscript:&off_100102D40];
                      *buf = 136447234;
                      v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
                      v108 = 1024;
                      v109 = 1735;
                      v110 = 2112;
                      *v111 = &off_100102D40;
                      *&v111[8] = 2048;
                      v112 = Count;
                      v113 = 2112;
                      v114 = v92;
                      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEBUG, "%{public}s::%d:There are still missing channels for group %@ have %lu expect %@", buf, 0x30u);
                    }
                  }

                  if (Count)
                  {
LABEL_96:
                    cachedIOPopAvailableChannels7 = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
                    [cachedIOPopAvailableChannels7 setObject:v44 forKeyedSubscript:&off_100102D40];

                    CFRelease(v44);
                    v44 = 0;
                    v94 = "Success";
LABEL_97:
                    v95 = WALogCategoryDefaultHandle();
                    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136446722;
                      v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
                      v108 = 1024;
                      v109 = 1749;
                      v110 = 2080;
                      *v111 = v94;
                      _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Finished Finding Channels and Building Caches... %s", buf, 0x1Cu);
                    }

                    if (v44)
                    {
                      CFRelease(v44);
                    }

                    [(WAIOReporterMessagePopulator *)self _delayedInvocationForPersist];
                    v96 = WALogCategoryDefaultHandle();
                    if (os_signpost_enabled(v96))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&_mh_execute_header, v96, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR FindChannelsAndBuildChannelCaches", "", buf, 2u);
                    }

                    goto LABEL_103;
                  }

                  v98 = WALogCategoryDefaultHandle();
                  if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_118;
                  }

                  *buf = 136446722;
                  v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
                  v108 = 1024;
                  v109 = 1739;
                  v110 = 2112;
                  *v111 = &off_100102D40;
                  v99 = "%{public}s::%d:Didn't find any channels for populatable: %@ ";
                  v100 = v98;
                  v101 = 28;
                  goto LABEL_117;
                }
              }

              v56 = +[WAApple80211Manager sharedObject];
              getInfraApple80211 = [v56 getInfraApple80211];

              if (getInfraApple80211)
              {
                ifName = [getInfraApple80211 ifName];
                [(WAIOReporterMessagePopulator *)self setInfraInterfaceName:ifName];

                goto LABEL_78;
              }

              v98 = WALogCategoryDefaultHandle();
              if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
                v108 = 1024;
                v109 = 1710;
                v99 = "%{public}s::%d:invalid apple80211API";
                goto LABEL_116;
              }
            }

            else
            {
              v98 = WALogCategoryDefaultHandle();
              if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
                v108 = 1024;
                v109 = 1706;
                v99 = "%{public}s::%d:Failed to copy any channels (via IOReportCopyChannelsForDrivers())... all IOReporter metrics disabled";
LABEL_116:
                v100 = v98;
                v101 = 18;
LABEL_117:
                _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, v99, buf, v101);
              }
            }

LABEL_118:

LABEL_119:
            v94 = "Failure";
            goto LABEL_97;
          }

          v34 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
            v108 = 1024;
            v109 = 1662;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:No WiFi Channels exist in cache", buf, 0x12u);
          }

          v35 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
            v108 = 1024;
            v109 = 1664;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Running _scanPredicatesWithMode:kWAIORIOReporterSearchAllStaticPredicates", buf, 0x12u);
          }

          [(WAIOReporterMessagePopulator *)self _scanPredicatesWithMode:0];
          goto LABEL_56;
        }
      }

      else
      {
      }

      LODWORD(cachedUsage) = 0;
    }

    v32 = 1;
    goto LABEL_36;
  }

LABEL_11:
  if (caches != 2)
  {
    goto LABEL_15;
  }

  cachedPredicatesNotYetFound = [(WAIOReporterMessagePopulator *)self cachedPredicatesNotYetFound];
  if (!cachedPredicatesNotYetFound || (v15 = cachedPredicatesNotYetFound, -[WAIOReporterMessagePopulator cachedPredicatesNotYetFound](self, "cachedPredicatesNotYetFound"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 count], v16, v15, v17))
  {
    caches = 2;
    goto LABEL_15;
  }

  v96 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v107 = "[WAIOReporterMessagePopulator _findChannelsAndBuildChannelCaches:]";
    v108 = 1024;
    v109 = 1637;
    _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:predicateSearch kWAIORIOReporterSearchUnfoundPredicates when cachedPredicatesNotYetFound count == 0 returning without scanning", buf, 0x12u);
  }

LABEL_103:
}

- (unsigned)_iorPreparedForSampling:(unsigned __int8)sampling
{
  samplingCopy = sampling;
  v102 = 0;
  cachedIOPopAvailableChannels = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
  v6 = &WAXPCRequestDelegateInterface_ptr;
  v7 = [NSNumber numberWithUnsignedInteger:5];
  v8 = [cachedIOPopAvailableChannels objectForKeyedSubscript:v7];

  if (!v8)
  {
    getInfraApple80211 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(getInfraApple80211, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v104 = "[WAIOReporterMessagePopulator _iorPreparedForSampling:]";
      v105 = 1024;
      v106 = 1787;
      _os_log_impl(&_mh_execute_header, getInfraApple80211, OS_LOG_TYPE_ERROR, "%{public}s::%d:No Channels to build into subscriptions, find channels first", buf, 0x12u);
    }

    v45 = 0;
    goto LABEL_96;
  }

  cachedIOReportSubbedChannels = [(WAIOReporterMessagePopulator *)self cachedIOReportSubbedChannels];

  if (!cachedIOReportSubbedChannels)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    [(WAIOReporterMessagePopulator *)self setCachedIOReportSubbedChannels:v10];
  }

  cachedIOReportSample = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];

  if (!cachedIOReportSample)
  {
    v12 = objc_alloc_init(NSMutableDictionary);
    [(WAIOReporterMessagePopulator *)self setCachedIOReportSample:v12];
  }

  v13 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR Prepare IOReporter", "", buf, 2u);
  }

  v99 = samplingCopy;

  cachedIOReportSubbedChannels2 = [(WAIOReporterMessagePopulator *)self cachedIOReportSubbedChannels];
  v15 = [NSNumber numberWithUnsignedInteger:5];
  v16 = [cachedIOReportSubbedChannels2 objectForKeyedSubscript:v15];
  if (!v16)
  {

LABEL_12:
    v22 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v104 = "[WAIOReporterMessagePopulator _iorPreparedForSampling:]";
      v105 = 1024;
      v106 = 1801;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:cachedIOReportSubbedChannels nil - running and caching IOReportCreateSubscription", buf, 0x12u);
    }

    v23 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR IOReportCreateSubscription", "", buf, 2u);
    }

    [WAUtil incrementValueForKey:@"CreateSubscription Calls" inMutableDict:self->_cachedUsage onQueue:self->_queue];
    CFAllocatorGetDefault();
    cachedIOPopAvailableChannels2 = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
    v25 = [NSNumber numberWithUnsignedInteger:5];
    v26 = [cachedIOPopAvailableChannels2 objectForKeyedSubscript:v25];
    IOReportCreateSubscription();

    [WAUtil incrementValueForKey:@"CreateSubscription Failed Calls" inMutableDict:self->_cachedUsage onQueue:self->_queue];
    v40 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v104 = "[WAIOReporterMessagePopulator _iorPreparedForSampling:]";
      v105 = 1024;
      v106 = 1813;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to create iorsub and subbedChannelsRef", buf, 0x12u);
    }

    goto LABEL_88;
  }

  v17 = v16;
  cachedIOReportSubbedChannels3 = [(WAIOReporterMessagePopulator *)self cachedIOReportSubbedChannels];
  v19 = [NSNumber numberWithUnsignedInteger:5];
  v20 = [cachedIOReportSubbedChannels3 objectForKeyedSubscript:v19];
  v21 = [v20 objectForKeyedSubscript:@"iorsub"];

  v6 = &WAXPCRequestDelegateInterface_ptr;
  if (!v21)
  {
    goto LABEL_12;
  }

  cachedIOReportSubbedChannels4 = [(WAIOReporterMessagePopulator *)self cachedIOReportSubbedChannels];
  v28 = [NSNumber numberWithUnsignedInteger:5];
  v29 = [cachedIOReportSubbedChannels4 objectForKeyedSubscript:v28];
  v30 = [v29 objectForKeyedSubscript:@"iorsub"];

  if (!v30)
  {
    v40 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v104 = "[WAIOReporterMessagePopulator _iorPreparedForSampling:]";
      v105 = 1024;
      v106 = 1828;
      v75 = "%{public}s::%d:Don't have iorsub, bailing";
LABEL_86:
      v78 = v40;
      v79 = 18;
LABEL_87:
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, v75, buf, v79);
    }

LABEL_88:

    v45 = 0;
    goto LABEL_89;
  }

  cachedIOReportSample2 = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
  v32 = [NSNumber numberWithUnsignedInteger:5];
  v33 = [cachedIOReportSample2 objectForKeyedSubscript:v32];
  if (!v33)
  {

    goto LABEL_22;
  }

  v34 = v33;
  cachedIOReportSample3 = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
  v36 = [NSNumber numberWithUnsignedInteger:5];
  v37 = [cachedIOReportSample3 objectForKeyedSubscript:v36];
  v38 = [v37 objectForKeyedSubscript:@"sampleValues"];

  v6 = &WAXPCRequestDelegateInterface_ptr;
  if (!v38)
  {
LABEL_22:
    v39 = WALogCategoryDefaultHandle();
    v40 = v39;
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_88;
    }

    *buf = 136446722;
    v104 = "[WAIOReporterMessagePopulator _iorPreparedForSampling:]";
    v105 = 1024;
    v106 = 1833;
    v107 = 2112;
    v108 = @"WAIORPopSuperSet";
    v75 = "%{public}s::%d:sampleValues not yet saved, but subbedChannelsRef isn't set - state mismatch for: %@, clearing cache";
    v78 = v40;
    v79 = 28;
    goto LABEL_87;
  }

  cachedIOReportSample4 = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
  v42 = [NSNumber numberWithUnsignedInteger:5];
  v43 = [cachedIOReportSample4 objectForKeyedSubscript:v42];
  v44 = [v43 objectForKeyedSubscript:@"structuredDict"];

  if (v44)
  {
    v45 = 0;
    goto LABEL_33;
  }

  v46 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v46))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR createStructuredIOReportDictionary", "", buf, 2u);
  }

  v47 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v104 = "[WAIOReporterMessagePopulator _iorPreparedForSampling:]";
    v105 = 1024;
    v106 = 1877;
    v107 = 2112;
    v108 = @"WAIORPopSuperSet";
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Making createStructuredIOReportDictionary for %@", buf, 0x1Cu);
  }

  cachedIOReportSample5 = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
  v49 = [NSNumber numberWithUnsignedInteger:5];
  v50 = [cachedIOReportSample5 objectForKeyedSubscript:v49];
  v51 = [v50 objectForKeyedSubscript:@"sampleValues"];

  if (!v51)
  {
    v40 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v104 = "[WAIOReporterMessagePopulator _iorPreparedForSampling:]";
      v105 = 1024;
      v106 = 1880;
      v75 = "%{public}s::%d:sampleValues is nil when creating structured dict";
      goto LABEL_86;
    }

    goto LABEL_88;
  }

  v45 = [(WAIOReporterMessagePopulator *)self _createStructuredIOReportDictionary:v51];
  v52 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v52))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v52, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR createStructuredIOReportDictionary", "", buf, 2u);
  }

  cachedIOReportSample6 = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
  v54 = [NSNumber numberWithUnsignedInteger:5];
  v55 = [cachedIOReportSample6 objectForKeyedSubscript:v54];
  [v55 setObject:v45 forKeyedSubscript:@"structuredDict"];

LABEL_33:
  if (v99 == 1)
  {
    v56 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v56))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR IOReportUpdateSamples", "", buf, 2u);
    }

    cachedIOReportSample7 = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
    v58 = [NSNumber numberWithUnsignedInteger:5];
    v59 = [cachedIOReportSample7 objectForKeyedSubscript:v58];
    v60 = [v59 objectForKeyedSubscript:@"sampleValues"];

    if (!v60)
    {
      v76 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v104 = "[WAIOReporterMessagePopulator _iorPreparedForSampling:]";
        v105 = 1024;
        v106 = 1895;
        v77 = "%{public}s::%d:sampleValues is nil when performing test sample";
        goto LABEL_77;
      }

LABEL_83:

      goto LABEL_89;
    }

    [WAUtil incrementValueForKey:@"UpdateSamples Calls" inMutableDict:self->_cachedUsage onQueue:self->_queue];
    updated = IOReportUpdateSamples();
    v62 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v62))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v62, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR IOReportUpdateSamples", "", buf, 2u);
    }

    if (self->_failNextCreateOrUpdateSample)
    {
      v63 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v104 = "[WAIOReporterMessagePopulator _iorPreparedForSampling:]";
        v105 = 1024;
        v106 = 1904;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%{public}s::%d:Injecting Error to IOReportUpdateSamples due to _failNextCreateOrUpdateSample", buf, 0x12u);
      }

      [WAUtil incrementValueForKey:@"Fault Injection: Create or Update Sample Error" inMutableDict:self->_cachedUsage onQueue:self->_queue];
      v64 = CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainPOSIX, 1, 0);
      v102 = v64;
      self->_failNextCreateOrUpdateSample = 0;
    }

    else
    {
      v64 = 0;
    }

    if (v64)
    {
      v65 = 0;
    }

    else
    {
      v65 = updated;
    }

    if (v65)
    {
      v66 = 1;
    }

    else
    {
      [WAUtil incrementValueForKey:@"UpdateSamples Failed Calls" inMutableDict:self->_cachedUsage onQueue:self->_queue];
      v66 = v102 == 0;
    }

    if ((updated & v66 & 1) == 0)
    {
      v80 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v104 = "[WAIOReporterMessagePopulator _iorPreparedForSampling:]";
        v105 = 1024;
        v106 = 1915;
        v107 = 2112;
        v108 = @"WAIORPopSuperSet";
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "%{public}s::%d:IOReportUpdateSamples failed for populatable: %@", buf, 0x1Cu);
      }

      if (!v102)
      {
LABEL_89:
        cachedIOReportSubbedChannels5 = [(WAIOReporterMessagePopulator *)self cachedIOReportSubbedChannels];
        v83 = [NSNumber numberWithUnsignedInteger:5];
        v84 = [cachedIOReportSubbedChannels5 objectForKeyedSubscript:v83];
        v85 = [v84 objectForKeyedSubscript:@"iorsub"];
        if (v85)
        {
          v86 = v85;
          cachedIOReportSample8 = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
          v88 = [NSNumber numberWithUnsignedInteger:5];
          v101 = cachedIOReportSample8;
          v89 = [cachedIOReportSample8 objectForKeyedSubscript:v88];
          v90 = [v89 objectForKeyedSubscript:@"sampleValues"];
          if (v90)
          {
            v91 = v90;
            [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
            v92 = v100 = cachedIOReportSubbedChannels5;
            [NSNumber numberWithUnsignedInteger:5];
            v93 = v98 = v83;
            v94 = [v92 objectForKeyedSubscript:v93];
            v97 = [v94 objectForKeyedSubscript:@"structuredDict"];

            v6 = &WAXPCRequestDelegateInterface_ptr;
            if (!v97)
            {
              goto LABEL_95;
            }

LABEL_54:
            v69 = 1;
            goto LABEL_58;
          }

          v6 = &WAXPCRequestDelegateInterface_ptr;
        }

LABEL_95:
        v95 = [v6[395] numberWithUnsignedInteger:{5, v97}];
        [(WAIOReporterMessagePopulator *)self _freeSubscriptionSample:v95];

        [WAUtil incrementValueForKey:@"IOR Unprepared For Sample Count" inMutableDict:self->_cachedUsage onQueue:self->_queue];
        [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"IOR Unprepared For Sample Date"];
        cachedUsage = self->_cachedUsage;
        getInfraApple80211 = +[NSDate now];
        [(NSMutableDictionary *)cachedUsage setObject:getInfraApple80211 forKey:@"IOR Unprepared For Sample Date"];
LABEL_96:
        v69 = 0;
        goto LABEL_57;
      }

      v76 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [(__CFString *)v102 localizedDescription];
        *buf = 136446978;
        v104 = "[WAIOReporterMessagePopulator _iorPreparedForSampling:]";
        v105 = 1024;
        v106 = 1915;
        v107 = 2112;
        v108 = v102;
        v109 = 2112;
        v110 = localizedDescription;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error returned from IOReportUpdateSamples(): %@ - localized description: %@", buf, 0x26u);
      }

      goto LABEL_83;
    }
  }

  infraInterfaceName = [(WAIOReporterMessagePopulator *)self infraInterfaceName];
  if ([infraInterfaceName isEqualToString:@"dunno"])
  {
  }

  else
  {
    infraInterfaceName2 = [(WAIOReporterMessagePopulator *)self infraInterfaceName];

    if (infraInterfaceName2)
    {
      goto LABEL_54;
    }
  }

  v70 = +[WAApple80211Manager sharedObject];
  getInfraApple80211 = [v70 getInfraApple80211];

  if (!getInfraApple80211)
  {
    v76 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v104 = "[WAIOReporterMessagePopulator _iorPreparedForSampling:]";
      v105 = 1024;
      v106 = 1920;
      v77 = "%{public}s::%d:invalid apple80211API";
LABEL_77:
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, v77, buf, 0x12u);
      goto LABEL_83;
    }

    goto LABEL_83;
  }

  ifName = [getInfraApple80211 ifName];
  [(WAIOReporterMessagePopulator *)self setInfraInterfaceName:ifName];

  v69 = 1;
LABEL_57:

LABEL_58:
  if (v102)
  {
    CFRelease(v102);
  }

  v73 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v73))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v73, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR Prepare IOReporter", "", buf, 2u);
  }

  return v69;
}

- (void)determineChannelsPerIORPopulatable
{
  objc_initWeak(&location, self);
  v3 = WALogCategoryDefaultHandle();
  v4 = os_signpost_id_generate(v3);

  v5 = WALogCategoryDefaultHandle();
  v6 = v5;
  if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "IOR determineChannelsPerIORPopulatable", "", buf, 2u);
  }

  queue = [(WAIOReporterMessagePopulator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002CCB4;
  block[3] = &unk_1000ED858;
  objc_copyWeak(v9, &location);
  block[4] = self;
  v9[1] = v4;
  dispatch_sync(queue, block);

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)determineChannelsPerIORPopulatableWithinPopulatorBlock
{
  if (!self->_hasAttemptedUnpersisting)
  {
    [(WAIOReporterMessagePopulator *)self unpersistIORObjects];
  }

  [WAUtil incrementValueForKey:@"External: Determine Channels Within Blocks Calls" inMutableDict:self->_cachedUsage onQueue:self->_queue];

  [(WAIOReporterMessagePopulator *)self _findChannelsAndBuildChannelCaches:1];
}

- (BOOL)doesMessageNeedPrepopulation:(id)prepopulation
{
  v3 = [qword_10010DD00 objectForKeyedSubscript:prepopulation];
  v4 = v3 != 0;

  return v4;
}

- (void)prepopulateMessageWithinPopulatorBlock:(id)block forProcess:(id)process groupType:(int64_t)type andReply:(id)reply
{
  blockCopy = block;
  processCopy = process;
  replyCopy = reply;
  if (!self->_hasAttemptedUnpersisting)
  {
    [(WAIOReporterMessagePopulator *)self _unpersistIORObjects];
  }

  [(WAIOReporterMessagePopulator *)self _prepopulateMessage:blockCopy forProcess:processCopy groupType:type andReply:replyCopy isResubscribe:0];
}

- (void)prepopulateMessage:(id)message forProcess:(id)process groupType:(int64_t)type andReply:(id)reply
{
  messageCopy = message;
  processCopy = process;
  replyCopy = reply;
  objc_initWeak(&location, self);
  v13 = WALogCategoryDefaultHandle();
  v14 = os_signpost_id_generate(v13);

  v15 = WALogCategoryDefaultHandle();
  v16 = v15;
  if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    originalClassName = [messageCopy originalClassName];
    *buf = 138543362;
    v29 = originalClassName;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "IOR prepopulateMessage", " message=%{public, signpost.description:attribute}@ ", buf, 0xCu);
  }

  queue = [(WAIOReporterMessagePopulator *)self queue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002D0E4;
  v22[3] = &unk_1000ED8A8;
  objc_copyWeak(v26, &location);
  v22[4] = self;
  v23 = messageCopy;
  v24 = processCopy;
  v25 = replyCopy;
  v26[1] = type;
  v26[2] = v14;
  v19 = replyCopy;
  v20 = processCopy;
  v21 = messageCopy;
  dispatch_sync(queue, v22);

  objc_destroyWeak(v26);
  objc_destroyWeak(&location);
}

- (void)_prepopulateMessage:(id)message forProcess:(id)process groupType:(int64_t)type andReply:(id)reply isResubscribe:(BOOL)resubscribe
{
  messageCopy = message;
  processCopy = process;
  replyCopy = reply;
  v12 = messageCopy;
  v137 = 0;
  messageDelegate = [(WAIOReporterMessagePopulator *)self messageDelegate];
  v13 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR PrepopulateIOReporterChannels", "", buf, 2u);
  }

  [WAUtil incrementValueForKey:@"Populate IOReporter Calls" inMutableDict:self->_cachedUsage onQueue:self->_queue];
  if (!v12)
  {
    v104 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
      v140 = 1024;
      v141 = 2049;
      v105 = "%{public}s::%d:ERROR messageToPopulate == nil";
LABEL_113:
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, v105, buf, 0x12u);
    }

LABEL_114:

LABEL_82:
    v56 = 0;
    v49 = processCopy;
    goto LABEL_55;
  }

  v14 = qword_10010DD00;
  originalClassName = [v12 originalClassName];
  v16 = [v14 objectForKeyedSubscript:originalClassName];

  if (!v16)
  {
    v104 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      originalClassName2 = [v12 originalClassName];
      v107 = [v12 key];
      *buf = 136446978;
      v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
      v140 = 1024;
      v141 = 2051;
      v142 = 2112;
      v143 = originalClassName2;
      v144 = 2112;
      v145 = v107;
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, "%{public}s::%d:WAMessageAWD with original classname: %@ and key: %@ doesn't appear to be setup to be prepopulated. Sending it back as received.", buf, 0x26u);
    }

    goto LABEL_114;
  }

  cachedIOPopAvailableChannels = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
  v18 = [NSNumber numberWithUnsignedInteger:5];
  v19 = [cachedIOPopAvailableChannels objectForKeyedSubscript:v18];

  if (!v19)
  {
    v20 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
      v140 = 1024;
      v141 = 2055;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Running _findChannelsAndBuildChannelCaches:kWAIORIOReporterSearchAllStaticPredicates", buf, 0x12u);
    }

    [(WAIOReporterMessagePopulator *)self _findChannelsAndBuildChannelCaches:0];
  }

  if (![(WAIOReporterMessagePopulator *)self _iorPreparedForSampling:0])
  {
    [WAUtil incrementValueForKey:@"IOR Full Teardown Count" inMutableDict:self->_cachedUsage onQueue:self->_queue];
    [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"IOR Full Teardown Date"];
    cachedUsage = self->_cachedUsage;
    v22 = +[NSDate now];
    [(NSMutableDictionary *)cachedUsage setObject:v22 forKey:@"IOR Full Teardown Date"];

    [(WAIOReporterMessagePopulator *)self _removeIORChannelsPersistenceFiles];
    [(WAIOReporterMessagePopulator *)self _freeIORCaches];
    v23 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
      v140 = 1024;
      v141 = 2070;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Running _buildOrRescanToBuildChannelAvailabilityCaches:kWAIORIOReporterSearchAllStaticPredicates", buf, 0x12u);
    }

    [(WAIOReporterMessagePopulator *)self _buildOrRescanToBuildChannelAvailabilityCaches:0];
    if (![(WAIOReporterMessagePopulator *)self _iorPreparedForSampling:0])
    {
      v86 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
        v140 = 1024;
        v141 = 2074;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed second to _prepopulateMessage, bailing", buf, 0x12u);
      }

      [WAUtil incrementValueForKey:@"IOR Full Teardown Failed Count" inMutableDict:self->_cachedUsage onQueue:self->_queue];
      goto LABEL_82;
    }

    [WAUtil incrementValueForKey:@"IOR Full Teardown Recovered Count" inMutableDict:self->_cachedUsage onQueue:self->_queue];
  }

  cachedIOPopAvailableChannels2 = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
  v25 = [NSNumber numberWithUnsignedInteger:5];
  v26 = [cachedIOPopAvailableChannels2 objectForKeyedSubscript:v25];

  if (!v26)
  {
    v104 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
      v140 = 1024;
      v141 = 2083;
      v105 = "%{public}s::%d:XPC: Didn't have cachedIOPopAvailableChannels, bailing";
      goto LABEL_113;
    }

    goto LABEL_114;
  }

  cachedIOReportSubbedChannels = [(WAIOReporterMessagePopulator *)self cachedIOReportSubbedChannels];
  v28 = [NSNumber numberWithUnsignedInteger:5];
  v29 = [cachedIOReportSubbedChannels objectForKeyedSubscript:v28];
  v30 = [v29 objectForKeyedSubscript:@"iorsub"];

  if (!v30)
  {
    v108 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
      v140 = 1024;
      v141 = 2088;
      _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: Didn't have cachedIOReportSubbedChannels iorsub, bailing", buf, 0x12u);
    }

    goto LABEL_121;
  }

  cachedIOReportSubbedChannels2 = [(WAIOReporterMessagePopulator *)self cachedIOReportSubbedChannels];
  v32 = [NSNumber numberWithUnsignedInteger:5];
  v33 = [cachedIOReportSubbedChannels2 objectForKeyedSubscript:v32];
  [v33 objectForKeyedSubscript:@"iorsub"];

  cachedIOReportSample = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
  v35 = [NSNumber numberWithUnsignedInteger:5];
  v36 = [cachedIOReportSample objectForKeyedSubscript:v35];
  v37 = [v36 objectForKeyedSubscript:@"sampleValues"];

  if (!v37)
  {
    v109 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      cachedIOReportSample2 = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
      v111 = [NSNumber numberWithUnsignedInteger:5];
      v112 = [cachedIOReportSample2 objectForKeyedSubscript:v111];
      *buf = 136446722;
      v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
      v140 = 1024;
      v141 = 2093;
      v142 = 2112;
      v143 = v112;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_ERROR, "%{public}s::%d:Dont have cachedIOReportSample sampleValues %@", buf, 0x1Cu);
    }

LABEL_121:
    v56 = 0;
    v49 = processCopy;
    goto LABEL_55;
  }

  cachedIOReportSample3 = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
  v39 = [NSNumber numberWithUnsignedInteger:5];
  v40 = [cachedIOReportSample3 objectForKeyedSubscript:v39];
  v41 = [v40 objectForKeyedSubscript:@"sampleValues"];

  v42 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v42))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR IOReportUpdateSamples", "", buf, 2u);
  }

  updated = IOReportUpdateSamples();
  v44 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v44))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR IOReportUpdateSamples", "", buf, 2u);
  }

  if (self->_failNextCreateOrUpdateSample)
  {
    v45 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
      v140 = 1024;
      v141 = 2106;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%{public}s::%d:Injecting Error to IOReportUpdateSamples due to _failNextCreateOrUpdateSample", buf, 0x12u);
    }

    [WAUtil incrementValueForKey:@"Fault Injection: Create or Update Sample Error" inMutableDict:self->_cachedUsage onQueue:self->_queue];
    v46 = CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainPOSIX, 1, 0);
    v137 = v46;
    self->_failNextCreateOrUpdateSample = 0;
  }

  else
  {
    v46 = v137;
  }

  if ((updated & (v46 == 0)) != 0)
  {
    v47 = @"UpdateSamples Calls";
  }

  else
  {
    v47 = @"UpdateSamples Failed Calls";
  }

  [WAUtil incrementValueForKey:v47 inMutableDict:self->_cachedUsage onQueue:self->_queue];
  if (v137)
  {
    v48 = 0;
  }

  else
  {
    v48 = updated;
  }

  if ((v48 & 1) == 0)
  {
    v113 = WALogCategoryDefaultHandle();
    v49 = processCopy;
    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
      v140 = 1024;
      v141 = 2119;
      v142 = 2112;
      v143 = @"WAIORPopSuperSet";
      _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_ERROR, "%{public}s::%d:IOReportUpdateSamples failed for populatable: %@", buf, 0x1Cu);
    }

    if (!v137)
    {
      goto LABEL_134;
    }

    v114 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_133;
    }

    localizedDescription = [(__CFError *)v137 localizedDescription];
    *buf = 136446978;
    v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
    v140 = 1024;
    v141 = 2119;
    v142 = 2112;
    v143 = v137;
    v144 = 2112;
    v145 = localizedDescription;
    v116 = "%{public}s::%d:Error returned from IOReportUpdateSamples(): %@ - localized description: %@";
    goto LABEL_132;
  }

  v49 = processCopy;
  if (!v41)
  {
    v117 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
      v140 = 1024;
      v141 = 2136;
      v142 = 2112;
      v143 = @"WAIORPopSuperSet";
      _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: Failed to get sample values for populatable type: %@", buf, 0x1Cu);
    }

    if (!v137)
    {
      goto LABEL_134;
    }

    v114 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
LABEL_133:

LABEL_134:
      v56 = 0;
      goto LABEL_55;
    }

    localizedDescription = [(__CFError *)v137 localizedDescription];
    *buf = 136446978;
    v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
    v140 = 1024;
    v141 = 2136;
    v142 = 2112;
    v143 = v137;
    v144 = 2112;
    v145 = localizedDescription;
    v116 = "%{public}s::%d:Error returned from IOReportCreateSamples(): %@ - localized description: %@";
LABEL_132:
    _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_ERROR, v116, buf, 0x26u);

    goto LABEL_133;
  }

  infraInterfaceName = [(WAIOReporterMessagePopulator *)self infraInterfaceName];
  if (!infraInterfaceName || (v51 = infraInterfaceName, -[WAIOReporterMessagePopulator infraInterfaceName](self, "infraInterfaceName"), v52 = objc_claimAutoreleasedReturnValue(), v53 = [v52 isEqualToString:@"dunno"], v52, v51, v53))
  {
    v54 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      infraInterfaceName2 = [(WAIOReporterMessagePopulator *)self infraInterfaceName];
      *buf = 136446722;
      v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
      v140 = 1024;
      v141 = 2138;
      v142 = 2112;
      v143 = infraInterfaceName2;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%{public}s::%d:Bad infraInterfaceName: %@", buf, 0x1Cu);
    }

    v56 = 0;
    goto LABEL_55;
  }

  v57 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
  {
    cachedIOReportSample4 = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
    v59 = [NSNumber numberWithUnsignedInteger:5];
    v60 = [cachedIOReportSample4 objectForKeyedSubscript:v59];
    v61 = [v60 count];
    *buf = 136446722;
    v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
    v140 = 1024;
    v141 = 2140;
    v142 = 2048;
    v143 = v61;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "%{public}s::%d:cachedIOReportSample has %lu entries in dictionary", buf, 0x1Cu);
  }

  cachedIOReportSample5 = [(WAIOReporterMessagePopulator *)self cachedIOReportSample];
  v63 = [NSNumber numberWithUnsignedInteger:5];
  v64 = [cachedIOReportSample5 objectForKeyedSubscript:v63];
  v56 = [v64 objectForKeyedSubscript:@"structuredDict"];

  if (v56)
  {
    allKeys = [(__CFString *)v56 allKeys];
    v66 = [allKeys count];

    if (v66)
    {
      v67 = WALogCategoryDefaultHandle();
      if (os_signpost_enabled(v67))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v67, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR PopulationGroup", "", buf, 2u);
      }

      v68 = qword_10010DD00;
      originalClassName3 = [v12 originalClassName];
      v70 = [v68 objectForKeyedSubscript:originalClassName3];
      unsignedIntegerValue = [v70 unsignedIntegerValue];

      v72 = dispatch_group_create();
      dispatch_group_enter(v72);
      dispatch_group_enter(v72);
      if (unsignedIntegerValue > 3)
      {
        if (unsignedIntegerValue <= 5)
        {
          if (unsignedIntegerValue != 4)
          {
            v87 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
              v140 = 1024;
              v141 = 2158;
              _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "%{public}s::%d:WAIORPopSuperSet does not map to a message, replace enumToPopulate of WAIORPopSuperSet back to the intended enumToPopulate", buf, 0x12u);
            }

            goto LABEL_100;
          }

          infraInterfaceName3 = [(WAIOReporterMessagePopulator *)self infraInterfaceName];
          v125[0] = _NSConcreteStackBlock;
          v125[1] = 3221225472;
          v125[2] = sub_10002EFC4;
          v125[3] = &unk_1000ED8D0;
          v125[4] = self;
          v127 = replyCopy;
          v126 = v72;
          sub_100020C80(v126, v12, v41, v56, messageDelegate, v95, processCopy, infraInterfaceName3, v125);

          v75 = v127;
          goto LABEL_99;
        }

        if (unsignedIntegerValue == 6)
        {
          v99 = WALogCategoryDefaultHandle();
          if (os_signpost_enabled(v99))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v99, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR WAIORPopNWPeerActivity Iterator", "", buf, 2u);
          }

          getPerPeerPopulator = [(WAIOReporterMessagePopulator *)self getPerPeerPopulator];
          sampleTrackedPeers = [getPerPeerPopulator sampleTrackedPeers];

          v102 = [(WAIOReporterMessagePopulator *)self _createStructuredIOReportDictionary:sampleTrackedPeers];
          infraInterfaceName4 = [(WAIOReporterMessagePopulator *)self infraInterfaceName];
          v131[0] = _NSConcreteStackBlock;
          v131[1] = 3221225472;
          v131[2] = sub_10002ED88;
          v131[3] = &unk_1000ED8D0;
          v131[4] = self;
          v133 = replyCopy;
          v132 = v72;
          sub_10001E198(v132, v12, sampleTrackedPeers, v102, messageDelegate, type, processCopy, infraInterfaceName4, v131);

          goto LABEL_100;
        }

        if (unsignedIntegerValue != 7)
        {
          goto LABEL_100;
        }
      }

      else
      {
        if (unsignedIntegerValue > 1)
        {
          if (unsignedIntegerValue == 2)
          {
            infraInterfaceName5 = [(WAIOReporterMessagePopulator *)self infraInterfaceName];
            v128[0] = _NSConcreteStackBlock;
            v128[1] = 3221225472;
            v128[2] = sub_10002EF20;
            v128[3] = &unk_1000ED8D0;
            v128[4] = self;
            v130 = replyCopy;
            v129 = v72;
            sub_100020A80(v129, v12, v41, v56, messageDelegate, type, processCopy, infraInterfaceName5, v128);

            v75 = v130;
          }

          else
          {
            v88 = WALogCategoryDefaultHandle();
            if (os_signpost_enabled(v88))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v88, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR WAIORPopSlowWiFiDiagnosticsCounterSample Iterator", "", buf, 2u);
            }

            infraInterfaceName6 = [(WAIOReporterMessagePopulator *)self infraInterfaceName];
            v122[0] = _NSConcreteStackBlock;
            v122[1] = 3221225472;
            v122[2] = sub_10002F068;
            v122[3] = &unk_1000ED8D0;
            v122[4] = self;
            v124 = replyCopy;
            v123 = v72;
            sub_1000223CC(v123, v12, v41, v56, messageDelegate, v90, processCopy, infraInterfaceName6, v122);

            v75 = v124;
          }

          goto LABEL_99;
        }

        if (unsignedIntegerValue)
        {
          if (unsignedIntegerValue == 1)
          {
            v73 = WALogCategoryDefaultHandle();
            if (os_signpost_enabled(v73))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v73, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR WAIORPopNWActivity Iterator", "", buf, 2u);
            }

            infraInterfaceName7 = [(WAIOReporterMessagePopulator *)self infraInterfaceName];
            v134[0] = _NSConcreteStackBlock;
            v134[1] = 3221225472;
            v134[2] = sub_10002EBF0;
            v134[3] = &unk_1000ED8D0;
            v134[4] = self;
            v136 = replyCopy;
            v135 = v72;
            sub_1000124DC(v135, v12, v41, v56, messageDelegate, type, processCopy, infraInterfaceName7, v134);

            v75 = v136;
LABEL_99:
          }

LABEL_100:
          v97 = dispatch_get_global_queue(2, 0);
          dispatch_group_notify(v72, v97, &stru_1000ED8F0);

          dispatch_group_leave(v72);
          v98 = WALogCategoryDefaultHandle();
          if (os_signpost_enabled(v98))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v98, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR PrepopulateIOReporterChannels", "", buf, 2u);
          }

          v83 = replyCopy;
          goto LABEL_103;
        }
      }

      v91 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        v92 = [v12 key];
        originalClassName4 = [v12 originalClassName];
        *buf = 136446978;
        v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
        v140 = 1024;
        v141 = 2290;
        v142 = 2112;
        v143 = v92;
        v144 = 2112;
        v145 = originalClassName4;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "%{public}s::%d:unhandled WAIOReporterPopulatableType type! not populating message with key: %@ and classname: %@", buf, 0x26u);
      }

      dispatch_group_leave(v72);
      goto LABEL_100;
    }
  }

  v76 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
    v140 = 1024;
    v141 = 2146;
    v142 = 2112;
    v143 = v56;
    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "%{public}s::%d:Bad structuredIOReportSample %@", buf, 0x1Cu);
  }

LABEL_55:
  v77 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v77))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v77, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR PrepopulateExiting", "", buf, 2u);
  }

  if (v137)
  {
    v78 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
      v140 = 1024;
      v141 = 2310;
      v142 = 2112;
      v143 = v137;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "%{public}s::%d:Encountered an IOReporter error trying to prepopulate a message. Error: %@", buf, 0x1Cu);
    }

    v79 = [NSNumber numberWithUnsignedInteger:5];
    [(WAIOReporterMessagePopulator *)self _freeSubscriptionSample:v79];

    CFRelease(v137);
    v137 = 0;
    [(WAIOReporterMessagePopulator *)self _removeIORChannelsPersistenceFiles];
    [(WAIOReporterMessagePopulator *)self _clearIOReporterCache];
    v80 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
      v140 = 1024;
      v141 = 2322;
      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Running _buildOrRescanToBuildChannelAvailabilityCaches:kWAIORIOReporterSearchAllStaticPredicates", buf, 0x12u);
    }

    [(WAIOReporterMessagePopulator *)self _buildOrRescanToBuildChannelAvailabilityCaches:0];
    v81 = WALogCategoryDefaultHandle();
    v82 = v81;
    if (resubscribe)
    {
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
        v140 = 1024;
        v141 = 2330;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "%{public}s::%d:Already attempted a resubscription - returning without success", buf, 0x12u);
      }

      v83 = replyCopy;
    }

    else
    {
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
        v140 = 1024;
        v141 = 2326;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Will attempt a resubscription", buf, 0x12u);
      }

      v83 = replyCopy;
      [(WAIOReporterMessagePopulator *)self _prepopulateMessage:v12 forProcess:v49 groupType:type andReply:replyCopy isResubscribe:1];
      v82 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v139 = "[WAIOReporterMessagePopulator _prepopulateMessage:forProcess:groupType:andReply:isResubscribe:]";
        v140 = 1024;
        v141 = 2328;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Resubscription attempt done", buf, 0x12u);
      }
    }

    v85 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v85))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v85, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR PrepopulateIOReporterChannels", "", buf, 2u);
    }

    v72 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v72))
    {
      *buf = 0;
      goto LABEL_78;
    }
  }

  else
  {
    v83 = replyCopy;
    (*(replyCopy + 2))(replyCopy, 0, 0);
    v84 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v84))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v84, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR PrepopulateIOReporterChannels", "", buf, 2u);
    }

    v72 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v72))
    {
      *buf = 0;
LABEL_78:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v72, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR PrepopulateExiting", "", buf, 2u);
    }
  }

LABEL_103:
}

+ (id)getTmpDir
{
  if (qword_10010DDA0 != -1)
  {
    dispatch_once(&qword_10010DDA0, &stru_1000ED910);
  }

  v3 = qword_10010DD80;

  return v3;
}

+ (id)getIORPopAvailabeIOReportersTempFile
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F3B8;
  block[3] = &unk_1000ED7E0;
  block[4] = self;
  if (qword_10010DDA8 != -1)
  {
    dispatch_once(&qword_10010DDA8, block);
  }

  v2 = qword_10010DD88;

  return v2;
}

+ (id)getUnavailablePredTempFile
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F4F8;
  block[3] = &unk_1000ED7E0;
  block[4] = self;
  if (qword_10010DDB0 != -1)
  {
    dispatch_once(&qword_10010DDB0, block);
  }

  v2 = qword_10010DD90;

  return v2;
}

+ (id)getUsageTempFile
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F638;
  block[3] = &unk_1000ED7E0;
  block[4] = self;
  if (qword_10010DDB8 != -1)
  {
    dispatch_once(&qword_10010DDB8, block);
  }

  v2 = qword_10010DD98;

  return v2;
}

- (void)_removeIORChannelsPersistenceFiles
{
  v2 = +[WAIOReporterMessagePopulator getIORPopAvailabeIOReportersTempFile];
  v3 = [NSURL fileURLWithPath:v2 isDirectory:0];

  v4 = +[NSFileManager defaultManager];
  v23 = 0;
  v5 = [v4 removeItemAtURL:v3 error:&v23];
  v6 = v23;

  if (v5)
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v25 = "[WAIOReporterMessagePopulator _removeIORChannelsPersistenceFiles]";
      v26 = 1024;
      v27 = 2405;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:WAIOReporterMessagePopulator _removePersistenceFile file is not deletable", buf, 0x12u);
    }
  }

  else
  {
    if (v6 && [v6 code] != 2)
    {
      v7 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      underlyingErrors = [v6 underlyingErrors];
      *buf = 136446978;
      v25 = "[WAIOReporterMessagePopulator _removeIORChannelsPersistenceFiles]";
      v26 = 1024;
      v27 = 2400;
      v28 = 2112;
      v29 = v3;
      v30 = 2112;
      v31 = underlyingErrors;
      v9 = "%{public}s::%d:WAIOReporterMessagePopulator _removePersistenceFile error removing file %@: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v7 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      underlyingErrors = [v6 description];
      *buf = 136446978;
      v25 = "[WAIOReporterMessagePopulator _removeIORChannelsPersistenceFiles]";
      v26 = 1024;
      v27 = 2402;
      v28 = 2112;
      v29 = v3;
      v30 = 2112;
      v31 = underlyingErrors;
      v9 = "%{public}s::%d:WAIOReporterMessagePopulator _removePersistenceFile successful or does not exist %@: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(&_mh_execute_header, v10, v11, v9, buf, 0x26u);
  }

LABEL_11:

  v12 = +[WAIOReporterMessagePopulator getUnavailablePredTempFile];
  v13 = [NSURL fileURLWithPath:v12 isDirectory:0];

  v14 = +[NSFileManager defaultManager];
  v22 = v6;
  v15 = [v14 removeItemAtURL:v13 error:&v22];
  v16 = v22;

  if ((v15 & 1) == 0)
  {
    if (v16 && [v16 code] != 2)
    {
      v17 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      underlyingErrors2 = [v16 underlyingErrors];
      *buf = 136446978;
      v25 = "[WAIOReporterMessagePopulator _removeIORChannelsPersistenceFiles]";
      v26 = 1024;
      v27 = 2411;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = underlyingErrors2;
      v19 = "%{public}s::%d:WAIOReporterMessagePopulator _removePersistenceFile error removing file %@: %@";
      v20 = v17;
      v21 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v17 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      underlyingErrors2 = [v16 description];
      *buf = 136446978;
      v25 = "[WAIOReporterMessagePopulator _removeIORChannelsPersistenceFiles]";
      v26 = 1024;
      v27 = 2413;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = underlyingErrors2;
      v19 = "%{public}s::%d:WAIOReporterMessagePopulator _removePersistenceFile successful or does not exist %@: %@";
      v20 = v17;
      v21 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(&_mh_execute_header, v20, v21, v19, buf, 0x26u);

    goto LABEL_21;
  }

  v17 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v25 = "[WAIOReporterMessagePopulator _removeIORChannelsPersistenceFiles]";
    v26 = 1024;
    v27 = 2416;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:WAIOReporterMessagePopulator _removePersistenceFile file is not deletable", buf, 0x12u);
  }

LABEL_21:
}

- (void)_clearIOReporterCache
{
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v9 = 136446466;
    v10 = "[WAIOReporterMessagePopulator _clearIOReporterCache]";
    v11 = 1024;
    v12 = 2423;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:Removing IOReporter Cache", &v9, 0x12u);
  }

  v4 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v4))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR clearIOReporterCache", "", &v9, 2u);
  }

  [WAUtil incrementValueForKey:@"clearIOReporterCaches Calls" inMutableDict:self->_cachedUsage onQueue:self->_queue];
  cachedIOPopAvailableChannels = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
  [cachedIOPopAvailableChannels removeAllObjects];

  cachedChannelsCountPerIORPopulatable = [(WAIOReporterMessagePopulator *)self cachedChannelsCountPerIORPopulatable];
  [cachedChannelsCountPerIORPopulatable removeAllObjects];

  cachedPredicatesNotYetFound = [(WAIOReporterMessagePopulator *)self cachedPredicatesNotYetFound];
  [cachedPredicatesNotYetFound removeAllObjects];

  v8 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v8))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR clearIOReporterCache", "", &v9, 2u);
  }
}

- (void)injectErrorOnNextCreateOrUpdateSample
{
  objc_initWeak(&location, self);
  queue = [(WAIOReporterMessagePopulator *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002FDE0;
  v4[3] = &unk_1000ED938;
  objc_copyWeak(&v5, &location);
  dispatch_sync(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR encodeWithCoder", "", &v9, 2u);
  }

  [coderCopy encodeObject:self->_cachedChannelsCountPerIORPopulatable forKey:@"_cachedChannelsCountPerIORPopulatable"];
  v6 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    cachedChannelsCountPerIORPopulatable = self->_cachedChannelsCountPerIORPopulatable;
    v9 = 136446722;
    v10 = "[WAIOReporterMessagePopulator encodeWithCoder:]";
    v11 = 1024;
    v12 = 2455;
    v13 = 2112;
    v14 = cachedChannelsCountPerIORPopulatable;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:encoded _cachedChannelsCountPerIORPopulatable %@", &v9, 0x1Cu);
  }

  v8 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v8))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR encodeWithCoder", "", &v9, 2u);
  }
}

- (WAIOReporterMessagePopulator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = WAIOReporterMessagePopulator;
  v5 = [(WAIOReporterMessagePopulator *)&v17 init];
  if (v5)
  {
    if (qword_10010DD78 != -1)
    {
      dispatch_once(&qword_10010DD78, &stru_1000ED7C0);
    }

    if (qword_10010DD48 != -1)
    {
      dispatch_once(&qword_10010DD48, &stru_1000ED700);
    }

    if (qword_10010DD58 != -1)
    {
      dispatch_once(&qword_10010DD58, &stru_1000ED740);
    }

    if (qword_10010DD60 != -1)
    {
      dispatch_once(&qword_10010DD60, &stru_1000ED760);
    }

    if (qword_10010DD68 != -1)
    {
      dispatch_once(&qword_10010DD68, &stru_1000ED780);
    }

    if (qword_10010DD70 != -1)
    {
      dispatch_once(&qword_10010DD70, &stru_1000ED7A0);
    }

    v6 = [NSString stringWithFormat:@"dunno"];
    [(WAIOReporterMessagePopulator *)v5 setInfraInterfaceName:v6];

    *&v5->_ioReportersCacheNeedsUpdating = 0;
    v5->_persistFileExistedAtPIDLoad = 0;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.wifi.analytics.IOReporterQ", v7);
    [(WAIOReporterMessagePopulator *)v5 setQueue:v8];

    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_cachedChannelsCountPerIORPopulatable"];
    cachedChannelsCountPerIORPopulatable = v5->_cachedChannelsCountPerIORPopulatable;
    v5->_cachedChannelsCountPerIORPopulatable = v11;

    v13 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = v5->_cachedChannelsCountPerIORPopulatable;
      *buf = 136446722;
      v19 = "[WAIOReporterMessagePopulator initWithCoder:]";
      v20 = 1024;
      v21 = 2487;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s::%d:initWithCoder _cachedChannelsCountPerIORPopulatable %@", buf, 0x1Cu);
    }

    drvName = v5->_drvName;
    v5->_drvName = 0;
  }

  return v5;
}

- (void)unpersistIORObjects
{
  objc_initWeak(&location, self);
  queue = [(WAIOReporterMessagePopulator *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100030364;
  v4[3] = &unk_1000ED938;
  objc_copyWeak(&v5, &location);
  dispatch_sync(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_unpersistIORObjects
{
  v3 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR Unpersist", "", buf, 2u);
  }

  [(WAIOReporterMessagePopulator *)self setCachedIOPopAvailableChannels:0];
  [(WAIOReporterMessagePopulator *)self setCachedPredicatesNotYetFound:0];
  [(WAIOReporterMessagePopulator *)self setCachedUsage:0];
  v4 = objc_autoreleasePoolPush();
  v5 = &WAXPCRequestDelegateInterface_ptr;
  v6 = &selRef_setCoreCaptureControl_;
  v7 = +[WAIOReporterMessagePopulator getIORPopAvailabeIOReportersTempFile];
  v98 = 0;
  v8 = [NSData dataWithContentsOfFile:v7 options:8 error:&v98];
  v9 = v98;

  v10 = WALogCategoryDefaultHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (!v11)
    {
      goto LABEL_22;
    }

    *buf = 136446466;
    v100 = "[WAIOReporterMessagePopulator _unpersistIORObjects]";
    v101 = 1024;
    v102 = 2554;
    v13 = "%{public}s::%d:unpersist cachedIOPopAvailableChannels file not available";
    v14 = v10;
    v15 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_11;
  }

  if (v11)
  {
    v12 = [v8 length];
    *buf = 136446722;
    v100 = "[WAIOReporterMessagePopulator _unpersistIORObjects]";
    v101 = 1024;
    v102 = 2536;
    v103 = 2048;
    v104 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:from file: cachedIOPopAvailableChannelsData NSData sizeof is %lu", buf, 0x1Cu);
  }

  if (v9)
  {
    v10 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136446466;
    v100 = "[WAIOReporterMessagePopulator _unpersistIORObjects]";
    v101 = 1024;
    v102 = 2551;
    v13 = "%{public}s::%d:Failed to unpersist cachedIOPopAvailableChannels";
    v14 = v10;
    v15 = OS_LOG_TYPE_ERROR;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v14, v15, v13, buf, 0x12u);
    goto LABEL_22;
  }

  v90 = v4;
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = [NSSet setWithObjects:v16, v17, v18, v19, v20, v21, v22, objc_opt_class(), 0];
  v97 = 0;
  v10 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v23 fromData:v8 error:&v97];
  v24 = v97;

  v25 = WALogCategoryDefaultHandle();
  v26 = v25;
  if (v24 || !v10)
  {
    v6 = &selRef_setCoreCaptureControl_;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v100 = "[WAIOReporterMessagePopulator _unpersistIORObjects]";
      v101 = 1024;
      v102 = 2542;
      v103 = 2112;
      v104 = v24;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive cachedIOPopAvailableChannels: %@", buf, 0x1Cu);
    }

    v4 = v90;
    v5 = &WAXPCRequestDelegateInterface_ptr;
  }

  else
  {
    v6 = &selRef_setCoreCaptureControl_;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      *buf = 136446722;
      v100 = "[WAIOReporterMessagePopulator _unpersistIORObjects]";
      v101 = 1024;
      v102 = 2545;
      v103 = 2112;
      v104 = v27;
      v28 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:unpersist rootChannelDictionary class is %@", buf, 0x1Cu);
    }

    [(WAIOReporterMessagePopulator *)self setCachedIOPopAvailableChannels:v10];
    v29 = WALogCategoryDefaultHandle();
    v4 = v90;
    v5 = &WAXPCRequestDelegateInterface_ptr;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v100 = "[WAIOReporterMessagePopulator _unpersistIORObjects]";
      v101 = 1024;
      v102 = 2548;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:unpersist cachedIOPopAvailableChannels success", buf, 0x12u);
    }
  }

LABEL_22:

  v30 = v5[428];
  getUnavailablePredTempFile = [v6 + 381 getUnavailablePredTempFile];
  v96 = 0;
  v32 = [v30 dataWithContentsOfFile:getUnavailablePredTempFile options:8 error:&v96];
  v33 = v96;

  v34 = WALogCategoryDefaultHandle();
  v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
  if (!v32)
  {
    if (!v35)
    {
      goto LABEL_41;
    }

    *buf = 136446466;
    v100 = "[WAIOReporterMessagePopulator _unpersistIORObjects]";
    v101 = 1024;
    v102 = 2580;
    v37 = "%{public}s::%d:unpersist cachedPredicatesNotYetFound file not available";
    v38 = v34;
    v39 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_30;
  }

  if (v35)
  {
    v36 = [v32 length];
    *buf = 136446722;
    v100 = "[WAIOReporterMessagePopulator _unpersistIORObjects]";
    v101 = 1024;
    v102 = 2563;
    v103 = 2048;
    v104 = v36;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:from file: cachedUnavailableArrayData NSData sizeof is %lu", buf, 0x1Cu);
  }

  if (v33)
  {
    v34 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 136446466;
    v100 = "[WAIOReporterMessagePopulator _unpersistIORObjects]";
    v101 = 1024;
    v102 = 2577;
    v37 = "%{public}s::%d:Failed to unpersist cachedPredicatesNotYetFound";
    v38 = v34;
    v39 = OS_LOG_TYPE_ERROR;
LABEL_30:
    _os_log_impl(&_mh_execute_header, v38, v39, v37, buf, 0x12u);
    goto LABEL_41;
  }

  v91 = v4;
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = v5[428];
  v45 = objc_opt_class();
  v46 = objc_opt_class();
  v47 = objc_opt_class();
  v48 = [NSSet setWithObjects:v40, v41, v42, v43, v45, v46, v47, objc_opt_class(), 0];
  v95 = 0;
  v34 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v48 fromData:v32 error:&v95];
  v49 = v95;

  v50 = WALogCategoryDefaultHandle();
  v51 = v50;
  if (v49 || !v34)
  {
    v6 = &selRef_setCoreCaptureControl_;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v100 = "[WAIOReporterMessagePopulator _unpersistIORObjects]";
      v101 = 1024;
      v102 = 2568;
      v103 = 2112;
      v104 = v49;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive cachedPredicatesNotYetFound: %@", buf, 0x1Cu);
    }

    v4 = v91;
    v5 = &WAXPCRequestDelegateInterface_ptr;
  }

  else
  {
    v4 = v91;
    v6 = &selRef_setCoreCaptureControl_;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v52 = objc_opt_class();
      *buf = 136446722;
      v100 = "[WAIOReporterMessagePopulator _unpersistIORObjects]";
      v101 = 1024;
      v102 = 2571;
      v103 = 2112;
      v104 = v52;
      v53 = v52;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:unpersist cachedUnavailableArray class is %@", buf, 0x1Cu);
    }

    [(WAIOReporterMessagePopulator *)self setCachedPredicatesNotYetFound:v34];
    v54 = WALogCategoryDefaultHandle();
    v5 = &WAXPCRequestDelegateInterface_ptr;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v100 = "[WAIOReporterMessagePopulator _unpersistIORObjects]";
      v101 = 1024;
      v102 = 2574;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:unpersist cachedPredicatesNotYetFound success", buf, 0x12u);
    }
  }

LABEL_41:

  v55 = v5[428];
  getUsageTempFile = [v6 + 381 getUsageTempFile];
  v94 = 0;
  v57 = [v55 dataWithContentsOfFile:getUsageTempFile options:8 error:&v94];
  v58 = v94;

  v59 = WALogCategoryDefaultHandle();
  v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
  if (v57)
  {
    if (v60)
    {
      v61 = [v57 length];
      *buf = 136446722;
      v100 = "[WAIOReporterMessagePopulator _unpersistIORObjects]";
      v101 = 1024;
      v102 = 2589;
      v103 = 2048;
      v104 = v61;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:from file: usageDictData NSData sizeof is %lu", buf, 0x1Cu);
    }

    self->_persistFileExistedAtPIDLoad = 1;
    if (v58)
    {
      v62 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v100 = "[WAIOReporterMessagePopulator _unpersistIORObjects]";
        v101 = 1024;
        v102 = 2604;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unpersist cachedUsage", buf, 0x12u);
      }
    }

    else
    {
      v92 = v4;
      v89 = objc_opt_class();
      v63 = objc_opt_class();
      v64 = objc_opt_class();
      v65 = objc_opt_class();
      v66 = v5[428];
      v67 = objc_opt_class();
      v68 = objc_opt_class();
      v69 = objc_opt_class();
      v70 = objc_opt_class();
      v71 = [NSSet setWithObjects:v89, v63, v64, v65, v67, v68, v69, v70, objc_opt_class(), 0];
      v93 = 0;
      v72 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v71 fromData:v57 error:&v93];
      v73 = v93;

      v74 = WALogCategoryDefaultHandle();
      v75 = v74;
      if (v73 || !v72)
      {
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v100 = "[WAIOReporterMessagePopulator _unpersistIORObjects]";
          v101 = 1024;
          v102 = 2595;
          v103 = 2112;
          v104 = v73;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive cachedUsage: %@", buf, 0x1Cu);
        }

        v4 = v92;
      }

      else
      {
        v4 = v92;
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          v76 = objc_opt_class();
          *buf = 136446722;
          v100 = "[WAIOReporterMessagePopulator _unpersistIORObjects]";
          v101 = 1024;
          v102 = 2598;
          v103 = 2112;
          v104 = v76;
          v77 = v76;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:unpersist usageDict class is %@", buf, 0x1Cu);
        }

        [(WAIOReporterMessagePopulator *)self setCachedUsage:v72];
        v78 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v100 = "[WAIOReporterMessagePopulator _unpersistIORObjects]";
          v101 = 1024;
          v102 = 2601;
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:unpersist cachedUsage success", buf, 0x12u);
        }
      }
    }
  }

  else
  {
    if (v60)
    {
      *buf = 136446466;
      v100 = "[WAIOReporterMessagePopulator _unpersistIORObjects]";
      v101 = 1024;
      v102 = 2607;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:unpersist cachedUsage file not available", buf, 0x12u);
    }

    self->_persistFileExistedAtPIDLoad = 0;
  }

  objc_autoreleasePoolPop(v4);
  cachedIOPopAvailableChannels = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
  if (cachedIOPopAvailableChannels || ([(WAIOReporterMessagePopulator *)self cachedPredicatesNotYetFound], (cachedIOPopAvailableChannels = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_64:
    v80 = WALogCategoryDefaultHandle();
    if (!os_signpost_enabled(v80))
    {
      goto LABEL_67;
    }

    *buf = 0;
    v81 = "Success";
    goto LABEL_66;
  }

  cachedUsage = [(WAIOReporterMessagePopulator *)self cachedUsage];

  if (cachedUsage)
  {
    goto LABEL_64;
  }

  v80 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v80))
  {
    *buf = 0;
    v81 = "Fail";
LABEL_66:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v80, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR Unpersist", v81, buf, 2u);
  }

LABEL_67:

  cachedPredicatesNotYetFound = [(WAIOReporterMessagePopulator *)self cachedPredicatesNotYetFound];

  if (!cachedPredicatesNotYetFound)
  {
    v83 = objc_alloc_init(NSMutableArray);
    [(WAIOReporterMessagePopulator *)self setCachedPredicatesNotYetFound:v83];
  }

  cachedUsage2 = [(WAIOReporterMessagePopulator *)self cachedUsage];

  if (!cachedUsage2)
  {
    v85 = objc_alloc_init(NSMutableDictionary);
    [(WAIOReporterMessagePopulator *)self setCachedUsage:v85];
  }

  cachedIOPopAvailableChannels2 = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];

  if (cachedIOPopAvailableChannels2)
  {
    v87 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v100 = "[WAIOReporterMessagePopulator _unpersistIORObjects]";
      v101 = 1024;
      v102 = 2634;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:unpersist cachedIOPopAvailableChannels exists, running _iorPreparedForSampling to build reliant objects", buf, 0x12u);
    }

    [(WAIOReporterMessagePopulator *)self _iorPreparedForSampling:0];
  }

  [(WAIOReporterMessagePopulator *)self _handleUnpersistForUsageData];
  self->_hasAttemptedUnpersisting = 1;
}

- (void)persistIORObjects:(unsigned __int8)objects
{
  objc_initWeak(&location, self);
  queue = [(WAIOReporterMessagePopulator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000313B8;
  block[3] = &unk_1000ED960;
  objc_copyWeak(&v7, &location);
  objectsCopy = objects;
  dispatch_sync(queue, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_persistIORObjects:(unsigned __int8)objects
{
  objectsCopy = objects;
  v5 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOR Persist", "", buf, 2u);
  }

  [(WAIOReporterMessagePopulator *)self _cancelDelayedInvocationForPersist];
  if (objectsCopy == 1)
  {
    [WAUtil incrementValueForKey:@"Terminations - Graceful" inMutableDict:self->_cachedUsage onQueue:self->_queue];
    [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Last Graceful Termination Date"];
    cachedUsage = self->_cachedUsage;
    v7 = +[NSDate date];
    [(NSMutableDictionary *)cachedUsage setObject:v7 forKey:@"Last Graceful Termination Date"];
  }

  [WAUtil incrementValueForKey:@"Persist Calls" inMutableDict:self->_cachedUsage onQueue:self->_queue];
  [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Last Persisted Date"];
  v8 = self->_cachedUsage;
  v9 = +[NSDate date];
  [(NSMutableDictionary *)v8 setObject:v9 forKey:@"Last Persisted Date"];

  [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Last Persisted PID"];
  v10 = self->_cachedUsage;
  v11 = [NSNumber numberWithUnsignedLong:self->_pid];
  [(NSMutableDictionary *)v10 setObject:v11 forKey:@"Last Persisted PID"];

  [(WAIOReporterMessagePopulator *)self _calculateEstimatedUptime];
  v12 = +[NSFileManager defaultManager];
  v13 = +[WAIOReporterMessagePopulator getUsageTempFile];
  LOBYTE(v11) = [v12 fileExistsAtPath:v13];

  if ((v11 & 1) == 0)
  {
    v14 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = +[WAIOReporterMessagePopulator getUsageTempFile];
      *buf = 136446722;
      v64 = "[WAIOReporterMessagePopulator _persistIORObjects:]";
      v65 = 1024;
      v66 = 2682;
      v67 = 2112;
      v68 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Persistence file doesnt yet exist %@", buf, 0x1Cu);
    }

    [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Persist file creation Date"];
    v16 = self->_cachedUsage;
    v17 = +[NSDate date];
    [(NSMutableDictionary *)v16 setObject:v17 forKey:@"Persist file creation Date"];
  }

  v18 = objc_autoreleasePoolPush();
  v19 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = +[WAIOReporterMessagePopulator getUsageTempFile];
    cachedUsage = [(WAIOReporterMessagePopulator *)self cachedUsage];
    v22 = objc_opt_class();
    *buf = 136446978;
    v64 = "[WAIOReporterMessagePopulator _persistIORObjects:]";
    v65 = 1024;
    v66 = 2690;
    v67 = 2112;
    v68 = v20;
    v69 = 2112;
    v70 = v22;
    v23 = v22;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Updating file %@ with cachedUsage of class %@", buf, 0x26u);
  }

  cachedUsage2 = [(WAIOReporterMessagePopulator *)self cachedUsage];
  v62 = 0;
  v25 = [NSKeyedArchiver archivedDataWithRootObject:cachedUsage2 requiringSecureCoding:1 error:&v62];
  v26 = v62;

  v27 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [v25 length];
    *buf = 136446722;
    v64 = "[WAIOReporterMessagePopulator _persistIORObjects:]";
    v65 = 1024;
    v66 = 2693;
    v67 = 2048;
    v68 = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:cachedUsage sizeof is %lu", buf, 0x1Cu);
  }

  if (v26)
  {
    v54 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    *buf = 136446722;
    v64 = "[WAIOReporterMessagePopulator _persistIORObjects:]";
    v65 = 1024;
    v66 = 2694;
    v67 = 2112;
    v68 = v26;
    v55 = "%{public}s::%d:Failed to archive usages: %@";
LABEL_49:
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, v55, buf, 0x1Cu);
    goto LABEL_53;
  }

  v29 = +[WAIOReporterMessagePopulator getUsageTempFile];
  v61 = 0;
  [v25 writeToFile:v29 options:1 error:&v61];
  v26 = v61;

  if (v26)
  {
    v54 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    v56 = +[WAIOReporterMessagePopulator getUsageTempFile];
    *buf = 136446978;
    v64 = "[WAIOReporterMessagePopulator _persistIORObjects:]";
    v65 = 1024;
    v66 = 2696;
    v67 = 2112;
    v68 = v56;
    v69 = 2112;
    v70 = v26;
LABEL_52:
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to write to file %@: %@", buf, 0x26u);

    goto LABEL_53;
  }

  ioReportersCacheNeedsUpdating = self->_ioReportersCacheNeedsUpdating;
  v31 = WALogCategoryDefaultHandle();
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
  if (!ioReportersCacheNeedsUpdating)
  {
    if (v32)
    {
      v53 = +[WAIOReporterMessagePopulator getIORPopAvailabeIOReportersTempFile];
      *buf = 136446722;
      v64 = "[WAIOReporterMessagePopulator _persistIORObjects:]";
      v65 = 1024;
      v66 = 2728;
      v67 = 2112;
      v68 = v53;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Didn't find new channels, not updating file %@", buf, 0x1Cu);
    }

    v51 = WALogCategoryDefaultHandle();
    if (!os_signpost_enabled(v51))
    {
      goto LABEL_37;
    }

    *buf = 0;
    v52 = "Skipped";
    goto LABEL_36;
  }

  if (v32)
  {
    v33 = +[WAIOReporterMessagePopulator getIORPopAvailabeIOReportersTempFile];
    cachedIOPopAvailableChannels = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
    v35 = objc_opt_class();
    *buf = 136446978;
    v64 = "[WAIOReporterMessagePopulator _persistIORObjects:]";
    v65 = 1024;
    v66 = 2703;
    v67 = 2112;
    v68 = v33;
    v69 = 2112;
    v70 = v35;
    v36 = v35;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Updating file %@ with cachedIOPopAvailableChannels of class %@", buf, 0x26u);
  }

  cachedIOPopAvailableChannels2 = [(WAIOReporterMessagePopulator *)self cachedIOPopAvailableChannels];
  v60 = 0;
  v25 = [NSKeyedArchiver archivedDataWithRootObject:cachedIOPopAvailableChannels2 requiringSecureCoding:1 error:&v60];
  v26 = v60;

  v38 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [v25 length];
    *buf = 136446722;
    v64 = "[WAIOReporterMessagePopulator _persistIORObjects:]";
    v65 = 1024;
    v66 = 2706;
    v67 = 2048;
    v68 = v39;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:cachedIOPopAvailableChannels sizeof is %lu", buf, 0x1Cu);
  }

  if (v26)
  {
    v54 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    *buf = 136446722;
    v64 = "[WAIOReporterMessagePopulator _persistIORObjects:]";
    v65 = 1024;
    v66 = 2707;
    v67 = 2112;
    v68 = v26;
    v55 = "%{public}s::%d:Failed to archive desired channels: %@";
    goto LABEL_49;
  }

  v40 = +[WAIOReporterMessagePopulator getIORPopAvailabeIOReportersTempFile];
  v59 = 0;
  [v25 writeToFile:v40 options:1 error:&v59];
  v26 = v59;

  if (v26)
  {
    v54 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    v56 = +[WAIOReporterMessagePopulator getIORPopAvailabeIOReportersTempFile];
    *buf = 136446978;
    v64 = "[WAIOReporterMessagePopulator _persistIORObjects:]";
    v65 = 1024;
    v66 = 2709;
    v67 = 2112;
    v68 = v56;
    v69 = 2112;
    v70 = v26;
    goto LABEL_52;
  }

  v41 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = +[WAIOReporterMessagePopulator getUnavailablePredTempFile];
    cachedPredicatesNotYetFound = [(WAIOReporterMessagePopulator *)self cachedPredicatesNotYetFound];
    v44 = objc_opt_class();
    *buf = 136446978;
    v64 = "[WAIOReporterMessagePopulator _persistIORObjects:]";
    v65 = 1024;
    v66 = 2714;
    v67 = 2112;
    v68 = v42;
    v69 = 2112;
    v70 = v44;
    v45 = v44;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Updating file %@ with cachedPredicatesNotYetFound of class %@", buf, 0x26u);
  }

  cachedPredicatesNotYetFound2 = [(WAIOReporterMessagePopulator *)self cachedPredicatesNotYetFound];
  v58 = 0;
  v25 = [NSKeyedArchiver archivedDataWithRootObject:cachedPredicatesNotYetFound2 requiringSecureCoding:1 error:&v58];
  v26 = v58;

  v47 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = [v25 length];
    *buf = 136446722;
    v64 = "[WAIOReporterMessagePopulator _persistIORObjects:]";
    v65 = 1024;
    v66 = 2717;
    v67 = 2048;
    v68 = v48;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:cachedPredicatesNotYetFound sizeof is %lu", buf, 0x1Cu);
  }

  if (v26)
  {
    v54 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    *buf = 136446722;
    v64 = "[WAIOReporterMessagePopulator _persistIORObjects:]";
    v65 = 1024;
    v66 = 2718;
    v67 = 2112;
    v68 = v26;
    v55 = "%{public}s::%d:Failed to archive cachedPredicatesNotYetFound: %@";
    goto LABEL_49;
  }

  v49 = +[WAIOReporterMessagePopulator getUnavailablePredTempFile];
  v57 = 0;
  [v25 writeToFile:v49 options:1 error:&v57];
  v26 = v57;

  if (v26)
  {
    v54 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v56 = +[WAIOReporterMessagePopulator getUnavailablePredTempFile];
      *buf = 136446978;
      v64 = "[WAIOReporterMessagePopulator _persistIORObjects:]";
      v65 = 1024;
      v66 = 2720;
      v67 = 2112;
      v68 = v56;
      v69 = 2112;
      v70 = v26;
      goto LABEL_52;
    }

LABEL_53:

    goto LABEL_38;
  }

  v50 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v64 = "[WAIOReporterMessagePopulator _persistIORObjects:]";
    v65 = 1024;
    v66 = 2725;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DONE", buf, 0x12u);
  }

  v51 = WALogCategoryDefaultHandle();
  if (!os_signpost_enabled(v51))
  {
    goto LABEL_37;
  }

  *buf = 0;
  v52 = "Success";
LABEL_36:
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOR Persist", v52, buf, 2u);
LABEL_37:

  self->_ioReportersCacheNeedsUpdating = 0;
LABEL_38:
  objc_autoreleasePoolPop(v18);
}

- (void)_cancelDelayedInvocationForPersist
{
  if (self->_persistTimerRunning)
  {
    persistTimer = self->_persistTimer;
    if (persistTimer)
    {
      if (!dispatch_source_testcancel(persistTimer))
      {
        v4 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 136446466;
          v8 = "[WAIOReporterMessagePopulator _cancelDelayedInvocationForPersist]";
          v9 = 1024;
          v10 = 2744;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Timer exists and is valid, Suspending", &v7, 0x12u);
        }

        dispatch_suspend(self->_persistTimer);
        self->_persistTimerRunning = 0;
        v5 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          persistTimerRunning = self->_persistTimerRunning;
          v7 = 136446722;
          v8 = "[WAIOReporterMessagePopulator _cancelDelayedInvocationForPersist]";
          v9 = 1024;
          v10 = 2747;
          v11 = 1024;
          v12 = persistTimerRunning;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:setting _persistTimerRunning %d", &v7, 0x18u);
        }
      }
    }
  }
}

- (void)_delayedInvocationForPersist
{
  persistTimerRunning = self->_persistTimerRunning;
  v4 = WALogCategoryDefaultHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (persistTimerRunning)
  {
    if (v5)
    {
      *buf = 136446466;
      v37 = "[WAIOReporterMessagePopulator _delayedInvocationForPersist]";
      v38 = 1024;
      v39 = 2754;
      v6 = "%{public}s::%d:Persist is already scheduled, ignoring additional request";
      v7 = v4;
      v8 = 18;
LABEL_39:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  if (v5)
  {
    v9 = self->_persistTimerRunning;
    ior_persist_delay_seconds = [(RecommendationPreferences *)self->_preferences ior_persist_delay_seconds];
    persistTimer = self->_persistTimer;
    v12 = persistTimer != 0;
    if (persistTimer)
    {
      v13 = dispatch_source_testcancel(persistTimer) != 0;
    }

    else
    {
      v13 = 0;
    }

    *buf = 136447490;
    v37 = "[WAIOReporterMessagePopulator _delayedInvocationForPersist]";
    v38 = 1024;
    v39 = 2758;
    v40 = 1024;
    *v41 = v9;
    *&v41[4] = 2048;
    *&v41[6] = ior_persist_delay_seconds;
    v42 = 1024;
    v43 = v12;
    v44 = 1024;
    v45 = v13;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:_persistTimerRunning is %d ior_persist_delay_seconds is %lu _persistTimer exists %d testcancel is %d", buf, 0x2Eu);
  }

  if (!self->_persistTimerRunning)
  {
    v14 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v37 = "[WAIOReporterMessagePopulator _delayedInvocationForPersist]";
      v38 = 1024;
      v39 = 2761;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Setting timer", buf, 0x12u);
    }

    v15 = self->_persistTimer;
    if (v15)
    {
      if (!dispatch_source_testcancel(v15))
      {
LABEL_25:
        v23 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          ior_persist_delay_seconds2 = [(RecommendationPreferences *)self->_preferences ior_persist_delay_seconds];
          *buf = 136446722;
          v37 = "[WAIOReporterMessagePopulator _delayedInvocationForPersist]";
          v38 = 1024;
          v39 = 2782;
          v40 = 2048;
          *v41 = ior_persist_delay_seconds2;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Starting dispatch_source_set_timer fire in %lu s", buf, 0x1Cu);
        }

        v25 = self->_persistTimer;
        v26 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 1000000000 * [(RecommendationPreferences *)self->_preferences ior_persist_delay_seconds]);
        dispatch_source_set_timer(v25, v26, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
        v27 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v37 = "[WAIOReporterMessagePopulator _delayedInvocationForPersist]";
          v38 = 1024;
          v39 = 2784;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Starting dispatch_source_set_timer Done", buf, 0x12u);
        }

        v28 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v37 = "[WAIOReporterMessagePopulator _delayedInvocationForPersist]";
          v38 = 1024;
          v39 = 2786;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:dispatch_resume _persistTimer", buf, 0x12u);
        }

        dispatch_resume(self->_persistTimer);
        self->_persistTimerRunning = 1;
        v29 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = self->_persistTimerRunning;
          *buf = 136446722;
          v37 = "[WAIOReporterMessagePopulator _delayedInvocationForPersist]";
          v38 = 1024;
          v39 = 2790;
          v40 = 1024;
          *v41 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:setting _persistTimerRunning %d", buf, 0x18u);
        }

        goto LABEL_34;
      }
    }

    else
    {
      v16 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v37 = "[WAIOReporterMessagePopulator _delayedInvocationForPersist]";
        v38 = 1024;
        v39 = 2767;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Creating _persistTimer", buf, 0x12u);
      }

      v17 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
      v18 = self->_persistTimer;
      self->_persistTimer = v17;

      v19 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v37 = "[WAIOReporterMessagePopulator _delayedInvocationForPersist]";
        v38 = 1024;
        v39 = 2769;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Creating _persistTimer Done", buf, 0x12u);
      }

      if (!self->_persistTimer)
      {
        v4 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "Failed to create _persistTimer", buf, 2u);
        }

        goto LABEL_40;
      }
    }

    v20 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v37 = "[WAIOReporterMessagePopulator _delayedInvocationForPersist]";
      v38 = 1024;
      v39 = 2773;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Setting dispatch_source_set_event_handler", buf, 0x12u);
    }

    v21 = self->_persistTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000328AC;
    handler[3] = &unk_1000ED880;
    handler[4] = self;
    dispatch_source_set_event_handler(v21, handler);
    v22 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v37 = "[WAIOReporterMessagePopulator _delayedInvocationForPersist]";
      v38 = 1024;
      v39 = 2779;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Setting block Done", buf, 0x12u);
    }

    goto LABEL_25;
  }

LABEL_34:
  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v31 = self->_persistTimerRunning;
    ior_persist_delay_seconds3 = [(RecommendationPreferences *)self->_preferences ior_persist_delay_seconds];
    v33 = self->_persistTimer;
    if (v33)
    {
      v34 = dispatch_source_testcancel(v33) == 0;
    }

    else
    {
      v34 = 0;
    }

    *buf = 136447234;
    v37 = "[WAIOReporterMessagePopulator _delayedInvocationForPersist]";
    v38 = 1024;
    v39 = 2794;
    v40 = 1024;
    *v41 = v31;
    *&v41[4] = 2048;
    *&v41[6] = ior_persist_delay_seconds3;
    v42 = 1024;
    v43 = v34;
    v6 = "%{public}s::%d:Timer State : Enabled %d Period(ms) %lu valid %d";
    v7 = v4;
    v8 = 40;
    goto LABEL_39;
  }

LABEL_40:
}

- (void)_calculateEstimatedUptime
{
  v3 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"PID Unpersisted Date"];

  if (v3)
  {
    v4 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"PID Unpersisted Date"];
      v6 = +[NSDate now];
      v7 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"PID Unpersisted Date"];
      [v7 timeIntervalSinceNow];
      v9 = v8;

      *v25 = 136447234;
      v10 = -v9;
      *&v25[4] = "[WAIOReporterMessagePopulator _calculateEstimatedUptime]";
      if (v9 >= 0.0)
      {
        v10 = v9;
      }

      *&v25[12] = 1024;
      *&v25[14] = 2802;
      v26 = 2112;
      v27 = v5;
      v28 = 2112;
      v29 = v6;
      v30 = 2048;
      v31 = v10;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}s::%d:_cachedUsage[kWAUnpersistedDateKey] %@ now %@ interval %f", v25, 0x30u);
    }

    [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Estimated Uptime (s)"];
    cachedUsage = self->_cachedUsage;
    v12 = [(NSMutableDictionary *)cachedUsage objectForKeyedSubscript:@"PID Unpersisted Date"];
    [v12 timeIntervalSinceNow];
    v14 = v13;

    v15 = -v14;
    if (v14 >= 0.0)
    {
      v15 = v14;
    }

    v16 = [NSNumber numberWithUnsignedLong:v15, *v25];
    v17 = cachedUsage;
LABEL_17:
    [(NSMutableDictionary *)v17 setObject:v16 forKey:@"Estimated Uptime (s)"];
    goto LABEL_18;
  }

  pidLaunchDate = self->_pidLaunchDate;
  v19 = WALogCategoryDefaultHandle();
  v16 = v19;
  if (pidLaunchDate)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = self->_pidLaunchDate;
      v21 = +[NSDate now];
      [(NSDate *)self->_pidLaunchDate timeIntervalSinceNow];
      *v25 = 136447234;
      *&v25[4] = "[WAIOReporterMessagePopulator _calculateEstimatedUptime]";
      *&v25[12] = 1024;
      if (v22 < 0.0)
      {
        v22 = -v22;
      }

      *&v25[14] = 2807;
      v26 = 2112;
      v27 = v20;
      v28 = 2112;
      v29 = v21;
      v30 = 2048;
      v31 = v22;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:_pidLaunchDate %@ now %@ interval %f", v25, 0x30u);
    }

    [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Estimated Uptime (s)"];
    v23 = self->_cachedUsage;
    [(NSDate *)self->_pidLaunchDate timeIntervalSinceNow];
    if (v24 < 0.0)
    {
      v24 = -v24;
    }

    v16 = [NSNumber numberWithUnsignedLong:v24, *v25, *&v25[8]];
    v17 = v23;
    goto LABEL_17;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *v25 = 136446466;
    *&v25[4] = "[WAIOReporterMessagePopulator _calculateEstimatedUptime]";
    *&v25[12] = 1024;
    *&v25[14] = 2812;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d: calculating kWACumulativeUptimeKey unavailable", v25, 0x12u);
  }

LABEL_18:
}

- (void)_handleUnpersistForUsageData
{
  selfCopy = self;
  v3 = @"Work Bin: Last PID Work";
  [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Work Bin: Last PID Work"];
  v80 = objc_alloc_init(NSMutableDictionary);
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  v4 = [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKeyedSubscript:@"Work Bin: Previous PIDs Work"];

  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableDictionary *)selfCopy->_cachedUsage setObject:v5 forKeyedSubscript:@"Work Bin: Previous PIDs Work"];
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v6 = [(NSMutableDictionary *)selfCopy->_cachedUsage copy];
  v7 = [v6 countByEnumeratingWithState:&v97 objects:v117 count:16];
  v85 = selfCopy;
  if (v7)
  {
    v8 = v7;
    v9 = *v98;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v98 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v97 + 1) + 8 * i);
        if (([(__CFString *)v11 isEqualToString:@"Work Bin: Previous PIDs Work"]& 1) != 0 || [(__CFString *)v11 isEqualToString:v3])
        {
          v12 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            v102 = "[WAIOReporterMessagePopulator _handleUnpersistForUsageData]";
            v103 = 1024;
            v104 = 2838;
            v105 = 2112;
            v106 = v3;
            v107 = 2112;
            v108 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Skipping copying key to %@: %@", buf, 0x26u);
          }
        }

        else
        {
          v13 = v6;
          [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKey:v11];
          v15 = v14 = selfCopy;
          [(NSMutableDictionary *)v14->_cachedUsage objectForKeyedSubscript:v3];
          v17 = v16 = v3;
          [v17 setObject:v15 forKeyedSubscript:v11];

          [(NSMutableDictionary *)v14->_cachedUsage removeObjectForKey:v11];
          v12 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v18 = [(NSMutableDictionary *)v14->_cachedUsage objectForKeyedSubscript:v16];
            v19 = [v18 objectForKeyedSubscript:v11];
            *buf = 136446978;
            v102 = "[WAIOReporterMessagePopulator _handleUnpersistForUsageData]";
            v103 = 1024;
            v104 = 2845;
            v105 = 2112;
            v106 = v11;
            v107 = 2112;
            v108 = v19;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:_cachedUsage[kLastPIDBin] now contains key %@ with value %@", buf, 0x26u);
          }

          v3 = v16;
          v6 = v13;
        }

        selfCopy = v85;
      }

      v8 = [v6 countByEnumeratingWithState:&v97 objects:v117 count:16];
    }

    while (v8);
  }

  if (selfCopy->_persistFileExistedAtPIDLoad)
  {
    v20 = [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
    v21 = [v20 objectForKeyedSubscript:@"Terminations - Graceful"];

    if (!v21)
    {
      v22 = [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
      [WAUtil incrementValueForKey:@"Terminations - Unknown" inMutableDict:v22 onQueue:selfCopy->_queue];
    }
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v23 = [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
  v24 = [v23 copy];

  v25 = [v24 countByEnumeratingWithState:&v93 objects:v116 count:16];
  v26 = &WAXPCRequestDelegateInterface_ptr;
  if (v25)
  {
    v27 = v25;
    v83 = *v94;
    v81 = v24;
    do
    {
      v28 = 0;
      v82 = v27;
      do
      {
        if (*v94 != v83)
        {
          objc_enumerationMutation(v24);
        }

        v84 = v28;
        v29 = *(*(&v93 + 1) + 8 * v28);
        if ([(__CFString *)v29 isEqualToString:@"Persist file creation Date"])
        {
          v30 = [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
          v31 = [v30 objectForKeyedSubscript:v29];
          v32 = [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKeyedSubscript:@"Work Bin: Previous PIDs Work"];
          [v32 setObject:v31 forKeyedSubscript:v29];
        }

        v33 = [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
        v34 = [v33 objectForKeyedSubscript:v29];
        v35 = v26[429];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v88 = v29;
        if (isKindOfClass)
        {
          v37 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_35;
          }

          *buf = 136446722;
          v102 = "[WAIOReporterMessagePopulator _handleUnpersistForUsageData]";
          v103 = 1024;
          v104 = 2862;
          v105 = 2112;
          v106 = v29;
          v38 = v37;
          v39 = "%{public}s::%d:Skipping copying to _cachedUsage[kPreviousPIDsBin] key %@: NSDate";
LABEL_34:
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, v39, buf, 0x1Cu);
          goto LABEL_35;
        }

        if (([(__CFString *)v29 isEqualToString:@"Last Persisted PID"]& 1) != 0 || [(__CFString *)v29 isEqualToString:@"Last Terminated PID"])
        {
          v37 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_35;
          }

          *buf = 136446722;
          v102 = "[WAIOReporterMessagePopulator _handleUnpersistForUsageData]";
          v103 = 1024;
          v104 = 2866;
          v105 = 2112;
          v106 = v29;
          v38 = v37;
          v39 = "%{public}s::%d:Skipping copying to _cachedUsage[kPreviousPIDsBin] key %@: kWAPersistedPidKey or kWATerminationPidKey";
          goto LABEL_34;
        }

        v40 = [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
        v41 = [v40 objectForKeyedSubscript:v29];
        objc_opt_class();
        v42 = objc_opt_isKindOfClass();

        if (v42)
        {
          v43 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            v44 = [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
            v45 = [v44 objectForKeyedSubscript:v29];
            v46 = [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKeyedSubscript:@"Work Bin: Previous PIDs Work"];
            v47 = [v46 objectForKeyedSubscript:v29];
            *buf = 136447234;
            v102 = "[WAIOReporterMessagePopulator _handleUnpersistForUsageData]";
            v103 = 1024;
            v104 = 2871;
            v105 = 2112;
            v106 = v29;
            v107 = 2112;
            v108 = v45;
            v109 = 2112;
            v110 = v47;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Summing key %@ of kLastPIDBin %@ to kPreviousPIDsBin %@", buf, 0x30u);

            v27 = v82;
          }

          v37 = [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKeyedSubscript:@"Work Bin: Previous PIDs Work"];
          v48 = [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
          [WAUtil sumNSNumberForKey:v29 dstDict:v37 otherDict:v48];
        }

        else
        {
          v49 = [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
          v50 = [v49 objectForKeyedSubscript:v29];
          objc_opt_class();
          v51 = objc_opt_isKindOfClass();

          if (v51)
          {
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            v52 = [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
            v53 = [v52 objectForKeyedSubscript:v29];
            v37 = [v53 copy];

            v87 = [v37 countByEnumeratingWithState:&v89 objects:v115 count:16];
            if (v87)
            {
              v54 = *v90;
              v55 = v88;
              obj = v37;
              do
              {
                for (j = 0; j != v87; j = j + 1)
                {
                  if (*v90 != v54)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v57 = *(*(&v89 + 1) + 8 * j);
                  v58 = [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
                  v59 = [v58 objectForKeyedSubscript:v55];
                  v60 = [v59 objectForKeyedSubscript:v57];
                  objc_opt_class();
                  v61 = objc_opt_isKindOfClass();

                  if (v61)
                  {
                    v62 = WALogCategoryDefaultHandle();
                    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
                    {
                      v63 = [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
                      v64 = [v63 objectForKeyedSubscript:v55];
                      v65 = [v64 objectForKeyedSubscript:v57];
                      v66 = [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKeyedSubscript:@"Work Bin: Previous PIDs Work"];
                      v67 = [v66 objectForKeyedSubscript:v88];
                      v68 = [v67 objectForKeyedSubscript:v57];
                      *buf = 136447746;
                      v102 = "[WAIOReporterMessagePopulator _handleUnpersistForUsageData]";
                      v103 = 1024;
                      v104 = 2878;
                      v105 = 2112;
                      v106 = v57;
                      v107 = 2112;
                      v108 = v88;
                      v109 = 2112;
                      v110 = v65;
                      v111 = 2112;
                      v112 = v88;
                      v113 = 2112;
                      v114 = v68;
                      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Summing innerKey %@ of kLastPIDBin.%@ %@ to kPreviousPIDsBin.%@ %@", buf, 0x44u);

                      selfCopy = v85;
                      v55 = v88;
                    }

                    v69 = [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKeyedSubscript:@"Work Bin: Previous PIDs Work"];
                    v70 = [v69 objectForKeyedSubscript:v55];
                    v71 = [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
                    v72 = [v71 objectForKeyedSubscript:v88];
                    [WAUtil sumNSNumberForKey:v57 dstDict:v70 otherDict:v72];

                    v55 = v88;
                  }
                }

                v37 = obj;
                v87 = [obj countByEnumeratingWithState:&v89 objects:v115 count:16];
              }

              while (v87);
              v24 = v81;
              v26 = &WAXPCRequestDelegateInterface_ptr;
              v27 = v82;
            }
          }

          else
          {
            v37 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              v73 = [(NSMutableDictionary *)selfCopy->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
              v74 = [v73 objectForKeyedSubscript:v29];
              v75 = objc_opt_class();
              *buf = 136446978;
              v102 = "[WAIOReporterMessagePopulator _handleUnpersistForUsageData]";
              v103 = 1024;
              v104 = 2883;
              v105 = 2112;
              v106 = v29;
              v107 = 2112;
              v108 = v75;
              v76 = v75;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Skipping copying to _cachedUsage[kPreviousPIDsBin] key %@: unknown class %@", buf, 0x26u);
            }
          }
        }

LABEL_35:

        v28 = v84 + 1;
      }

      while ((v84 + 1) != v27);
      v77 = [v24 countByEnumeratingWithState:&v93 objects:v116 count:16];
      v27 = v77;
    }

    while (v77);
  }

  [WAUtil incrementValueForKey:@"Unpersisted Count" inMutableDict:selfCopy->_cachedUsage onQueue:selfCopy->_queue];
  cachedUsage = selfCopy->_cachedUsage;
  date = [v26[429] date];
  [(NSMutableDictionary *)cachedUsage setObject:date forKey:@"PID Unpersisted Date"];

  [WAUtil logNestedDictionary:selfCopy->_cachedUsage indent:0 prefix:@"Unpersist ior _cachedUsage"];
}

- (id)getCachedUsage
{
  objc_initWeak(&location, self);
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100033A94;
  v12 = sub_100033AA4;
  v13 = 0;
  queue = [(WAIOReporterMessagePopulator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033AAC;
  block[3] = &unk_1000ED830;
  objc_copyWeak(&v7, &location);
  block[4] = &v8;
  dispatch_sync(queue, block);

  v4 = v9[5];
  objc_destroyWeak(&v7);
  _Block_object_dispose(&v8, 8);

  objc_destroyWeak(&location);

  return v4;
}

- (id)_getCachedUsage
{
  if (!self->_hasAttemptedUnpersisting)
  {
    v3 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      cachedUsage = self->_cachedUsage;
      v7 = 136446722;
      v8 = "[WAIOReporterMessagePopulator _getCachedUsage]";
      v9 = 1024;
      v10 = 2913;
      v11 = 2112;
      v12 = cachedUsage;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:_hasAttemptedUnpersisting not run _cachedUsage is %@", &v7, 0x1Cu);
    }

    [(WAIOReporterMessagePopulator *)self _unpersistIORObjects];
  }

  [(WAIOReporterMessagePopulator *)self _calculateEstimatedUptime];
  v5 = self->_cachedUsage;

  return v5;
}

- (void)updateListOfMonitoredPeers:(id)peers
{
  peersCopy = peers;
  if (qword_10010DD50 != -1)
  {
    dispatch_once(&qword_10010DD50, &stru_1000ED720);
  }

  queue = [(WAIOReporterMessagePopulator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033CE4;
  v7[3] = &unk_1000ED988;
  v7[4] = self;
  v8 = peersCopy;
  v6 = peersCopy;
  dispatch_sync(queue, v7);
}

- (id)_createStructuredIOReportDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100033A94;
  v12 = sub_100033AA4;
  v13 = objc_alloc_init(NSMutableDictionary);
  [WAUtil incrementValueForKey:@"Build Structured Dict Calls" inMutableDict:self->_cachedUsage onQueue:self->_queue];
  v5 = objc_autoreleasePoolPush();
  IOReportIterate();
  objc_autoreleasePoolPop(v5);
  v6 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v6;
}

- (WAIOReporterPopulatorMessageDelegate)messageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_messageDelegate);

  return WeakRetained;
}

- (WAIOReporterPersistenceDelegate)persistenceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_persistenceDelegate);

  return WeakRetained;
}

@end