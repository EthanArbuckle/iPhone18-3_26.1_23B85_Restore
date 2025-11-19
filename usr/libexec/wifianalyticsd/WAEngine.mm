@interface WAEngine
- (BOOL)_isDPSQuickRecoveryEngineUsed;
- (BOOL)alreadyContainsHashID:(id)a3 inArray:(id)a4;
- (BOOL)canProcessWiFiAnalyticsMessageJSONFiles:(id)a3;
- (BOOL)everAssociated:(BOOL)a3 assocDoneSuccess:(BOOL)a4;
- (BOOL)fetchConfiguredDnsInfo;
- (BOOL)hasDuplicateHashIDs:(id)a3;
- (BOOL)isAXAssociatoin;
- (BOOL)isAssociated;
- (BOOL)isInternalScenario;
- (BOOL)isScoreBelowThreshold:(id)a3 type:(unint64_t)a4 instanceId:(unsigned int)a5;
- (BOOL)isUsingCustomDNSSettings;
- (BOOL)isWiFiAssociatedToNetwork;
- (BOOL)isWiFiInterfacePrimary;
- (BOOL)isWiFiNetworkCaptive;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)populateApProfile:(id)a3;
- (BOOL)queryInfraInterfaceInstanceAndChip;
- (BOOL)submitterMapCheck:(id)a3 group:(int64_t)a4;
- (BOOL)testDNSResolution:(id)a3;
- (BOOL)updateDriverType;
- (WAEngine)init;
- (id)IPv4SubnetMasks;
- (id)IPv6PrefixLengths;
- (id)_DPSQuickRecoveryEngineObj;
- (id)__IPv4StateConfig;
- (id)__IPv6StateConfig;
- (id)__dnsSetupConfig;
- (id)__dnsStateConfig;
- (id)__ipv4SetupConfig;
- (id)_cachedModelObjectsForProcess:(id)a3 groupType:(int64_t)a4 key:(id)a5;
- (id)_createNextWorkReportSnapshot;
- (id)_createWorkReportDictionaryForTelemetryAndRollBucket;
- (id)_getBasePersistenceKeychainQuery;
- (id)_getDataFromKeychain:(id)a3;
- (id)_getDeviceAnalyticsConfiguration;
- (id)_getMessageByUUID:(id)a3 forProcessToken:(id)a4 error:(id *)a5;
- (id)_getMessagesModelForProcessToken:(id)a3 groupType:(int64_t)a4 andError:(id *)a5;
- (id)_getObscureKey;
- (id)_ingestMessage:(id)a3 forProcessToken:(id)a4;
- (id)_rotateObscureKey;
- (id)_setDeviceAnalyticsConfiguration:(id)a3;
- (id)_submitMessage:(id)a3 groupType:(int64_t)a4 forProcessToken:(id)a5;
- (id)_updateRoamPoliciesAndSummarizeAnalyticsForNetwork:(id)a3 maxAgeInDays:(unint64_t)a4;
- (id)getDpsMetaDataString;
- (id)getNewMessageForKey:(id)a3 groupType:(int64_t)a4 forProcessWithToken:(id)a5;
- (id)getValueForKeyFromUserDefaults:(id)a3;
- (id)getW5Client;
- (id)getXPCConnectionForProcessToken:(id)a3;
- (int64_t)getRSSI;
- (unint64_t)_getTimeInProfileState:(unsigned __int8)a3;
- (unint64_t)abstime_to_ns:(unint64_t)a3;
- (unint64_t)getCCA;
- (unsigned)getIPv4InterfaceNetwork:(unsigned int)a3;
- (unsigned)getIPv4InterfaceSubnet;
- (unsigned)getIPv6InterfacePrefix;
- (void)_calculateEstimatedUptime;
- (void)_calculateProcessUsage;
- (void)_calculateProfileUptime;
- (void)_cancelWorkReportRecurringTimer;
- (void)_clearMessageStoreAndReply:(id)a3;
- (void)_convertWiFiStatsIntoPercentile:(id)a3 analysisGroup:(int64_t)a4 groupTarget:(id)a5 forProcessToken:(id)a6 andReply:(id)a7;
- (void)_enableWorkReportRecurringTimer;
- (void)_examinePeerMessageForIntegrity:(id)a3;
- (void)_getNewMessageForKey:(id)a3 groupType:(int64_t)a4 forProcessToken:(id)a5 shouldCheckForPrePopulation:(BOOL)a6 andReply:(id)a7;
- (void)_getNewMessageForKey:(id)a3 groupType:(int64_t)a4 withCopy:(BOOL)a5 forProcessToken:(id)a6 shouldCheckForPrePopulation:(BOOL)a7 andReply:(id)a8;
- (void)_getNewMessageForKeyWithinPopulatorBlock:(id)a3 groupType:(int64_t)a4 forProcessToken:(id)a5 shouldCheckForPrePopulation:(BOOL)a6 andReply:(id)a7;
- (void)_handleUnpersistForUsageData;
- (void)_initSubmitterAndQueryableRegistrationForProcessToken:(id)a3 andGroupType:(int64_t)a4;
- (void)_issueIOReportManagementCommand:(unint64_t)a3 forProcessToken:(id)a4 andReply:(id)a5;
- (void)_killDaemonAndReply:(id)a3;
- (void)_logWorkReport:(id)a3 indent:(int)a4 prefix:(id)a5;
- (void)_lqmCrashTracerNotifyForInterfaceWithName:(id)a3 andReply:(id)a4;
- (void)_lqmCrashTracerReceiveBlock:(id)a3 forInterfaceWithName:(id)a4 andReply:(id)a5;
- (void)_persist;
- (void)_prepareToTerminate;
- (void)_prepareToTerminateViaEagerExit;
- (void)_purgeGroupTypeIfNecessary:(int64_t)a3;
- (void)_removePersistenceFile;
- (void)_reportWorkReportInterval;
- (void)_saveKeyIVData:(id)a3 andTagData:(id)a4;
- (void)_sendMemoryPressureRequestAndReply:(id)a3;
- (void)_storeChangedHandler:(id)a3;
- (void)_trapCrashMiniTracerDumpReadyForInterfaceWithName:(id)a3 andReply:(id)a4;
- (void)_trapFWWithReason:(id)a3 andReply:(id)a4;
- (void)_triggerDPSStudy:(int64_t)a3 forProcessToken:(id)a4 waMessage:(id)a5 andReply:(id)a6;
- (void)_triggerDatapathDiagnosticsAndCollectUpdates:(int64_t)a3 forProcessToken:(id)a4 waMessage:(id)a5 andReply:(id)a6;
- (void)_triggerDeviceAnalyticsStoreMigrationAndReply:(id)a3;
- (void)_triggerQueryForNWActivity:(int64_t)a3 forProcessToken:(id)a4 andReply:(id)a5;
- (void)_triggerQueryForNWActivityWithPeers:(id)a3 forProcessToken:(id)a4 andReply:(id)a5;
- (void)_triggerSlowWiFiStudy:(int64_t)a3 forProcessToken:(id)a4 waMessage:(id)a5 andReply:(id)a6;
- (void)_unpersist;
- (void)_updateProfileStateDate:(unsigned __int8)a3;
- (void)_writeWiFiAnalyticsMessageToJSONFile:(id)a3 metricInfo:(id)a4;
- (void)clearDnsStudyVariables;
- (void)computeAverageCcaSinceStudyStart:(id)a3;
- (void)convertToIPv6Network:(unsigned int *)a3 prefixLength:(unsigned int)a4;
- (void)createNighltyTimer;
- (void)dealloc;
- (void)fetchSymptomsScores:(unsigned int)a3;
- (void)freeAllocationsForProcessToken:(id)a3;
- (void)gatherConsecutiveDatapathReadings:(int64_t)a3 forProcessToken:(id)a4 andReply:(id)a5;
- (void)gatherConsecutiveLinkQualitySamples:(int64_t)a3 forProcessToken:(id)a4 andReply:(id)a5;
- (void)gatherDiscoveredPeerInfo:(id)a3;
- (void)handleMemoryWarning:(BOOL)a3;
- (void)incrementWorkReportValueForKey:(id)a3;
- (void)initDatapathMetricGetterAndFetcher;
- (void)initializeProbeCxt;
- (void)keyBagLockStateChangeNotification;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)persist;
- (void)populateChannelInfo:(id)a3;
- (void)prepareToTerminateAnyReply:(id)a3;
- (void)prepareToTerminateViaEagerExit;
- (void)processWiFiAnalyticsFilesInTmpDir:(BOOL)a3;
- (void)processWiFiAnalyticsMessageWAMFile:(id)a3 file:(id)a4;
- (void)resolveAppleCaptiveServer;
- (void)run;
- (void)sendWakeUpNotificationForProcessWithName:(id)a3;
- (void)setValueForKeyToUserDefaults:(id)a3 forKey:(id)a4;
- (void)triggerDNSResetRecoveryAction;
- (void)triggerDiagnosticPingWithrequestId:(unsigned int)a3;
- (void)triggerPeerDiagnosticsStudy:(unint64_t)a3 symptomsDnsStats:(id)a4;
- (void)triggerPeerDiscovery;
- (void)triggerStepwiseDNSRecovery;
- (void)xpcConnection:(id)a3 clearMessageStoreAndReply:(id)a4;
- (void)xpcConnection:(id)a3 convertWiFiStatsIntoPercentile:(id)a4 analysisGroup:(int64_t)a5 groupTarget:(id)a6 andReply:(id)a7;
- (void)xpcConnection:(id)a3 establishConnectionWithToken:(id)a4 andReply:(id)a5;
- (void)xpcConnection:(id)a3 getDeviceAnalyticsConfigurationAndReply:(id)a4;
- (void)xpcConnection:(id)a3 getDpsStatsandReply:(id)a4;
- (void)xpcConnection:(id)a3 getMessagesModelForGroupType:(int64_t)a4 andReply:(id)a5;
- (void)xpcConnection:(id)a3 getNewMessageForKey:(id)a4 groupType:(int64_t)a5 withCopy:(id)a6 andReply:(id)a7;
- (void)xpcConnection:(id)a3 getUsageStatsandReply:(id)a4;
- (void)xpcConnection:(id)a3 issueIOReportManagementCommand:(unint64_t)a4 andReply:(id)a5;
- (void)xpcConnection:(id)a3 killDaemonAndReply:(id)a4;
- (void)xpcConnection:(id)a3 lqmCrashTracerNotifyForInterfaceWithName:(id)a4 andReply:(id)a5;
- (void)xpcConnection:(id)a3 lqmCrashTracerReceiveBlock:(id)a4 forInterfaceWithName:(id)a5 andReply:(id)a6;
- (void)xpcConnection:(id)a3 processManagedFault:(id)a4 at:(id)a5 andReply:(id)a6;
- (void)xpcConnection:(id)a3 registerMessageGroup:(int64_t)a4 andReply:(id)a5;
- (void)xpcConnection:(id)a3 sendMemoryPressureRequestAndReply:(id)a4;
- (void)xpcConnection:(id)a3 setDeviceAnalyticsConfiguration:(id)a4 andReply:(id)a5;
- (void)xpcConnection:(id)a3 signalPotentialNewIORChannelsAndReply:(id)a4;
- (void)xpcConnection:(id)a3 submitMessage:(id)a4 groupType:(int64_t)a5 andReply:(id)a6;
- (void)xpcConnection:(id)a3 trapCrashMiniTracerDumpReadyForInterfaceWithName:(id)a4 andReply:(id)a5;
- (void)xpcConnection:(id)a3 triggerDatapathDiagnosticsAndCollectUpdates:(int64_t)a4 waMessage:(id)a5 andReply:(id)a6;
- (void)xpcConnection:(id)a3 triggerDeviceAnalyticsStoreMigrationAndReply:(id)a4;
- (void)xpcConnection:(id)a3 triggerQueryForNWActivity:(int64_t)a4 andReply:(id)a5;
- (void)xpcConnection:(id)a3 triggerQueryForNWActivityWithPeers:(id)a4 andReply:(id)a5;
- (void)xpcConnection:(id)a3 updateRoamPoliciesAndSummarizeAnalyticsForNetwork:(id)a4 maxAgeInDays:(unint64_t)a5 andReply:(id)a6;
- (void)xpcConnection:(id)a3 updateRoamPoliciesForSourceBssid:(id)a4 andUpdateRoamCache:(BOOL)a5 andReply:(id)a6;
@end

@implementation WAEngine

- (void)keyBagLockStateChangeNotification
{
  v2 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[WAEngine keyBagLockStateChangeNotification]";
    v9 = 1024;
    v10 = 828;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Received keyBagLockStateChangeNotification", &v7, 0x12u);
  }

  if (+[WAUtil isKeyBagUnlocked])
  {
    v3 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
    v4 = [v3 storeLoaded];

    if ((v4 & 1) == 0)
    {
      v5 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136446466;
        v8 = "[WAEngine keyBagLockStateChangeNotification]";
        v9 = 1024;
        v10 = 832;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Got keyBagLockStateChangeNotification isKeyBagUnlocked is true, attempting to loadStore", &v7, 0x12u);
      }

      v6 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
      [v6 loadStoreIfNeeded];
    }
  }
}

- (WAEngine)init
{
  v115.receiver = self;
  v115.super_class = WAEngine;
  v2 = [(WAEngine *)&v115 init];
  if (!v2)
  {
    goto LABEL_44;
  }

  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = *(v2 + 72);
  *(v2 + 72) = v3;

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.wifi.analytics.engineQ", v5);
  v7 = *(v2 + 88);
  *(v2 + 88) = v6;

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create(0, v8);
  v10 = *(v2 + 600);
  *(v2 + 600) = v9;

  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = *(v2 + 128);
  *(v2 + 128) = v11;

  v13 = objc_alloc_init(NSMutableDictionary);
  v14 = *(v2 + 144);
  *(v2 + 144) = v13;

  v15 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.wifianalyticsd"];
  v16 = *(v2 + 112);
  *(v2 + 112) = v15;

  v17 = *(v2 + 112);
  if (!v17)
  {
    goto LABEL_44;
  }

  [v17 setDelegate:v2];
  v18 = +[WAUtil wifianalyticsTmpDirectory];
  v19 = *(v2 + 592);
  *(v2 + 592) = v18;

  if (!*(v2 + 592))
  {
    goto LABEL_44;
  }

  *(v2 + 32) = 0;
  *(v2 + 43) = 0;
  *(v2 + 35) = 0;
  v20 = objc_alloc_init(CADataTransformEngine);
  v21 = *(v2 + 168);
  *(v2 + 168) = v20;

  if (!*(v2 + 168))
  {
    v108 = WALogCategoryInitPersistentLogHandle();
    if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 136446466;
    v117 = "[WAEngine init]";
    v118 = 1024;
    v119 = 435;
    v109 = "%{public}s::%d:Error creating _transformEngine";
LABEL_42:
    _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_ERROR, v109, buf, 0x12u);
    goto LABEL_43;
  }

  v22 = objc_alloc_init(RecommendationEngine);
  v23 = *(v2 + 184);
  *(v2 + 184) = v22;

  if (!*(v2 + 184))
  {
    v108 = WALogCategoryInitPersistentLogHandle();
    if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 136446466;
    v117 = "[WAEngine init]";
    v118 = 1024;
    v119 = 438;
    v109 = "%{public}s::%d:Error creating _recommendationEngine";
    goto LABEL_42;
  }

  v24 = objc_alloc_init(WACoreCapture);
  v25 = *(v2 + 512);
  *(v2 + 512) = v24;

  if (!*(v2 + 512))
  {
    v108 = WALogCategoryInitPersistentLogHandle();
    if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 136446466;
    v117 = "[WAEngine init]";
    v118 = 1024;
    v119 = 441;
    v109 = "%{public}s::%d:Error creating _coreCaptureControl";
    goto LABEL_42;
  }

  v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v27 = dispatch_queue_create("com.apple.wifi.analytics.dpsQ", v26);
  v28 = *(v2 + 520);
  *(v2 + 520) = v27;

  v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v30 = dispatch_queue_create("com.apple.wifi.analytics.dpsReadWriteQ", v29);
  v31 = *(v2 + 528);
  *(v2 + 528) = v30;

  v32 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v33 = dispatch_queue_create("com.apple.wifi.analytics.peerDiagnosticsQ", v32);
  v34 = *(v2 + 536);
  *(v2 + 536) = v33;

  v35 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v36 = dispatch_queue_create("com.apple.wifi.analytics.dnsQ", v35);
  v37 = *(v2 + 496);
  *(v2 + 496) = v36;

  v38 = objc_alloc_init(NSMutableArray);
  v39 = *(v2 + 544);
  *(v2 + 544) = v38;

  v40 = objc_alloc_init(NSMutableArray);
  v41 = *(v2 + 552);
  *(v2 + 552) = v40;

  v42 = objc_alloc_init(NSMutableArray);
  v43 = *(v2 + 560);
  *(v2 + 560) = v42;

  v44 = objc_alloc_init(NSMutableArray);
  v45 = *(v2 + 568);
  *(v2 + 568) = v44;

  v46 = objc_alloc_init(NSMutableArray);
  v47 = *(v2 + 488);
  *(v2 + 488) = v46;

  v48 = objc_alloc_init(NSMutableArray);
  v49 = *(v2 + 504);
  *(v2 + 504) = v48;

  v50 = objc_alloc_init(NSMutableDictionary);
  v51 = *(v2 + 176);
  *(v2 + 176) = v50;

  *(v2 + 60) = 0;
  v52 = objc_alloc_init(NSMutableArray);
  v53 = *(v2 + 576);
  *(v2 + 576) = v52;

  v54 = [[CWFInterface alloc] initWithServiceType:1];
  v55 = *(v2 + 8);
  *(v2 + 8) = v54;

  v56 = *(v2 + 8);
  if (!v56)
  {
    v108 = WALogCategoryInitPersistentLogHandle();
    if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 136446466;
    v117 = "[WAEngine init]";
    v118 = 1024;
    v119 = 460;
    v109 = "%{public}s::%d:Error creating _corewifi";
    goto LABEL_42;
  }

  [v56 resume];
  v57 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.wifianalyticsd.wifi.intf", 0, 0);
  *(v2 + 16) = v57;
  if (v57)
  {
    v58 = *(v2 + 480);
    *(v2 + 480) = 0;

    *(v2 + 36) = MGGetBoolAnswer();
    v59 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v60 = dispatch_queue_create("com.apple.wifi.analytics.fileHandlingQ", v59);
    v61 = *(v2 + 584);
    *(v2 + 584) = v60;

    *(v2 + 608) = 3;
    *(v2 + 616) = 0x40F5180000000000;
    if (+[WAUtil isKeyBagUnlocked])
    {
      v62 = WALogCategoryInitPersistentLogHandle();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v117 = "[WAEngine init]";
        v118 = 1024;
        v119 = 482;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:isKeyBagUnlocked is true, attempting to load analytics store", buf, 0x12u);
      }

      v63 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
      [v63 loadStoreIfNeeded];

      v64 = WALogCategoryInitPersistentLogHandle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
        if ([v65 storeLoaded])
        {
          v66 = @"YES";
        }

        else
        {
          v66 = @"NO";
        }

        v67 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
        v68 = [v67 storeLoadError];
        v69 = v68;
        *buf = 136446978;
        v117 = "[WAEngine init]";
        if (v68)
        {
          v70 = v68;
        }

        else
        {
          v70 = &stru_1000F04E0;
        }

        v118 = 1024;
        v119 = 484;
        v120 = 2112;
        *v121 = v66;
        *&v121[8] = 2112;
        *&v121[10] = v70;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:StoreLoaded: %@ %@", buf, 0x26u);
      }
    }

    v71 = [[WABackgroundTaskManager alloc] initWithEngine:v2];
    v72 = *(v2 + 792);
    *(v2 + 792) = v71;

    [*(v2 + 792) registerTasks];
    *(v2 + 53) = 0;
    v73 = +[NSMutableDictionary dictionary];
    v74 = *(v2 + 152);
    *(v2 + 152) = v73;

    if (*(v2 + 152))
    {
      v75 = [NSString stringWithFormat:@"dunno"];
      v76 = *(v2 + 160);
      *(v2 + 160) = v75;

      v77 = [NSString stringWithFormat:&stru_1000F04E0];
      v78 = *(v2 + 200);
      *(v2 + 200) = v77;

      *(v2 + 776) = 0;
      v79 = +[ManagedConfiguration sharedInstance];
      v80 = *(v2 + 640);
      *(v2 + 640) = v79;

      v81 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v82 = dispatch_queue_create("com.apple.wifi.analytics.config", v81);
      v83 = *(v2 + 632);
      *(v2 + 632) = v82;

      [*(v2 + 640) scheduleWithQueue:*(v2 + 632)];
      v84 = +[DatapathMetricStream sharedInstance];
      v85 = *(v2 + 648);
      *(v2 + 648) = v84;

      [v2 initDatapathMetricGetterAndFetcher];
      v86 = *(v2 + 648);
      v87 = *(v2 + 632);
      v88 = [v2 DatapathMetricGetter];
      [v86 setDispatchQueueAndAddObservers:v87 withGetter:v88];

      v89 = +[NSDate distantPast];
      v90 = *(v2 + 664);
      *(v2 + 664) = v89;

      v91 = +[NSDate distantPast];
      v92 = *(v2 + 672);
      *(v2 + 672) = v91;

      *(v2 + 54) = 0;
      *(v2 + 50) = 0;
      *(v2 + 52) = 0;
      v93 = *(v2 + 584);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100001BF0;
      handler[3] = &unk_1000EDBF0;
      v94 = v2;
      v114 = v94;
      notify_register_dispatch("com.apple.mobile.keybagd.lock_status", (v2 + 64), v93, handler);
      [v94 keyBagLockStateChangeNotification];

      *(v94 + 37) = 0;
      v95 = +[NSProcessInfo processInfo];
      *(v94 + 17) = [v95 processIdentifier];

      v96 = +[NSDate now];
      v97 = *(v94 + 87);
      *(v94 + 87) = v96;

      v98 = +[RecommendationPreferences sharedObject];
      v99 = *(v94 + 85);
      *(v94 + 85) = v98;

      if (*(v94 + 85))
      {
        v100 = [v94 managedConfiguration];
        [v100 addObserver:v94 forKeyPath:@"megawifiprofile_diagnostic_metrics_enabled" options:5 context:0];

        *(v94 + 91) = arc4random_uniform(0x18u);
        *(v94 + 92) = arc4random_uniform(0x90u) + 24;
        [v94 _enableWorkReportRecurringTimer];
      }

      else
      {
        v101 = WALogCategoryInitPersistentLogHandle();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v117 = "[WAEngine init]";
          v118 = 1024;
          v119 = 547;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error RecommendationPreferences init", buf, 0x12u);
        }
      }

      v102 = v94;
      v112 = v102;
      v103 = [WAActivityManager sharedActivityManager:_NSConcreteStackBlock];
      [v103 setExecuteBeforePossibleEagerExit:&v111];

      [(WAEngine *)v102 createNighltyTimer];
      v2 = WALogCategoryInitPersistentLogHandle();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v104 = *(v94 + 17);
        v105 = +[NSProcessInfo processInfo];
        v106 = [v105 globallyUniqueString];
        *buf = 136446978;
        v117 = "[WAEngine init]";
        v118 = 1024;
        v119 = 579;
        v120 = 1024;
        *v121 = v104;
        *&v121[4] = 2112;
        *&v121[6] = v106;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WAEngine init with pid %d uniqueString %@", buf, 0x22u);
      }

      goto LABEL_29;
    }

    v108 = WALogCategoryInitPersistentLogHandle();
    if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 136446466;
    v117 = "[WAEngine init]";
    v118 = 1024;
    v119 = 503;
    v109 = "%{public}s::%d:Error creating _interfaceNameToApple80211InstanceMap";
    goto LABEL_42;
  }

  v108 = WALogCategoryInitPersistentLogHandle();
  if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v117 = "[WAEngine init]";
    v118 = 1024;
    v119 = 467;
    v109 = "%{public}s::%d:Error creating _storeRef";
    goto LABEL_42;
  }

LABEL_43:

LABEL_44:
  v110 = WALogCategoryInitPersistentLogHandle();
  if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v117 = "[WAEngine init]";
    v118 = 1024;
    v119 = 586;
    _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_ERROR, "%{public}s::%d:FAILED to initialize!", buf, 0x12u);
  }

  v102 = 0;
LABEL_29:

  return v102;
}

- (void)dealloc
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"megawifiprofile_diagnostic_metrics_enabled"];

  v4.receiver = self;
  v4.super_class = WAEngine;
  [(WAEngine *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  v9 = [a5 objectForKeyedSubscript:NSKeyValueChangeNewKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if ([v8 isEqualToString:@"megawifiprofile_diagnostic_metrics_enabled"] && v11)
  {
    engineQ = self->_engineQ;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000546FC;
    v15[3] = &unk_1000ED988;
    v13 = v11;
    v16 = v13;
    v17 = self;
    dispatch_async(engineQ, v15);
    v14 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v19 = "[WAEngine observeValueForKeyPath:ofObject:change:context:]";
      v20 = 1024;
      v21 = 620;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%@ Preference is %@", buf, 0x26u);
    }
  }
}

- (id)_DPSQuickRecoveryEngineObj
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_dpsQuickRecoveryEngine || ![(WAEngine *)v2 _isDPSQuickRecoveryEngineUsed])
  {
    goto LABEL_5;
  }

  v3 = objc_alloc_init(DPSQuickRecoveryRecommendationEngine);
  dpsQuickRecoveryEngine = v2->_dpsQuickRecoveryEngine;
  v2->_dpsQuickRecoveryEngine = v3;

  v5 = v2->_dpsQuickRecoveryEngine;
  if (v5)
  {
    [(DPSQuickRecoveryRecommendationEngine *)v5 updateFromPersistedStats:v2->_persistedDPSStatsDict];
    [(DPSQuickRecoveryRecommendationEngine *)v2->_dpsQuickRecoveryEngine updateFromPersistedBudget:v2->_persistedDPSRecoveryActionBudgetDict];
LABEL_5:
    v6 = v2->_dpsQuickRecoveryEngine;
    goto LABEL_6;
  }

  v8 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = 136446466;
    v10 = "[WAEngine _DPSQuickRecoveryEngineObj]";
    v11 = 1024;
    v12 = 633;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to alloc DPSQuickRecoveryRecommendationEngine", &v9, 0x12u);
  }

  v6 = 0;
LABEL_6:
  objc_sync_exit(v2);

  return v6;
}

- (id)getW5Client
{
  velocityClient = self->_velocityClient;
  if (!velocityClient)
  {
    v4 = objc_alloc_init(sub_1000548E8());
    v5 = self->_velocityClient;
    self->_velocityClient = v4;

    velocityClient = self->_velocityClient;
  }

  return velocityClient;
}

- (BOOL)_isDPSQuickRecoveryEngineUsed
{
  driverType = self->_driverType;
  if (driverType)
  {
    return driverType != 4;
  }

  v4 = +[WAApple80211Manager sharedObject];
  v5 = [v4 getInfraApple80211];

  if (!v5)
  {
    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446466;
      v11 = "[WAEngine _isDPSQuickRecoveryEngineUsed]";
      v12 = 1024;
      v13 = 665;
      v9 = "%{public}s::%d:invalid apple80211API";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v9, &v10, 0x12u);
    }

LABEL_12:

    return 0;
  }

  v6 = [v5 getDriverType];
  self->_driverType = v6;
  if (!v6)
  {
    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446466;
      v11 = "[WAEngine _isDPSQuickRecoveryEngineUsed]";
      v12 = 1024;
      v13 = 668;
      v9 = "%{public}s::%d:invalid _driverType kWAWIFIDriverUnknown";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  driverType = self->_driverType;
  return driverType != 4;
}

- (void)_updateProfileStateDate:(unsigned __int8)a3
{
  v3 = a3;
  v5 = +[NSDate now];
  v6 = [(WAEngine *)self _getTimeInProfileState:1];
  v7 = [(WAEngine *)self _getTimeInProfileState:0];
  v8 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136446978;
    v18 = "[WAEngine _updateProfileStateDate:]";
    v19 = 1024;
    v20 = 691;
    v21 = 2048;
    v22 = v6;
    v23 = 2048;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:MegaWiFi Profile state change: currentEnabledSeconds %lu currentDisabledSeconds %lu", &v17, 0x26u);
  }

  if (v3 == 1 && !self->_isMegaEnabled)
  {
    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      profileMegaEnabledDate = self->_profileMegaEnabledDate;
      profileMegaDisabledDate = self->_profileMegaDisabledDate;
      v17 = 136447234;
      v18 = "[WAEngine _updateProfileStateDate:]";
      v19 = 1024;
      v20 = 694;
      v21 = 2112;
      v22 = profileMegaEnabledDate;
      v23 = 2112;
      v24 = profileMegaDisabledDate;
      v25 = 2048;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:MegaWiFi Profile Installed: profileMegaEnabledDate %@ profileMegaDisabledDate %@ - was disabled for %lu seconds", &v17, 0x30u);
    }

    v12 = 1;
    v13 = 744;
    v14 = 768;
LABEL_13:

    *(&self->super.isa + v14) = v7;
    objc_storeStrong((&self->super.isa + v13), v5);
    self->_isMegaEnabled = v12;
    goto LABEL_14;
  }

  if (!v3 && self->_isMegaEnabled == 1)
  {
    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_profileMegaEnabledDate;
      v16 = self->_profileMegaDisabledDate;
      v17 = 136447234;
      v18 = "[WAEngine _updateProfileStateDate:]";
      v19 = 1024;
      v20 = 702;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      v25 = 2048;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:MegaWiFi Profile Removed: profileMegaEnabledDate %@ profileMegaDisabledDate %@ - was enabled for %lu seconds", &v17, 0x30u);
    }

    v12 = 0;
    v13 = 752;
    v14 = 760;
    v7 = v6;
    goto LABEL_13;
  }

LABEL_14:
}

- (unint64_t)_getTimeInProfileState:(unsigned __int8)a3
{
  v3 = a3;
  v5 = +[NSDate now];
  [(NSDate *)self->_pidLaunchDate timeIntervalSinceDate:v5];
  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  profileMegaEnabledDate = self->_profileMegaEnabledDate;
  if (v3)
  {
    if (!profileMegaEnabledDate)
    {
      profileMegaEnabledSeconds = 0;
      goto LABEL_22;
    }

    if (self->_profileMegaDisabledDate)
    {
      profileMegaEnabledSeconds = self->_profileMegaEnabledSeconds;
      if (!self->_isMegaEnabled)
      {
        goto LABEL_22;
      }

LABEL_12:
      [(NSDate *)profileMegaEnabledDate timeIntervalSinceDate:v5, v6];
      if (v9 < 0.0)
      {
        v9 = -v9;
      }

      profileMegaEnabledSeconds += v9;
      goto LABEL_22;
    }

    [(NSDate *)profileMegaEnabledDate timeIntervalSinceDate:v5, v6];
    if (v10 < 0.0)
    {
      v10 = -v10;
    }

    profileMegaEnabledSeconds = v10;
  }

  else
  {
    profileMegaEnabledSeconds = v6;
    if (!profileMegaEnabledDate)
    {
      goto LABEL_22;
    }

    if (self->_profileMegaDisabledDate)
    {
      profileMegaEnabledSeconds = self->_profileMegaDisabledSeconds;
      if (self->_isMegaEnabled)
      {
        goto LABEL_22;
      }

      profileMegaEnabledDate = self->_profileMegaDisabledDate;
      goto LABEL_12;
    }

    [(NSDate *)profileMegaEnabledDate timeIntervalSinceDate:v5];
    if (v11 < 0.0)
    {
      v11 = -v11;
    }

    profileMegaEnabledSeconds -= v11;
  }

LABEL_22:

  return profileMegaEnabledSeconds;
}

- (void)initDatapathMetricGetterAndFetcher
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100054F90;
  v3[3] = &unk_1000EDDF8;
  objc_copyWeak(&v4, &location);
  v3[4] = self;
  [(WAEngine *)self setDatapathMetricGetter:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_storeChangedHandler:(id)a3
{
  v3 = a3;
  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[WAEngine _storeChangedHandler:]";
    v7 = 1024;
    v8 = 809;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Received Notification %@", &v5, 0x1Cu);
  }
}

- (void)_triggerDeviceAnalyticsStoreMigrationAndReply:(id)a3
{
  v3 = a3;
  v4 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
  v5 = [v4 storeLoaded];

  if ((v5 & 1) == 0)
  {
    if (!+[WAUtil isKeyBagUnlocked])
    {
      v15 = NSLocalizedFailureReasonErrorKey;
      v16 = @"WAErrorCodeKeyBagLocked";
      v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v8 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9016 userInfo:v9];

      v10 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136446466;
        v12 = "[WAEngine _triggerDeviceAnalyticsStoreMigrationAndReply:]";
        v13 = 1024;
        v14 = 820;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Result for triggerDeviceAnalyticsStoreMigrationAndReply via XPC - Error: WAErrorCodeKeyBagLocked. KeyBag not unlocked", &v11, 0x12u);
      }

      if (v3)
      {
        v3[2](v3, 0, v8);
      }

      goto LABEL_9;
    }

    v6 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
    v7 = [v6 loadStoreIfNeeded];

    if (v3)
    {
      v8 = [NSNumber numberWithBool:v7];
      (v3)[2](v3, v8, 0);
LABEL_9:
    }
  }
}

- (void)createNighltyTimer
{
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_fileHandlingQ);
  nightlyTimer = self->_nightlyTimer;
  self->_nightlyTimer = v3;

  v5 = self->_nightlyTimer;
  if (v5)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100055A50;
    handler[3] = &unk_1000ED880;
    handler[4] = self;
    dispatch_source_set_event_handler(v5, handler);
    v6 = +[NSCalendar currentCalendar];
    v7 = +[NSDate date];
    v8 = [v6 startOfDayForDate:v7];
    v9 = [v8 dateByAddingTimeInterval:(3600 * self->_analyticsDeferredProcessingAtHour + 86400)];
    [v9 timeIntervalSinceNow];
    v11 = v10;

    v12 = WALogCategoryInitPersistentLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      analyticsDeferredProcessingTimeIntervalSecs = self->_analyticsDeferredProcessingTimeIntervalSecs;
      *buf = 136446978;
      v22 = "[WAEngine createNighltyTimer]";
      v23 = 1024;
      v24 = 853;
      v25 = 2048;
      v26 = v11;
      v27 = 2048;
      v28 = analyticsDeferredProcessingTimeIntervalSecs;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Starting _nightlyTimer to fire in %llu s and every %llu s", buf, 0x26u);
    }

    v14 = self->_nightlyTimer;
    v15 = dispatch_time(0xFFFFFFFFFFFFFFFELL, (v11 * 1000000000.0));
    [(WAEngine *)self analyticsDeferredProcessingTimeIntervalSecs];
    dispatch_source_set_timer(v14, v15, 1000000000 * v16, 0x174876E800uLL);
    dispatch_resume(self->_nightlyTimer);
    v17 = [(WAEngine *)self fileHandlingQ];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100055B18;
    v19[3] = &unk_1000ED880;
    v19[4] = self;
    dispatch_async(v17, v19);
  }

  else
  {
    v18 = WALogCategoryInitPersistentLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v22 = "[WAEngine createNighltyTimer]";
      v23 = 1024;
      v24 = 843;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to create _nightlyTimer", buf, 0x12u);
    }
  }
}

- (void)run
{
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v8 = "[WAEngine run]";
    v9 = 1024;
    v10 = 868;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Starting...", buf, 0x12u);
  }

  engineQ = self->_engineQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100055D20;
  block[3] = &unk_1000ED880;
  block[4] = self;
  dispatch_sync(engineQ, block);
  v5 = [(WAEngine *)self listener];
  [v5 resume];
}

- (BOOL)queryInfraInterfaceInstanceAndChip
{
  v3 = +[WAApple80211Manager sharedObject];
  v4 = [v3 getInfraApple80211];

  if (!v4)
  {
    v15 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v19 = 136446466;
    v20 = "[WAEngine queryInfraInterfaceInstanceAndChip]";
    v21 = 1024;
    v22 = 881;
    v18 = "%{public}s::%d:invalid apple80211API";
    goto LABEL_25;
  }

  infraInterfaceName = self->_infraInterfaceName;
  if (!infraInterfaceName || [(NSString *)infraInterfaceName isEqualToString:@"dunno"])
  {
    v6 = [v4 ifName];
    v7 = self->_infraInterfaceName;
    self->_infraInterfaceName = v6;

    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = self->_infraInterfaceName;
      v19 = 136446722;
      v20 = "[WAEngine queryInfraInterfaceInstanceAndChip]";
      v21 = 1024;
      v22 = 889;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s::%d:[apple80211 ifName]%@", &v19, 0x1Cu);
    }
  }

  v10 = self->_infraInterfaceName;
  if (!v10 || [(NSString *)v10 isEqualToString:@"dunno"])
  {
    v15 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v19 = 136446466;
    v20 = "[WAEngine queryInfraInterfaceInstanceAndChip]";
    v21 = 1024;
    v22 = 892;
    v18 = "%{public}s::%d:failed to find _infraInterfaceName";
LABEL_25:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v18, &v19, 0x12u);
    goto LABEL_26;
  }

  v11 = [(NSMutableDictionary *)self->_interfaceNameToApple80211InstanceMap objectForKeyedSubscript:self->_infraInterfaceName];

  if (!v11)
  {
    [(NSMutableDictionary *)self->_interfaceNameToApple80211InstanceMap setObject:v4 forKeyedSubscript:self->_infraInterfaceName];
  }

  wifiChipSet = self->_wifiChipSet;
  if (!wifiChipSet || [(NSString *)wifiChipSet isEqualToString:&stru_1000F04E0])
  {
    v13 = [v4 getChipSet];
    v14 = self->_wifiChipSet;
    self->_wifiChipSet = v13;
  }

  if (!self->_wifiChipSet && [0 isEqualToString:&stru_1000F04E0])
  {
    v15 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = 136446466;
      v20 = "[WAEngine queryInfraInterfaceInstanceAndChip]";
      v21 = 1024;
      v22 = 902;
      v18 = "%{public}s::%d:failed to find _wifiChipSet";
      goto LABEL_25;
    }

LABEL_26:
    v16 = 0;
    goto LABEL_18;
  }

  v15 = WALogCategoryDefaultHandle();
  v16 = 1;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136446722;
    v20 = "[WAEngine queryInfraInterfaceInstanceAndChip]";
    v21 = 1024;
    v22 = 906;
    v23 = 1024;
    LODWORD(v24) = 1;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:queryInfraInterfaceInstanceAndChip returning %d", &v19, 0x18u);
  }

LABEL_18:

  return v16;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.private.wifianalytics"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [[WAXPCConnection alloc] initWithXPCConnection:v5];
    [v8 setDelegate:self];
    v9 = [(WAEngine *)self exportedInterface];

    if (!v9)
    {
      v10 = WAXPCRequestDelegateInterface();
      [(WAEngine *)self setExportedInterface:v10];
    }

    v11 = [(WAEngine *)self exportedInterface];
    [v5 setExportedInterface:v11];

    [v5 setExportedObject:v8];
    [v5 resume];
    v12 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136447234;
      v15 = "[WAEngine listener:shouldAcceptNewConnection:]";
      v16 = 1024;
      v17 = 935;
      v18 = 1024;
      v19 = [v5 processIdentifier];
      v20 = 1024;
      v21 = [v5 effectiveUserIdentifier];
      v22 = 1024;
      v23 = [v5 effectiveGroupIdentifier];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:XPC: ADDED XPC CONNECTION [pid=%d, euid=%d, egid=%d]", &v14, 0x24u);
    }
  }

  else
  {
    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446466;
      v15 = "[WAEngine listener:shouldAcceptNewConnection:]";
      v16 = 1024;
      v17 = 922;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: Connection from client not entitled, will not accept", &v14, 0x12u);
    }
  }

  return v7;
}

- (void)xpcConnection:(id)a3 establishConnectionWithToken:(id)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v33 = a5;
  objc_initWeak(&location, v8);
  objc_initWeak(&v46, self);
  v32 = v9;
  v10 = objc_loadWeakRetained(&location);
  v11 = [v10 connection];
  objc_initWeak(&from, v11);

  if (v32)
  {
    v31 = 0;
    v16 = v32;
  }

  else
  {
    v12 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v8 connection];
      v14 = [v13 processIdentifier];
      *buf = 136446722;
      v49 = "[WAEngine xpcConnection:establishConnectionWithToken:andReply:]";
      v50 = 1024;
      v51 = 954;
      v52 = 1024;
      LODWORD(v53) = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Connection from pid=%d without token. Generating a token for the reply", buf, 0x18u);
    }

    v15 = +[NSUUID UUID];
    v16 = [v15 UUIDString];

    v31 = v16;
  }

  [v8 setToken:v16];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100056828;
  v42[3] = &unk_1000EDE20;
  objc_copyWeak(&v43, &location);
  objc_copyWeak(&v44, &from);
  v17 = [v8 connection];
  [v17 setInterruptionHandler:v42];

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100056994;
  v38[3] = &unk_1000EDE70;
  v38[4] = self;
  objc_copyWeak(&v39, &location);
  objc_copyWeak(&v40, &from);
  objc_copyWeak(&v41, &v46);
  v18 = [v8 connection];
  [v18 setInvalidationHandler:v38];

  v19 = [(WAEngine *)self engineQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056C88;
  block[3] = &unk_1000EDE98;
  objc_copyWeak(&v37, &v46);
  v20 = v16;
  v35 = v20;
  v21 = v8;
  v36 = v21;
  dispatch_async(v19, block);

  objc_destroyWeak(&v37);
  v22 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v21 token];
    v24 = [WAUtil trimTokenForLogging:v23];
    v25 = [v21 connection];
    v26 = [v25 processIdentifier];
    v27 = [v21 connection];
    v28 = [v27 effectiveUserIdentifier];
    v29 = [v21 connection];
    v30 = [v29 effectiveGroupIdentifier];
    *buf = 136447490;
    v49 = "[WAEngine xpcConnection:establishConnectionWithToken:andReply:]";
    v50 = 1024;
    v51 = 994;
    v52 = 2112;
    v53 = v24;
    v54 = 1024;
    v55 = v26;
    v56 = 1024;
    v57 = v28;
    v58 = 1024;
    v59 = v30;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:XPC: Token: %@ is for: [pid=%d, euid=%d, egid=%d]", buf, 0x2Eu);
  }

  if (v33)
  {
    v33[2](v33, v31, 0);
  }

  objc_destroyWeak(&v41);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&v44);
  objc_destroyWeak(&v43);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 submitMessage:(id)a4 groupType:(int64_t)a5 andReply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  objc_initWeak(&location, self);
  v13 = [(WAEngine *)self engineQ];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100056E68;
  v17[3] = &unk_1000EDEC0;
  objc_copyWeak(v21, &location);
  v18 = v10;
  v19 = v11;
  v21[1] = a5;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 getMessagesModelForGroupType:(int64_t)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = [(WAEngine *)self engineQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057218;
  block[3] = &unk_1000EDDD0;
  objc_copyWeak(v16, &location);
  v16[1] = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 registerMessageGroup:(int64_t)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = [(WAEngine *)self engineQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005751C;
  block[3] = &unk_1000EDDD0;
  objc_copyWeak(v16, &location);
  v16[1] = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 getNewMessageForKey:(id)a4 groupType:(int64_t)a5 withCopy:(id)a6 andReply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  objc_initWeak(&location, self);
  v16 = [(WAEngine *)self engineQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057D90;
  block[3] = &unk_1000EDF10;
  objc_copyWeak(v26, &location);
  v26[1] = a5;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(v16, block);

  objc_destroyWeak(v26);
  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 killDaemonAndReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [v6 connection];
  v9 = [v8 valueForEntitlement:@"com.apple.private.wifianalytics.test"];
  v10 = [v9 BOOLValue];

  v11 = WALogCategoryDefaultHandle();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v24 = "[WAEngine xpcConnection:killDaemonAndReply:]";
      v25 = 1024;
      v26 = 1104;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Received killDaemon via XPC - this shouldn't happen outside of unit tests", buf, 0x12u);
    }

    v13 = [(WAEngine *)self engineQ];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100058398;
    block[3] = &unk_1000EDF60;
    block[4] = self;
    objc_copyWeak(&v21, &location);
    v19 = v6;
    v20 = v7;
    dispatch_async(v13, block);

    objc_destroyWeak(&v21);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = [v6 token];
      v15 = [WAUtil trimTokenForLogging:v14];
      v16 = [v6 connection];
      v17 = [v16 processIdentifier];
      *buf = 136447234;
      v24 = "[WAEngine xpcConnection:killDaemonAndReply:]";
      v25 = 1024;
      v26 = 1102;
      v27 = 2112;
      v28 = v15;
      v29 = 1024;
      v30 = v17;
      v31 = 2112;
      v32 = @"com.apple.private.wifianalytics";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: ERROR: %@ (%d) is not entitled with WA_XPC_ENTITLEMENT_TEST  for %@, rejecting connection!!!", buf, 0x2Cu);
    }
  }

  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 clearMessageStoreAndReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [v6 connection];
  v9 = [v8 valueForEntitlement:@"com.apple.private.wifianalytics.test"];
  v10 = [v9 BOOLValue];

  v11 = WALogCategoryDefaultHandle();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v24 = "[WAEngine xpcConnection:clearMessageStoreAndReply:]";
      v25 = 1024;
      v26 = 1128;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Received clearMessageStoreAndReply via XPC - this shouldn't happen outside of unit tests", buf, 0x12u);
    }

    v13 = [(WAEngine *)self engineQ];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000587B8;
    v18[3] = &unk_1000EDF38;
    objc_copyWeak(&v21, &location);
    v19 = v6;
    v20 = v7;
    dispatch_async(v13, v18);

    objc_destroyWeak(&v21);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = [v6 token];
      v15 = [WAUtil trimTokenForLogging:v14];
      v16 = [v6 connection];
      v17 = [v16 processIdentifier];
      *buf = 136447234;
      v24 = "[WAEngine xpcConnection:clearMessageStoreAndReply:]";
      v25 = 1024;
      v26 = 1126;
      v27 = 2112;
      v28 = v15;
      v29 = 1024;
      v30 = v17;
      v31 = 2112;
      v32 = @"com.apple.private.wifianalytics";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: ERROR: %@ (%d) is not entitled with WA_XPC_ENTITLEMENT_TEST  for %@, rejecting connection!!!", buf, 0x2Cu);
    }
  }

  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 trapCrashMiniTracerDumpReadyForInterfaceWithName:(id)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [v8 connection];
  v12 = [v11 valueForEntitlement:@"com.apple.private.wifianalytics.fw-trap"];
  v13 = [v12 BOOLValue];

  v14 = WALogCategoryDefaultHandle();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v28 = "[WAEngine xpcConnection:trapCrashMiniTracerDumpReadyForInterfaceWithName:andReply:]";
      v29 = 1024;
      v30 = 1151;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Received trapCrashMiniTracerDumpReady via XPC, usually this due to wifid detecting the kApple80211DriverAvailabilityFlagHasTrapCrashTracerMiniDump flag in a driver availability message", buf, 0x12u);
    }

    v16 = [(WAEngine *)self engineQ];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100058BE8;
    block[3] = &unk_1000EDF60;
    objc_copyWeak(&v25, &location);
    v22 = v8;
    v23 = v9;
    v24 = v10;
    dispatch_async(v16, block);

    objc_destroyWeak(&v25);
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = [v8 token];
      v18 = [WAUtil trimTokenForLogging:v17];
      v19 = [v8 connection];
      v20 = [v19 processIdentifier];
      *buf = 136447234;
      v28 = "[WAEngine xpcConnection:trapCrashMiniTracerDumpReadyForInterfaceWithName:andReply:]";
      v29 = 1024;
      v30 = 1149;
      v31 = 2112;
      v32 = v18;
      v33 = 1024;
      v34 = v20;
      v35 = 2112;
      v36 = @"com.apple.private.wifianalytics";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: ERROR: %@ (%d) is not entitled with WA_XPC_ENTITLEMENT_FW_TRAP  for %@, rejecting connection!!!", buf, 0x2Cu);
    }
  }

  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 lqmCrashTracerNotifyForInterfaceWithName:(id)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [v8 connection];
  v12 = [v11 valueForEntitlement:@"com.apple.private.wifianalytics.fw-trap"];
  v13 = [v12 BOOLValue];

  v14 = WALogCategoryDefaultHandle();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v28 = "[WAEngine xpcConnection:lqmCrashTracerNotifyForInterfaceWithName:andReply:]";
      v29 = 1024;
      v30 = 1174;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Received lqmCrashTracerNotify via XPC", buf, 0x12u);
    }

    v16 = [(WAEngine *)self engineQ];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100059018;
    block[3] = &unk_1000EDF60;
    objc_copyWeak(&v25, &location);
    v22 = v8;
    v23 = v9;
    v24 = v10;
    dispatch_async(v16, block);

    objc_destroyWeak(&v25);
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = [v8 token];
      v18 = [WAUtil trimTokenForLogging:v17];
      v19 = [v8 connection];
      v20 = [v19 processIdentifier];
      *buf = 136447234;
      v28 = "[WAEngine xpcConnection:lqmCrashTracerNotifyForInterfaceWithName:andReply:]";
      v29 = 1024;
      v30 = 1172;
      v31 = 2112;
      v32 = v18;
      v33 = 1024;
      v34 = v20;
      v35 = 2112;
      v36 = @"com.apple.private.wifianalytics";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: ERROR: %@ (%d) is not entitled with WA_XPC_ENTITLEMENT_FW_TRAP  for %@, rejecting connection!!!", buf, 0x2Cu);
    }
  }

  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 lqmCrashTracerReceiveBlock:(id)a4 forInterfaceWithName:(id)a5 andReply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v14 = [v10 connection];
  v15 = [v14 valueForEntitlement:@"com.apple.private.wifianalytics.fw-trap"];
  v16 = [v15 BOOLValue];

  v17 = WALogCategoryDefaultHandle();
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v32 = "[WAEngine xpcConnection:lqmCrashTracerReceiveBlock:forInterfaceWithName:andReply:]";
      v33 = 1024;
      v34 = 1196;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Received lqmCrashTracerReceiveBlock via XPC", buf, 0x12u);
    }

    v19 = [(WAEngine *)self engineQ];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100059468;
    v24[3] = &unk_1000EDF88;
    objc_copyWeak(&v29, &location);
    v25 = v10;
    v26 = v11;
    v27 = v12;
    v28 = v13;
    dispatch_async(v19, v24);

    objc_destroyWeak(&v29);
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = [v10 token];
      v21 = [WAUtil trimTokenForLogging:v20];
      v22 = [v10 connection];
      v23 = [v22 processIdentifier];
      *buf = 136447234;
      v32 = "[WAEngine xpcConnection:lqmCrashTracerReceiveBlock:forInterfaceWithName:andReply:]";
      v33 = 1024;
      v34 = 1194;
      v35 = 2112;
      v36 = v21;
      v37 = 1024;
      v38 = v23;
      v39 = 2112;
      v40 = @"com.apple.private.wifianalytics";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: ERROR: %@ (%d) is not entitled with WA_XPC_ENTITLEMENT_FW_TRAP  for %@, rejecting connection!!!", buf, 0x2Cu);
    }
  }

  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 triggerQueryForNWActivity:(int64_t)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = [(WAEngine *)self engineQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000596D0;
  block[3] = &unk_1000EDDD0;
  objc_copyWeak(v16, &location);
  v16[1] = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 triggerQueryForNWActivityWithPeers:(id)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(WAEngine *)self engineQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100059BDC;
  block[3] = &unk_1000EDF60;
  objc_copyWeak(&v19, &location);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 convertWiFiStatsIntoPercentile:(id)a4 analysisGroup:(int64_t)a5 groupTarget:(id)a6 andReply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  objc_initWeak(&location, self);
  v16 = [(WAEngine *)self engineQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005A10C;
  block[3] = &unk_1000EDF10;
  objc_copyWeak(v26, &location);
  v22 = v12;
  v23 = v13;
  v26[1] = a5;
  v24 = v14;
  v25 = v15;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(v16, block);

  objc_destroyWeak(v26);
  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 triggerDatapathDiagnosticsAndCollectUpdates:(int64_t)a4 waMessage:(id)a5 andReply:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  objc_initWeak(&location, self);
  v13 = [(WAEngine *)self engineQ];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10005A550;
  v17[3] = &unk_1000EDEC0;
  objc_copyWeak(v21, &location);
  v18 = v10;
  v19 = v11;
  v21[1] = a4;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 getDpsStatsandReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(WAEngine *)self engineQ];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005A940;
  v11[3] = &unk_1000EDF38;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 getUsageStatsandReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(WAEngine *)self engineQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005AD64;
  block[3] = &unk_1000EDF60;
  objc_copyWeak(&v15, &location);
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 setDeviceAnalyticsConfiguration:(id)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(WAEngine *)self engineQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B1DC;
  block[3] = &unk_1000EDF60;
  objc_copyWeak(&v19, &location);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 getDeviceAnalyticsConfigurationAndReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(WAEngine *)self engineQ];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005B554;
  v11[3] = &unk_1000EDF38;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 signalPotentialNewIORChannelsAndReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(WAEngine *)self engineQ];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005B8DC;
  v11[3] = &unk_1000EDF38;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 updateRoamPoliciesForSourceBssid:(id)a4 andUpdateRoamCache:(BOOL)a5 andReply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  objc_initWeak(&location, self);
  v13 = [(WAEngine *)self engineQ];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10005BCF0;
  v17[3] = &unk_1000EDFB0;
  objc_copyWeak(&v21, &location);
  v18 = v10;
  v19 = v11;
  v22 = a5;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, v17);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 updateRoamPoliciesAndSummarizeAnalyticsForNetwork:(id)a4 maxAgeInDays:(unint64_t)a5 andReply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  objc_initWeak(&location, self);
  v13 = [(WAEngine *)self engineQ];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10005C138;
  v17[3] = &unk_1000EDEC0;
  objc_copyWeak(v21, &location);
  v18 = v10;
  v19 = v11;
  v21[1] = a5;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 triggerDeviceAnalyticsStoreMigrationAndReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v18 = "[WAEngine xpcConnection:triggerDeviceAnalyticsStoreMigrationAndReply:]";
    v19 = 1024;
    v20 = 1551;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Received triggerDeviceAnalyticsStoreMigrationAndReply via XPC", buf, 0x12u);
  }

  v9 = [(WAEngine *)self engineQ];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005C564;
  v12[3] = &unk_1000EDF38;
  objc_copyWeak(&v15, &location);
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 sendMemoryPressureRequestAndReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [v6 connection];
  v9 = [v8 valueForEntitlement:@"com.apple.private.wifianalytics.test"];
  v10 = [v9 BOOLValue];

  v11 = WALogCategoryDefaultHandle();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v24 = "[WAEngine xpcConnection:sendMemoryPressureRequestAndReply:]";
      v25 = 1024;
      v26 = 1587;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Received MemoryPressure request via XPC - this shouldn't happen outside of unit tests", buf, 0x12u);
    }

    v13 = [(WAEngine *)self engineQ];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10005CAEC;
    v18[3] = &unk_1000EDF38;
    objc_copyWeak(&v21, &location);
    v19 = v6;
    v20 = v7;
    dispatch_async(v13, v18);

    objc_destroyWeak(&v21);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = [v6 token];
      v15 = [WAUtil trimTokenForLogging:v14];
      v16 = [v6 connection];
      v17 = [v16 processIdentifier];
      *buf = 136447234;
      v24 = "[WAEngine xpcConnection:sendMemoryPressureRequestAndReply:]";
      v25 = 1024;
      v26 = 1584;
      v27 = 2112;
      v28 = v15;
      v29 = 1024;
      v30 = v17;
      v31 = 2112;
      v32 = @"com.apple.private.wifianalytics";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: ERROR: %@ (%d) is not entitled with WA_XPC_ENTITLEMENT_TEST  for %@, rejecting connection!!!", buf, 0x2Cu);
    }
  }

  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 issueIOReportManagementCommand:(unint64_t)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10005CFFC;
  v32 = sub_10005D00C;
  v33 = 0;
  v10 = [v8 connection];
  v11 = [v10 valueForEntitlement:@"com.apple.private.wifianalytics.test"];
  v12 = [v11 BOOLValue];

  v13 = WALogCategoryDefaultHandle();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v38 = "[WAEngine xpcConnection:issueIOReportManagementCommand:andReply:]";
      v39 = 1024;
      v40 = 1613;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Received issueIOReportManagementCommand request via XPC - this shouldn't happen outside of unit tests", buf, 0x12u);
    }

    v15 = [(WAEngine *)self engineQ];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10005D014;
    v23[3] = &unk_1000EDFD8;
    objc_copyWeak(v27, &location);
    v24 = v8;
    v26 = &v28;
    v27[1] = a4;
    v25 = v9;
    dispatch_async(v15, v23);

    objc_destroyWeak(v27);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = [v8 token];
      v17 = [WAUtil trimTokenForLogging:v16];
      v18 = [v8 connection];
      v19 = [v18 processIdentifier];
      *buf = 136447234;
      v38 = "[WAEngine xpcConnection:issueIOReportManagementCommand:andReply:]";
      v39 = 1024;
      v40 = 1611;
      v41 = 2112;
      v42 = v17;
      v43 = 1024;
      v44 = v19;
      v45 = 2112;
      v46 = @"com.apple.private.wifianalytics";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: ERROR: %@ (%d) is not entitled with WA_XPC_ENTITLEMENT_TEST  for %@, rejecting connection!!!", buf, 0x2Cu);
    }

    v35 = NSLocalizedFailureReasonErrorKey;
    v36 = @"WAErrorCodeClientNotEntitled";
    v20 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v21 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9030 userInfo:v20];
    v22 = v29[5];
    v29[5] = v21;
  }

  if (v9)
  {
    (*(v9 + 2))(v9, 0, v29[5]);
  }

  _Block_object_dispose(&v28, 8);

  objc_destroyWeak(&location);
}

- (void)xpcConnection:(id)a3 processManagedFault:(id)a4 at:(id)a5 andReply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v14 = [(WAEngine *)self engineQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005D4E4;
  block[3] = &unk_1000EE000;
  objc_copyWeak(&v25, &location);
  v20 = v10;
  v21 = self;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (BOOL)submitterMapCheck:(id)a3 group:(int64_t)a4
{
  v6 = a3;
  submitterMap = self->_submitterMap;
  v8 = [v6 token];
  v9 = [(NSMutableDictionary *)submitterMap objectForKeyedSubscript:v8];
  v10 = [NSNumber numberWithInteger:a4];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v12 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 connection];
      v14 = [v13 processIdentifier];
      v15 = [v6 connection];
      v16 = [v15 serviceName];
      v17 = [WAUtil groupTypeToString:a4];
      v19 = 136447490;
      v20 = "[WAEngine submitterMapCheck:group:]";
      v21 = 1024;
      v22 = 1675;
      v23 = 1024;
      v24 = v14;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      v29 = 2048;
      v30 = a4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:pid %d proc %@ group %@(%ld) not in submitterMap", &v19, 0x36u);
    }
  }

  return v11 != 0;
}

- (void)freeAllocationsForProcessToken:(id)a3
{
  v4 = a3;
  v5 = [(WAEngine *)self cachedModelObjectsKeyToMessageMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = WALogCategoryDefaultHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = [WAUtil trimTokenForLogging:v4];
      v10 = [(WAEngine *)self cachedModelObjectsKeyToMessageMap];
      v11 = [v10 objectForKeyedSubscript:v4];
      v12 = [WAUtil countTotalKeysInNSObject:v11];
      v13 = [(WAEngine *)self cachedModelObjectsKeyToMessageMap];
      v19 = 136447234;
      v20 = "[WAEngine freeAllocationsForProcessToken:]";
      v21 = 1024;
      v22 = 1687;
      v23 = 2112;
      v24 = v9;
      v25 = 2048;
      v26 = v12;
      v27 = 2048;
      v28 = [WAUtil countTotalKeysInNSObject:v13];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Removing processToken %@ objects from cachedModelObjectsKeyToMessageMap - countTotalKeysInNSObject to remove %ld, initial total is %ld", &v19, 0x30u);
    }

    v14 = [(WAEngine *)self cachedModelObjectsKeyToMessageMap];
    [v14 removeObjectForKey:v4];

    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [WAUtil trimTokenForLogging:v4];
      v16 = [(WAEngine *)self cachedModelObjectsKeyToMessageMap];
      v17 = [WAUtil countTotalKeysInNSObject:v16];
      v19 = 136446978;
      v20 = "[WAEngine freeAllocationsForProcessToken:]";
      v21 = 1024;
      v22 = 1691;
      v23 = 2112;
      v24 = v15;
      v25 = 2048;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Removed processToken %@ objects from cachedModelObjectsKeyToMessageMap - final total is %ld", &v19, 0x26u);
    }
  }

  else if (v8)
  {
    v18 = [WAUtil trimTokenForLogging:v4];
    v19 = 136446722;
    v20 = "[WAEngine freeAllocationsForProcessToken:]";
    v21 = 1024;
    v22 = 1693;
    v23 = 2112;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:processToken %@ not in cachedModelObjectsKeyToMessageMap, nothing to free", &v19, 0x1Cu);
  }
}

- (id)getXPCConnectionForProcessToken:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10005CFFC;
  v16 = sub_10005D00C;
  v17 = 0;
  v5 = [(WAEngine *)self engineQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005DE14;
  block[3] = &unk_1000EE028;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)sendWakeUpNotificationForProcessWithName:(id)a3
{
  v4 = a3;
  v5 = [(WAEngine *)self engineQ];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005DF28;
  v7[3] = &unk_1000ED988;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)prepareToTerminateViaEagerExit
{
  objc_initWeak(&location, self);
  v3 = [(WAEngine *)self engineQ];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005E12C;
  v4[3] = &unk_1000ED938;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_prepareToTerminateViaEagerExit
{
  [WAUtil incrementValueForKey:@"Terminations - Try Eager Exit" inMutableDict:self->_cachedUsage onQueue:self->_engineQ];
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[WAEngine _prepareToTerminateViaEagerExit]";
    v7 = 1024;
    v8 = 1747;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:prepareToTerminate...", &v5, 0x12u);
  }

  [(WAEngine *)self _prepareToTerminate];
  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[WAEngine _prepareToTerminateViaEagerExit]";
    v7 = 1024;
    v8 = 1749;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Done", &v5, 0x12u);
  }
}

- (void)prepareToTerminateAnyReply:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(WAEngine *)self engineQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005E44C;
  block[3] = &unk_1000EE050;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_prepareToTerminate
{
  [WAUtil incrementValueForKey:@"Terminations - Graceful" inMutableDict:self->_cachedUsage onQueue:self->_engineQ];
  [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Last Graceful Termination Date"];
  cachedUsage = self->_cachedUsage;
  v4 = +[NSDate date];
  [(NSMutableDictionary *)cachedUsage setObject:v4 forKey:@"Last Graceful Termination Date"];

  v5 = [(WAEngine *)self listener];
  [v5 suspend];

  v6 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[WAEngine _prepareToTerminate]";
    v12 = 1024;
    v13 = 1770;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:_persist", &v10, 0x12u);
  }

  [(WAEngine *)self _persist];
  v7 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[WAEngine _prepareToTerminate]";
    v12 = 1024;
    v13 = 1772;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:persistIORObjects", &v10, 0x12u);
  }

  v8 = [(WAEngine *)self iorMessagePopulator];
  [v8 persistIORObjects:1];

  v9 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[WAEngine _prepareToTerminate]";
    v12 = 1024;
    v13 = 1774;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Done", &v10, 0x12u);
  }
}

- (void)handleMemoryWarning:(BOOL)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v12 = "[WAEngine handleMemoryWarning:]";
    v13 = 1024;
    v14 = 1781;
    v15 = 2080;
    v16 = "[WAEngine handleMemoryWarning:]";
    v17 = 1024;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: critical=%d", buf, 0x22u);
  }

  v6 = [(WAEngine *)self engineQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005E8F0;
  block[3] = &unk_1000ED960;
  objc_copyWeak(&v8, &location);
  v9 = v3;
  dispatch_async(v6, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)_getBasePersistenceKeychainQuery
{
  v5[0] = kSecAttrAccount;
  v5[1] = kSecAttrService;
  v6[0] = @"com.apple.wifi.analytics.persistence";
  v6[1] = @"WiFiAnalytics";
  v5[2] = kSecAttrAccessGroup;
  v5[3] = kSecClass;
  v6[2] = @"apple";
  v6[3] = kSecClassGenericPassword;
  v2 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = [v2 mutableCopy];

  return v3;
}

- (id)_rotateObscureKey
{
  v3 = +[NSUUID UUID];
  v4 = [v3 UUIDString];

  v5 = [(WAEngine *)self _getBasePersistenceKeychainQuery];
  v6 = v5;
  if (v5)
  {
    SecItemDelete(v5);
    v7 = [v4 dataUsingEncoding:4];
    [(__CFDictionary *)v6 setObject:v7 forKeyedSubscript:kSecValueData];

    [(__CFDictionary *)v6 setObject:kSecAttrAccessibleAlways forKeyedSubscript:kSecAttrAccessible];
    v8 = SecItemAdd(v6, 0);
    if (!v8)
    {
      goto LABEL_3;
    }

    v15 = v8;
    v11 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v16 = 136446722;
      *&v16[4] = "[WAEngine _rotateObscureKey]";
      *&v16[12] = 1024;
      *&v16[14] = 1838;
      *&v16[18] = 1024;
      *&v16[20] = v15;
      v12 = "%{public}s::%d:Error back from SecItemUpdate()/SecItemAdd(): %d";
      v13 = v11;
      v14 = 24;
      goto LABEL_10;
    }
  }

  else
  {
    v11 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v16 = 136446466;
      *&v16[4] = "[WAEngine _rotateObscureKey]";
      *&v16[12] = 1024;
      *&v16[14] = 1827;
      v12 = "%{public}s::%d:Failed to get base keychain query for write op";
      v13 = v11;
      v14 = 18;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, v16, v14);
    }
  }

LABEL_3:
  v9 = [(WAEngine *)self _getObscureKey:*v16];

  return v9;
}

- (id)_getObscureKey
{
  result = 0;
  v2 = [(WAEngine *)self _getBasePersistenceKeychainQuery];
  v3 = v2;
  if (v2)
  {
    [(__CFDictionary *)v2 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnData];
    v4 = SecItemCopyMatching(v3, &result);
    if (v4)
    {
      v10 = v4;
      v6 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v15 = "[WAEngine _getObscureKey]";
        v16 = 1024;
        v17 = 1856;
        v18 = 1024;
        v19 = v10;
        v9 = "%{public}s::%d:Error back from SecItemCopyMatching(): %d";
        v11 = v6;
        v12 = 24;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v9, buf, v12);
      }
    }

    else
    {
      if (result)
      {
        v5 = [NSString alloc];
        v6 = result;
        v7 = [v5 initWithData:result encoding:4];
        goto LABEL_5;
      }

      v6 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v15 = "[WAEngine _getObscureKey]";
        v16 = 1024;
        v17 = 1857;
        v9 = "%{public}s::%d:Keychain didn't return any key data";
        goto LABEL_14;
      }
    }
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v15 = "[WAEngine _getObscureKey]";
      v16 = 1024;
      v17 = 1851;
      v9 = "%{public}s::%d:Failed to get base keychain query for read op";
LABEL_14:
      v11 = v6;
      v12 = 18;
      goto LABEL_15;
    }
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (void)_saveKeyIVData:(id)a3 andTagData:(id)a4
{
  v25[0] = kSecAttrAccount;
  v25[1] = kSecAttrService;
  v26[0] = @"com.apple.wifi.analytics.persistence-iv";
  v26[1] = @"WiFiAnalytics";
  v25[2] = kSecAttrAccessGroup;
  v25[3] = kSecAttrAccessible;
  v26[2] = @"apple";
  v26[3] = kSecAttrAccessibleAlways;
  v25[4] = kSecClass;
  v26[4] = kSecClassGenericPassword;
  v16 = a4;
  v5 = a3;
  v6 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:5];
  v7 = [v6 mutableCopy];

  v23[0] = kSecAttrAccount;
  v23[1] = kSecAttrService;
  v24[0] = @"com.apple.wifi.analytics.persistence-tag";
  v24[1] = @"WiFiAnalytics";
  v23[2] = kSecAttrAccessGroup;
  v23[3] = kSecAttrAccessible;
  v24[2] = @"apple";
  v24[3] = kSecAttrAccessibleAlways;
  v23[4] = kSecClass;
  v24[4] = kSecClassGenericPassword;
  v8 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:5];
  v9 = [v8 mutableCopy];

  SecItemDelete(v7);
  SecItemDelete(v9);
  [(__CFDictionary *)v7 setObject:v5 forKeyedSubscript:kSecValueData];

  [(__CFDictionary *)v9 setObject:v16 forKeyedSubscript:kSecValueData];
  v10 = SecItemAdd(v7, 0);
  if (v10)
  {
    v12 = v10;
    v13 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v18 = "[WAEngine _saveKeyIVData:andTagData:]";
      v19 = 1024;
      v20 = 1894;
      v21 = 1024;
      v22 = v12;
      v14 = "%{public}s::%d:Error back from SecItemUpdate()/SecItemAdd(): %d for IV data";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x18u);
    }

LABEL_9:

    goto LABEL_3;
  }

  v11 = SecItemAdd(v9, 0);
  if (v11)
  {
    v15 = v11;
    v13 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v18 = "[WAEngine _saveKeyIVData:andTagData:]";
      v19 = 1024;
      v20 = 1897;
      v21 = 1024;
      v22 = v15;
      v14 = "%{public}s::%d:Error back from SecItemUpdate()/SecItemAdd(): %d for Tag data";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

LABEL_3:
}

- (id)_getDataFromKeychain:(id)a3
{
  v3 = a3;
  result = 0;
  v21[0] = kSecAttrAccount;
  v21[1] = kSecAttrService;
  v22[0] = v3;
  v22[1] = @"WiFiAnalytics";
  v21[2] = kSecAttrAccessGroup;
  v21[3] = kSecReturnData;
  v22[2] = @"apple";
  v22[3] = &__kCFBooleanTrue;
  v21[4] = kSecClass;
  v22[4] = kSecClassGenericPassword;
  v4 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:5];
  v5 = [v4 mutableCopy];

  v6 = SecItemCopyMatching(v5, &result);
  if (v6)
  {
    v9 = v6;
    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v16 = "[WAEngine _getDataFromKeychain:]";
      v17 = 1024;
      v18 = 1917;
      v19 = 1024;
      LODWORD(v20[0]) = v9;
      WORD2(v20[0]) = 2080;
      *(v20 + 6) = "[WAEngine _getDataFromKeychain:]";
      v11 = "%{public}s::%d:Error back from SecItemCopyMatching(): %d in %s";
      v12 = v10;
      v13 = 34;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    }
  }

  else
  {
    v7 = result;
    if (result)
    {
      goto LABEL_3;
    }

    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "[WAEngine _getDataFromKeychain:]";
      v17 = 1024;
      v18 = 1918;
      v19 = 2112;
      v20[0] = v3;
      v11 = "%{public}s::%d:Keychain didn't return any key data for %@";
      v12 = v10;
      v13 = 28;
      goto LABEL_10;
    }
  }

  v7 = 0;
LABEL_3:

  return v7;
}

- (void)_persist
{
  v3 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAEngine Persist", "", buf, 2u);
  }

  v4 = os_transaction_create();
  p_superclass = CADataTransformEngine.superclass;
  v6 = +[WAActivityManager sharedActivityManager];
  [v6 osTransactionCreate:"com.apple.wifianalytics.persist" transaction:v4];

  v7 = v4;
  v8 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    description = os_transaction_get_description();
    *buf = 136446722;
    v169 = "[WAEngine _persist]";
    v170 = 1024;
    v171 = 1929;
    v172 = 2080;
    v173 = description;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Started transaction %s", buf, 0x1Cu);
  }

  v167 = 0;
  if (self->_readingPersistFile || self->_writingPersistFile)
  {
    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = @"writing";
      readingPersistFile = self->_readingPersistFile;
      v169 = "[WAEngine _persist]";
      *buf = 136446722;
      if (readingPersistFile)
      {
        v11 = @"reading";
      }

      v170 = 1024;
      v171 = 1935;
      v172 = 2112;
      v173 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:Cannot persist, we're currenlty %@ the persistence file", buf, 0x1Cu);
    }

LABEL_12:
    v13 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = os_transaction_get_description();
      *buf = 136446722;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 2158;
      v172 = 2080;
      v173 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Ending transaction %s", buf, 0x1Cu);
    }

    v15 = [p_superclass + 19 sharedActivityManager];
    [v15 osTransactionComplete:v7];

    v16 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 2160;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to persist!", buf, 0x12u);
    }

    v17 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v17))
    {
      *buf = 0;
      v18 = "Failed";
LABEL_144:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAEngine Persist", v18, buf, 2u);
      goto LABEL_145;
    }

    goto LABEL_145;
  }

  [WAUtil incrementValueForKey:@"Persist Calls" inMutableDict:self->_cachedUsage onQueue:self->_engineQ];
  [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Last Persisted Date"];
  cachedUsage = self->_cachedUsage;
  v20 = +[NSDate date];
  [(NSMutableDictionary *)cachedUsage setObject:v20 forKey:@"Last Persisted Date"];

  [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Last Persisted PID"];
  v21 = self->_cachedUsage;
  v22 = [NSNumber numberWithUnsignedLong:self->_pid];
  [(NSMutableDictionary *)v21 setObject:v22 forKey:@"Last Persisted PID"];

  [(WAEngine *)self _calculateEstimatedUptime];
  [(WAEngine *)self _calculateProfileUptime];
  [(WAEngine *)self _calculateProcessUsage];
  v23 = +[NSFileManager defaultManager];
  v24 = NSHomeDirectory();
  v25 = [NSString stringWithFormat:@"%@%@t.out", v24, @"/Library/com.apple.wifianalyticsd/.wa/"];
  v26 = [v23 fileExistsAtPath:v25];

  if ((v26 & 1) == 0)
  {
    v27 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = NSHomeDirectory();
      v29 = [NSString stringWithFormat:@"%@%@t.out", v28, @"/Library/com.apple.wifianalyticsd/.wa/"];
      *buf = 136446722;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 1950;
      v172 = 2112;
      v173 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Persistence file doesnt yet exist %@", buf, 0x1Cu);
    }

    [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Persist file creation Date"];
    v30 = self->_cachedUsage;
    v31 = +[NSDate date];
    [(NSMutableDictionary *)v30 setObject:v31 forKey:@"Persist file creation Date"];
  }

  v32 = +[NSFileManager defaultManager];
  v33 = NSHomeDirectory();
  v34 = [NSString stringWithFormat:@"%@%@", v33, @"/Library/com.apple.wifianalyticsd/.wa/"];
  v35 = [v32 fileExistsAtPath:v34 isDirectory:&v167];

  if (v35)
  {
    v36 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 1964;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Directory for persistence exists...", buf, 0x12u);
    }

    v37 = 0;
  }

  else
  {
    v38 = +[NSFileManager defaultManager];
    v39 = NSHomeDirectory();
    v40 = [NSString stringWithFormat:@"%@%@", v39, @"/Library/com.apple.wifianalyticsd/.wa/"];
    v166 = 0;
    v41 = [v38 createDirectoryAtPath:v40 withIntermediateDirectories:1 attributes:0 error:&v166];
    v37 = v166;

    v42 = WALogCategoryDefaultHandle();
    v36 = v42;
    if (v41)
    {
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_32;
      }

      *buf = 136446466;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 1960;
      v43 = "%{public}s::%d:Directory for persistence created...";
      v44 = v36;
      v45 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      *buf = 136446466;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 1958;
      v43 = "%{public}s::%d:Failed to create directory for persistence file";
      v44 = v36;
      v45 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&_mh_execute_header, v44, v45, v43, buf, 0x12u);
  }

LABEL_32:

  context = objc_autoreleasePoolPush();
  v46 = +[NSMutableDictionary dictionary];
  v47 = [(WAEngine *)self cachedUsage];
  v165 = v37;
  v48 = [NSKeyedArchiver archivedDataWithRootObject:v47 requiringSecureCoding:1 error:&v165];
  v49 = v165;

  if (v49)
  {
    v50 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 1973;
      v172 = 2112;
      v173 = v49;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to archive cachedUsage: %@", buf, 0x1Cu);
    }
  }

  if (v48)
  {
    v51 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      v52 = [v48 length];
      *buf = 136446722;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 1977;
      v172 = 2048;
      v173 = v52;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "%{public}s::%d:cachedUsage archive size %lu", buf, 0x1Cu);
    }

    [v46 setObject:v48 forKey:@"WA_PERSIST_USAGE"];
  }

  v148 = v48;
  v53 = [(WAEngine *)self messageStore];
  v164 = 0;
  v54 = [NSKeyedArchiver archivedDataWithRootObject:v53 requiringSecureCoding:1 error:&v164];
  v55 = v164;

  if (v55)
  {
    v56 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 1984;
      v172 = 2112;
      v173 = v55;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to archive WAMessageStore: %@", buf, 0x1Cu);
    }
  }

  if (v54)
  {
    v57 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      v58 = [v54 length];
      *buf = 136446722;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 1990;
      v172 = 2048;
      v173 = v58;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "%{public}s::%d:messageStoreData size: %lu", buf, 0x1Cu);
    }

    [v46 setObject:v54 forKey:@"WA_PERSIST_MESSAGE_STORE"];
  }

  v59 = [(WAEngine *)self processTokenToGroupTypeMap];
  v163 = 0;
  v152 = [NSKeyedArchiver archivedDataWithRootObject:v59 requiringSecureCoding:1 error:&v163];
  v60 = v163;

  if (v60)
  {
    v61 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 1997;
      v172 = 2112;
      v173 = v60;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to archive process registration: %@", buf, 0x1Cu);
    }
  }

  if (v152)
  {
    [v46 setObject:v152 forKey:@"WA_PERSIST_PROCESS_REGISTRATION"];
  }

  v62 = [(WAEngine *)self iorMessagePopulator];
  v162 = 0;
  v153 = [NSKeyedArchiver archivedDataWithRootObject:v62 requiringSecureCoding:1 error:&v162];
  v63 = v162;

  if (v63)
  {
    v64 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 2007;
      v172 = 2112;
      v173 = v63;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to archive WAIOReporterPopuator: %@", buf, 0x1Cu);
    }
  }

  if (v153)
  {
    v65 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      v66 = [v153 length];
      *buf = 136446722;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 2011;
      v172 = 2048;
      v173 = v66;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "%{public}s::%d:WAIOReporterPopuator archive size %lu", buf, 0x1Cu);
    }

    [v46 setObject:v153 forKey:@"WA_PERSIST_IOREPORTER_REGISTRATIONS"];
  }

  v147 = v54;
  v67 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    v68 = [(WAEngine *)self recommendationEngine];
    v69 = [v68 dpsWDBudgetDict];
    *buf = 136446722;
    v169 = "[WAEngine _persist]";
    v170 = 1024;
    v171 = 2016;
    v172 = 2112;
    v173 = v69;
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:self.recommendationEngine.dpsWDBudgetDict %@", buf, 0x1Cu);
  }

  v70 = [(WAEngine *)self recommendationEngine];
  v71 = [v70 dpsWDBudgetDict];
  v161 = 0;
  v151 = [NSKeyedArchiver archivedDataWithRootObject:v71 requiringSecureCoding:1 error:&v161];
  v72 = v161;

  if (v72)
  {
    v73 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 2019;
      v172 = 2112;
      v173 = v72;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to archive dpsWDBudgetData: %@", buf, 0x1Cu);
    }
  }

  if (v151)
  {
    [v46 setObject:v151 forKey:@"WA_PERSIST_DPS_WD_BUDGET"];
  }

  appleCaptiveServerIP = self->_appleCaptiveServerIP;
  if (appleCaptiveServerIP)
  {
    v160 = 0;
    v75 = [NSKeyedArchiver archivedDataWithRootObject:appleCaptiveServerIP requiringSecureCoding:1 error:&v160];
    v76 = v160;
    v77 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v78 = self->_appleCaptiveServerIP;
      *buf = 136446722;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 2028;
      v172 = 2112;
      v173 = v78;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:dps/dns: persisting self->_appleCaptiveServerIP %@", buf, 0x1Cu);
    }

    if (v76)
    {
      v79 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v169 = "[WAEngine _persist]";
        v170 = 1024;
        v171 = 2030;
        v172 = 2112;
        v173 = v76;
        _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "%{public}s::%d:dps/dns: Failed to archive dnsPersistenceData: %@", buf, 0x1Cu);
      }
    }

    if (v75)
    {
      [v46 setObject:v75 forKey:@"WA_PERSIST_DNS_PERSISTDATA"];
    }
  }

  v80 = [(WAEngine *)self dpsQuickRecoveryEngine];

  v150 = v46;
  if (v80)
  {
    v81 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v82 = [(WAEngine *)self dpsQuickRecoveryEngine];
      v83 = [v82 dpsQuickRecoveryWDBudgetDict];
      *buf = 136446722;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 2039;
      v172 = 2112;
      v173 = v83;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:self.dpsQuickRecoveryEngine.dpsQuickRecoveryWDBudgetDict %@", buf, 0x1Cu);
    }

    v84 = [(WAEngine *)self dpsQuickRecoveryEngine];
    v85 = [v84 dpsQuickRecoveryWDBudgetDict];
    v159 = 0;
    v86 = [NSKeyedArchiver archivedDataWithRootObject:v85 requiringSecureCoding:1 error:&v159];
    v87 = v159;

    if (v87)
    {
      v88 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v169 = "[WAEngine _persist]";
        v170 = 1024;
        v171 = 2042;
        v172 = 2112;
        v173 = v87;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to archive dpsQuickRecoveryWDBudgetDict: %@", buf, 0x1Cu);
      }
    }

    if (v86)
    {
      [v46 setObject:v86 forKey:@"WA_PERSIST_DPS_QUICK_RECOVERY_WD_BUDGET"];
    }

    v89 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      v90 = [(WAEngine *)self dpsQuickRecoveryEngine];
      v91 = [v90 dpsStats];
      *buf = 136446722;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 2050;
      v172 = 2112;
      v173 = v91;
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:self.dpsQuickRecoveryEngine.dpsStats %@", buf, 0x1Cu);
    }

    v92 = [(WAEngine *)self dpsQuickRecoveryEngine];
    v93 = [v92 dpsStats];
    v158 = 0;
    v94 = [NSKeyedArchiver archivedDataWithRootObject:v93 requiringSecureCoding:1 error:&v158];
    v95 = v158;

    v46 = v150;
    if (v95)
    {
      v96 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v169 = "[WAEngine _persist]";
        v170 = 1024;
        v171 = 2053;
        v172 = 2112;
        v173 = v95;
        _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to archive dpsStats: %@", buf, 0x1Cu);
      }
    }

    if (v94)
    {
      [v150 setObject:v94 forKey:@"WA_PERSIST_DPS_QUICK_RECOVERY_STATS"];
    }
  }

  if (self->_infraInterfaceName && (-[WAEngine infraInterfaceName](self, "infraInterfaceName"), v97 = objc_claimAutoreleasedReturnValue(), v98 = [v97 isEqualToString:@"dunno"], v97, v98))
  {
    v99 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
    {
      v100 = [(WAEngine *)self infraInterfaceName];
      *buf = 136446722;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 2063;
      v172 = 2112;
      v173 = v100;
      _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEBUG, "%{public}s::%d:self.infrainterfacename %@", buf, 0x1Cu);
    }

    v101 = [(WAEngine *)self infraInterfaceName];
    v157 = 0;
    v102 = [NSKeyedArchiver archivedDataWithRootObject:v101 requiringSecureCoding:1 error:&v157];
    v103 = v157;

    if (v103)
    {
      v104 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v169 = "[WAEngine _persist]";
        v170 = 1024;
        v171 = 2066;
        v172 = 2112;
        v173 = v103;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to archive infraInterfaceName: %@", buf, 0x1Cu);
      }
    }

    if (v102)
    {
      [v46 setObject:v102 forKey:@"WA_PERSIST_INFRA_INTERFACE"];
    }
  }

  else
  {
    v102 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      v105 = [(WAEngine *)self infraInterfaceName];
      *buf = 136446722;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 2073;
      v172 = 2112;
      v173 = v105;
      _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:self.infrainterfacename is %@, not persisting", buf, 0x1Cu);
    }
  }

  v106 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
  {
    v107 = [(WAEngine *)self wifiChipSet];
    *buf = 136446722;
    v169 = "[WAEngine _persist]";
    v170 = 1024;
    v171 = 2077;
    v172 = 2112;
    v173 = v107;
    _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEBUG, "%{public}s::%d:self.wifiChipSet %@", buf, 0x1Cu);
  }

  v108 = [(WAEngine *)self wifiChipSet];
  v156 = 0;
  v109 = [NSKeyedArchiver archivedDataWithRootObject:v108 requiringSecureCoding:1 error:&v156];
  v110 = v156;

  if (v110)
  {
    v111 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 2080;
      v172 = 2112;
      v173 = v110;
      _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to archive wifiChipSet: %@", buf, 0x1Cu);
    }
  }

  if (v109)
  {
    [v46 setObject:v109 forKey:@"WA_PERSIST_CHIPSET"];
  }

  v146 = v109;
  v112 = [[NSString alloc] initWithFormat:@"%s%s%s", "WiFiAnalytics_executables-785.10", "WiFiAnalytics_executables-785.10", "Oct 22 2025 21:28:55"];
  [v46 setObject:v112 forKey:@"WA_BUILD_VERSION_PERSIST_KEY"];

  v155 = 0;
  v113 = [NSKeyedArchiver archivedDataWithRootObject:v46 requiringSecureCoding:1 error:&v155];
  v114 = v155;
  if (v114)
  {
    v115 = v114;
    v116 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 2092;
      v172 = 2112;
      v173 = v115;
      _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to archive root persistence dictionary: %@", buf, 0x1Cu);
    }
  }

  v117 = [(WAEngine *)self _rotateObscureKey];
  memset(key, 0, sizeof(key));
  v179 = 0;
  [v117 getCString:key maxLength:33 encoding:4];
  v118 = [v113 length];
  dataOutMoved = 0;
  v119 = malloc_type_malloc(v118 + 16, 0xAC309455uLL);
  if (!v119)
  {
    v144 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 2110;
      _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_ERROR, "%{public}s::%d:malloc failed during persistence", buf, 0x12u);
    }

    goto LABEL_152;
  }

  dataOut = v119;
  if (CCRandomGenerateBytes(bytes, 0xCuLL))
  {
    v145 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 2115;
      v172 = 2080;
      v173 = "[WAEngine _persist]";
      _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_ERROR, "%{public}s::%d:CCRandomGenerateBytes failed in %s", buf, 0x1Cu);
    }

    free(dataOut);
    goto LABEL_152;
  }

  [v113 bytes];
  v121 = CCCryptorGCMOneshotEncrypt();
  if (v121)
  {
    v122 = v121;
    v123 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 2130;
      v172 = 2080;
      v173 = "[WAEngine _persist]";
      v174 = 1024;
      v175 = v122;
      _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: CCCryptorGCMOneshotEncrypt failed with error %d", buf, 0x22u);
    }

    if (CCCrypt(0, 0, 1u, key, 0x20uLL, 0, [v113 bytes], v118, dataOut, v118 + 16, &dataOutMoved))
    {
      v124 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v169 = "[WAEngine _persist]";
        v170 = 1024;
        v171 = 2135;
        _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to obscure file", buf, 0x12u);
      }

      free(dataOut);
      p_superclass = (CADataTransformEngine + 8);
LABEL_152:

      objc_autoreleasePoolPop(context);
      goto LABEL_12;
    }
  }

  else
  {
    v125 = [NSData dataWithBytes:bytes length:12, v118, dataOut, v176, 16, v146, v147];
    v126 = [NSData dataWithBytes:v176 length:16];
    v127 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v169 = "[WAEngine _persist]";
      v170 = 1024;
      v171 = 2123;
      v172 = 2080;
      v173 = "[WAEngine _persist]";
      _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: writing IV and tag data", buf, 0x1Cu);
    }

    [(WAEngine *)self _saveKeyIVData:v125 andTagData:v126];
    dataOutMoved = v118;
  }

  v128 = [NSData alloc];
  v129 = [v128 initWithBytes:dataOut length:dataOutMoved];
  free(dataOut);
  self->_writingPersistFile = 1;
  v130 = NSHomeDirectory();
  v131 = [NSString stringWithFormat:@"%@%@t.out", v130, @"/Library/com.apple.wifianalyticsd/.wa/"];
  v132 = [v129 writeToFile:v131 atomically:1];

  v133 = WALogCategoryDefaultHandle();
  v134 = v133;
  if (v132)
  {
    v135 = (CADataTransformEngine + 8);
    if (!os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_140;
    }

    v136 = NSHomeDirectory();
    v137 = [NSString stringWithFormat:@"%@%@t.out", v136, @"/Library/com.apple.wifianalyticsd/.wa/"];
    *buf = 136446722;
    v169 = "[WAEngine _persist]";
    v170 = 1024;
    v171 = 2146;
    v172 = 2112;
    v173 = v137;
    v138 = "%{public}s::%d:Wrote persistence file %@";
    v139 = v134;
    v140 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v135 = CADataTransformEngine.superclass;
    if (!os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_140;
    }

    v136 = NSHomeDirectory();
    v137 = [NSString stringWithFormat:@"%@%@t.out", v136, @"/Library/com.apple.wifianalyticsd/.wa/"];
    *buf = 136446722;
    v169 = "[WAEngine _persist]";
    v170 = 1024;
    v171 = 2144;
    v172 = 2112;
    v173 = v137;
    v138 = "%{public}s::%d:Failed to write persistence file %@";
    v139 = v134;
    v140 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&_mh_execute_header, v139, v140, v138, buf, 0x1Cu);

LABEL_140:
  self->_writingPersistFile = 0;

  objc_autoreleasePoolPop(context);
  v141 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
  {
    v142 = os_transaction_get_description();
    *buf = 136446722;
    v169 = "[WAEngine _persist]";
    v170 = 1024;
    v171 = 2151;
    v172 = 2080;
    v173 = v142;
    _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Ending transaction %s", buf, 0x1Cu);
  }

  v143 = [v135 + 19 sharedActivityManager];
  [v143 osTransactionComplete:v7];

  v17 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v17))
  {
    *buf = 0;
    v18 = "";
    goto LABEL_144;
  }

LABEL_145:
}

- (void)_unpersist
{
  v3 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAEngine Unpersist", "", buf, 2u);
  }

  v4 = os_transaction_create();
  v5 = +[WAActivityManager sharedActivityManager];
  [v5 osTransactionCreate:"com.apple.wifianalytics.unpersist" transaction:v4];

  v6 = v4;
  v7 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    description = os_transaction_get_description();
    *buf = 136446722;
    *&buf[4] = "[WAEngine _unpersist]";
    *&buf[12] = 1024;
    *&buf[14] = 2168;
    v256 = 2080;
    v257 = description;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Started transaction %s", buf, 0x1Cu);
  }

  v219 = v6;

  v226 = objc_autoreleasePoolPush();
  v252 = 0;
  v230 = [(WAEngine *)self _getObscureKey];
  self->_readingPersistFile = 1;
  v9 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSHomeDirectory();
    v11 = [NSString stringWithFormat:@"%@%@t.out", v10, @"/Library/com.apple.wifianalyticsd/.wa/"];
    *buf = 136446722;
    *&buf[4] = "[WAEngine _unpersist]";
    *&buf[12] = 1024;
    *&buf[14] = 2199;
    v256 = 2112;
    v257 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Reading persistence file %@", buf, 0x1Cu);
  }

  v12 = NSHomeDirectory();
  v13 = [NSString stringWithFormat:@"%@%@t.out", v12, @"/Library/com.apple.wifianalyticsd/.wa/"];
  v251 = 0;
  v14 = [NSData dataWithContentsOfFile:v13 options:1 error:&v251];
  obj = v251;

  v15 = [v14 length];
  v263 = 0;
  v16 = &WAXPCRequestDelegateInterface_ptr;
  memset(key, 0, sizeof(key));
  v228 = v14;
  if (!v14)
  {
    self->_persistFileExistedAtPIDLoad = 0;
    v28 = WALogCategoryDefaultHandle();
    v17 = v230;
    v29 = obj;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "[WAEngine _unpersist]";
      *&buf[12] = 1024;
      *&buf[14] = 2213;
      v256 = 2112;
      v257 = obj;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:No persistence file, likely first run after boot (err:%@)", buf, 0x1Cu);
    }

    v30 = &WAXPCRequestDelegateInterface_ptr;
    v31 = v226;
    goto LABEL_16;
  }

  self->_persistFileExistedAtPIDLoad = 1;
  v17 = v230;
  if (!v230)
  {
    v200 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "[WAEngine _unpersist]";
      *&buf[12] = 1024;
      *&buf[14] = 2214;
      _os_log_impl(&_mh_execute_header, v200, OS_LOG_TYPE_ERROR, "%{public}s::%d:Couldn't get key to unobscure persistence file...", buf, 0x12u);
    }

    [(WAEngine *)self _removePersistenceFile];
    goto LABEL_171;
  }

  v18 = v15;
  v19 = v15 + 16;
  [v230 getCString:key maxLength:33 encoding:4];
  v20 = malloc_type_malloc(v19, 0xD0415A50uLL);
  if (!v20)
  {
    v201 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "[WAEngine _unpersist]";
      *&buf[12] = 1024;
      *&buf[14] = 2218;
      _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_ERROR, "%{public}s::%d:Couldn't allocate buffer to unobscure persistence data", buf, 0x12u);
    }

LABEL_171:
    v30 = &WAXPCRequestDelegateInterface_ptr;
    v29 = obj;
    v31 = v226;
LABEL_16:

    v32 = 0;
    v217 = 0;
    v218 = 0;
    goto LABEL_38;
  }

  v21 = v20;
  v22 = [(WAEngine *)self _getDataFromKeychain:@"com.apple.wifi.analytics.persistence-iv"];
  v23 = [(WAEngine *)self _getDataFromKeychain:@"com.apple.wifi.analytics.persistence-tag"];
  v220 = v22;
  v222 = v21;
  v215 = v23;
  if (v22 && (v24 = v23) != 0)
  {
    v25 = [v22 bytes];
    v26 = v25[2];
    v260 = *v25;
    v261 = v26;
    *buf = *[v24 bytes];
    [v228 bytes];
    v205 = buf;
    v206 = 16;
    dataOut = v18;
    dataOutAvailable = v21;
    v27 = CCCryptorGCMOneshotDecrypt();
    v252 = v18;
  }

  else
  {
    v33 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "[WAEngine _unpersist]";
      *&buf[12] = 1024;
      *&buf[14] = 2236;
      v256 = 2080;
      v257 = "[WAEngine _unpersist]";
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: IV and tag not found", buf, 0x1Cu);
    }

    v27 = CCCrypt(1u, 0, 1u, key, 0x20uLL, 0, [v228 bytes], v18, v21, v19, &v252);
  }

  self->_readingPersistFile = 0;
  v30 = &WAXPCRequestDelegateInterface_ptr;
  if (v27)
  {
    v202 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "[WAEngine _unpersist]";
      *&buf[12] = 1024;
      *&buf[14] = 2243;
      v256 = 2080;
      v257 = "[WAEngine _unpersist]";
      v258 = 1024;
      v259 = v27;
      _os_log_impl(&_mh_execute_header, v202, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Failed to unobscure: %d", buf, 0x22u);
    }

    free(v222);
    v44 = 0;
    v217 = 0;
    v218 = 0;
    v32 = 0;
    v31 = v226;
  }

  else
  {
    v34 = [NSData alloc];
    v35 = [v34 initWithBytes:v222 length:v252];
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    v41 = objc_opt_class();
    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v208 = v42;
    v44 = v35;
    v45 = [NSSet setWithObjects:v36, v37, v38, v39, v40, v41, v208, v43, objc_opt_class(), 0];
    v250 = 0;
    v32 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v45 fromData:v35 error:&v250];
    v46 = v250;

    v31 = v226;
    if (v46)
    {
      v47 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "[WAEngine _unpersist]";
        *&buf[12] = 1024;
        *&buf[14] = 2249;
        v256 = 2112;
        v257 = v46;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive root persistence dict: %@", buf, 0x1Cu);
      }
    }

    free(v222);
    if (v32)
    {
      v48 = [v32 objectForKeyedSubscript:@"WA_BUILD_VERSION_PERSIST_KEY"];

      v49 = v230;
      if (v48)
      {
        v30 = &WAXPCRequestDelegateInterface_ptr;
        v50 = [NSString alloc];
        v51 = [v32 objectForKeyedSubscript:@"WA_BUILD_VERSION_PERSIST_KEY"];
        v52 = [v50 initWithFormat:@"%@", v51];

        v53 = [[NSString alloc] initWithFormat:@"%s%s%s", "WiFiAnalytics_executables-785.10", "WiFiAnalytics_executables-785.10", "Oct 22 2025 21:28:55"];
        v217 = v53;
        if (v52)
        {
          v218 = v52;
          v16 = &WAXPCRequestDelegateInterface_ptr;
          if ([v52 isEqual:v53])
          {
            goto LABEL_37;
          }
        }

        else
        {
          v218 = 0;
          v16 = &WAXPCRequestDelegateInterface_ptr;
        }
      }

      else
      {
        v217 = 0;
        v218 = 0;
        v16 = &WAXPCRequestDelegateInterface_ptr;
        v30 = &WAXPCRequestDelegateInterface_ptr;
      }

      [(WAEngine *)self _removePersistenceFile];

      v54 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "[WAEngine _unpersist]";
        *&buf[12] = 1024;
        *&buf[14] = 2264;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%{public}s::%d:Detected out of date persistence file, removing it and abandoning unpersist attempt...", buf, 0x12u);
      }

      v32 = 0;
      goto LABEL_37;
    }

    v217 = 0;
    v218 = 0;
    v16 = &WAXPCRequestDelegateInterface_ptr;
    v30 = &WAXPCRequestDelegateInterface_ptr;
  }

  v49 = v230;
LABEL_37:

LABEL_38:
  objc_autoreleasePoolPop(v31);
  self->_readingPersistFile = 0;
  v55 = [v32 objectForKeyedSubscript:@"WA_PERSIST_USAGE"];
  v56 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    v57 = [v55 length];
    *buf = 136446722;
    *&buf[4] = "[WAEngine _unpersist]";
    *&buf[12] = 1024;
    *&buf[14] = 2273;
    v256 = 2048;
    v257 = v57;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "%{public}s::%d:usageData size: %lu", buf, 0x1Cu);
  }

  v229 = v55;
  v231 = v32;
  if (!v55)
  {
    goto LABEL_46;
  }

  v58 = v16[391];
  v59 = objc_opt_class();
  v60 = objc_opt_class();
  v61 = objc_opt_class();
  v62 = v30[401];
  v63 = [NSSet setWithObjects:v59, v60, v61, objc_opt_class(), 0];
  v249 = 0;
  v64 = [v58 unarchivedObjectOfClasses:v63 fromData:v55 error:&v249];
  v65 = v249;

  if (v65)
  {
    v66 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[WAEngine _unpersist]";
      *&buf[12] = 1024;
      *&buf[14] = 2277;
      v256 = 2112;
      v257 = v65;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive usageData: %@", buf, 0x1Cu);
    }
  }

  v32 = v231;
  if (!v64)
  {
LABEL_46:
    v64 = objc_alloc_init(NSMutableDictionary);
  }

  [(WAEngine *)self setCachedUsage:v64, dataOut, dataOutAvailable, v205, v206];

  [(WAEngine *)self _handleUnpersistForUsageData];
  [WAUtil logNestedDictionary:self->_cachedUsage indent:0 prefix:@"Unpersist engine _cachedUsage"];
  v67 = [v32 objectForKeyedSubscript:@"WA_PERSIST_CHIPSET"];
  v68 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
  {
    v69 = [v67 length];
    *buf = 136446722;
    *&buf[4] = "[WAEngine _unpersist]";
    *&buf[12] = 1024;
    *&buf[14] = 2290;
    v256 = 2048;
    v257 = v69;
    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEBUG, "%{public}s::%d:wifiChipSetData size: %lu", buf, 0x1Cu);
  }

  if (!v67)
  {
    goto LABEL_55;
  }

  v70 = v16[391];
  v71 = v30[401];
  v72 = [NSSet setWithObjects:objc_opt_class(), 0];
  v248 = 0;
  v73 = [v70 unarchivedObjectOfClasses:v72 fromData:v67 error:&v248];
  v74 = v248;

  if (v74)
  {
    v75 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[WAEngine _unpersist]";
      *&buf[12] = 1024;
      *&buf[14] = 2294;
      v256 = 2112;
      v257 = v74;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive wifiChipSet: %@", buf, 0x1Cu);
    }
  }

  if (!v73)
  {
LABEL_55:
    v73 = [v30[401] stringWithFormat:&stru_1000F04E0];
  }

  [(WAEngine *)self setWifiChipSet:v73];

  v76 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
  {
    v77 = [(WAEngine *)self wifiChipSet];
    *buf = 136446722;
    *&buf[4] = "[WAEngine _unpersist]";
    *&buf[12] = 1024;
    *&buf[14] = 2300;
    v256 = 2112;
    v257 = v77;
    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:self.wifiChipSet %@", buf, 0x1Cu);
  }

  v78 = [v32 objectForKeyedSubscript:@"WA_PERSIST_INFRA_INTERFACE"];
  v79 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
  {
    v80 = [v78 length];
    *buf = 136446722;
    *&buf[4] = "[WAEngine _unpersist]";
    *&buf[12] = 1024;
    *&buf[14] = 2303;
    v256 = 2048;
    v257 = v80;
    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEBUG, "%{public}s::%d:infraInterfaceNameData size: %lu", buf, 0x1Cu);
  }

  v214 = v78;
  if (!v78)
  {
    goto LABEL_66;
  }

  v81 = v16[391];
  v82 = v30[401];
  v83 = [NSSet setWithObjects:objc_opt_class(), 0];
  v247 = 0;
  v84 = [v81 unarchivedObjectOfClasses:v83 fromData:v78 error:&v247];
  v85 = v247;

  if (v85)
  {
    v86 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[WAEngine _unpersist]";
      *&buf[12] = 1024;
      *&buf[14] = 2307;
      v256 = 2112;
      v257 = v85;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive infraInterfaceName: %@", buf, 0x1Cu);
    }
  }

  if (!v84)
  {
LABEL_66:
    v84 = [v30[401] stringWithFormat:@"dunno"];
  }

  [(WAEngine *)self setInfraInterfaceName:v84];

  v87 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
  {
    v88 = [(WAEngine *)self infraInterfaceName];
    *buf = 136446722;
    *&buf[4] = "[WAEngine _unpersist]";
    *&buf[12] = 1024;
    *&buf[14] = 2313;
    v256 = 2112;
    v257 = v88;
    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:self.infraInterfaceName %@", buf, 0x1Cu);
  }

  v89 = [v32 objectForKeyedSubscript:@"WA_PERSIST_DPS_WD_BUDGET"];
  v90 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
  {
    v91 = [v89 length];
    *buf = 136446722;
    *&buf[4] = "[WAEngine _unpersist]";
    *&buf[12] = 1024;
    *&buf[14] = 2317;
    v256 = 2048;
    v257 = v91;
    _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEBUG, "%{public}s::%d:dpsWDBudgetData size: %lu", buf, 0x1Cu);
  }

  v216 = v67;
  v227 = v89;
  if (!v89)
  {
    goto LABEL_78;
  }

  v92 = v16[391];
  v93 = objc_opt_class();
  v94 = objc_opt_class();
  v95 = objc_opt_class();
  v96 = v30[401];
  v97 = [NSSet setWithObjects:v93, v94, v95, objc_opt_class(), 0];
  v246 = 0;
  v98 = [v92 unarchivedObjectOfClasses:v97 fromData:v89 error:&v246];
  v99 = v246;

  if (v99)
  {
    v100 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[WAEngine _unpersist]";
      *&buf[12] = 1024;
      *&buf[14] = 2321;
      v256 = 2112;
      v257 = v99;
      _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive dpsWDBudgetData: %@", buf, 0x1Cu);
    }
  }

  v32 = v231;
  if (v98)
  {
    v101 = 0;
    v102 = v98;
  }

  else
  {
LABEL_78:
    v102 = objc_alloc_init(NSMutableDictionary);
    v98 = 0;
    v101 = 1;
  }

  v103 = [(WAEngine *)self recommendationEngine];
  [v103 setDpsWDBudgetDict:v102];

  if (v101)
  {
  }

  v104 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
  {
    v105 = [(WAEngine *)self recommendationEngine];
    v106 = [v105 dpsWDBudgetDict];
    *buf = 136446722;
    *&buf[4] = "[WAEngine _unpersist]";
    *&buf[12] = 1024;
    *&buf[14] = 2328;
    v256 = 2112;
    v257 = v106;
    _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:self.recommendationEngine.dpsWDBudgetDict %@", buf, 0x1Cu);
  }

  v107 = [v32 objectForKeyedSubscript:@"WA_PERSIST_DNS_PERSISTDATA"];
  v108 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
  {
    v109 = [v107 length];
    *buf = 136446722;
    *&buf[4] = "[WAEngine _unpersist]";
    *&buf[12] = 1024;
    *&buf[14] = 2331;
    v256 = 2048;
    v257 = v109;
    _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:dps/dns: unpersisting dnsPersistenceData size: %lu", buf, 0x1Cu);
  }

  if (v107)
  {
    v110 = v16[391];
    v111 = [NSSet setWithObjects:objc_opt_class(), 0];
    v245 = 0;
    obja = [v110 unarchivedObjectOfClasses:v111 fromData:v107 error:&v245];
    v112 = v245;

    if (v112)
    {
      v113 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "[WAEngine _unpersist]";
        *&buf[12] = 1024;
        *&buf[14] = 2335;
        v256 = 2112;
        v257 = v112;
        _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_ERROR, "%{public}s::%d:dps/dns: Failed to unarchive captiveServerIP: %@", buf, 0x1Cu);
      }
    }

    objc_storeStrong(&self->_appleCaptiveServerIP, obja);
    v114 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
    {
      appleCaptiveServerIP = self->_appleCaptiveServerIP;
      *buf = 136446722;
      *&buf[4] = "[WAEngine _unpersist]";
      *&buf[12] = 1024;
      *&buf[14] = 2339;
      v256 = 2112;
      v257 = appleCaptiveServerIP;
      _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:dps/dns: setting self->_appleCaptiveServerIP:%@", buf, 0x1Cu);
    }
  }

  else
  {
    [(WAEngine *)self resolveAppleCaptiveServer];
    obja = 0;
  }

  v116 = [v32 objectForKeyedSubscript:@"WA_PERSIST_DPS_QUICK_RECOVERY_WD_BUDGET"];
  v117 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
  {
    v118 = [v116 length];
    *buf = 136446722;
    *&buf[4] = "[WAEngine _unpersist]";
    *&buf[12] = 1024;
    *&buf[14] = 2347;
    v256 = 2048;
    v257 = v118;
    _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEBUG, "%{public}s::%d:dpsQuickRecoveryWDBudgetData size: %lu", buf, 0x1Cu);
  }

  v212 = v116;
  v213 = v107;
  if (v116)
  {
    v119 = v16[391];
    v120 = objc_opt_class();
    v121 = objc_opt_class();
    v122 = objc_opt_class();
    v123 = [NSSet setWithObjects:v120, v121, v122, objc_opt_class(), 0];
    v244 = 0;
    v124 = [v119 unarchivedObjectOfClasses:v123 fromData:v116 error:&v244];
    v125 = v244;

    if (v125)
    {
      v126 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "[WAEngine _unpersist]";
        *&buf[12] = 1024;
        *&buf[14] = 2351;
        v256 = 2112;
        v257 = v125;
        _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive dpsQuickRecoveryWDBudgetData: %@", buf, 0x1Cu);
      }
    }

    v16 = &WAXPCRequestDelegateInterface_ptr;
    v32 = v231;
    if (v124)
    {
      goto LABEL_102;
    }
  }

  else
  {
    v124 = v98;
    if (v98)
    {
LABEL_102:
      p_persistedDPSRecoveryActionBudgetDict = &self->_persistedDPSRecoveryActionBudgetDict;
      v128 = v124;
      persistedDPSRecoveryActionBudgetDict = self->_persistedDPSRecoveryActionBudgetDict;
      self->_persistedDPSRecoveryActionBudgetDict = v128;
      goto LABEL_105;
    }
  }

  persistedDPSRecoveryActionBudgetDict = objc_alloc_init(NSMutableDictionary);
  p_persistedDPSRecoveryActionBudgetDict = &self->_persistedDPSRecoveryActionBudgetDict;
  objc_storeStrong(&self->_persistedDPSRecoveryActionBudgetDict, persistedDPSRecoveryActionBudgetDict);
LABEL_105:

  v130 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
  {
    v131 = *p_persistedDPSRecoveryActionBudgetDict;
    *buf = 136446722;
    *&buf[4] = "[WAEngine _unpersist]";
    *&buf[12] = 1024;
    *&buf[14] = 2357;
    v256 = 2112;
    v257 = v131;
    _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:_persistedDPSRecoveryActionBudgetDict %@", buf, 0x1Cu);
  }

  v132 = [v32 objectForKeyedSubscript:@"WA_PERSIST_DPS_QUICK_RECOVERY_STATS"];
  v133 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
  {
    v134 = [v132 length];
    *buf = 136446722;
    *&buf[4] = "[WAEngine _unpersist]";
    *&buf[12] = 1024;
    *&buf[14] = 2361;
    v256 = 2048;
    v257 = v134;
    _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEBUG, "%{public}s::%d:dpsStatsData size: %lu", buf, 0x1Cu);
  }

  if (!v124)
  {
    goto LABEL_116;
  }

  v135 = v16[391];
  v136 = objc_opt_class();
  v137 = objc_opt_class();
  v138 = objc_opt_class();
  v139 = [NSSet setWithObjects:v136, v137, v138, objc_opt_class(), 0];
  v243 = 0;
  v140 = [v135 unarchivedObjectOfClasses:v139 fromData:v132 error:&v243];
  v141 = v243;

  if (v141)
  {
    v142 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[WAEngine _unpersist]";
      *&buf[12] = 1024;
      *&buf[14] = 2365;
      v256 = 2112;
      v257 = v141;
      _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive dpsStats: %@", buf, 0x1Cu);
    }
  }

  v16 = &WAXPCRequestDelegateInterface_ptr;
  v32 = v231;
  if (v140)
  {
    p_persistedDPSStatsDict = &self->_persistedDPSStatsDict;
    v144 = v140;
    persistedDPSStatsDict = self->_persistedDPSStatsDict;
    v210 = v144;
    self->_persistedDPSStatsDict = v144;
  }

  else
  {
LABEL_116:
    persistedDPSStatsDict = objc_alloc_init(NSMutableDictionary);
    p_persistedDPSStatsDict = &self->_persistedDPSStatsDict;
    objc_storeStrong(&self->_persistedDPSStatsDict, persistedDPSStatsDict);
    v210 = 0;
  }

  v146 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
  {
    v147 = *p_persistedDPSStatsDict;
    *buf = 136446722;
    *&buf[4] = "[WAEngine _unpersist]";
    *&buf[12] = 1024;
    *&buf[14] = 2371;
    v256 = 2112;
    v257 = v147;
    _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:_persistedDPSStatsDict %@", buf, 0x1Cu);
  }

  v148 = [v32 objectForKeyedSubscript:@"WA_PERSIST_MESSAGE_STORE"];
  v149 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v149, OS_LOG_TYPE_DEBUG))
  {
    v150 = [v148 length];
    *buf = 136446722;
    *&buf[4] = "[WAEngine _unpersist]";
    *&buf[12] = 1024;
    *&buf[14] = 2374;
    v256 = 2048;
    v257 = v150;
    _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEBUG, "%{public}s::%d:messageStoreData size: %lu", buf, 0x1Cu);
  }

  v223 = v148;
  if (!v148)
  {
    goto LABEL_127;
  }

  v151 = v16[391];
  v152 = objc_opt_class();
  v153 = objc_opt_class();
  v154 = objc_opt_class();
  v155 = objc_opt_class();
  v207 = objc_opt_class();
  v156 = [NSSet setWithObjects:v152, v153, v154, v155, v207, objc_opt_class(), 0];
  v242 = 0;
  v157 = [v151 unarchivedObjectOfClasses:v156 fromData:v223 error:&v242];
  v158 = v242;

  if (v158)
  {
    v159 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[WAEngine _unpersist]";
      *&buf[12] = 1024;
      *&buf[14] = 2378;
      v256 = 2112;
      v257 = v158;
      _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive WAMessageAWDStore: %@", buf, 0x1Cu);
    }
  }

  v16 = &WAXPCRequestDelegateInterface_ptr;
  v32 = v231;
  if (!v157)
  {
LABEL_127:
    v157 = objc_alloc_init(WAMessageAWDStore);
  }

  [(WAEngine *)self setMessageStore:v157];

  v160 = [v32 objectForKeyedSubscript:@"WA_PERSIST_PROCESS_REGISTRATION"];
  v161 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG))
  {
    v162 = [v160 length];
    *buf = 136446722;
    *&buf[4] = "[WAEngine _unpersist]";
    *&buf[12] = 1024;
    *&buf[14] = 2386;
    v256 = 2048;
    v257 = v162;
    _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEBUG, "%{public}s::%d:processRegistrationData size: %lu", buf, 0x1Cu);
  }

  v221 = v160;
  if (!v160)
  {
    goto LABEL_136;
  }

  v163 = v16[391];
  v164 = objc_opt_class();
  v165 = objc_opt_class();
  v166 = objc_opt_class();
  v167 = objc_opt_class();
  v168 = objc_opt_class();
  v169 = [NSSet setWithObjects:v164, v165, v166, v167, v168, objc_opt_class(), 0];
  v241 = 0;
  v170 = [v163 unarchivedObjectOfClasses:v169 fromData:v221 error:&v241];
  v171 = v241;

  if (v171)
  {
    v172 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[WAEngine _unpersist]";
      *&buf[12] = 1024;
      *&buf[14] = 2390;
      v256 = 2112;
      v257 = v171;
      _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive process registration map: %@", buf, 0x1Cu);
    }
  }

  v16 = &WAXPCRequestDelegateInterface_ptr;
  if (!v170)
  {
LABEL_136:
    v170 = objc_alloc_init(NSMutableDictionary);
  }

  [(WAEngine *)self setProcessTokenToGroupTypeMap:v170];
  v211 = v132;

  v173 = [v32 objectForKeyedSubscript:@"WA_PERSIST_IOREPORTER_REGISTRATIONS"];
  v174 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
  {
    v175 = [v173 length];
    *buf = 136446722;
    *&buf[4] = "[WAEngine _unpersist]";
    *&buf[12] = 1024;
    *&buf[14] = 2399;
    v256 = 2048;
    v257 = v175;
    _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_DEBUG, "%{public}s::%d:iorReporterWrapperData size: %lu", buf, 0x1Cu);
  }

  v209 = v173;
  if (!v173)
  {
    goto LABEL_145;
  }

  v176 = v16[391];
  v240 = 0;
  v177 = [v176 unarchivedObjectOfClass:objc_opt_class() fromData:v173 error:&v240];
  v178 = v240;
  if (v178)
  {
    v179 = v178;
    v180 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[WAEngine _unpersist]";
      *&buf[12] = 1024;
      *&buf[14] = 2403;
      v256 = 2112;
      v257 = v179;
      _os_log_impl(&_mh_execute_header, v180, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive WAIOReporterMessagePopulator: %@", buf, 0x1Cu);
    }
  }

  if (!v177)
  {
LABEL_145:
    v177 = objc_alloc_init(WAIOReporterMessagePopulator);
  }

  [(WAEngine *)self setIorMessagePopulator:v177];

  v181 = [(WAEngine *)self iorMessagePopulator];
  [v181 setMessageDelegate:self];

  v182 = [(WAEngine *)self iorMessagePopulator];
  [v182 setPersistenceDelegate:self];

  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v237 = 0u;
  v183 = [(WAEngine *)self processTokenToGroupTypeMap];
  v184 = [v183 allKeys];

  v185 = [v184 countByEnumeratingWithState:&v236 objects:v254 count:16];
  if (v185)
  {
    v186 = v185;
    v187 = *v237;
    do
    {
      for (i = 0; i != v186; i = i + 1)
      {
        if (*v237 != v187)
        {
          objc_enumerationMutation(v184);
        }

        v189 = *(*(&v236 + 1) + 8 * i);
        v232 = 0u;
        v233 = 0u;
        v234 = 0u;
        v235 = 0u;
        v190 = [(WAEngine *)self processTokenToGroupTypeMap];
        v191 = [v190 objectForKeyedSubscript:v189];

        v192 = [v191 countByEnumeratingWithState:&v232 objects:v253 count:16];
        if (v192)
        {
          v193 = v192;
          v194 = *v233;
          do
          {
            for (j = 0; j != v193; j = j + 1)
            {
              if (*v233 != v194)
              {
                objc_enumerationMutation(v191);
              }

              -[WAEngine _initSubmitterAndQueryableRegistrationForProcessToken:andGroupType:](self, "_initSubmitterAndQueryableRegistrationForProcessToken:andGroupType:", v189, [*(*(&v232 + 1) + 8 * j) integerValue]);
            }

            v193 = [v191 countByEnumeratingWithState:&v232 objects:v253 count:16];
          }

          while (v193);
        }
      }

      v186 = [v184 countByEnumeratingWithState:&v236 objects:v254 count:16];
    }

    while (v186);
  }

  v196 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v196, OS_LOG_TYPE_DEBUG))
  {
    v197 = os_transaction_get_description();
    *buf = 136446722;
    *&buf[4] = "[WAEngine _unpersist]";
    *&buf[12] = 1024;
    *&buf[14] = 2418;
    v256 = 2080;
    v257 = v197;
    _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Ending transaction %s", buf, 0x1Cu);
  }

  v198 = +[WAActivityManager sharedActivityManager];
  [v198 osTransactionComplete:v219];

  v199 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v199))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v199, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAEngine Unpersist", "", buf, 2u);
  }
}

- (void)_removePersistenceFile
{
  v3 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WAEngine RemovePersistenceFile", "", buf, 2u);
  }

  if (self->_readingPersistFile || self->_writingPersistFile)
  {
    v4 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = @"writing";
      readingPersistFile = self->_readingPersistFile;
      v50 = "[WAEngine _removePersistenceFile]";
      *buf = 136446722;
      if (readingPersistFile)
      {
        v5 = @"reading";
      }

      v51 = 1024;
      v52 = 2429;
      v53 = 2112;
      v54 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s::%d:Cannot remove persistence file, we're currenlty %@ it", buf, 0x1Cu);
    }

    v7 = 0;
    goto LABEL_10;
  }

  v10 = +[NSFileManager defaultManager];
  v11 = NSHomeDirectory();
  v12 = [NSString stringWithFormat:@"%@%@t.out", v11, @"/Library/com.apple.wifianalyticsd/.wa/"];
  v13 = [v10 isDeletableFileAtPath:v12];

  if (v13)
  {
    v14 = +[NSFileManager defaultManager];
    v15 = NSHomeDirectory();
    v16 = [NSString stringWithFormat:@"%@%@t.out", v15, @"/Library/com.apple.wifianalyticsd/.wa/"];
    v48 = 0;
    v17 = [v14 removeItemAtPath:v16 error:&v48];
    v18 = v48;

    if ((v17 & 1) == 0)
    {
      v19 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [v18 localizedDescription];
        *buf = 136446722;
        v50 = "[WAEngine _removePersistenceFile]";
        v51 = 1024;
        v52 = 2436;
        v53 = 2112;
        v54 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error removing file at path: %@", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v18 = 0;
  }

  v21 = +[NSFileManager defaultManager];
  v22 = +[WAIOReporterMessagePopulator getIORPopAvailabeIOReportersTempFile];
  v23 = [v21 isDeletableFileAtPath:v22];

  if (v23)
  {
    v24 = +[NSFileManager defaultManager];
    v25 = +[WAIOReporterMessagePopulator getIORPopAvailabeIOReportersTempFile];
    v47 = v18;
    v26 = [v24 removeItemAtPath:v25 error:&v47];
    v27 = v47;

    if ((v26 & 1) == 0)
    {
      v28 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = [v27 localizedDescription];
        *buf = 136446722;
        v50 = "[WAEngine _removePersistenceFile]";
        v51 = 1024;
        v52 = 2443;
        v53 = 2112;
        v54 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error removing file getIORPopAvailabeIOReportersTempFile at path: %@", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v27 = v18;
  }

  v30 = +[NSFileManager defaultManager];
  v31 = +[WAIOReporterMessagePopulator getUnavailablePredTempFile];
  v32 = [v30 isDeletableFileAtPath:v31];

  if (v32)
  {
    v33 = +[NSFileManager defaultManager];
    v34 = +[WAIOReporterMessagePopulator getUnavailablePredTempFile];
    v46 = v27;
    v35 = [v33 removeItemAtPath:v34 error:&v46];
    v8 = v46;

    if ((v35 & 1) == 0)
    {
      v36 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = [v8 localizedDescription];
        *buf = 136446722;
        v50 = "[WAEngine _removePersistenceFile]";
        v51 = 1024;
        v52 = 2450;
        v53 = 2112;
        v54 = v37;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error removing file getUnavailablePredTempFile at path: %@", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v8 = v27;
  }

  v38 = +[NSFileManager defaultManager];
  v39 = +[WAIOReporterMessagePopulator getUsageTempFile];
  v40 = [v38 isDeletableFileAtPath:v39];

  if (v40)
  {
    v41 = +[NSFileManager defaultManager];
    v42 = +[WAIOReporterMessagePopulator getUsageTempFile];
    v45 = v8;
    v43 = [v41 removeItemAtPath:v42 error:&v45];
    v7 = v45;

    if (v43)
    {
      goto LABEL_11;
    }

    v4 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v44 = [v7 localizedDescription];
      *buf = 136446722;
      v50 = "[WAEngine _removePersistenceFile]";
      v51 = 1024;
      v52 = 2457;
      v53 = 2112;
      v54 = v44;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error removing file getUsageTempFile at path: %@", buf, 0x1Cu);
    }

LABEL_10:

LABEL_11:
    v8 = v7;
  }

  v9 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WAEngine RemovePersistenceFile", "", buf, 2u);
  }
}

- (void)_handleUnpersistForUsageData
{
  v3 = @"Work Bin: Last PID Work";
  [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Work Bin: Last PID Work"];
  v55 = objc_alloc_init(NSMutableDictionary);
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  v4 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Work Bin: Previous PIDs Work"];

  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableDictionary *)self->_cachedUsage setObject:v5 forKeyedSubscript:@"Work Bin: Previous PIDs Work"];
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v6 = [(NSMutableDictionary *)self->_cachedUsage copy];
  v7 = [v6 countByEnumeratingWithState:&v63 objects:v78 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = @"Work Bin: Previous PIDs Work";
    v10 = *v64;
    v57 = *v64;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v64 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v63 + 1) + 8 * i);
        if (([(__CFString *)v12 isEqualToString:v9]& 1) != 0 || [(__CFString *)v12 isEqualToString:v3])
        {
          v13 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            v68 = "[WAEngine _handleUnpersistForUsageData]";
            v69 = 1024;
            v70 = 2484;
            v71 = 2112;
            v72 = v3;
            v73 = 2112;
            v74 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Skipping copying key to %@: %@", buf, 0x26u);
          }
        }

        else
        {
          v14 = v9;
          v15 = v6;
          v16 = [(NSMutableDictionary *)self->_cachedUsage objectForKey:v12];
          [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:v3];
          v18 = v17 = v3;
          [v18 setObject:v16 forKeyedSubscript:v12];

          [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:v12];
          v13 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v19 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:v17];
            v20 = [v19 objectForKeyedSubscript:v12];
            *buf = 136446978;
            v68 = "[WAEngine _handleUnpersistForUsageData]";
            v69 = 1024;
            v70 = 2491;
            v71 = 2112;
            v72 = v12;
            v73 = 2112;
            v74 = v20;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s::%d:_cachedUsage[kLastPIDBin] now contains key %@ with value %@", buf, 0x26u);
          }

          v3 = v17;
          v6 = v15;
          v9 = v14;
          v10 = v57;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v63 objects:v78 count:16];
    }

    while (v8);
  }

  if (self->_persistFileExistedAtPIDLoad)
  {
    v21 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
    v22 = [v21 objectForKeyedSubscript:@"Terminations - Graceful"];

    if (!v22)
    {
      v23 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
      [WAUtil incrementValueForKey:@"Terminations - Unknown" inMutableDict:v23 onQueue:self->_engineQ];
    }
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v24 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
  v25 = [v24 copy];

  v26 = [v25 countByEnumeratingWithState:&v59 objects:v77 count:16];
  if (v26)
  {
    v27 = v26;
    v58 = *v60;
    v56 = v25;
    do
    {
      v28 = 0;
      do
      {
        if (*v60 != v58)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v59 + 1) + 8 * v28);
        if ([(__CFString *)v29 isEqualToString:@"Persist file creation Date"])
        {
          v30 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
          v31 = [v30 objectForKeyedSubscript:v29];
          v32 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Work Bin: Previous PIDs Work"];
          [v32 setObject:v31 forKeyedSubscript:v29];
        }

        v33 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
        v34 = [v33 objectForKeyedSubscript:v29];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v36 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_35;
          }

          *buf = 136446722;
          v68 = "[WAEngine _handleUnpersistForUsageData]";
          v69 = 1024;
          v70 = 2508;
          v71 = 2112;
          v72 = v29;
          v37 = v36;
          v38 = "%{public}s::%d:Skipping copying to _cachedUsage[kPreviousPIDsBin] key %@: NSDate";
LABEL_34:
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, v38, buf, 0x1Cu);
          goto LABEL_35;
        }

        if (([(__CFString *)v29 isEqualToString:@"Last Persisted PID"]& 1) != 0 || [(__CFString *)v29 isEqualToString:@"Last Terminated PID"])
        {
          v36 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_35;
          }

          *buf = 136446722;
          v68 = "[WAEngine _handleUnpersistForUsageData]";
          v69 = 1024;
          v70 = 2512;
          v71 = 2112;
          v72 = v29;
          v37 = v36;
          v38 = "%{public}s::%d:Skipping copying to _cachedUsage[kPreviousPIDsBin] key %@: kWAPersistedPidKey or kWATerminationPidKey";
          goto LABEL_34;
        }

        v39 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
        v40 = [v39 objectForKeyedSubscript:v29];
        objc_opt_class();
        v41 = objc_opt_isKindOfClass();

        v36 = WALogCategoryDefaultHandle();
        v42 = os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG);
        if (v41)
        {
          if (v42)
          {
            v43 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
            v44 = [v43 objectForKeyedSubscript:v29];
            v45 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Work Bin: Previous PIDs Work"];
            v46 = [v45 objectForKeyedSubscript:v29];
            *buf = 136447234;
            v68 = "[WAEngine _handleUnpersistForUsageData]";
            v69 = 1024;
            v70 = 2517;
            v71 = 2112;
            v72 = v29;
            v73 = 2112;
            v74 = v44;
            v75 = 2112;
            v76 = v46;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Summing key %@ of kLastPIDBin %@ to kPreviousPIDsBin %@", buf, 0x30u);
          }

          v36 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Work Bin: Previous PIDs Work"];
          v47 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
          [WAUtil sumNSNumberForKey:v29 dstDict:v36 otherDict:v47];

          v25 = v56;
        }

        else if (v42)
        {
          v48 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Work Bin: Last PID Work"];
          v49 = [v48 objectForKeyedSubscript:v29];
          v50 = objc_opt_class();
          *buf = 136446978;
          v68 = "[WAEngine _handleUnpersistForUsageData]";
          v69 = 1024;
          v70 = 2520;
          v71 = 2112;
          v72 = v29;
          v73 = 2112;
          v74 = v50;
          v51 = v50;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Skipping copying to _cachedUsage[kPreviousPIDsBin] key %@: unknown class %@", buf, 0x26u);

          v25 = v56;
        }

LABEL_35:

        v28 = v28 + 1;
      }

      while (v27 != v28);
      v52 = [v25 countByEnumeratingWithState:&v59 objects:v77 count:16];
      v27 = v52;
    }

    while (v52);
  }

  [WAUtil incrementValueForKey:@"Unpersisted Count" inMutableDict:self->_cachedUsage onQueue:self->_engineQ];
  cachedUsage = self->_cachedUsage;
  v54 = +[NSDate date];
  [(NSMutableDictionary *)cachedUsage setObject:v54 forKey:@"PID Unpersisted Date"];

  [WAUtil logNestedDictionary:self->_cachedUsage indent:0 prefix:@"Handle Unpersist Engine _cachedUsage"];
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
      *&v25[4] = "[WAEngine _calculateEstimatedUptime]";
      if (v9 >= 0.0)
      {
        v10 = v9;
      }

      *&v25[12] = 1024;
      *&v25[14] = 2536;
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
      *&v25[4] = "[WAEngine _calculateEstimatedUptime]";
      *&v25[12] = 1024;
      if (v22 < 0.0)
      {
        v22 = -v22;
      }

      *&v25[14] = 2541;
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
    *&v25[4] = "[WAEngine _calculateEstimatedUptime]";
    *&v25[12] = 1024;
    *&v25[14] = 2546;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d: calculating kWACumulativeUptimeKey unavailable", v25, 0x12u);
  }

LABEL_18:
}

- (void)_calculateProfileUptime
{
  [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Profile: MegaWiFi Enabled (s)"];
  cachedUsage = self->_cachedUsage;
  v4 = [NSNumber numberWithUnsignedLong:[(WAEngine *)self _getTimeInProfileState:1]];
  [(NSMutableDictionary *)cachedUsage setObject:v4 forKey:@"Profile: MegaWiFi Enabled (s)"];

  [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Profile: MegaWiFi Uninstalled (s)"];
  v5 = self->_cachedUsage;
  v6 = [NSNumber numberWithUnsignedLong:[(WAEngine *)self _getTimeInProfileState:0]];
  [(NSMutableDictionary *)v5 setObject:v6 forKey:@"Profile: MegaWiFi Uninstalled (s)"];
}

- (unint64_t)abstime_to_ns:(unint64_t)a3
{
  if (qword_10010DEB0 != -1)
  {
    dispatch_once(&qword_10010DEB0, &stru_1000EE070);
  }

  return (*&qword_10010DB18 * a3);
}

- (void)_calculateProcessUsage
{
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (!proc_pid_rusage(self->_pid, 4, &v11))
  {
    [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Process: current_mem kB"];
    cachedUsage = self->_cachedUsage;
    v4 = [NSNumber numberWithUnsignedLong:*(&v15 + 1) >> 10];
    [(NSMutableDictionary *)cachedUsage setObject:v4 forKey:@"Process: current_mem kB"];

    [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Process: lifetime_peak kB"];
    v5 = self->_cachedUsage;
    v6 = [NSNumber numberWithUnsignedLong:v26 >> 10];
    [(NSMutableDictionary *)v5 setObject:v6 forKey:@"Process: lifetime_peak kB"];

    [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Process: cpu_time ns"];
    v7 = self->_cachedUsage;
    v8 = [NSNumber numberWithUnsignedLong:[(WAEngine *)self abstime_to_ns:*(&v12 + 1) + v12]];
    [(NSMutableDictionary *)v7 setObject:v8 forKey:@"Process: cpu_time ns"];

    [(NSMutableDictionary *)self->_cachedUsage removeObjectForKey:@"Process: storage_dirtied kB"];
    v9 = self->_cachedUsage;
    v10 = [NSNumber numberWithUnsignedLong:*(&v25 + 1) >> 10];
    [(NSMutableDictionary *)v9 setObject:v10 forKey:@"Process: storage_dirtied kB"];
  }
}

- (void)_cancelWorkReportRecurringTimer
{
  if (self->_workReportTimerRunning)
  {
    workReportTimer = self->_workReportTimer;
    if (workReportTimer)
    {
      if (!dispatch_source_testcancel(workReportTimer))
      {
        v4 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 136446466;
          v8 = "[WAEngine _cancelWorkReportRecurringTimer]";
          v9 = 1024;
          v10 = 2597;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Timer exists and is valid, Suspending", &v7, 0x12u);
        }

        dispatch_suspend(self->_workReportTimer);
        self->_workReportTimerRunning = 0;
        v5 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          workReportTimerRunning = self->_workReportTimerRunning;
          v7 = 136446722;
          v8 = "[WAEngine _cancelWorkReportRecurringTimer]";
          v9 = 1024;
          v10 = 2600;
          v11 = 1024;
          v12 = workReportTimerRunning;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:setting _workReportTimerRunning %d", &v7, 0x18u);
        }
      }
    }
  }
}

- (void)_enableWorkReportRecurringTimer
{
  workReportTimerRunning = self->_workReportTimerRunning;
  v4 = WALogCategoryDefaultHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (workReportTimerRunning)
  {
    if (v5)
    {
      *buf = 136446466;
      v37 = "[WAEngine _enableWorkReportRecurringTimer]";
      v38 = 1024;
      v39 = 2607;
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
    v9 = self->_workReportTimerRunning;
    v10 = [(RecommendationPreferences *)self->_preferences work_report_seconds];
    workReportTimer = self->_workReportTimer;
    v12 = workReportTimer != 0;
    if (workReportTimer)
    {
      v13 = dispatch_source_testcancel(workReportTimer) != 0;
    }

    else
    {
      v13 = 0;
    }

    *buf = 136447490;
    v37 = "[WAEngine _enableWorkReportRecurringTimer]";
    v38 = 1024;
    v39 = 2611;
    v40 = 1024;
    *v41 = v9;
    *&v41[4] = 2048;
    *&v41[6] = v10;
    v42 = 1024;
    v43 = v12;
    v44 = 1024;
    v45 = v13;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:_workReportTimerRunning is %d work_report_seconds is %lu _workReportTimer exists %d testcancel is %d", buf, 0x2Eu);
  }

  if (!self->_workReportTimerRunning)
  {
    v14 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v37 = "[WAEngine _enableWorkReportRecurringTimer]";
      v38 = 1024;
      v39 = 2614;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Setting timer", buf, 0x12u);
    }

    v15 = self->_workReportTimer;
    if (v15)
    {
      if (!dispatch_source_testcancel(v15))
      {
LABEL_25:
        v23 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [(RecommendationPreferences *)self->_preferences work_report_seconds];
          *buf = 136446722;
          v37 = "[WAEngine _enableWorkReportRecurringTimer]";
          v38 = 1024;
          v39 = 2635;
          v40 = 2048;
          *v41 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Starting dispatch_source_set_timer fire in %lu s", buf, 0x1Cu);
        }

        v25 = self->_workReportTimer;
        v26 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 1000000000 * [(RecommendationPreferences *)self->_preferences work_report_seconds]);
        dispatch_source_set_timer(v25, v26, 1000000000 * [(RecommendationPreferences *)self->_preferences work_report_seconds], 0x3B9ACA00uLL);
        v27 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v37 = "[WAEngine _enableWorkReportRecurringTimer]";
          v38 = 1024;
          v39 = 2637;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Starting dispatch_source_set_timer Done", buf, 0x12u);
        }

        v28 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v37 = "[WAEngine _enableWorkReportRecurringTimer]";
          v38 = 1024;
          v39 = 2639;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:dispatch_resume _workReportTimer", buf, 0x12u);
        }

        dispatch_resume(self->_workReportTimer);
        self->_workReportTimerRunning = 1;
        v29 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = self->_workReportTimerRunning;
          *buf = 136446722;
          v37 = "[WAEngine _enableWorkReportRecurringTimer]";
          v38 = 1024;
          v39 = 2643;
          v40 = 1024;
          *v41 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:setting _workReportTimerRunning %d", buf, 0x18u);
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
        v37 = "[WAEngine _enableWorkReportRecurringTimer]";
        v38 = 1024;
        v39 = 2620;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Creating _workReportTimer", buf, 0x12u);
      }

      v17 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_engineQ);
      v18 = self->_workReportTimer;
      self->_workReportTimer = v17;

      v19 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v37 = "[WAEngine _enableWorkReportRecurringTimer]";
        v38 = 1024;
        v39 = 2622;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Creating _workReportTimer Done", buf, 0x12u);
      }

      if (!self->_workReportTimer)
      {
        v4 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "Failed to create _workReportTimer", buf, 2u);
        }

        goto LABEL_40;
      }
    }

    v20 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v37 = "[WAEngine _enableWorkReportRecurringTimer]";
      v38 = 1024;
      v39 = 2626;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Setting dispatch_source_set_event_handler", buf, 0x12u);
    }

    v21 = self->_workReportTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10006552C;
    handler[3] = &unk_1000ED880;
    handler[4] = self;
    dispatch_source_set_event_handler(v21, handler);
    v22 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v37 = "[WAEngine _enableWorkReportRecurringTimer]";
      v38 = 1024;
      v39 = 2632;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Setting block Done", buf, 0x12u);
    }

    goto LABEL_25;
  }

LABEL_34:
  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v31 = self->_workReportTimerRunning;
    v32 = [(RecommendationPreferences *)self->_preferences work_report_seconds];
    v33 = self->_workReportTimer;
    if (v33)
    {
      v34 = dispatch_source_testcancel(v33) == 0;
    }

    else
    {
      v34 = 0;
    }

    *buf = 136447234;
    v37 = "[WAEngine _enableWorkReportRecurringTimer]";
    v38 = 1024;
    v39 = 2647;
    v40 = 1024;
    *v41 = v31;
    *&v41[4] = 2048;
    *&v41[6] = v32;
    v42 = 1024;
    v43 = v34;
    v6 = "%{public}s::%d:Timer State : Enabled %d Period(ms) %lu valid %d";
    v7 = v4;
    v8 = 40;
    goto LABEL_39;
  }

LABEL_40:
}

- (id)_createNextWorkReportSnapshot
{
  v3 = [(WAEngine *)self cachedUsage];
  [WAUtil incrementValueForKey:@"Telemetry: Work Report Window" inMutableDict:v3 onQueue:self->_engineQ];

  [(WAEngine *)self _calculateEstimatedUptime];
  [(WAEngine *)self _calculateProcessUsage];
  [(WAEngine *)self _calculateProfileUptime];
  v4 = [(WAEngine *)self cachedUsage];

  if (v4)
  {
    v5 = [(WAEngine *)self iorMessagePopulator];
    v6 = [v5 getCachedUsage];
    v7 = [v6 copy];

    if (v7)
    {
      v14[0] = @"Module_Engine";
      v8 = [(WAEngine *)self cachedUsage];
      v9 = [v8 copy];
      v14[1] = @"Module_IOR";
      v15[0] = v9;
      v15[1] = v7;
      v10 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    }

    else
    {
      v12 = @"Module_Engine";
      v7 = [(WAEngine *)self cachedUsage];
      v8 = [v7 copy];
      v13 = v8;
      v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_createWorkReportDictionaryForTelemetryAndRollBucket
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(WAEngine *)self nowCacheUsageForTelemetry];
  v5 = [(WAEngine *)self oldCacheUsageForTelemetry];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ap_AgeOutAnalytics" dictKey:@"AnalyticsProcessor: Age Out Analytics" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ap_ApProfileForBSSID" dictKey:@"AnalyticsProcessor: AP Profile For BSSID" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ap_ProcessDatapathMetricsStream" dictKey:@"AnalyticsProcessor: Datapath Metrics Stream" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ap_ProcessWAM" dictKey:@"AnalyticsProcessor: Process WAM File" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ap_ProcessWAMessageMetric" dictKey:@"AnalyticsProcessor: Process WA Message Metric" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ap_Prune" dictKey:@"AnalyticsProcessor: Prune" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ap_SummarizeForNetwork" dictKey:@"AnalyticsProcessor: Summarize Analytics For Network" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_ClearMessageStore" dictKey:@"Client: Clear Message Store" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_ClientConfigChangeDelegate" dictKey:@"Client: Client Config Change Deligate" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_ConvertWiFiStatsIntoPercentile" dictKey:@"Client: Convert WiFi Stats into Percentile" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_EstablishConnection" dictKey:@"Client: Establish Connection" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_GetDeviceAnalyticsConfiguration" dictKey:@"Client: Get Device Analytics Config" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_GetDpsStats" dictKey:@"Client: Get DPS Stats" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_GetMessageModelForGroup" dictKey:@"Client: Get Message Model For Group" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_GetNewMessageForKey" dictKey:@"Client: Get New Message For Key" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_GetUsageStats" dictKey:@"Client: Get Usage Stats" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_IssueIOReportManagementCommand" dictKey:@"Client: Issue IOReport Managemen Command" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_KillDaemon" dictKey:@"Client: Kill Daemon" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_lqmCrashTracerNotify" dictKey:@"Client: LQM Crash Tracer Notify" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_lqmCrashTracerReceive" dictKey:@"Client: LQM Crash Tracer Receive" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_RegisterMessageGroup" dictKey:@"Client: Register Message Group" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_SendMemoryPressureRequest" dictKey:@"Client: Send Memory Pressure Request" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_SetDeviceAnalyticsConfiguration" dictKey:@"Client: Set Device Analytics Config" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_SubmitMessage" dictKey:@"Client: Submit Message" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_SubmitWiFiAnalayticsMessage" dictKey:@"Client: Submit WiFi Analytics Message" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_SubmitWiFiAnalayticsMessageAdvanced" dictKey:@"Client: Submit WiFi Analytics Message Advanced" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_SummarizeDeviceAnalyticsForNetwork" dictKey:@"Client: Summarize Device Analytics For Network" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_TrapCrashMiniTracerDump" dictKey:@"Client: Trap Crash Mini Tracer Dump" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_Trigger11axPerfStudy" dictKey:@"Client: Trigger 11ax Perf Study" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_TriggerDatapathDiagnostic" dictKey:@"Client: Trigger Datapath Diagnostic" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_TriggerDeviceAnalyticsStoreMigration" dictKey:@"Client: Trigger Device Analytics Store Migration" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_TriggerQueryForNWActivity" dictKey:@"Client: Trigger Query for NW Activity" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_TriggerQueryForNWPeerActivity" dictKey:@"Client: Trigger Query for NW Peer Activity" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"client_UpdateRoamPoliciesForSourceBssid" dictKey:@"Client: Update Roam Policies For Source BSSID" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"debug_profileUptime" dictKey:@"Profile: MegaWiFi Enabled (s)" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  v6 = [v3 objectForKeyedSubscript:@"debug_profileUptime"];
  v7 = [v6 unsignedLongValue];

  if (v7)
  {
    v8 = &__kCFBooleanTrue;
  }

  else
  {
    v8 = &__kCFBooleanFalse;
  }

  [v3 setObject:v8 forKeyedSubscript:@"debug_profileInstalled"];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"dispatch_RxMemoryCritical" dictKey:@"Dispatch: Received Memory Critical" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"dispatch_RxMemoryWarning" dictKey:@"Dispatch: Received Memory Warning" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"engine_PersistCalls" dictKey:@"Persist Calls" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"engine_TerminationGraceful" dictKey:@"Terminations - Graceful" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"engine_TerminationUnknown" dictKey:@"Terminations - Unknown" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"engine_TerminationTryEagerExit" dictKey:@"Terminations - Try Eager Exit" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"engine_UnpersistedCalls" dictKey:@"Unpersisted Count" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"engine_Uptime" dictKey:@"Estimated Uptime (s)" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_BuildStructuredDict" dictKey:@"Build Structured Dict Calls" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_CreateSamples" dictKey:@"CreateSamples Calls" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_CreateSamplesFailed" dictKey:@"CreateSamples Failed Calls" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_CreateSubscription" dictKey:@"CreateSubscription Calls" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_CreateSubscriptionFailed" dictKey:@"CreateSubscription Failed Calls" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_FindChannels" dictKey:@"Find Channels Calls" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_FullTeardown" dictKey:@"IOR Full Teardown Count" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_FullTeardownFailed" dictKey:@"IOR Full Teardown Failed Count" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_FullTeardownRecovered" dictKey:@"IOR Full Teardown Recovered Count" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_LegendQuery" dictKey:@"Legend Query Calls" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_LegendQueryFailed" dictKey:@"Legend Query Failed" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_PersistCalls" dictKey:@"Persist Calls" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_PopulationFailed" dictKey:@"IOR Population Failed Count" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_PopulationSuccess" dictKey:@"IOR Population Success Count" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_PopulationViaIterator" dictKey:@"IOR Population via Iterate" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_PopulationViaDictionary" dictKey:@"IOR Population via Dict" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_RequestDetermine" dictKey:@"External: Determine Channels Calls" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_RequestPopulate" dictKey:@"Populate IOReporter Calls" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_RescanDenied" dictKey:@"Rescan Denied" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_RescanExplore" dictKey:@"Rescan Reason: Explore Count" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_RescanHintSignals" dictKey:@"Rescan Signal Count" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_RescanLowChannel" dictKey:@"Rescan Reason: Low Channel Count" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_RescanNewPhy" dictKey:@"IOR Unprepared For Sample Count" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_RescanPerformed" dictKey:@"Rescan Permitted: Last Rescan Count" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_StaleDriverID" dictKey:@"Fault Detection: Stale DriverID Count" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_TerminationGraceful" dictKey:@"Terminations - Graceful" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_TerminationUnknown" dictKey:@"Terminations - Unknown" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_UnpersistedCalls" dictKey:@"Unpersisted Count" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_Unprepared" dictKey:@"IOR Unprepared For Sample Count" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_UpdateSamples" dictKey:@"UpdateSamples Calls" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_UpdateSamplesFailed" dictKey:@"UpdateSamples Failed Calls" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"ior_Uptime" dictKey:@"Estimated Uptime (s)" dictModule:@"Module_IOR" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"log_Datapath" dictKey:@"Log: DatapathMetricStream Trigger" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"log_WorkReport" dictKey:@"Log: Work Report" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  v9 = [v4 objectForKeyedSubscript:@"Module_Engine"];
  v10 = [v9 objectForKeyedSubscript:@"Process: current_mem kB"];
  [v3 setObject:v10 forKeyedSubscript:@"process_CurrentMemory"];

  v11 = [v4 objectForKeyedSubscript:@"Module_Engine"];
  v12 = [v11 objectForKeyedSubscript:@"Process: lifetime_peak kB"];
  [v3 setObject:v12 forKeyedSubscript:@"process_PeakMemory"];

  [WAUtil addDeltaNSNumberForTelemetryKey:@"process_StorageDirtied" dictKey:@"Process: storage_dirtied kB" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"process_CPUTime" dictKey:@"Process: cpu_time ns" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  v13 = [v3 objectForKeyedSubscript:@"process_CPUTime"];
  if (v13)
  {
    v14 = v13;
    v15 = [v3 objectForKeyedSubscript:@"engine_Uptime"];

    if (v15)
    {
      v16 = [v3 objectForKeyedSubscript:@"process_CPUTime"];
      v17 = [v16 unsignedLongValue] / 1000000.0;
      v18 = [v3 objectForKeyedSubscript:@"engine_Uptime"];
      *&v19 = v17 / [v18 unsignedLongValue];
      v20 = [NSNumber numberWithFloat:v19];
      [v3 setObject:v20 forKeyedSubscript:@"process_RunningDuty_ms_per_s"];
    }
  }

  [WAUtil addDeltaNSNumberForTelemetryKey:@"bgTaskManager_utilityTask" dictKey:@"com.apple.wifi.analytics.daily-bg-tasks-ui" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  [WAUtil addDeltaNSNumberForTelemetryKey:@"bgTaskManager_maintenanceTask" dictKey:@"com.apple.wifi.analytics.daily-bg-tasks" dictModule:@"Module_Engine" telDict:v3 recentDict:v4 oldDict:v5];
  v21 = [NSNumber numberWithUnsignedLong:[(RecommendationPreferences *)self->_preferences work_report_seconds]];
  [v3 setObject:v21 forKeyedSubscript:@"reportingInterval"];

  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"build_Debug"];
  workReportSelectingSingleWithinFirstDay = self->_workReportSelectingSingleWithinFirstDay;
  v23 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Telemetry: Work Report Window"];
  v24 = [v23 unsignedIntegerValue];

  if (workReportSelectingSingleWithinFirstDay == v24)
  {
    v25 = &__kCFBooleanTrue;
  }

  else
  {
    v25 = &__kCFBooleanFalse;
  }

  [v3 setObject:v25 forKeyedSubscript:@"singleAgg_InFirstDay"];
  workReportSelectingSingleWithinFirstWeek = self->_workReportSelectingSingleWithinFirstWeek;
  v27 = [(NSMutableDictionary *)self->_cachedUsage objectForKeyedSubscript:@"Telemetry: Work Report Window"];
  v28 = [v27 unsignedIntegerValue];

  if (workReportSelectingSingleWithinFirstWeek == v28)
  {
    v29 = &__kCFBooleanTrue;
  }

  else
  {
    v29 = &__kCFBooleanFalse;
  }

  [v3 setObject:v29 forKeyedSubscript:@"singleAgg_InFirstWeek"];

  return v3;
}

- (void)_logWorkReport:(id)a3 indent:(int)a4 prefix:(id)a5
{
  v6 = a3;
  v40 = a5;
  v7 = [[NSSortDescriptor alloc] initWithKey:0 ascending:1];
  v8 = [v6 allKeys];
  v9 = v8;
  if (!v7)
  {
    v11 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 136446466;
    *v46 = "[WAEngine _logWorkReport:indent:prefix:]";
    *&v46[8] = 1024;
    *&v46[10] = 2815;
    v31 = "%{public}s::%d:Failed to create NSSortDescriptor";
    v32 = v11;
    v33 = OS_LOG_TYPE_ERROR;
    v34 = 18;
LABEL_30:
    _os_log_impl(&_mh_execute_header, v32, v33, v31, buf, v34);
    goto LABEL_25;
  }

  if (![v8 count])
  {
    v11 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 136446722;
    *v46 = "[WAEngine _logWorkReport:indent:prefix:]";
    *&v46[8] = 1024;
    *&v46[10] = 2816;
    v47 = 2112;
    v48 = v40;
    v31 = "%{public}s::%d:Zero keys found in dictionary entry %@";
    v32 = v11;
    v33 = OS_LOG_TYPE_DEFAULT;
    v34 = 28;
    goto LABEL_30;
  }

  v54 = v7;
  v10 = [NSArray arrayWithObjects:&v54 count:1];
  v11 = [v9 sortedArrayUsingDescriptors:v10];

  if ([v11 count])
  {
    v36 = v9;
    v37 = v7;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v11 = v11;
    v12 = [v11 countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (!v12)
    {
      goto LABEL_24;
    }

    v13 = v12;
    v14 = *v42;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v41 + 1) + 8 * v15);
        v17 = [v6 objectForKeyedSubscript:v16];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

LABEL_12:
          v21 = [NSString stringWithFormat:@"%@ %@", v40, v16];
          v22 = [v6 objectForKeyedSubscript:v16];
          [(WAEngine *)self _logWorkReport:v22 indent:(a4 + 4) prefix:v21];

          goto LABEL_13;
        }

        [v6 objectForKeyedSubscript:v16];
        v19 = v18 = v11;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v11 = v18;
        if (isKindOfClass)
        {
          goto LABEL_12;
        }

        v23 = [v6 objectForKeyedSubscript:v16];
        objc_opt_class();
        v24 = objc_opt_isKindOfClass();

        v25 = [v6 objectForKeyedSubscript:v16];
        v26 = v25;
        if (v24)
        {
          v27 = [v25 isEqualToNumber:&off_1001030B8];

          if ((v27 & 1) == 0)
          {
            v21 = WALogWorkReportHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
LABEL_22:
              v29 = [v6 objectForKeyedSubscript:v16];
              *buf = 67110146;
              *v46 = a4;
              *&v46[4] = 2080;
              *&v46[6] = "";
              v47 = 2112;
              v48 = v40;
              v49 = 2112;
              v50 = v16;
              v51 = 2112;
              v52 = v29;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%*s%@ %@ : %@", buf, 0x30u);
            }

LABEL_13:
          }
        }

        else
        {
          objc_opt_class();
          v28 = objc_opt_isKindOfClass();

          if (v28)
          {
            v21 = WALogWorkReportHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_22;
            }

            goto LABEL_13;
          }
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v30 = [v11 countByEnumeratingWithState:&v41 objects:v53 count:16];
      v13 = v30;
      if (!v30)
      {
LABEL_24:

        v9 = v36;
        v7 = v37;
        goto LABEL_25;
      }
    }
  }

  v35 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    *v46 = "[WAEngine _logWorkReport:indent:prefix:]";
    *&v46[8] = 1024;
    *&v46[10] = 2819;
    v47 = 2112;
    v48 = v40;
    v49 = 2112;
    v50 = v9;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to create sortedKeys on entry %@ keys %@", buf, 0x26u);
  }

LABEL_25:
}

- (void)_reportWorkReportInterval
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10005CFFC;
  v23 = sub_10005D00C;
  v24 = 0;
  [(WAEngine *)self setOldCacheUsageForTelemetry:0];
  v3 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v3))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Engine reportWorkReportInterval", "", buf, 2u);
  }

  v4 = [(WAEngine *)self nowCacheUsageForTelemetry];
  v5 = [v4 objectForKeyedSubscript:@"Module_IOR"];
  [(WAEngine *)self setOldCacheUsageForTelemetry:v5];

  v6 = [(WAEngine *)self _createNextWorkReportSnapshot];
  [(WAEngine *)self setNowCacheUsageForTelemetry:v6];

  if ([(RecommendationPreferences *)self->_preferences work_report_logs_enabled])
  {
    [WAUtil incrementValueForKey:@"Log: Work Report" inMutableDict:self->_cachedUsage onQueue:self->_engineQ];
    v7 = [(WAEngine *)self _createWorkReportDictionaryForTelemetryAndRollBucket];
    v8 = v20[5];
    v20[5] = v7;

    [(WAEngine *)self _logWorkReport:v20[5] indent:0 prefix:@"Interval Work Report"];
    v9 = [(WAEngine *)self nowCacheUsageForTelemetry];
    [(WAEngine *)self _logWorkReport:v9 indent:0 prefix:@"Current Accumulation"];
  }

  objc_initWeak(buf, self);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100066FE8;
  v15 = &unk_1000EE098;
  objc_copyWeak(&v17, buf);
  v16 = &v19;
  AnalyticsSendEventLazy();
  v10 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v10))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Engine reportWorkReportInterval", "", v11, 2u);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
  _Block_object_dispose(&v19, 8);
}

- (void)incrementWorkReportValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(WAEngine *)self engineQ];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000671D4;
  v7[3] = &unk_1000ED988;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_initSubmitterAndQueryableRegistrationForProcessToken:(id)a3 andGroupType:(int64_t)a4
{
  v6 = a3;
  v7 = [(WAEngine *)self submitterMap];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = [(WAEngine *)self submitterMap];
    [v10 setObject:v9 forKeyedSubscript:v6];
  }

  if (a4 > 3)
  {
    switch(a4)
    {
      case 4:
        v20 = [[WADatapathDiagnosticsMessageSubmitter alloc] initWithMessageGroupType:4];
        v21 = [(WAEngine *)self submitterMap];
        v22 = [v21 objectForKeyedSubscript:v6];
        v23 = [NSNumber numberWithInteger:4];
        [v22 setObject:v20 forKeyedSubscript:v23];

        v15 = [(WAEngine *)self messageStore];
        v16 = [(WAEngine *)self submitterMap];
        v17 = [v16 objectForKeyedSubscript:v6];
        v18 = 4;
        break;
      case 5:
        v24 = [[WAMessageSubmitter alloc] initWithMessageGroupType:5];
        v25 = [(WAEngine *)self submitterMap];
        v26 = [v25 objectForKeyedSubscript:v6];
        v27 = [NSNumber numberWithInteger:5];
        [v26 setObject:v24 forKeyedSubscript:v27];

        v15 = [(WAEngine *)self messageStore];
        v16 = [(WAEngine *)self submitterMap];
        v17 = [v16 objectForKeyedSubscript:v6];
        v18 = 5;
        break;
      case 6:
        goto LABEL_11;
      default:
        goto LABEL_17;
    }

LABEL_16:
    v28 = [NSNumber numberWithInteger:v18];
    v29 = [v17 objectForKeyedSubscript:v28];
    [v29 setSubmissionDelegate:v15];

    goto LABEL_17;
  }

  if (a4)
  {
    if (a4 != 3)
    {
      goto LABEL_17;
    }

    v11 = [[WANWActivityMessageSubmitter alloc] initWithMessageGroupType:3];
    v12 = [(WAEngine *)self submitterMap];
    v13 = [v12 objectForKeyedSubscript:v6];
    v14 = [NSNumber numberWithInteger:3];
    [v13 setObject:v11 forKeyedSubscript:v14];

    v15 = [(WAEngine *)self messageStore];
    v16 = [(WAEngine *)self submitterMap];
    v17 = [v16 objectForKeyedSubscript:v6];
    v18 = 3;
    goto LABEL_16;
  }

LABEL_11:
  v19 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v33 = 136446466;
    v34 = "[WAEngine _initSubmitterAndQueryableRegistrationForProcessToken:andGroupType:]";
    v35 = 1024;
    v36 = 2907;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unhandled WAGroupType trying to init submitter", &v33, 0x12u);
  }

LABEL_17:
  v30 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [WAUtil groupTypeToString:a4];
    v32 = [WAUtil trimTokenForLogging:v6];
    v33 = 136447234;
    v34 = "[WAEngine _initSubmitterAndQueryableRegistrationForProcessToken:andGroupType:]";
    v35 = 1024;
    v36 = 2911;
    v37 = 2112;
    v38 = v31;
    v39 = 2048;
    v40 = a4;
    v41 = 2112;
    v42 = v32;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Registered group %@(%lu) for token %@", &v33, 0x30u);
  }
}

- (id)_getMessagesModelForProcessToken:(id)a3 groupType:(int64_t)a4 andError:(id *)a5
{
  v36 = objc_alloc_init(NSMutableDictionary);
  v7 = +[WAUtil resourcePath];
  v8 = [NSString stringWithFormat:@"%@/%ld/", v7, a4];

  v9 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v43 = "[WAEngine _getMessagesModelForProcessToken:groupType:andError:]";
    v44 = 1024;
    v45 = 2923;
    v46 = 2112;
    v47 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:pathForGrouppathForGroup %@", buf, 0x1Cu);
  }

  if (v8)
  {
    v10 = +[NSFileManager defaultManager];
    v11 = [v10 contentsOfDirectoryAtPath:v8 error:0];

    if ([v11 count])
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v38 objects:v50 count:16];
      if (!v13)
      {

        v17 = 0;
        v16 = 0;
        v15 = 0;
        goto LABEL_27;
      }

      v14 = v13;
      v32 = a5;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v34 = *v39;
      v35 = v8;
      obj = v12;
      while (2)
      {
        v18 = 0;
        v19 = v15;
        v20 = v16;
        v21 = v17;
        do
        {
          if (*v39 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v22 = [*(*(&v38 + 1) + 8 * v18) componentsSeparatedByString:@"."];
          v23 = [v22 firstObject];

          v24 = [NSData alloc];
          v25 = [NSString stringWithFormat:@"%@/%@.wam", v35, v23];
          v26 = [v24 initWithContentsOfFile:v25 options:8 error:0];

          v16 = v26;
          v27 = objc_opt_class();
          v37 = v21;
          v15 = [NSKeyedUnarchiver unarchivedObjectOfClass:v27 fromData:v16 error:&v37];
          v17 = v37;

          if (v17)
          {
            v28 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446978;
              v43 = "[WAEngine _getMessagesModelForProcessToken:groupType:andError:]";
              v44 = 1024;
              v45 = 2934;
              v46 = 2112;
              v47 = v23;
              v48 = 2112;
              v49 = v17;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive a WAMessageAWD instance with key of %@. Error: %@", buf, 0x26u);
            }
          }

          if (!v15)
          {
            v30 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v43 = "[WAEngine _getMessagesModelForProcessToken:groupType:andError:]";
              v44 = 1024;
              v45 = 2936;
              v46 = 2112;
              v47 = v23;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unobscure message for key: %@", buf, 0x1Cu);
            }

            v15 = 0;
            v29 = obj;
            goto LABEL_22;
          }

          [v36 setObject:v15 forKeyedSubscript:v23];

          v18 = v18 + 1;
          v19 = v15;
          v20 = v16;
          v21 = v17;
        }

        while (v14 != v18);
        v29 = obj;
        v14 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

LABEL_22:
      v11 = v29;
      v8 = v35;
      a5 = v32;
    }

    else
    {
      v51 = NSLocalizedFailureReasonErrorKey;
      v52 = @"WAErrorCodeFileSystemError";
      v29 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9015 userInfo:v29];
      v15 = 0;
      v16 = 0;
    }
  }

  else
  {
    v53 = NSLocalizedFailureReasonErrorKey;
    v54 = @"WAErrorCodeFileSystemError";
    v29 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v17 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9015 userInfo:v29];
    v15 = 0;
    v16 = 0;
    v11 = 0;
  }

  if (a5 && v17)
  {
    *a5 = [v17 copy];
  }

  v12 = v11;
LABEL_27:

  return v36;
}

- (id)_cachedModelObjectsForProcess:(id)a3 groupType:(int64_t)a4 key:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  v11 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10005CFFC;
  v24 = sub_10005D00C;
  v25 = 0;
  if (a4 >= 1 && v9)
  {
    mutexQueue = self->_mutexQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100067D94;
    block[3] = &unk_1000EE0C0;
    block[4] = self;
    v16 = v8;
    v19 = a4;
    v17 = v10;
    v18 = &v20;
    dispatch_sync(mutexQueue, block);

    v11 = v21[5];
  }

  v13 = v11;
  _Block_object_dispose(&v20, 8);

  return v13;
}

- (void)_getNewMessageForKey:(id)a3 groupType:(int64_t)a4 forProcessToken:(id)a5 shouldCheckForPrePopulation:(BOOL)a6 andReply:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = [(WAEngine *)self _cachedModelObjectsForProcess:v13 groupType:a4 key:v12];
  v16 = [WAUtil rotateUUIDsForMessage:v15];
  if (!v15)
  {
    v25 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v30 = "[WAEngine _getNewMessageForKey:groupType:forProcessToken:shouldCheckForPrePopulation:andReply:]";
      v31 = 1024;
      v32 = 2994;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}s::%d:No model class found for key: %@. This is a CRITICAL error", buf, 0x1Cu);
    }

    goto LABEL_11;
  }

  if (!v8 || (-[WAEngine iorMessagePopulator](self, "iorMessagePopulator"), v17 = objc_claimAutoreleasedReturnValue(), [v15 originalClassName], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "doesMessageNeedPrepopulation:", v18), v18, v17, !v19))
  {
LABEL_11:
    v14[2](v14, v15, 0);
    goto LABEL_7;
  }

  v20 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = [v15 key];
    v22 = [v15 originalClassName];
    v23 = [WAUtil trimTokenForLogging:v13];
    *buf = 136447234;
    v30 = "[WAEngine _getNewMessageForKey:groupType:forProcessToken:shouldCheckForPrePopulation:andReply:]";
    v31 = 1024;
    v32 = 3000;
    v33 = 2112;
    v34 = v21;
    v35 = 2112;
    v36 = v22;
    v37 = 2112;
    v38 = v23;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%{public}s::%d:WAMessageAWD with key: %@ and original classname: %@ requires IOReporter population... (proc token: %@)", buf, 0x30u);
  }

  v24 = [(WAEngine *)self iorMessagePopulator];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000685C8;
  v26[3] = &unk_1000EE0E8;
  v28 = v14;
  v27 = v15;
  [v24 prepopulateMessage:v27 forProcess:v13 groupType:a4 andReply:v26];

LABEL_7:
}

- (void)_getNewMessageForKeyWithinPopulatorBlock:(id)a3 groupType:(int64_t)a4 forProcessToken:(id)a5 shouldCheckForPrePopulation:(BOOL)a6 andReply:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = [(WAEngine *)self _cachedModelObjectsForProcess:v13 groupType:a4 key:v12];
  v16 = [WAUtil rotateUUIDsForMessage:v15];
  if (!v15)
  {
    v25 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v30 = "[WAEngine _getNewMessageForKeyWithinPopulatorBlock:groupType:forProcessToken:shouldCheckForPrePopulation:andReply:]";
      v31 = 1024;
      v32 = 3019;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}s::%d:No model class found for key: %@. This is a CRITICAL error", buf, 0x1Cu);
    }

    goto LABEL_11;
  }

  if (!v8 || (-[WAEngine iorMessagePopulator](self, "iorMessagePopulator"), v17 = objc_claimAutoreleasedReturnValue(), [v15 originalClassName], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "doesMessageNeedPrepopulation:", v18), v18, v17, !v19))
  {
LABEL_11:
    v14[2](v14, v15, 0);
    goto LABEL_7;
  }

  v20 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = [v15 key];
    v22 = [v15 originalClassName];
    v23 = [WAUtil trimTokenForLogging:v13];
    *buf = 136447234;
    v30 = "[WAEngine _getNewMessageForKeyWithinPopulatorBlock:groupType:forProcessToken:shouldCheckForPrePopulation:andReply:]";
    v31 = 1024;
    v32 = 3022;
    v33 = 2112;
    v34 = v21;
    v35 = 2112;
    v36 = v22;
    v37 = 2112;
    v38 = v23;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%{public}s::%d:WAMessageAWD with key: %@ and original classname: %@ requires IOReporter population... (proc token: %@)", buf, 0x30u);
  }

  v24 = [(WAEngine *)self iorMessagePopulator];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000688E4;
  v26[3] = &unk_1000EE0E8;
  v28 = v14;
  v27 = v15;
  [v24 prepopulateMessageWithinPopulatorBlock:v27 forProcess:v13 groupType:a4 andReply:v26];

LABEL_7:
}

- (void)_getNewMessageForKey:(id)a3 groupType:(int64_t)a4 withCopy:(BOOL)a5 forProcessToken:(id)a6 shouldCheckForPrePopulation:(BOOL)a7 andReply:(id)a8
{
  v9 = a7;
  v11 = a5;
  v14 = a3;
  v15 = a6;
  v16 = a8;
  v17 = [(WAEngine *)self _cachedModelObjectsForProcess:v15 groupType:a4 key:v14];
  v18 = v17;
  if (v11)
  {
    v19 = [v17 copy];

    v18 = v19;
  }

  v20 = [WAUtil rotateUUIDsForMessage:v18];
  if (!v18)
  {
    v29 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v34 = "[WAEngine _getNewMessageForKey:groupType:withCopy:forProcessToken:shouldCheckForPrePopulation:andReply:]";
      v35 = 1024;
      v36 = 3045;
      v37 = 2112;
      v38 = v14;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}s::%d:No model class found for key: %@. This is a CRITICAL error", buf, 0x1Cu);
    }

    goto LABEL_13;
  }

  if (!v9 || (-[WAEngine iorMessagePopulator](self, "iorMessagePopulator"), v21 = objc_claimAutoreleasedReturnValue(), [v18 originalClassName], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "doesMessageNeedPrepopulation:", v22), v22, v21, !v23))
  {
LABEL_13:
    v16[2](v16, v18, 0);
    goto LABEL_9;
  }

  v24 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = [v18 key];
    v26 = [v18 originalClassName];
    v27 = [WAUtil trimTokenForLogging:v15];
    *buf = 136447234;
    v34 = "[WAEngine _getNewMessageForKey:groupType:withCopy:forProcessToken:shouldCheckForPrePopulation:andReply:]";
    v35 = 1024;
    v36 = 3048;
    v37 = 2112;
    v38 = v25;
    v39 = 2112;
    v40 = v26;
    v41 = 2112;
    v42 = v27;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%{public}s::%d:WAMessageAWD with key: %@ and original classname: %@ requires IOReporter population... (proc token: %@)", buf, 0x30u);
  }

  v28 = [(WAEngine *)self iorMessagePopulator];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100068C1C;
  v30[3] = &unk_1000EE0E8;
  v32 = v16;
  v31 = v18;
  [v28 prepopulateMessage:v31 forProcess:v15 groupType:a4 andReply:v30];

LABEL_9:
}

- (id)_ingestMessage:(id)a3 forProcessToken:(id)a4
{
  v5 = a3;
  v6 = [(WAEngine *)self messageStore];

  if (v6)
  {
    v7 = [(WAEngine *)self messageStore];
    [v7 updateMessage:v5];

    [(WAEngine *)self _persist];
    v8 = 0;
  }

  else
  {
    v11 = NSLocalizedFailureReasonErrorKey;
    v12 = @"WAErrorCodeInternalError";
    v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9003 userInfo:v10];
  }

  return v8;
}

- (id)_submitMessage:(id)a3 groupType:(int64_t)a4 forProcessToken:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = [(WAEngine *)self submitterMap];
    v11 = [v10 objectForKeyedSubscript:v9];
    v12 = [NSNumber numberWithInteger:a4];
    v13 = [v11 objectForKeyedSubscript:v12];

    if (v13)
    {
      v14 = [(WAEngine *)self submitterMap];
      v15 = [v14 objectForKeyedSubscript:v9];
      v16 = [NSNumber numberWithInteger:a4];
      v17 = [v15 objectForKeyedSubscript:v16];
      v18 = [v17 submitMessage:v8];

      goto LABEL_4;
    }

    v22 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v28 = "[WAEngine _submitMessage:groupType:forProcessToken:]";
      v29 = 1024;
      v30 = 3073;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}s::%d:no submitter to submit to, has this WAGroupType been registered? ", buf, 0x12u);
    }

    v23 = NSLocalizedFailureReasonErrorKey;
    v24 = @"WAErrorCodeMessageNotRegistered";
    v14 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v21 = 9005;
  }

  else
  {
    v20 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v28 = "[WAEngine _submitMessage:groupType:forProcessToken:]";
      v29 = 1024;
      v30 = 3072;
      v31 = 2112;
      v32 = v9;
      v33 = 2048;
      v34 = a4;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d:Process with token: %@ for grouptype: %ld tried to submit a NULL message ", buf, 0x26u);
    }

    v25 = NSLocalizedFailureReasonErrorKey;
    v26 = @"WAErrorCodeLacksRequiredArgument";
    v14 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v21 = 9010;
  }

  v18 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:v21 userInfo:v14];
LABEL_4:

  return v18;
}

- (void)_writeWiFiAnalyticsMessageToJSONFile:(id)a3 metricInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSJSONSerialization isValidJSONObject:v7];
  v9 = WALogCategoryDefaultHandle();
  v10 = v9;
  if (v8)
  {
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_writeWiFiAnalyticsMessageToJSONFile", "", buf, 2u);
    }

    v11 = objc_alloc_init(NSDateFormatter);
    [v11 setDateFormat:@"yyyy'-'MM'-'dd-HHmmssSSS"];
    v12 = +[NSDate date];
    v13 = [v11 stringFromDate:v12];

    v14 = [NSString stringWithFormat:@"wifianalytics_%@.json", v13];
    v15 = [(WAEngine *)self wifianalyticsTmpDir];
    v16 = [v15 URLByAppendingPathComponent:v14 isDirectory:0];

    v23 = 0;
    v17 = [NSJSONSerialization dataWithJSONObject:v7 options:3 error:&v23];
    v18 = v23;
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v20 = [[NSString alloc] initWithData:v17 encoding:4];
      v22 = 0;
      [v20 writeToURL:v16 atomically:1 encoding:4 error:&v22];
      v19 = v22;

      if (!v19)
      {
        goto LABEL_10;
      }
    }

    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v25 = "[WAEngine _writeWiFiAnalyticsMessageToJSONFile:metricInfo:]";
      v26 = 1024;
      v27 = 3114;
      v28 = 2112;
      v29 = v14;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:failed to write to file %@ error %@", buf, 0x26u);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v25 = "[WAEngine _writeWiFiAnalyticsMessageToJSONFile:metricInfo:]";
      v26 = 1024;
      v27 = 3094;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:Invalid data passed to JSON serialization for %@", buf, 0x1Cu);
    }

    v16 = 0;
    v19 = 0;
    v17 = 0;
    v13 = 0;
    v11 = 0;
    v14 = 0;
  }

LABEL_10:
  v21 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_writeWiFiAnalyticsMessageToJSONFile", "", buf, 2u);
  }
}

- (id)_getMessageByUUID:(id)a3 forProcessToken:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = [(WAEngine *)self messageStore];

    if (v10)
    {
      v11 = [(WAEngine *)self messageStore];
      v12 = [v11 messageForUUID:v8];

      if (v12)
      {
        v13 = 0;
        goto LABEL_5;
      }

      v19 = NSLocalizedFailureReasonErrorKey;
      v20 = @"WAErrorCodeMessageNoMessageForUUID";
      v17 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v18 = 9004;
    }

    else
    {
      v21 = NSLocalizedFailureReasonErrorKey;
      v22 = @"WAErrorCodeInternalError";
      v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v18 = 9003;
    }

    v13 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:v18 userInfo:v17];

    v12 = 0;
    if (a5 && v13)
    {
      v12 = 0;
      *a5 = [v13 copy];
    }
  }

  else
  {
    v23 = NSLocalizedFailureReasonErrorKey;
    v24 = @"WAErrorCodeInternalError";
    v15 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v16 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9003 userInfo:v15];

    v13 = 0;
    v12 = 0;
  }

LABEL_5:

  return v12;
}

- (void)_killDaemonAndReply:(id)a3
{
  v4 = a3;
  if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }

  [(WAEngine *)self _prepareToTerminate];
  exit(143);
}

- (void)_clearMessageStoreAndReply:(id)a3
{
  v6 = a3;
  v4 = [(WAEngine *)self messageStore];
  [v4 clearMessageStore];

  [(WAEngine *)self _persist];
  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, 0, 0);
    v5 = v6;
  }
}

- (void)_purgeGroupTypeIfNecessary:(int64_t)a3
{
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [(WAEngine *)self processTokenToGroupTypeMap];
  v5 = [v4 allKeys];

  v6 = [v5 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v31;
    obj = v5;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v12 = [(WAEngine *)self processTokenToGroupTypeMap];
        v13 = [v12 objectForKeyedSubscript:v11];

        v14 = [v13 countByEnumeratingWithState:&v26 objects:v42 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v27;
          while (2)
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v27 != v16)
              {
                objc_enumerationMutation(v13);
              }

              if ([*(*(&v26 + 1) + 8 * j) integerValue] == a3)
              {
                v18 = v11;

                v8 = v18;
                goto LABEL_16;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v26 objects:v42 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v7);

    if (v8)
    {
      v19 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [WAUtil trimTokenForLogging:v8];
        *buf = 136446978;
        v35 = "[WAEngine _purgeGroupTypeIfNecessary:]";
        v36 = 1024;
        v37 = 3169;
        v38 = 2048;
        v39 = a3;
        v40 = 2112;
        v41 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:XPC: Found an old token for WAGroupType: %ld (%@). Purging it now as a process is trying to register for the same group type", buf, 0x26u);
      }

      v21 = [(WAEngine *)self processTokenToGroupTypeMap];
      [v21 removeObjectForKey:v8];

      v22 = [(WAEngine *)self submitterMap];
      [v22 removeObjectForKey:v8];

      v23 = [(WAEngine *)self processTokenToXPCConnectionMap];
      [v23 removeObjectForKey:v8];

      goto LABEL_25;
    }
  }

  else
  {
  }

  v8 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v35 = "[WAEngine _purgeGroupTypeIfNecessary:]";
    v36 = 1024;
    v37 = 3168;
    v38 = 2048;
    v39 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: No old tokens for newly registered WAGroupType: %ld - no purge necessary.", buf, 0x1Cu);
  }

LABEL_25:
}

- (void)_sendMemoryPressureRequestAndReply:(id)a3
{
  v5 = a3;
  [(WAEngine *)self handleMemoryWarning:1];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, 0);
    v4 = v5;
  }
}

- (void)_issueIOReportManagementCommand:(unint64_t)a3 forProcessToken:(id)a4 andReply:(id)a5
{
  v8 = a4;
  v133 = a5;
  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = [NSNumber numberWithUnsignedInteger:a3];
  [v9 setObject:v10 forKeyedSubscript:@"Command"];

  [v9 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Success"];
  v11 = [(WAEngine *)self submitterMap];
  v12 = [v11 objectForKeyedSubscript:v8];
  v13 = [NSNumber numberWithInteger:3];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (v14)
  {
    goto LABEL_11;
  }

  v15 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
    *&buf[12] = 1024;
    *&buf[14] = 3197;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:Caller did not register", buf, 0x12u);
  }

  if (!v8)
  {
    v115 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
      *&buf[12] = 1024;
      *&buf[14] = 3198;
      _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:couldn't get process name for connection", buf, 0x12u);
    }

    v116 = NSLocalizedFailureReasonErrorKey;
    v160 = NSLocalizedFailureReasonErrorKey;
    v161 = @"WAErrorCodeInternalError";
    v117 = [NSDictionary dictionaryWithObjects:&v161 forKeys:&v160 count:1];
    v118 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9003 userInfo:v117];

    goto LABEL_149;
  }

  v16 = [(WAEngine *)self processTokenToGroupTypeMap];
  v17 = [v16 objectForKeyedSubscript:v8];
  v18 = [NSNumber numberWithInteger:3];
  v19 = [v17 containsObject:v18];

  if (v19)
  {
    v119 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
      *&buf[12] = 1024;
      *&buf[14] = 3199;
      v156 = 2048;
      v157 = 3;
      _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: processTokenToGroupTypeMap seems to think this process token has already registered group type: %ld", buf, 0x1Cu);
    }

    v116 = NSLocalizedFailureReasonErrorKey;
LABEL_149:
    v137 = v116;
    v138 = @"WAErrorCodeInternalError";
    v120 = [NSDictionary dictionaryWithObjects:&v138 forKeys:&v137 count:1];
    v66 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9003 userInfo:v120];

    v31 = v133;
    (*(v133 + 2))(v133, 0, v66);
    goto LABEL_90;
  }

  [(WAEngine *)self _purgeGroupTypeIfNecessary:3];
  v20 = [(WAEngine *)self processTokenToGroupTypeMap];
  v21 = [v20 objectForKeyedSubscript:v8];

  if (!v21)
  {
    v22 = objc_alloc_init(NSMutableSet);
    v23 = [(WAEngine *)self processTokenToGroupTypeMap];
    [v23 setObject:v22 forKeyedSubscript:v8];
  }

  v24 = [(WAEngine *)self processTokenToGroupTypeMap];
  v25 = [v24 objectForKeyedSubscript:v8];
  v26 = [NSNumber numberWithInteger:3];
  [v25 addObject:v26];

  [(WAEngine *)self _persist];
  v27 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v28 = [WAUtil trimTokenForLogging:v8];
    *buf = 136446978;
    *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
    *&buf[12] = 1024;
    *&buf[14] = 3209;
    v156 = 2048;
    v157 = 3;
    v158 = 2112;
    v159 = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: registering message group type: %ld for process: %@", buf, 0x26u);
  }

LABEL_11:
  v29 = WALogCategoryDefaultHandle();
  v30 = v29;
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      v31 = v133;
      if (a3 == 2)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
          *&buf[12] = 1024;
          *&buf[14] = 3347;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%{public}s::%d:kWAIORCommandErrorNextCreateOrUpdateSample start", buf, 0x12u);
        }

        v61 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
          *&buf[12] = 1024;
          *&buf[14] = 3349;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "%{public}s::%d:kWAIORCommandErrorNextCreateOrUpdateSample running [self.iorMessagePopulator injectErrorOnNextCreateOrUpdateSample];", buf, 0x12u);
        }

        v62 = [(WAEngine *)self iorMessagePopulator];
        [v62 injectErrorOnNextCreateOrUpdateSample];

        [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Success"];
        v33 = WALogCategoryDefaultHandle();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_84;
        }

        *buf = 136446466;
        *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
        *&buf[12] = 1024;
        *&buf[14] = 3353;
        v34 = "%{public}s::%d:kWAIORCommandErrorNextCreateOrUpdateSample end";
      }

      else
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
          *&buf[12] = 1024;
          *&buf[14] = 3357;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%{public}s::%d:kWAIORCommandPersist start", buf, 0x12u);
        }

        v37 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
          *&buf[12] = 1024;
          *&buf[14] = 3359;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "%{public}s::%d:kWAIORCommandPersist running [self _persist];", buf, 0x12u);
        }

        [(WAEngine *)self _persist];
        v38 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
          *&buf[12] = 1024;
          *&buf[14] = 3362;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "%{public}s::%d:kWAIORCommandPersist running [self.iorMessagePopulator persistIORObjects];", buf, 0x12u);
        }

        v39 = [(WAEngine *)self iorMessagePopulator];
        [v39 persistIORObjects:0];

        [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Success"];
        v33 = WALogCategoryDefaultHandle();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_84;
        }

        *buf = 136446466;
        *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
        *&buf[12] = 1024;
        *&buf[14] = 3366;
        v34 = "%{public}s::%d:kWAIORCommandPersist end";
      }

      goto LABEL_83;
    }

    if (a3)
    {
      v31 = v133;
      if (a3 == 1)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
          *&buf[12] = 1024;
          *&buf[14] = 3337;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%{public}s::%d:kWAIORCommandBuildSubscription start", buf, 0x12u);
        }

        v35 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
          *&buf[12] = 1024;
          *&buf[14] = 3339;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "%{public}s::%d:kWAIORCommandBuildSubscription running [self.iorMessagePopulator determineChannelsPerIORPopulatable];", buf, 0x12u);
        }

        v36 = [(WAEngine *)self iorMessagePopulator];
        [v36 determineChannelsPerIORPopulatable];

        [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Success"];
        v33 = WALogCategoryDefaultHandle();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_84;
        }

        *buf = 136446466;
        *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
        *&buf[12] = 1024;
        *&buf[14] = 3343;
        v34 = "%{public}s::%d:kWAIORCommandBuildSubscription end";
        goto LABEL_83;
      }

LABEL_91:
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
        *&buf[12] = 1024;
        *&buf[14] = 3426;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unknown command", buf, 0x12u);
      }

      goto LABEL_85;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
      *&buf[12] = 1024;
      *&buf[14] = 3214;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%{public}s::%d:kWAIORCommandReloadViaUnpersist start", buf, 0x12u);
    }

    [(WAEngine *)self setIorMessagePopulator:0];
    v136 = 0;
    v41 = [(WAEngine *)self _getObscureKey];
    self->_readingPersistFile = 1;
    v42 = [NSData alloc];
    v43 = NSHomeDirectory();
    v44 = [NSString stringWithFormat:@"%@%@t.out", v43, @"/Library/com.apple.wifianalyticsd/.wa/"];
    v45 = [v42 initWithContentsOfFile:v44 options:1 error:0];

    v46 = [v45 length];
    memset(key, 0, 33);
    v132 = v45;
    if (v45)
    {
      if (v41)
      {
        v128 = v46;
        dataOutAvailable = v46 + 16;
        [v41 getCString:key maxLength:33 encoding:4];
        v48 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = [v41 length];
          *buf = 136446722;
          *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
          *&buf[12] = 1024;
          *&buf[14] = 3249;
          v156 = 2048;
          v157 = v49;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:kWAIORCommandReloadViaUnpersist got unobscuring key %lu bytes", buf, 0x1Cu);
        }

        v50 = malloc_type_malloc(dataOutAvailable, 0xE2FA35A9uLL);
        v51 = WALogCategoryDefaultHandle();
        v52 = v51;
        dataOut = v50;
        if (v50)
        {
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
            *&buf[12] = 1024;
            *&buf[14] = 3259;
            v156 = 2048;
            v157 = dataOutAvailable;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:kWAIORCommandReloadViaUnpersist malloced %lu bytes", buf, 0x1Cu);
          }

          v53 = [(WAEngine *)self _getDataFromKeychain:@"com.apple.wifi.analytics.persistence-iv"];
          v54 = [(WAEngine *)self _getDataFromKeychain:@"com.apple.wifi.analytics.persistence-tag"];
          v126 = v54;
          v127 = v53;
          if (v53 && (v55 = v54) != 0)
          {
            v56 = [v53 bytes];
            v57 = v56[2];
            v146[1] = *v56;
            v147 = v57;
            *buf = *[v55 bytes];
            v58 = v132;
            [v132 bytes];
            v59 = dataOut;
            v60 = CCCryptorGCMOneshotDecrypt();
            v136 = v128;
          }

          else
          {
            v83 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446722;
              *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
              *&buf[12] = 1024;
              *&buf[14] = 3277;
              v156 = 2080;
              v157 = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
              _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: IV and tag not found", buf, 0x1Cu);
            }

            v58 = v132;
            v59 = dataOut;
            v60 = CCCrypt(1u, 0, 1u, key, 0x20uLL, 0, [v132 bytes], v128, dataOut, dataOutAvailable, &v136);
          }

          self->_readingPersistFile = 0;
          if (v60)
          {
            v84 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446978;
              *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
              *&buf[12] = 1024;
              *&buf[14] = 3285;
              v156 = 2080;
              v157 = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
              v158 = 1024;
              LODWORD(v159) = v60;
              _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Failed to unobscure: %d", buf, 0x22u);
            }

            free(v59);
            v145 = NSLocalizedFailureReasonErrorKey;
            v146[0] = @"WAErrorCodeInternalError";
            v85 = [NSDictionary dictionaryWithObjects:v146 forKeys:&v145 count:1];
            v66 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9003 userInfo:v85];

            [v9 setObject:@"CCCrypt failed" forKeyedSubscript:@"Details"];
            v31 = v133;
            v86 = v127;
LABEL_141:

            goto LABEL_142;
          }

          v129 = v41;
          v87 = [NSData alloc];
          v88 = [v87 initWithBytes:v59 length:v136];
          v124 = objc_opt_class();
          v123 = objc_opt_class();
          v122 = objc_opt_class();
          v121 = objc_opt_class();
          v89 = objc_opt_class();
          v90 = objc_opt_class();
          v91 = objc_opt_class();
          v92 = objc_opt_class();
          v93 = [NSSet setWithObjects:v124, v123, v122, v121, v89, v90, v91, v92, objc_opt_class(), 0];
          v135 = 0;
          v125 = v88;
          v94 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v93 fromData:v88 error:&v135];
          v95 = v135;

          if (v95)
          {
            v96 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
              *&buf[12] = 1024;
              *&buf[14] = 3296;
              v156 = 2112;
              v157 = v95;
              _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive root persistence dict: %@", buf, 0x1Cu);
            }

            v143 = NSLocalizedFailureReasonErrorKey;
            v144 = @"WAErrorCodeInternalError";
            v97 = [NSDictionary dictionaryWithObjects:&v144 forKeys:&v143 count:1];
            v66 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9003 userInfo:v97];

            [v9 setObject:@"Failed to unarchive root persistence" forKeyedSubscript:@"Details"];
          }

          else
          {
            v66 = 0;
          }

          free(dataOut);
          v98 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
            *&buf[12] = 1024;
            *&buf[14] = 3304;
            _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:kWAIORCommandReloadViaUnpersist NSKeyedUnarchiver complete", buf, 0x12u);
          }

          v131 = v94;
          v99 = [v94 objectForKeyedSubscript:@"WA_PERSIST_IOREPORTER_REGISTRATIONS"];
          if (v99)
          {
            v100 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
            {
              v101 = [v99 length];
              *buf = 136446722;
              *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
              *&buf[12] = 1024;
              *&buf[14] = 3309;
              v156 = 2048;
              v157 = v101;
              _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:iorReporterWrapperData size: %lu", buf, 0x1Cu);
            }

            v102 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v99 length]);
            [v9 setObject:v102 forKeyedSubscript:@"iorReporterWrapperData size"];

            v134 = 0;
            v103 = v99;
            v104 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v99 error:&v134];
            v105 = v134;
            if (v105)
            {
              v106 = v105;
              v107 = WALogCategoryDefaultHandle();
              if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
                *&buf[12] = 1024;
                *&buf[14] = 3314;
                v156 = 2112;
                v157 = v106;
                _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unarchive WAIOReporterMessagePopulator: %@", buf, 0x1Cu);
              }

              v141 = NSLocalizedFailureReasonErrorKey;
              v142 = @"WAErrorCodeInternalError";
              v108 = [NSDictionary dictionaryWithObjects:&v142 forKeys:&v141 count:1];
              v109 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9003 userInfo:v108];

              [v9 setObject:@"Failed to unarchive WAIOReporterMessagePopulator" forKeyedSubscript:@"Details"];
              v66 = v109;
            }

            if (v104)
            {
              v110 = WALogCategoryDefaultHandle();
              if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
                *&buf[12] = 1024;
                *&buf[14] = 3322;
                _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Unpersisting Success", buf, 0x12u);
              }

              [(WAEngine *)self setIorMessagePopulator:v104];
              [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Success"];
LABEL_138:
              v31 = v133;

              v112 = [(WAEngine *)self iorMessagePopulator];
              [v112 setMessageDelegate:self];

              v113 = [(WAEngine *)self iorMessagePopulator];
              [v113 setPersistenceDelegate:self];

              v114 = WALogCategoryDefaultHandle();
              v86 = v127;
              if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
                *&buf[12] = 1024;
                *&buf[14] = 3333;
                _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:kWAIORCommandReloadViaUnpersist end", buf, 0x12u);
              }

              v41 = v129;
              v58 = v132;
              goto LABEL_141;
            }

            v99 = v103;
          }

          v103 = v99;
          v111 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
            *&buf[12] = 1024;
            *&buf[14] = 3326;
            _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to unpersist, alloc new WAIOReporterMessagePopulator", buf, 0x12u);
          }

          v104 = objc_alloc_init(WAIOReporterMessagePopulator);
          [(WAEngine *)self setIorMessagePopulator:v104];
          goto LABEL_138;
        }

        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
          *&buf[12] = 1024;
          *&buf[14] = 3253;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%{public}s::%d:Couldn't allocate buffer to unobscure persistence data", buf, 0x12u);
        }

        v148 = NSLocalizedFailureReasonErrorKey;
        v149 = @"WAErrorCodeInternalError";
        v82 = [NSDictionary dictionaryWithObjects:&v149 forKeys:&v148 count:1];
        v66 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9003 userInfo:v82];

        v79 = @"malloc failed";
      }

      else
      {
        v80 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
          *&buf[12] = 1024;
          *&buf[14] = 3240;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "%{public}s::%d:Couldn't get key to unobscure persistence file, triggering removal of persistence file", buf, 0x12u);
        }

        [(WAEngine *)self _removePersistenceFile];
        v150 = NSLocalizedFailureReasonErrorKey;
        v151 = @"WAErrorCodeNoObscureKeyFile";
        v81 = [NSDictionary dictionaryWithObjects:&v151 forKeys:&v150 count:1];
        v66 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9032 userInfo:v81];

        v79 = @"No unobscure persistence file";
      }
    }

    else
    {
      v75 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        v76 = NSHomeDirectory();
        v77 = [NSString stringWithFormat:@"%@%@t.out", v76, @"/Library/com.apple.wifianalyticsd/.wa/"];
        *buf = 136446722;
        *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
        *&buf[12] = 1024;
        *&buf[14] = 3233;
        v156 = 2112;
        v157 = v77;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%{public}s::%d:No persistence file %@", buf, 0x1Cu);
      }

      v152 = NSLocalizedFailureReasonErrorKey;
      v153 = @"WAErrorCodeNoPersistenceFile";
      v78 = [NSDictionary dictionaryWithObjects:&v153 forKeys:&v152 count:1];
      v66 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9031 userInfo:v78];

      v79 = @"No persistence file";
    }

    [v9 setObject:v79 forKeyedSubscript:@"Details"];
    v58 = v132;
    v31 = v133;
LABEL_142:

    goto LABEL_86;
  }

  if (a3 <= 5)
  {
    v31 = v133;
    if (a3 == 4)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
        *&buf[12] = 1024;
        *&buf[14] = 3370;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%{public}s::%d:kWAIORCommandClearCaches start", buf, 0x12u);
      }

      v68 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
        *&buf[12] = 1024;
        *&buf[14] = 3372;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEBUG, "%{public}s::%d:kWAIORCommandClearCaches running [self.iorMessagePopulator freeIORCaches];", buf, 0x12u);
      }

      v69 = [(WAEngine *)self iorMessagePopulator];
      [v69 freeIORCaches];

      [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Success"];
      v33 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_84;
      }

      *buf = 136446466;
      *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
      *&buf[12] = 1024;
      *&buf[14] = 3376;
      v34 = "%{public}s::%d:kWAIORCommandClearCaches end";
    }

    else
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
        *&buf[12] = 1024;
        *&buf[14] = 3380;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%{public}s::%d:kWAIORCommandRemovePersistFiles start", buf, 0x12u);
      }

      v40 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
        *&buf[12] = 1024;
        *&buf[14] = 3382;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "%{public}s::%d:kWAIORCommandClearCaches running [self _removePersistenceFile];", buf, 0x12u);
      }

      [(WAEngine *)self _removePersistenceFile];
      [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Success"];
      v33 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_84;
      }

      *buf = 136446466;
      *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
      *&buf[12] = 1024;
      *&buf[14] = 3386;
      v34 = "%{public}s::%d:kWAIORCommandRemovePersistFiles end";
    }

    goto LABEL_83;
  }

  v31 = v133;
  if (a3 == 6)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
      *&buf[12] = 1024;
      *&buf[14] = 3390;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%{public}s::%d:kWAIORCommandRunIOLegendTest start", buf, 0x12u);
    }

    v63 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
      *&buf[12] = 1024;
      *&buf[14] = 3392;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "%{public}s::%d:kWAIORCommandRunIOLegendTest running [self.iorMessagePopulator runIOLegendTest];", buf, 0x12u);
    }

    v64 = [(WAEngine *)self iorMessagePopulator];
    v65 = [v64 runIOLegendTest];

    if (v65)
    {
      v66 = 0;
      v67 = &__kCFBooleanTrue;
    }

    else
    {
      v139 = NSLocalizedFailureReasonErrorKey;
      v140 = @"WAErrorCodeInternalError";
      v73 = [NSDictionary dictionaryWithObjects:&v140 forKeys:&v139 count:1];
      v66 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9003 userInfo:v73];

      v67 = &__kCFBooleanFalse;
    }

    [v9 setObject:v67 forKeyedSubscript:@"Success"];
    v74 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
      *&buf[12] = 1024;
      *&buf[14] = 3400;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEBUG, "%{public}s::%d:kWAIORCommandRunIOLegendTest end", buf, 0x12u);
    }

    goto LABEL_86;
  }

  if (a3 == 7)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
      *&buf[12] = 1024;
      *&buf[14] = 3404;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%{public}s::%d:kWAIORCommandScanPredicatesNotYetFound start", buf, 0x12u);
    }

    v70 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
      *&buf[12] = 1024;
      *&buf[14] = 3406;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "%{public}s::%d:kWAIORCommandScanPredicatesNotYetFound running [self.iorMessagePopulator scanPredicatesNotYetFound];", buf, 0x12u);
    }

    v71 = [(WAEngine *)self iorMessagePopulator];
    [v71 scanPredicatesNotYetFoundAndMutable];

    [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Success"];
    v33 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_84;
    }

    *buf = 136446466;
    *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
    *&buf[12] = 1024;
    *&buf[14] = 3411;
    v34 = "%{public}s::%d:kWAIORCommandScanPredicatesNotYetFound end";
    goto LABEL_83;
  }

  if (a3 != 8)
  {
    goto LABEL_91;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
    *&buf[12] = 1024;
    *&buf[14] = 3415;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%{public}s::%d:kWAIORCommandForceStudyErrorFromMsg start", buf, 0x12u);
  }

  v32 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
    *&buf[12] = 1024;
    *&buf[14] = 3417;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%{public}s::%d:kWAIORCommandForceStudyErrorFromMsg seetting _forceStudyErrorFromMsg true", buf, 0x12u);
  }

  self->_forceStudyErrorFromMsg = 1;
  [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Success"];
  v33 = WALogCategoryDefaultHandle();
  if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_84;
  }

  *buf = 136446466;
  *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
  *&buf[12] = 1024;
  *&buf[14] = 3422;
  v34 = "%{public}s::%d:kWAIORCommandForceStudyErrorFromMsg end";
LABEL_83:
  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, v34, buf, 0x12u);
LABEL_84:

LABEL_85:
  v66 = 0;
LABEL_86:
  v72 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "[WAEngine _issueIOReportManagementCommand:forProcessToken:andReply:]";
    *&buf[12] = 1024;
    *&buf[14] = 3431;
    v156 = 2112;
    v157 = v9;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Replying Now msg %@", buf, 0x1Cu);
  }

  if (v31)
  {
    (v31)[2](v31, v9, v66);
  }

LABEL_90:
}

- (void)_trapCrashMiniTracerDumpReadyForInterfaceWithName:(id)a3 andReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];

  if (!v8)
  {
    v9 = +[NSMutableDictionary dictionary];
    [(WAEngine *)self setInterfaceNameToApple80211InstanceMap:v9];
  }

  v10 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];
  v11 = [v10 objectForKeyedSubscript:v6];

  if (!v11)
  {
    v12 = [[WAApple80211 alloc] initWithInterfaceName:v6];
    if (v12)
    {
      v13 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];
      [v13 setObject:v12 forKeyedSubscript:v6];
    }
  }

  v14 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];
  v15 = [v14 objectForKeyedSubscript:v6];

  if (v15)
  {
    v16 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];
    v17 = [v16 objectForKeyedSubscript:v6];
    [v17 grabAndSubmitFWTrapInfo];
  }

  else
  {
    v16 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446466;
      v19 = "[WAEngine _trapCrashMiniTracerDumpReadyForInterfaceWithName:andReply:]";
      v20 = 1024;
      v21 = 3456;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d:No Apple80211 wrapper to process trap crash mini tracer dump with!", &v18, 0x12u);
    }
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)_lqmCrashTracerNotifyForInterfaceWithName:(id)a3 andReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];

  if (!v8)
  {
    v9 = +[NSMutableDictionary dictionary];
    [(WAEngine *)self setInterfaceNameToApple80211InstanceMap:v9];
  }

  v10 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];
  v11 = [v10 objectForKeyedSubscript:v6];

  if (!v11)
  {
    v12 = [[WAApple80211 alloc] initWithInterfaceName:v6];
    if (v12)
    {
      v13 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];
      [v13 setObject:v12 forKeyedSubscript:v6];
    }
  }

  v14 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];
  v15 = [v14 objectForKeyedSubscript:v6];

  if (v15)
  {
    v16 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];
    v17 = [v16 objectForKeyedSubscript:v6];
    [v17 grabAndSubmitLqmMetrics];
  }

  else
  {
    v16 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446466;
      v19 = "[WAEngine _lqmCrashTracerNotifyForInterfaceWithName:andReply:]";
      v20 = 1024;
      v21 = 3475;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d:No Apple80211 wrapper to process lqmCrashTracer with!", &v18, 0x12u);
    }
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)_lqmCrashTracerReceiveBlock:(id)a3 forInterfaceWithName:(id)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];

  if (!v11)
  {
    v12 = +[NSMutableDictionary dictionary];
    [(WAEngine *)self setInterfaceNameToApple80211InstanceMap:v12];
  }

  v13 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];
  v14 = [v13 objectForKeyedSubscript:v9];

  if (!v14)
  {
    v15 = [[WAApple80211 alloc] initWithInterfaceName:v9];
    if (v15)
    {
      v16 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];
      [v16 setObject:v15 forKeyedSubscript:v9];
    }
  }

  v17 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];
  v18 = [v17 objectForKeyedSubscript:v9];

  if (v18)
  {
    v19 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];
    v20 = [v19 objectForKeyedSubscript:v9];
    [v20 submitLqmMetrics:v8];
  }

  else
  {
    v19 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = 136446466;
      v22 = "[WAEngine _lqmCrashTracerReceiveBlock:forInterfaceWithName:andReply:]";
      v23 = 1024;
      v24 = 3494;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:No Apple80211 wrapper to process lqmCrashTracer with!", &v21, 0x12u);
    }
  }

  if (v10)
  {
    (*(v10 + 2))(v10, 0, 0);
  }
}

- (void)_trapFWWithReason:(id)a3 andReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  infraInterfaceName = self->_infraInterfaceName;
  if (!infraInterfaceName)
  {
    goto LABEL_4;
  }

  if ([(NSString *)infraInterfaceName isEqualToString:@"dunno"])
  {
    goto LABEL_4;
  }

  v9 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];
  v10 = [(WAEngine *)self infraInterfaceName];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (!v11)
  {
LABEL_4:
    [(WAEngine *)self queryInfraInterfaceInstanceAndChip];
  }

  if ([(NSString *)self->_infraInterfaceName isEqualToString:@"dunno"])
  {
    goto LABEL_8;
  }

  v12 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];
  v13 = [(WAEngine *)self infraInterfaceName];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (!v14)
  {
LABEL_8:
    v19 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = 136446466;
      v22 = "[WAEngine _trapFWWithReason:andReply:]";
      v23 = 1024;
      LODWORD(v24) = 3513;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:failed to find _infraInterfaceName", &v21, 0x12u);
    }

    v15 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v20 = self->_infraInterfaceName;
      v21 = 138412546;
      v22 = v6;
      v23 = 2112;
      v24 = v20;
      _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Failed to initiate FW trap reason %@, interface %@", &v21, 0x16u);
    }
  }

  else
  {
    v15 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];
    v16 = [(WAEngine *)self infraInterfaceName];
    v17 = [v15 objectForKeyedSubscript:v16];
    v18 = [(WAEngine *)self getDpsMetaDataString];
    [v17 triggerDpsReset:@"TrapOnSlowDPS" metaData:v18];
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)_examinePeerMessageForIntegrity:(id)a3
{
  v3 = a3;
  v4 = [v3 fieldForKey:@"NWAPS_txLatencyBEs"];
  v5 = [v4 repeatableValues];

  if (v5)
  {
    v6 = [v3 fieldForKey:@"NWAPS_txLatencyBEs"];
    v7 = [v6 repeatableValues];
    v8 = [v7 count];

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v40 = "[WAEngine _examinePeerMessageForIntegrity:]";
    v41 = 1024;
    v42 = 3534;
    v43 = 2048;
    v44 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}s::%d:NWAPS_txLatencyBEs bincount %lu", buf, 0x1Cu);
  }

  if (v9 < 0x10)
  {
    if (!v9)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v11 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v40 = "[WAEngine _examinePeerMessageForIntegrity:]";
      v41 = 1024;
      v42 = 3537;
      v43 = 2048;
      v44 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:bin count for NWAPS_txLatencyBEs exceeds expected count %lu", buf, 0x1Cu);
    }
  }

  v12 = 0;
  v32 = v9 - 1;
  while (2)
  {
    v33 = 0;
    v13 = 0;
LABEL_13:
    v14 = v13;
    do
    {
      if (v12 != v14)
      {
        v37 = [v3 fieldForKey:@"NWAPS_txLatencyBEs"];
        v35 = [v37 repeatableValues];
        v15 = [v35 objectAtIndex:v12];
        v16 = [v15 fieldForKey:@"NWAHB_bin"];
        [v3 fieldForKey:@"NWAPS_txLatencyBEs"];
        v18 = v17 = v9;
        [v18 repeatableValues];
        v19 = v12;
        v21 = v20 = v3;
        v22 = [v21 objectAtIndex:v14];
        v23 = [v22 fieldForKey:@"NWAHB_bin"];

        v3 = v20;
        v12 = v19;

        v9 = v17;
        if (v16 == v23)
        {
          v24 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v38 = [v3 fieldForKey:@"NWAPS_txLatencyBEs"];
            v36 = [v38 repeatableValues];
            v34 = [v36 objectAtIndex:v19];
            v25 = [v34 fieldForKey:@"NWAHB_bin"];
            v26 = [v3 fieldForKey:@"NWAPS_txLatencyBEs"];
            v27 = [v26 repeatableValues];
            v28 = [v27 objectAtIndex:v14];
            v29 = [v28 fieldForKey:@"NWAHB_bin"];
            *buf = 136447490;
            v40 = "[WAEngine _examinePeerMessageForIntegrity:]";
            v41 = 1024;
            v42 = 3545;
            v43 = 2048;
            v44 = v12;
            v45 = 2112;
            v46 = v25;
            v47 = 2048;
            v48 = v14;
            v49 = 2112;
            v50 = v29;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}s::%d:Duplicate bin name: i %lu %@ j %lu %@", buf, 0x3Au);
          }

          v13 = v14 + 1;
          v33 = 1;
          if (v32 == v14)
          {
            goto LABEL_25;
          }

          goto LABEL_13;
        }
      }

      ++v14;
    }

    while (v9 != v14);
    if (v33)
    {
LABEL_25:
      v30 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, "Malformed PeerMessage", buf, 2u);
      }

      break;
    }

    if (++v12 != v9)
    {
      continue;
    }

    break;
  }

  if (v9 >= 0x10)
  {
    v31 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "Too many txLatencyBE bins in PeerMessage", buf, 2u);
    }
  }

LABEL_32:
}

- (void)_triggerQueryForNWActivity:(int64_t)a3 forProcessToken:(id)a4 andReply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = sub_10005CFFC;
  v72 = sub_10005D00C;
  v73 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_10005CFFC;
  v66 = sub_10005D00C;
  v67 = 0;
  if (!a3)
  {
    v10 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Engine NWActivity reply style 0", "", buf, 2u);
    }

    v9[2](v9, 0, v63[5]);
    v11 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Engine NWActivity reply style 0", "", buf, 2u);
    }
  }

  v12 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Engine NWActivity", "", buf, 2u);
  }

  self->_isNWActivityInProgress = 1;
  if (!a3)
  {
    v13 = [(WAEngine *)self submitterMap];
    v14 = [v13 objectForKeyedSubscript:v8];
    v15 = [NSNumber numberWithInteger:3];
    v16 = [v14 objectForKeyedSubscript:v15];
    v17 = v16 == 0;

    if (v17)
    {
      v18 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v77 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]";
        v78 = 1024;
        v79 = 3582;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:Caller did not register", buf, 0x12u);
      }

      if (!v8)
      {
        v52 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v77 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]";
          v78 = 1024;
          v79 = 3583;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:couldn't get process name for connection", buf, 0x12u);
        }

        v84 = NSLocalizedFailureReasonErrorKey;
        v85 = @"WAErrorCodeInternalError";
        v24 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v53 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9003 userInfo:v24];
        v54 = v63[5];
        v63[5] = v53;

        goto LABEL_49;
      }

      v19 = [(WAEngine *)self processTokenToGroupTypeMap];
      v20 = [v19 objectForKeyedSubscript:v8];
      v21 = [NSNumber numberWithInteger:3];
      v22 = [v20 containsObject:v21];

      v23 = WALogCategoryDefaultHandle();
      v24 = v23;
      if (v22)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v77 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]";
          v78 = 1024;
          v79 = 3584;
          v80 = 2048;
          v81 = 3;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: processTokenToGroupTypeMap seems to think this process token has already registered group type: %ld", buf, 0x1Cu);
        }

        goto LABEL_49;
      }

      if (os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Engine NWActivity notRegisteredPath", "", buf, 2u);
      }

      [(WAEngine *)self _purgeGroupTypeIfNecessary:3];
      v25 = [(WAEngine *)self processTokenToGroupTypeMap];
      v26 = [v25 objectForKeyedSubscript:v8];
      v27 = v26 == 0;

      if (v27)
      {
        v28 = objc_alloc_init(NSMutableSet);
        v29 = [(WAEngine *)self processTokenToGroupTypeMap];
        [v29 setObject:v28 forKeyedSubscript:v8];
      }

      v30 = [(WAEngine *)self processTokenToGroupTypeMap];
      v31 = [v30 objectForKeyedSubscript:v8];
      v32 = [NSNumber numberWithInteger:3];
      [v31 addObject:v32];

      [(WAEngine *)self _initSubmitterAndQueryableRegistrationForProcessToken:v8 andGroupType:3];
      [(WAEngine *)self _persist];
      v33 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = [WAUtil trimTokenForLogging:v8];
        *buf = 136446978;
        v77 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]";
        v78 = 1024;
        v79 = 3597;
        v80 = 2048;
        v81 = 3;
        v82 = 2112;
        v83 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: registering message group type: %ld for process: %@", buf, 0x26u);
      }

      v35 = WALogCategoryDefaultHandle();
      if (os_signpost_enabled(v35))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Engine NWActivity notRegisteredPath", "", buf, 2u);
      }
    }
  }

  v36 = [(WAEngine *)self _cachedModelObjectsForProcess:v8 groupType:3 key:@"NWA"];
  v37 = v69[5];
  v69[5] = v36;

  if (!v69[5])
  {
    v48 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v77 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]";
      v78 = 1024;
      v79 = 3603;
      v80 = 2112;
      v81 = @"NWA";
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%{public}s::%d:No model class found for key: %@. This is a CRITICAL error", buf, 0x1Cu);
    }

    v74 = NSLocalizedFailureReasonErrorKey;
    v75 = @"WAErrorCodeNotRegistered";
    v42 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    v49 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v42];
    v50 = v63[5];
    v63[5] = v49;

    goto LABEL_39;
  }

  v38 = [(WAEngine *)self iorMessagePopulator];
  v39 = [v69[5] originalClassName];
  v40 = [v38 doesMessageNeedPrepopulation:v39];

  v41 = WALogCategoryDefaultHandle();
  v42 = v41;
  if ((v40 & 1) == 0)
  {
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v77 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]";
      v78 = 1024;
      v79 = 3605;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%{public}s::%d:doesMessageNeedPrepopulation returned false", buf, 0x12u);
    }

LABEL_39:

    if (a3 != 1)
    {
LABEL_50:
      self->_isNWActivityInProgress = 0;
      v47 = WALogCategoryDefaultHandle();
      if (!os_signpost_enabled(v47))
      {
        goto LABEL_33;
      }

      *buf = 0;
      goto LABEL_32;
    }

    v51 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v51))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Engine NWActivity Reply", "", buf, 2u);
    }

    v9[2](v9, v69[5], v63[5]);
    v24 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Engine NWActivity Reply", "", buf, 2u);
    }

LABEL_49:

    goto LABEL_50;
  }

  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    v43 = [v69[5] key];
    *buf = 136446722;
    v77 = "[WAEngine _triggerQueryForNWActivity:forProcessToken:andReply:]";
    v78 = 1024;
    v79 = 3606;
    v80 = 2112;
    v81 = v43;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Send WAMessageAWD %@ for population... ", buf, 0x1Cu);
  }

  v44 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v44))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Engine NWActivity Poplulate", "", buf, 2u);
  }

  v45 = [(WAEngine *)self iorMessagePopulator];
  v46 = v69[5];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_10006D4BC;
  v55[3] = &unk_1000EE138;
  v58 = &v68;
  v55[4] = self;
  v59 = &v62;
  v56 = v8;
  v60 = 3;
  v61 = a3;
  v57 = v9;
  [v45 prepopulateMessage:v46 forProcess:v56 groupType:3 andReply:v55];

  self->_isNWActivityInProgress = 0;
  v47 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v47))
  {
    *buf = 0;
LABEL_32:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Engine NWActivity", "", buf, 2u);
  }

LABEL_33:

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);
}

- (BOOL)hasDuplicateHashIDs:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v6 = 0;
  if ([v3 count])
  {
    v7 = 0;
    *&v5 = 136447234;
    v14 = v5;
    do
    {
      v8 = [v3 objectAtIndexedSubscript:{v7, v14}];
      v9 = [v8 objectForKeyedSubscript:@"hashID"];
      if (v9)
      {
        v10 = [v4 objectForKeyedSubscript:v9];
        if (v10)
        {
          v11 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = [NSNumber numberWithUnsignedInteger:v7];
            *buf = v14;
            v16 = "[WAEngine hasDuplicateHashIDs:]";
            v17 = 1024;
            v18 = 3825;
            v19 = 2112;
            v20 = v9;
            v21 = 2112;
            v22 = v10;
            v23 = 2112;
            v24 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:Dictionary contains multiple entries with hashID %@ at index %@ and at index %@", buf, 0x30u);
          }

          v6 = 1;
        }

        else
        {
          v11 = [NSNumber numberWithUnsignedInteger:v7];
          [v4 setObject:v11 forKeyedSubscript:v9];
        }
      }

      ++v7;
    }

    while (v7 < [v3 count]);
  }

  return v6 & 1;
}

- (BOOL)alreadyContainsHashID:(id)a3 inArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [v6 objectAtIndexedSubscript:v7];
      v9 = [v8 objectForKeyedSubscript:@"hashID"];
      v10 = v9;
      if (v9)
      {
        if ([v9 isEqualToString:v5])
        {
          break;
        }
      }

      if (++v7 >= [v6 count])
      {
        goto LABEL_6;
      }
    }

    v11 = 1;
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

  return v11;
}

- (void)_triggerQueryForNWActivityWithPeers:(id)a3 forProcessToken:(id)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_10005CFFC;
  v44 = sub_10005D00C;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_10005CFFC;
  v38 = sub_10005D00C;
  v39 = 0;
  v11 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Engine NWPeerActivity", "", buf, 2u);
  }

  v12 = [(WAEngine *)self _cachedModelObjectsForProcess:v9 groupType:3 key:@"NWPA"];
  v13 = v41[5];
  v41[5] = v12;

  if (v41[5])
  {
    v14 = [(WAEngine *)self iorMessagePopulator];
    v15 = [v41[5] originalClassName];
    v16 = [v14 doesMessageNeedPrepopulation:v15];

    v17 = WALogCategoryDefaultHandle();
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v19 = [v41[5] key];
        *buf = 136446722;
        v49 = "[WAEngine _triggerQueryForNWActivityWithPeers:forProcessToken:andReply:]";
        v50 = 1024;
        v51 = 3868;
        v52 = 2112;
        v53 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Send WAMessageAWD %@ for population... ", buf, 0x1Cu);
      }

      v20 = [(WAEngine *)self iorMessagePopulator];
      [v20 updateListOfMonitoredPeers:v8];

      v21 = WALogCategoryDefaultHandle();
      if (os_signpost_enabled(v21))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Engine NWPeerActivity Poplulate", "", buf, 2u);
      }

      v22 = [(WAEngine *)self iorMessagePopulator];
      v23 = v41[5];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10006F754;
      v30[3] = &unk_1000EE160;
      v32 = &v34;
      v30[4] = self;
      v33 = &v40;
      v31 = v10;
      [v22 prepopulateMessage:v23 forProcess:v9 groupType:3 andReply:v30];

      v18 = WALogCategoryDefaultHandle();
      if (os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Engine NWPeerActivity", "", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v49 = "[WAEngine _triggerQueryForNWActivityWithPeers:forProcessToken:andReply:]";
      v50 = 1024;
      v51 = 3867;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:doesMessageNeedPrepopulation returned false", buf, 0x12u);
    }
  }

  else
  {
    v27 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v49 = "[WAEngine _triggerQueryForNWActivityWithPeers:forProcessToken:andReply:]";
      v50 = 1024;
      v51 = 3865;
      v52 = 2112;
      v53 = @"NWPA";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s::%d:No model class found for key: %@. This is a CRITICAL error", buf, 0x1Cu);
    }

    v46 = NSLocalizedFailureReasonErrorKey;
    v47 = @"WAErrorCodeNotRegistered";
    v18 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v28 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v18];
    v29 = v35[5];
    v35[5] = v28;
  }

  v24 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Engine NWPeerActivity Reply", "", buf, 2u);
  }

  (*(v10 + 2))(v10, v41[5], v35[5]);
  v25 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Engine NWPeerActivity Reply", "", buf, 2u);
  }

  self->_isNWActivityInProgress = 0;
  v26 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Engine NWActivity", "", buf, 2u);
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);
}

- (void)_convertWiFiStatsIntoPercentile:(id)a3 analysisGroup:(int64_t)a4 groupTarget:(id)a5 forProcessToken:(id)a6 andReply:(id)a7
{
  v46 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_10005CFFC;
  v54 = sub_10005D00C;
  v55 = 0;
  v15 = [(WAEngine *)self submitterMap];
  v16 = [v15 objectForKeyedSubscript:v13];
  v17 = [NSNumber numberWithInteger:3];
  v18 = [v16 objectForKeyedSubscript:v17];
  v19 = v18 == 0;

  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v61 = "[WAEngine _convertWiFiStatsIntoPercentile:analysisGroup:groupTarget:forProcessToken:andReply:]";
    v62 = 1024;
    v63 = 3961;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d:Caller did not register", buf, 0x12u);
  }

  if (!v13)
  {
    v40 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v61 = "[WAEngine _convertWiFiStatsIntoPercentile:analysisGroup:groupTarget:forProcessToken:andReply:]";
      v62 = 1024;
      v63 = 3962;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:couldn't get process name for connection", buf, 0x12u);
    }

    v41 = NSLocalizedFailureReasonErrorKey;
    v68 = NSLocalizedFailureReasonErrorKey;
    v69 = @"WAErrorCodeInternalError";
    v42 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    v43 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9003 userInfo:v42];
    v44 = v51[5];
    v51[5] = v43;

    goto LABEL_24;
  }

  v21 = [(WAEngine *)self processTokenToGroupTypeMap];
  v22 = [v21 objectForKeyedSubscript:v13];
  v23 = [NSNumber numberWithInteger:3];
  v24 = [v22 containsObject:v23];

  if (v24)
  {
    v45 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v61 = "[WAEngine _convertWiFiStatsIntoPercentile:analysisGroup:groupTarget:forProcessToken:andReply:]";
      v62 = 1024;
      v63 = 3963;
      v64 = 2048;
      v65 = 3;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: processTokenToGroupTypeMap seems to think this process token has already registered group type: %ld", buf, 0x1Cu);
    }

    v41 = NSLocalizedFailureReasonErrorKey;
LABEL_24:
    v56 = v41;
    v57 = @"WAErrorCodeInternalError";
    v37 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v38 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9003 userInfo:v37];
LABEL_16:
    v39 = v51[5];
    v51[5] = v38;

    v14[2](v14, 0, v51[5]);
    goto LABEL_17;
  }

  [(WAEngine *)self _purgeGroupTypeIfNecessary:3];
  v25 = [(WAEngine *)self processTokenToGroupTypeMap];
  v26 = [v25 objectForKeyedSubscript:v13];
  v27 = v26 == 0;

  if (v27)
  {
    v28 = objc_alloc_init(NSMutableSet);
    v29 = [(WAEngine *)self processTokenToGroupTypeMap];
    [v29 setObject:v28 forKeyedSubscript:v13];
  }

  v30 = [(WAEngine *)self processTokenToGroupTypeMap];
  v31 = [v30 objectForKeyedSubscript:v13];
  v32 = [NSNumber numberWithInteger:3];
  [v31 addObject:v32];

  [(WAEngine *)self _initSubmitterAndQueryableRegistrationForProcessToken:v13 andGroupType:3];
  [(WAEngine *)self _persist];
  v33 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v34 = [WAUtil trimTokenForLogging:v13];
    *buf = 136446978;
    v61 = "[WAEngine _convertWiFiStatsIntoPercentile:analysisGroup:groupTarget:forProcessToken:andReply:]";
    v62 = 1024;
    v63 = 3974;
    v64 = 2048;
    v65 = 3;
    v66 = 2112;
    v67 = v34;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: registering message group type: %ld for process: %@", buf, 0x26u);
  }

LABEL_11:
  v35 = [[NWActivityDistributionStoreDescriptor alloc] _initWithGroupAndOptions:a4 groupTarget:v12];
  if (!v35)
  {
    v36 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v61 = "[WAEngine _convertWiFiStatsIntoPercentile:analysisGroup:groupTarget:forProcessToken:andReply:]";
      v62 = 1024;
      v63 = 3990;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to create NWActivityDistributionStoreDescriptor", buf, 0x12u);
    }

    v58 = NSLocalizedFailureReasonErrorKey;
    v59 = @"WAErrorCodeInternalError";
    v37 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v38 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9003 userInfo:v37];
    goto LABEL_16;
  }

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000703B8;
  v47[3] = &unk_1000EE188;
  v48 = v14;
  v49 = &v50;
  [v35 findInterpolatedPercentileFromWiFiStats:v46 andReply:v47];

LABEL_17:
  _Block_object_dispose(&v50, 8);
}

- (void)populateChannelInfo:(id)a3
{
  v17 = 0;
  v3 = a3;
  v4 = +[WAApple80211Manager sharedObject];
  v5 = [v4 getInfraApple80211];

  if (!v5)
  {
    v9 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446466;
    v19 = "[WAEngine populateChannelInfo:]";
    v20 = 1024;
    v21 = 4014;
    v10 = "%{public}s::%d:invalid apple80211API";
    v11 = v9;
    v12 = OS_LOG_TYPE_ERROR;
    goto LABEL_14;
  }

  if ([v5 currentChannelInfo:&v16])
  {
    if ((v17 & 0x400) != 0)
    {
      v6 = 80;
    }

    else
    {
      v6 = (v17 << 20 >> 31) & 0xA0;
    }

    if ((v17 & 4) != 0)
    {
      v7 = 40;
    }

    else
    {
      v7 = v6;
    }

    if ((v17 & 2) != 0)
    {
      v8 = 20;
    }

    else
    {
      v8 = v7;
    }

    goto LABEL_16;
  }

  v9 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v19 = "[WAEngine populateChannelInfo:]";
    v20 = 1024;
    v21 = 4017;
    v10 = "%{public}s::%d:Error getting channel Info for dpsCounterSample";
    v11 = v9;
    v12 = OS_LOG_TYPE_DEFAULT;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v11, v12, v10, buf, 0x12u);
  }

LABEL_15:

  v8 = 0;
LABEL_16:
  v13 = [v3 fieldForKey:@"NWACS_channel"];
  [v13 setUint32Value:HIDWORD(v16)];

  v14 = [v3 fieldForKey:@"NWACS_channelBandwidth"];

  [v14 setUint32Value:v8];
  v15 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v19 = "[WAEngine populateChannelInfo:]";
    v20 = 1024;
    v21 = 4031;
    v22 = 1024;
    v23 = HIDWORD(v16);
    v24 = 1024;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:channel: %u channelBandwidth: %u", buf, 0x1Eu);
  }
}

- (BOOL)populateApProfile:(id)a3
{
  v4 = a3;
  v5 = [v4 fieldForKey:@"NWA_apProfile"];
  [v5 setStringValue:&stru_1000F04E0];

  v6 = +[WAApple80211Manager sharedObject];
  v7 = [v6 getInfraApple80211];

  if (!v7)
  {
    v17 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446466;
      v21 = "[WAEngine populateApProfile:]";
      v22 = 1024;
      v23 = 4049;
      v18 = "%{public}s::%d:invalid apple80211API";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v18, &v20, 0x12u);
    }

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v8 = [v7 currentBSSIDandSSID];
  if (!v8)
  {
    v17 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446466;
      v21 = "[WAEngine populateApProfile:]";
      v22 = 1024;
      v23 = 4055;
      v18 = "%{public}s::%d:currentBSSIDandSSID gave nil";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v9 = v8;
  [WAUtil incrementValueForKey:@"AnalyticsProcessor: AP Profile For BSSID" inMutableDict:self->_cachedUsage onQueue:self->_engineQ];
  v10 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
  v11 = [v9 objectForKeyedSubscript:@"bssid"];
  v12 = [v10 apProfileForBssid:v11];

  if (v12)
  {
    v13 = [v4 fieldForKey:@"NWA_apProfile"];
    [v13 setStringValue:v12];

    v14 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136446722;
      v21 = "[WAEngine populateApProfile:]";
      v22 = 1024;
      v23 = 4066;
      v24 = 1024;
      LODWORD(v25) = 1;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:returning %d", &v20, 0x18u);
    }

    v15 = 1;
    goto LABEL_7;
  }

  v17 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v19 = [v9 objectForKeyedSubscript:@"bssid"];
    v20 = 136446722;
    v21 = "[WAEngine populateApProfile:]";
    v22 = 1024;
    v23 = 4059;
    v24 = 2112;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:profile for %@ is nil", &v20, 0x1Cu);
  }

LABEL_14:

  v12 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v20 = 136446722;
    v21 = "[WAEngine populateApProfile:]";
    v22 = 1024;
    v23 = 4072;
    v24 = 1024;
    LODWORD(v25) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:returning %d", &v20, 0x18u);
  }

  v15 = 0;
LABEL_7:

  return v15;
}

- (BOOL)everAssociated:(BOOL)a3 assocDoneSuccess:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (a3 || a4)
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136446978;
      v12 = "[WAEngine everAssociated:assocDoneSuccess:]";
      v13 = 1024;
      v14 = 4081;
      v15 = 1024;
      v16 = v5;
      v17 = 1024;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:everAssociated true due to hasLinkChanged %d hasAssocDoneSuccess %d", &v11, 0x1Eu);
    }

    v8 = 1;
  }

  else
  {
    v6 = +[WAApple80211Manager sharedObject];
    v7 = [v6 getInfraApple80211];

    if (v7)
    {
      v8 = [v7 everAssociated];
    }

    else
    {
      v10 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 136446466;
        v12 = "[WAEngine everAssociated:assocDoneSuccess:]";
        v13 = 1024;
        v14 = 4086;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:invalid apple80211API", &v11, 0x12u);
      }

      v7 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = 136446466;
        v12 = "[WAEngine everAssociated:assocDoneSuccess:]";
        v13 = 1024;
        v14 = 4095;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:everAssociated failed", &v11, 0x12u);
      }

      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)isAssociated
{
  v2 = +[WAApple80211Manager sharedObject];
  v3 = [v2 getInfraApple80211];

  if (v3)
  {
    v4 = [v3 isAssociated];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446466;
      v9 = "[WAEngine isAssociated]";
      v10 = 1024;
      v11 = 4105;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:invalid apple80211API", &v8, 0x12u);
    }

    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446466;
      v9 = "[WAEngine isAssociated]";
      v10 = 1024;
      v11 = 4113;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:everAssociated failed", &v8, 0x12u);
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)isAXAssociatoin
{
  v2 = +[WAApple80211Manager sharedObject];
  v3 = [v2 getInfraApple80211];

  if (v3)
  {
    v4 = [v3 isAXAssociatoin];
  }

  else
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446466;
      v9 = "[WAEngine isAXAssociatoin]";
      v10 = 1024;
      v11 = 4123;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:invalid apple80211API", &v8, 0x12u);
    }

    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446466;
      v9 = "[WAEngine isAXAssociatoin]";
      v10 = 1024;
      v11 = 4131;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:isAXAssociatoin failed", &v8, 0x12u);
    }

    v4 = 0;
  }

  return v4;
}

- (void)gatherConsecutiveDatapathReadings:(int64_t)a3 forProcessToken:(id)a4 andReply:(id)a5
{
  v7 = a4;
  v58 = a5;
  group = dispatch_group_create();
  v51 = dispatch_semaphore_create(0);
  v8 = dispatch_semaphore_create(0);
  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = sub_10005CFFC;
  v112 = sub_10005D00C;
  v113 = 0;
  v106[0] = 0;
  v106[1] = v106;
  v106[2] = 0x3032000000;
  v106[3] = sub_10005CFFC;
  v106[4] = sub_10005D00C;
  v107 = +[NSMutableDictionary dictionary];
  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = sub_10005CFFC;
  v104 = sub_10005D00C;
  v105 = 0;
  v98[0] = 0;
  v98[1] = v98;
  v98[2] = 0x3032000000;
  v98[3] = sub_10005CFFC;
  v98[4] = sub_10005D00C;
  v99 = 0;
  v95[0] = _NSConcreteStackBlock;
  v95[1] = 3221225472;
  v95[2] = sub_100071E70;
  v95[3] = &unk_1000EE1B0;
  v97 = &v108;
  dsema = v8;
  v96 = dsema;
  v56 = v7;
  [(WAEngine *)self _getNewMessageForKey:@"DPSR" groupType:4 forProcessToken:v7 shouldCheckForPrePopulation:0 andReply:v95];
  v9 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(dsema, v9);
  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v115 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]";
    v116 = 1024;
    v117 = 4157;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:ensureDPSRexists done", buf, 0x12u);
  }

  if (v109[5])
  {
    if (self->_dnsStudyInProgress)
    {
      v55 = [(WAEngine *)self fetchConfiguredDnsInfo];
      [(WAEngine *)self triggerPeerDiscovery];
    }

    else
    {
      v55 = 1;
    }

    v57 = [(WAEngine *)self _DPSQuickRecoveryEngineObj];
    v11 = [v109[5] fieldForKey:@"DPSR_dpsEpiloge"];
    v12 = [v11 subMessageValue];
    v13 = [v12 fieldForKey:@"DPSE_qDpsStats"];
    v14 = [v13 subMessageValue];
    [v57 updateTimeSincePreviousTriggerForQuickDps:v14];

    v15 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v115 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]";
      v116 = 1024;
      v117 = 4171;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:_dpsStudyInProgress Start", buf, 0x12u);
    }

    dispatch_group_enter(group);
    v16 = [(RecommendationEngine *)self->_recommendationEngine preferences];
    v17 = dispatch_time(0, 1000000000 * [v16 dps_report_sent_after]);
    dpsReadWriteSerialQueue = self->_dpsReadWriteSerialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100071F70;
    block[3] = &unk_1000ED880;
    v49 = group;
    v94 = v49;
    dispatch_after(v17, dpsReadWriteSerialQueue, block);

    v19 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v115 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]";
      v116 = 1024;
      v117 = 4180;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:_dpsCurrentlyGatheringConsecutiveSamples TRUE", buf, 0x12u);
    }

    self->_dpsCurrentlyGatheringConsecutiveSamples = 1;
    v91[0] = 0;
    v91[1] = v91;
    v91[2] = 0x2020000000;
    v92 = 1;
    v89[0] = 0;
    v89[1] = v89;
    v89[2] = 0x2020000000;
    v90 = 1;
    v20 = [(RecommendationEngine *)self->_recommendationEngine preferences];
    v21 = [v20 dps_duration_between_samples];

    if (self->_dnsStudyInProgress)
    {
      v60 = [(RecommendationPreferences *)self->_preferences dns_symptoms_interrogation_sample_count];
      v22 = [(RecommendationPreferences *)self->_preferences dns_symptoms_trap_evaluated_at_sample];
      v54 = [(RecommendationPreferences *)self->_preferences dns_symptoms_trap_evaluated_at_sample];
      v23 = v22 - 1;
    }

    else
    {
      v24 = [(RecommendationEngine *)self->_recommendationEngine preferences];
      v60 = [v24 dps_interrogation_sample_count];

      v54 = 0;
      v23 = 1;
    }

    v59 = v23;
    v25 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v115 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]";
      v116 = 1024;
      v117 = 4197;
      v118 = 2048;
      *v119 = v60;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPS: interrogationCount: %lu", buf, 0x1Cu);
    }

    if (v60)
    {
      v26 = 0;
      for (i = 0; i < v60; v26 = ++i)
      {
        v28 = dispatch_semaphore_create(0);
        if (!self->_dnsStudyInProgress)
        {
          goto LABEL_28;
        }

        if (i && v59 >= v26)
        {
          v29 = [(RecommendationPreferences *)self->_preferences dns_symptoms_duration_between_samples_before_trap];
        }

        else if (v54 == v26)
        {
          v29 = [(RecommendationPreferences *)self->_preferences dns_symptoms_duration_between_samples_during_recovery];
        }

        else
        {
          if (v54 + 1 == v26)
          {
            v37 = [(RecommendationPreferences *)self->_preferences dns_symptoms_duration_between_samples_during_recovery];
            v21 = v37 - [(RecommendationPreferences *)self->_preferences dns_symptoms_duration_between_samples_after_trap];
            goto LABEL_25;
          }

          if (v54 >= v26)
          {
            goto LABEL_25;
          }

          v29 = [(RecommendationPreferences *)self->_preferences dns_symptoms_duration_between_samples_after_trap];
        }

        v21 = v29;
LABEL_25:
        v30 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446978;
          v115 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]";
          v116 = 1024;
          v117 = 4213;
          v118 = 1024;
          *v119 = i;
          *&v119[4] = 2048;
          *&v119[6] = v21;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DNS-Failure-Recovery:: scheduling study Instance %d (will start after:%lu)", buf, 0x22u);
        }

LABEL_28:
        v31 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446978;
          v115 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]";
          v116 = 1024;
          v117 = 4215;
          v118 = 1024;
          *v119 = i;
          *&v119[4] = 2048;
          *&v119[6] = v21;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPS: sample:%u durationBetweenSamples: %lu", buf, 0x22u);
        }

        v32 = dispatch_time(0, 1000000 * v21);
        v33 = self->_dpsReadWriteSerialQueue;
        v78[0] = _NSConcreteStackBlock;
        v78[1] = 3221225472;
        v78[2] = sub_100072034;
        v78[3] = &unk_1000EE250;
        v88 = i;
        v78[4] = self;
        v81 = v89;
        v82 = v91;
        v85 = v59;
        v86 = v60;
        v87 = 4;
        v79 = v56;
        v83 = v98;
        v34 = v28;
        v80 = v34;
        v84 = &v108;
        dispatch_after(v32, v33, v78);
        v35 = dispatch_time(0, 20000000000);
        dispatch_semaphore_wait(v34, v35);
        v36 = self->_dpsReadWriteSerialQueue;
        v69[0] = _NSConcreteStackBlock;
        v69[1] = 3221225472;
        v69[2] = sub_1000733A8;
        v69[3] = &unk_1000EE2A0;
        v72 = &v108;
        v69[4] = self;
        v76 = i;
        v70 = v57;
        v73 = v89;
        v74 = v106;
        v71 = v58;
        v75 = v91;
        v77 = v55;
        dispatch_async(v36, v69);

        if (v60 - 1 == v26)
        {
          v38 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v115 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]";
            v116 = 1024;
            v117 = 4553;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:kDatapathInterrogationCountMax hit", buf, 0x12u);
          }

          v39 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v115 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]";
            v116 = 1024;
            v117 = 4554;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:_dpsCurrentlyGatheringConsecutiveSamples FALSE", buf, 0x12u);
          }

          self->_dpsCurrentlyGatheringConsecutiveSamples = 0;
          break;
        }
      }
    }

    v40 = [(WAEngine *)self engineQ];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_100074FF8;
    v61[3] = &unk_1000EE2F0;
    v64 = &v108;
    v61[4] = self;
    v67 = v60;
    v62 = v56;
    v65 = &v100;
    v68 = 4;
    v66 = v106;
    v41 = v51;
    v63 = v41;
    dispatch_group_notify(v49, v40, v61);

    _Block_object_dispose(v89, 8);
    _Block_object_dispose(v91, 8);

    if (a3 == 1)
    {
      v42 = [(RecommendationEngine *)self->_recommendationEngine preferences];
      v43 = dispatch_time(0, 1000000000 * [v42 dps_report_sent_after] + 5000000000);
      dispatch_semaphore_wait(v41, v43);

      v44 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v115 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]";
        v116 = 1024;
        v117 = 4740;
        v45 = "%{public}s::%d:unblocking is complete... returning";
LABEL_47:
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, v45, buf, 0x12u);
      }
    }

    else
    {
      v44 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v115 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]";
        v116 = 1024;
        v117 = 4742;
        v45 = "%{public}s::%d:returning immediatley";
        goto LABEL_47;
      }
    }
  }

  else
  {
    v46 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v115 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]";
      v116 = 1024;
      v117 = 4159;
      v118 = 2112;
      *v119 = @"DPSR";
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%{public}s::%d:No model class found for key: %@. This is a CRITICAL error", buf, 0x1Cu);
    }

    v120 = NSLocalizedFailureReasonErrorKey;
    v121 = @"WAErrorCodeNotRegistered";
    v44 = [NSDictionary dictionaryWithObjects:&v121 forKeys:&v120 count:1];
    v47 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v44];
    v48 = v101[5];
    v101[5] = v47;

    v57 = 0;
  }

  (*(v58 + 2))(v58, v109[5], v101[5]);
  _Block_object_dispose(v98, 8);

  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(v106, 8);

  _Block_object_dispose(&v108, 8);
}

- (void)_triggerDPSStudy:(int64_t)a3 forProcessToken:(id)a4 waMessage:(id)a5 andReply:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v109 = dispatch_semaphore_create(0);
  v13 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    dpsStudyInProgress = self->_dpsStudyInProgress;
    *buf = 136446722;
    v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
    v120 = 1024;
    v121 = 4762;
    v122 = 1024;
    LODWORD(v123) = dpsStudyInProgress;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:_dpsStudyInProgress is %d", buf, 0x18u);
  }

  v15 = [v11 key];
  v16 = [v15 isEqualToString:@"DPSN"];

  if (!v16)
  {
    v18 = 0;
    goto LABEL_65;
  }

  v17 = +[WAUtil getAWDTimestamp];
  v18 = !self->_dpsStudyInProgress;
  if (self->_dpsStudyInProgress)
  {
    dpsCurrentlyGatheringConsecutiveSamples = self->_dpsCurrentlyGatheringConsecutiveSamples;
    v20 = WALogCategoryDefaultHandle();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (dpsCurrentlyGatheringConsecutiveSamples)
    {
      if (v21)
      {
        *buf = 136446466;
        v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
        v120 = 1024;
        v121 = 4835;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Not adding dpsStatsContainer while _dpsCurrentlyGatheringConsecutiveSamples", buf, 0x12u);
      }

      v22 = v10;
    }

    else
    {
      if (v21)
      {
        *buf = 136446466;
        v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
        v120 = 1024;
        v121 = 4824;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Sampling another dpsStatsContainer", buf, 0x12u);
      }

      v115[0] = _NSConcreteStackBlock;
      v115[1] = 3221225472;
      v115[2] = sub_100078B58;
      v115[3] = &unk_1000EE340;
      v115[4] = self;
      v22 = v10;
      [(WAEngine *)self _getNewMessageForKey:@"DPSCS" groupType:4 forProcessToken:v10 shouldCheckForPrePopulation:1 andReply:v115];
    }
  }

  else
  {
    v23 = v17;
    [(WAEngine *)self updateDriverType];
    if (self->_slowWiFiStudyInProgress)
    {
      v24 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
        v120 = 1024;
        v121 = 4770;
        v25 = "%{public}s::%d:Got Stall Notification when slowWiFiStudyInProgress, exiting";
        v26 = v24;
        v27 = OS_LOG_TYPE_DEBUG;
LABEL_109:
        _os_log_impl(&_mh_execute_header, v26, v27, v25, buf, 0x12u);
        goto LABEL_110;
      }

      goto LABEL_110;
    }

    v28 = [v11 fieldForKey:@"DPSN_symptom"];
    v29 = [v28 int32Value];

    v107 = v29;
    v108 = a3;
    if (v29)
    {
      v30 = [v11 fieldForKey:@"DPSN_symptom"];
      v31 = [v30 int32Value];

      v32 = WALogCategoryDefaultHandle();
      v24 = v32;
      if (v31 != 4)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v105 = [v11 fieldForKey:@"DPSN_symptom"];
          v106 = [v105 int32Value];
          *buf = 136446722;
          v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
          v120 = 1024;
          v121 = 4796;
          v122 = 1024;
          LODWORD(v123) = v106;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Got Stall Notification for symptom:%d when not currently in study, so ignore..", buf, 0x18u);
        }

        goto LABEL_110;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
        v120 = 1024;
        v121 = 4780;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DNS Study triggered by Symptoms DNS trigger", buf, 0x12u);
      }

      *&self->_dpsNotificationDuringDnsStudy = 0;
      self->_dnsStudyInProgress = 1;
      v33 = os_transaction_create();
      v34 = +[WAActivityManager sharedActivityManager];
      [v34 osTransactionCreate:"com.apple.wifianalytics.dnsStudyTransaction" transaction:v33];

      [(WAEngine *)self setDnsStudyTransaction:v33];
      [(WAEngine *)self clearDnsStudyVariables];
      dnsStudyQueue = self->_dnsStudyQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100078ACC;
      block[3] = &unk_1000ED880;
      block[4] = self;
      dispatch_sync(dnsStudyQueue, block);
    }

    else
    {
      v36 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
        v120 = 1024;
        v121 = 4777;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPS Study triggered by stall", buf, 0x12u);
      }
    }

    v37 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
      v120 = 1024;
      v121 = 4800;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Got Stall Notification when not currently in study, kicking off DPS Study", buf, 0x12u);
    }

    self->_dpsStudyInProgress = 1;
    v38 = os_transaction_create();
    v39 = +[WAActivityManager sharedActivityManager];
    [v39 osTransactionCreate:"com.apple.wifianalytics.dpsStudyTransaction" transaction:v38];

    v40 = v38;
    [(WAEngine *)self setDpsStudyTransaction:v40];

    self->_dpsAction = 0;
    v41 = [v11 fieldForKey:@"DPSN_timestamp"];
    self->_dpsNotificationTimeInSeconds = [v41 uint64Value] / 0x3E8;

    v42 = [v11 fieldForKey:@"DPSN_cca"];
    self->_dpsNotificationCCA = [v42 uint32Value];

    v43 = [v11 fieldForKey:@"DPSN_isNANEnabled"];
    self->_isNANEnabled = [v43 BOOLValue];

    v44 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = "Disabled";
      isNANEnabled = self->_isNANEnabled;
      v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
      *buf = 136446722;
      if (isNANEnabled)
      {
        v45 = "Enabled";
      }

      v120 = 1024;
      v121 = 4811;
      v122 = 2080;
      v123 = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPS: NAN Status:%s", buf, 0x1Cu);
    }

    v22 = v10;

    a3 = v108;
    if (!v107)
    {
      peerDiagnosticsStudyQueue = self->_peerDiagnosticsStudyQueue;
      v116[0] = _NSConcreteStackBlock;
      v116[1] = 3221225472;
      v116[2] = sub_100078B10;
      v116[3] = &unk_1000EE318;
      v116[4] = self;
      v116[5] = 1;
      dispatch_async(peerDiagnosticsStudyQueue, v116);
    }

    v48 = [v11 fieldForKey:@"DPSN_facetimeCallInProgress"];
    self->_isCriticalAppInUse = [v48 BOOLValue];

    v49 = +[NSDate date];
    [(NSMutableDictionary *)self->_studyTimeStamps setObject:v49 forKeyedSubscript:@"start"];

    v50 = [v11 fieldForKey:@"DPSN_timestamp"];
    [v50 setUint64Value:v23];
  }

  v51 = [v11 fieldForKey:@"DPSN_symptom"];
  if ([v51 int32Value] == 2)
  {
  }

  else
  {
    v52 = [v11 fieldForKey:@"DPSN_symptom"];
    v53 = [v52 int32Value];

    if (v53 != 3)
    {
      goto LABEL_37;
    }
  }

  self->_dpsAction |= 0x20u;
LABEL_37:
  v54 = [v11 fieldForKey:@"DPSN_symptom"];
  if ([v54 int32Value] == 2)
  {
    v55 = [(NSMutableDictionary *)self->_studyTimeStamps objectForKeyedSubscript:@"userToggle"];

    if (v55)
    {
      goto LABEL_41;
    }

    v54 = +[NSDate date];
    [(NSMutableDictionary *)self->_studyTimeStamps setObject:v54 forKeyedSubscript:@"userToggle"];
  }

LABEL_41:
  v56 = [v11 fieldForKey:@"DPSN_symptom"];
  if ([v56 int32Value] == 2)
  {
    v57 = [(NSMutableDictionary *)self->_studyTimeStamps objectForKeyedSubscript:@"decisionInstance"];
    if (!v57)
    {
      v104 = [(NSMutableDictionary *)self->_studyTimeStamps objectForKeyedSubscript:@"UserToggleBeforeDecision"];

      if (!v104)
      {
        [(NSMutableDictionary *)self->_studyTimeStamps setObject:&__kCFBooleanTrue forKeyedSubscript:@"UserToggleBeforeDecision"];
      }

      goto LABEL_45;
    }
  }

LABEL_45:
  v58 = [v11 fieldForKey:@"DPSN_symptom"];
  if ([v58 int32Value] == 2 && (-[NSMutableDictionary objectForKeyedSubscript:](self->_studyTimeStamps, "objectForKeyedSubscript:", @"decisionInstance"), (v59 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v60 = v59;
    v61 = [(NSMutableDictionary *)self->_studyTimeStamps objectForKeyedSubscript:@"UserToggleBeforeDecision"];

    if (!v61)
    {
      [(NSMutableDictionary *)self->_studyTimeStamps setObject:&__kCFBooleanTrue forKeyedSubscript:@"UserToggleBeforeDecision"];
    }
  }

  else
  {
  }

  v62 = [v11 fieldForKey:@"DPSN_symptom"];
  if ([v62 int32Value] == 3)
  {
    v63 = [(NSMutableDictionary *)self->_studyTimeStamps objectForKeyedSubscript:@"decisionInstance"];

    if (!v63)
    {
      [(NSMutableDictionary *)self->_studyTimeStamps setObject:&__kCFBooleanTrue forKeyedSubscript:@"LinkUpBeforeDecision"];
    }
  }

  else
  {
  }

  v64 = [v11 fieldForKey:@"DPSN_symptom"];
  if ([v64 int32Value] == 3)
  {
    v65 = [(NSMutableDictionary *)self->_studyTimeStamps objectForKeyedSubscript:@"decisionInstance"];

    v10 = v22;
    if (v65)
    {
      [(NSMutableDictionary *)self->_studyTimeStamps setObject:&__kCFBooleanTrue forKeyedSubscript:@"LinkUpAfterDecision"];
    }
  }

  else
  {

    v10 = v22;
  }

  v66 = [v11 fieldForKey:@"DPSN_symptom"];
  if ([v66 int32Value])
  {
  }

  else
  {
    dnsStudyInProgress = self->_dnsStudyInProgress;

    if (dnsStudyInProgress)
    {
      self->_dpsNotificationDuringDnsStudy = 1;
    }
  }

  v68 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
    v120 = 1024;
    v121 = 4872;
    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding DPSR_stallNotifications", buf, 0x12u);
  }

  [(NSMutableArray *)self->_dpsnToAppend addObject:v11];
LABEL_65:
  if (!self->_dpsStudyInProgress)
  {
    v24 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v76 = [v11 key];
      v77 = self->_dpsStudyInProgress;
      *buf = 136446978;
      v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
      v120 = 1024;
      v121 = 4877;
      v122 = 2112;
      v123 = v76;
      v124 = 1024;
      LODWORD(v125) = v77;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Dropping incomming key %@ because _dpsStudyInProgress is %d", buf, 0x22u);
    }

    goto LABEL_110;
  }

  v69 = [v11 key];
  v70 = [v69 isEqualToString:@"DPSAPS"];

  if (v70)
  {
    v71 = [v11 fieldForKey:@"DPSAPS_timestamp"];
    [v71 setUint64Value:{+[WAUtil getAWDTimestamp](WAUtil, "getAWDTimestamp")}];

    v72 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
      v120 = 1024;
      v121 = 4884;
      v122 = 2112;
      v123 = v11;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding DPSR_probeResults %@", buf, 0x1Cu);
    }

    [(NSMutableArray *)self->_dpsapToAppend addObject:v11];
    v73 = self->_dpsCurrentlyGatheringConsecutiveSamples;
    v74 = WALogCategoryDefaultHandle();
    v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);
    if (v73)
    {
      if (v75)
      {
        *buf = 136446466;
        v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
        v120 = 1024;
        v121 = 4898;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Not adding dpsStatsContainer while _dpsCurrentlyGatheringConsecutiveSamples", buf, 0x12u);
      }
    }

    else
    {
      if (v75)
      {
        *buf = 136446466;
        v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
        v120 = 1024;
        v121 = 4888;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Sampling another dpsStatsContainer", buf, 0x12u);
      }

      v114[0] = _NSConcreteStackBlock;
      v114[1] = 3221225472;
      v114[2] = sub_100078CA8;
      v114[3] = &unk_1000EE340;
      v114[4] = self;
      [(WAEngine *)self _getNewMessageForKey:@"DPSCS" groupType:4 forProcessToken:v10 shouldCheckForPrePopulation:1 andReply:v114];
    }
  }

  v78 = [v11 key];
  v79 = [v78 isEqualToString:@"WFAAWDWADAAD"];

  if (v79)
  {
    v80 = [v11 fieldForKey:@"WFAAWDWADAAD_timestamp"];
    [v80 setUint64Value:{+[WAUtil getAWDTimestamp](WAUtil, "getAWDTimestamp")}];

    v81 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
      v120 = 1024;
      v121 = 4905;
      v122 = 2112;
      v123 = v11;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding DPSE_associationChanges %@", buf, 0x1Cu);
    }

    [(NSMutableArray *)self->_assocDiffToAppend addObject:v11];
    v82 = [v11 fieldForKey:@"WFAAWDWADAAD_eventType"];
    if ([v82 int32Value]== 5)
    {
      v83 = [(NSMutableDictionary *)self->_studyTimeStamps objectForKeyedSubscript:@"decisionInstance"];
      if (v83)
      {
        v84 = v83;
        v85 = [(NSMutableDictionary *)self->_studyTimeStamps objectForKeyedSubscript:@"IPConfiguredEventTimeStamp"];

        if (v85)
        {
          goto LABEL_87;
        }

        v86 = +[NSDate date];
        [(NSMutableDictionary *)self->_studyTimeStamps setObject:v86 forKeyedSubscript:@"IPConfiguredEventTimeStamp"];

        v87 = [v11 fieldForKey:@"WFAAWDWADAAD_additionalInfo"];
        v88 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v87 uint32Value]);
        [(NSMutableDictionary *)self->_studyTimeStamps setObject:v88 forKeyedSubscript:@"IPAddressTypeOnInterface"];

        v82 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          v89 = [(NSMutableDictionary *)self->_studyTimeStamps objectForKeyedSubscript:@"IPConfiguredEventTimeStamp"];
          v90 = [(NSMutableDictionary *)self->_studyTimeStamps objectForKeyedSubscript:@"IPAddressTypeOnInterface"];
          *buf = 136446978;
          v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
          v120 = 1024;
          v121 = 4913;
          v122 = 2112;
          v123 = v89;
          v124 = 2112;
          v125 = v90;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Got IPConfigured Event @%@ addressType:%@ ", buf, 0x26u);
        }
      }
    }

LABEL_87:
    v91 = self->_dpsCurrentlyGatheringConsecutiveSamples;
    v92 = WALogCategoryDefaultHandle();
    v93 = os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT);
    if (v91)
    {
      if (v93)
      {
        *buf = 136446466;
        v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
        v120 = 1024;
        v121 = 4927;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Not adding dpsStatsContainer while _dpsCurrentlyGatheringConsecutiveSamples", buf, 0x12u);
      }
    }

    else
    {
      if (v93)
      {
        *buf = 136446466;
        v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
        v120 = 1024;
        v121 = 4917;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Sampling another dpsStatsContainer", buf, 0x12u);
      }

      v113[0] = _NSConcreteStackBlock;
      v113[1] = 3221225472;
      v113[2] = sub_100078DC8;
      v113[3] = &unk_1000EE340;
      v113[4] = self;
      [(WAEngine *)self _getNewMessageForKey:@"DPSCS" groupType:4 forProcessToken:v10 shouldCheckForPrePopulation:1 andReply:v113];
    }
  }

  v94 = [v11 key];
  v95 = [v94 isEqualToString:@"WFAAWDWAAAPI"];

  if (v95)
  {
    v96 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
      v120 = 1024;
      v121 = 4932;
      v122 = 2112;
      v123 = v11;
      _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding DPSE_accessPointInfo %@", buf, 0x1Cu);
    }

    [(NSMutableArray *)self->_accessPointInfoToAppend addObject:v11];
  }

  v97 = [v11 key];
  v98 = [v97 isEqualToString:@"USBEN"];

  if (v98)
  {
    v99 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
      v120 = 1024;
      v121 = 4937;
      v122 = 2112;
      v123 = v11;
      _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding DPSR_usbEvent %@", buf, 0x1Cu);
    }

    [(NSMutableArray *)self->_usbEventNotificationToAppend addObject:v11];
  }

  if (v18)
  {
    studyQueue = self->_studyQueue;
    v110[0] = _NSConcreteStackBlock;
    v110[1] = 3221225472;
    v110[2] = sub_100078EE8;
    v110[3] = &unk_1000EE368;
    v110[4] = self;
    v111 = v10;
    v101 = v109;
    v112 = v101;
    dispatch_async(studyQueue, v110);

    if (a3 == 1)
    {
      v102 = [(RecommendationEngine *)self->_recommendationEngine preferences];
      v103 = dispatch_time(0, 1000000000 * [v102 dps_report_sent_after] + 5000000000);
      dispatch_semaphore_wait(v101, v103);

      v24 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
        v120 = 1024;
        v121 = 4954;
        v25 = "%{public}s::%d:unblocking is complete... returning";
LABEL_108:
        v26 = v24;
        v27 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_109;
      }
    }

    else
    {
      v24 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v119 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]";
        v120 = 1024;
        v121 = 4956;
        v25 = "%{public}s::%d:returning immediatley";
        goto LABEL_108;
      }
    }

LABEL_110:
  }

  (*(v12 + 2))(v12, 0, 0);
}

- (BOOL)isInternalScenario
{
  sub_1000548E8();
  if (objc_opt_class())
  {
    v3 = [(WAEngine *)self getW5Client];
    v9 = 0;
    v4 = [v3 queryDebugConfigurationForPeer:0 error:&v9];
    v5 = v9;
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v11 = "[WAEngine isInternalScenario]";
      v12 = 1024;
      v13 = 4971;
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Logging:: %@ \n error:%@", buf, 0x26u);
    }

    v7 = v4 && [v4 megaWiFiProfile] == 1 || self->_isInternalInstall;
  }

  else
  {
    return 0;
  }

  return v7;
}

- (void)triggerPeerDiagnosticsStudy:(unint64_t)a3 symptomsDnsStats:(id)a4
{
  v6 = a4;
  v7 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "[WAEngine triggerPeerDiagnosticsStudy:symptomsDnsStats:]";
    *&buf[12] = 1024;
    *&buf[14] = 4978;
    *&buf[18] = 1024;
    *&buf[20] = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiagnostics: triggerPeerDiagnosticsStudy with type:%d", buf, 0x18u);
  }

  v8 = [(WAEngine *)self isInternalScenario];
  if (a3)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = dispatch_semaphore_create(0);
    v11 = os_transaction_create();
    v12 = +[WAActivityManager sharedActivityManager];
    [v12 osTransactionCreate:"com.apple.wifianalytics.triggerPeerDiagnosticsStudy" transaction:v11];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v56 = sub_10005CFFC;
    v57 = sub_10005D00C;
    v58 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = sub_10005CFFC;
    v46 = sub_10005D00C;
    v47 = 0;
    if ([(WAEngine *)self isWiFiAssociatedToNetwork])
    {
      v13 = [(WAEngine *)self _DPSQuickRecoveryEngineObj];
      v14 = v13;
      if (v13)
      {
        if ([v13 isPeerDiagnosticsTriggerAllowed:a3])
        {
          sub_100079974();
          if (objc_opt_class())
          {
            sub_1000548E8();
            if (objc_opt_class())
            {
              v15 = [(WAEngine *)self getW5Client];
              if (v15)
              {
                v16 = [sub_100079974() requestWithTestID:60 configuration:0];
                v54 = v16;
                v17 = [NSArray arrayWithObjects:&v54 count:1];

                v38[0] = _NSConcreteStackBlock;
                v38[1] = 3221225472;
                v38[2] = sub_100079A54;
                v38[3] = &unk_1000EE390;
                v40 = buf;
                v41 = &v42;
                v39 = v10;
                v18 = [v15 runDiagnostics:v17 configuration:0 update:0 reply:v38];
              }

              v19 = dispatch_time(0, 6000000000);
              dispatch_semaphore_wait(v10, v19);
              if (!*(*&buf[8] + 40))
              {
                v20 = WALogCategoryDefaultHandle();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  v21 = v43[5];
                  *v48 = 136446722;
                  v49 = "[WAEngine triggerPeerDiagnosticsStudy:symptomsDnsStats:]";
                  v50 = 1024;
                  v51 = 5011;
                  v52 = 2112;
                  v53 = v21;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d:PeerDiagnostics: Data collection failed with err:%@", v48, 0x1Cu);
                }
              }
            }
          }
        }
      }

      if (a3)
      {
        goto LABEL_35;
      }

      v22 = [v6 fieldForKey:@"DPSR_dpsEpiloge"];
      v23 = [v22 subMessageValue];
      v24 = [v23 fieldForKey:@"DPSE_symptomsDnsStats"];
      v25 = [v24 subMessageValue];
      LODWORD(v37) = self->_cumulativeAverageCcaSinceStudyStart;
      v26 = [v14 recommendSymptomsDpsRecovery:0 symptomsDnsStats:v25 awdlState:self->_isAWDLActivitySuspected currentSymptomsCondition:self->_isPoorSymptomsDnsConditions isLANPingSuccessful:self->_isGatewayReachable appUsage:self->_isCriticalAppInUse averageCCA:v37 driverType:self->_driverType];

      v27 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];
      v28 = [(WAEngine *)self infraInterfaceName];
      v29 = [v27 objectForKeyedSubscript:v28];
      LODWORD(v24) = v29 == 0;

      if (v24)
      {
        [(WAEngine *)self queryInfraInterfaceInstanceAndChip];
      }

      [(WAEngine *)self _persist];
      v30 = WALogCategoryDefaultHandle();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (v26 == 2)
      {
        if (v31)
        {
          *v48 = 136446466;
          v49 = "[WAEngine triggerPeerDiagnosticsStudy:symptomsDnsStats:]";
          v50 = 1024;
          v51 = 5035;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiagnostics: Triggering Reassoc for symptoms-dps", v48, 0x12u);
        }

        self->_dpsAction |= 0x80u;
        v30 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];
        v34 = [(WAEngine *)self infraInterfaceName];
        v35 = [v30 objectForKeyedSubscript:v34];
        [v35 triggerReassociation:@"DNSFailureRecovery-Reassoc-Only"];
      }

      else if (v26 == 1)
      {
        if (v31)
        {
          *v48 = 136446466;
          v49 = "[WAEngine triggerPeerDiagnosticsStudy:symptomsDnsStats:]";
          v50 = 1024;
          v51 = 5031;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiagnostics: Triggering Trap for symptoms-dps", v48, 0x12u);
        }

        self->_dpsAction |= 0x40u;
        v30 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];
        v32 = [(WAEngine *)self infraInterfaceName];
        v33 = [v30 objectForKeyedSubscript:v32];
        [v33 triggerDpsReset:@"TrapOnDNSSymptoms" metaData:0];
      }

      else if (v31)
      {
        *v48 = 136446466;
        v49 = "[WAEngine triggerPeerDiagnosticsStudy:symptomsDnsStats:]";
        v50 = 1024;
        v51 = 5039;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiagnostics: No Recovery Action recommended for symptoms-dps", v48, 0x12u);
      }
    }

    else
    {
      v30 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *v48 = 136446466;
        v49 = "[WAEngine triggerPeerDiagnosticsStudy:symptomsDnsStats:]";
        v50 = 1024;
        v51 = 4991;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}s::%d:WiFi disassocited during study so not continuing...", v48, 0x12u);
      }

      v14 = 0;
    }

LABEL_35:
    v36 = +[WAActivityManager sharedActivityManager];
    [v36 osTransactionComplete:v11];

    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(buf, 8);

    goto LABEL_36;
  }

  v10 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[WAEngine triggerPeerDiagnosticsStudy:symptomsDnsStats:]";
    *&buf[12] = 1024;
    *&buf[14] = 4980;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiagnostics: peerDiagnosticsStudy disabled", buf, 0x12u);
  }

LABEL_36:
}

- (void)gatherConsecutiveLinkQualitySamples:(int64_t)a3 forProcessToken:(id)a4 andReply:(id)a5
{
  v8 = a4;
  v44 = a5;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = sub_10005CFFC;
  v78 = sub_10005D00C;
  v79 = 0;
  group = dispatch_group_create();
  v43 = dispatch_semaphore_create(0);
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = sub_10005CFFC;
  v72 = sub_10005D00C;
  v73 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_10005CFFC;
  v66 = sub_10005D00C;
  v67 = 0;
  v46 = v8;
  v9 = [(WAEngine *)self _cachedModelObjectsForProcess:v8 groupType:4 key:@"SWFR"];
  v10 = v69[5];
  v69[5] = v9;

  v11 = [WAUtil rotateUUIDsForMessage:v69[5]];
  v12 = v69[5];
  if (v12)
  {
    v13 = [v12 fieldForKey:@"SWFR_timestamp"];
    [v13 setUint64Value:{+[WAUtil getAWDTimestamp](WAUtil, "getAWDTimestamp")}];

    dispatch_group_enter(group);
    v14 = [(RecommendationEngine *)self->_recommendationEngine preferences];
    v15 = dispatch_time(0, 1000000000 * [v14 slow_wifi_report_sent_after]);
    dpsReadWriteSerialQueue = self->_dpsReadWriteSerialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007A328;
    block[3] = &unk_1000ED880;
    v41 = group;
    v61 = v41;
    dispatch_after(v15, dpsReadWriteSerialQueue, block);

    for (i = 0; ; ++i)
    {
      v18 = [(RecommendationEngine *)self->_recommendationEngine preferences];
      v19 = [v18 slow_wifi_interrogation_sample_count] > i;

      if (!v19)
      {
        break;
      }

      v20 = objc_autoreleasePoolPush();
      v21 = dispatch_semaphore_create(0);
      if (i)
      {
        v5 = [(RecommendationEngine *)self->_recommendationEngine preferences];
        v22 = 1000000 * [v5 slow_wifi_duration_between_samples];
      }

      else
      {
        v22 = 0;
      }

      v23 = dispatch_time(0, v22);
      v24 = self->_dpsReadWriteSerialQueue;
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_10007A3EC;
      v54[3] = &unk_1000EE430;
      v54[4] = self;
      v59 = 4;
      v55 = v46;
      v57 = &v74;
      v25 = v21;
      v56 = v25;
      v58 = &v68;
      dispatch_after(v23, v24, v54);
      if (i)
      {
      }

      v26 = [(RecommendationEngine *)self->_recommendationEngine preferences];
      v27 = [v26 slow_wifi_interrogation_sample_count] - 1 == i;

      if (v27)
      {
        v28 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v83 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]";
          v84 = 1024;
          v85 = 5166;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:slow_wifi_interrogation_sample_count hit", buf, 0x12u);
        }
      }

      v29 = dispatch_time(0, 20000000000);
      dispatch_semaphore_wait(v25, v29);

      objc_autoreleasePoolPop(v20);
    }

    v30 = [(WAEngine *)self engineQ];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10007B1D4;
    v47[3] = &unk_1000EE458;
    v47[4] = self;
    v50 = &v68;
    v48 = v46;
    v51 = &v62;
    v52 = &v74;
    v53 = 4;
    v31 = v43;
    v49 = v31;
    dispatch_group_notify(v41, v30, v47);

    if (a3 == 1)
    {
      v32 = [(RecommendationEngine *)self->_recommendationEngine preferences];
      v33 = dispatch_time(0, 1000000000 * [v32 slow_wifi_report_sent_after] + 5000000000);
      dispatch_semaphore_wait(v31, v33);

      v34 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      *buf = 136446466;
      v83 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]";
      v84 = 1024;
      v85 = 5253;
      v35 = "%{public}s::%d:unblocking is complete... returning";
    }

    else
    {
      v34 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      *buf = 136446466;
      v83 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]";
      v84 = 1024;
      v85 = 5255;
      v35 = "%{public}s::%d:returning immediatley";
    }

    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 0x12u);
  }

  else
  {
    v38 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v83 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]";
      v84 = 1024;
      v85 = 5058;
      v86 = 2112;
      v87 = @"SWFR";
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%{public}s::%d:No model class found for key: %@. This is a CRITICAL error", buf, 0x1Cu);
    }

    v80 = NSLocalizedFailureReasonErrorKey;
    v81 = @"WAErrorCodeNotRegistered";
    v34 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    v39 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9009 userInfo:v34];
    v40 = v63[5];
    v63[5] = v39;
  }

LABEL_20:

  v36 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = v75[5];
    *buf = 136446722;
    v83 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]";
    v84 = 1024;
    v85 = 5259;
    v86 = 2112;
    v87 = v37;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:retErr will return %@", buf, 0x1Cu);
  }

  v44[2](v44, v69[5], v75[5]);
  _Block_object_dispose(&v62, 8);

  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v74, 8);
}

- (void)_triggerSlowWiFiStudy:(int64_t)a3 forProcessToken:(id)a4 waMessage:(id)a5 andReply:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_10005CFFC;
  v50 = sub_10005D00C;
  v51 = 0;
  v13 = dispatch_semaphore_create(0);
  v14 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 key];
    *buf = 136446722;
    v53 = "[WAEngine _triggerSlowWiFiStudy:forProcessToken:waMessage:andReply:]";
    v54 = 1024;
    v55 = 5273;
    v56 = 2112;
    v57 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Got WAMessageAWD%@ ", buf, 0x1Cu);
  }

  v16 = [v11 key];
  v17 = [v16 isEqualToString:@"WFAAWDSWFN"];

  if (v17)
  {
    v18 = [v11 fieldForKey:@"WFAAWDSWFN_timestamp"];
    [v18 setUint64Value:{+[WAUtil getAWDTimestamp](WAUtil, "getAWDTimestamp")}];

    v19 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      slowWiFiStudyInProgress = self->_slowWiFiStudyInProgress;
      *buf = 136446722;
      v53 = "[WAEngine _triggerSlowWiFiStudy:forProcessToken:waMessage:andReply:]";
      v54 = 1024;
      v55 = 5277;
      v56 = 1024;
      LODWORD(v57) = slowWiFiStudyInProgress;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:_slowWiFiStudyInProgress is %d", buf, 0x18u);
    }

    v21 = !self->_slowWiFiStudyInProgress;
    if (!self->_slowWiFiStudyInProgress)
    {
      if (self->_dnsStudyInProgress)
      {
        self->_slowWiFiNotificationDuringDnsStudy = 1;
      }

      dpsStudyInProgress = self->_dpsStudyInProgress;
      v23 = WALogCategoryDefaultHandle();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
      if (dpsStudyInProgress)
      {
        if (v24)
        {
          *buf = 136446466;
          v53 = "[WAEngine _triggerSlowWiFiStudy:forProcessToken:waMessage:andReply:]";
          v54 = 1024;
          v55 = 5285;
          v25 = "%{public}s::%d:Got Slow WiFi Notification when dpsStudyInProgress, exiting";
          v26 = v23;
          v27 = OS_LOG_TYPE_DEBUG;
LABEL_31:
          _os_log_impl(&_mh_execute_header, v26, v27, v25, buf, 0x12u);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v24)
      {
        *buf = 136446466;
        v53 = "[WAEngine _triggerSlowWiFiStudy:forProcessToken:waMessage:andReply:]";
        v54 = 1024;
        v55 = 5289;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Got Slow WiFi Notification when not currently in study, kicking off Study", buf, 0x12u);
      }

      self->_slowWiFiStudyInProgress = 1;
      v28 = os_transaction_create();
      v29 = +[WAActivityManager sharedActivityManager];
      [v29 osTransactionCreate:"com.apple.wifianalytics.slowwifiStudyTransaction" transaction:v28];

      [(WAEngine *)self setSlowwifiStudyTransaction:v28];
      peerDiagnosticsStudyQueue = self->_peerDiagnosticsStudyQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10007C800;
      block[3] = &unk_1000ED880;
      block[4] = self;
      dispatch_async(peerDiagnosticsStudyQueue, block);
    }

    v31 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v53 = "[WAEngine _triggerSlowWiFiStudy:forProcessToken:waMessage:andReply:]";
      v54 = 1024;
      v55 = 5302;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding _swfnToAppend", buf, 0x12u);
    }

    [(NSMutableArray *)self->_swfnToAppend addObject:v11];
  }

  else
  {
    v21 = 0;
  }

  if (self->_slowWiFiStudyInProgress)
  {
    v32 = [v11 key];
    v33 = [v32 isEqualToString:@"USBEN"];

    if (v33)
    {
      v34 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v53 = "[WAEngine _triggerSlowWiFiStudy:forProcessToken:waMessage:andReply:]";
        v54 = 1024;
        v55 = 5307;
        v56 = 2112;
        v57 = v11;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding _usbEvent %@", buf, 0x1Cu);
      }

      [(NSMutableArray *)self->_usbEventNotificationToAppend addObject:v11];
    }
  }

  if (v21)
  {
    studyQueue = self->_studyQueue;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10007C84C;
    v41[3] = &unk_1000EE4A8;
    v41[4] = self;
    v42 = v10;
    v44 = &v46;
    v36 = v13;
    v43 = v36;
    dispatch_async(studyQueue, v41);

    if (a3 == 1)
    {
      v37 = [(RecommendationEngine *)self->_recommendationEngine preferences];
      v38 = dispatch_time(0, 1000000000 * [v37 slow_wifi_report_sent_after] + 5000000000);
      dispatch_semaphore_wait(v36, v38);

      v23 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *buf = 136446466;
      v53 = "[WAEngine _triggerSlowWiFiStudy:forProcessToken:waMessage:andReply:]";
      v54 = 1024;
      v55 = 5327;
      v25 = "%{public}s::%d:unblocking is complete... returning";
    }

    else
    {
      v23 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *buf = 136446466;
      v53 = "[WAEngine _triggerSlowWiFiStudy:forProcessToken:waMessage:andReply:]";
      v54 = 1024;
      v55 = 5329;
      v25 = "%{public}s::%d:returning immediatley";
    }

    v26 = v23;
    v27 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_31;
  }

LABEL_33:
  v39 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = v47[5];
    *buf = 136446722;
    v53 = "[WAEngine _triggerSlowWiFiStudy:forProcessToken:waMessage:andReply:]";
    v54 = 1024;
    v55 = 5333;
    v56 = 2112;
    v57 = v40;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:gatherConsecutiveLinkQualitySamples reply err %@", buf, 0x1Cu);
  }

  v12[2](v12, 0, v47[5]);
  _Block_object_dispose(&v46, 8);
}

- (void)_triggerDatapathDiagnosticsAndCollectUpdates:(int64_t)a3 forProcessToken:(id)a4 waMessage:(id)a5 andReply:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_10005CFFC;
  v29 = sub_10005D00C;
  v30 = 0;
  if (!self->_appleCaptiveServerIP)
  {
    [(WAEngine *)self resolveAppleCaptiveServer];
  }

  v13 = [v11 key];
  if ([v13 isEqualToString:@"DPSN"])
  {
    goto LABEL_10;
  }

  v14 = [v11 key];
  if ([v14 isEqualToString:@"DPSAPS"])
  {
LABEL_9:

LABEL_10:
LABEL_11:
    v17 = v24;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10007CD1C;
    v24[3] = &unk_1000EE4D0;
    v24[5] = &v25;
    v24[4] = v12;
    [(WAEngine *)self _triggerDPSStudy:a3 forProcessToken:v10 waMessage:v11 andReply:v24];
    goto LABEL_12;
  }

  v15 = [v11 key];
  if ([v15 isEqualToString:@"WFAAWDWADAAD"])
  {
LABEL_8:

    goto LABEL_9;
  }

  v16 = [v11 key];
  if ([v16 isEqualToString:@"WFAAWDWAAAPI"])
  {

    goto LABEL_8;
  }

  v18 = [v11 key];
  v22 = [v18 isEqualToString:@"USBEN"];

  if (v22)
  {
    goto LABEL_11;
  }

  v19 = [v11 key];
  if ([v19 isEqualToString:@"WFAAWDSWFN"])
  {
  }

  else
  {
    v20 = [v11 key];
    v21 = [v20 isEqualToString:@"USBEN"];

    if (!v21)
    {
      goto LABEL_13;
    }
  }

  v17 = v23;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10007CDA8;
  v23[3] = &unk_1000EE4D0;
  v23[5] = &v25;
  v23[4] = v12;
  [(WAEngine *)self _triggerSlowWiFiStudy:a3 forProcessToken:v10 waMessage:v11 andReply:v23];
LABEL_12:

LABEL_13:
  (*(v12 + 2))(v12, 0, v26[5]);
  _Block_object_dispose(&v25, 8);
}

- (id)getNewMessageForKey:(id)a3 groupType:(int64_t)a4 forProcessWithToken:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "getNewMessageForKey", "", buf, 2u);
  }

  *buf = 0;
  v21 = buf;
  v22 = 0x3032000000;
  v23 = sub_10005CFFC;
  v24 = sub_10005D00C;
  v25 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10007D064;
  v17[3] = &unk_1000EE480;
  v19 = buf;
  v11 = dispatch_semaphore_create(0);
  v18 = v11;
  [(WAEngine *)self _getNewMessageForKey:v8 groupType:a4 forProcessToken:v9 shouldCheckForPrePopulation:0 andReply:v17];
  v12 = dispatch_time(0, 15000000000);
  dispatch_semaphore_wait(v11, v12);
  v13 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v13))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "getNewMessageForKey", "", v16, 2u);
  }

  v14 = *(v21 + 5);
  _Block_object_dispose(buf, 8);

  return v14;
}

- (void)persist
{
  engineQ = self->_engineQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007D3D0;
  block[3] = &unk_1000ED880;
  block[4] = self;
  dispatch_sync(engineQ, block);
}

- (id)_setDeviceAnalyticsConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"WA_DEVICE_ANALYTICS_PROCESSING_INTERVAL_SECS"];
    if (v6 || ([v5 objectForKeyedSubscript:@"WA_DEVICE_ANALYTICS_AGE_OUT_INTERVAL"], (v6 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v5, "objectForKeyedSubscript:", @"WA_DEVICE_ANALYTICS_CONFIG_AGE_OUT_TEST_DAYS_DIFF"), (v6 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v5, "objectForKeyedSubscript:", @"WA_DEVICE_ANALYTICS_CONFIG_DEPLOYMENT_METRIC_DAYS_DIFF"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {

LABEL_7:
      v7 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "[WAEngine _setDeviceAnalyticsConfiguration:]";
        *&buf[12] = 1024;
        *&buf[14] = 5441;
        *&buf[18] = 2112;
        *&buf[20] = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Received configuration: %@", buf, 0x1Cu);
      }

      v8 = [v5 objectForKeyedSubscript:@"WA_DEVICE_ANALYTICS_PROCESSING_INTERVAL_AT_HOUR"];
      v9 = v8;
      if (v8)
      {
        -[WAEngine setAnalyticsDeferredProcessingAtHour:](self, "setAnalyticsDeferredProcessingAtHour:", [v8 unsignedIntegerValue]);
        v10 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = [(WAEngine *)self analyticsDeferredProcessingAtHour];
          *buf = 136446722;
          *&buf[4] = "[WAEngine _setDeviceAnalyticsConfiguration:]";
          *&buf[12] = 1024;
          *&buf[14] = 5446;
          *&buf[18] = 2048;
          *&buf[20] = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Updated analyticsDeferredProcessingAtHour to %lu hours after midnight", buf, 0x1Cu);
        }
      }

      v12 = [v5 objectForKeyedSubscript:@"WA_DEVICE_ANALYTICS_PROCESSING_INTERVAL_SECS"];

      if (v12)
      {
        [v12 doubleValue];
        [(WAEngine *)self setAnalyticsDeferredProcessingTimeIntervalSecs:?];
        v13 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [(WAEngine *)self analyticsDeferredProcessingTimeIntervalSecs];
          *buf = 136446722;
          *&buf[4] = "[WAEngine _setDeviceAnalyticsConfiguration:]";
          *&buf[12] = 1024;
          *&buf[14] = 5452;
          *&buf[18] = 2048;
          *&buf[20] = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Updated analyticsDeferredProcessingTimeIntervalSecs to %2.2f seconds", buf, 0x1Cu);
        }
      }

      v15 = [v5 objectForKeyedSubscript:@"WA_DEVICE_ANALYTICS_CONFIG_AGE_OUT_TEST_DAYS_DIFF"];

      if (v15)
      {
        v16 = [v15 unsignedLongValue];
      }

      else
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v21 = [v5 objectForKeyedSubscript:@"WA_DEVICE_ANALYTICS_CONFIG_DEPLOYMENT_METRIC_DAYS_DIFF"];

      if (v21)
      {
        v22 = [v21 unsignedLongValue];
      }

      else
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v19 = [v5 objectForKeyedSubscript:@"WA_DEVICE_ANALYTICS_CONFIG_ROAM_SAMPLES"];

      if (v19)
      {
        v23 = [v19 unsignedLongValue];
      }

      else
      {
        v23 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v24 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
      *buf = v16;
      *&buf[8] = v22;
      *&buf[16] = v23;
      [v24 setPolicyHandlersConfig:buf];

      v20 = 0;
      goto LABEL_31;
    }

    v26 = [v5 objectForKeyedSubscript:@"WA_DEVICE_ANALYTICS_CONFIG_ROAM_SAMPLES"];

    if (v26)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [(WAEngine *)self setAnalyticsDeferredProcessingAtHour:3];
    [(WAEngine *)self setAnalyticsDeferredProcessingTimeIntervalSecs:86400.0];
    v17 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
    [v17 resetPolicyHandlersConfig];
  }

  v18 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    *&buf[4] = "[WAEngine _setDeviceAnalyticsConfiguration:]";
    *&buf[12] = 1024;
    *&buf[14] = 5439;
    *&buf[18] = 2048;
    *&buf[20] = 5;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:For grouptype: %ld invalid configuration", buf, 0x1Cu);
  }

  v27 = NSLocalizedFailureReasonErrorKey;
  v28 = @"WAErrorCodeLacksRequiredArgument";
  v19 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v20 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9010 userInfo:v19];
LABEL_31:

  return v20;
}

- (id)_getDeviceAnalyticsConfiguration
{
  v3 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
  v4 = v3;
  if (v3)
  {
    [v3 getPolicyHandlersConfig];
  }

  v12[0] = @"WA_DEVICE_ANALYTICS_PROCESSING_INTERVAL_AT_HOUR";
  v5 = [NSNumber numberWithDouble:[(WAEngine *)self analyticsDeferredProcessingAtHour]];
  v13[0] = v5;
  v12[1] = @"WA_DEVICE_ANALYTICS_PROCESSING_INTERVAL_SECS";
  [(WAEngine *)self analyticsDeferredProcessingTimeIntervalSecs];
  v6 = [NSNumber numberWithDouble:?];
  v13[1] = v6;
  v12[2] = @"WA_DEVICE_ANALYTICS_CONFIG_AGE_OUT_TEST_DAYS_DIFF";
  v7 = [NSNumber numberWithUnsignedInteger:0];
  v13[2] = v7;
  v12[3] = @"WA_DEVICE_ANALYTICS_CONFIG_DEPLOYMENT_METRIC_DAYS_DIFF";
  v8 = [NSNumber numberWithUnsignedInteger:0];
  v13[3] = v8;
  v12[4] = @"WA_DEVICE_ANALYTICS_CONFIG_ROAM_SAMPLES";
  v9 = [NSNumber numberWithUnsignedInteger:0];
  v13[4] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];

  return v10;
}

- (void)setValueForKeyToUserDefaults:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446466;
      v10 = "[WAEngine setValueForKeyToUserDefaults:forKey:]";
      v11 = 1024;
      v12 = 5497;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:key is nil", &v9, 0x12u);
    }

    goto LABEL_4;
  }

  v7 = +[NSUserDefaults standardUserDefaults];
  if (v7)
  {
    v8 = v7;
    [v7 setObject:v5 forKey:v6];
    [v8 synchronize];
LABEL_4:
  }
}

- (id)getValueForKeyFromUserDefaults:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 valueForKey:v3];
  }

  else
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446466;
      v9 = "[WAEngine getValueForKeyFromUserDefaults:]";
      v10 = 1024;
      v11 = 5512;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:key is nil", &v8, 0x12u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)_updateRoamPoliciesAndSummarizeAnalyticsForNetwork:(id)a3 maxAgeInDays:(unint64_t)a4
{
  cachedUsage = self->_cachedUsage;
  engineQ = self->_engineQ;
  v7 = a3;
  [WAUtil incrementValueForKey:@"AnalyticsProcessor: Summarize Analytics For Network" inMutableDict:cachedUsage onQueue:engineQ];
  v8 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
  v9 = [v8 updateRoamPoliciesAndSummarizeAnalyticsForNetwork:v7 maxAgeInDays:a4];

  return v9;
}

- (BOOL)canProcessWiFiAnalyticsMessageJSONFiles:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    LOBYTE(v6) = 0;
    goto LABEL_20;
  }

  [(WAEngine *)self analyticsDeferredProcessingTimeIntervalSecs];
  if (v5 != 0.0 && (+[WAUtil shouldProcessAnalyticsImmediately]& 1) == 0)
  {
    if ([v4 count] >= 0x32)
    {
      v7 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136446466;
        v17 = "[WAEngine canProcessWiFiAnalyticsMessageJSONFiles:]";
        v18 = 1024;
        v19 = 5551;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Unprocessed file count crossed the threshold. Should process them.", &v16, 0x12u);
      }

      LOBYTE(v6) = 1;
LABEL_19:

      goto LABEL_20;
    }

    v8 = +[NSDate date];
    v9 = [(WAEngine *)self getValueForKeyFromUserDefaults:@"WA_LAST_JSON_PROCESSED_DATE"];
    v10 = 0.0;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = v9;
      [v8 timeIntervalSinceDate:v7];
      v10 = v11;
      [(WAEngine *)self analyticsDeferredProcessingTimeIntervalSecs];
      if (v10 < v12)
      {
        v6 = 0;
LABEL_16:
        v13 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          [(WAEngine *)self analyticsDeferredProcessingTimeIntervalSecs];
          v16 = 136447746;
          v17 = "[WAEngine canProcessWiFiAnalyticsMessageJSONFiles:]";
          v18 = 1024;
          v19 = 5575;
          v20 = 1024;
          v21 = v6;
          v22 = 2112;
          v23 = v7;
          v24 = 2048;
          v25 = v10;
          v26 = 2048;
          v27 = v14;
          v28 = 2048;
          v29 = [v4 count];
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:canProcess: %d lastProcessedDate: %@ secondsBetween:%2.2f interval:%2.2f pendingJSONs:%lu", &v16, 0x40u);
        }

        goto LABEL_19;
      }
    }

    else
    {
      v7 = 0;
    }

    [(WAEngine *)self setValueForKeyToUserDefaults:v8 forKey:@"WA_LAST_JSON_PROCESSED_DATE"];
    v6 = 1;
    goto LABEL_16;
  }

  LOBYTE(v6) = 1;
LABEL_20:

  return v6;
}

- (void)processWiFiAnalyticsFilesInTmpDir:(BOOL)a3
{
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "processWiFiAnalyticsFilesInTmpDir", "", buf, 2u);
  }

  v4 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
  [v4 loadStoreIfNeeded];

  v5 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
  v6 = [v5 storeLoaded];

  if (v6)
  {
    v7 = [(WAEngine *)self wifianalyticsTmpDir];
    v8 = [v7 path];

    +[NSFileManager defaultManager];
    v44 = v54 = 0;
    v9 = [v44 contentsOfDirectoryAtPath:v8 error:&v54];
    v10 = v54;
    v11 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v57 = "[WAEngine processWiFiAnalyticsFilesInTmpDir:]";
      v58 = 1024;
      v59 = 5595;
      v60 = 2112;
      v61 = v8;
      v62 = 2112;
      v63 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:files at %@: %@", buf, 0x26u);
    }

    if (v10)
    {
      v14 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v57 = "[WAEngine processWiFiAnalyticsFilesInTmpDir:]";
        v58 = 1024;
        v59 = 5596;
        v60 = 2112;
        v61 = v8;
        v62 = 2112;
        v63 = v10;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to list files at %@: %@", buf, 0x26u);
      }

      v12 = 0;
    }

    else
    {
      v12 = [NSPredicate predicateWithFormat:@"SELF EndsWith '.json'"];
      v13 = [v9 filteredArrayUsingPredicate:v12];

      if (v13)
      {
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v14 = [v13 sortedArrayUsingSelector:"compare:"];
        v46 = [v14 countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (v46)
        {
          v40 = v13;
          v41 = v12;
          v10 = 0;
          v45 = *v51;
          v43 = v14;
          while (1)
          {
            v15 = 0;
            do
            {
              if (*v51 != v45)
              {
                objc_enumerationMutation(v14);
              }

              v16 = *(*(&v50 + 1) + 8 * v15);
              v17 = [v8 stringByAppendingPathComponent:v16];
              v18 = WALogCategoryDeviceStoreHandle();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446722;
                v57 = "[WAEngine processWiFiAnalyticsFilesInTmpDir:]";
                v58 = 1024;
                v59 = 5608;
                v60 = 2112;
                v61 = v17;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Reading %@", buf, 0x1Cu);
              }

              v19 = [NSData dataWithContentsOfFile:v17];
              if (v19)
              {
                v49 = v10;
                v20 = [NSJSONSerialization JSONObjectWithData:v19 options:0 error:&v49];
                v21 = v49;

                if (v21)
                {
                  v37 = WALogCategoryDeviceStoreHandle();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446722;
                    v57 = "[WAEngine processWiFiAnalyticsFilesInTmpDir:]";
                    v58 = 1024;
                    v59 = 5614;
                    v60 = 2112;
                    v61 = v17;
                    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%{public}s::%d:Malformed json from file: %@", buf, 0x1Cu);
                  }

                  v10 = v21;
                }

                else
                {
                  if (v20)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v20 = v20;
                      v22 = [v20 allKeys];
                      v23 = v22;
                      if (v22 && [v22 count] == 1)
                      {
                        v24 = [v23 objectAtIndex:0];
                        if (v24)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v25 = WALogCategoryDeviceStoreHandle();
                            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 136446978;
                              v57 = "[WAEngine processWiFiAnalyticsFilesInTmpDir:]";
                              v58 = 1024;
                              v59 = 5625;
                              v60 = 2112;
                              v61 = v17;
                              v62 = 2112;
                              v63 = v24;
                              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%@ contains %@", buf, 0x26u);
                            }

                            if ([v24 isEqualToString:@"WA_DEVICE_ANALYTICS_DATAPATH_METRIC_STREAM"])
                            {
                              v26 = [v20 objectForKeyedSubscript:v24];
                              v27 = v8;
                              v28 = v26;
                              v29 = v27;
                              v30 = [v27 stringByAppendingPathComponent:v26];

                              if (v30)
                              {
                                v31 = WALogCategoryDeviceStoreHandle();
                                if (os_signpost_enabled(v31))
                                {
                                  *buf = 0;
                                  _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "processWiFiAnalyticsMessageWAMFile", "", buf, 2u);
                                }

                                [(WAEngine *)self processWiFiAnalyticsMessageWAMFile:v30 file:v16];
                                v32 = WALogCategoryDeviceStoreHandle();
                                if (os_signpost_enabled(v32))
                                {
                                  *buf = 0;
                                  _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "processWiFiAnalyticsMessageWAMFile", "", buf, 2u);
                                }
                              }

                              v48 = 0;
                              [v44 removeItemAtPath:v30 error:&v48];
                              v33 = v48;
                              if (v33)
                              {
                                v34 = WALogCategoryDefaultHandle();
                                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 136446722;
                                  v57 = "[WAEngine processWiFiAnalyticsFilesInTmpDir:]";
                                  v58 = 1024;
                                  v59 = 5637;
                                  v60 = 2112;
                                  v61 = v30;
                                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to remove file at path: %@", buf, 0x1Cu);
                                }
                              }

                              v8 = v29;
                              goto LABEL_37;
                            }

LABEL_38:
                            v47 = 0;
                            [v44 removeItemAtPath:v17 error:&v47];
                            v10 = v47;
                            if (v10)
                            {
                              v35 = WALogCategoryDefaultHandle();
                              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 136446722;
                                v57 = "[WAEngine processWiFiAnalyticsFilesInTmpDir:]";
                                v58 = 1024;
                                v59 = 5645;
                                v60 = 2112;
                                v61 = v17;
                                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to remove file at path: %@", buf, 0x1Cu);
                              }
                            }

                            v14 = v43;
                            goto LABEL_46;
                          }
                        }

                        v33 = WALogCategoryDeviceStoreHandle();
                        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446722;
                          v57 = "[WAEngine processWiFiAnalyticsFilesInTmpDir:]";
                          v58 = 1024;
                          v59 = 5624;
                          v60 = 2112;
                          v61 = v20;
                          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}s::%d:Object for metricName not NSString %@", buf, 0x1Cu);
                        }
                      }

                      else
                      {
                        v33 = WALogCategoryDeviceStoreHandle();
                        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446722;
                          v57 = "[WAEngine processWiFiAnalyticsFilesInTmpDir:]";
                          v58 = 1024;
                          v59 = 5621;
                          v60 = 2112;
                          v61 = v20;
                          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unexpected metric dict %@", buf, 0x1Cu);
                        }

                        v24 = 0;
                      }

LABEL_37:

                      goto LABEL_38;
                    }
                  }

                  v36 = WALogCategoryDefaultHandle();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446722;
                    v57 = "[WAEngine processWiFiAnalyticsFilesInTmpDir:]";
                    v58 = 1024;
                    v59 = 5648;
                    v60 = 2112;
                    v61 = v17;
                    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}s::%d:Cannot get dict from json file: %@", buf, 0x1Cu);
                  }

                  v10 = 0;
                }
              }

              else
              {
                v20 = WALogCategoryDeviceStoreHandle();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  v57 = "[WAEngine processWiFiAnalyticsFilesInTmpDir:]";
                  v58 = 1024;
                  v59 = 5611;
                  v60 = 2112;
                  v61 = v17;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d:fileData nil: %@", buf, 0x1Cu);
                }
              }

LABEL_46:

              v15 = v15 + 1;
            }

            while (v46 != v15);
            v38 = [v14 countByEnumeratingWithState:&v50 objects:v55 count:16];
            v46 = v38;
            if (!v38)
            {
              v9 = v40;
              v12 = v41;
              goto LABEL_61;
            }
          }
        }

        v10 = 0;
        v9 = v13;
      }

      else
      {
        v14 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v57 = "[WAEngine processWiFiAnalyticsFilesInTmpDir:]";
          v58 = 1024;
          v59 = 5601;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:No files to process", buf, 0x12u);
        }

        v10 = 0;
        v9 = 0;
      }
    }
  }

  else
  {
    v14 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v57 = "[WAEngine processWiFiAnalyticsFilesInTmpDir:]";
      v58 = 1024;
      v59 = 5590;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:AnalyticsStore not ready", buf, 0x12u);
    }

    v10 = 0;
    v12 = 0;
    v9 = 0;
    v44 = 0;
    v8 = 0;
  }

LABEL_61:

  v39 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v39))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "processWiFiAnalyticsFilesInTmpDir", "", buf, 2u);
  }
}

- (void)processWiFiAnalyticsMessageWAMFile:(id)a3 file:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "processWiFiAnalyticsMessageWAMFile", "", buf, 2u);
  }

  v9 = objc_alloc_init(NSDateFormatter);
  [v9 setDateFormat:@"yyyy'-'MM'-'dd-HHmmssSSS"];
  v10 = [v7 substringFromIndex:{objc_msgSend(@"wifianalytics_", "length")}];
  v11 = [v10 substringToIndex:{objc_msgSend(@"yyyy-MM-dd-HHmmssSSS", "length")}];
  v12 = [v9 dateFromString:v11];

  v13 = objc_autoreleasePoolPush();
  v14 = [NSData dataWithContentsOfFile:v6];
  v15 = v14;
  if (v14)
  {
    engineQ = self->_engineQ;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007ED94;
    block[3] = &unk_1000EE368;
    block[4] = self;
    v20 = v14;
    v21 = v12;
    dispatch_async(engineQ, block);
  }

  else
  {
    v17 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v23 = "[WAEngine processWiFiAnalyticsMessageWAMFile:file:]";
      v24 = 1024;
      v25 = 5682;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to dataWithContentsOfFile", buf, 0x12u);
    }
  }

  objc_autoreleasePoolPop(v13);
  v18 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "processWiFiAnalyticsMessageWAMFile", "", buf, 2u);
  }
}

- (id)getDpsMetaDataString
{
  v25 = [NSMutableString stringWithString:@" - ProblemAC - "];
  dpsnToAppend = self->_dpsnToAppend;
  if (dpsnToAppend && self->_driverType == 3)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = dpsnToAppend;
    v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = *v27;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = [v12 fieldForKey:@"DPSN_symptom"];
          v14 = [v13 int32Value];

          if (!v14)
          {
            v15 = [v12 fieldForKey:@"DPSN_problemAC"];
            v16 = [v15 uint32Value];

            if (!(v6 & 1 | ((v16 & 1) == 0)))
            {
              v17 = [v12 fieldForKey:@"DPSN_txBETrId"];
              [v25 appendFormat:@" BE(trId=%d)", objc_msgSend(v17, "uint32Value")];

              v6 = 1;
            }

            if (!(v7 & 1 | ((v16 & 2) == 0)))
            {
              v18 = [v12 fieldForKey:@"DPSN_txBKTrId"];
              [v25 appendFormat:@" BK(trId=%d)", objc_msgSend(v18, "uint32Value")];

              v7 = 1;
            }

            if (!(v9 & 1 | ((v16 & 4) == 0)))
            {
              v19 = [v12 fieldForKey:@"DPSN_txVITrId"];
              [v25 appendFormat:@" VI(trId=%d)", objc_msgSend(v19, "uint32Value")];

              v9 = 1;
            }

            if (!(v8 & 1 | ((v16 & 8) == 0)))
            {
              v20 = [v12 fieldForKey:@"DPSN_txVOTrId"];
              [v25 appendFormat:@" VO(trId=%d)", objc_msgSend(v20, "uint32Value")];

              v8 = 1;
            }
          }
        }

        v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v5);
    }

    v21 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v31 = "[WAEngine getDpsMetaDataString]";
      v32 = 1024;
      v33 = 5722;
      v34 = 2112;
      v35 = v25;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:generatedString: %@\n", buf, 0x1Cu);
    }

    v22 = [v25 copy];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)clearDnsStudyVariables
{
  *&self->_cumulativeAverageCcaSinceStudyStart = 0u;
  p_cumulativeAverageCcaSinceStudyStart = &self->_cumulativeAverageCcaSinceStudyStart;
  *&self->_isAWDLActivitySuspected = 256;
  *&self->_isCaptiveServerIPResolved = 256;
  self->_isPingEnqueueFailing = 0;
  *&self->_totalLANPingSuccessBeforeTrap = 0u;
  *&self->_totalWANPingSuccessBeforeTrap = 0u;
  *&self->_totalLANPingSuccessAfterTrap = 0u;
  *&self->_totalWANPingSuccessAfterTrap = 0u;
  v3 = [(RecommendationEngine *)self->_recommendationEngine preferences];
  v4 = [v3 dns_symptoms_interrogation_sample_count];
  v5 = [*(p_cumulativeAverageCcaSinceStudyStart - 8) preferences];
  p_cumulativeAverageCcaSinceStudyStart[10] = v4 - [v5 dns_symptoms_trap_evaluated_at_sample];

  *(p_cumulativeAverageCcaSinceStudyStart + 23) = 0u;
  *(p_cumulativeAverageCcaSinceStudyStart + 21) = 0u;
  *(p_cumulativeAverageCcaSinceStudyStart + 19) = 0u;
  *(p_cumulativeAverageCcaSinceStudyStart + 17) = 0u;
  *(p_cumulativeAverageCcaSinceStudyStart + 15) = 0u;
  *(p_cumulativeAverageCcaSinceStudyStart + 13) = 0u;
  *(p_cumulativeAverageCcaSinceStudyStart + 11) = 0u;
}

- (id)__ipv4SetupConfig
{
  v3 = [(CWFInterface *)self->_corewifi networkServiceID];
  if (v3 && (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, v3, kSCEntNetIPv4)) != 0)
  {
    v5 = NetworkServiceEntity;
    v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 copy];
      CFRelease(v7);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)__IPv4StateConfig
{
  v3 = [(CWFInterface *)self->_corewifi networkServiceID];
  if (v3 && (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, v3, kSCEntNetIPv4)) != 0)
  {
    v5 = NetworkServiceEntity;
    v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 copy];
      CFRelease(v7);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)__IPv6StateConfig
{
  v3 = [(CWFInterface *)self->_corewifi networkServiceID];
  if (v3 && (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, v3, kSCEntNetIPv6)) != 0)
  {
    v5 = NetworkServiceEntity;
    v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 copy];
      CFRelease(v7);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)__dnsStateConfig
{
  v3 = [(CWFInterface *)self->_corewifi networkServiceID];
  if (v3 && (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, v3, kSCEntNetDNS)) != 0)
  {
    v5 = NetworkServiceEntity;
    v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 copy];
      CFRelease(v7);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)__dnsSetupConfig
{
  v3 = [(CWFInterface *)self->_corewifi networkServiceID];
  if (v3 && (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, v3, kSCEntNetDNS)) != 0)
  {
    v5 = NetworkServiceEntity;
    v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 copy];
      CFRelease(v7);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isUsingCustomDNSSettings
{
  v2 = [(WAEngine *)self __dnsSetupConfig];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)fetchConfiguredDnsInfo
{
  v81 = 0;
  v82 = 0;
  if ([(WAEngine *)self isUsingCustomDNSSettings])
  {
    self->_dnsServerConfigType = 2;
    v2 = [(WAEngine *)self __dnsSetupConfig];
    v3 = kSCPropNetDNSServerAddresses;
    v4 = [v2 objectForKeyedSubscript:kSCPropNetDNSServerAddresses];

    if (v4)
    {
LABEL_7:
      v46 = [v4 count];
      goto LABEL_8;
    }
  }

  else
  {
    self->_dnsServerConfigType = 1;
    v3 = kSCPropNetDNSServerAddresses;
  }

  v5 = [(WAEngine *)self __dnsStateConfig];
  v4 = [v5 objectForKeyedSubscript:v3];

  if (v4)
  {
    goto LABEL_7;
  }

  v6 = [(WAEngine *)self __ipv4SetupConfig];
  v4 = [v6 objectForKeyedSubscript:v3];

  if (v4)
  {
    goto LABEL_7;
  }

  v46 = 0;
LABEL_8:
  v48 = [(WAEngine *)self getIPv4InterfaceSubnet];
  v49 = [(WAEngine *)self getIPv4InterfaceNetwork:?];
  v47 = [(WAEngine *)self getIPv6InterfacePrefix];
  [(WAEngine *)self getIPv6InterfaceNetwork:&v81 prefixLength:?];
  v7 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "[WAEngine fetchConfiguredDnsInfo]";
    *&buf[12] = 1024;
    *&buf[14] = 5963;
    *&buf[18] = 1024;
    *&buf[20] = v49;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DNS-config: interface IPv4 Network: %08x", buf, 0x18u);
  }

  v8 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    *&buf[4] = "[WAEngine fetchConfiguredDnsInfo]";
    *&buf[12] = 1024;
    *&buf[14] = 5964;
    *&buf[18] = 1024;
    *&buf[20] = v81;
    *&buf[24] = 1024;
    *&buf[26] = HIDWORD(v81);
    *&buf[30] = 1024;
    *&buf[32] = v82;
    *&buf[36] = 1024;
    *&buf[38] = HIDWORD(v82);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DNS-config: interface IPv6 Network: %08x %08x %08x %08x", buf, 0x2Au);
  }

  v9 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "[WAEngine fetchConfiguredDnsInfo]";
    *&buf[12] = 1024;
    *&buf[14] = 5965;
    *&buf[18] = 2112;
    *&buf[20] = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DNS-config: dnsServers: %@", buf, 0x1Cu);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v4;
  v10 = [obj countByEnumeratingWithState:&v56 objects:v80 count:16];
  if (v10)
  {
    v52 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *v57;
    v15 = 0;
    *&v11 = 136447490;
    v45 = v11;
    v16 = 0;
    for (i = *v57; ; i = *v57)
    {
      if (i != v14)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v56 + 1) + 8 * v13);
      if ([(WAEngine *)self isIPv4Address:v18, v45])
      {
        v19 = [v18 componentsSeparatedByString:@"."];
        *v67 = 0;
        v20 = [v19 objectAtIndexedSubscript:0];
        if ([v20 integerValue] == 127)
        {

          goto LABEL_21;
        }

        v51 = v16;
        v22 = [v19 objectAtIndexedSubscript:0];
        if ([v22 integerValue] == 169)
        {
          [v19 objectAtIndexedSubscript:1];
          v23 = v14;
          v24 = v10;
          v25 = v12;
          v27 = v26 = v15;
          v50 = [v27 integerValue];

          v15 = v26;
          v12 = v25;
          v10 = v24;
          v14 = v23;

          if (v50 != 254)
          {
            goto LABEL_37;
          }

LABEL_21:
          ++v15;
          v16 = 1;
        }

        else
        {

LABEL_37:
          if (inet_aton([v18 UTF8String], v67))
          {
            v29 = v15;
            v30 = bswap32(*v67);
            v31 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446722;
              *&buf[4] = "[WAEngine fetchConfiguredDnsInfo]";
              *&buf[12] = 1024;
              *&buf[14] = 5979;
              *&buf[18] = 1024;
              *&buf[20] = v30;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DNS-config: IPv4 DNS address:%08x", buf, 0x18u);
            }

            v32 = v30 - 1 < 0xFFFFFFFE;
            v33 = v30 & v48;
            v34 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446722;
              *&buf[4] = "[WAEngine fetchConfiguredDnsInfo]";
              *&buf[12] = 1024;
              *&buf[14] = 5986;
              *&buf[18] = 1024;
              *&buf[20] = v33;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DNS-config: IPv4 DNS network:%08x", buf, 0x18u);
            }

            v16 = v32 | v51;

            if (v33 == v49)
            {
              v15 = v29 + 1;
            }

            else
            {
              v15 = v29;
            }
          }

          else
          {
            v16 = v51;
          }
        }

        ++v12;

        goto LABEL_62;
      }

      v79 = 0uLL;
      v55 = 0uLL;
      memset(buf, 0, 47);
      if (([v18 getCString:buf maxLength:47 encoding:4] & 1) == 0)
      {
        v28 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *v67 = 136446466;
          v68 = "[WAEngine fetchConfiguredDnsInfo]";
          v69 = 1024;
          v70 = 6001;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s::%d:DNS-config: encoding failed!", v67, 0x12u);
        }

        goto LABEL_61;
      }

      if (inet_pton(30, buf, &v55))
      {
        if (v55.u8[0] == 254 && (v55.u8[1] > 0xBFu || (v55.i8[1] & 0xC0) == 0x80) || (v21 = v55.i32[0] | v55.i32[1] | v55.i32[2]) == 0 && v55.i32[3] == 0x1000000)
        {
          ++v15;
        }

        else
        {
          if (v55.i32[3])
          {
            v35 = 0;
          }

          else
          {
            v35 = v21 == 0;
          }

          if (v35)
          {
            goto LABEL_61;
          }

          v79 = vrev32q_s8(v55);
          v36 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *v67 = v45;
            v68 = "[WAEngine fetchConfiguredDnsInfo]";
            v69 = 1024;
            v70 = 6018;
            v71 = 1024;
            v72 = v79.i32[0];
            v73 = 1024;
            v74 = v79.i32[1];
            v75 = 1024;
            v76 = v79.i32[2];
            v77 = 1024;
            v78 = v79.i32[3];
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DNS-config: IPv6 DNS address:%08x %08x %08x %08x", v67, 0x2Au);
          }

          [(WAEngine *)self convertToIPv6Network:&v79 prefixLength:v47];
          v37 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *v67 = v45;
            v68 = "[WAEngine fetchConfiguredDnsInfo]";
            v69 = 1024;
            v70 = 6020;
            v71 = 1024;
            v72 = v79.i32[0];
            v73 = 1024;
            v74 = v79.i32[1];
            v75 = 1024;
            v76 = v79.i32[2];
            v77 = 1024;
            v78 = v79.i32[3];
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DNS-config: IPv6 DNS network:%08x %08x %08x %08x", v67, 0x2Au);
          }

          if (v79.i64[0] == v81 && v79.i64[1] == v82)
          {
            ++v15;
          }
        }

        v16 = 1;
      }

LABEL_61:
      ++v52;
LABEL_62:
      if (++v13 >= v10)
      {
        v39 = [obj countByEnumeratingWithState:&v56 objects:v80 count:16];
        if (!v39)
        {
          LOBYTE(v10) = v16;
          goto LABEL_68;
        }

        v10 = v39;
        v13 = 0;
      }
    }
  }

  v52 = 0;
  v12 = 0;
  v15 = 0;
LABEL_68:

  self->_totalDnsServers = v46;
  self->_numIPv4DnsServers = v12;
  self->_numIPv6DnsServers = v52;
  self->_numLocalDnsServers = v15;
  v40 = v15;
  v41 = v46 - v15;
  self->_numRemoteDnsServers = v41;
  v42 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = "NO";
    *buf = 136448002;
    *&buf[4] = "[WAEngine fetchConfiguredDnsInfo]";
    *&buf[12] = 1024;
    if (v10)
    {
      v43 = "YES";
    }

    *&buf[14] = 6037;
    *&buf[18] = 2080;
    *&buf[20] = v43;
    *&buf[28] = 2048;
    *&buf[30] = v46;
    *&buf[38] = 2048;
    *&buf[40] = v12;
    v61 = 2048;
    v62 = v52;
    v63 = 2048;
    v64 = v40;
    v65 = 2048;
    v66 = v41;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DNS-config: validDNSConfig:%s totalDnsServers:%lu numv4DnsServers:%lu numv6DnsServers:%lu numLocalDnsServers:%lu numRemoteDnsServers:%lu", buf, 0x4Eu);
  }

  return v10 & 1;
}

- (unsigned)getIPv4InterfaceSubnet
{
  v8.s_addr = 0;
  v2 = [(WAEngine *)self IPv4SubnetMasks];
  v3 = [v2 firstObject];
  v4 = v3;
  if (v3)
  {
    v8.s_addr = 0;
    if (inet_aton([v3 UTF8String], &v8))
    {
      v5 = bswap32(v8.s_addr);
      v6 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v10 = "[WAEngine getIPv4InterfaceSubnet]";
        v11 = 1024;
        v12 = 6050;
        v13 = 1024;
        v14 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DNS-config: interface IPv4 subnet: %08x", buf, 0x18u);
      }
    }

    else
    {
      v6 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v10 = "[WAEngine getIPv4InterfaceSubnet]";
        v11 = 1024;
        v12 = 6052;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:DNS-config: interface IPv4 subnet: invalid conversion logic", buf, 0x12u);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unsigned)getIPv4InterfaceNetwork:(unsigned int)a3
{
  v10.s_addr = 0;
  v4 = [(CWFInterface *)self->_corewifi IPv4Addresses];
  v5 = [v4 firstObject];
  v6 = v5;
  if (v5)
  {
    v10.s_addr = 0;
    if (inet_aton([v5 UTF8String], &v10))
    {
      v7 = bswap32(v10.s_addr);
      v8 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v12 = "[WAEngine getIPv4InterfaceNetwork:]";
        v13 = 1024;
        v14 = 6067;
        v15 = 1024;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DNS-config: interface IPv4 Address: %08x", buf, 0x18u);
      }
    }

    else
    {
      v8 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v12 = "[WAEngine getIPv4InterfaceNetwork:]";
        v13 = 1024;
        v14 = 6069;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:DNS-config: interface IPv4 Address: invalid conversion logic", buf, 0x12u);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & a3;
}

- (unsigned)getIPv6InterfacePrefix
{
  v2 = [(WAEngine *)self IPv6PrefixLengths];
  v3 = [v2 firstObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedIntValue];
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446722;
      v9 = "[WAEngine getIPv6InterfacePrefix]";
      v10 = 1024;
      v11 = 6081;
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DNS-config: interface IPv6 prefix length: %u", &v8, 0x18u);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)convertToIPv6Network:(unsigned int *)a3 prefixLength:(unsigned int)a4
{
  if (a4)
  {
    v4 = 3;
    do
    {
      if (a4 <= 0x1F)
      {
        v5 = a3[v4];
        if (v5)
        {
          v6 = a4;
          do
          {
            v7 = v5;
            v5 >>= 1;
            a4 = v6 - 1;
            if (v7 < 2)
            {
              break;
            }

            --v6;
          }

          while (v6);
        }
      }

      else
      {
        v5 = 0;
        a4 -= 32;
      }

      a3[v4] = v5;
      v8 = v4-- != 0;
    }

    while (v8 && a4);
  }
}

- (id)IPv4SubnetMasks
{
  v2 = [(WAEngine *)self __IPv4StateConfig];
  v3 = [v2 objectForKeyedSubscript:kSCPropNetIPv4SubnetMasks];

  return v3;
}

- (id)IPv6PrefixLengths
{
  v2 = [(WAEngine *)self __IPv6StateConfig];
  v3 = [v2 objectForKeyedSubscript:kSCPropNetIPv6PrefixLength];

  return v3;
}

- (void)triggerPeerDiscovery
{
  if (![(WAEngine *)self isWiFiAssociatedToNetwork])
  {
    v3 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v9 = "[WAEngine triggerPeerDiscovery]";
      v10 = 1024;
      v11 = 6145;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:WiFi disassocited during study so not continuing...", buf, 0x12u);
    }

    goto LABEL_6;
  }

  sub_100079974();
  if (objc_opt_class())
  {
    sub_1000548E8();
    if (objc_opt_class())
    {
      v3 = [(WAEngine *)self getW5Client];
      if (v3)
      {
        v4 = [sub_100079974() requestWithTestID:62 configuration:0];
        v7 = v4;
        v5 = [NSArray arrayWithObjects:&v7 count:1];

        v6 = [v3 runDiagnostics:v5 configuration:0 update:0 reply:&stru_1000EE510];
      }

LABEL_6:
    }
  }
}

- (void)gatherDiscoveredPeerInfo:(id)a3
{
  v4 = a3;
  v41 = dispatch_semaphore_create(0);
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_10005CFFC;
  v56 = sub_10005D00C;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_10005CFFC;
  v50 = sub_10005D00C;
  v51 = 0;
  if (![(WAEngine *)self isWiFiAssociatedToNetwork])
  {
    v15 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v59 = "[WAEngine gatherDiscoveredPeerInfo:]";
      v60 = 1024;
      v61 = 6173;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:WiFi disassocited during study so not continuing...", buf, 0x12u);
    }

    goto LABEL_36;
  }

  sub_100079974();
  if (objc_opt_class())
  {
    sub_1000548E8();
    if (objc_opt_class())
    {
      v5 = [(WAEngine *)self getW5Client];
      if (v5)
      {
        v6 = [sub_100079974() requestWithTestID:61 configuration:0];
        v68 = v6;
        v7 = [NSArray arrayWithObjects:&v68 count:1];

        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_100081184;
        v42[3] = &unk_1000EE390;
        v44 = &v52;
        v45 = &v46;
        v8 = v41;
        v43 = v8;
        v9 = [v5 runDiagnostics:v7 configuration:0 update:0 reply:v42];
        v10 = dispatch_time(0, 5000000000);
        dispatch_semaphore_wait(v8, v10);
        if (!v53[5])
        {
          v11 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = v47[5];
            *buf = 136446722;
            v59 = "[WAEngine gatherDiscoveredPeerInfo:]";
            v60 = 1024;
            v61 = 6187;
            v62 = 2112;
            v63 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:PeerDiscovery: Data collection failed with err:%@", buf, 0x1Cu);
          }
        }
      }
    }
  }

  v13 = [v53[5] firstObject];
  v14 = [v13 info];
  v15 = [v14 objectForKeyedSubscript:@"PeerDevicesInfo"];

  v16 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v59 = "[WAEngine gatherDiscoveredPeerInfo:]";
    v60 = 1024;
    v61 = 6192;
    v62 = 2112;
    v63 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiscovery: parsed result:%@", buf, 0x1Cu);
  }

  if (v15)
  {
    v17 = +[NSDate date];
    v18 = [v15 allKeys];
    if ([v18 containsObject:@"Timestamp"])
    {
      v19 = [v15 valueForKey:@"Timestamp"];

      if (v19)
      {
        [v17 timeIntervalSinceDate:v19];
        v21 = (v20 / 60.0);
LABEL_19:
        v22 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447234;
          v59 = "[WAEngine gatherDiscoveredPeerInfo:]";
          v60 = 1024;
          v61 = 6201;
          v62 = 2112;
          v63 = v17;
          v64 = 2112;
          v65 = v19;
          v66 = 2048;
          v67 = v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiscovery: current_time:%@ update_time:%@ minutesBetweenDates:%ld", buf, 0x30u);
        }

        v23 = [(RecommendationEngine *)self->_recommendationEngine preferences];
        v24 = v21 < ([v23 dps_report_sent_after] / 0x3C);

        if (v24)
        {
          v25 = [v15 allKeys];
          if ([v25 containsObject:@"numberOfIOSDevices"])
          {
            v26 = [v15 valueForKey:@"numberOfIOSDevices"];
            v27 = [v26 unsignedIntValue];
          }

          else
          {
            v27 = 0;
          }

          v28 = [v15 allKeys];
          if ([v28 containsObject:@"numberOfMacOSDevices"])
          {
            v29 = [v15 valueForKey:@"numberOfMacOSDevices"];
            v30 = [v29 unsignedIntValue];
          }

          else
          {
            v30 = 0;
          }

          v31 = [v15 allKeys];
          if ([v31 containsObject:@"numberOfTVOSDevices"])
          {
            v32 = [v15 valueForKey:@"numberOfTVOSDevices"];
            v33 = [v32 unsignedIntValue];
          }

          else
          {
            v33 = 0;
          }

          v34 = [v15 allKeys];
          if ([v34 containsObject:@"numberOfWatchOSDevices"])
          {
            v35 = [v15 valueForKey:@"numberOfTVOSDevices"];
            v36 = [v35 unsignedIntValue];
          }

          else
          {
            v36 = 0;
          }

          v37 = [v4 fieldForKey:@"WFAAWDWAPDI_numPeersDiscovered"];
          [v37 setUint32Value:v30 + v27 + v33 + v36];

          v38 = [v4 fieldForKey:@"WFAAWDWAPDI_iOSPeers"];
          [v38 setUint32Value:v27];

          v39 = [v4 fieldForKey:@"WFAAWDWAPDI_tvOSPeers"];
          [v39 setUint32Value:v33];

          v40 = [v4 fieldForKey:@"WFAAWDWAPDI_macOSPeers"];
          [v40 setUint32Value:v30];
        }

LABEL_36:
        goto LABEL_37;
      }
    }

    else
    {

      v19 = 0;
    }

    v21 = 0x7FFFFFFFLL;
    goto LABEL_19;
  }

LABEL_37:
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
}

- (void)resolveAppleCaptiveServer
{
  objc_initWeak(&location, self);
  if (![(WAEngine *)self isWiFiInterfacePrimary])
  {
    v3 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v13 = "[WAEngine resolveAppleCaptiveServer]";
      v14 = 1024;
      v15 = 6224;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:WiFi interface not primary...aborting DNS resolution", buf, 0x12u);
    }

    goto LABEL_8;
  }

  sub_100079974();
  if (objc_opt_class())
  {
    sub_1000548E8();
    if (objc_opt_class())
    {
      v3 = [(WAEngine *)self getW5Client];
      if (v3)
      {
        v4 = [sub_100079974() requestWithTestID:7 configuration:0];
        v11 = v4;
        v5 = [NSArray arrayWithObjects:&v11 count:1];

        v6 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v13 = "[WAEngine resolveAppleCaptiveServer]";
          v14 = 1024;
          v15 = 6231;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DNSResolution: enqueuing", buf, 0x12u);
        }

        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_100081530;
        v8[3] = &unk_1000EE538;
        objc_copyWeak(&v9, &location);
        v7 = [v3 runDiagnostics:v5 configuration:0 update:0 reply:v8];
        objc_destroyWeak(&v9);
      }

LABEL_8:
    }
  }

  objc_destroyWeak(&location);
}

- (void)initializeProbeCxt
{
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    appleCaptiveServerIP = self->_appleCaptiveServerIP;
    v29 = 136446722;
    v30 = "[WAEngine initializeProbeCxt]";
    v31 = 1024;
    v32 = 6259;
    v33 = 2112;
    v34 = appleCaptiveServerIP;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:initializing ProbeCxt self->_appleCaptiveServerIP:%@", &v29, 0x1Cu);
  }

  if (!self->_probeContextBE)
  {
    v5 = +[NSMutableDictionary dictionary];
    probeContextBE = self->_probeContextBE;
    self->_probeContextBE = v5;

    v7 = [NSNumber numberWithInt:1];
    [(NSMutableDictionary *)self->_probeContextBE setObject:v7 forKeyedSubscript:@"PingCount"];

    v8 = [NSNumber numberWithInt:1300];
    [(NSMutableDictionary *)self->_probeContextBE setObject:v8 forKeyedSubscript:@"PingDataLength"];

    v9 = [NSNumber numberWithInt:1];
    [(NSMutableDictionary *)self->_probeContextBE setObject:v9 forKeyedSubscript:@"PingTimeout"];

    v10 = [NSNumber numberWithInt:0];
    [(NSMutableDictionary *)self->_probeContextBE setObject:v10 forKeyedSubscript:@"PingTrafficClass"];

    [(NSMutableDictionary *)self->_probeContextBE setObject:self->_appleCaptiveServerIP forKeyedSubscript:@"IPAddress"];
  }

  if (!self->_probeContextBK)
  {
    v11 = +[NSMutableDictionary dictionary];
    probeContextBK = self->_probeContextBK;
    self->_probeContextBK = v11;

    v13 = [NSNumber numberWithInt:1];
    [(NSMutableDictionary *)self->_probeContextBK setObject:v13 forKeyedSubscript:@"PingCount"];

    v14 = [NSNumber numberWithInt:1300];
    [(NSMutableDictionary *)self->_probeContextBK setObject:v14 forKeyedSubscript:@"PingDataLength"];

    v15 = [NSNumber numberWithInt:1];
    [(NSMutableDictionary *)self->_probeContextBK setObject:v15 forKeyedSubscript:@"PingTimeout"];

    v16 = [NSNumber numberWithInt:200];
    [(NSMutableDictionary *)self->_probeContextBK setObject:v16 forKeyedSubscript:@"PingTrafficClass"];

    [(NSMutableDictionary *)self->_probeContextBK setObject:self->_appleCaptiveServerIP forKeyedSubscript:@"IPAddress"];
  }

  if (!self->_probeContextVI)
  {
    v17 = +[NSMutableDictionary dictionary];
    probeContextVI = self->_probeContextVI;
    self->_probeContextVI = v17;

    v19 = [NSNumber numberWithInt:1];
    [(NSMutableDictionary *)self->_probeContextVI setObject:v19 forKeyedSubscript:@"PingCount"];

    v20 = [NSNumber numberWithInt:1300];
    [(NSMutableDictionary *)self->_probeContextVI setObject:v20 forKeyedSubscript:@"PingDataLength"];

    v21 = [NSNumber numberWithInt:1];
    [(NSMutableDictionary *)self->_probeContextVI setObject:v21 forKeyedSubscript:@"PingTimeout"];

    v22 = [NSNumber numberWithInt:700];
    [(NSMutableDictionary *)self->_probeContextVI setObject:v22 forKeyedSubscript:@"PingTrafficClass"];

    [(NSMutableDictionary *)self->_probeContextVI setObject:self->_appleCaptiveServerIP forKeyedSubscript:@"IPAddress"];
  }

  if (!self->_probeContextVO)
  {
    v23 = +[NSMutableDictionary dictionary];
    probeContextVO = self->_probeContextVO;
    self->_probeContextVO = v23;

    v25 = [NSNumber numberWithInt:1];
    [(NSMutableDictionary *)self->_probeContextVO setObject:v25 forKeyedSubscript:@"PingCount"];

    v26 = [NSNumber numberWithInt:1300];
    [(NSMutableDictionary *)self->_probeContextVO setObject:v26 forKeyedSubscript:@"PingDataLength"];

    v27 = [NSNumber numberWithInt:1];
    [(NSMutableDictionary *)self->_probeContextVO setObject:v27 forKeyedSubscript:@"PingTimeout"];

    v28 = [NSNumber numberWithInt:800];
    [(NSMutableDictionary *)self->_probeContextVO setObject:v28 forKeyedSubscript:@"PingTrafficClass"];

    [(NSMutableDictionary *)self->_probeContextVO setObject:self->_appleCaptiveServerIP forKeyedSubscript:@"IPAddress"];
  }
}

- (void)triggerDiagnosticPingWithrequestId:(unsigned int)a3
{
  objc_initWeak(&location, self);
  if (![(WAEngine *)self isWiFiInterfacePrimary])
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v58 = 136446722;
      *&v58[4] = "[WAEngine triggerDiagnosticPingWithrequestId:]";
      *&v58[12] = 1024;
      *&v58[14] = 6296;
      *&v58[18] = 1024;
      *&v58[20] = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:WiFi interface not primary...aborting ping instance:%d", v58, 0x18u);
    }

    goto LABEL_20;
  }

  sub_100079974();
  if (objc_opt_class())
  {
    sub_1000548E8();
    if (objc_opt_class())
    {
      v5 = [(WAEngine *)self getW5Client];
      *v58 = 0;
      *&v58[8] = v58;
      *&v58[16] = 0x3032000000;
      v59 = sub_10005CFFC;
      v60 = sub_10005D00C;
      v61 = 0;
      v41 = 0;
      v42 = &v41;
      v43 = 0x3032000000;
      v44 = sub_10005CFFC;
      v45 = sub_10005D00C;
      v46 = 0;
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = sub_10005CFFC;
      v39 = sub_10005D00C;
      v40 = 0;
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = sub_10005CFFC;
      v33 = sub_10005D00C;
      v34 = 0;
      dnsStudyQueue = self->_dnsStudyQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000822FC;
      block[3] = &unk_1000EE560;
      block[4] = self;
      block[5] = v58;
      block[6] = &v41;
      block[7] = &v35;
      block[8] = &v29;
      dispatch_sync(dnsStudyQueue, block);
      if (!v5)
      {
LABEL_19:
        _Block_object_dispose(&v29, 8);

        _Block_object_dispose(&v35, 8);
        _Block_object_dispose(&v41, 8);

        _Block_object_dispose(v58, 8);
LABEL_20:

        goto LABEL_21;
      }

      v7 = [sub_100079974() requestWithTestID:3 configuration:*(*&v58[8] + 40)];
      v57[0] = v7;
      v8 = [sub_100079974() requestWithTestID:3 configuration:v42[5]];
      v57[1] = v8;
      v9 = [sub_100079974() requestWithTestID:3 configuration:v30[5]];
      v57[2] = v9;
      v10 = [sub_100079974() requestWithTestID:3 configuration:v36[5]];
      v57[3] = v10;
      v11 = [NSArray arrayWithObjects:v57 count:4];

      v12 = [sub_100079974() requestWithTestID:6 configuration:*(*&v58[8] + 40)];
      v56[0] = v12;
      v13 = [sub_100079974() requestWithTestID:6 configuration:v42[5]];
      v56[1] = v13;
      v14 = [sub_100079974() requestWithTestID:6 configuration:v30[5]];
      v56[2] = v14;
      v15 = [sub_100079974() requestWithTestID:6 configuration:v36[5]];
      v56[3] = v15;
      v16 = [NSArray arrayWithObjects:v56 count:4];

      if (self->_appleCaptiveServerIP)
      {
        v17 = [v11 arrayByAddingObjectsFromArray:v16];
      }

      else
      {
        v17 = v11;
      }

      v18 = v17;
      if (!a3)
      {
        self->_isCaptiveServerIPResolved = self->_appleCaptiveServerIP != 0;
      }

      v19 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        appleCaptiveServerIP = self->_appleCaptiveServerIP;
        *buf = 136446978;
        v49 = "[WAEngine triggerDiagnosticPingWithrequestId:]";
        v50 = 1024;
        v51 = 6324;
        v52 = 1024;
        v53 = a3;
        v54 = 2112;
        v55 = appleCaptiveServerIP;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Ping: instanceId:%u equeueing...  CaptiveServerIP:%@", buf, 0x22u);
      }

      v21 = [(RecommendationEngine *)self->_recommendationEngine preferences];
      v22 = [v21 dns_symptoms_trap_evaluated_at_sample] > a3;

      if (v22)
      {
        self->_totalLANPingsBeforeTrap += 4;
        if (self->_appleCaptiveServerIP)
        {
          v23 = 272;
LABEL_17:
          *(&self->super.isa + v23) = (*(&self->super.isa + v23) + 4);
        }
      }

      else
      {
        self->_totalLANPingsAfterTrap += 4;
        if (self->_appleCaptiveServerIP)
        {
          v23 = 304;
          goto LABEL_17;
        }
      }

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000823E4;
      v25[3] = &unk_1000EE5B0;
      objc_copyWeak(&v26, &location);
      v27 = a3;
      v24 = [v5 runDiagnostics:v18 configuration:0 update:0 reply:v25];
      objc_destroyWeak(&v26);

      goto LABEL_19;
    }
  }

LABEL_21:
  objc_destroyWeak(&location);
}

- (void)fetchSymptomsScores:(unsigned int)a3
{
  v5 = WALogCategoryDefaultHandle();
  v6 = v5;
  if (&_managed_event_fetch)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v12 = "[WAEngine fetchSymptomsScores:]";
      v13 = 1024;
      v14 = 6392;
      v15 = 1024;
      v16 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Netscore: instanceId:%u enqueuing...", buf, 0x18u);
    }

    objc_initWeak(&location, self);
    objc_copyWeak(&v8, &location);
    v9 = a3;
    if ((managed_event_fetch() & 1) == 0)
    {
      v7 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v12 = "[WAEngine fetchSymptomsScores:]";
        v13 = 1024;
        v14 = 6438;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:managed_event_fetch failed", buf, 0x12u);
      }
    }

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v12 = "[WAEngine fetchSymptomsScores:]";
      v13 = 1024;
      v14 = 6388;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:managed_event_fetch not available", buf, 0x12u);
    }
  }
}

- (BOOL)isScoreBelowThreshold:(id)a3 type:(unint64_t)a4 instanceId:(unsigned int)a5
{
  v8 = a3;
  v9 = [v8 objectForKeyedSubscript:@"AWD-info"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:@"dns-total"];
    v12 = [v11 intValue];

    v13 = [v10 objectForKeyedSubscript:@"dns-impacted"];
    v14 = [v13 intValue];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = 0;
    v12 = 0;
    if (a4)
    {
LABEL_3:
      v15 = [v10 objectForKeyedSubscript:@"data-stalls-score"];
      v16 = [v15 intValue];

      if (a5)
      {
        v17 = [(RecommendationEngine *)self->_recommendationEngine preferences];
        v18 = [v17 dns_symptoms_interrogation_sample_count] - 1;

        if (v18 != a5)
        {
LABEL_17:
          v24 = v12;
LABEL_18:
          v25 = [(RecommendationEngine *)self->_recommendationEngine preferences];
          v23 = v16 <= [v25 reset_score_threshold];

          v12 = v24;
          goto LABEL_19;
        }

        v19 = 432;
      }

      else
      {
        v19 = 408;
      }

      *(&self->super.isa + v19) = v16;
      goto LABEL_17;
    }
  }

  v20 = [v8 objectForKeyedSubscript:@"net-score"];
  v16 = [v20 intValue];

  v21 = 424;
  if (!a5)
  {
    v21 = 400;
  }

  v22 = 440;
  if (!a5)
  {
    v22 = 416;
  }

  *(&self->super.isa + v21) = v16;
  *(&self->super.isa + v22) = v14;
  if (v12)
  {
    v23 = 0;
    if (v14)
    {
      v24 = v14;
      if (v12 == v14)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v23 = 1;
  }

LABEL_19:
  v26 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = "NO";
    v29 = 136448002;
    v30 = "[WAEngine isScoreBelowThreshold:type:instanceId:]";
    v32 = 6477;
    v31 = 1024;
    if (v23)
    {
      v27 = "YES";
    }

    v33 = 1024;
    v34 = a5;
    v35 = 2048;
    v36 = a4;
    v37 = 1024;
    v38 = v16;
    v39 = 1024;
    v40 = v12;
    v41 = 1024;
    v42 = v14;
    v43 = 2080;
    v44 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:InstanceId:%u scoreType:%lu score:%d totalServers:%d impactedDnsServers:%d isBelowThreshold-result:%s", &v29, 0x3Eu);
  }

  return v23;
}

- (BOOL)isWiFiAssociatedToNetwork
{
  v2 = [(CWFInterface *)self->_corewifi networkName];
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "Not Associated";
    v7 = "[WAEngine isWiFiAssociatedToNetwork]";
    v6 = 136446722;
    if (v2)
    {
      v4 = "Associated";
    }

    v8 = 1024;
    v9 = 6493;
    v10 = 2080;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:isWiFiAssociatedToNetwork result: %s", &v6, 0x1Cu);
  }

  return v2 != 0;
}

- (void)computeAverageCcaSinceStudyStart:(id)a3
{
  v27 = a3;
  v3 = [v27 fieldForKey:@"DPSR_dpsCounterSamples"];
  v4 = [v3 repeatableValues];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    v7 = 0.0;
    for (i = v5; i != v6; v5 = i)
    {
      v8 = [v27 fieldForKey:@"DPSR_dpsCounterSamples"];
      v9 = [v8 repeatableValues];
      v10 = [v9 objectAtIndex:v6];
      v11 = [v10 fieldForKey:@"DPSCS_peerStats"];
      v12 = [v11 subMessageValue];
      v13 = [v12 fieldForKey:@"NWAPS_obssCCA"];
      v14 = [v13 uint32Value];

      v15 = [v27 fieldForKey:@"DPSR_dpsCounterSamples"];
      v16 = [v15 repeatableValues];
      v17 = [v16 objectAtIndex:v6];
      v18 = [v17 fieldForKey:@"DPSCS_peerStats"];
      v19 = [v18 subMessageValue];
      v20 = [v19 fieldForKey:@"NWAPS_interferenceCCA"];
      v21 = [v20 uint32Value];

      v22 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447234;
        v29 = "[WAEngine computeAverageCcaSinceStudyStart:]";
        v30 = 1024;
        v31 = 6509;
        v32 = 2048;
        *v33 = v6;
        *&v33[8] = 1024;
        *v34 = v14;
        *&v34[4] = 1024;
        *&v34[6] = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:AvgCCAComputation: instance:%lu obssCCA:%d interferenceCCA:%d", buf, 0x28u);
      }

      v7 = v7 + (v21 + v14);

      ++v6;
    }
  }

  else
  {
    v7 = 0.0;
  }

  v23 = v7 / v5;
  v24 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447234;
    v29 = "[WAEngine computeAverageCcaSinceStudyStart:]";
    v30 = 1024;
    v31 = 6512;
    v32 = 1024;
    *v33 = v23;
    *&v33[4] = 1024;
    *&v33[6] = v7;
    *v34 = 2048;
    *&v34[2] = v5;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:AvgCCAComputation: result:%d sumCCA:%d count:%lu", buf, 0x28u);
  }

  self->_cumulativeAverageCcaSinceStudyStart = v23;
}

- (BOOL)isWiFiInterfacePrimary
{
  v3 = [(CWFInterface *)self->_corewifi globalIPv4InterfaceName];
  v4 = [(CWFInterface *)self->_corewifi globalIPv4NetworkServiceID];
  v5 = [(CWFInterface *)self->_corewifi globalIPv4InterfaceName];
  v6 = [(CWFInterface *)self->_corewifi globalIPv6NetworkServiceID];
  v7 = [(CWFInterface *)self->_corewifi networkServiceID];
  v8 = ([v7 isEqualToString:v4] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", v6);
  v9 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "[WAEngine isWiFiInterfacePrimary]";
    v14 = 1024;
    v10 = "NO";
    v15 = 6531;
    v16 = 2080;
    v12 = 136447234;
    if (v8)
    {
      v10 = "YES";
    }

    v17 = v10;
    v18 = 2112;
    v19 = v3;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:isWiFiInterfacePrimary result:%s IPv4interface:%@ IPv6Interface:%@ ", &v12, 0x30u);
  }

  return v8;
}

- (BOOL)isWiFiNetworkCaptive
{
  v2 = [(CWFInterface *)self->_corewifi currentKnownNetworkProfile];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isCaptive];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)getCCA
{
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CWFInterface *)self->_corewifi CCA];
    v6 = 136446722;
    v7 = "[WAEngine getCCA]";
    v8 = 1024;
    v9 = 6549;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SDNS: CCA: %lu", &v6, 0x1Cu);
  }

  return [(CWFInterface *)self->_corewifi CCA];
}

- (int64_t)getRSSI
{
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CWFInterface *)self->_corewifi RSSI];
    v6 = 136446722;
    v7 = "[WAEngine getRSSI]";
    v8 = 1024;
    v9 = 6554;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SDNS: RSSI: %ld", &v6, 0x1Cu);
  }

  return [(CWFInterface *)self->_corewifi RSSI];
}

- (BOOL)updateDriverType
{
  if (self->_driverType)
  {
    return 1;
  }

  v3 = +[WAApple80211Manager sharedObject];
  v4 = [v3 getInfraApple80211];

  if (!v4)
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446466;
      v10 = "[WAEngine updateDriverType]";
      v11 = 1024;
      v12 = 6565;
      v8 = "%{public}s::%d:invalid apple80211API";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v8, &v9, 0x12u);
    }

LABEL_12:

    return 0;
  }

  v5 = [v4 getDriverType];
  self->_driverType = v5;
  if (!v5)
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446466;
      v10 = "[WAEngine updateDriverType]";
      v11 = 1024;
      v12 = 6568;
      v8 = "%{public}s::%d:invalid _driverType kWAWIFIDriverUnknown";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  return 1;
}

- (void)triggerDNSResetRecoveryAction
{
  if (![(WAEngine *)self isWiFiAssociatedToNetwork])
  {
    v12 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v14 = 136446466;
    v15 = "[WAEngine triggerDNSResetRecoveryAction]";
    v16 = 1024;
    v17 = 6579;
    v13 = "%{public}s::%d:SDNS: (part-2) recovery action aborted. Reason: WiFi Not Associated";
LABEL_27:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, &v14, 0x12u);
    goto LABEL_28;
  }

  if (![(WAEngine *)self isWiFiInterfacePrimary])
  {
    v12 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v14 = 136446466;
    v15 = "[WAEngine triggerDNSResetRecoveryAction]";
    v16 = 1024;
    v17 = 6580;
    v13 = "%{public}s::%d:SDNS: (part-2) recovery action aborted. Reason: WiFi Not Primary";
    goto LABEL_27;
  }

  if ([(WAEngine *)self isWiFiNetworkCaptive])
  {
    v12 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v14 = 136446466;
    v15 = "[WAEngine triggerDNSResetRecoveryAction]";
    v16 = 1024;
    v17 = 6581;
    v13 = "%{public}s::%d:SDNS: (part-2) recovery action aborted. Reason: Captive WiFi Network";
    goto LABEL_27;
  }

  if (![(WAEngine *)self fetchConfiguredDnsInfo])
  {
    v12 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v14 = 136446466;
    v15 = "[WAEngine triggerDNSResetRecoveryAction]";
    v16 = 1024;
    v17 = 6582;
    v13 = "%{public}s::%d:SDNS: (part-2) recovery action aborted. Reason: Invalid DNS Config";
    goto LABEL_27;
  }

  v3 = [(WAEngine *)self getCCA];
  if (v3 > [(RecommendationPreferences *)self->_preferences dps_symptoms_average_cca_threshold])
  {
    v12 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v14 = 136446466;
    v15 = "[WAEngine triggerDNSResetRecoveryAction]";
    v16 = 1024;
    v17 = 6584;
    v13 = "%{public}s::%d:SDNS: (part-2) recovery action aborted. Reason: High CCA";
    goto LABEL_27;
  }

  v4 = [(WAEngine *)self getRSSI];
  if (v4 < [(RecommendationPreferences *)self->_preferences reset_pd_rssi_threshold])
  {
    v12 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v14 = 136446466;
    v15 = "[WAEngine triggerDNSResetRecoveryAction]";
    v16 = 1024;
    v17 = 6586;
    v13 = "%{public}s::%d:SDNS: (part-2) recovery action aborted. Reason: Low RSSI";
    goto LABEL_27;
  }

  dpsQuickRecoveryEngine = self->_dpsQuickRecoveryEngine;
  if (!dpsQuickRecoveryEngine)
  {
    v12 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446466;
      v15 = "[WAEngine triggerDNSResetRecoveryAction]";
      v16 = 1024;
      v17 = 6587;
      v13 = "%{public}s::%d:SDNS: (part-2) recovery action aborted. Invalid _dpsQuickRecoveryEngine";
      goto LABEL_27;
    }

LABEL_28:

    return;
  }

  v6 = [(DPSQuickRecoveryRecommendationEngine *)dpsQuickRecoveryEngine checkIfDPSResetRecoveryAllowed:self->_driverType];
  v7 = WALogCategoryDefaultHandle();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136446466;
      v15 = "[WAEngine triggerDNSResetRecoveryAction]";
      v16 = 1024;
      v17 = 6590;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SDNS: Recovery Attempt (part-2) : Triggering Reset for symptoms-dps", &v14, 0x12u);
    }

    self->_dpsAction |= 0x40u;
    v9 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];
    v10 = [(WAEngine *)self infraInterfaceName];
    v11 = [v9 objectForKeyedSubscript:v10];
    [v11 triggerDpsReset:@"TrapOnDNSSymptoms" metaData:0];

    [(WAEngine *)self persist];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446466;
      v15 = "[WAEngine triggerDNSResetRecoveryAction]";
      v16 = 1024;
      v17 = 6589;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:SDNS: (part-2) recovery action aborted. No Quota", &v14, 0x12u);
    }
  }
}

- (BOOL)testDNSResolution:(id)a3
{
  v4 = a3;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_10005CFFC;
  v39 = sub_10005D00C;
  v40 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  if (!v4)
  {
    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v42 = "[WAEngine testDNSResolution:]";
      v43 = 1024;
      v44 = 6608;
      v15 = "%{public}s::%d:serialQueue cannot be nil";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
    }

LABEL_13:
    v6 = 0;
    host = 0;
    goto LABEL_14;
  }

  host = nw_endpoint_create_host("captive.apple.com", "0");
  if (!host)
  {
    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v42 = "[WAEngine testDNSResolution:]";
      v43 = 1024;
      v44 = 6614;
      v15 = "%{public}s::%d:nwhostname creation error";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v6 = nw_resolver_create_with_endpoint();
  if (v6)
  {
    v7 = dispatch_semaphore_create(0);
    if (v7)
    {
      v8 = v7;
      v25 = _NSConcreteStackBlock;
      v26 = 3221225472;
      v27 = sub_1000846D8;
      v28 = &unk_1000EE628;
      v31 = v33;
      v32 = &v35;
      v6 = v6;
      v29 = v6;
      v9 = v8;
      v30 = v9;
      if (nw_resolver_set_update_handler())
      {
        v10 = [(RecommendationEngine *)self->_recommendationEngine preferences];
        v11 = dispatch_time(0, 1000000000 * [v10 dns_symptoms_query_resolution_timeout]);
        v12 = dispatch_semaphore_wait(v9, v11);

        if (v12)
        {
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_100084958;
          v22[3] = &unk_1000EDB80;
          v24 = v33;
          v23 = v6;
          dispatch_sync(v4, v22);
          v13 = 0;
          v14 = v23;
LABEL_25:

          goto LABEL_15;
        }

        v20 = v36[5];
        if (v20 && [v20 count])
        {
          v14 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v21 = v36[5];
            *buf = 136446722;
            v42 = "[WAEngine testDNSResolution:]";
            v43 = 1024;
            v44 = 6676;
            v45 = 2112;
            v46 = v21;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DNS Resolution (captive.apple.com): COMPLETED (status:Success) IPAddresses:(%@)", buf, 0x1Cu);
          }

          v13 = 1;
          goto LABEL_25;
        }

        v14 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v42 = "[WAEngine testDNSResolution:]";
          v43 = 1024;
          v44 = 6678;
          v17 = "%{public}s::%d:DNS Resolution (captive.apple.com): COMPLETED (status:Fail)";
          v18 = v14;
          v19 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_23;
        }
      }

      else
      {
        v14 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v42 = "[WAEngine testDNSResolution:]";
          v43 = 1024;
          v44 = 6660;
          v17 = "%{public}s::%d:nw_resolver_set_update_handler failed to set handler";
          v18 = v14;
          v19 = OS_LOG_TYPE_ERROR;
LABEL_23:
          _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, 0x12u);
        }
      }

      v13 = 0;
      goto LABEL_25;
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v42 = "[WAEngine testDNSResolution:]";
      v43 = 1024;
      v44 = 6624;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:semaphore creation error", buf, 0x12u);
    }
  }

  else
  {
    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v42 = "[WAEngine testDNSResolution:]";
      v43 = 1024;
      v44 = 6619;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:resolver creation error", buf, 0x12u);
    }

    v6 = 0;
  }

LABEL_14:
  v13 = 0;
LABEL_15:

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&v35, 8);

  return v13;
}

- (void)triggerStepwiseDNSRecovery
{
  objc_initWeak(&location, self);
  v2 = [(RecommendationPreferences *)self->_preferences dns_symptoms_status_polling_count_post_reassoc];
  v3 = [(RecommendationPreferences *)self->_preferences dns_symptoms_duration_between_status_polling_post_reassoc];
  v19 = dispatch_semaphore_create(0);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  queue = dispatch_queue_create("com.apple.wifi.analytics.dns.recoveryQ", v4);

  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v32 = "[WAEngine triggerStepwiseDNSRecovery]";
    v33 = 1024;
    v34 = 6695;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SDNS: Recovery Attempt (part-1) : Triggering Reassoc for symptoms-dps", buf, 0x12u);
  }

  self->_dpsAction |= 0x80u;
  v6 = [(WAEngine *)self interfaceNameToApple80211InstanceMap];
  v7 = [(WAEngine *)self infraInterfaceName];
  v8 = [v6 objectForKeyedSubscript:v7];
  [v8 triggerReassociation:@"DNSFailureRecovery-Reassoc-Attempt"];

  v9 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v32 = "[WAEngine triggerStepwiseDNSRecovery]";
    v33 = 1024;
    v34 = 6700;
    v35 = 2048;
    v36 = v2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SDNS: PollingCount: %lu", buf, 0x1Cu);
  }

  if (v2)
  {
    v10 = 1;
    while (1)
    {
      v11 = dispatch_time(0, 1000000 * v3);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100084F10;
      block[3] = &unk_1000EE650;
      objc_copyWeak(v24, &location);
      v23 = &v26;
      v24[1] = v3;
      v25 = v10 - 1;
      v12 = v19;
      v22 = v12;
      dispatch_after(v11, queue, block);
      if (*(v27 + 24) == 1)
      {
        break;
      }

      v13 = dispatch_time(0, 2000000000);
      dispatch_semaphore_wait(v12, v13);

      objc_destroyWeak(v24);
      if (v2 <= v10++)
      {
        goto LABEL_11;
      }
    }

    objc_destroyWeak(v24);
  }

LABEL_11:
  if (*(v27 + 24) == 1)
  {
    v15 = [(WAEngine *)self testDNSResolution:queue];
    v16 = WALogCategoryDefaultHandle();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        *buf = 136446466;
        v32 = "[WAEngine triggerStepwiseDNSRecovery]";
        v33 = 1024;
        v34 = 6725;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SDNS: captive.apple.com resolution was successful. Aborting Recovery Attempt (part-2)", buf, 0x12u);
      }
    }

    else
    {
      if (v17)
      {
        *buf = 136446466;
        v32 = "[WAEngine triggerStepwiseDNSRecovery]";
        v33 = 1024;
        v34 = 6722;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SDNS: captive.apple.com resolution not successful. Attempting (part-2) Reset Recovery...", buf, 0x12u);
      }

      [(WAEngine *)self triggerDNSResetRecoveryAction];
    }
  }

  _Block_object_dispose(&v26, 8);
  objc_destroyWeak(&location);
}

@end