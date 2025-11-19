@interface W5LogManager
+ (id)__descriptionForNetwork:(id)a3;
+ (id)__logBTCProfile:(apple80211_btc_profile_osx *)a3;
+ (id)__logBluetoothStatus:(id)a3;
+ (id)__logNetworkStatus:(id)a3;
+ (id)__logScanResults:(id)a3;
+ (id)__logTxPower:(apple80211_per_chain_power_data_get *)a3;
+ (id)__logWiFiStatus:(id)a3;
+ (id)__temporaryDirectory;
+ (void)__parsePingOutput:(id)a3 result:(id)a4;
- (BOOL)__allowCoreCapture;
- (BOOL)__logItems:(id)a3 containsID:(int64_t)a4;
- (BOOL)__wlCLIWithArguments:(id)a3 outputFilePath:(id)a4 outputData:(id)a5;
- (BOOL)waDeviceAnalyticsClientExists;
- (W5LogManager)initWithStatusManager:(id)a3 diagnosticsManager:(id)a4 peerDiagnosticsManager:(id)a5;
- (id)__basicWiFiLogsWithFilteredContent:(BOOL)a3 useMegaWiFiProfileLimits:(BOOL)a4;
- (id)__browseBonjourInstancesWithServiceType:(id)a3 duration:(unint64_t)a4;
- (id)__collect3barsCache:(id)a3;
- (id)__collectAWDLStatus:(id)a3;
- (id)__collectAdditionalLog:(id)a3 url:(id)a4;
- (id)__collectAirPlayLogs:(id)a3;
- (id)__collectBluetoothLogs:(id)a3;
- (id)__collectBluetoothStatus:(id)a3;
- (id)__collectBonjourRecords:(id)a3;
- (id)__collectCoreCapture24:(id)a3;
- (id)__collectCoreCapture:(id)a3;
- (id)__collectCoreCaptureDump:(id)a3;
- (id)__collectCrashesAndSpins24:(id)a3;
- (id)__collectDatapathStats:(id)a3;
- (id)__collectDeviceAnalyticsDeploymentGraph:(id)a3;
- (id)__collectDeviceAnalyticsEntityCSVs:(id)a3;
- (id)__collectDeviceAnalyticsStore:(id)a3;
- (id)__collectDextCoreDump:(id)a3;
- (id)__collectDiagnostics:(id)a3;
- (id)__collectEAP8021XLogs:(id)a3;
- (id)__collectEventHistory:(id)a3;
- (id)__collectFileAtURL:(id)a3 outputDirectory:(id)a4 maxAge:(double)a5 maxSize:(unint64_t)a6 compress:(BOOL)a7 remainingSize:(unint64_t *)a8;
- (id)__collectFilesInDirectories:(id)a3 include:(id)a4 exclude:(id)a5 maxAge:(double)a6 maxCount:(unint64_t)a7 maxSize:(unint64_t)a8 outputDirectory:(id)a9 compress:(BOOL)a10 remainingSize:(unint64_t *)a11 contentFilter:(id)a12;
- (id)__collectFilteredWiFiManagerLogArchiveWithOutputURL:(id)a3 compress:(BOOL)a4 age:(unint64_t)a5;
- (id)__collectIPConfigurationLogs:(id)a3;
- (id)__collectIndividual:(id)a3 error:(id *)a4;
- (id)__collectLeakyAPStats:(id)a3;
- (id)__collectLogItem:(id)a3 error:(id *)a4;
- (id)__collectMultiple:(id)a3;
- (id)__collectNetworkPreferences:(id)a3;
- (id)__collectNetworkStatus:(id)a3;
- (id)__collectPeerDiagnostics:(id)a3;
- (id)__collectPerSSIDDiagnosticsHistory:(id)a3;
- (id)__collectPreviouslyCollected:(id)a3;
- (id)__collectSharingLogs:(id)a3;
- (id)__collectSystemConfiguration:(id)a3;
- (id)__collectSystemLogs24:(id)a3;
- (id)__collectSystemLogs:(id)a3;
- (id)__collectSystemProfiler:(id)a3;
- (id)__collectTCPDump_POST:(id)a3;
- (id)__collectTCPDump_PRE:(id)a3;
- (id)__collectWiFiDeviceConfig:(id)a3;
- (id)__collectWiFiLogs24:(id)a3;
- (id)__collectWiFiLogs:(id)a3;
- (id)__collectWiFiLogsDump:(id)a3;
- (id)__collectWiFiMemoryUsage:(id)a3;
- (id)__collectWiFiPerfLogs:(id)a3;
- (id)__collectWiFiPreferences:(id)a3;
- (id)__collectWiFiScanResults:(id)a3;
- (id)__collectWiFiStatsCLI:(id)a3;
- (id)__collectWiFiStatsPost:(id)a3;
- (id)__collectWiFiStatsPre:(id)a3;
- (id)__collectWiFiStatus:(id)a3;
- (id)__collectWiFiVelocityLog:(id)a3;
- (id)__collectWirelessProxLogs:(id)a3;
- (id)__collect_CFNetworkPing:(id)a3;
- (id)__collect_IMFoundationPing:(id)a3;
- (id)__collect_arp:(id)a3;
- (id)__collect_configd:(id)a3;
- (id)__collect_darwinup:(id)a3;
- (id)__collect_hosts:(id)a3;
- (id)__collect_ifconfig:(id)a3;
- (id)__collect_ioreg:(id)a3;
- (id)__collect_ipconfig:(id)a3;
- (id)__collect_kextstat:(id)a3;
- (id)__collect_mobilewifitool:(id)a3;
- (id)__collect_ndp:(id)a3;
- (id)__collect_netstat:(id)a3;
- (id)__collect_ping:(id)a3;
- (id)__collect_pmset:(id)a3;
- (id)__collect_spindump:(id)a3;
- (id)__collect_swvers:(id)a3;
- (id)__collect_sysdiagnose:(id)a3;
- (id)__collect_top:(id)a3;
- (id)__collect_traceroute:(id)a3;
- (id)__collect_wl_cca_get_stats:(id)a3;
- (id)__collect_wl_curpower:(id)a3;
- (id)__concurrentConnectivityDiagnosticsTest;
- (id)__configurationDiagnosticsLogItemWithTimeout:(double)a3;
- (id)__connectivityDiagnosticsLogItemWithTimeout:(double)a3;
- (id)__dnssdBrowseAll:(id)a3;
- (id)__dnssdCacheAndState:(id)a3;
- (id)__environmentDiagnosticsLogItemWithTimeout:(double)a3;
- (id)__expandLogItems:(id)a3 configuration:(id)a4;
- (id)__fastConnectivityDiagnosticsLogItemWithTimeout:(double)a3;
- (id)__logAWDLStatus:(id)a3;
- (id)__logDiagnosticsPingResults:(id)a3;
- (id)__logDiagnosticsTestResults:(id)a3;
- (id)__logItemsForDatapathStallEventWithFilteredContent:(BOOL)a3;
- (id)__logItemsForFeedbackAssistant;
- (id)__logItemsForInternalWiFiSettings;
- (id)__logItemsForSysdiagnoseWithFilteredContent:(BOOL)a3 useMegaWiFiProfileLimits:(BOOL)a4 timeout:(int64_t)a5;
- (id)__logItemsForTapToRadar;
- (id)__logItemsForWiFiDiagnosticsApp;
- (id)__logItemsForWiFiDiagnosticsExtensionWithCoreCapturePrefix:(id)a3;
- (id)__model;
- (id)__mostRecentInDirectories:(id)a3 include:(id)a4 exclude:(id)a5 maxAge:(double)a6;
- (id)__mostRecentInDirectories:(id)a3 matchingPrefix:(id)a4 matchingSuffix:(id)a5 excludingPrefix:(id)a6 excludingSuffix:(id)a7 maxAge:(double)a8;
- (id)__pendingRequestWithUUID:(id)a3;
- (id)__ping6WithAddress:(id)a3 count:(int64_t)a4 wait:(double)a5 trafficClass:(id)a6 interfaceName:(id)a7 dataLength:(unint64_t)a8;
- (id)__pingBroadcast:(id)a3;
- (id)__pingSubnet:(id)a3;
- (id)__pingUsingCFNetworkWithAddress:(id)a3 count:(int64_t)a4 timeout:(int64_t)a5 trafficClass:(id)a6 networkServiceType:(id)a7;
- (id)__pingUsingIMFoundationWithAddress:(id)a3 timeout:(int64_t)a4;
- (id)__pingWithAddress:(id)a3 count:(int64_t)a4 timeout:(double)a5 wait:(double)a6 interval:(double)a7 trafficClass:(id)a8 interfaceName:(id)a9 dataLength:(unint64_t)a10;
- (id)__possibleCoreCapturePathsWithComponent:(id)a3;
- (id)__resolveBonjourInstance:(id)a3 serviceType:(id)a4 duration:(unint64_t)a5;
- (id)__runDiagnosticsTests:(id)a3 configuration:(id)a4 timeout:(int64_t)a5 error:(id *)a6;
- (unint64_t)__calculateSizeAtPath:(id)a3;
- (void)__dumpCoreCaptureLogsWithReason:(id)a3 component:(id)a4;
- (void)__dumpWiFiLogs;
- (void)__endWiFiStats;
- (void)__filterCoreCaptureContent:(id)a3;
- (void)__nextRequest;
- (void)__purgeFilesInDirectory:(id)a3 matching:(id)a4 maxAge:(unint64_t)a5 maxCount:(unint64_t)a6;
- (void)__replyWithCachedSysdiagnoseContentForRequest:(id)a3 temporaryURL:(id)a4;
- (void)__runRequest:(id)a3 reply:(id)a4;
- (void)__runToolWithOutputFileHandle:(id)a3 readFromStandardError:(BOOL)a4 launchPath:(id)a5 arguments:(id)a6 addCommand:(BOOL)a7 addTimestamps:(BOOL)a8;
- (void)__setupWiFiStats;
- (void)__startWiFiStats;
- (void)__teardownWiFiStats;
- (void)addRequest:(id)a3;
- (void)cancelRequestWithUUID:(id)a3 reply:(id)a4;
- (void)dealloc;
- (void)setCollectLogItemCallback:(id)a3;
- (void)setCollectedItemCallback:(id)a3;
- (void)setPingCallback:(id)a3;
- (void)teardownAndNotify:(id)a3;
@end

@implementation W5LogManager

- (W5LogManager)initWithStatusManager:(id)a3 diagnosticsManager:(id)a4 peerDiagnosticsManager:(id)a5
{
  v20.receiver = self;
  v20.super_class = W5LogManager;
  v8 = [(W5LogManager *)&v20 init];
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = dispatch_queue_create("com.apple.wifivelocity.collect-logs", 0);
  v8->_queue = v9;
  if (!v9)
  {
    goto LABEL_16;
  }

  dispatch_queue_set_specific(v9, &v8->_queue, 1, 0);
  v10 = dispatch_queue_create("com.apple.wifivelocity.debug-log", 0);
  v8->_debugLogQueue = v10;
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  v8->_debugLogMap = v11;
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = objc_alloc_init(NSMutableDictionary);
  v8->_missingLogItemMap = v12;
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = objc_alloc_init(NSMutableDictionary);
  v8->_taskUUIDMap = v13;
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = objc_alloc_init(NSMutableDictionary);
  v8->_urlUUIDMap = v14;
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = objc_alloc_init(NSMutableDictionary);
  v8->_leewayUUIDMap = v15;
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = objc_alloc_init(NSMutableDictionary);
  v8->_timestampUUIDMap = v16;
  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = objc_alloc_init(NSMutableArray);
  v8->_pendingRequests = v17;
  if (a3 && v17 && (v8->_status = a3, a4) && (v8->_diagnostics = a4, v8->_peerDiagnostics = a5, v18 = objc_alloc_init(NSDateFormatter), (v8->_dateFormatter = v18) != 0))
  {
    [(NSDateFormatter *)v18 setDateFormat:@"HH:mm:ss.SSS"];
    v8->_model = [-[W5LogManager __model](v8 "__model")];
    v8->_ioReportSubscription = 0;
    v8->_waDeviceAnalyticsClient = 0;
    v8->_waDeviceAnalyticsClientNotSupported = 0;
    v8->_ioReportBase = 0;
    v8->_ioReportDelta = 0;
    v8->_ioReportChannels = 0;
  }

  else
  {
LABEL_16:

    return 0;
  }

  return v8;
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  debugLogQueue = self->_debugLogQueue;
  if (debugLogQueue)
  {
    dispatch_release(debugLogQueue);
  }

  ioReportBase = self->_ioReportBase;
  if (ioReportBase)
  {
    CFRelease(ioReportBase);
  }

  ioReportDelta = self->_ioReportDelta;
  if (ioReportDelta)
  {
    CFRelease(ioReportDelta);
  }

  ioReportChannels = self->_ioReportChannels;
  if (ioReportChannels)
  {
    CFRelease(ioReportChannels);
  }

  ioReportSubscription = self->_ioReportSubscription;
  if (ioReportSubscription)
  {
    CFRelease(ioReportSubscription);
  }

  v9.receiver = self;
  v9.super_class = W5LogManager;
  [(W5LogManager *)&v9 dealloc];
}

- (BOOL)waDeviceAnalyticsClientExists
{
  if (!self->_waDeviceAnalyticsClient)
  {
    if (!self->_waDeviceAnalyticsClientNotSupported)
    {
      if (sub_10005BE14() && (sub_10005BE14(), objc_opt_class()))
      {
        v4 = sub_100098A04();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          _os_log_send_and_compose_impl();
        }

        v5 = [sub_10005BE14() sharedDeviceAnalyticsClient];
        self->_waDeviceAnalyticsClient = v5;
        if (!v5)
        {
          return 0;
        }
      }

      else
      {
        v7 = sub_100098A04();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          _os_log_send_and_compose_impl();
        }

        self->_waDeviceAnalyticsClientNotSupported = 1;
        if (!self->_waDeviceAnalyticsClient)
        {
          return 0;
        }
      }

      v8 = sub_100098A04();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v2 = 1;
        _os_log_send_and_compose_impl();
        return v2;
      }

      return 1;
    }

    return 0;
  }

  return 1;
}

- (void)setCollectedItemCallback:(id)a3
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_collectedItemCallback = [a3 copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10005BFA4;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = a3;
    dispatch_sync(queue, v6);
  }
}

- (void)setPingCallback:(id)a3
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_pingCallback = [a3 copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10005C0A0;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = a3;
    dispatch_sync(queue, v6);
  }
}

- (void)setCollectLogItemCallback:(id)a3
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_collectLogItemCallback = [a3 copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10005C19C;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = a3;
    dispatch_sync(queue, v6);
  }
}

- (void)__replyWithCachedSysdiagnoseContentForRequest:(id)a3 temporaryURL:(id)a4
{
  v6 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  if (a4)
  {
    v7 = v6;
    v14 = 0;
    v8 = -[NSURL URLByAppendingPathComponent:](+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"/var/run/com.apple.wifivelocity"), "URLByAppendingPathComponent:", [a3 filename]);
    if (v7)
    {
      v9 = &WiFiManagerClientCopyProperty_ptr;
      sub_100098A4C(a4, v8, &v14);
    }

    else
    {
      sub_100099544(a4, v8, &v14);
      v10 = +[NSFileManager defaultManager];
      v18[0] = &off_1000EF410;
      v17[0] = NSFilePosixPermissions;
      v17[1] = NSFileOwnerAccountID;
      v18[1] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [a3 uid]);
      v17[2] = NSFileGroupOwnerAccountID;
      v18[2] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [a3 gid]);
      v9 = &WiFiManagerClientCopyProperty_ptr;
      [(NSFileManager *)v10 setAttributes:[NSDictionary dictionaryWithObjects:v17 forKeys:3 count:?], [(NSURL *)v8 path], 0];
    }

    if ([objc_msgSend(a3 "configuration")])
    {
      v11 = -[NSURL URLByAppendingPathComponent:](-[NSURL URLByAppendingPathComponent:](-[NSFileManager containerURLForSecurityApplicationGroupIdentifier:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "containerURLForSecurityApplicationGroupIdentifier:", @"group.com.apple.wifi.logs"), "URLByAppendingPathComponent:", @"previous"), "URLByAppendingPathComponent:", [a3 filename]);
      sub_100099544(v8, v11, &v14);
      v12 = +[NSFileManager defaultManager];
      v16[0] = &off_1000EF410;
      v15[0] = NSFilePosixPermissions;
      v15[1] = NSFileOwnerAccountID;
      v16[1] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [a3 uid]);
      v15[2] = NSFileGroupOwnerAccountID;
      v16[2] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [a3 gid]);
      -[NSFileManager setAttributes:ofItemAtPath:error:](v12, "setAttributes:ofItemAtPath:error:", [v9[475] dictionaryWithObjects:v16 forKeys:v15 count:3], -[NSURL path](v11, "path"), 0);
    }

    if ([a3 reply])
    {
      v13 = [a3 reply];
      v13[2](v13, v14, v8, 0);
    }
  }
}

- (BOOL)__logItems:(id)a3 containsID:(int64_t)a4
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a3);
        }

        if ([*(*(&v11 + 1) + 8 * v9) itemID] == a4)
        {
          LOBYTE(v6) = 1;
          return v6;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

- (void)addRequest:(id)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005C65C;
  v4[3] = &unk_1000E1C98;
  v4[4] = a3;
  v4[5] = self;
  dispatch_async(queue, v4);
}

- (void)cancelRequestWithUUID:(id)a3 reply:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005DA80;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(queue, block);
}

- (void)teardownAndNotify:(id)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005DDB8;
  v4[3] = &unk_1000E1C70;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (id)__pendingRequestWithUUID:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  pendingRequests = self->_pendingRequests;
  v5 = [(NSMutableArray *)pendingRequests countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(pendingRequests);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "uuid")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)pendingRequests countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)__purgeFilesInDirectory:(id)a3 matching:(id)a4 maxAge:(unint64_t)a5 maxCount:(unint64_t)a6
{
  v9 = +[NSMutableArray array];
  +[NSDate timeIntervalSinceReferenceDate];
  v11 = v10;
  v33 = +[NSMutableDictionary dictionary];
  v12 = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:error:" error:a3, 0];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v39;
    v16 = a5;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        -[NSDate timeIntervalSinceReferenceDate](-[NSDictionary fileCreationDate](-[NSFileManager attributesOfItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "attributesOfItemAtPath:error:", [a3 stringByAppendingPathComponent:v18], 0), "fileCreationDate"), "timeIntervalSinceReferenceDate");
        v20 = v19;
        if (!a4 || [a4 numberOfMatchesInString:v18 options:0 range:{0, objc_msgSend(v18, "length")}])
        {
          v21 = [a3 stringByAppendingPathComponent:v18];
          if (v11 - v20 <= v16)
          {
            [v33 setObject:v21 forKeyedSubscript:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v20)}];
          }

          else
          {
            [v9 addObject:v21];
          }
        }
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v14);
  }

  v22 = [objc_msgSend(v33 "allKeys")];
  [v22 sortUsingComparator:&stru_1000E2CA0];
  if ([v22 count] > a6 && objc_msgSend(v22, "count") != a6)
  {
    v23 = 0;
    do
    {
      [v9 addObject:{objc_msgSend(v33, "objectForKeyedSubscript:", objc_msgSend(v22, "objectAtIndexedSubscript:", v23++))}];
    }

    while (v23 < [v22 count] - a6);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v24 = [v9 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v35;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(v9);
        }

        v28 = *(*(&v34 + 1) + 8 * j);
        v29 = sub_100098A04();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v42 = 138543362;
          v43 = v28;
          LODWORD(v31) = 12;
          v30 = &v42;
          _os_log_send_and_compose_impl();
        }

        [+[NSFileManager removeItemAtPath:v30], "removeItemAtPath:error:", v28, 0];
      }

      v25 = [v9 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v25);
  }
}

- (void)__nextRequest
{
  if (!self->_activeRequest)
  {
    if ([(NSMutableArray *)self->_pendingRequests count])
    {
      v3 = [-[NSMutableArray firstObject](self->_pendingRequests "firstObject")];
      self->_activeRequest = [v3 copy];
      [(NSMutableArray *)self->_pendingRequests removeObjectAtIndex:0];
      v6[0] = 0;
      v6[1] = v6;
      v6[2] = 0x3052000000;
      v6[3] = sub_10005E4F0;
      v6[4] = sub_10005E500;
      v4 = os_transaction_create();
      [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];
      v6[5] = v4;
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10005E50C;
      v5[3] = &unk_1000E2D18;
      v5[4] = v3;
      v5[5] = self;
      v5[6] = v6;
      [(W5LogManager *)self __runRequest:v3 reply:v5];
      _Block_object_dispose(v6, 8);
    }
  }
}

- (id)__logItemsForDatapathStallEventWithFilteredContent:(BOOL)a3
{
  v8 = a3;
  v4 = +[NSMutableArray array];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 39, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 45, &off_1000F2388)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 46, &off_1000F23B0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 47, &off_1000F23D8)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 44, &off_1000F2400)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 48, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 7, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 16, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 58, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 11, 0)}];
  [v4 addObject:{-[W5LogManager __configurationDiagnosticsLogItemWithTimeout:](self, "__configurationDiagnosticsLogItemWithTimeout:", 0.0)}];
  v5 = [+[NSUUID UUID](NSUUID UUIDString];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 28, &off_1000F2428)}];
  [v4 addObject:{-[W5LogManager __environmentDiagnosticsLogItemWithTimeout:](self, "__environmentDiagnosticsLogItemWithTimeout:", 0.0)}];
  v17[0] = @"Reason";
  v17[1] = @"NameOverride";
  v18[0] = [NSString stringWithFormat:@"%@~dps~PRE[%@]", @"WiFiDebug", [(NSString *)v5 substringToIndex:5]];
  v18[1] = [NSString stringWithFormat:@"CoreCapture Dump (%@)", v18[0]];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 21, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v18, v17, 2))}];
  v6 = [+[NSUUID UUID](NSUUID UUIDString];
  v15 = @"UUID";
  v16 = v6;
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 24, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v16, &v15, 1))}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 69, &off_1000F2450)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 81, &off_1000F2478)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 61, &off_1000F24A0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 3, &off_1000F24C8)}];
  [v4 addObject:{-[W5LogManager __connectivityDiagnosticsLogItemWithTimeout:](self, "__connectivityDiagnosticsLogItemWithTimeout:", 0.0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 61, &off_1000F24F0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 3, &off_1000F2518)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 81, &off_1000F2540)}];
  v13 = @"UUID";
  v14 = v6;
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 25, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v14, &v13, 1))}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 69, &off_1000F2568)}];
  v11[0] = @"Reason";
  v11[1] = @"NameOverride";
  v12[0] = [NSString stringWithFormat:@"%@~dps~POST[%@]", @"WiFiDebug", [(NSString *)v5 substringToIndex:5]];
  v12[1] = [NSString stringWithFormat:@"CoreCapture Dump (%@)", v12[0]];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 21, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v12, v11, 2))}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 4, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 6, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 8, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 69, &off_1000F2590)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 37, &off_1000F25B8)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 40, 0)}];
  v9[0] = @"IncludeMatching";
  v10[0] = [NSRegularExpression escapedPatternForString:[(NSString *)v5 substringToIndex:5]];
  v9[1] = @"FilterContent";
  v9[2] = @"Compress";
  v10[1] = [NSNumber numberWithBool:v8];
  v10[2] = &__kCFBooleanTrue;
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 19, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v10, v9, 3))}];
  return [v4 copy];
}

- (id)__logItemsForWiFiDiagnosticsApp
{
  v2 = [NSMutableArray arrayWithArray:[(W5LogManager *)self __logItemsForWiFiDiagnosticsExtensionWithCoreCapturePrefix:[NSString stringWithFormat:@"%@~wdapp", @"WiFiDebug"]]];
  [(NSMutableArray *)v2 addObject:[W5LogItemRequest requestWithItemID:14 configuration:&off_1000F25E0]];
  [(NSMutableArray *)v2 addObject:[W5LogItemRequest requestWithItemID:52 configuration:0]];
  [(NSMutableArray *)v2 addObject:[W5LogItemRequest requestWithItemID:50 configuration:0]];
  return v2;
}

- (id)__logItemsForWiFiDiagnosticsExtensionWithCoreCapturePrefix:(id)a3
{
  v4 = +[NSMutableArray array];
  v18 = [+[NSFileManager defaultManager](NSFileManager isExecutableFileAtPath:"isExecutableFileAtPath:", @"/sbin/ping"];
  v5 = [+[NSUUID UUID](NSUUID UUIDString];
  v6 = [NSString stringWithFormat:@"%@~PRE[%@]", a3, [(NSString *)v5 substringToIndex:5]];
  v46[0] = &off_1000EF470;
  v45[0] = @"MaxCount";
  v45[1] = @"IncludeMatching";
  v46[1] = [NSRegularExpression escapedPatternForString:v6];
  v46[2] = &__kCFBooleanTrue;
  v45[2] = @"Compress";
  v45[3] = @"NameOverride";
  v46[3] = [NSString stringWithFormat:@"CoreCapture Collect (%@)", v6];
  v7 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:4];
  v42[1] = @"NameOverride";
  v43[0] = v6;
  v42[0] = @"Reason";
  v43[1] = [NSString stringWithFormat:@"CoreCapture Dump (%@)", v6];
  v44[0] = [W5LogItemRequest requestWithItemID:21 configuration:[NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2]];
  v44[1] = [W5LogItemRequest requestWithItemID:69 configuration:&off_1000F2608];
  v44[2] = [W5LogItemRequest requestWithItemID:19 configuration:v7];
  v40[0] = @"Requests";
  v40[1] = @"RunConcurrent";
  v41[0] = [NSArray arrayWithObjects:v44 count:3];
  v41[1] = &__kCFBooleanFalse;
  v40[2] = @"NameOverride";
  v41[2] = @"CoreCapture (PRE)";
  v17 = [W5LogItemRequest requestWithItemID:53 configuration:[NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:3]];
  v8 = [NSString stringWithFormat:@"%@~POST[%@]", a3, [(NSString *)v5 substringToIndex:5]];
  v38[0] = @"MaxAge";
  v38[1] = @"Compress";
  v39[0] = &off_1000EF4D0;
  v39[1] = &__kCFBooleanTrue;
  v39[2] = &off_1000EF4B8;
  v38[2] = @"Timeout";
  v38[3] = @"NameOverride";
  v39[3] = [NSString stringWithFormat:@"CoreCapture Collect (24h + %@)", v8];
  v9 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:4];
  v35[1] = @"NameOverride";
  v36[0] = v8;
  v35[0] = @"Reason";
  v36[1] = [NSString stringWithFormat:@"CoreCapture Dump (%@)", v8];
  v37[0] = [W5LogItemRequest requestWithItemID:21 configuration:[NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2]];
  v37[1] = [W5LogItemRequest requestWithItemID:69 configuration:&off_1000F2630];
  v37[2] = [W5LogItemRequest requestWithItemID:19 configuration:v9];
  v33[0] = @"Requests";
  v33[1] = @"RunConcurrent";
  v34[0] = [NSArray arrayWithObjects:v37 count:3];
  v34[1] = &__kCFBooleanFalse;
  v34[2] = @"CoreCapture (POST + 24h)";
  v33[2] = @"NameOverride";
  v33[3] = @"Timeout";
  v34[3] = &off_1000EF4B8;
  v16 = [W5LogItemRequest requestWithItemID:53 configuration:[NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:4]];
  v32[0] = [W5LogItemRequest requestWithItemID:39 configuration:0];
  v32[1] = [W5LogItemRequest requestWithItemID:69 configuration:&off_1000F2658];
  v32[2] = [W5LogItemRequest requestWithItemID:37 configuration:&off_1000F2680];
  v30[0] = @"Requests";
  v30[1] = @"RunConcurrent";
  v31[0] = [NSArray arrayWithObjects:v32 count:3];
  v31[1] = &__kCFBooleanFalse;
  v30[2] = @"NameOverride";
  v30[3] = @"Timeout";
  v31[2] = @"Wi-Fi Logs (24h)";
  v31[3] = &off_1000EF4B8;
  v15 = [W5LogItemRequest requestWithItemID:53 configuration:[NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:4]];
  v10 = [+[NSUUID UUID](NSUUID UUIDString];
  v27 = @"UUID";
  v28 = v10;
  v29[0] = [W5LogItemRequest requestWithItemID:24 configuration:[NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1]];
  v29[1] = [W5LogItemRequest requestWithItemID:69 configuration:&off_1000F26A8];
  v25[0] = @"Requests";
  v25[1] = @"RunConcurrent";
  v26[0] = [NSArray arrayWithObjects:v29 count:2];
  v26[1] = &__kCFBooleanFalse;
  v25[2] = @"NameOverride";
  v26[2] = @"TCP Dump (Begin)";
  v11 = [W5LogItemRequest requestWithItemID:53 configuration:[NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3]];
  v22 = @"UUID";
  v23 = v10;
  v24[0] = [W5LogItemRequest requestWithItemID:25 configuration:[NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1]];
  v24[1] = [W5LogItemRequest requestWithItemID:69 configuration:&off_1000F26D0];
  v20[0] = @"Requests";
  v20[1] = @"RunConcurrent";
  v21[0] = [NSArray arrayWithObjects:v24 count:2];
  v20[2] = @"NameOverride";
  v21[1] = &__kCFBooleanFalse;
  v21[2] = @"TCP Dump (POST)";
  v12 = [W5LogItemRequest requestWithItemID:53 configuration:[NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3]];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 28, &off_1000F26F8)}];
  [v4 addObject:v17];
  [v4 addObject:v11];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 81, &off_1000F2720)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 61, &off_1000F2748)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 3, &off_1000F2770)}];
  if (v18)
  {
    v13 = 2;
  }

  else
  {
    v13 = 43;
  }

  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", v13, 0)}];
  [v4 addObject:{-[W5LogManager __connectivityDiagnosticsLogItemWithTimeout:](self, "__connectivityDiagnosticsLogItemWithTimeout:", 0.0)}];
  [v4 addObject:{-[W5LogManager __configurationDiagnosticsLogItemWithTimeout:](self, "__configurationDiagnosticsLogItemWithTimeout:", 0.0)}];
  [v4 addObject:{-[W5LogManager __environmentDiagnosticsLogItemWithTimeout:](self, "__environmentDiagnosticsLogItemWithTimeout:", 0.0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 3, &off_1000F2798)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 62, &off_1000F27C0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 81, &off_1000F27E8)}];
  [v4 addObject:v12];
  [v4 addObject:v16];
  [v4 addObject:v15];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 70, &off_1000F2810)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 40, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 30, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 33, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 45, &off_1000F2838)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 46, &off_1000F2860)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 44, &off_1000F2888)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 47, &off_1000F28B0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 6, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 9, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 4, 0)}];
  if (os_variant_has_internal_diagnostics())
  {
    [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 86, 0)}];
  }

  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 7, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 16, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 49, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 48, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 58, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 57, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 5, &off_1000F28D8)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 51, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 18, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 74, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 78, &off_1000F2900)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 80, 0)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 85, &off_1000F2928)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 84, &off_1000F2950)}];
  [v4 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 88, &off_1000F2978)}];
  return v4;
}

- (id)__logItemsForFeedbackAssistant
{
  v3 = [NSString stringWithFormat:@"%@~fba", @"WiFiDebug"];

  return [(W5LogManager *)self __logItemsForWiFiDiagnosticsExtensionWithCoreCapturePrefix:v3];
}

- (id)__logItemsForTapToRadar
{
  v2 = [(W5LogManager *)self __logItemsForWiFiDiagnosticsExtensionWithCoreCapturePrefix:[NSString stringWithFormat:@"%@~ttr", @"WiFiDebug"]];
  if (!os_variant_has_internal_content())
  {
    return v2;
  }

  v3 = [W5LogItemRequest requestWithItemID:87 configuration:0];

  return [v2 arrayByAddingObject:v3];
}

- (id)__logItemsForInternalWiFiSettings
{
  v3 = [NSString stringWithFormat:@"%@~settings", @"WiFiDebug"];

  return [(W5LogManager *)self __logItemsForWiFiDiagnosticsExtensionWithCoreCapturePrefix:v3];
}

- (id)__concurrentConnectivityDiagnosticsTest
{
  v2 = objc_alloc_init(W5DiagnosticsTestRequest);
  [v2 setTestID:53];
  v3 = [+[NSFileManager defaultManager](NSFileManager isExecutableFileAtPath:"isExecutableFileAtPath:", @"/sbin/ping"];
  v4 = [+[NSFileManager defaultManager](NSFileManager isExecutableFileAtPath:"isExecutableFileAtPath:", @"/sbin/ping6"];
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  if (v3)
  {
    v6 = 4;
  }

  else
  {
    v6 = 6;
  }

  v7 = +[NSMutableArray array];
  [v7 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", v5, &off_1000F29A0)}];
  [v7 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", v5, &off_1000F29C8)}];
  [v7 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", v5, &off_1000F29F0)}];
  [v7 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", v5, &off_1000F2A18)}];
  [v7 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", v6, &off_1000F2A40)}];
  [v7 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", v6, &off_1000F2A68)}];
  if (v3)
  {
    [v7 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 1, &off_1000F2A90)}];
    [v7 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 1, &off_1000F2AB8)}];
    [v7 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 1, &off_1000F2AE0)}];
    [v7 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 1, &off_1000F2B08)}];
  }

  if (v4)
  {
    [v7 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 59, &off_1000F2B30)}];
  }

  [v7 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 7, 0)}];
  [v7 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 9, 0)}];
  if ([+[NSFileManager isExecutableFileAtPath:"isExecutableFileAtPath:"]
  {
    v8 = 54;
  }

  else
  {
    v8 = 11;
  }

  [v7 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", v8, 0)}];
  v10[0] = @"ConcurrentRequests";
  v10[1] = @"NameOverride";
  v11[0] = v7;
  v11[1] = @"Connectivity (Concurrent)";
  [v2 setConfiguration:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v11, v10, 2)}];
  return v2;
}

- (id)__configurationDiagnosticsLogItemWithTimeout:(double)a3
{
  v4 = +[NSMutableArray array];
  v5 = +[NSMutableDictionary dictionary];
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"UseCachedStatus"];
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"UseCachedPNL"];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 52, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 12, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 13, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 57, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 58, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 14, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 15, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 16, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 17, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 18, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 19, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 20, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 21, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 22, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 51, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 32, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 34, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 35, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 38, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 40, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 39, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 41, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 44, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 45, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 33, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 42, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 46, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 43, v5)}];
  v8[0] = v4;
  v7[0] = @"DiagnosticsTests";
  v7[1] = @"Timeout";
  v8[1] = [NSNumber numberWithDouble:a3];
  v8[2] = @"WiFi Conf Diagnostics";
  v7[2] = @"NameOverride";
  v7[3] = @"FileNameOverride";
  v8[3] = @"diagnostics-configuration.txt";
  return [W5LogItemRequest requestWithItemID:26 configuration:[NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4]];
}

- (id)__environmentDiagnosticsLogItemWithTimeout:(double)a3
{
  v4 = +[NSMutableArray array];
  v5 = +[NSMutableDictionary dictionary];
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"UseCachedStatus"];
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"UseCachedPNL"];
  [v5 setObject:&off_1000EF680 forKeyedSubscript:@"MaxScanCacheAge"];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 24, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 27, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 28, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 30, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 31, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 36, v5)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 37, v5)}];
  v8[0] = v4;
  v7[0] = @"DiagnosticsTests";
  v7[1] = @"Timeout";
  v8[1] = [NSNumber numberWithDouble:a3];
  v8[2] = @"WiFi Env Diagnostics";
  v7[2] = @"NameOverride";
  v7[3] = @"FileNameOverride";
  v8[3] = @"diagnostics-environment.txt";
  return [W5LogItemRequest requestWithItemID:26 configuration:[NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4]];
}

- (id)__connectivityDiagnosticsLogItemWithTimeout:(double)a3
{
  v4 = +[NSMutableArray array];
  v5 = [+[NSFileManager defaultManager](NSFileManager isExecutableFileAtPath:"isExecutableFileAtPath:", @"/sbin/ping"];
  v6 = [+[NSFileManager defaultManager](NSFileManager isExecutableFileAtPath:"isExecutableFileAtPath:", @"/sbin/ping6"];
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  if (v5)
  {
    v8 = 4;
  }

  else
  {
    v8 = 6;
  }

  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", v7, &off_1000F2B58)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", v7, &off_1000F2B80)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", v7, &off_1000F2BA8)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", v7, &off_1000F2BD0)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", v8, &off_1000F2BF8)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", v8, &off_1000F2C20)}];
  if (v5)
  {
    [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 1, &off_1000F2C48)}];
    [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 1, &off_1000F2C70)}];
    [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 1, &off_1000F2C98)}];
    [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 1, &off_1000F2CC0)}];
  }

  if (v6)
  {
    [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 59, &off_1000F2CE8)}];
  }

  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 7, 0)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 9, 0)}];
  if ([+[NSFileManager isExecutableFileAtPath:"isExecutableFileAtPath:"]
  {
    v9 = 54;
  }

  else
  {
    v9 = 11;
  }

  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", v9, 0)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 8, 0)}];
  [v4 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 49, 0)}];
  v12[0] = v4;
  v11[0] = @"DiagnosticsTests";
  v11[1] = @"Timeout";
  v12[1] = [NSNumber numberWithDouble:a3];
  v12[2] = @"WiFi Conn Diagnostics";
  v11[2] = @"NameOverride";
  v11[3] = @"FileNameOverride";
  v12[3] = @"diagnostics-connectivity.txt";
  return [W5LogItemRequest requestWithItemID:26 configuration:[NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4]];
}

- (id)__fastConnectivityDiagnosticsLogItemWithTimeout:(double)a3
{
  v6[0] = @"DiagnosticsTests";
  v5 = [(W5LogManager *)self __concurrentConnectivityDiagnosticsTest];
  v7[0] = [NSArray arrayWithObjects:&v5 count:1];
  v6[1] = @"Timeout";
  v7[1] = [NSNumber numberWithDouble:a3];
  v7[2] = @"WiFi Conn Diagnostics";
  v6[2] = @"NameOverride";
  v6[3] = @"FileNameOverride";
  v7[3] = @"diagnostics-connectivity.txt";
  return [W5LogItemRequest requestWithItemID:26 configuration:[NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:4]];
}

- (BOOL)__allowCoreCapture
{
  if (qword_100106C28 != -1)
  {
    dispatch_once(&qword_100106C28, &stru_1000E2D38);
  }

  return byte_100106C20;
}

- (id)__logItemsForSysdiagnoseWithFilteredContent:(BOOL)a3 useMegaWiFiProfileLimits:(BOOL)a4 timeout:(int64_t)a5
{
  v44 = a3;
  v41 = +[NSMutableArray array];
  v43 = [+[NSUUID UUID](NSUUID UUIDString];
  v35 = a5 > 35999 && a4;
  v8 = 4000;
  if (v35)
  {
    v8 = 6000;
  }

  v40 = v8;
  if (a5 > 35999 && a4)
  {
    v9 = 24000;
  }

  else
  {
    v9 = 7000;
  }

  v10 = 2000;
  if (a5 > 35999 && a4)
  {
    v10 = 3000;
  }

  v34 = v10;
  +[NSDate timeIntervalSinceReferenceDate];
  v12 = v11;
  v42 = self;
  [(NSDate *)[(W5LogItemRequestInternal *)self->_activeRequest addedAt] timeIntervalSinceReferenceDate];
  v14 = (v12 - v13);
  v15 = v9;
  if ((a5 - v14) * 0.4 >= v9)
  {
    v15 = (a5 - v14) * 0.4;
  }

  v16 = v15;
  if (v9 == v15)
  {
    v36 = v9;
  }

  else
  {
    v17 = sub_100098A04();
    v36 = v16;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v95 = 134218752;
      v96 = v9;
      v97 = 2048;
      v98 = v16;
      v99 = 2048;
      v100 = a5;
      v101 = 2048;
      v102 = v14;
      LODWORD(v31) = 42;
      v30 = &v95;
      _os_log_send_and_compose_impl();
    }
  }

  v18 = [+[NSUUID UUID](NSUUID UUIDString:v30];
  v92[0] = @"Reason";
  v92[1] = @"NameOverride";
  v93[0] = [NSString stringWithFormat:@"%@~sysdiag~PRE[%@]", @"WiFiDebug", [(NSString *)v18 substringToIndex:5]];
  v38 = v93[0];
  v93[1] = [NSString stringWithFormat:@"CoreCapture Dump (%@)", v93[0]];
  v94 = [W5LogItemRequest requestWithItemID:21 configuration:[NSDictionary dictionaryWithObjects:v93 forKeys:v92 count:2]];
  v90[0] = @"Requests";
  v90[1] = @"RunConcurrent";
  v91[0] = [NSArray arrayWithObjects:&v94 count:1];
  v91[1] = &__kCFBooleanFalse;
  v90[2] = @"NameOverride";
  v91[2] = @"CoreCapture Dump (PRE)";
  v33 = [W5LogItemRequest requestWithItemID:53 configuration:[NSDictionary dictionaryWithObjects:v91 forKeys:v90 count:3]];
  v87 = @"UUID";
  v39 = [+[NSUUID UUID](NSUUID UUIDString];
  v88 = v39;
  v89[0] = [W5LogItemRequest requestWithItemID:24 configuration:[NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1]];
  v89[1] = [W5LogItemRequest requestWithItemID:69 configuration:&off_1000F2D10];
  v85[0] = @"Requests";
  v85[1] = @"RunConcurrent";
  v86[0] = [NSArray arrayWithObjects:v89 count:2];
  v86[1] = &__kCFBooleanFalse;
  v85[2] = @"NameOverride";
  v86[2] = @"TCP Dump (PRE)";
  v32 = [W5LogItemRequest requestWithItemID:53 configuration:[NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:3]];
  v84[0] = [W5LogItemRequest requestWithItemID:39 configuration:0];
  v84[1] = [W5LogItemRequest requestWithItemID:57 configuration:0];
  v84[2] = [W5LogItemRequest requestWithItemID:45 configuration:&off_1000F2D38];
  v84[3] = [W5LogItemRequest requestWithItemID:46 configuration:&off_1000F2D60];
  v84[4] = [(W5LogManager *)v42 __configurationDiagnosticsLogItemWithTimeout:0.0];
  v84[5] = [W5LogItemRequest requestWithItemID:48 configuration:0];
  v84[6] = [W5LogItemRequest requestWithItemID:28 configuration:&off_1000F2D88];
  v84[7] = [W5LogItemRequest requestWithItemID:80 configuration:0];
  v84[8] = [W5LogItemRequest requestWithItemID:85 configuration:&off_1000F2DB0];
  v84[9] = [W5LogItemRequest requestWithItemID:84 configuration:&off_1000F2DD8];
  v84[10] = [W5LogItemRequest requestWithItemID:88 configuration:&off_1000F2E00];
  v82[0] = @"Requests";
  v82[1] = @"RunConcurrent";
  v83[0] = [NSArray arrayWithObjects:v84 count:11];
  v83[1] = &__kCFBooleanFalse;
  v82[2] = @"NameOverride";
  v83[2] = @"Wi-Fi Status / Scan";
  v19 = [W5LogItemRequest requestWithItemID:53 configuration:[NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:3]];
  if (v35)
  {
    v20 = 30000000;
  }

  else
  {
    v20 = 4000000;
  }

  v81[0] = &off_1000EF4D0;
  v80[0] = @"MaxAge";
  v80[1] = @"MaxSize";
  v81[1] = [NSNumber numberWithInteger:v20];
  v80[2] = @"FilterContent";
  v81[2] = [NSNumber numberWithBool:v44];
  v81[3] = &__kCFBooleanTrue;
  v80[3] = @"Compress";
  v80[4] = @"ExcludeMatching";
  v80[5] = @"NameOverride";
  v81[4] = [NSRegularExpression escapedPatternForString:[(NSString *)v18 substringToIndex:5]];
  v81[5] = @"CoreCapture Collect (24h)";
  v21 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:6];
  v79[0] = v33;
  v79[1] = v19;
  v79[2] = [W5LogItemRequest requestWithItemID:61 configuration:&off_1000F2E28];
  v79[3] = [W5LogItemRequest requestWithItemID:4 configuration:0];
  v79[4] = [W5LogItemRequest requestWithItemID:7 configuration:0];
  v79[5] = [W5LogItemRequest requestWithItemID:33 configuration:0];
  v79[6] = [W5LogItemRequest requestWithItemID:58 configuration:0];
  v79[7] = [W5LogItemRequest requestWithItemID:47 configuration:&off_1000F2E50];
  v79[8] = [W5LogItemRequest requestWithItemID:44 configuration:&off_1000F2E78];
  v79[9] = [W5LogItemRequest requestWithItemID:19 configuration:v21];
  v79[10] = [W5LogItemRequest requestWithItemID:70 configuration:&off_1000F2EA0];
  v22 = [NSArray arrayWithObjects:v79 count:11];
  if (!v44)
  {
    v22 = [(NSArray *)v22 arrayByAddingObject:v32];
  }

  v77[0] = @"Requests";
  v77[1] = @"RunConcurrent";
  v78[0] = v22;
  v78[1] = &__kCFBooleanTrue;
  v78[2] = v43;
  v77[2] = @"AddLeewayUUID";
  v77[3] = @"Timeout";
  v77[4] = @"NameOverride";
  v78[3] = [NSNumber numberWithUnsignedInteger:v34];
  v78[4] = @"Connectivity (PRE)";
  [v41 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 53, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v78, v77, 5))}];
  v76[0] = [W5LogItemRequest requestWithItemID:81 configuration:&off_1000F2EC8];
  v76[1] = [W5LogItemRequest requestWithItemID:3 configuration:&off_1000F2EF0];
  v76[2] = [(W5LogManager *)v42 __fastConnectivityDiagnosticsLogItemWithTimeout:2000.0];
  v76[3] = [W5LogItemRequest requestWithItemID:3 configuration:&off_1000F2F18];
  v76[4] = [W5LogItemRequest requestWithItemID:81 configuration:&off_1000F2F40];
  v76[5] = [W5LogItemRequest requestWithItemID:62 configuration:&off_1000F2F68];
  v74[0] = @"Requests";
  v74[1] = @"RunConcurrent";
  v75[0] = [NSArray arrayWithObjects:v76 count:6];
  v75[1] = &__kCFBooleanFalse;
  v75[2] = v43;
  v74[2] = @"AddLeewayUUID";
  v74[3] = @"Timeout";
  v74[4] = @"NameOverride";
  v75[3] = [NSNumber numberWithUnsignedInteger:v36];
  v75[4] = @"Connectivity (DIAG)";
  [v41 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 53, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v75, v74, 5))}];
  v23 = [NSString stringWithFormat:@"%@~sysdiag~POST[%@]", @"WiFiDebug", [(NSString *)v18 substringToIndex:5]];
  v72[0] = @"IncludeMatching";
  v73[0] = [NSRegularExpression escapedPatternForString:v23];
  v72[1] = @"FilterContent";
  v73[1] = [NSNumber numberWithBool:v44];
  v73[2] = &__kCFBooleanTrue;
  v72[2] = @"Compress";
  v72[3] = @"NameOverride";
  v73[3] = [NSString stringWithFormat:@"CoreCapture Collect (%@)", v23];
  v24 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:4];
  v70[0] = v23;
  v69[0] = @"Reason";
  v69[1] = @"NameOverride";
  v70[1] = [NSString stringWithFormat:@"CoreCapture Dump (%@)", v23];
  v71[0] = [W5LogItemRequest requestWithItemID:21 configuration:[NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:2]];
  v67[0] = @"Delay";
  v67[1] = @"UseLeewayUUID";
  v68[0] = [NSNumber numberWithUnsignedInteger:v40 - 400];
  v68[1] = v43;
  v71[1] = [W5LogItemRequest requestWithItemID:69 configuration:[NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:2]];
  v71[2] = [W5LogItemRequest requestWithItemID:19 configuration:v24];
  v65[0] = @"Requests";
  v65[1] = @"RunConcurrent";
  v66[0] = [NSArray arrayWithObjects:v71 count:3];
  v66[1] = &__kCFBooleanFalse;
  v66[2] = v43;
  v65[2] = @"UseLeewayUUID";
  v65[3] = @"Timeout";
  v65[4] = @"NameOverride";
  v66[3] = [NSNumber numberWithUnsignedInteger:v40];
  v66[4] = @"CoreCapture (POST)";
  v37 = [W5LogItemRequest requestWithItemID:53 configuration:[NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:5]];
  v63[0] = @"IncludeMatching";
  v64[0] = [NSRegularExpression escapedPatternForString:v38];
  v63[1] = @"FilterContent";
  v64[1] = [NSNumber numberWithBool:v44];
  v64[2] = &__kCFBooleanTrue;
  v63[2] = @"Compress";
  v63[3] = @"NameOverride";
  v64[3] = [NSString stringWithFormat:@"CoreCapture Collect (%@)", v38];
  v25 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:4];
  v60[0] = @"Delay";
  v60[1] = @"UseLeewayUUID";
  v61[0] = &off_1000EF4B8;
  v61[1] = v43;
  v62[0] = [W5LogItemRequest requestWithItemID:69 configuration:[NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2]];
  v62[1] = [W5LogItemRequest requestWithItemID:19 configuration:v25];
  v58[0] = @"Requests";
  v58[1] = @"RunConcurrent";
  v59[0] = [NSArray arrayWithObjects:v62 count:2];
  v59[1] = &__kCFBooleanFalse;
  v59[2] = v43;
  v58[2] = @"UseLeewayUUID";
  v58[3] = @"Timeout";
  v58[4] = @"NameOverride";
  v59[3] = [NSNumber numberWithUnsignedInteger:v40];
  v59[4] = @"CoreCapture (PRE)";
  v26 = [W5LogItemRequest requestWithItemID:53 configuration:[NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:5]];
  v55 = @"UUID";
  v56 = v39;
  v57[0] = [W5LogItemRequest requestWithItemID:25 configuration:[NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1]];
  v57[1] = [W5LogItemRequest requestWithItemID:69 configuration:&off_1000F2F90];
  v53[0] = @"Requests";
  v53[1] = @"RunConcurrent";
  v54[0] = [NSArray arrayWithObjects:v57 count:2];
  v53[2] = @"NameOverride";
  v54[1] = &__kCFBooleanFalse;
  v54[2] = @"TCP Dump (POST)";
  v27 = [W5LogItemRequest requestWithItemID:53 configuration:[NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:3]];
  v52[0] = [W5LogItemRequest requestWithItemID:28 configuration:&off_1000F2FB8];
  v52[1] = [(W5LogManager *)v42 __environmentDiagnosticsLogItemWithTimeout:0.0];
  v50[0] = @"Requests";
  v50[1] = @"RunConcurrent";
  v51[0] = [NSArray arrayWithObjects:v52 count:2];
  v51[1] = &__kCFBooleanFalse;
  v50[2] = @"NameOverride";
  v51[2] = @"WiFi Env Diagnostics";
  v49[0] = v37;
  v49[1] = v26;
  v49[2] = [W5LogItemRequest requestWithItemID:53 configuration:[NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:3]];
  v49[3] = [W5LogItemRequest requestWithItemID:37 configuration:&off_1000F2FE0];
  v49[4] = [W5LogItemRequest requestWithItemID:40 configuration:0];
  v47[0] = @"Delay";
  v47[1] = @"UseLeewayUUID";
  v48[0] = [NSNumber numberWithUnsignedInteger:v40];
  v48[1] = v43;
  v49[5] = [W5LogItemRequest requestWithItemID:69 configuration:[NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2]];
  v28 = [NSArray arrayWithObjects:v49 count:6];
  if (!v44)
  {
    v28 = [(NSArray *)v28 arrayByAddingObject:v27];
  }

  v45[0] = @"Requests";
  v45[1] = @"RunConcurrent";
  v46[0] = v28;
  v46[1] = &__kCFBooleanTrue;
  v46[2] = v43;
  v45[2] = @"UseLeewayUUID";
  v45[3] = @"Timeout";
  v45[4] = @"NameOverride";
  v46[3] = [NSNumber numberWithUnsignedInteger:v40];
  v46[4] = @"Connectivity (POST)";
  [v41 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 53, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v46, v45, 5))}];
  return v41;
}

- (id)__model
{
  v2 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (!MatchingService)
  {
    return 0;
  }

  v4 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"model", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v6 = CFProperty;
    v7 = [[NSString alloc] initWithFormat:@"%@", +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", CFDataGetBytePtr(CFProperty), 4)];
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  IOObjectRelease(v4);
  return v7;
}

- (id)__basicWiFiLogsWithFilteredContent:(BOOL)a3 useMegaWiFiProfileLimits:(BOOL)a4
{
  v4 = a4;
  v23 = a3;
  v6 = +[NSMutableArray array];
  model = self->_model;
  if (!model)
  {
    goto LABEL_5;
  }

  if ([(NSString *)model rangeOfString:@"Watch1"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
    v9 = 1;
    goto LABEL_11;
  }

  v8 = self->_model;
  if (v8 && [(NSString *)v8 rangeOfString:@"Watch2"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 1;
    v9 = 2;
  }

  else
  {
LABEL_5:
    if (v4)
    {
      v9 = 8;
    }

    else
    {
      v9 = 4;
    }

    v10 = 1;
  }

LABEL_11:
  v11 = sub_100098A04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_model;
    v51 = 136316930;
    v52 = "[W5LogManager __basicWiFiLogsWithFilteredContent:useMegaWiFiProfileLimits:]";
    v53 = 2080;
    v54 = "W5LogManager.m";
    v55 = 1024;
    v56 = 2411;
    v57 = 2114;
    v58 = v12;
    v59 = 2048;
    v60 = v9;
    v61 = 1024;
    v62 = v10;
    v63 = 1024;
    v64 = v4;
    v65 = 1024;
    v66 = v10;
    LODWORD(v21) = 66;
    v20 = &v51;
    _os_log_send_and_compose_impl();
  }

  v13 = [+[NSUUID UUID](NSUUID UUIDString:v20];
  v14 = [NSString stringWithFormat:@"%@~sysdiag", @"WiFiDebug"];
  v48 = @"TimestampUUID";
  v49 = [+[NSUUID UUID](NSUUID UUIDString];
  v22 = v49;
  v50[0] = [W5LogItemRequest requestWithItemID:39 configuration:[NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1]];
  v50[1] = [W5LogItemRequest requestWithItemID:45 configuration:&off_1000F3378];
  v50[2] = [W5LogItemRequest requestWithItemID:46 configuration:&off_1000F33A0];
  v50[3] = [W5LogItemRequest requestWithItemID:28 configuration:&off_1000F33C8];
  v46[0] = @"Requests";
  v46[1] = @"RunConcurrent";
  v47[0] = [NSArray arrayWithObjects:v50 count:4];
  v47[1] = &__kCFBooleanFalse;
  v46[2] = @"NameOverride";
  v47[2] = @"Wi-Fi Status / Scan";
  v45[0] = [W5LogItemRequest requestWithItemID:53 configuration:[NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:3]];
  v43[0] = @"Reason";
  v43[1] = @"TimestampUUID";
  v44[0] = v14;
  v44[1] = v13;
  v45[1] = [W5LogItemRequest requestWithItemID:21 configuration:[NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2]];
  v45[2] = [W5LogItemRequest requestWithItemID:70 configuration:&off_1000F33F0];
  v15 = [NSArray arrayWithObjects:v45 count:3];
  if (v10)
  {
    v16 = +[NSMutableArray array];
    [v16 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 81, &off_1000F3418)}];
    [v16 addObject:{-[W5LogManager __fastConnectivityDiagnosticsLogItemWithTimeout:](self, "__fastConnectivityDiagnosticsLogItemWithTimeout:", 0.0)}];
    [v16 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 81, &off_1000F3440)}];
    v41[0] = @"Requests";
    v41[1] = @"RunConcurrent";
    v42[0] = v16;
    v42[1] = &__kCFBooleanFalse;
    v41[2] = @"NameOverride";
    v42[2] = @"Wi-Fi Diagnostics";
    v15 = [(NSArray *)v15 arrayByAddingObject:[W5LogItemRequest requestWithItemID:53 configuration:[NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3]]];
  }

  v39[0] = @"Requests";
  v39[1] = @"RunConcurrent";
  v40[0] = v15;
  v40[1] = &__kCFBooleanTrue;
  v39[2] = @"Timeout";
  v39[3] = @"NameOverride";
  v40[2] = &off_1000EF6F8;
  v40[3] = @"Wi-Fi Status / Diagnostics";
  [v6 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 53, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v40, v39, 4))}];
  v37[0] = @"MaxCount";
  v38[0] = [NSNumber numberWithUnsignedInteger:v9];
  v37[1] = @"FilterContent";
  v38[1] = [NSNumber numberWithBool:v23];
  v37[2] = @"Compress";
  v38[2] = [NSNumber numberWithBool:v10];
  v17 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:3];
  v34[0] = @"Delay";
  v34[1] = @"TimestampUUID";
  v35[0] = &off_1000EF710;
  v35[1] = v13;
  v36[0] = [W5LogItemRequest requestWithItemID:69 configuration:[NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2]];
  v36[1] = [W5LogItemRequest requestWithItemID:19 configuration:v17];
  v32[0] = @"Requests";
  v32[1] = @"RunConcurrent";
  v33[0] = [NSArray arrayWithObjects:v36 count:2];
  v32[2] = @"Timeout";
  v32[3] = @"NameOverride";
  v33[1] = &__kCFBooleanFalse;
  v33[2] = &off_1000EF4B8;
  v33[3] = @"CoreCapture";
  v18 = [W5LogItemRequest requestWithItemID:53 configuration:[NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4]];
  v29[0] = @"Delay";
  v29[1] = @"TimestampUUID";
  v30[0] = &off_1000EF518;
  v30[1] = v22;
  v31[0] = [W5LogItemRequest requestWithItemID:69 configuration:[NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2]];
  v31[1] = [W5LogItemRequest requestWithItemID:37 configuration:&off_1000F3468];
  v27[0] = @"Requests";
  v27[1] = @"RunConcurrent";
  v28[0] = [NSArray arrayWithObjects:v31 count:2];
  v28[1] = &__kCFBooleanFalse;
  v27[2] = @"Timeout";
  v27[3] = @"NameOverride";
  v28[2] = &off_1000EF4B8;
  v28[3] = @"WiFi Logs";
  v26[0] = v18;
  v26[1] = [W5LogItemRequest requestWithItemID:53 configuration:[NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:4]];
  v26[2] = [W5LogItemRequest requestWithItemID:40 configuration:0];
  v26[3] = [W5LogItemRequest requestWithItemID:28 configuration:&off_1000F3490];
  v24[0] = @"Requests";
  v24[1] = @"RunConcurrent";
  v25[0] = [NSArray arrayWithObjects:v26 count:4];
  v24[2] = @"Timeout";
  v24[3] = @"NameOverride";
  v25[1] = &__kCFBooleanTrue;
  v25[2] = &off_1000EF728;
  v25[3] = @"Collect WiFi / CoreCapture";
  [v6 addObject:{+[W5LogItemRequest requestWithItemID:configuration:](W5LogItemRequest, "requestWithItemID:configuration:", 53, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v25, v24, 4))}];
  return v6;
}

- (id)__expandLogItems:(id)a3 configuration:(id)a4
{
  v7 = +[NSMutableArray array];
  v19 = [objc_msgSend(a4 objectForKeyedSubscript:{@"UseMegaWiFiProfileLimits", "BOOLValue"}];
  v8 = [a4 objectForKeyedSubscript:@"FilterContent"];
  if (v8)
  {
    v9 = [v8 BOOLValue];
  }

  else
  {
    os_variant_has_internal_diagnostics();
    v9 = 0;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [a3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v10)
  {
    goto LABEL_41;
  }

  v11 = v10;
  v12 = *v21;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v21 != v12)
      {
        objc_enumerationMutation(a3);
      }

      v14 = *(*(&v20 + 1) + 8 * i);
      v15 = [v14 itemID];
      if (v15 > 70)
      {
        if (v15 <= 78)
        {
          if (v15 == 71)
          {
            v17 = -[W5LogManager __logItemsForDumpLogsEventWithReason:filteredContent:](self, "__logItemsForDumpLogsEventWithReason:filteredContent:", [objc_msgSend(v14 "configuration")], v9);
            goto LABEL_38;
          }

          if (v15 == 72)
          {
            v17 = [(W5LogManager *)self __logItemsForDatapathStallEventWithFilteredContent:v9];
            goto LABEL_38;
          }

          if (v15 != 77)
          {
            goto LABEL_36;
          }

LABEL_20:
          v17 = [(W5LogManager *)self __logItemsForWiFiDiagnosticsApp];
          goto LABEL_38;
        }

        switch(v15)
        {
          case 'O':
            v17 = -[W5LogManager __logItemsForBTSysdiagnoseWithFilteredContent:timeout:](self, "__logItemsForBTSysdiagnoseWithFilteredContent:timeout:", v9, [objc_msgSend(a4 objectForKeyedSubscript:{@"Timeout", "integerValue"}]);
            break;
          case 'R':
            v17 = -[W5LogManager __logItemsForABCWithReason:filteredContent:](self, "__logItemsForABCWithReason:filteredContent:", [objc_msgSend(v14 "configuration")], v9);
            break;
          case 'S':
            v17 = -[W5LogManager __logItemsForBackgroundEventWithReason:filteredContent:](self, "__logItemsForBackgroundEventWithReason:filteredContent:", [objc_msgSend(v14 "configuration")], v9);
            break;
          default:
LABEL_36:
            [v7 addObject:v14];
            continue;
        }
      }

      else if (v15 > 58)
      {
        switch(v15)
        {
          case ';':
            v17 = [(W5LogManager *)self __logItemsForFeedbackAssistant];
            break;
          case '<':
            v17 = [(W5LogManager *)self __logItemsForTapToRadar];
            break;
          case 'C':
            v17 = [(W5LogManager *)self __logItemsForInternalWiFiSettings];
            break;
          default:
            goto LABEL_36;
        }
      }

      else
      {
        switch(v15)
        {
          case '6':
            goto LABEL_20;
          case '7':
            v17 = [(W5LogManager *)self __logItemsForWiFiDiagnosticsExtensionWithCoreCapturePrefix:[NSString stringWithFormat:@"%@~wdext", @"WiFiDebug"]];
            break;
          case '8':
            v16 = [objc_msgSend(a4 objectForKeyedSubscript:{@"Timeout", "integerValue"}];
            if (v16)
            {
              v17 = [(W5LogManager *)self __logItemsForSysdiagnoseWithFilteredContent:v9 useMegaWiFiProfileLimits:v19 timeout:v16];
            }

            else
            {
              v17 = [(W5LogManager *)self __logItemsForSysdiagnoseWithNoTimeoutAndFilteredContent:v9 useMegaWiFiProfileLimits:v19];
            }

            break;
          default:
            goto LABEL_36;
        }
      }

LABEL_38:
      [v7 addObjectsFromArray:{-[W5LogManager __expandLogItems:configuration:](self, "__expandLogItems:configuration:", v17, a4)}];
    }

    v11 = [a3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v11);
LABEL_41:
  result = [v7 count];
  if (result)
  {
    return [v7 copy];
  }

  return result;
}

- (void)__runRequest:(id)a3 reply:(id)a4
{
  v7 = -[W5LogManager __expandLogItems:configuration:](self, "__expandLogItems:configuration:", [a3 itemRequests], objc_msgSend(a3, "configuration"));
  debugLogQueue = self->_debugLogQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064560;
  block[3] = &unk_1000E1948;
  block[4] = self;
  block[5] = a3;
  block[6] = v7;
  dispatch_sync(debugLogQueue, block);
  v9 = -[NSURL URLByAppendingPathComponent:](+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"/var/run/com.apple.wifivelocity"), "URLByAppendingPathComponent:", [a3 filename]);
  if ([objc_msgSend(objc_msgSend(a3 "configuration")])
  {
    v9 = [(NSURL *)v9 URLByDeletingPathExtension];
  }

  v10 = [NSURL fileURLWithPath:@"/var/mobile" isDirectory:1];
  if (v9 && (v11 = v10) != 0)
  {
    [+[NSFileManager defaultManager](NSFileManager createDirectoryAtPath:"createDirectoryAtPath:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:[(NSURL *)v9 path] attributes:1 error:0, 0];
    v12 = [(W5StatusManager *)self->_status concurrentQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000647B4;
    v13[3] = &unk_1000E21D0;
    v13[4] = a3;
    v13[5] = v7;
    v13[6] = self;
    v13[7] = v9;
    v13[8] = v11;
    v13[9] = a4;
    [(NSOperationQueue *)v12 addOperationWithBlock:v13];
  }

  else if (a4)
  {
    v15 = NSLocalizedFailureReasonErrorKey;
    v16 = @"W5ResourceErr";
    (*(a4 + 2))(a4, [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:7 userInfo:[NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1]], 0, 0);
  }
}

- (id)__collectWiFiScanResults:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v8 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v9 = [v6 path];
  if (v7)
  {
    v10 = @"wifi_scan_cache.txt";
  }

  else
  {
    v10 = @"wifi_scan.txt";
  }

  v11 = [v9 stringByAppendingPathComponent:v10];
  v12 = objc_alloc_init(CWFScanParameters);
  [v12 setIncludeHiddenNetworks:1];
  [v12 setMergeScanResults:0];
  [v12 setCacheOnly:v7];
  if (v8)
  {
    v13 = 768;
  }

  else
  {
    v13 = 512;
  }

  [v12 setScanFlags:v13];
  [v12 setChannels:{-[CWFInterface supportedChannelsWithCountryCode:](-[W5StatusManager corewifi](self->_status, "corewifi"), "supportedChannelsWithCountryCode:", 0)}];
  [v12 setIncludeProperties:{+[NSSet setWithArray:](NSSet, "setWithArray:", &off_1000F4140)}];
  if (-[NSFileManager createFileAtPath:contents:attributes:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createFileAtPath:contents:attributes:", v11, [+[W5LogManager __logScanResults:](W5LogManager __logScanResults:{-[CWFInterface performScanWithParameters:error:](-[W5StatusManager corewifi](self->_status, "corewifi"), "performScanWithParameters:error:", v12, 0)), "dataUsingEncoding:", 4}], 0))
  {
    v15 = [NSURL fileURLWithPath:v10];
    [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v15, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectDiagnostics:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = +[NSMutableString string];
  v7 = [objc_msgSend(a3 "configuration")];
  v8 = [objc_msgSend(a3 "configuration")];
  v9 = [objc_msgSend(a3 "configuration")];
  v16 = 0;
  v10 = -[W5LogManager __runDiagnosticsTests:configuration:timeout:error:](self, "__runDiagnosticsTests:configuration:timeout:error:", v8, [a3 configuration], 0, &v16);
  [v6 appendString:@"# --- Diagnostics\n\n"];
  if (([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] powerOn]& 1) == 0)
  {
    [v6 appendString:@"!!! Wi-Fi is OFF\n\n"];
  }

  [v6 appendString:{-[W5LogManager __logDiagnosticsTestResults:](self, "__logDiagnosticsTestResults:", v10)}];
  v11 = [(W5LogManager *)self __logDiagnosticsPingResults:v10];
  if ([v11 length])
  {
    [v6 appendString:@"\n\n\n# --- Ping Results\n\n"];
    [v6 appendString:v11];
  }

  [v6 appendString:@"\n\n"];
  v12 = +[NSFileManager defaultManager];
  v13 = [v7 path];
  if (v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = @"diagnostics.txt";
  }

  if (-[NSFileManager createFileAtPath:contents:attributes:](v12, "createFileAtPath:contents:attributes:", [v13 stringByAppendingPathComponent:v14], objc_msgSend(v6, "dataUsingEncoding:", 4), 0))
  {
    v19 = [NSURL fileURLWithPath:v14];
    [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v19, 1)}];
  }

  if (v10)
  {
    v17 = @"DiagnosticsResults";
    v18 = v10;
    [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v18, &v17, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectPerSSIDDiagnosticsHistory:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  v17 = v5;
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v18 = +[NSMutableArray array];
  v7 = [(W5DiagnosticsManager *)self->_diagnostics diagnosticsHistory];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [v7 allKeys];
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [objc_msgSend(objc_msgSend(v7 objectForKeyedSubscript:{v12), "allValues"), "sortedArrayUsingComparator:", &stru_1000E2E18}];
        v14 = +[NSMutableString string];
        [v14 appendFormat:@"# --- Diagnostics (%@)\n\n", v12];
        [v14 appendString:{-[W5LogManager __logDiagnosticsTestResults:](self, "__logDiagnosticsTestResults:", v13)}];
        [v14 appendString:@"\n\n"];
        v15 = [NSString stringWithFormat:@"%@-diagnostics.txt", v12];
        if (-[NSFileManager createFileAtPath:contents:attributes:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createFileAtPath:contents:attributes:", [objc_msgSend(v6 "path")], objc_msgSend(v14, "dataUsingEncoding:", 4), 0))
        {
          [v18 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", v15)}];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  [v17 setRelativeURLs:v18];
  +[NSDate timeIntervalSinceReferenceDate];
  [v17 setCompletedAt:?];
  return v17;
}

- (id)__collectPeerDiagnostics:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = +[NSMutableString string];
  v8 = [(W5PeerDiagnosticsManager *)self->_peerDiagnostics gatherPeerDiagnostics];
  [v7 appendFormat:@"# --- Peer Diagnostics from %lu devices\n\n", objc_msgSend(v8, "count")];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 appendFormat:@"%@\n", *(*(&v14 + 1) + 8 * v12)];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }

  [v7 appendString:@"\n\n"];
  if (-[NSFileManager createFileAtPath:contents:attributes:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createFileAtPath:contents:attributes:", [objc_msgSend(v6 "path")], objc_msgSend(v7, "dataUsingEncoding:", 4), 0))
  {
    v18 = [NSURL fileURLWithPath:@"peer_diagnostics.txt"];
    [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v18, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectLeakyAPStats:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = +[NSMutableString string];
  [v7 appendString:@"# --- Leaky AP Stats\n\n"];
  [-[CWFInterface leakyAPStats](-[W5StatusManager corewifi](self->_status "corewifi")];
  [v7 appendString:sub_10001D540()];
  [v7 appendString:@"\n\n"];
  if (-[NSFileManager createFileAtPath:contents:attributes:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createFileAtPath:contents:attributes:", [objc_msgSend(v6 "path")], objc_msgSend(v7, "dataUsingEncoding:", 4), 0))
  {
    v9 = [NSURL fileURLWithPath:@"leaky_ap_stats.txt"];
    [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v9, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__browseBonjourInstancesWithServiceType:(id)a3 duration:(unint64_t)a4
{
  v6 = +[NSMutableArray array];
  v7 = [NSMutableData dataWithCapacity:0];
  v20[0] = @"-B";
  v20[1] = a3;
  [NSTask runTaskWithLaunchPath:@"/usr/bin/dns-sd" arguments:[NSArray arrayWithObjects:v20 count:2] timeout:v7 outputData:0 errorData:0 launchHandler:0 didLaunch:a4 error:0];
  if ([(NSMutableData *)v7 length])
  {
    v8 = [objc_msgSend([NSString alloc] initWithData:v7 encoding:{4), "componentsSeparatedByString:", @"\n"}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [objc_msgSend(*(*(&v15 + 1) + 8 * v12) componentsSeparatedByCharactersInSet:{+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet, "whitespaceCharacterSet")), "mutableCopy"}];
          [v13 removeObject:&stru_1000E4788];
          if ([v13 count] == 7)
          {
            [v6 addObject:{objc_msgSend(v13, "objectAtIndexedSubscript:", 6)}];
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  return [v6 copy];
}

- (id)__resolveBonjourInstance:(id)a3 serviceType:(id)a4 duration:(unint64_t)a5
{
  v8 = [NSMutableData dataWithCapacity:0];
  v10[0] = @"-L";
  v10[1] = a3;
  v10[2] = a4;
  [NSTask runTaskWithLaunchPath:@"/usr/bin/dns-sd" arguments:[NSArray arrayWithObjects:v10 count:3] timeout:v8 outputData:0 errorData:0 launchHandler:0 didLaunch:a5 error:0];
  result = [(NSMutableData *)v8 length];
  if (result)
  {
    return [[NSString alloc] initWithData:v8 encoding:4];
  }

  return result;
}

- (id)__collectBonjourRecords:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = +[NSMutableString string];
  [v7 appendString:@"# --- Bonjour Records\n\n"];
  v8 = [(W5LogManager *)self __browseBonjourInstancesWithServiceType:@"_appletv-v2._tcp" duration:1];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    do
    {
      v12 = 0;
      do
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 appendFormat:@"%@\n", -[W5LogManager __resolveBonjourInstance:serviceType:duration:](self, "__resolveBonjourInstance:serviceType:duration:", *(*(&v41 + 1) + 8 * v12), @"_appletv-v2._tcp", 1)];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v10);
  }

  v13 = [(W5LogManager *)self __browseBonjourInstancesWithServiceType:@"_airport._tcp" duration:1];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v38;
    do
    {
      v17 = 0;
      do
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v7 appendFormat:@"%@\n", -[W5LogManager __resolveBonjourInstance:serviceType:duration:](self, "__resolveBonjourInstance:serviceType:duration:", *(*(&v37 + 1) + 8 * v17), @"_airport._tcp", 1)];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v37 objects:v48 count:16];
    }

    while (v15);
  }

  v18 = [(W5LogManager *)self __browseBonjourInstancesWithServiceType:@"_homekit._tcp" duration:1];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v47 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    do
    {
      v22 = 0;
      do
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [v7 appendFormat:@"%@\n", -[W5LogManager __resolveBonjourInstance:serviceType:duration:](self, "__resolveBonjourInstance:serviceType:duration:", *(*(&v33 + 1) + 8 * v22), @"_homekit._tcp", 1)];
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v33 objects:v47 count:16];
    }

    while (v20);
  }

  v23 = [(W5LogManager *)self __browseBonjourInstancesWithServiceType:@"_hap._tcp" duration:1];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v29 objects:v46 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v30;
    do
    {
      v27 = 0;
      do
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [v7 appendFormat:@"%@\n", -[W5LogManager __resolveBonjourInstance:serviceType:duration:](self, "__resolveBonjourInstance:serviceType:duration:", *(*(&v29 + 1) + 8 * v27), @"_hap._tcp", 1)];
        v27 = v27 + 1;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v29 objects:v46 count:16];
    }

    while (v25);
  }

  if (-[NSFileManager createFileAtPath:contents:attributes:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createFileAtPath:contents:attributes:", [objc_msgSend(v6 "path")], objc_msgSend(v7, "dataUsingEncoding:", 4), 0))
  {
    v45 = [NSURL fileURLWithPath:@"bonjour_records.txt"];
    [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v45, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectAWDLStatus:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(a3 "configuration")];
  v8 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  status = self->_status;
  if (v8)
  {
    v10 = [-[W5StatusManager cachedStatusWithUUID:](status cachedStatusWithUUID:{v7), "awdl"}];
  }

  else
  {
    v10 = [(W5StatusManager *)status awdlStatus];
  }

  v11 = v10;
  v12 = +[NSMutableString string];
  [v12 appendString:@"# --- AWDL Status\n\n"];
  [v12 appendString:{-[W5LogManager __logAWDLStatus:](self, "__logAWDLStatus:", v11)}];
  [v12 appendString:@"\n\n"];
  v13 = [objc_msgSend(v6 "path")];
  if (-[NSFileManager createFileAtPath:contents:attributes:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createFileAtPath:contents:attributes:", v13, [v12 dataUsingEncoding:4], 0))
  {
    v14 = [v11 interfaceName];
    if (v14)
    {
      v15 = v14;
      v16 = [NSFileHandle fileHandleForUpdatingAtPath:v13];
      [(NSFileHandle *)v16 seekToEndOfFile];
      v19[0] = v15;
      v19[1] = @"-dbg=print_sr";
      [(W5LogManager *)self __runToolWithOutputFileHandle:v16 readFromStandardError:0 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:2 count:?], 1, 0];
      [(NSFileHandle *)v16 closeFile];
    }

    v18 = [NSURL fileURLWithPath:@"awdl_status.txt"];
    [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v18, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectNetworkStatus:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(a3 "configuration")];
  v8 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  status = self->_status;
  if (v8)
  {
    v10 = [-[W5StatusManager cachedStatusWithUUID:](status cachedStatusWithUUID:{v7), "network"}];
  }

  else
  {
    v10 = [(W5StatusManager *)status networkStatus];
  }

  v11 = v10;
  v12 = +[NSMutableString string];
  [v12 appendString:@"# --- Network Status\n\n"];
  [v12 appendString:{+[W5LogManager __logNetworkStatus:](W5LogManager, "__logNetworkStatus:", v11)}];
  [v12 appendString:@"\n\n"];
  if (-[NSFileManager createFileAtPath:contents:attributes:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createFileAtPath:contents:attributes:", [objc_msgSend(v6 "path")], objc_msgSend(v12, "dataUsingEncoding:", 4), 0))
  {
    v14 = [NSURL fileURLWithPath:@"network_status.txt"];
    [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v14, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectWiFiStatus:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(a3 "configuration")];
  v8 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  status = self->_status;
  if (v8)
  {
    v10 = [-[W5StatusManager cachedStatusWithUUID:](status cachedStatusWithUUID:{v7), "wifi"}];
  }

  else
  {
    v10 = [(W5StatusManager *)status wifiStatus];
  }

  v11 = v10;
  v12 = +[NSMutableString string];
  [v12 appendString:@"# --- Wi-Fi Status\n\n"];
  [v12 appendString:{+[W5LogManager __logWiFiStatus:](W5LogManager, "__logWiFiStatus:", v11)}];
  [v12 appendString:@"\n\n"];
  if (-[NSFileManager createFileAtPath:contents:attributes:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createFileAtPath:contents:attributes:", [objc_msgSend(v6 "path")], objc_msgSend(v12, "dataUsingEncoding:", 4), 0))
  {
    v14 = [NSURL fileURLWithPath:@"wifi_status.txt"];
    [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v14, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectBluetoothStatus:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(a3 "configuration")];
  v8 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  status = self->_status;
  if (v8)
  {
    v10 = [-[W5StatusManager cachedStatusWithUUID:](status cachedStatusWithUUID:{v7), "bluetooth"}];
  }

  else
  {
    v10 = [(W5StatusManager *)status bluetoothStatus];
  }

  v11 = v10;
  v12 = +[NSMutableString string];
  [v12 appendString:@"# --- Bluetooth Status\n\n"];
  [v12 appendString:{+[W5LogManager __logBluetoothStatus:](W5LogManager, "__logBluetoothStatus:", v11)}];
  [v12 appendString:@"\n\n"];
  if (-[NSFileManager createFileAtPath:contents:attributes:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createFileAtPath:contents:attributes:", [objc_msgSend(v6 "path")], objc_msgSend(v12, "dataUsingEncoding:", 4), 0))
  {
    v14 = [NSURL fileURLWithPath:@"bluetooth_status.txt"];
    [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v14, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collect_swvers:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  if (+[NSTask runTaskWithLaunchPath:arguments:outputFilePath:error:](NSTask, "runTaskWithLaunchPath:arguments:outputFilePath:error:", @"/usr/bin/sw_vers", 0, [objc_msgSend(objc_msgSend(objc_msgSend(a3 "configuration")], 0))
  {
    v6 = [NSURL fileURLWithPath:@"sw_vers.txt"];
    [v4 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v6, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setCompletedAt:?];
  return v4;
}

- (id)__collect_arp:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v8 = [objc_msgSend(v6 "path")];
  [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v8, 0];
  [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:v8 attributes:0, 0];
  v9 = [NSFileHandle fileHandleForUpdatingAtPath:v8];
  if (v9)
  {
    v10 = v9;
    if (v7)
    {
      v11 = &off_1000F4158;
    }

    else
    {
      v11 = &off_1000F4170;
    }

    [(W5LogManager *)self __runToolWithOutputFileHandle:v9 launchPath:@"/usr/sbin/arp" arguments:v11];
    [(NSFileHandle *)v10 closeFile];
    v13 = [NSURL fileURLWithPath:@"arp.txt"];
    [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v13, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectSystemProfiler:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  v5 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v9[0] = @"-detailLevel";
  v9[1] = @"full";
  v9[2] = @"-timeout";
  v9[3] = [NSString stringWithFormat:@"%.0f", 0x4034000000000000];
  v9[4] = @"-xml";
  v7 = 0;
  if (+[NSTask runTaskWithLaunchPath:arguments:outputFilePath:error:](NSTask, "runTaskWithLaunchPath:arguments:outputFilePath:error:", @"/usr/sbin/system_profiler", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v9, 5), [v5 path], &v7))
  {
    v8 = [NSURL fileURLWithPath:@"system_profiler.spx"];
    [v4 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v8, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setCompletedAt:?];
  return v4;
}

- (id)__collect_IMFoundationPing:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v38 = [objc_msgSend(a3 "configuration")];
  v6 = +[NSMutableData data];
  v7 = +[NSMutableString string];
  if (([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] powerOn]& 1) == 0)
  {
    [v7 appendString:@"!!! Wi-Fi is OFF\n\n"];
  }

  [v7 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  [v7 appendString:@"Ping localhost (loopback)\n"];
  [v7 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  v8 = [(W5LogManager *)self __pingUsingIMFoundationWithAddress:@"localhost" timeout:1];
  [v8 packetLoss];
  if (v9 >= 100.0)
  {
    v10 = @"FAIL";
  }

  else
  {
    v10 = @"PASS";
  }

  [v8 min];
  [v7 appendFormat:@"%@ -- %.2f ms\n\n", v10, v11];
  [v6 appendData:{objc_msgSend(v7, "dataUsingEncoding:", 4)}];
  v12 = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] IPv4RouterAddress];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] IPv6RouterAddress];
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  v14 = +[NSMutableString string];
  [v14 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  [v14 appendFormat:@"Ping LAN (%@)\n", v13];
  [v14 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  v15 = [(W5LogManager *)self __pingUsingIMFoundationWithAddress:v13 timeout:1];
  [v15 packetLoss];
  if (v16 >= 100.0)
  {
    v17 = @"FAIL";
  }

  else
  {
    v17 = @"PASS";
  }

  [v15 min];
  [v14 appendFormat:@"%@ -- %.2f ms\n\n", v17, v18];
  [v6 appendData:{objc_msgSend(v14, "dataUsingEncoding:", 4)}];
LABEL_13:
  v19 = +[NSMutableString string];
  [v19 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  [v19 appendFormat:@"Ping WAN\n"];
  [v19 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  v20 = [-[CWFInterface DNSServerAddresses](-[W5StatusManager corewifi](self->_status "corewifi")];
  v21 = [(W5LogManager *)self __pingUsingIMFoundationWithAddress:v20 timeout:1];
  [v21 packetLoss];
  if (v22 >= 100.0)
  {
    v23 = @"FAIL";
  }

  else
  {
    v23 = @"PASS";
  }

  [v21 min];
  [v19 appendFormat:@"%@ -- %@ -- %.2f ms\n", v20, v23, v24];
  v25 = sub_100098378();
  v26 = [(W5LogManager *)self __pingUsingIMFoundationWithAddress:v25 timeout:1];
  [v26 packetLoss];
  if (v27 >= 100.0)
  {
    v28 = @"FAIL";
  }

  else
  {
    v28 = @"PASS";
  }

  [v26 min];
  [v19 appendFormat:@"%@ -- %@ -- %.2f ms\n\n", v25, v28, v29];
  [v6 appendData:{objc_msgSend(v19, "dataUsingEncoding:", 4)}];
  v30 = +[NSMutableString string];
  [v30 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  [v30 appendFormat:@"Ping Performance (%@)\n", v13];
  [v30 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  v31 = [(W5LogManager *)self __pingUsingIMFoundationWithAddress:v13 timeout:10];
  [v30 appendFormat:@"count=%ld\n", objc_msgSend(v31, "count")];
  [v31 min];
  [v30 appendFormat:@"min=%.2f ms\n", v32];
  [v31 max];
  [v30 appendFormat:@"max=%.2f ms\n", v33];
  [v31 avg];
  [v30 appendFormat:@"avg=%.2f ms\n", v34];
  [v31 stddev];
  [v30 appendFormat:@"stddev=%.2f ms\n", v35];
  [v31 packetLoss];
  [v30 appendFormat:@"loss=%.2f%%\n", v36];
  [v6 appendData:{objc_msgSend(v30, "dataUsingEncoding:", 4)}];
  if (-[NSFileManager createFileAtPath:contents:attributes:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createFileAtPath:contents:attributes:", [objc_msgSend(v38 "path")], v6, 0))
  {
    v39 = [NSURL fileURLWithPath:@"ping-IMFoundation.txt"];
    [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v39, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collect_ping:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = +[NSMutableArray array];
  v98 = +[NSMutableData data];
  v8 = +[NSMutableString string];
  if (([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] powerOn]& 1) == 0)
  {
    [v8 appendString:@"!!! Wi-Fi is OFF\n\n"];
  }

  [v8 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  [v8 appendString:@"Ping localhost (loopback)\n"];
  [v8 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  v9 = [(W5LogManager *)self __pingWithAddress:@"localhost" count:1 timeout:0 wait:[(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName] interval:10 trafficClass:2.0 interfaceName:2.0 dataLength:0.1];
  if (v9)
  {
    [v7 addObject:v9];
  }

  [v9 packetLoss];
  v10 = @"FAIL";
  if (v11 >= 100.0)
  {
    v12 = @"FAIL";
  }

  else
  {
    v12 = @"PASS";
  }

  [v9 min];
  [v8 appendFormat:@"%@ -- %.2f ms\n\n", v12, v13];
  [v98 appendData:{objc_msgSend(v8, "dataUsingEncoding:", 4)}];
  v14 = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] IPv4RouterAddress];
  v95 = v5;
  obj = v7;
  v94 = v6;
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] IPv6RouterAddress];
    if (!v15)
    {
      goto LABEL_17;
    }
  }

  v16 = +[NSMutableString string];
  [v16 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  [v16 appendFormat:@"Ping LAN (%@)\n", v15];
  [v16 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  v17 = [(W5LogManager *)self __pingWithAddress:v15 count:1 timeout:0 wait:[(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName] interval:11 trafficClass:2.0 interfaceName:2.0 dataLength:0.1];
  if (v17)
  {
    [v7 addObject:v17];
  }

  [v17 packetLoss];
  if (v18 >= 100.0)
  {
    v19 = @"FAIL";
  }

  else
  {
    v19 = @"PASS";
  }

  [v17 min];
  [v16 appendFormat:@"%@ -- %.2f ms\n\n", v19, v20];
  [v98 appendData:{objc_msgSend(v16, "dataUsingEncoding:", 4)}];
LABEL_17:
  v21 = +[NSMutableString string];
  [v21 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  [v21 appendString:@"Ping WAN\n"];
  [v21 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  v22 = [-[CWFInterface DNSServerAddresses](-[W5StatusManager corewifi](self->_status "corewifi")];
  v23 = [(W5LogManager *)self __pingWithAddress:v22 count:1 timeout:0 wait:[(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName] interval:12 trafficClass:2.0 interfaceName:2.0 dataLength:0.1];
  if (v23)
  {
    [obj addObject:v23];
  }

  [v23 packetLoss];
  if (v24 >= 100.0)
  {
    v25 = @"FAIL";
  }

  else
  {
    v25 = @"PASS";
  }

  [v23 min];
  [v21 appendFormat:@"%@ -- %@ -- %.2f ms\n", v22, v25, v26];
  v27 = sub_100098378();
  v28 = [(W5LogManager *)self __pingWithAddress:v27 count:1 timeout:0 wait:[(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName] interval:13 trafficClass:2.0 interfaceName:2.0 dataLength:0.1];
  if (v28)
  {
    [obj addObject:v28];
  }

  [v28 packetLoss];
  if (v29 >= 100.0)
  {
    v30 = @"FAIL";
  }

  else
  {
    v30 = @"PASS";
  }

  [v28 min];
  [v21 appendFormat:@"%@ -- %@ -- %.2f ms\n\n", v27, v30, v31];
  [v98 appendData:{objc_msgSend(v21, "dataUsingEncoding:", 4)}];
  v32 = +[NSMutableString string];
  [v32 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  [v32 appendFormat:@"Ping QOS (%@)\n", v15];
  [v32 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  v33 = [(W5LogManager *)self __pingWithAddress:v27 count:1 timeout:&off_1000EF548 wait:[(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName] interval:14 trafficClass:2.0 interfaceName:2.0 dataLength:0.1];
  if (v33)
  {
    [obj addObject:v33];
  }

  [v33 packetLoss];
  if (v34 >= 100.0)
  {
    v35 = @"FAIL";
  }

  else
  {
    v35 = @"PASS";
  }

  [v33 min];
  [v32 appendFormat:@"BE -- %@ -- %.2f ms\n", v35, v36];
  v37 = [(W5LogManager *)self __pingWithAddress:v27 count:1 timeout:&off_1000EF9E0 wait:[(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName] interval:15 trafficClass:2.0 interfaceName:2.0 dataLength:0.1];
  if (v37)
  {
    [obj addObject:v37];
  }

  [v37 packetLoss];
  if (v38 >= 100.0)
  {
    v39 = @"FAIL";
  }

  else
  {
    v39 = @"PASS";
  }

  [v37 min];
  [v32 appendFormat:@"BK_SYS -- %@ -- %.2f ms\n", v39, v40];
  v41 = [(W5LogManager *)self __pingWithAddress:v27 count:1 timeout:&off_1000EF560 wait:[(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName] interval:16 trafficClass:2.0 interfaceName:2.0 dataLength:0.1];
  if (v41)
  {
    [obj addObject:v41];
  }

  [v41 packetLoss];
  if (v42 >= 100.0)
  {
    v43 = @"FAIL";
  }

  else
  {
    v43 = @"PASS";
  }

  [v41 min];
  [v32 appendFormat:@"BK -- %@ -- %.2f ms\n", v43, v44];
  v45 = [(W5LogManager *)self __pingWithAddress:v27 count:1 timeout:&off_1000EF9F8 wait:[(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName] interval:17 trafficClass:2.0 interfaceName:2.0 dataLength:0.1];
  if (v45)
  {
    [obj addObject:v45];
  }

  [v45 packetLoss];
  if (v46 >= 100.0)
  {
    v47 = @"FAIL";
  }

  else
  {
    v47 = @"PASS";
  }

  [v45 min];
  [v32 appendFormat:@"RD -- %@ -- %.2f ms\n", v47, v48];
  v49 = [(W5LogManager *)self __pingWithAddress:v27 count:1 timeout:&off_1000EFA10 wait:[(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName] interval:18 trafficClass:2.0 interfaceName:2.0 dataLength:0.1];
  if (v49)
  {
    [obj addObject:v49];
  }

  [v49 packetLoss];
  if (v50 >= 100.0)
  {
    v51 = @"FAIL";
  }

  else
  {
    v51 = @"PASS";
  }

  [v49 min];
  [v32 appendFormat:@"OAM -- %@ -- %.2f ms\n", v51, v52];
  v53 = [(W5LogManager *)self __pingWithAddress:v27 count:1 timeout:&off_1000EFA28 wait:[(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName] interval:19 trafficClass:2.0 interfaceName:2.0 dataLength:0.1];
  if (v53)
  {
    [obj addObject:v53];
  }

  [v53 packetLoss];
  if (v54 >= 100.0)
  {
    v55 = @"FAIL";
  }

  else
  {
    v55 = @"PASS";
  }

  [v53 min];
  [v32 appendFormat:@"AV -- %@ -- %.2f ms\n", v55, v56];
  v57 = [(W5LogManager *)self __pingWithAddress:v27 count:1 timeout:&off_1000EFA40 wait:[(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName] interval:20 trafficClass:2.0 interfaceName:2.0 dataLength:0.1];
  if (v57)
  {
    [obj addObject:v57];
  }

  [v57 packetLoss];
  if (v58 >= 100.0)
  {
    v59 = @"FAIL";
  }

  else
  {
    v59 = @"PASS";
  }

  [v57 min];
  [v32 appendFormat:@"RV -- %@ -- %.2f ms\n", v59, v60];
  v61 = [(W5LogManager *)self __pingWithAddress:v27 count:1 timeout:&off_1000EF578 wait:[(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName] interval:21 trafficClass:2.0 interfaceName:2.0 dataLength:0.1];
  if (v61)
  {
    [obj addObject:v61];
  }

  [v61 packetLoss];
  if (v62 >= 100.0)
  {
    v63 = @"FAIL";
  }

  else
  {
    v63 = @"PASS";
  }

  [v61 min];
  [v32 appendFormat:@"VI -- %@ -- %.2f ms\n", v63, v64];
  v65 = [(W5LogManager *)self __pingWithAddress:v27 count:1 timeout:&off_1000EF5A8 wait:[(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName] interval:22 trafficClass:2.0 interfaceName:2.0 dataLength:0.1];
  if (v65)
  {
    [obj addObject:v65];
  }

  [v65 packetLoss];
  if (v66 >= 100.0)
  {
    v67 = @"FAIL";
  }

  else
  {
    v67 = @"PASS";
  }

  [v65 min];
  [v32 appendFormat:@"VO -- %@ -- %.2f ms\n", v67, v68];
  v69 = [(W5LogManager *)self __pingWithAddress:v27 count:1 timeout:&off_1000EFA58 wait:[(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName] interval:23 trafficClass:2.0 interfaceName:2.0 dataLength:0.1];
  if (v69)
  {
    [obj addObject:v69];
  }

  [v69 packetLoss];
  if (v70 >= 100.0)
  {
    v71 = @"FAIL";
  }

  else
  {
    v71 = @"PASS";
  }

  [v69 min];
  [v32 appendFormat:@"CTL -- %@ -- %.2f ms\n\n", v71, v72];
  [v98 appendData:{objc_msgSend(v32, "dataUsingEncoding:", 4)}];
  v73 = +[NSMutableString string];
  [v73 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  [v73 appendFormat:@"Ping Performance (%@)\n", v15];
  [v73 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  v74 = [(W5LogManager *)self __pingWithAddress:v15 count:10 timeout:&off_1000EF548 wait:[(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName] interval:24 trafficClass:21.0 interfaceName:2.0 dataLength:0.1];
  if (v74)
  {
    [obj addObject:v74];
  }

  [v73 appendFormat:@"count=%ld\n", objc_msgSend(v74, "count")];
  [v74 min];
  [v73 appendFormat:@"min=%.2f ms\n", v75];
  [v74 max];
  [v73 appendFormat:@"max=%.2f ms\n", v76];
  [v74 avg];
  [v73 appendFormat:@"avg=%.2f ms\n", v77];
  [v74 stddev];
  [v73 appendFormat:@"stddev=%.2f ms\n", v78];
  [v74 packetLoss];
  [v73 appendFormat:@"loss=%.2f%%\n\n", v79];
  [v98 appendData:{objc_msgSend(v73, "dataUsingEncoding:", 4)}];
  v80 = +[NSMutableString string];
  [v80 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  [v80 appendFormat:@"Ping6 AWDL (%@)\n", @"ff02::fb"];
  [v80 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  v97 = self;
  v81 = [(W5LogManager *)self __ping6WithAddress:@"ff02::fb" count:1 wait:0 trafficClass:[(W5WiFiInterface *)[(W5StatusManager *)self->_status awdl] interfaceName] interfaceName:25 dataLength:2.0];
  if (v81)
  {
    [obj addObject:v81];
  }

  [v81 packetLoss];
  if (v82 < 100.0)
  {
    v10 = @"PASS";
  }

  [v81 min];
  [v80 appendFormat:@"%@ -- %.2f ms\n\n", v10, v83];
  [v98 appendData:{objc_msgSend(v80, "dataUsingEncoding:", 4)}];
  if ([obj count])
  {
    [v98 appendData:{objc_msgSend(@"\n\n\n# --- Ping Results\n\n", "dataUsingEncoding:", 4)}];
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v84 = [obj countByEnumeratingWithState:&v99 objects:v104 count:16];
    if (v84)
    {
      v85 = v84;
      v86 = *v100;
      do
      {
        for (i = 0; i != v85; i = i + 1)
        {
          if (*v100 != v86)
          {
            objc_enumerationMutation(obj);
          }

          v88 = *(*(&v99 + 1) + 8 * i);
          v89 = +[NSMutableString string];
          [v89 appendString:@"————————————————————————————————————————————————————————————————————\n"];
          dateFormatter = v97->_dateFormatter;
          [v88 startedAt];
          v91 = [(NSDateFormatter *)dateFormatter stringFromDate:[NSDate dateWithTimeIntervalSinceReferenceDate:?]];
          v92 = v97->_dateFormatter;
          [v88 endedAt];
          [v89 appendFormat:@"[%@ - %@]\n", v91, -[NSDateFormatter stringFromDate:](v92, "stringFromDate:", +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:"))];
          [v89 appendFormat:@"%@\n", objc_msgSend(v88, "command")];
          [v89 appendFormat:@"%@\n", objc_msgSend(v88, "output")];
          [v98 appendData:{objc_msgSend(v89, "dataUsingEncoding:", 4)}];
        }

        v85 = [obj countByEnumeratingWithState:&v99 objects:v104 count:16];
      }

      while (v85);
    }
  }

  if (-[NSFileManager createFileAtPath:contents:attributes:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createFileAtPath:contents:attributes:", [objc_msgSend(v94 "path")], v98, 0))
  {
    v103 = [NSURL fileURLWithPath:@"ping.txt"];
    [v95 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v103, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v95 setCompletedAt:?];
  return v95;
}

- (id)__collect_CFNetworkPing:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v79 = [objc_msgSend(a3 "configuration")];
  v6 = +[NSMutableData data];
  v7 = +[NSMutableString string];
  if (([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] powerOn]& 1) == 0)
  {
    [v7 appendString:@"!!! Wi-Fi is OFF\n\n"];
  }

  [v7 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  [v7 appendString:@"Ping localhost (loopback)\n"];
  [v7 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  v8 = [(W5LogManager *)self __pingUsingCFNetworkWithAddress:@"localhost" count:1 timeout:1 trafficClass:0 networkServiceType:0];
  [v8 packetLoss];
  if (v9 >= 100.0)
  {
    v10 = @"FAIL";
  }

  else
  {
    v10 = @"PASS";
  }

  [v8 min];
  [v7 appendFormat:@"%@ -- %.2f ms\n\n", v10, v11];
  [v6 appendData:{objc_msgSend(v7, "dataUsingEncoding:", 4)}];
  v12 = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] IPv4RouterAddress];
  v80 = v5;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] IPv6RouterAddress];
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  v14 = +[NSMutableString string];
  [v14 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  [v14 appendFormat:@"Ping LAN (%@)\n", v13];
  [v14 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  v15 = [(W5LogManager *)self __pingUsingCFNetworkWithAddress:v13 count:1 timeout:1 trafficClass:0 networkServiceType:0];
  [v15 packetLoss];
  if (v16 >= 100.0)
  {
    v17 = @"FAIL";
  }

  else
  {
    v17 = @"PASS";
  }

  [v15 min];
  [v14 appendFormat:@"%@ -- %.2f ms\n\n", v17, v18];
  [v6 appendData:{objc_msgSend(v14, "dataUsingEncoding:", 4)}];
LABEL_13:
  v19 = +[NSMutableString string];
  [v19 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  [v19 appendString:@"Ping WAN\n"];
  [v19 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  v20 = [-[CWFInterface DNSServerAddresses](-[W5StatusManager corewifi](self->_status "corewifi")];
  v21 = [(W5LogManager *)self __pingUsingCFNetworkWithAddress:v20 count:1 timeout:1 trafficClass:0 networkServiceType:0];
  [v21 packetLoss];
  if (v22 >= 100.0)
  {
    v23 = @"FAIL";
  }

  else
  {
    v23 = @"PASS";
  }

  [v21 min];
  [v19 appendFormat:@"%@ -- %@ -- %.2f ms\n", v20, v23, v24];
  v25 = sub_100098378();
  v26 = [(W5LogManager *)self __pingUsingCFNetworkWithAddress:v25 count:1 timeout:1 trafficClass:0 networkServiceType:0];
  [v26 packetLoss];
  if (v27 >= 100.0)
  {
    v28 = @"FAIL";
  }

  else
  {
    v28 = @"PASS";
  }

  [v26 min];
  [v19 appendFormat:@"%@ -- %@ -- %.2f ms\n\n", v25, v28, v29];
  [v6 appendData:{objc_msgSend(v19, "dataUsingEncoding:", 4)}];
  v30 = +[NSMutableString string];
  [v30 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  [v30 appendFormat:@"Ping QOS (%@)\n", v13];
  [v30 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  v31 = [(W5LogManager *)self __pingUsingCFNetworkWithAddress:v13 count:1 timeout:1 trafficClass:&off_1000EF548 networkServiceType:0];
  [v31 packetLoss];
  if (v32 >= 100.0)
  {
    v33 = @"FAIL";
  }

  else
  {
    v33 = @"PASS";
  }

  [v31 min];
  [v30 appendFormat:@"BE -- %@ -- %.2f ms\n", v33, v34];
  v35 = [(W5LogManager *)self __pingUsingCFNetworkWithAddress:v13 count:1 timeout:1 trafficClass:&off_1000EF9E0 networkServiceType:0];
  [v35 packetLoss];
  if (v36 >= 100.0)
  {
    v37 = @"FAIL";
  }

  else
  {
    v37 = @"PASS";
  }

  [v35 min];
  [v30 appendFormat:@"BK_SYS -- %@ -- %.2f ms\n", v37, v38];
  v39 = [(W5LogManager *)self __pingUsingCFNetworkWithAddress:v13 count:1 timeout:1 trafficClass:&off_1000EF560 networkServiceType:0];
  [v39 packetLoss];
  if (v40 >= 100.0)
  {
    v41 = @"FAIL";
  }

  else
  {
    v41 = @"PASS";
  }

  [v39 min];
  [v30 appendFormat:@"BK -- %@ -- %.2f ms\n", v41, v42];
  v43 = [(W5LogManager *)self __pingUsingCFNetworkWithAddress:v13 count:1 timeout:1 trafficClass:&off_1000EF9F8 networkServiceType:0];
  [v43 packetLoss];
  if (v44 >= 100.0)
  {
    v45 = @"FAIL";
  }

  else
  {
    v45 = @"PASS";
  }

  [v43 min];
  [v30 appendFormat:@"RD -- %@ -- %.2f ms\n", v45, v46];
  v47 = [(W5LogManager *)self __pingUsingCFNetworkWithAddress:v13 count:1 timeout:1 trafficClass:&off_1000EFA10 networkServiceType:0];
  [v47 packetLoss];
  if (v48 >= 100.0)
  {
    v49 = @"FAIL";
  }

  else
  {
    v49 = @"PASS";
  }

  [v47 min];
  [v30 appendFormat:@"OAM -- %@ -- %.2f ms\n", v49, v50];
  v51 = [(W5LogManager *)self __pingUsingCFNetworkWithAddress:v13 count:1 timeout:1 trafficClass:&off_1000EFA28 networkServiceType:0];
  [v51 packetLoss];
  if (v52 >= 100.0)
  {
    v53 = @"FAIL";
  }

  else
  {
    v53 = @"PASS";
  }

  [v51 min];
  [v30 appendFormat:@"AV -- %@ -- %.2f ms\n", v53, v54];
  v55 = [(W5LogManager *)self __pingUsingCFNetworkWithAddress:v13 count:1 timeout:1 trafficClass:&off_1000EFA40 networkServiceType:0];
  [v55 packetLoss];
  if (v56 >= 100.0)
  {
    v57 = @"FAIL";
  }

  else
  {
    v57 = @"PASS";
  }

  [v55 min];
  [v30 appendFormat:@"RV -- %@ -- %.2f ms\n", v57, v58];
  v59 = [(W5LogManager *)self __pingUsingCFNetworkWithAddress:v13 count:1 timeout:1 trafficClass:&off_1000EF578 networkServiceType:0];
  [v59 packetLoss];
  if (v60 >= 100.0)
  {
    v61 = @"FAIL";
  }

  else
  {
    v61 = @"PASS";
  }

  [v59 min];
  [v30 appendFormat:@"VI -- %@ -- %.2f ms\n", v61, v62];
  v63 = [(W5LogManager *)self __pingUsingCFNetworkWithAddress:v13 count:1 timeout:1 trafficClass:&off_1000EF5A8 networkServiceType:0];
  [v63 packetLoss];
  if (v64 >= 100.0)
  {
    v65 = @"FAIL";
  }

  else
  {
    v65 = @"PASS";
  }

  [v63 min];
  [v30 appendFormat:@"VO -- %@ -- %.2f ms\n", v65, v66];
  v67 = [(W5LogManager *)self __pingUsingCFNetworkWithAddress:v13 count:1 timeout:1 trafficClass:&off_1000EFA58 networkServiceType:0];
  [v67 packetLoss];
  if (v68 >= 100.0)
  {
    v69 = @"FAIL";
  }

  else
  {
    v69 = @"PASS";
  }

  [v67 min];
  [v30 appendFormat:@"CTL -- %@ -- %.2f ms\n\n", v69, v70];
  [v6 appendData:{objc_msgSend(v30, "dataUsingEncoding:", 4)}];
  v71 = +[NSMutableString string];
  [v71 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  [v71 appendFormat:@"Ping Performance (%@)\n", v13];
  [v71 appendString:@"————————————————————————————————————————————————————————————————————\n"];
  v72 = [(W5LogManager *)self __pingUsingCFNetworkWithAddress:v13 count:10 timeout:1 trafficClass:&off_1000EF548 networkServiceType:0];
  [v71 appendFormat:@"count=%ld\n", objc_msgSend(v72, "count")];
  [v72 min];
  [v71 appendFormat:@"min=%.2f ms\n", v73];
  [v72 max];
  [v71 appendFormat:@"max=%.2f ms\n", v74];
  [v72 avg];
  [v71 appendFormat:@"avg=%.2f ms\n", v75];
  [v72 stddev];
  [v71 appendFormat:@"stddev=%.2f ms\n", v76];
  [v72 packetLoss];
  [v71 appendFormat:@"loss=%.2f%%\n", v77];
  [v6 appendData:{objc_msgSend(v71, "dataUsingEncoding:", 4)}];
  if (-[NSFileManager createFileAtPath:contents:attributes:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createFileAtPath:contents:attributes:", [objc_msgSend(v79 "path")], v6, 0))
  {
    v81 = [NSURL fileURLWithPath:@"ping-CFNetwork.txt"];
    [v80 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v81, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v80 setCompletedAt:?];
  return v80;
}

- (id)__collect_ifconfig:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(a3 "configuration")];
  [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v6, 0];
  [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:v6 attributes:0, 0];
  v7 = [NSFileHandle fileHandleForUpdatingAtPath:v6];
  if (v7)
  {
    v8 = v7;
    [(W5LogManager *)self __runToolWithOutputFileHandle:v7 launchPath:@"/sbin/ifconfig" arguments:&off_1000F4188];
    [(NSFileHandle *)v8 closeFile];
    v10 = [NSURL fileURLWithPath:@"ifconfig.txt"];
    [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v10, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collect_ipconfig:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName];
  if (v7)
  {
    v10[0] = @"getpacket";
    v10[1] = v7;
    if (+[NSTask runTaskWithLaunchPath:arguments:outputFilePath:error:](NSTask, "runTaskWithLaunchPath:arguments:outputFilePath:error:", @"/usr/sbin/ipconfig", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v10, 2), [objc_msgSend(v6 "path")], 0))
    {
      v9 = [NSURL fileURLWithPath:@"ipconfig.txt"];
      [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v9, 1)}];
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collect_traceroute:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName];
  if (v7)
  {
    v10[0] = @"-n";
    v10[1] = @"-m";
    v10[2] = @"6";
    v10[3] = @"-i";
    v10[4] = v7;
    v10[5] = @"-w";
    v10[6] = @"2";
    v10[7] = @"-q";
    v10[8] = @"1";
    v10[9] = @"captive.apple.com";
    if (+[NSTask runTaskWithLaunchPath:arguments:outputFilePath:error:](NSTask, "runTaskWithLaunchPath:arguments:outputFilePath:error:", @"/usr/sbin/traceroute", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v10, 10), [objc_msgSend(v6 "path")], 0))
    {
      v9 = [NSURL fileURLWithPath:@"traceroute.txt"];
      [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v9, 1)}];
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collect_kextstat:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  if (+[NSTask runTaskWithLaunchPath:arguments:outputFilePath:error:](NSTask, "runTaskWithLaunchPath:arguments:outputFilePath:error:", @"/usr/sbin/kextstat", 0, [objc_msgSend(objc_msgSend(objc_msgSend(a3 "configuration")], 0))
  {
    v6 = [NSURL fileURLWithPath:@"kextstat.txt"];
    [v4 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v6, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setCompletedAt:?];
  return v4;
}

- (id)__collect_ioreg:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  if (+[NSTask runTaskWithLaunchPath:arguments:outputFilePath:error:](NSTask, "runTaskWithLaunchPath:arguments:outputFilePath:error:", @"/usr/sbin/ioreg", &off_1000F41A0, [objc_msgSend(objc_msgSend(objc_msgSend(a3 "configuration")], 0))
  {
    v6 = [NSURL fileURLWithPath:@"ioreg.txt"];
    [v4 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v6, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setCompletedAt:?];
  return v4;
}

- (id)__collect_top:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  if (+[NSTask runTaskWithLaunchPath:arguments:outputFilePath:error:](NSTask, "runTaskWithLaunchPath:arguments:outputFilePath:error:", @"/usr/bin/top", &off_1000F41B8, [objc_msgSend(objc_msgSend(objc_msgSend(a3 "configuration")], 0))
  {
    v6 = [NSURL fileURLWithPath:@"top.txt"];
    [v4 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v6, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setCompletedAt:?];
  return v4;
}

- (id)__collect_netstat:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(a3 "configuration")];
  v8 = [v6 path];
  if (!v7)
  {
    v7 = @"netstat.txt";
  }

  v9 = [v8 stringByAppendingPathComponent:v7];
  [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v9, 0];
  [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:v9 attributes:0, 0];
  v10 = [NSFileHandle fileHandleForUpdatingAtPath:v9];
  if (v10)
  {
    v11 = v10;
    v12 = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName];
    if (v12)
    {
      v13 = v12;
      v18[0] = @"-n";
      v18[1] = @"-s";
      v18[2] = @"-I";
      v18[3] = v12;
      [(W5LogManager *)self __runToolWithOutputFileHandle:v11 launchPath:@"/usr/sbin/netstat" arguments:[NSArray arrayWithObjects:v18 count:4]];
      v17[0] = @"-n";
      v17[1] = @"-I";
      v17[2] = v13;
      [(W5LogManager *)self __runToolWithOutputFileHandle:v11 launchPath:@"/usr/sbin/netstat" arguments:[NSArray arrayWithObjects:v17 count:3]];
      v16[0] = @"-qq";
      v16[1] = @"-I";
      v16[2] = v13;
      [(W5LogManager *)self __runToolWithOutputFileHandle:v11 launchPath:@"/usr/sbin/netstat" arguments:[NSArray arrayWithObjects:v16 count:3]];
    }

    [(W5LogManager *)self __runToolWithOutputFileHandle:v11 launchPath:@"/usr/sbin/netstat" arguments:&off_1000F41D0];
    [(W5LogManager *)self __runToolWithOutputFileHandle:v11 launchPath:@"/usr/sbin/netstat" arguments:&off_1000F41E8];
    [(NSFileHandle *)v11 closeFile];
    v15 = [NSURL fileURLWithPath:v7];
    [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v15, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectSystemConfiguration:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  if (sub_100099544(+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"/Library/Preferences/SystemConfiguration"), [objc_msgSend(objc_msgSend(a3 "configuration")], 0))
  {
    v6 = [NSURL fileURLWithPath:@"SystemConfiguration"];
    [v4 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v6, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setCompletedAt:?];
  return v4;
}

- (id)__collect_configd:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  v5 = [objc_msgSend(a3 "configuration")];
  if ([NSTask runTaskWithLaunchPath:@"/usr/sbin/scutil" arguments:&off_1000F4200 error:0]&& sub_100099544([NSURL fileURLWithPath:@"/var/tmp/configd-store.plist"], v5, 0))
  {
    v7 = [NSURL fileURLWithPath:@"configd-store.plist"];
    [v4 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v7, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setCompletedAt:?];
  return v4;
}

- (id)__collect_wl_curpower:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  if (-[W5LogManager __wlCLIWithArguments:outputFilePath:outputData:](self, "__wlCLIWithArguments:outputFilePath:outputData:", &off_1000F4218, [objc_msgSend(objc_msgSend(objc_msgSend(a3 "configuration")], 0))
  {
    v7 = [NSURL fileURLWithPath:@"wlan_curpower.txt"];
    [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v7, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collect_wl_cca_get_stats:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  if (-[W5LogManager __wlCLIWithArguments:outputFilePath:outputData:](self, "__wlCLIWithArguments:outputFilePath:outputData:", &off_1000F4230, [objc_msgSend(objc_msgSend(objc_msgSend(a3 "configuration")], 0))
  {
    v7 = [NSURL fileURLWithPath:@"wlan_cca_get_stats.txt"];
    [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v7, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collect_spindump:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v10 = 0;
  if ([NSTask runTaskWithLaunchPath:@"/usr/sbin/spindump" arguments:0 timeout:0 outputData:0 errorData:0 launchHandler:0 didLaunch:60.0 error:&v10])
  {
    v7 = [-[W5LogManager __mostRecentInDirectories:matchingPrefix:matchingSuffix:excludingPrefix:excludingSuffix:maxAge:](self __mostRecentInDirectories:&off_1000F4248 matchingPrefix:@"spindump" matchingSuffix:0 excludingPrefix:0 excludingSuffix:0 maxAge:{300.0), "firstObject"}];
    if (v7)
    {
      v8 = v7;
      if (sub_100099544([NSURL fileURLWithPath:v7], v6, 0))
      {
        v11 = +[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", [v8 lastPathComponent]);
        [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v11, 1)}];
      }

      [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v8, 0];
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collect_darwinup:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  if (+[NSTask runTaskWithLaunchPath:arguments:outputFilePath:error:](NSTask, "runTaskWithLaunchPath:arguments:outputFilePath:error:", @"/usr/local/bin/darwinup", &off_1000F4260, [objc_msgSend(objc_msgSend(objc_msgSend(a3 "configuration")], 0))
  {
    v6 = [NSURL fileURLWithPath:@"darwinup_list.txt"];
    [v4 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v6, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setCompletedAt:?];
  return v4;
}

- (id)__collect_hosts:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  if (sub_100099544(+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"/etc/hosts"), [objc_msgSend(objc_msgSend(a3 "configuration")], 0))
  {
    v6 = [NSURL fileURLWithPath:@"hosts"];
    [v4 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v6, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setCompletedAt:?];
  return v4;
}

- (id)__collect_sysdiagnose:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  v5 = [objc_msgSend(a3 "configuration")];
  v14 = 0;
  *v19 = 0;
  *&v19[8] = v19;
  *&v19[16] = 0x3052000000;
  *&v20 = sub_10005E4F0;
  v6 = qword_100106C40;
  *(&v20 + 1) = sub_10005E500;
  v21 = qword_100106C40;
  if (!qword_100106C40)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10007E3E8;
    v15[3] = &unk_1000E13B0;
    v15[4] = v19;
    sub_10007E3E8(v15);
    v6 = *(*&v19[8] + 40);
  }

  _Block_object_dispose(v19, 8);
  v7 = [v6 sysdiagnoseWithMetadata:&off_1000F34B8 withError:&v14];
  if (v7)
  {
    if (sub_100099544([NSURL fileURLWithPath:v7], v5, 0))
    {
      v8 = +[NSFileManager defaultManager];
      v17[0] = NSFilePosixPermissions;
      v17[1] = NSFileOwnerAccountID;
      v18[0] = &off_1000EFA70;
      v18[1] = &off_1000EF4B8;
      v17[2] = NSFileGroupOwnerAccountID;
      v18[2] = &off_1000EF4B8;
      -[NSFileManager setAttributes:ofItemAtPath:error:](v8, "setAttributes:ofItemAtPath:error:", +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v18, v17, 3), [objc_msgSend(v5 URLByAppendingPathComponent:{objc_msgSend(v7, "lastPathComponent")), "path"}], 0);
      v16 = +[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", [v7 lastPathComponent]);
      [v4 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v16, 1)}];
    }

    [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v7, 0];
  }

  else
  {
    v10 = sub_100098A04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v14 code];
      *v19 = 136315906;
      *&v19[4] = "[W5LogManager __collect_sysdiagnose:]";
      *&v19[12] = 2080;
      *&v19[14] = "W5LogManager.m";
      *&v19[22] = 1024;
      LODWORD(v20) = 4163;
      WORD2(v20) = 2048;
      *(&v20 + 6) = v11;
      LODWORD(v13) = 38;
      v12 = v19;
      _os_log_send_and_compose_impl();
    }
  }

  [NSDate timeIntervalSinceReferenceDate:v12];
  [v4 setCompletedAt:?];
  return v4;
}

- (id)__collect_ndp:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(a3 "configuration")];
  [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v6, 0];
  [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:v6 attributes:0, 0];
  v7 = [NSFileHandle fileHandleForUpdatingAtPath:v6];
  if (v7)
  {
    v8 = v7;
    [(W5LogManager *)self __runToolWithOutputFileHandle:v7 launchPath:@"/usr/sbin/ndp" arguments:&off_1000F4278];
    [(W5LogManager *)self __runToolWithOutputFileHandle:v8 launchPath:@"/usr/sbin/ndp" arguments:&off_1000F4290];
    [(W5LogManager *)self __runToolWithOutputFileHandle:v8 launchPath:@"/usr/sbin/ndp" arguments:&off_1000F42A8];
    v9 = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName];
    if (v9)
    {
      v12[0] = @"-i";
      v12[1] = v9;
      [(W5LogManager *)self __runToolWithOutputFileHandle:v8 launchPath:@"/usr/sbin/ndp" arguments:[NSArray arrayWithObjects:v12 count:2]];
    }

    [(NSFileHandle *)v8 closeFile];
    v11 = [NSURL fileURLWithPath:@"ndp.txt"];
    [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v11, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectTCPDump_PRE:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(a3 "configuration")];
  v8 = [objc_msgSend(a3 "configuration")];
  if (v8)
  {
    v9 = [v8 unsignedIntegerValue];
  }

  else
  {
    v9 = 60;
  }

  v10 = dispatch_semaphore_create(0);
  v11 = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_msgSend(v6 "path")];
    v20[0] = @"-q";
    v20[1] = @"-n";
    v20[2] = @"-i";
    v20[3] = v12;
    v20[4] = @"-G";
    v20[5] = [NSString stringWithFormat:@"%lu", v9];
    v20[6] = @"-W";
    v20[7] = @"1";
    v20[8] = @"-w";
    v20[9] = v13;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10006AE40;
    v17[3] = &unk_1000E2E40;
    v17[4] = self;
    v17[5] = v7;
    v17[6] = v13;
    v17[7] = v5;
    v17[8] = v12;
    v17[9] = v10;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10006AFC8;
    v16[3] = &unk_1000E2E68;
    v16[4] = self;
    v16[5] = v7;
    [NSTask runTaskWithLaunchPath:@"/usr/sbin/tcpdump" arguments:[NSArray arrayWithObjects:v20 count:10] timeout:v17 startBlock:0 updateBlock:v16 endBlock:0.0];
    v14 = dispatch_time(0, 600000000000);
    if (dispatch_semaphore_wait(v10, v14) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v19 = 0x4082C00000000000;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectTCPDump_POST:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v8 = [objc_msgSend(a3 "configuration")];
  if (v8)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006B1C4;
    block[3] = &unk_1000E2E90;
    block[4] = self;
    block[5] = v8;
    v12 = v7;
    block[6] = v6;
    block[7] = v5;
    dispatch_async(queue, block);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collect_pmset:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  if (+[NSTask runTaskWithLaunchPath:arguments:outputFilePath:error:](NSTask, "runTaskWithLaunchPath:arguments:outputFilePath:error:", @"/usr/bin/pmset", &off_1000F42C0, [objc_msgSend(objc_msgSend(objc_msgSend(a3 "configuration")], 0))
  {
    v6 = [NSURL fileURLWithPath:@"pmset_everything.txt"];
    [v4 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v6, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setCompletedAt:?];
  return v4;
}

- (unint64_t)__calculateSizeAtPath:(id)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15 = 0;
  if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:isDirectory:"]
  {
    if (v15 == 1)
    {
      v5 = dispatch_queue_create(0, 0);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10006B53C;
      v9[3] = &unk_1000E2EE0;
      v10 = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:error:" error:a3, 0];
      v11 = self;
      v12 = a3;
      v13 = v5;
      v14 = &v16;
      dispatch_apply([(NSArray *)v10 count], 0, v9);
      if (v5)
      {
        dispatch_release(v5);
      }
    }

    else
    {
      v6 = -[NSDictionary fileSize]([+[NSFileManager defaultManager](NSFileManager attributesOfItemAtPath:"attributesOfItemAtPath:error:" error:a3, 0], "fileSize");
      v17[3] += v6;
    }
  }

  v7 = v17[3];
  _Block_object_dispose(&v16, 8);
  return v7;
}

- (id)__collectFilesInDirectories:(id)a3 include:(id)a4 exclude:(id)a5 maxAge:(double)a6 maxCount:(unint64_t)a7 maxSize:(unint64_t)a8 outputDirectory:(id)a9 compress:(BOOL)a10 remainingSize:(unint64_t *)a11 contentFilter:(id)a12
{
  v18 = a11;
  v47 = +[NSMutableArray array];
  v19 = [(W5LogManager *)self __mostRecentInDirectories:a3 include:a4 exclude:a5 maxAge:a6];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v55 objects:v71 count:16];
  if (!v20)
  {
    v51 = 0;
    if (a11)
    {
      goto LABEL_37;
    }

    return [v47 copy];
  }

  v21 = v20;
  v22 = 0;
  v50 = 0;
  v51 = 0;
  v53 = *v56;
LABEL_3:
  v23 = 0;
  while (1)
  {
    if (*v56 != v53)
    {
      objc_enumerationMutation(v19);
    }

    v24 = [NSURL fileURLWithPath:*(*(&v55 + 1) + 8 * v23), v45, v46];
    v54 = 0;
    [+[NSFileManager defaultManager](NSFileManager fileExistsAtPath:"fileExistsAtPath:isDirectory:" isDirectory:[(NSURL *)v24 path], &v54];
    if (a12 && (v54 & 1) != 0)
    {
      if (!v22)
      {
        v22 = +[W5LogManager __temporaryDirectory];
      }

      v25 = [v22 URLByAppendingPathComponent:{-[NSURL lastPathComponent](v24, "lastPathComponent")}];
      sub_100099544(v24, v25, 0);
      (*(a12 + 2))(a12, v25);
      v24 = v25;
    }

    v26 = [a9 URLByAppendingPathComponent:{-[NSURL lastPathComponent](v24, "lastPathComponent")}];
    v27 = v26;
    if (a10)
    {
      v27 = [v26 URLByAppendingPathExtension:@"tgz"];
      if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", [v27 path]) || (sub_100098A4C(v24, v27, 0) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", [v26 path]) || !sub_100099544(v24, v27, 0))
    {
LABEL_22:
      v36 = sub_100098A04();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v27 path];
        v59 = 138543362;
        v60 = v37;
        LODWORD(v46) = 12;
        v45 = &v59;
        _os_log_send_and_compose_impl();
      }

      goto LABEL_32;
    }

    v52 = v22;
    v28 = v19;
    v29 = a9;
    v30 = -[NSFileManager attributesOfItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "attributesOfItemAtPath:error:", [v27 path], 0);
    v31 = [(NSDictionary *)v30 fileSize];
    v32 = v31 + v51;
    if (!v30)
    {
      v38 = sub_100098A04();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [v27 path];
        v59 = 138543362;
        v60 = v39;
        LODWORD(v46) = 12;
        v45 = &v59;
        _os_log_send_and_compose_impl();
      }

      goto LABEL_30;
    }

    v33 = v31;
    if (v32 > a8)
    {
      v34 = sub_100098A04();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v27 path];
        v59 = 134219266;
        v60 = v32;
        v61 = 2048;
        v62 = a8;
        v63 = 2048;
        v64 = v33;
        v65 = 2048;
        v66 = v50 + 1;
        v67 = 2048;
        v68 = a7;
        v69 = 2114;
        v70 = v35;
        LODWORD(v46) = 62;
        v45 = &v59;
        _os_log_send_and_compose_impl();
      }

      -[NSFileManager removeItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager", v45, v46), "removeItemAtPath:error:", [v27 path], 0);
      a9 = v29;
      goto LABEL_31;
    }

    v40 = sub_100098A04();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
    if (v50 + 1 > a7)
    {
      break;
    }

    if (v41)
    {
      v42 = [v27 path];
      v59 = 134219266;
      v60 = v32;
      v61 = 2048;
      v62 = a8;
      v63 = 2048;
      v64 = v33;
      v65 = 2048;
      v66 = v50 + 1;
      v67 = 2048;
      v68 = a7;
      v69 = 2114;
      v70 = v42;
      LODWORD(v46) = 62;
      v45 = &v59;
      _os_log_send_and_compose_impl();
    }

    [v47 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", objc_msgSend(v27, "lastPathComponent", v45, v46))}];
LABEL_30:
    ++v50;
    v51 = v32;
    a9 = v29;
LABEL_31:
    v19 = v28;
    v22 = v52;
LABEL_32:
    if (v21 == ++v23)
    {
      v21 = [v19 countByEnumeratingWithState:&v55 objects:v71 count:16];
      if (v21)
      {
        goto LABEL_3;
      }

      if (v22)
      {
        goto LABEL_35;
      }

      goto LABEL_36;
    }
  }

  if (v41)
  {
    v44 = [v27 path];
    v59 = 134219266;
    v60 = v32;
    v61 = 2048;
    v62 = a8;
    v63 = 2048;
    v64 = v33;
    v65 = 2048;
    v66 = v50 + 1;
    v67 = 2048;
    v68 = a7;
    v69 = 2114;
    v70 = v44;
    LODWORD(v46) = 62;
    v45 = &v59;
    _os_log_send_and_compose_impl();
  }

  -[NSFileManager removeItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager", v45, v46), "removeItemAtPath:error:", [v27 path], 0);
  v22 = v52;
  if (v52)
  {
LABEL_35:
    [+[NSFileManager removeItemAtURL:v45], "removeItemAtURL:error:", v22, 0];
  }

LABEL_36:
  v18 = a11;
  if (a11)
  {
LABEL_37:
    *v18 = a8 - v51;
  }

  return [v47 copy];
}

- (id)__collectFileAtURL:(id)a3 outputDirectory:(id)a4 maxAge:(double)a5 maxSize:(unint64_t)a6 compress:(BOOL)a7 remainingSize:(unint64_t *)a8
{
  v9 = a7;
  if (!-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", [a3 path]))
  {
    return 0;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v15 = v14;
  v16 = [a4 URLByAppendingPathComponent:{objc_msgSend(a3, "lastPathComponent")}];
  v17 = v16;
  if (v9)
  {
    v17 = [v16 URLByAppendingPathExtension:@"tgz"];
    if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", [v17 path]) || (sub_100098A4C(a3, v17, 0) & 1) == 0)
    {
LABEL_19:
      v29 = sub_100098A04();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 138543362;
        v36 = [v17 path];
        _os_log_send_and_compose_impl();
      }

      return 0;
    }
  }

  else if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", [v16 path]) || !sub_100099544(a3, v17, 0))
  {
    goto LABEL_19;
  }

  v18 = -[NSFileManager attributesOfItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "attributesOfItemAtPath:error:", [v17 path], 0);
  if (v18)
  {
    v19 = v18;
    [(NSDate *)[(NSDictionary *)v18 fileCreationDate] timeIntervalSinceReferenceDate];
    v21 = v20;
    [(NSDate *)[(NSDictionary *)v19 fileModificationDate] timeIntervalSinceReferenceDate];
    v23 = v22;
    v24 = [(NSDictionary *)v19 fileSize];
    if (a6 < v24 || ((v25 = v15 - v21, v26 = v15 - v23, v15 - v21 > a5) ? (v27 = v26 <= a5) : (v27 = 1), !v27))
    {
      v30 = sub_100098A04();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 134219266;
        v36 = a6;
        v37 = 2048;
        v38 = v24;
        v39 = 2048;
        v40 = a5;
        v41 = 2114;
        v42 = [NSDate dateWithTimeIntervalSinceReferenceDate:v21];
        v43 = 2114;
        v44 = [NSDate dateWithTimeIntervalSinceReferenceDate:v23];
        v45 = 2114;
        v46 = [v17 path];
        LODWORD(v34) = 62;
        v33 = &v35;
        _os_log_send_and_compose_impl();
      }

      -[NSFileManager removeItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager", v33, v34), "removeItemAtPath:error:", [v17 path], 0);
      return 0;
    }

    if (a8)
    {
      v28 = sub_100098A04();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 134219266;
        v36 = a6;
        v37 = 2048;
        v38 = v24;
        v39 = 2048;
        v40 = a5;
        v41 = 2114;
        v42 = [NSDate dateWithTimeIntervalSinceReferenceDate:v21];
        v43 = 2114;
        v44 = [NSDate dateWithTimeIntervalSinceReferenceDate:v23];
        v45 = 2114;
        v46 = [v17 path];
        _os_log_send_and_compose_impl();
      }

      *a8 = a6 - v24;
    }
  }

  else
  {
    v31 = sub_100098A04();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 138543362;
      v36 = [v17 path];
      _os_log_send_and_compose_impl();
    }
  }

  if (v17)
  {
    return +[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", [v17 lastPathComponent]);
  }

  return 0;
}

- (id)__mostRecentInDirectories:(id)a3 include:(id)a4 exclude:(id)a5 maxAge:(double)a6
{
  v31 = +[NSMutableArray array];
  +[NSDate timeIntervalSinceReferenceDate];
  v11 = v10;
  v37 = +[NSMutableDictionary dictionary];
  v38 = +[NSMutableSet set];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = a3;
  v34 = [a3 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v34)
  {
    v33 = *v44;
    do
    {
      v12 = 0;
      do
      {
        if (*v44 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v12;
        v13 = *(*(&v43 + 1) + 8 * v12);
        context = objc_autoreleasePoolPush();
        v14 = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:error:" error:v13, 0];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v15 = [(NSArray *)v14 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v40;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v40 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v39 + 1) + 8 * i);
              v20 = objc_autoreleasePoolPush();
              v21 = -[NSFileManager attributesOfItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "attributesOfItemAtPath:error:", [v13 stringByAppendingPathComponent:v19], 0);
              [(NSDate *)[(NSDictionary *)v21 fileCreationDate] timeIntervalSinceReferenceDate];
              v23 = v22;
              [(NSDate *)[(NSDictionary *)v21 fileModificationDate] timeIntervalSinceReferenceDate];
              v25 = v24;
              v26 = v11 - v23;
              v27 = v11 - v25;
              v28 = v11 - v23 > a6 && v27 > a6;
              if (!v28 && (!a4 || [a4 numberOfMatchesInString:v19 options:0 range:{0, objc_msgSend(v19, "length", v26, v27)}]) && (!a5 || !objc_msgSend(a5, "numberOfMatchesInString:options:range:", v19, 0, 0, objc_msgSend(v19, "length", v26, v27))) && (objc_msgSend(v38, "containsObject:", v19, v26, v27) & 1) == 0)
              {
                if (v23 <= v25)
                {
                  v29 = v25;
                }

                else
                {
                  v29 = v23;
                }

                [v37 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", v29), objc_msgSend(v13, "stringByAppendingPathComponent:", v19)}];
                [v38 addObject:v19];
              }

              objc_autoreleasePoolPop(v20);
            }

            v16 = [(NSArray *)v14 countByEnumeratingWithState:&v39 objects:v47 count:16];
          }

          while (v16);
        }

        objc_autoreleasePoolPop(context);
        v12 = v36 + 1;
      }

      while ((v36 + 1) != v34);
      v34 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v34);
  }

  [v31 addObjectsFromArray:{objc_msgSend(v37, "keysSortedByValueUsingComparator:", &stru_1000E2F00)}];
  return [v31 copy];
}

- (id)__mostRecentInDirectories:(id)a3 matchingPrefix:(id)a4 matchingSuffix:(id)a5 excludingPrefix:(id)a6 excludingSuffix:(id)a7 maxAge:(double)a8
{
  v32 = +[NSMutableArray array];
  +[NSDate timeIntervalSinceReferenceDate];
  v12 = v11;
  v38 = +[NSMutableDictionary dictionary];
  v39 = +[NSMutableSet set];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = a3;
  v35 = [a3 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v35)
  {
    v34 = *v48;
    do
    {
      v13 = 0;
      do
      {
        if (*v48 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v13;
        v14 = *(*(&v47 + 1) + 8 * v13);
        context = objc_autoreleasePoolPush();
        v15 = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:error:" error:v14, 0];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v16 = [(NSArray *)v15 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v44;
          do
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v44 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v43 + 1) + 8 * i);
              v21 = objc_autoreleasePoolPush();
              v22 = -[NSFileManager attributesOfItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "attributesOfItemAtPath:error:", [v14 stringByAppendingPathComponent:v20], 0);
              [(NSDate *)[(NSDictionary *)v22 fileCreationDate] timeIntervalSinceReferenceDate];
              v24 = v23;
              [(NSDate *)[(NSDictionary *)v22 fileModificationDate] timeIntervalSinceReferenceDate];
              v26 = v25;
              v27 = v12 - v24;
              v28 = v12 - v26;
              v29 = v12 - v24 > a8 && v28 > a8;
              if (!v29 && (!a4 || [v20 hasPrefix:{a4, v27, v28}]) && (!a5 || objc_msgSend(v20, "hasSuffix:", a5, v27, v28)) && (!a6 || (objc_msgSend(v20, "hasPrefix:", a6, v27, v28) & 1) == 0) && (!a7 || (objc_msgSend(v20, "hasSuffix:", a7, v27, v28) & 1) == 0) && (objc_msgSend(v39, "containsObject:", v20, v27, v28) & 1) == 0)
              {
                if (v24 <= v26)
                {
                  v30 = v26;
                }

                else
                {
                  v30 = v24;
                }

                [v38 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", v30), objc_msgSend(v14, "stringByAppendingPathComponent:", v20)}];
                [v39 addObject:v20];
              }

              objc_autoreleasePoolPop(v21);
            }

            v17 = [(NSArray *)v15 countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v17);
        }

        objc_autoreleasePoolPop(context);
        v13 = v37 + 1;
      }

      while ((v37 + 1) != v35);
      v35 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v35);
  }

  [v32 addObjectsFromArray:{objc_msgSend(v38, "keysSortedByValueUsingComparator:", &stru_1000E2F20)}];
  return [v32 copy];
}

- (id)__possibleCoreCapturePathsWithComponent:(id)a3
{
  v4 = +[NSMutableArray array];
  if (!a3)
  {
    a3 = @"WiFi";
  }

  [v4 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"/Library/Logs/CrashReporter/CoreCapture/%@", a3)}];
  [v4 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"/Library/Logs/CoreCapture/%@", a3)}];
  [v4 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"/var/mobile/Library/Logs/CrashReporter/CoreCapture/%@", a3)}];
  result = [v4 count];
  if (result)
  {
    v6 = [v4 copy];

    return v6;
  }

  return result;
}

- (void)__filterCoreCaptureContent:(id)a3
{
  v4 = +[NSMutableArray array];
  v5 = [NSRegularExpression regularExpressionWithPattern:@"\\.bin$|\\.pcapng\\.gz$" options:0 error:0];
  v27 = NSURLNameKey;
  v6 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:a3 options:[NSArray errorHandler:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 0, 0];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [(NSDirectoryEnumerator *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v20 = 0;
        [v11 getResourceValue:&v20 forKey:NSURLNameKey error:0];
        if (-[NSRegularExpression firstMatchInString:options:range:](v5, "firstMatchInString:options:range:", v20, 0, 0, [v20 length]))
        {
          [v4 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSDirectoryEnumerator *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = [v4 countByEnumeratingWithState:&v16 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v4);
        }

        [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:*(*(&v16 + 1) + 8 * v15), 0];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v4 countByEnumeratingWithState:&v16 objects:v25 count:16];
    }

    while (v13);
  }
}

- (id)__collectCoreCaptureDump:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  if ([(W5LogManager *)self __allowCoreCapture])
  {
    v6 = [objc_msgSend(a3 "configuration")];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = @"WiFiDebug";
    }

    v8 = [objc_msgSend(a3 "configuration")];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = @"WiFi";
    }

    [(W5LogManager *)self __dumpCoreCaptureLogsWithReason:v7 component:v9];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectCoreCapture:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = self;
  if ([(W5LogManager *)self __allowCoreCapture])
  {
    v7 = [objc_msgSend(a3 "configuration")];
    v8 = [objc_msgSend(a3 "configuration")];
    if (v8)
    {
      [v8 doubleValue];
      v10 = v9;
    }

    else
    {
      v10 = 1.79769313e308;
    }

    v11 = [objc_msgSend(a3 "configuration")];
    if (v11)
    {
      v29 = [v11 unsignedIntegerValue];
    }

    else
    {
      v29 = -1;
    }

    v12 = [objc_msgSend(a3 "configuration")];
    v30 = v5;
    if (v12)
    {
      v28 = [v12 unsignedIntegerValue];
    }

    else
    {
      v28 = -1;
    }

    v27 = [objc_msgSend(objc_msgSend(a3 "configuration")];
    v13 = [objc_msgSend(objc_msgSend(a3 "configuration")];
    v14 = [objc_msgSend(a3 "configuration")];
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = @"WiFi";
    }

    v16 = [objc_msgSend(a3 "configuration")];
    v17 = [objc_msgSend(a3 "configuration")];
    v18 = +[NSMutableArray array];
    v19 = &stru_1000E4788;
    if (v13)
    {
      v19 = @"-Filtered";
    }

    v20 = [NSString stringWithFormat:@"CoreCapture%@", v19];
    v21 = v7;
    -[NSFileManager createDirectoryAtPath:withIntermediateDirectories:attributes:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", [objc_msgSend(objc_msgSend(v7 "path")], 1, 0, 0);
    v22 = 0;
    if (v13)
    {
      v22 = v31;
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10006CFCC;
      v31[3] = &unk_1000E2F48;
      v31[4] = v6;
    }

    if (v16)
    {
      v16 = [NSRegularExpression regularExpressionWithPattern:v16 options:0 error:0];
    }

    if (v17)
    {
      v23 = [NSRegularExpression regularExpressionWithPattern:v17 options:0 error:0];
    }

    else
    {
      v23 = 0;
    }

    LOBYTE(v26) = v27;
    -[W5LogManager __collectFilesInDirectories:include:exclude:maxAge:maxCount:maxSize:outputDirectory:compress:remainingSize:contentFilter:](v6, "__collectFilesInDirectories:include:exclude:maxAge:maxCount:maxSize:outputDirectory:compress:remainingSize:contentFilter:", -[W5LogManager __possibleCoreCapturePathsWithComponent:](v6, "__possibleCoreCapturePathsWithComponent:", v15), v16, v23, v29, v28, [objc_msgSend(v21 URLByAppendingPathComponent:{v20), "URLByAppendingPathComponent:", v15}], v10, v26, 0, v22);
    [v18 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", v20)}];
    v24 = [(W5LogManager *)v6 __collectFileAtURL:[NSURL fileURLWithPath:?]maxSize:v21 compress:0x7FFFFFFFFFFFFFFFLL remainingSize:1, 0, 1.79769313e308];
    if (v24)
    {
      [v18 addObject:v24];
    }

    v5 = v30;
    [v30 setRelativeURLs:v18];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectCoreCapture24:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  if ([(W5LogManager *)self __allowCoreCapture])
  {
    v6 = [objc_msgSend(a3 "configuration")];
    v19 = [objc_msgSend(objc_msgSend(a3 "configuration")];
    v7 = [objc_msgSend(objc_msgSend(a3 "configuration")];
    v8 = [objc_msgSend(a3 "configuration")];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = @"WiFi";
    }

    v10 = [objc_msgSend(a3 "configuration")];
    v11 = [objc_msgSend(a3 "configuration")];
    v12 = +[NSMutableArray array];
    v13 = &stru_1000E4788;
    if (v7)
    {
      v13 = @"-Filtered";
    }

    v14 = [NSString stringWithFormat:@"CoreCapture%@", v13];
    v20 = v6;
    -[NSFileManager createDirectoryAtPath:withIntermediateDirectories:attributes:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", [objc_msgSend(objc_msgSend(v6 "path")], 1, 0, 0);
    v15 = 0;
    if (v7)
    {
      v15 = v21;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10006D2F8;
      v21[3] = &unk_1000E2F48;
      v21[4] = self;
    }

    if (v10)
    {
      v10 = [NSRegularExpression regularExpressionWithPattern:v10 options:0 error:0];
    }

    if (v11)
    {
      v11 = [NSRegularExpression regularExpressionWithPattern:v11 options:0 error:0];
    }

    LOBYTE(v18) = v19;
    -[W5LogManager __collectFilesInDirectories:include:exclude:maxAge:maxCount:maxSize:outputDirectory:compress:remainingSize:contentFilter:](self, "__collectFilesInDirectories:include:exclude:maxAge:maxCount:maxSize:outputDirectory:compress:remainingSize:contentFilter:", -[W5LogManager __possibleCoreCapturePathsWithComponent:](self, "__possibleCoreCapturePathsWithComponent:", v9), v10, v11, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL, [objc_msgSend(v20 URLByAppendingPathComponent:{v14), "URLByAppendingPathComponent:", v9}], 86400.0, v18, 0, v15);
    [v12 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", v14)}];
    v16 = [(W5LogManager *)self __collectFileAtURL:[NSURL fileURLWithPath:?]maxSize:v20 compress:0x7FFFFFFFFFFFFFFFLL remainingSize:1, 0, 1.79769313e308];
    if (v16)
    {
      [v12 addObject:v16];
    }

    [v5 setRelativeURLs:v12];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectWiFiPreferences:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v8 = +[NSMutableArray array];
  if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", @"/Library/Preferences/SystemConfiguration/com.apple.wifi.plist") && sub_100099544(+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"/Library/Preferences/SystemConfiguration/com.apple.wifi.plist"), [v6 URLByAppendingPathComponent:@"com.apple.wifi.plist"], 0))
  {
    [v8 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"com.apple.wifi.plist"}];
  }

  if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", @"/Library/Preferences/SystemConfiguration/com.apple.wifi-networks.plist") && sub_100099544(+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"/Library/Preferences/SystemConfiguration/com.apple.wifi-networks.plist"), [v6 URLByAppendingPathComponent:@"LEGACY_com.apple.wifi-networks.plist"], 0))
  {
    [v8 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"LEGACY_com.apple.wifi-networks.plist"}];
  }

  if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", @"/Library/Preferences/SystemConfiguration/com.apple.wifi-private-mac-networks.plist") && sub_100099544(+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"/Library/Preferences/SystemConfiguration/com.apple.wifi-private-mac-networks.plist"), [v6 URLByAppendingPathComponent:@"com.apple.wifi-private-mac-networks.plist"], 0))
  {
    [v8 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"com.apple.wifi-private-mac-networks.plist"}];
  }

  if ((os_variant_has_internal_content() | v7))
  {
    v9 = [NSString stringWithFormat:@"%@.plist", CWFKnownNetworksStoreIdentifier];
    v10 = [NSString stringWithFormat:@"/Library/Preferences/%@", v9];
    if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", v10) && sub_100099544(+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", v10), [v6 URLByAppendingPathComponent:v9], 0))
    {
      [v8 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", v9)}];
    }

    v11 = [+[NSFileManager defaultManager](NSFileManager containerURLForSecurityApplicationGroupIdentifier:"containerURLForSecurityApplicationGroupIdentifier:", @"group.com.apple.wifi.logs"];
    v12 = [(NSString *)[(NSURL *)v11 path] stringByAppendingPathComponent:@"com.apple.wifi.syncable-networks.plist"];
    if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", v12) && sub_100099544(+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", v12), [v6 URLByAppendingPathComponent:@"com.apple.wifi.syncable-networks.plist"], 0))
    {
      [v8 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"com.apple.wifi.syncable-networks.plist"}];
    }

    v13 = [(NSString *)[(NSURL *)v11 path] stringByAppendingPathComponent:@"com.apple.wifi.syncable-networks.legacy.plist"];
    if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", v13) && sub_100099544(+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", v13), [v6 URLByAppendingPathComponent:@"com.apple.wifi.syncable-networks.legacy.plist"], 0))
    {
      [v8 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"com.apple.wifi.syncable-networks.legacy.plist"}];
    }

    v14 = [(NSString *)[(NSURL *)v11 path] stringByAppendingPathComponent:@"com.apple.wifi.recent-networks.json"];
    if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", v14) && sub_100099544(+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", v14), [v6 URLByAppendingPathComponent:@"com.apple.wifi.recent-networks.json"], 0))
    {
      [v8 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"com.apple.wifi.recent-networks.json"}];
    }
  }

  else
  {
    debugLogQueue = self->_debugLogQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006D7C0;
    block[3] = &unk_1000E1C98;
    block[4] = a3;
    block[5] = self;
    dispatch_async(debugLogQueue, block);
  }

  [v5 setRelativeURLs:v8];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectNetworkPreferences:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  v5 = [objc_msgSend(a3 "configuration")];
  v6 = +[NSMutableArray array];
  if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", @"/Library/Preferences/SystemConfiguration/preferences.plist") && sub_100099544(+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"/Library/Preferences/SystemConfiguration/preferences.plist"), [v5 URLByAppendingPathComponent:@"preferences.plist"], 0))
  {
    [v6 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"preferences.plist"}];
  }

  [v4 setRelativeURLs:v6];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setCompletedAt:?];
  return v4;
}

- (void)__dumpWiFiLogs
{
  v2 = [(W5StatusManager *)self->_status concurrentQueue];

  [(NSOperationQueue *)v2 addOperationWithBlock:&stru_1000E2F68];
}

- (id)__collectFilteredWiFiManagerLogArchiveWithOutputURL:(id)a3 compress:(BOOL)a4 age:(unint64_t)a5
{
  v6 = a4;
  v9 = [objc_msgSend(a3 "path")];
  v12[3] = [NSString stringWithFormat:@"--last=%lus", a5, @"show", @"--debug", @"--signpost"];
  v12[4] = @"--style=compact";
  v12[5] = @"--predicate=(subsystem CONTAINS com.apple.WiFiManager) OR (subsystem CONTAINS wifi.analytics) OR (senderImagePath CONTAINS IO80211Family) OR (senderImagePath CONTAINS AppleBCMWLANCore) OR (process CONTAINS wifid)";
  v10 = 0;
  if ([NSTask runTaskWithLaunchPath:@"/usr/bin/log" arguments:[NSArray arrayWithObjects:v12 count:6] outputFilePath:v9 error:0])
  {
    if (v6)
    {
      v10 = [(W5LogManager *)self __collectFileAtURL:[NSURL fileURLWithPath:?]maxSize:a3 compress:0x7FFFFFFFFFFFFFFFLL remainingSize:1, 0, 1.79769313e308];
      [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v9, 0];
    }

    else
    {
      return [NSURL fileURLWithPath:@"wifi_logarchive.log"];
    }
  }

  return v10;
}

- (id)__collectWiFiLogs24:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v8 = +[NSMutableArray array];
  v9 = [(W5LogManager *)self __collectFileAtURL:[NSURL fileURLWithPath:?]maxSize:v6 compress:0x7FFFFFFFFFFFFFFFLL remainingSize:v7, 0, 86400.0];
  if (v9)
  {
    [v8 addObject:v9];
  }

  v10 = [(W5LogManager *)self __collectFileAtURL:[NSURL fileURLWithPath:?]maxSize:v6 compress:0x7FFFFFFFFFFFFFFFLL remainingSize:v7, 0, 86400.0];
  if (v10)
  {
    [v8 addObject:v10];
  }

  v11 = [(W5LogManager *)self __collectFileAtURL:[NSURL fileURLWithPath:?]maxSize:v6 compress:0x7FFFFFFFFFFFFFFFLL remainingSize:v7, 0, 86400.0];
  if (v11)
  {
    [v8 addObject:v11];
  }

  v12 = [(W5LogManager *)self __collectFileAtURL:[NSURL fileURLWithPath:?]maxSize:v6 compress:0x7FFFFFFFFFFFFFFFLL remainingSize:v7, 0, 86400.0];
  if (v12)
  {
    [v8 addObject:v12];
  }

  LOBYTE(v16) = v7;
  v13 = [(W5LogManager *)self __collectFilesInDirectories:[(W5LogManager *)self __possibleTempWiFiLogPaths] include:0 exclude:[NSRegularExpression regularExpressionWithPattern:? options:? error:?]compress:0x7FFFFFFFFFFFFFFFLL remainingSize:0x7FFFFFFFFFFFFFFFLL contentFilter:v6, 86400.0, v16, 0, 0];
  if (v13)
  {
    [v8 addObjectsFromArray:v13];
  }

  v14 = [(W5LogManager *)self __collectFilteredWiFiManagerLogArchiveWithOutputURL:v6 compress:v7 age:600];
  if (v14)
  {
    [v8 addObject:v14];
  }

  [v5 setRelativeURLs:v8];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectWiFiLogs:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(a3 "configuration")];
  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 1.79769313e308;
  }

  v10 = [objc_msgSend(a3 "configuration")];
  if (v10)
  {
    v11 = [v10 unsignedIntegerValue];
  }

  else
  {
    v11 = -1;
  }

  v12 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v13 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v14 = +[NSMutableArray array];
  if (v13)
  {
    v11 = 1;
  }

  else
  {
    v15 = [(W5LogManager *)self __collectFileAtURL:[NSURL fileURLWithPath:?]maxSize:v6 compress:0x7FFFFFFFFFFFFFFFLL remainingSize:v12, 0, 1.79769313e308];
    if (v15)
    {
      [v14 addObject:v15];
    }

    v16 = [(W5LogManager *)self __collectFileAtURL:[NSURL fileURLWithPath:?]maxSize:v6 compress:0x7FFFFFFFFFFFFFFFLL remainingSize:v12, 0, 1.79769313e308];
    if (v16)
    {
      [v14 addObject:v16];
    }

    v17 = [(W5LogManager *)self __collectFileAtURL:[NSURL fileURLWithPath:?]maxSize:v6 compress:0x7FFFFFFFFFFFFFFFLL remainingSize:v12, 0, 1.79769313e308];
    if (v17)
    {
      [v14 addObject:v17];
    }

    v18 = [(W5LogManager *)self __collectFileAtURL:[NSURL fileURLWithPath:?]maxSize:v6 compress:0x7FFFFFFFFFFFFFFFLL remainingSize:v12, 0, 1.79769313e308];
    if (v18)
    {
      [v14 addObject:v18];
    }
  }

  LOBYTE(v22) = v12;
  v19 = [(W5LogManager *)self __collectFilesInDirectories:[(W5LogManager *)self __possibleTempWiFiLogPaths] include:0 exclude:[NSRegularExpression regularExpressionWithPattern:? options:? error:?]compress:v11 remainingSize:0x7FFFFFFFFFFFFFFFLL contentFilter:v6, v9, v22, 0, 0];
  if (v19)
  {
    [v14 addObjectsFromArray:v19];
  }

  v20 = [(W5LogManager *)self __collectFilteredWiFiManagerLogArchiveWithOutputURL:v6 compress:v12 age:600];
  if (v20)
  {
    [v14 addObject:v20];
  }

  [v5 setRelativeURLs:v14];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectWiFiLogsDump:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  [(W5LogManager *)self __dumpWiFiLogs];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectEAP8021XLogs:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = +[NSMutableArray array];
  if ([[NSFileManager fileExistsAtPath:"fileExistsAtPath:" defaultManager:v6]
  {
    [v7 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"com.apple.network.eapolclient.configuration.plist"}];
  }

  v8 = [(W5LogManager *)self __mostRecentInDirectories:&off_1000F42F0 matchingPrefix:@"com.apple.networking.eapol.log" matchingSuffix:0 excludingPrefix:0 excludingSuffix:0 maxAge:1.79769313e308];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  if ([v8 count])
  {
    v9 = 1;
  }

  else
  {
    v9 = [v8 count];
  }

  v10 = [v8 subarrayWithRange:{0, v9}];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if (sub_100099544([NSURL fileURLWithPath:v15], v6, 0))
        {
          [v7 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", objc_msgSend(v15, "lastPathComponent"))}];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [v5 setRelativeURLs:v7];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectIPConfigurationLogs:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = +[NSMutableArray array];
  v8 = [(W5LogManager *)self __mostRecentInDirectories:&off_1000F4308 matchingPrefix:@"com.apple.networking.IPConfiguration.log" matchingSuffix:0 excludingPrefix:0 excludingSuffix:0 maxAge:1.79769313e308];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  if ([v8 count])
  {
    v9 = 1;
  }

  else
  {
    v9 = [v8 count];
  }

  v10 = [v8 subarrayWithRange:{0, v9}];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if (sub_100099544([NSURL fileURLWithPath:v15], v6, 0))
        {
          [v7 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", objc_msgSend(v15, "lastPathComponent"))}];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [v5 setRelativeURLs:v7];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectSystemLogs:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  v5 = [objc_msgSend(a3 "configuration")];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(a3 "configuration")];
  v8 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v9 = +[NSMutableArray array];
  v18[0] = @"-B";
  v18[1] = @"-x";
  v18[2] = [objc_msgSend(v5 "path")];
  if ([NSTask runTaskWithLaunchPath:@"/usr/bin/syslog" arguments:[NSArray arrayWithObjects:v18 count:3] error:0])
  {
    [v9 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"syslog.asl"}];
  }

  v10 = +[NSMutableArray array];
  [v10 addObject:@"collect"];
  if (v6)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v12 = v11;
    [v6 doubleValue];
    v14 = v12 - v13;
    v15 = objc_alloc_init(NSDateFormatter);
    [v15 setDateFormat:@"yyyy-MM-dd"];
    if (v8)
    {
      [v15 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    }

    v16 = [v15 stringFromDate:{+[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", v14)}];
    [v10 addObject:@"--start"];
    [v10 addObject:v16];
  }

  if (v7)
  {
    [v10 addObject:@"--size"];
    [v10 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lum", objc_msgSend(v7, "unsignedIntegerValue"))}];
  }

  [v10 addObject:@"--output"];
  [v10 addObject:{objc_msgSend(objc_msgSend(v5, "URLByAppendingPathComponent:isDirectory:", @"system.logarchive", 0), "path")}];
  if ([NSTask runTaskWithLaunchPath:@"/usr/bin/log" arguments:v10 error:0])
  {
    [v9 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"system.logarchive"}];
  }

  [v4 setRelativeURLs:v9];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setCompletedAt:?];
  return v4;
}

- (id)__collectWiFiVelocityLog:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v8 = [objc_msgSend(a3 "configuration")];
  if (v8)
  {
    v9 = [v8 unsignedIntegerValue];
  }

  else
  {
    v9 = 300;
  }

  v10 = [objc_msgSend(v6 "path")];
  v15[0] = @"show";
  v15[1] = @"--info";
  v15[2] = @"--debug";
  v15[3] = @"--signpost";
  v15[4] = [NSString stringWithFormat:@"--last=%lus", v9];
  v15[5] = @"--style=syslog";
  v15[6] = @"--predicate=message BEGINSWITH [wifivelocity]";
  if ([NSTask runTaskWithLaunchPath:@"/usr/bin/log" arguments:[NSArray arrayWithObjects:v15 count:7] outputFilePath:v10 error:0])
  {
    if (v7)
    {
      v11 = [(W5LogManager *)self __collectFileAtURL:[NSURL fileURLWithPath:?]maxSize:v6 compress:0x7FFFFFFFFFFFFFFFLL remainingSize:1, 0, 1.79769313e308];
      if (v11)
      {
        v14 = v11;
        [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v14, 1)}];
      }

      [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v10, 0];
    }

    else
    {
      v13 = [NSURL fileURLWithPath:@"wifivelocity_logarchive.log"];
      [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v13, 1)}];
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectSystemLogs24:(id)a3
{
  v5 = [objc_msgSend(a3 "configuration")];
  [v5 setObject:0 forKeyedSubscript:@"MaxSize"];
  [v5 setObject:&off_1000EF4D0 forKeyedSubscript:@"MaxAge"];
  [a3 setConfiguration:v5];

  return [(W5LogManager *)self __collectSystemLogs:a3];
}

- (id)__collectAirPlayLogs:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = +[NSMutableArray array];
  v8 = [(W5LogManager *)self __mostRecentInDirectories:&off_1000F4320 matchingPrefix:@"AirPlay" matchingSuffix:0 excludingPrefix:0 excludingSuffix:0 maxAge:1.79769313e308];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  if ([v8 count])
  {
    v9 = 1;
  }

  else
  {
    v9 = [v8 count];
  }

  v10 = [v8 subarrayWithRange:{0, v9}];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if (sub_100099544([NSURL fileURLWithPath:v15], v6, 0))
        {
          [v7 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", objc_msgSend(v15, "lastPathComponent"))}];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [v5 setRelativeURLs:v7];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectWirelessProxLogs:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  v5 = [objc_msgSend(a3 "configuration")];
  if ([[NSFileManager fileExistsAtPath:"fileExistsAtPath:" defaultManager:v5]
  {
    v7 = [NSURL fileURLWithPath:@"wirelessproxd.log"];
    [v4 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v7, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setCompletedAt:?];
  return v4;
}

- (id)__collectSharingLogs:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  v5 = [objc_msgSend(a3 "configuration")];
  v6 = [objc_msgSend(a3 "configuration")];
  if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", [objc_msgSend(v6 "path")]) && sub_100099544(objc_msgSend(v6, "URLByAppendingPathComponent:", @"/Library/Logs/com.apple.sharingd/sharingd.log"), v5, 0))
  {
    v8 = [NSURL fileURLWithPath:@"sharingd.log"];
    [v4 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v8, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setCompletedAt:?];
  return v4;
}

- (id)__collectBluetoothLogs:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  v5 = [objc_msgSend(a3 "configuration")];
  v6 = +[NSMutableArray array];
  if ([[NSFileManager fileExistsAtPath:"fileExistsAtPath:" defaultManager:v5]
  {
    [v6 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"com.apple.Bluetooth.plist"}];
  }

  if ([[NSFileManager fileExistsAtPath:"fileExistsAtPath:" defaultManager:v5]
  {
    [v6 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"blued.log"}];
  }

  if ([[NSFileManager fileExistsAtPath:"fileExistsAtPath:" defaultManager:v5]
  {
    [v6 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"blued.log"}];
  }

  if ([[NSFileManager fileExistsAtPath:"fileExistsAtPath:" defaultManager:v5]
  {
    [v6 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"com.apple.BTServer.plist"}];
  }

  [v4 setRelativeURLs:v6];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setCompletedAt:?];
  return v4;
}

- (id)__collectDextCoreDump:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  v5 = [objc_msgSend(a3 "configuration")];
  v24 = +[NSMutableArray array];
  v6 = +[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", [objc_msgSend(v5 "path")]);
  v7 = +[NSFileManager defaultManager];
  v29 = 0;
  if ([(NSFileManager *)v7 fileExistsAtPath:@"/private/var/dextcores" isDirectory:&v29]&& (v29 & 1) != 0)
  {
    v8 = @"/private/var/dextcores";
  }

  else
  {
    v8 = @"/private/var/cores";
  }

  v9 = [(NSFileManager *)v7 contentsOfDirectoryAtPath:v8 error:0];
  if ([(NSArray *)v9 count])
  {
    if ([(NSFileManager *)v7 createDirectoryAtPath:[(NSURL *)v6 path] withIntermediateDirectories:0 attributes:0 error:0])
    {
      v23 = v4;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v25 + 1) + 8 * i);
            v15 = [[NSURL fileURLWithPath:?], "URLByAppendingPathComponent:", v14];
            v16 = [v14 stringByAppendingString:@".tgz"];
            v17 = [(NSURL *)v6 URLByAppendingPathComponent:v16];
            *v31 = 0;
            if (sub_100098A4C(v15, v17, v31))
            {
              [v24 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", objc_msgSend(v16, "lastPathComponent"))}];
            }
          }

          v11 = [(NSArray *)v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v11);
      }

      v4 = v23;
      [v23 setRelativeURLs:v24];
    }

    else
    {
      v19 = sub_100098A04();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(NSURL *)v6 path];
        *v31 = 136316162;
        *&v31[4] = "[W5LogManager __collectDextCoreDump:]";
        v32 = 2080;
        v33 = "W5LogManager.m";
        v34 = 1024;
        v35 = 5757;
        v36 = 2114;
        v37 = v20;
        v38 = 2114;
        v39 = a3;
        LODWORD(v22) = 48;
        v21 = v31;
        _os_log_send_and_compose_impl();
      }
    }
  }

  [NSDate timeIntervalSinceReferenceDate:v21];
  [v4 setCompletedAt:?];
  return v4;
}

- (id)__collectCrashesAndSpins24:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  v24 = v4;
  [v4 setStartedAt:?];
  v5 = [objc_msgSend(a3 "configuration")];
  v25 = +[NSMutableArray array];
  v26 = v5;
  -[NSFileManager createDirectoryAtPath:withIntermediateDirectories:attributes:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", [objc_msgSend(v5 "path")], 0, 0, 0);
  v6 = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:error:" error:@"/Library/Logs/CrashReporter", 0];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    v10 = NSFileTypeRegular;
    do
    {
      v11 = 0;
      v27 = v8;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        v13 = -[NSFileManager attributesOfItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "attributesOfItemAtPath:error:", [@"/Library/Logs/CrashReporter" stringByAppendingPathComponent:v12], 0);
        [(NSDate *)[(NSDictionary *)v13 fileCreationDate] timeIntervalSinceReferenceDate];
        v15 = v14;
        if ([(NSString *)[(NSDictionary *)v13 fileType] isEqualToString:v10])
        {
          +[NSDate timeIntervalSinceReferenceDate];
          if (v16 - v15 < 86400.0)
          {
            if ([v12 hasSuffix:@"ips"])
            {
              v17 = +[NSData dataWithContentsOfFile:](NSData, "dataWithContentsOfFile:", [@"/Library/Logs/CrashReporter" stringByAppendingPathComponent:v12]);
              v18 = [(NSData *)v17 rangeOfData:[NSData dataWithBytes:1 length:?], 0, 0, [(NSData *)v17 length]];
              v19 = [(NSData *)v17 length];
              v20 = ~v18;
              v21 = [objc_msgSend(v12 "stringByDeletingPathExtension")];
              v22 = (v18 + 1);
              v10 = NSFileTypeRegular;
              v8 = v27;
              if (-[NSData writeToFile:atomically:](-[NSData subdataWithRange:](v17, "subdataWithRange:", v22, &v19[v20]), "writeToFile:atomically:", [objc_msgSend(objc_msgSend(v26 "path")], 0))
              {
                [v25 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", objc_msgSend(v21, "lastPathComponent"))}];
              }
            }
          }
        }

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v24 setCompletedAt:?];
  return v24;
}

- (id)__collectEventHistory:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  v6 = &WiFiManagerClientCopyProperty_ptr;
  +[NSDate timeIntervalSinceReferenceDate];
  v84 = v5;
  [v5 setStartedAt:?];
  v83 = [objc_msgSend(a3 "configuration")];
  v7 = [(W5StatusManager *)self->_status eventHistory];
  v8 = +[NSMutableString string];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v89 = [v7 countByEnumeratingWithState:&v90 objects:v95 count:16];
  if (v89)
  {
    v9 = *v91;
    v86 = v8;
    v87 = v7;
    v88 = *v91;
    v85 = self;
    do
    {
      v10 = 0;
      do
      {
        if (*v91 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v90 + 1) + 8 * v10);
        switch([v11 eventID])
        {
          case 4uLL:
            v12 = [objc_msgSend(v11 "info")];
            v13 = "no";
            if (([v12 isAppleReachable] & 2) != 0 && (objc_msgSend(v12, "isAppleReachable") & 4) == 0)
            {
              v13 = "yes";
            }

            v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Network Status: ipv4[if=%@ ip=%@ router=%@] ipv6[if=%@ ip=%@ router=%@] dns=%@ reach=%s", [v12 primaryIPv4InterfaceName], objc_msgSend(objc_msgSend(v12, "primaryIPv4Addresses"), "firstObject"), objc_msgSend(v12, "primaryIPv4Router"), objc_msgSend(v12, "primaryIPv6InterfaceName"), objc_msgSend(objc_msgSend(v12, "primaryIPv6Addresses"), "firstObject"), objc_msgSend(v12, "primaryIPv6Router"), objc_msgSend(objc_msgSend(v12, "primaryDNSAddresses"), "firstObject"), v13);
            v6 = &WiFiManagerClientCopyProperty_ptr;
            self = v85;
            v8 = v86;
            v7 = v87;
            v9 = v88;
            if (v14)
            {
              goto LABEL_44;
            }

            goto LABEL_45;
          case 0xCuLL:
            v17 = @"BT Paging Start";
            goto LABEL_42;
          case 0xDuLL:
            v17 = @"BT Paging End";
            goto LABEL_42;
          case 0xEuLL:
            v43 = [v11 info];
            v44 = [v43 objectForKeyedSubscript:@"InterfaceName"];
            [objc_msgSend(v43 objectForKeyedSubscript:{@"EAPControlMode", "unsignedIntValue"}];
            [objc_msgSend(v43 objectForKeyedSubscript:{@"EAPControlState", "unsignedIntValue"}];
            [objc_msgSend(v43 objectForKeyedSubscript:{@"EAPSupplicantState", "unsignedIntValue"}];
            v45 = [objc_msgSend(v43 objectForKeyedSubscript:{@"EAPClientStatus", "intValue"}];
            v46 = W5DescriptionForEAPOLControlState();
            v47 = W5DescriptionForEAPOLControlMode();
            v7 = v87;
            v75 = v46;
            v9 = v88;
            v8 = v86;
            v18 = [NSString stringWithFormat:@"EAP8021X: %@ if=%@ mode=%@ supp=%@ status=%u", v75, v44, v47, W5DescriptionForEAPOLSupplicantState(), v45];
            break;
          case 0xFuLL:
            v28 = [v11 info];
            [objc_msgSend(v28 objectForKeyedSubscript:{@"PowerSourceType", "integerValue"}];
            [objc_msgSend(v28 objectForKeyedSubscript:{@"BatteryEstimatedTime", "doubleValue"}];
            v30 = v29;
            [objc_msgSend(v28 objectForKeyedSubscript:{@"BatteryLevel", "doubleValue"}];
            v32 = v31;
            [objc_msgSend(v28 objectForKeyedSubscript:{@"BatteryWarningLevel", "intValue"}];
            v33 = W5DescriptionForPowerSourceType();
            v80 = COERCE_DOUBLE(W5DescriptionForBatteryWarningLevel());
            v76 = v30;
            v78 = v32;
            v72 = v33;
            v17 = @"Power Source: ps=%@ est=%.3fs lvl=%.1f%% warn=%@";
            goto LABEL_35;
          case 0x10uLL:
            [objc_msgSend(objc_msgSend(v11 "info")];
            v72 = W5DescriptionForPowerStateCaps();
            v17 = @"Power State: %@";
            goto LABEL_42;
          case 0x11uLL:
            v50 = [v11 info];
            [objc_msgSend(v50 objectForKeyedSubscript:{@"PowerSourceType", "integerValue"}];
            [objc_msgSend(v50 objectForKeyedSubscript:{@"BatteryEstimatedTime", "doubleValue"}];
            v52 = v51;
            [objc_msgSend(v50 objectForKeyedSubscript:{@"BatteryLevel", "doubleValue"}];
            v54 = v53;
            [objc_msgSend(v50 objectForKeyedSubscript:{@"BatteryWarningLevel", "intValue"}];
            v55 = W5DescriptionForPowerSourceType();
            v80 = COERCE_DOUBLE(W5DescriptionForBatteryWarningLevel());
            v76 = v52;
            v78 = v54;
            v72 = v55;
            v17 = @"Low Battery: ps=%@ est=%.3fs lvl=%.1f%% warn=%@";
            goto LABEL_35;
          case 0x12uLL:
            v56 = [v11 info];
            v57 = [v56 objectForKeyedSubscript:@"InterfaceName"];
            v58 = [objc_msgSend(v56 objectForKeyedSubscript:{@"WiFiPowerOn", "BOOLValue"}];
            v59 = "OFF";
            if (v58)
            {
              v59 = "ON";
            }

            v18 = [NSString stringWithFormat:@"Wi-Fi Power: if=%@ state=%s", v57, v59, v78, *&v80, v82];
            break;
          case 0x13uLL:
            v67 = [v11 info];
            v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Wi-Fi SSID: if=%@ ssid=%@", [v67 objectForKeyedSubscript:@"InterfaceName"], objc_msgSend(v67, "objectForKeyedSubscript:", @"WiFiSSIDString"), v78, *&v80, v82);
            break;
          case 0x14uLL:
            v66 = [v11 info];
            v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Wi-Fi BSSID: if=%@ bssid=%@", [v66 objectForKeyedSubscript:@"InterfaceName"], objc_msgSend(v66, "objectForKeyedSubscript:", @"WiFiBSSID"), v78, *&v80, v82);
            break;
          case 0x15uLL:
            v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Wi-Fi RSN Handshake: if=%@", [objc_msgSend(v11 "info")], v76, v78, *&v80, v82);
            break;
          case 0x16uLL:
            v36 = [v11 info];
            v37 = [v36 objectForKeyedSubscript:@"InterfaceName"];
            v38 = [objc_msgSend(v36 objectForKeyedSubscript:{@"WiFiLinkUp", "BOOLValue"}];
            v39 = [objc_msgSend(v36 objectForKeyedSubscript:{@"WiFiLinkChangeReason", "integerValue"}];
            v40 = [objc_msgSend(v36 objectForKeyedSubscript:{@"WiFiLinkChangeSubreason", "integerValue"}];
            v41 = [objc_msgSend(v36 objectForKeyedSubscript:{@"WiFiLinkChangeInvoluntary", "BOOLValue"}];
            v42 = "DOWN";
            if (v38)
            {
              v42 = "UP";
            }

            v81 = v40;
            v79 = v39;
            v9 = v88;
            v74 = v37;
            v8 = v86;
            v7 = v87;
            v18 = [NSString stringWithFormat:@"Wi-Fi Link: if=%@ link=%s reason=%ld subreason=%ld involuntary=%d", v74, v42, v79, v81, v41];
            break;
          case 0x17uLL:
            v34 = [v11 info];
            v35 = [v34 objectForKeyedSubscript:@"InterfaceName"];
            [objc_msgSend(v34 objectForKeyedSubscript:{@"WiFiMode", "intValue"}];
            v72 = v35;
            v76 = W5DescriptionForOpMode();
            v17 = @"Wi-Fi Mode: if=%@ mode=%@";
            goto LABEL_42;
          case 0x18uLL:
            v19 = [v11 info];
            v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Wi-Fi Country Code: if=%@ cc=%@", [v19 objectForKeyedSubscript:@"InterfaceName"], objc_msgSend(v19, "objectForKeyedSubscript:", @"WiFiCountryCode"), v78, *&v80, v82);
            break;
          case 0x19uLL:
            v60 = [v11 info];
            v61 = [v60 objectForKeyedSubscript:@"InterfaceName"];
            v62 = [v60 objectForKeyedSubscript:@"WiFiLinkQualityUpdate"];
            v63 = [v62 rssi];
            v64 = [v62 txRate];
            [v62 cca];
            v80 = v65;
            v76 = v63;
            v78 = v64;
            v8 = v86;
            v7 = v87;
            v72 = v61;
            v17 = @"Wi-Fi Link Quality: if=%@ rssi=%lddBm txrate=%ldMbps cca=%.1f%%";
LABEL_35:
            v9 = v88;
            goto LABEL_42;
          case 0x1AuLL:
            v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Wi-Fi Deauth: if=%@", [objc_msgSend(v11 "info")], v76, v78, *&v80, v82);
            break;
          case 0x1BuLL:
            v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Wi-Fi Reset: if=%@", [objc_msgSend(v11 "info")], v76, v78, *&v80, v82);
            break;
          case 0x1CuLL:
            v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Wi-Fi Availabe: if=%@", [objc_msgSend(v11 "info")], v76, v78, *&v80, v82);
            break;
          case 0x1DuLL:
            v15 = [v11 info];
            v16 = [v15 objectForKeyedSubscript:@"InterfaceName"];
            [v15 objectForKeyedSubscript:@"WiFiChannel"];
            v72 = v16;
            v76 = W5DescriptionForChannel();
            v17 = @"Wi-Fi Channel Switch: if=%@ ch=%@";
            goto LABEL_42;
          case 0x1EuLL:
            v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Wi-Fi Roam Start: if=%@", [objc_msgSend(v11 "info")], v76, v78, *&v80, v82);
            break;
          case 0x1FuLL:
            v72 = [objc_msgSend(v11 "info")];
            v17 = @"Wi-Fi Roam End: if=%@";
            goto LABEL_42;
          case 0x20uLL:
            v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"AWDL RTM Start: if=%@", [objc_msgSend(v11 "info")], v76, v78, *&v80, v82);
            break;
          case 0x21uLL:
            v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"AWDL RTM End: if=%@", [objc_msgSend(v11 "info")], v76, v78, *&v80, v82);
            break;
          case 0x22uLL:
            v20 = [objc_msgSend(v11 "info")];
            v21 = [v20 interfaceName];
            v22 = [v20 address];
            [v20 min];
            v24 = v23;
            [v20 max];
            v26 = v25;
            [v20 packetLoss];
            v73 = v21;
            v77 = v22;
            v7 = v87;
            v9 = v88;
            v18 = [NSString stringWithFormat:@"Ping: if=%@ addr=%@ min=%.2fms max=%.2fms loss=%.2f%%", v73, v77, v24, v26, v27];
            break;
          case 0x23uLL:
            v48 = [v11 info];
            v49 = [v48 objectForKeyedSubscript:@"InterfaceName"];
            [objc_msgSend(v48 objectForKeyedSubscript:{@"WiFiDropReason", "integerValue"}];
            v72 = v49;
            v76 = W5DescriptionForWiFiDropReason();
            v17 = @"Wi-Fi Drop: if=%@ reason=%@";
LABEL_42:
            v18 = [NSString stringWithFormat:v17, v72, v76, v78, *&v80, v82];
            break;
          default:
            v18 = [NSString stringWithFormat:@"Unhandled Event: event=%@", v11, v76, v78, *&v80, v82];
            break;
        }

        v14 = v18;
        if (v18)
        {
LABEL_44:
          dateFormatter = self->_dateFormatter;
          v69 = v6[474];
          [v11 timestamp];
          [v8 appendFormat:@"%@ %@\n", -[NSDateFormatter stringFromDate:](dateFormatter, "stringFromDate:", objc_msgSend(v69, "dateWithTimeIntervalSinceReferenceDate:")), v14];
        }

LABEL_45:
        v10 = v10 + 1;
      }

      while (v89 != v10);
      v70 = [v7 countByEnumeratingWithState:&v90 objects:v95 count:16];
      v89 = v70;
    }

    while (v70);
  }

  if (-[NSFileManager createFileAtPath:contents:attributes:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createFileAtPath:contents:attributes:", [objc_msgSend(v83 "path")], objc_msgSend(v8, "dataUsingEncoding:", 4), 0))
  {
    v94 = [NSURL fileURLWithPath:@"event_history.txt"];
    [v84 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v94, 1)}];
  }

  [v6[474] timeIntervalSinceReferenceDate];
  [v84 setCompletedAt:?];
  return v84;
}

- (id)__collectAdditionalLog:(id)a3 url:(id)a4
{
  v6 = objc_alloc_init(W5LogItemReceipt);
  [v6 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v6 setStartedAt:?];
  v7 = [objc_msgSend(a3 "configuration")];
  if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", [a4 path]) && sub_100099544(a4, objc_msgSend(v7, "URLByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"additional.log")), 0))
  {
    v9 = [NSURL fileURLWithPath:@"additional.log"];
    [v6 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v9, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v6 setCompletedAt:?];
  return v6;
}

- (id)__collectMultiple:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  v46 = [objc_msgSend(a3 "configuration")];
  v45 = [objc_msgSend(a3 "configuration")];
  v44 = [objc_msgSend(a3 "configuration")];
  v43 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v42 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v5 = [objc_msgSend(a3 "configuration")];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(a3 "configuration")];
  v8 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  obj = [objc_msgSend(a3 "configuration")];
  v9 = [objc_msgSend(a3 "configuration")];
  if (v9)
  {
    v10 = [v9 unsignedIntegerValue];
  }

  else
  {
    v10 = 10000;
  }

  if (v5)
  {
    *v68 = 0;
    *&v68[8] = v68;
    *&v68[16] = 0x2020000000;
    v69 = 0;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100070D98;
    block[3] = &unk_1000E2778;
    block[5] = v5;
    block[6] = v68;
    block[4] = self;
    dispatch_sync(queue, block);
    v12 = *(*&v68[8] + 24);
    v13 = sub_100098A04();
    v10 += v12;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(*&v68[8] + 24);
      v15 = [v5 substringToIndex:5];
      v16 = v10 - *(*&v68[8] + 24);
      *v64 = 134218754;
      *&v64[4] = v14;
      *&v64[12] = 2114;
      *&v64[14] = v15;
      *&v64[22] = 2048;
      v65 = v16;
      v66 = 2048;
      v67 = v10;
      LODWORD(v36) = 42;
      v34 = v64;
      _os_log_send_and_compose_impl();
    }

    _Block_object_dispose(v68, 8);
  }

  v47 = [NSMutableArray array:v34];
  *v64 = 0;
  *&v64[8] = v64;
  *&v64[16] = 0x2020000000;
  LOBYTE(v65) = 0;
  v17 = dispatch_queue_create(0, 0);
  v18 = objc_alloc_init(NSOperationQueue);
  [(NSOperationQueue *)v18 setMaxConcurrentOperationCount:1];
  if (v8)
  {
    v18 = [(W5StatusManager *)self->_status concurrentQueue];
  }

  v39 = v10;
  v40 = v4;
  v19 = dispatch_group_create();
  v38 = mach_absolute_time();
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v20 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v20)
  {
    v21 = *v57;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v57 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v56 + 1) + 8 * i);
        dispatch_group_enter(v19);
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_100070DF0;
        v53[3] = &unk_1000E2F90;
        v53[4] = v23;
        v53[5] = v46;
        v53[6] = v45;
        v53[7] = v44;
        v54 = v43;
        v55 = v42;
        v53[8] = self;
        v53[9] = v17;
        v53[11] = v19;
        v53[12] = v64;
        v53[10] = v47;
        [(NSOperationQueue *)v18 addOperationWithBlock:v53];
      }

      v20 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v20);
  }

  if (v39)
  {
    v24 = dispatch_time(0, 1000000 * v39);
  }

  else
  {
    v24 = -1;
  }

  v25 = dispatch_group_wait(v19, v24);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100070FAC;
  v52[3] = &unk_1000E13B0;
  v52[4] = v64;
  dispatch_sync(v17, v52);
  if (v39 && !v25 && v6)
  {
    info = 0;
    mach_timebase_info(&info);
    v26 = info.denom ? (mach_absolute_time() - v38) * info.numer / info.denom / 0xF4240 : 0;
    v27 = v39 - v26;
    v28 = self->_queue;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100070FF0;
    v50[3] = &unk_1000E24E0;
    v50[4] = self;
    v50[5] = v6;
    v50[6] = v39 - v26;
    dispatch_async(v28, v50);
    v29 = sub_100098A04();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v6 substringToIndex:5];
      *v68 = 134218242;
      *&v68[4] = v27;
      *&v68[12] = 2114;
      *&v68[14] = v30;
      LODWORD(v37) = 22;
      v35 = v68;
      _os_log_send_and_compose_impl();
    }
  }

  v31 = mach_absolute_time();
  v32 = self->_queue;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10007104C;
  v49[3] = &unk_1000E24E0;
  v49[4] = v7;
  v49[5] = self;
  v49[6] = v31;
  dispatch_async(v32, v49);
  v61[0] = @"Receipts";
  v62[0] = [v47 copy];
  v61[1] = @"TimeoutOccurred";
  v62[1] = [NSNumber numberWithInt:v25 != 0, v35, v37];
  [v40 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v62, v61, 2)}];
  +[NSDate timeIntervalSinceReferenceDate];
  [v40 setCompletedAt:?];
  if (v19)
  {
    dispatch_release(v19);
  }

  if (v17)
  {
    dispatch_release(v17);
  }

  _Block_object_dispose(v64, 8);
  return v40;
}

- (id)__collect_mobilewifitool:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(a3 "configuration")];
  [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v6, 0];
  [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:v6 attributes:0, 0];
  v7 = [NSFileHandle fileHandleForUpdatingAtPath:v6];
  if (v7)
  {
    v8 = v7;
    [(W5LogManager *)self __runToolWithOutputFileHandle:v7 launchPath:@"/usr/local/bin/mobilewifitool" arguments:&off_1000F4338];
    [(W5LogManager *)self __runToolWithOutputFileHandle:v8 launchPath:@"/usr/local/bin/mobilewifitool" arguments:&off_1000F4350];
    [(NSFileHandle *)v8 closeFile];
    v10 = [NSURL fileURLWithPath:@"mobilewifitool.txt"];
    [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v10, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (void)__endWiFiStats
{
  if (self->_ioReportSubscription && self->_ioReportBase)
  {
    if (self->_ioReportDelta)
    {
      CFRelease(self->_ioReportDelta);
      ioReportSubscription = self->_ioReportSubscription;
    }

    ioReportChannels = self->_ioReportChannels;
    Samples = IOReportCreateSamples();
    ioReportBase = self->_ioReportBase;
    self->_ioReportDelta = IOReportCreateSamplesDelta();
    self->_ioReportDeltaMachAbsoluteTime = mach_absolute_time();
    if (Samples)
    {

      CFRelease(Samples);
    }
  }
}

- (void)__startWiFiStats
{
  if (self->_ioReportSubscription)
  {
    if (self->_ioReportBase)
    {
      CFRelease(self->_ioReportBase);
      ioReportSubscription = self->_ioReportSubscription;
    }

    ioReportChannels = self->_ioReportChannels;
    self->_ioReportBase = IOReportCreateSamples();
    self->_ioReportBaseMachAbsoluteTime = mach_absolute_time();
  }
}

- (void)__teardownWiFiStats
{
  self->_ioReportBaseMachAbsoluteTime = 0;
  self->_ioReportDeltaMachAbsoluteTime = 0;
  ioReportBase = self->_ioReportBase;
  if (ioReportBase)
  {
    CFRelease(ioReportBase);
  }

  self->_ioReportBase = 0;
  ioReportDelta = self->_ioReportDelta;
  if (ioReportDelta)
  {
    CFRelease(ioReportDelta);
  }

  self->_ioReportDelta = 0;
  ioReportChannels = self->_ioReportChannels;
  if (ioReportChannels)
  {
    CFRelease(ioReportChannels);
  }

  self->_ioReportChannels = 0;
  ioReportSubscription = self->_ioReportSubscription;
  if (ioReportSubscription)
  {
    CFRelease(ioReportSubscription);
  }

  self->_ioReportSubscription = 0;
}

- (void)__setupWiFiStats
{
  *parent = 0;
  Aggregate = IOReportCreateAggregate();
  if (Aggregate)
  {
    v4 = Aggregate;
    Apple80211GetIOReportingService();
    v5 = IOServiceMatching("apcie");
    MatchingService = IOServiceGetMatchingService(0, v5);
    parent[1] = MatchingService;
    if (MatchingService)
    {
      while (!IORegistryEntryGetChildEntry(MatchingService, "IOService", parent))
      {
        IOObjectRelease(parent[1]);
        MatchingService = parent[0];
        parent[1] = parent[0];
        if (!parent[0])
        {
          goto LABEL_18;
        }
      }

      if (parent[1])
      {
        v7 = IOReportCopyChannelsForDriver();
        if (v7)
        {
          v8 = v7;
          if (IOReportGetChannelCount())
          {
            IOReportMergeChannels();
          }

          CFRelease(v8);
        }

        if (!IORegistryEntryGetParentEntry(parent[1], "IOService", parent))
        {
          do
          {
            v9 = IOReportCopyChannelsForDriver();
            if (v9)
            {
              v10 = v9;
              if (IOReportGetChannelCount())
              {
                IOReportMergeChannels();
              }

              CFRelease(v10);
            }

            IOObjectRelease(parent[1]);
            parent[1] = parent[0];
          }

          while (!IORegistryEntryGetParentEntry(parent[0], "IOService", parent));
        }

        IOObjectRelease(parent[1]);
      }
    }

LABEL_18:
    v11 = IOReportCopyChannelsInCategories();
    if (v11)
    {
      v12 = v11;
      if (IOReportGetChannelCount())
      {
        v19 = CFStringCreateWithCString(kCFAllocatorDefault, "Energy Model", 0);
        IOReportPrune();
        CFRelease(v19);
        IOReportMergeChannels();
      }

      CFRelease(v12);
    }

    v13 = IOReportCopyChannelsInCategories();
    if (v13)
    {
      v14 = v13;
      if (IOReportGetChannelCount())
      {
        v18 = CFStringCreateWithCString(kCFAllocatorDefault, "CPU Stats", 0);
        IOReportPrune();
        CFRelease(v18);
        IOReportMergeChannels();
      }

      CFRelease(v14);
    }

    v15 = IOReportCopyChannelsInCategories();
    if (v15)
    {
      v16 = v15;
      if (IOReportGetChannelCount())
      {
        v17 = CFStringCreateWithCString(kCFAllocatorDefault, "Voltage Domain Performance States", 0);
        IOReportPrune();
        CFRelease(v17);
        IOReportMergeChannels();
      }

      CFRelease(v16);
    }

    self->_ioReportSubscription = IOReportCreateSubscription();
    CFRelease(v4);
  }
}

- (id)__collectWiFiStatsPre:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  [(W5LogManager *)self __teardownWiFiStats];
  [(W5LogManager *)self __setupWiFiStats];
  [(W5LogManager *)self __startWiFiStats];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectWiFiStatsPost:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  [(W5LogManager *)self __endWiFiStats];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  v12[0] = @"MachBegin";
  v13[0] = [NSNumber numberWithUnsignedLongLong:self->_ioReportBaseMachAbsoluteTime];
  v12[1] = @"MachEnd";
  v13[1] = [NSNumber numberWithUnsignedLongLong:self->_ioReportDeltaMachAbsoluteTime];
  v12[2] = @"Duration";
  v13[2] = [NSNumber numberWithUnsignedLongLong:self->_ioReportDeltaMachAbsoluteTime - self->_ioReportBaseMachAbsoluteTime];
  [(__CFDictionary *)self->_ioReportDelta setObject:[NSDictionary forKey:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v13 forKeys:v12 count:3], @"DebugInfo"];
  v8 = [objc_msgSend(v6 "path")];
  if ([+[NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:"]
  {
    if (v7)
    {
      if (sub_100098A4C(+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", v8), [v6 URLByAppendingPathComponent:@"wifi_stats.xml.tgz"], 0))
      {
        v11 = [NSURL fileURLWithPath:@"wifi_stats.xml.tgz"];
        [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v11, 1)}];
        [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v8, 0];
      }
    }

    else
    {
      v10 = [NSURL fileURLWithPath:@"wifi_stats.xml"];
      [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v10, 1)}];
    }
  }

  [(W5LogManager *)self __teardownWiFiStats];
  return v5;
}

- (id)__collectWiFiStatsCLI:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  v5 = [objc_msgSend(a3 "configuration")];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v8 = [v5 path];
  if (!v6)
  {
    v6 = @"wifistats.xml";
  }

  v9 = [v8 stringByAppendingPathComponent:v6];
  if (v9)
  {
    v10 = v9;
    v16[0] = @"-p";
    v16[1] = v9;
    if ([NSTask runTaskWithLaunchPath:@"/usr/local/bin/wifistats" arguments:[NSArray arrayWithObjects:v16 count:2] error:0])
    {
      if (!v7)
      {
        v14 = [NSURL fileURLWithPath:v6];
        v12 = &v14;
        goto LABEL_9;
      }

      v11 = [(__CFString *)v6 stringByAppendingPathExtension:@"tgz"];
      if (sub_100098A4C(+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", v10), [v5 URLByAppendingPathComponent:v11], 0))
      {
        [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v10, 0];
        v15 = [NSURL fileURLWithPath:v11];
        v12 = &v15;
LABEL_9:
        [v4 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v12, 1)}];
      }
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setCompletedAt:?];
  return v4;
}

- (id)__collectPreviouslyCollected:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  v5 = [objc_msgSend(a3 "configuration")];
  v6 = [objc_msgSend(a3 "configuration")];
  if (v6)
  {
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 1.79769313e308;
  }

  v9 = [objc_msgSend(a3 "configuration")];
  if (v9)
  {
    v10 = [v9 unsignedIntegerValue];
  }

  else
  {
    v10 = -1;
  }

  v11 = [objc_msgSend(a3 "configuration")];
  if (v11)
  {
    v12 = [v11 unsignedIntegerValue];
  }

  else
  {
    v12 = -1;
  }

  v13 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v14 = [objc_msgSend(a3 "configuration")];
  v15 = [objc_msgSend(a3 "configuration")];
  v16 = +[NSMutableArray array];
  -[NSFileManager createDirectoryAtPath:withIntermediateDirectories:attributes:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", [objc_msgSend(v5 "path")], 0, 0, 0);
  if (v14)
  {
    v14 = [NSRegularExpression regularExpressionWithPattern:v14 options:0 error:0];
  }

  if (v15)
  {
    v15 = [NSRegularExpression regularExpressionWithPattern:v15 options:0 error:0];
  }

  v20 = -[NSURL path]([(NSURL *)[+[NSFileManager defaultManager](NSFileManager containerURLForSecurityApplicationGroupIdentifier:"containerURLForSecurityApplicationGroupIdentifier:" URLByAppendingPathComponent:"URLByAppendingPathComponent:", @"previous"), "path"];
  LOBYTE(v18) = v13;
  if ([-[W5LogManager __collectFilesInDirectories:include:exclude:maxAge:maxCount:maxSize:outputDirectory:compress:remainingSize:contentFilter:](self __collectFilesInDirectories:+[NSArray arrayWithObjects:count:](NSArray include:"arrayWithObjects:count:" exclude:&v20 maxAge:1) maxCount:v14 maxSize:v15 outputDirectory:v10 compress:v12 remainingSize:objc_msgSend(v5 contentFilter:{"URLByAppendingPathComponent:", @"Previous", v8, v18, 0, 0), "count"}])
  {
    [v16 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"Previous"}];
  }

  else
  {
    -[NSFileManager removeItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "removeItemAtPath:error:", [objc_msgSend(v5 "path")], 0);
  }

  [v4 setRelativeURLs:v16];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setCompletedAt:?];
  return v4;
}

- (id)__collectWiFiMemoryUsage:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  v5 = [objc_msgSend(a3 "configuration")];
  v6 = +[NSMutableArray array];
  if (+[NSTask runTaskWithLaunchPath:arguments:outputFilePath:error:](NSTask, "runTaskWithLaunchPath:arguments:outputFilePath:error:", @"/usr/bin/footprint", &off_1000F4368, [objc_msgSend(v5 "path")], 0))
  {
    [v6 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"footprint_wifid.txt"}];
  }

  if (+[NSTask runTaskWithLaunchPath:arguments:outputFilePath:error:](NSTask, "runTaskWithLaunchPath:arguments:outputFilePath:error:", @"/usr/bin/vmmap", &off_1000F4380, [objc_msgSend(v5 "path")], 0))
  {
    [v6 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"vmmap_wifid.txt"}];
  }

  if (+[NSTask runTaskWithLaunchPath:arguments:outputFilePath:error:](NSTask, "runTaskWithLaunchPath:arguments:outputFilePath:error:", @"/usr/bin/heap", &off_1000F4398, [objc_msgSend(v5 "path")], 0))
  {
    [v6 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"heap_wifid.txt"}];
  }

  if (+[NSTask runTaskWithLaunchPath:arguments:timeout:outputFilePath:errorFilePath:redirectErrorToOutput:launchHandler:didLaunch:error:](NSTask, "runTaskWithLaunchPath:arguments:timeout:outputFilePath:errorFilePath:redirectErrorToOutput:launchHandler:didLaunch:error:", @"/usr/local/bin/easyperf", &off_1000F43B0, 0, [objc_msgSend(v5 "path")], 0, 0, 10.0, 0, 0))
  {
    [v6 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"easyperf_wifid.txt"}];
  }

  if (+[NSTask runTaskWithLaunchPath:arguments:outputFilePath:error:](NSTask, "runTaskWithLaunchPath:arguments:outputFilePath:error:", @"/usr/bin/footprint", &off_1000F43C8, [objc_msgSend(v5 "path")], 0))
  {
    [v6 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"footprint_dext.txt"}];
  }

  if (+[NSTask runTaskWithLaunchPath:arguments:outputFilePath:error:](NSTask, "runTaskWithLaunchPath:arguments:outputFilePath:error:", @"/usr/bin/vmmap", &off_1000F43E0, [objc_msgSend(v5 "path")], 0))
  {
    [v6 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"vmmap_dext.txt"}];
  }

  if (+[NSTask runTaskWithLaunchPath:arguments:outputFilePath:error:](NSTask, "runTaskWithLaunchPath:arguments:outputFilePath:error:", @"/usr/bin/heap", &off_1000F43F8, [objc_msgSend(v5 "path")], 0))
  {
    [v6 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"heap_dext.txt"}];
  }

  if (+[NSTask runTaskWithLaunchPath:arguments:timeout:outputFilePath:errorFilePath:redirectErrorToOutput:launchHandler:didLaunch:error:](NSTask, "runTaskWithLaunchPath:arguments:timeout:outputFilePath:errorFilePath:redirectErrorToOutput:launchHandler:didLaunch:error:", @"/usr/local/bin/easyperf", &off_1000F4410, 0, [objc_msgSend(v5 "path")], 0, 0, 10.0, 0, 0))
  {
    [v6 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"easyperf_dext.txt"}];
  }

  if (+[NSTask runTaskWithLaunchPath:arguments:outputFilePath:error:](NSTask, "runTaskWithLaunchPath:arguments:outputFilePath:error:", @"/usr/bin/zprint", 0, [objc_msgSend(v5 "path")], 0))
  {
    [v6 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"zprint.txt"}];
  }

  if (+[NSTask runTaskWithLaunchPath:arguments:outputFilePath:error:](NSTask, "runTaskWithLaunchPath:arguments:outputFilePath:error:", @"/usr/local/bin/jetsam_priority", &off_1000F4428, [objc_msgSend(v5 "path")], 0))
  {
    [v6 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", @"jetsam_priority.txt"}];
  }

  [v4 setRelativeURLs:v6];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setCompletedAt:?];
  return v4;
}

- (id)__collectWiFiDeviceConfig:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName];
  v8 = [objc_msgSend(v6 "path")];
  [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v8, 0];
  [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:v8 attributes:0, 0];
  v9 = [NSFileHandle fileHandleForUpdatingAtPath:v8];
  if (v9)
  {
    v10 = v9;
    v11 = [NSMutableData dataWithCapacity:0];
    v36[0] = v7;
    v36[1] = @"-cardcap";
    [NSTask runTaskWithLaunchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v36 count:2] outputData:v11 error:0];
    v12 = [objc_msgSend([NSString alloc] initWithData:v11 encoding:{4), "componentsSeparatedByString:", @"\n"}];
    [(NSMutableData *)v11 setLength:0];
    [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4440 outputFilePath:0 outputData:v11];
    v13 = [objc_msgSend([NSString alloc] initWithData:v11 encoding:{4), "componentsSeparatedByString:", @" "}];
    if (v7)
    {
      v14 = v13;
      v35[0] = v7;
      v35[1] = @"-driver_ver";
      [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v35 count:2]];
      v34[0] = v7;
      v34[1] = @"-hardware_ver";
      [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v34 count:2]];
      v33[0] = v7;
      v33[1] = @"-ssid";
      [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v33 count:2]];
      v32[0] = v7;
      v32[1] = @"-bssid";
      [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v32 count:2]];
      v31[0] = v7;
      v31[1] = @"-rssi";
      [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v31 count:2]];
      v30[0] = v7;
      v30[1] = @"-noise";
      [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v30 count:2]];
      v29[0] = v7;
      v29[1] = @"-channel";
      [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v29 count:2]];
      v28[0] = v7;
      v28[1] = @"-authtype";
      [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v28 count:2]];
      v27[0] = v7;
      v27[1] = @"-country_code";
      [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v27 count:2]];
      v26[0] = v7;
      v26[1] = @"-rateset";
      [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v26 count:2]];
      v25[0] = v7;
      v25[1] = @"-leaky_ap_stats_mode";
      [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v25 count:2]];
      v24[0] = v7;
      v24[1] = @"-cardcap";
      [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v24 count:2]];
      v23[0] = v7;
      v23[1] = @"-dbg=mimopsstatus";
      [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v23 count:2]];
      if ([v12 containsObject:@"roam"])
      {
        v22[0] = v7;
        v22[1] = @"-dbg=print-roam";
        [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v22 count:2]];
      }

      if ([v12 containsObject:@"ocl"])
      {
        v21[0] = v7;
        v21[1] = @"-dbg=ocl_status";
        [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v21 count:2]];
        v20[0] = v7;
        v20[1] = @"-dbg=ocl_rssi_threshold";
        [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v20 count:2]];
      }

      if ([v12 containsObject:@"awdl"])
      {
        [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:&off_1000F4458];
      }

      if ([v12 containsObject:@"timesync"])
      {
        [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:&off_1000F4470];
      }

      v19[0] = v7;
      v19[1] = @"-dbg=bgscan-private-mac";
      [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v19 count:2]];
      v18[0] = v7;
      v18[1] = @"-dbg=dtim";
      [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v18 count:2]];
      v17[0] = v7;
      v17[1] = @"-dbg=private-mac";
      [(W5LogManager *)self __runToolWithOutputFileHandle:v10 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v17 count:2]];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4488 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F44A0 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F44B8 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F44D0 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F44E8 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4500 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4518 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4530 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4548 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4560 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4578 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4590 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F45A8 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F45C0 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F45D8 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F45F0 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4608 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4620 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4638 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4650 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4668 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4680 outputFileHandle:v10];
      if ([v14 containsObject:@"ampdu"])
      {
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4698 outputFileHandle:v10];
      }

      if ([v14 containsObject:@"amsdu"])
      {
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F46B0 outputFileHandle:v10];
      }

      if ([v14 containsObject:@"ocl"])
      {
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F46C8 outputFileHandle:v10];
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F46E0 outputFileHandle:v10];
      }

      if ([v14 containsObject:@"txcap"])
      {
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F46F8 outputFileHandle:v10];
      }

      if ([v14 containsObject:@"mim_ps"])
      {
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4710 outputFileHandle:v10];
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4728 outputFileHandle:v10];
      }

      if ([v14 containsObject:@"ops"])
      {
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4740 outputFileHandle:v10];
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4758 outputFileHandle:v10];
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4770 outputFileHandle:v10];
      }

      if ([v14 containsObject:@"nap"])
      {
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4788 outputFileHandle:v10];
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F47A0 outputFileHandle:v10];
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F47B8 outputFileHandle:v10];
      }

      if ([v14 containsObject:@"bcntrim"])
      {
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F47D0 outputFileHandle:v10];
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F47E8 outputFileHandle:v10];
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4800 outputFileHandle:v10];
      }

      if ([v14 containsObject:@"rsdb"])
      {
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4818 outputFileHandle:v10];
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4830 outputFileHandle:v10];
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4848 outputFileHandle:v10];
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4860 outputFileHandle:v10];
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4878 outputFileHandle:v10];
        if ([v14 containsObject:@"tdmtx"])
        {
          [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4890 outputFileHandle:v10];
          [(W5LogManager *)self __wlCLIWithArguments:&off_1000F48A8 outputFileHandle:v10];
        }
      }

      if ([v14 containsObject:@"tvpm"])
      {
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F48C0 outputFileHandle:v10];
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F48D8 outputFileHandle:v10];
        [(W5LogManager *)self __wlCLIWithArguments:&off_1000F48F0 outputFileHandle:v10];
      }

      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4908 outputFileHandle:v10];
      [(W5LogManager *)self __wlCLIWithArguments:&off_1000F4920 outputFileHandle:v10];
    }

    [(NSFileHandle *)v10 closeFile];
    v16 = [NSURL fileURLWithPath:@"wifi_internal.txt"];
    [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v16, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectWiFiPerfLogs:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v8 = [objc_msgSend(a3 "configuration")];
  if (v8)
  {
    v15 = [@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:v8];
    v9 = &v15;
  }

  else
  {
    v10 = [(W5LogManager *)self __mostRecentInDirectories:&off_1000F4938 matchingPrefix:0 matchingSuffix:0 excludingPrefix:0 excludingSuffix:0 maxAge:1.79769313e308];
    if (![v10 count])
    {
      goto LABEL_7;
    }

    v14 = [v10 firstObject];
    v9 = &v14;
  }

  LOBYTE(v13) = v7;
  v11 = [(W5LogManager *)self __collectFilesInDirectories:[NSArray arrayWithObjects:? count:?]maxCount:0 maxSize:0 outputDirectory:-1 compress:-1 remainingSize:v6 contentFilter:1.79769313e308, v13, 0, 0];
  if (v11)
  {
    [v5 setRelativeURLs:v11];
  }

LABEL_7:
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collect3barsCache:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(a3 "configuration")];
  [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v6, 0];
  [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:v6 attributes:0, 0];
  v7 = [NSFileHandle fileHandleForUpdatingAtPath:v6];
  if (v7)
  {
    v8 = v7;
    [(W5LogManager *)self __runToolWithOutputFileHandle:v7 launchPath:@"/usr/local/bin/3bars" arguments:&off_1000F4950];
    [(NSFileHandle *)v8 closeFile];
    v10 = [NSURL fileURLWithPath:@"3bars.txt"];
    [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v10, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectDeviceAnalyticsStore:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v8 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v9 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v10 = +[NSMutableString string];
  v11 = dispatch_semaphore_create(0);
  v12 = sub_100098A04();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136316418;
    v28 = "[W5LogManager __collectDeviceAnalyticsStore:]";
    v29 = 2080;
    v30 = "W5LogManager.m";
    v31 = 1024;
    v32 = 7096;
    v33 = 2048;
    *v34 = v8;
    *&v34[8] = 2048;
    *&v34[10] = v8 / 0x15180uLL;
    v35 = 2048;
    v36 = v9;
    LODWORD(v25) = 58;
    v24 = &v27;
    _os_log_send_and_compose_impl();
  }

  if (![(W5LogManager *)self waDeviceAnalyticsClientExists:v24])
  {
    v23 = sub_100098A04();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v27 = 136315906;
    v28 = "[W5LogManager __collectDeviceAnalyticsStore:]";
    v29 = 2080;
    v30 = "W5LogManager.m";
    v31 = 1024;
    v32 = 7098;
    v33 = 2080;
    *v34 = "[W5LogManager __collectDeviceAnalyticsStore:]";
    goto LABEL_11;
  }

  waDeviceAnalyticsClient = self->_waDeviceAnalyticsClient;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10007392C;
  v26[3] = &unk_1000E2FD8;
  v26[4] = v10;
  v26[5] = v11;
  if (![(WADeviceAnalyticsClient *)waDeviceAnalyticsClient dumpDeviceAnalyticsUsingBatchSizeToFileWithCompletion:v26 batchSize:v9 maxAge:v8 / 0x15180uLL])
  {
    goto LABEL_8;
  }

  v14 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v11, v14))
  {
    v15 = sub_100098A04();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315650;
      v28 = "[W5LogManager __collectDeviceAnalyticsStore:]";
      v29 = 2080;
      v30 = "W5LogManager.m";
      v31 = 1024;
      v32 = 7110;
      _os_log_send_and_compose_impl();
    }

LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  if ([v10 length])
  {
    if ([+[NSFileManager isReadableFileAtPath:"isReadableFileAtPath:"]
    {
      v20 = +[NSMutableArray array];
      v21 = [objc_msgSend(v6 "path")];
      [+[NSFileManager defaultManager](NSFileManager copyItemAtPath:"copyItemAtPath:toPath:error:" toPath:v10 error:v21, 0];
      [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v10, 0];
      v22 = [NSURL fileURLWithPath:v21];
      if (v7)
      {
        v22 = [(W5LogManager *)self __collectFileAtURL:v22 outputDirectory:v6 maxAge:0x7FFFFFFFFFFFFFFFLL maxSize:1 compress:0 remainingSize:1.79769313e308];
        [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v21, 0];
      }

      if (v22)
      {
        [v20 addObject:v22];
        [v5 setRelativeURLs:v20];
      }
    }

    goto LABEL_12;
  }

  v16 = 1;
LABEL_9:
  v17 = sub_100098A04();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v10 length];
    v27 = 136316162;
    v28 = "[W5LogManager __collectDeviceAnalyticsStore:]";
    v29 = 2080;
    v30 = "W5LogManager.m";
    v31 = 1024;
    v32 = 7115;
    v33 = 1024;
    *v34 = v16;
    *&v34[4] = 2048;
    *&v34[6] = v18;
LABEL_11:
    _os_log_send_and_compose_impl();
  }

LABEL_12:
  dispatch_release(v11);
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectDeviceAnalyticsDeploymentGraph:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v8 = +[NSMutableString string];
  v9 = dispatch_semaphore_create(0);
  if (![(W5LogManager *)self waDeviceAnalyticsClientExists])
  {
    v20 = sub_100098A04();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v22 = 136315906;
    v23 = "[W5LogManager __collectDeviceAnalyticsDeploymentGraph:]";
    v24 = 2080;
    v25 = "W5LogManager.m";
    v26 = 1024;
    v27 = 7162;
    v28 = 2080;
    v29[0] = "[W5LogManager __collectDeviceAnalyticsDeploymentGraph:]";
    goto LABEL_9;
  }

  waDeviceAnalyticsClient = self->_waDeviceAnalyticsClient;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100073E88;
  v21[3] = &unk_1000E2FD8;
  v21[4] = v8;
  v21[5] = v9;
  if (![(WADeviceAnalyticsClient *)waDeviceAnalyticsClient dumpDeploymentGraphJSONFileWithCompletion:v21])
  {
    goto LABEL_6;
  }

  v11 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = sub_100098A04();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315650;
      v23 = "[W5LogManager __collectDeviceAnalyticsDeploymentGraph:]";
      v24 = 2080;
      v25 = "W5LogManager.m";
      v26 = 1024;
      v27 = 7174;
      _os_log_send_and_compose_impl();
    }

LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  if ([v8 length])
  {
    if ([+[NSFileManager isReadableFileAtPath:"isReadableFileAtPath:"]
    {
      v17 = +[NSMutableArray array];
      v18 = [objc_msgSend(v6 "path")];
      [+[NSFileManager defaultManager](NSFileManager copyItemAtPath:"copyItemAtPath:toPath:error:" toPath:v8 error:v18, 0];
      [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v8, 0];
      v19 = [NSURL fileURLWithPath:v18];
      if (v7)
      {
        v19 = [(W5LogManager *)self __collectFileAtURL:v19 outputDirectory:v6 maxAge:0x7FFFFFFFFFFFFFFFLL maxSize:1 compress:0 remainingSize:1.79769313e308];
        [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v18, 0];
      }

      if (v19)
      {
        [v17 addObject:v19];
        [v5 setRelativeURLs:v17];
      }
    }

    goto LABEL_10;
  }

  v13 = 1;
LABEL_7:
  v14 = sub_100098A04();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v8 length];
    v22 = 136316162;
    v23 = "[W5LogManager __collectDeviceAnalyticsDeploymentGraph:]";
    v24 = 2080;
    v25 = "W5LogManager.m";
    v26 = 1024;
    v27 = 7179;
    v28 = 1024;
    LODWORD(v29[0]) = v13;
    WORD2(v29[0]) = 2048;
    *(v29 + 6) = v15;
LABEL_9:
    _os_log_send_and_compose_impl();
  }

LABEL_10:
  dispatch_release(v9);
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectDeviceAnalyticsEntityCSVs:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  v6 = [objc_msgSend(a3 "configuration")];
  if (!v6)
  {
    v6 = [objc_msgSend(a3 "configuration")];
  }

  v31 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v8 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v9 = +[NSMutableArray array];
  v10 = dispatch_semaphore_create(0);
  v11 = sub_100098A04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 136316418;
    v39 = "[W5LogManager __collectDeviceAnalyticsEntityCSVs:]";
    v40 = 2080;
    v41 = "W5LogManager.m";
    v42 = 1024;
    v43 = 7230;
    v44 = 2048;
    *v45 = v7;
    *&v45[8] = 2048;
    *&v45[10] = v7 / 0x15180uLL;
    v46 = 2048;
    v47 = v8;
    LODWORD(v29) = 58;
    v28 = &v38;
    _os_log_send_and_compose_impl();
  }

  v30 = v5;
  if (![(W5LogManager *)self waDeviceAnalyticsClientExists:v28])
  {
    v27 = sub_100098A04();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v38 = 136315906;
    v39 = "[W5LogManager __collectDeviceAnalyticsEntityCSVs:]";
    v40 = 2080;
    v41 = "W5LogManager.m";
    v42 = 1024;
    v43 = 7232;
    v44 = 2080;
    *v45 = "[W5LogManager __collectDeviceAnalyticsEntityCSVs:]";
    goto LABEL_13;
  }

  waDeviceAnalyticsClient = self->_waDeviceAnalyticsClient;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100074594;
  v36[3] = &unk_1000E3000;
  v36[4] = v9;
  v36[5] = v10;
  if (![(WADeviceAnalyticsClient *)waDeviceAnalyticsClient dumpDeviceAnalyticsCSVsUsingBatchSizeToFileWithCompletion:v36 batchSize:v8 maxAge:v7 / 0x15180uLL])
  {
    goto LABEL_10;
  }

  v13 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v10, v13))
  {
    v14 = sub_100098A04();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 136315650;
      v39 = "[W5LogManager __collectDeviceAnalyticsEntityCSVs:]";
      v40 = 2080;
      v41 = "W5LogManager.m";
      v42 = 1024;
      v43 = 7244;
      _os_log_send_and_compose_impl();
    }

LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  if ([v9 count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v33;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(v9);
          }

          v22 = *(*(&v32 + 1) + 8 * i);
          if ([+[NSFileManager isReadableFileAtPath:"isReadableFileAtPath:"]
          {
            v23 = +[NSMutableArray array];
            v24 = [objc_msgSend(v6 "path")];
            [+[NSFileManager defaultManager](NSFileManager copyItemAtPath:"copyItemAtPath:toPath:error:" toPath:v22 error:v24, 0];
            [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v22, 0];
            v25 = [NSURL fileURLWithPath:v24];
            if (v31)
            {
              v25 = [(W5LogManager *)self __collectFileAtURL:v25 outputDirectory:v6 maxAge:0x7FFFFFFFFFFFFFFFLL maxSize:1 compress:0 remainingSize:1.79769313e308];
              [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v24, 0];
            }

            if (v25)
            {
              [v23 addObject:v25];
              [v30 setRelativeURLs:v23];
            }
          }
        }

        v19 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v19);
    }

    goto LABEL_27;
  }

  v15 = 1;
LABEL_11:
  v16 = sub_100098A04();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v9 count];
    v38 = 136316162;
    v39 = "[W5LogManager __collectDeviceAnalyticsEntityCSVs:]";
    v40 = 2080;
    v41 = "W5LogManager.m";
    v42 = 1024;
    v43 = 7249;
    v44 = 1024;
    *v45 = v15;
    *&v45[4] = 2048;
    *&v45[6] = v17;
LABEL_13:
    _os_log_send_and_compose_impl();
  }

LABEL_27:
  dispatch_release(v10);
  +[NSDate timeIntervalSinceReferenceDate];
  [v30 setCompletedAt:?];
  return v30;
}

- (id)__dnssdBrowseAll:(id)a3
{
  v4 = objc_alloc_init(W5LogItemReceipt);
  [v4 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setStartedAt:?];
  v5 = [objc_msgSend(a3 "configuration")];
  v6 = [objc_msgSend(objc_msgSend(a3 "configuration")];
  v7 = [[W5DNSSDBrowser alloc] init:v6];
  v8 = [v7 startBrowsing];
  if (!v8)
  {
    v9 = dispatch_semaphore_create(0);
    if (v6)
    {
      v10 = 30000000000;
    }

    else
    {
      v10 = 10000000000;
    }

    v11 = dispatch_time(0, v10);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100074B28;
    block[3] = &unk_1000E1CE8;
    block[4] = v9;
    dispatch_after(v11, &_dispatch_main_q, block);
    v12 = dispatch_time(0, 80000000000);
    if (dispatch_semaphore_wait(v9, v12) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v28 = 0x4054000000000000;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
    }

    [v7 stopBrowsing];
    v24 = 0;
    v13 = +[NSJSONSerialization dataWithJSONObject:options:error:](NSJSONSerialization, "dataWithJSONObject:options:error:", [v7 browseAllResults], 1, &v24);
    if (v24)
    {
      v14 = sub_100098A04();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v28 = "[W5LogManager __dnssdBrowseAll:]";
        v29 = 2080;
        v30 = "W5LogManager.m";
        v31 = 1024;
        v32 = 7319;
        LODWORD(v23) = 28;
        v22 = buf;
LABEL_13:
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      v15 = [[NSString alloc] initWithData:v13 encoding:4];
      v16 = [objc_msgSend(v5 "path")];
      v17 = [v15 writeToFile:v16 atomically:1 encoding:4 error:&v24];
      v18 = sub_100098A04();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v28 = "[W5LogManager __dnssdBrowseAll:]";
        v29 = 2080;
        v30 = "W5LogManager.m";
        v31 = 1024;
        v32 = 7326;
        v33 = 2112;
        v34 = v16;
        v35 = 1024;
        v36 = v17;
        v37 = 2112;
        v38 = v24;
        LODWORD(v23) = 54;
        v22 = buf;
        goto LABEL_13;
      }
    }

    v26 = [NSURL fileURLWithPath:@"dnssd_browseAll.json", v22, v23];
    [v4 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v26, 1)}];
    goto LABEL_15;
  }

  v20 = v8;
  v21 = sub_100098A04();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v28 = "[W5LogManager __dnssdBrowseAll:]";
    v29 = 2080;
    v30 = "W5LogManager.m";
    v31 = 1024;
    v32 = 7301;
    v33 = 1024;
    LODWORD(v34) = v20;
    LODWORD(v23) = 34;
    v22 = buf;
    _os_log_send_and_compose_impl();
  }

LABEL_15:
  [NSDate timeIntervalSinceReferenceDate:v22];
  [v4 setCompletedAt:?];
  return v4;
}

- (id)__dnssdCacheAndState:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(v6 "path")];
  [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v7, 0];
  [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:v7 attributes:0, 0];
  v8 = [NSFileHandle fileHandleForUpdatingAtPath:v7];
  if (v8)
  {
    v9 = v8;
    [(W5LogManager *)self __runToolWithOutputFileHandle:v8 launchPath:@"/usr/local/bin/dnssdutil" arguments:&off_1000F4968];
    [(NSFileHandle *)v9 closeFile];
    v10 = [objc_msgSend(v6 "path")];
    [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v10, 0];
    [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:v10 attributes:0, 0];
    v11 = [NSFileHandle fileHandleForUpdatingAtPath:v10];
    if (v11)
    {
      v12 = v11;
      [(W5LogManager *)self __runToolWithOutputFileHandle:v11 launchPath:@"/usr/bin/dns-sd" arguments:&off_1000F4980];
      [(NSFileHandle *)v12 closeFile];
      v14[0] = [NSURL fileURLWithPath:@"dnssd_cachedLocalRecords.txt"];
      v14[1] = [NSURL fileURLWithPath:@"dnssd_state.txt"];
      [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v14, 2)}];
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__pingSubnet:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(-[W5StatusManager networkStatus](self->_status "networkStatus")];
  v7 = v6;
  if (!v6 || ![v6 length])
  {
    v16 = sub_100098A04();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 136315906;
    v24 = "[W5LogManager __pingSubnet:]";
    v25 = 2080;
    v26 = "W5LogManager.m";
    v27 = 1024;
    v28 = 7388;
    v29 = 2112;
    v30 = v7;
    LODWORD(v19) = 38;
    v18 = buf;
LABEL_14:
    _os_log_send_and_compose_impl();
    goto LABEL_9;
  }

  v8 = [v7 componentsSeparatedByString:@"."];
  if ([v8 count] != 4)
  {
    v17 = sub_100098A04();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 136315906;
    v24 = "[W5LogManager __pingSubnet:]";
    v25 = 2080;
    v26 = "W5LogManager.m";
    v27 = 1024;
    v28 = 7391;
    v29 = 2112;
    v30 = v7;
    LODWORD(v19) = 38;
    v18 = buf;
    goto LABEL_14;
  }

  v9 = [objc_msgSend(v8 subarrayWithRange:{0, 3), "componentsJoinedByString:", @"."}];
  v10 = objc_opt_new();
  for (i = 1; i != 255; ++i)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000750FC;
    v21[3] = &unk_1000E3028;
    v21[4] = self;
    v21[5] = v9;
    v22 = i;
    [v10 addOperationWithBlock:v21];
  }

  v12 = dispatch_semaphore_create(0);
  v13 = dispatch_time(0, 60000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075194;
  block[3] = &unk_1000E1C98;
  block[4] = v10;
  block[5] = v12;
  dispatch_after(v13, &_dispatch_main_q, block);
  v14 = dispatch_time(0, 80000000000);
  if (dispatch_semaphore_wait(v12, v14) > 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v24 = 0x4054000000000000;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

LABEL_9:
  [NSDate timeIntervalSinceReferenceDate:v18];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__pingBroadcast:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setStartedAt:?];
  if (([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] powerOn]& 1) != 0)
  {
    v6 = [objc_msgSend(objc_msgSend(objc_msgSend(a3 "configuration")];
    [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v6, 0];
    [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:v6 attributes:0, 0];
    v7 = [NSFileHandle fileHandleForUpdatingAtPath:v6];
    if (v7)
    {
      [(W5LogManager *)self __runToolWithOutputFileHandle:v7 launchPath:@"/sbin/ping" arguments:&off_1000F4998];
      v12 = [NSURL fileURLWithPath:@"ping_broadcast.txt"];
      [v5 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v12, 1)}];
    }
  }

  else
  {
    v9 = sub_100098A04();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = "[W5LogManager __pingBroadcast:]";
      v15 = 2080;
      v16 = "W5LogManager.m";
      v17 = 1024;
      v18 = 7425;
      LODWORD(v11) = 28;
      v10 = &v13;
      _os_log_send_and_compose_impl();
    }
  }

  [NSDate timeIntervalSinceReferenceDate:v10];
  [v5 setCompletedAt:?];
  return v5;
}

- (id)__collectDatapathStats:(id)a3
{
  v5 = objc_alloc_init(W5LogItemReceipt);
  [v5 setRequest:a3];
  +[NSDate timeIntervalSinceReferenceDate];
  v22 = v5;
  [v5 setStartedAt:?];
  v6 = [objc_msgSend(a3 "configuration")];
  v7 = [objc_msgSend(a3 "configuration")];
  v8 = [v6 path];
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"wifi_datapath.txt";
  }

  v10 = [v8 stringByAppendingPathComponent:v9];
  [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v10, 0];
  [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:v10 attributes:0, 0];
  v11 = [NSFileHandle fileHandleForUpdatingAtPath:v10];
  if (v11)
  {
    v12 = v11;
    v13 = +[NSMutableArray array];
    v14 = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] interfaceNames];
    v15 = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] virtualInterfaceNames];
    if (v14)
    {
      [v13 addObjectsFromArray:v14];
    }

    if (v15)
    {
      [v13 addObjectsFromArray:v15];
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v13;
    v16 = [v13 countByEnumeratingWithState:&v24 objects:v39 count:16];
    if (v16)
    {
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          v20 = +[NSMutableString string];
          [v20 appendString:@"####################################################################\n"];
          [v20 appendFormat:@"INTERFACE: %@\n", v19];
          [v20 appendString:@"####################################################################\n\n"];
          -[NSFileHandle writeData:](v12, "writeData:", [v20 dataUsingEncoding:4]);
          v38[0] = v19;
          v38[1] = @"-dbg=m";
          [(W5LogManager *)self __runToolWithOutputFileHandle:v12 readFromStandardError:0 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:2 count:?], 1, 0];
          v37[0] = v19;
          v37[1] = @"-dbg=bgscan-private-mac";
          [(W5LogManager *)self __runToolWithOutputFileHandle:v12 readFromStandardError:0 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:2 count:?], 1, 0];
          v36[0] = v19;
          v36[1] = @"-dbg=proptx";
          [(W5LogManager *)self __runToolWithOutputFileHandle:v12 readFromStandardError:0 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:2 count:?], 1, 0];
          v35[0] = @"-i";
          v35[1] = v19;
          v35[2] = @"wme_counters";
          [(W5LogManager *)self __wlCLIWithArguments:[NSArray arrayWithObjects:? count:?], v12, 1, 0];
          v34[0] = @"-i";
          v34[1] = v19;
          v34[2] = @"counters";
          [(W5LogManager *)self __wlCLIWithArguments:[NSArray arrayWithObjects:? count:?], v12, 1, 0];
          v33[0] = @"-i";
          v33[1] = v19;
          v33[2] = @"memuse";
          [(W5LogManager *)self __wlCLIWithArguments:[NSArray arrayWithObjects:? count:?], v12, 1, 0];
          v32[0] = @"-i";
          v32[1] = v19;
          v32[2] = @"-q";
          [(W5LogManager *)self __runToolWithOutputFileHandle:v12 readFromStandardError:0 launchPath:@"/usr/sbin/netstat" arguments:[NSArray arrayWithObjects:3 count:?], 1, 0];
          v31[0] = v19;
          v31[1] = @"-dbg=print_peers";
          [(W5LogManager *)self __runToolWithOutputFileHandle:v12 readFromStandardError:0 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:2 count:?], 1, 0];
          v30[0] = v19;
          v30[1] = @"-dbg=print_packets";
          [(W5LogManager *)self __runToolWithOutputFileHandle:v12 readFromStandardError:0 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:2 count:?], 1, 0];
          v29[0] = v19;
          v29[1] = @"-dbg=print_all_peers_verbose";
          [(W5LogManager *)self __runToolWithOutputFileHandle:v12 readFromStandardError:0 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:2 count:?], 1, 0];
        }

        v16 = [obj countByEnumeratingWithState:&v24 objects:v39 count:16];
      }

      while (v16);
    }

    [(NSFileHandle *)v12 closeFile];
    v28 = [NSURL fileURLWithPath:v9];
    [v22 setRelativeURLs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v28, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v22 setCompletedAt:?];
  return v22;
}

- (id)__collectLogItem:(id)a3 error:(id *)a4
{
  if ([a3 itemID] == 53)
  {
    debugLogQueue = self->_debugLogQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100076004;
    block[3] = &unk_1000E1C98;
    block[4] = a3;
    block[5] = self;
    dispatch_sync(debugLogQueue, block);
    return [(W5LogManager *)self __collectMultiple:a3];
  }

  else
  {
    v9 = [objc_msgSend(a3 "configuration")];
    v10 = [objc_msgSend(a3 "configuration")];
    v37 = [objc_msgSend(a3 "configuration")];
    v11 = [objc_msgSend(a3 "configuration")];
    if (v11)
    {
      v12 = [v11 unsignedIntegerValue];
    }

    else
    {
      v12 = 10000;
    }

    if (v9)
    {
      v44 = 0;
      v45 = &v44;
      v46 = 0x2020000000;
      v47 = 0;
      queue = self->_queue;
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_100076178;
      v43[3] = &unk_1000E2778;
      v43[5] = v9;
      v43[6] = &v44;
      v43[4] = self;
      dispatch_sync(queue, v43);
      v14 = v45[3];
      v15 = sub_100098A04();
      v12 += v14;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v45[3];
        v17 = [v9 substringToIndex:5];
        v18 = (v12 - v45[3]);
        *v53 = 134218754;
        *&v53[4] = v16;
        *&v53[12] = 2114;
        *&v53[14] = v17;
        *&v53[22] = 2048;
        v54 = v18;
        LOWORD(v55) = 2048;
        *(&v55 + 2) = v12;
        LODWORD(v36) = 42;
        v35 = v53;
        _os_log_send_and_compose_impl();
      }

      _Block_object_dispose(&v44, 8);
    }

    [NSDate timeIntervalSinceReferenceDate:v35];
    v20 = v19;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    LOBYTE(v47) = 0;
    *v53 = 0;
    *&v53[8] = v53;
    *&v53[16] = 0x3052000000;
    v54 = sub_10005E4F0;
    *&v55 = sub_10005E500;
    *(&v55 + 1) = 0;
    v21 = dispatch_queue_create(0, 0);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000761D0;
    v42[3] = &unk_1000E3078;
    v42[4] = self;
    v42[5] = a3;
    v42[6] = v21;
    v42[7] = &v44;
    v42[8] = v53;
    v42[9] = a4;
    v22 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v42);
    v23 = mach_absolute_time();
    [(NSOperationQueue *)[(W5StatusManager *)self->_status concurrentQueue] addOperationWithBlock:v22];
    if (v12)
    {
      v24 = dispatch_time(0, 1000000 * v12);
    }

    else
    {
      v24 = -1;
    }

    v25 = dispatch_block_wait(v22, v24);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000762C8;
    v41[3] = &unk_1000E30A0;
    v41[6] = v53;
    v41[7] = v25;
    v41[4] = a3;
    v41[5] = &v44;
    v41[8] = v20;
    dispatch_sync(v21, v41);
    if (!v25 && v10 && v12)
    {
      info = 0;
      mach_timebase_info(&info);
      if (info.denom)
      {
        v26 = (mach_absolute_time() - v23) * info.numer / info.denom / 0xF4240;
      }

      else
      {
        v26 = 0;
      }

      v27 = v12 - v26;
      v28 = self->_queue;
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100076404;
      v39[3] = &unk_1000E24E0;
      v39[4] = self;
      v39[5] = v10;
      v39[6] = v27;
      dispatch_async(v28, v39);
      v29 = sub_100098A04();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [v10 substringToIndex:5];
        v49 = 134218242;
        v50 = v27;
        v51 = 2114;
        v52 = v30;
        _os_log_send_and_compose_impl();
      }
    }

    v31 = mach_absolute_time();
    v32 = self->_queue;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100076460;
    v38[3] = &unk_1000E24E0;
    v38[4] = v37;
    v38[5] = self;
    v38[6] = v31;
    dispatch_async(v32, v38);
    v8 = [*(*&v53[8] + 40) copy];
    v33 = *(*&v53[8] + 40);
    dispatch_release(v21);
    _Block_release(v22);
    _Block_object_dispose(v53, 8);
    _Block_object_dispose(&v44, 8);
  }

  return v8;
}

- (id)__collectIndividual:(id)a3 error:(id *)a4
{
  [a3 itemID];
  v7 = W5DescriptionForLogItemID();
  if (-[NSArray containsObject:](-[W5StatusManager bootArgs](self->_status, "bootArgs"), "containsObject:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@=%ld", @"wifivelocity-exclude-log", [a3 itemID])) || -[NSArray containsObject:](-[W5StatusManager bootArgs](self->_status, "bootArgs"), "containsObject:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@='%@'", @"wifivelocity-exclude-log", v7)))
  {
    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *info = 138543618;
      *&info[4] = v7;
      *&info[12] = 2048;
      *&info[14] = [a3 itemID];
      _os_log_send_and_compose_impl();
    }

    return 0;
  }

  else
  {
    [a3 itemID];
    v10 = [NSString stringWithFormat:@"com.apple.wifivelocity.log_item.%@", W5DescriptionForLogItemID()];
    [(NSString *)v10 UTF8String];
    v11 = os_transaction_create();
    [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];
    debugLogQueue = self->_debugLogQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000771DC;
    block[3] = &unk_1000E1948;
    block[4] = a3;
    block[5] = self;
    block[6] = v7;
    dispatch_sync(debugLogQueue, block);
    switch([a3 itemID])
    {
      case 1uLL:
        v13 = [(W5LogManager *)self __collect_spindump:a3];
        goto LABEL_86;
      case 2uLL:
        v13 = [(W5LogManager *)self __collect_ping:a3];
        goto LABEL_86;
      case 3uLL:
        v13 = [(W5LogManager *)self __collect_netstat:a3];
        goto LABEL_86;
      case 4uLL:
        v13 = [(W5LogManager *)self __collect_arp:a3];
        goto LABEL_86;
      case 6uLL:
        v13 = [(W5LogManager *)self __collect_ndp:a3];
        goto LABEL_86;
      case 7uLL:
        v13 = [(W5LogManager *)self __collect_ifconfig:a3];
        goto LABEL_86;
      case 8uLL:
        v13 = [(W5LogManager *)self __collect_ipconfig:a3];
        goto LABEL_86;
      case 9uLL:
        v13 = [(W5LogManager *)self __collect_traceroute:a3];
        goto LABEL_86;
      case 0xAuLL:
        v13 = [(W5LogManager *)self __collect_ioreg:a3];
        goto LABEL_86;
      case 0xBuLL:
        v13 = [(W5LogManager *)self __collect_kextstat:a3];
        goto LABEL_86;
      case 0xCuLL:
        v13 = [(W5LogManager *)self __collect_darwinup:a3];
        goto LABEL_86;
      case 0xDuLL:
        v13 = [(W5LogManager *)self __collect_hosts:a3];
        goto LABEL_86;
      case 0xEuLL:
        v13 = [(W5LogManager *)self __collect_sysdiagnose:a3];
        goto LABEL_86;
      case 0xFuLL:
        v13 = [(W5LogManager *)self __collect_pmset:a3];
        goto LABEL_86;
      case 0x10uLL:
        v13 = [(W5LogManager *)self __collect_configd:a3];
        goto LABEL_86;
      case 0x11uLL:
        v13 = [(W5LogManager *)self __collect_top:a3];
        goto LABEL_86;
      case 0x12uLL:
        v13 = [(W5LogManager *)self __collect_swvers:a3];
        goto LABEL_86;
      case 0x13uLL:
        v13 = [(W5LogManager *)self __collectCoreCapture:a3];
        goto LABEL_86;
      case 0x14uLL:
        v13 = [(W5LogManager *)self __collectCoreCapture24:a3];
        goto LABEL_86;
      case 0x15uLL:
        v13 = [(W5LogManager *)self __collectCoreCaptureDump:a3];
        goto LABEL_86;
      case 0x18uLL:
        v13 = [(W5LogManager *)self __collectTCPDump_PRE:a3];
        goto LABEL_86;
      case 0x19uLL:
        v13 = [(W5LogManager *)self __collectTCPDump_POST:a3];
        goto LABEL_86;
      case 0x1AuLL:
        v13 = [(W5LogManager *)self __collectDiagnostics:a3];
        goto LABEL_86;
      case 0x1BuLL:
        v13 = [(W5LogManager *)self __collectSystemConfiguration:a3];
        goto LABEL_86;
      case 0x1CuLL:
        v13 = [(W5LogManager *)self __collectWiFiScanResults:a3];
        goto LABEL_86;
      case 0x1DuLL:
        v13 = [(W5LogManager *)self __collectAirPlayLogs:a3];
        goto LABEL_86;
      case 0x1EuLL:
        v13 = [(W5LogManager *)self __collectBluetoothLogs:a3];
        goto LABEL_86;
      case 0x1FuLL:
        v13 = [(W5LogManager *)self __collectSystemLogs:a3];
        goto LABEL_86;
      case 0x20uLL:
        v13 = [(W5LogManager *)self __collectSystemLogs24:a3];
        goto LABEL_86;
      case 0x21uLL:
        v13 = [(W5LogManager *)self __collectEAP8021XLogs:a3];
        goto LABEL_86;
      case 0x22uLL:
        v13 = [(W5LogManager *)self __collectIPConfigurationLogs:a3];
        goto LABEL_86;
      case 0x23uLL:
        v13 = [(W5LogManager *)self __collectCrashesAndSpins24:a3];
        goto LABEL_86;
      case 0x24uLL:
        v13 = [(W5LogManager *)self __collectSharingLogs:a3];
        goto LABEL_86;
      case 0x25uLL:
        v13 = [(W5LogManager *)self __collectWiFiLogs:a3];
        goto LABEL_86;
      case 0x26uLL:
        v13 = [(W5LogManager *)self __collectWiFiLogs24:a3];
        goto LABEL_86;
      case 0x27uLL:
        v13 = [(W5LogManager *)self __collectWiFiLogsDump:a3];
        goto LABEL_86;
      case 0x28uLL:
        v13 = [(W5LogManager *)self __collectWiFiPreferences:a3];
        goto LABEL_86;
      case 0x29uLL:
        v13 = [(W5LogManager *)self __collectWirelessProxLogs:a3];
        goto LABEL_86;
      case 0x2AuLL:
        v13 = [(W5LogManager *)self __collect_IMFoundationPing:a3];
        goto LABEL_86;
      case 0x2BuLL:
        v13 = [(W5LogManager *)self __collect_CFNetworkPing:a3];
        goto LABEL_86;
      case 0x2CuLL:
        v13 = [(W5LogManager *)self __collectNetworkStatus:a3];
        goto LABEL_86;
      case 0x2DuLL:
        v13 = [(W5LogManager *)self __collectWiFiStatus:a3];
        goto LABEL_86;
      case 0x2EuLL:
        v13 = [(W5LogManager *)self __collectAWDLStatus:a3];
        goto LABEL_86;
      case 0x2FuLL:
        v13 = [(W5LogManager *)self __collectBluetoothStatus:a3];
        goto LABEL_86;
      case 0x30uLL:
        v13 = [(W5LogManager *)self __collectLeakyAPStats:a3];
        goto LABEL_86;
      case 0x31uLL:
        v13 = [(W5LogManager *)self __collectBonjourRecords:a3];
        goto LABEL_86;
      case 0x32uLL:
        v13 = [(W5LogManager *)self __collectEventHistory:a3];
        goto LABEL_86;
      case 0x33uLL:
        v13 = [(W5LogManager *)self __collectPerSSIDDiagnosticsHistory:a3];
        goto LABEL_86;
      case 0x34uLL:
        *info = 0;
        *&info[8] = info;
        *&info[16] = 0x3052000000;
        *v53 = sub_10005E4F0;
        *&v53[8] = sub_10005E500;
        *&v53[16] = 0;
        queue = self->_queue;
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_10007735C;
        v48[3] = &unk_1000E19E8;
        v48[4] = self;
        v48[5] = info;
        dispatch_sync(queue, v48);
        v20 = *(*&info[8] + 40);
        v9 = [(W5LogManager *)self __collectAdditionalLog:a3 url:*(*&info[8] + 40)];
        v21 = info;
        goto LABEL_104;
      case 0x39uLL:
        v13 = [(W5LogManager *)self __collect_mobilewifitool:a3];
        goto LABEL_86;
      case 0x3DuLL:
      case 0x3EuLL:
        v13 = [(W5LogManager *)self __collectWiFiStatsCLI:a3];
        goto LABEL_86;
      case 0x3FuLL:
        v9 = objc_alloc_init(W5LogItemReceipt);
        [v9 setRequest:a3];
        +[NSDate timeIntervalSinceReferenceDate];
        [v9 setStartedAt:?];
        [(W5DiagnosticsManager *)self->_diagnostics beginWiFiDefaultRoute];
        +[NSDate timeIntervalSinceReferenceDate];
        [v9 setCompletedAt:?];
        break;
      case 0x40uLL:
        v9 = objc_alloc_init(W5LogItemReceipt);
        [v9 setRequest:a3];
        +[NSDate timeIntervalSinceReferenceDate];
        [v9 setStartedAt:?];
        [(W5DiagnosticsManager *)self->_diagnostics endWiFiDefaultRoute];
        +[NSDate timeIntervalSinceReferenceDate];
        [v9 setCompletedAt:?];
        break;
      case 0x41uLL:
        v13 = [(W5LogManager *)self __collect_wl_curpower:a3];
        goto LABEL_86;
      case 0x42uLL:
        v13 = [(W5LogManager *)self __collect_wl_cca_get_stats:a3];
        goto LABEL_86;
      case 0x45uLL:
        v9 = objc_alloc_init(W5LogItemReceipt);
        [v9 setRequest:a3];
        +[NSDate timeIntervalSinceReferenceDate];
        [v9 setStartedAt:?];
        v14 = [objc_msgSend(a3 "configuration")];
        if (v14)
        {
          v37 = [v14 unsignedIntegerValue];
        }

        else
        {
          v24 = sub_100098A04();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *info = 0;
            LODWORD(v35) = 2;
            v34 = info;
            _os_log_send_and_compose_impl();
          }

          v37 = 1000;
        }

        v25 = [objc_msgSend(a3 configuration];
        v26 = [objc_msgSend(a3 "configuration")];
        v44 = 0;
        v45 = &v44;
        v46 = 0x2020000000;
        v47 = 0;
        v40 = 0;
        v41 = &v40;
        v42 = 0x2020000000;
        v43 = 0;
        v27 = self->_queue;
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_1000773B4;
        v39[3] = &unk_1000E30C8;
        v39[4] = v25;
        v39[5] = self;
        v39[7] = &v44;
        v39[8] = &v40;
        v39[6] = v26;
        dispatch_sync(v27, v39);
        if (v41[3] && (*info = 0, mach_timebase_info(info), *&info[4]))
        {
          v28 = (mach_absolute_time() - v41[3]) * *info / *&info[4] / 0xF4240;
        }

        else
        {
          v28 = 0;
        }

        v36 = v28;
        if (v37 >= v28)
        {
          v29 = v37 - v28;
        }

        else
        {
          v29 = 0;
        }

        v30 = v45[3];
        v31 = sub_100098A04();
        v32 = v30 + v29;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v33 = v45[3];
          *info = 134218752;
          *&info[4] = v37;
          *&info[12] = 2048;
          *&info[14] = v36;
          *&info[22] = 2048;
          *v53 = v33;
          *&v53[8] = 2048;
          *&v53[10] = v32;
          _os_log_send_and_compose_impl();
        }

        usleep(1000 * v32);
        +[NSDate timeIntervalSinceReferenceDate];
        [v9 setCompletedAt:?];
        _Block_object_dispose(&v40, 8);
        v21 = &v44;
LABEL_104:
        _Block_object_dispose(v21, 8);
        break;
      case 0x46uLL:
        v13 = [(W5LogManager *)self __collectPreviouslyCollected:a3];
        goto LABEL_86;
      case 0x49uLL:
        v13 = [(W5LogManager *)self __collectNetworkPreferences:a3];
        goto LABEL_86;
      case 0x4AuLL:
        v13 = [(W5LogManager *)self __collectWiFiMemoryUsage:a3];
        goto LABEL_86;
      case 0x4BuLL:
        v13 = [(W5LogManager *)self __collectWiFiDeviceConfig:a3];
        goto LABEL_86;
      case 0x4CuLL:
        v13 = [(W5LogManager *)self __collectWiFiPerfLogs:a3];
        goto LABEL_86;
      case 0x4EuLL:
        v13 = [(W5LogManager *)self __collectWiFiVelocityLog:a3];
        goto LABEL_86;
      case 0x50uLL:
        v13 = [(W5LogManager *)self __collect3barsCache:a3];
        goto LABEL_86;
      case 0x51uLL:
        v13 = [(W5LogManager *)self __collectDatapathStats:a3];
        goto LABEL_86;
      case 0x54uLL:
        v13 = [(W5LogManager *)self __collectDeviceAnalyticsStore:a3];
        goto LABEL_86;
      case 0x55uLL:
        v13 = [(W5LogManager *)self __collectDeviceAnalyticsDeploymentGraph:a3];
        goto LABEL_86;
      case 0x56uLL:
        v13 = [(W5LogManager *)self __collectPeerDiagnostics:a3];
        goto LABEL_86;
      case 0x57uLL:
        v13 = [(W5LogManager *)self __collectDextCoreDump:a3];
        goto LABEL_86;
      case 0x58uLL:
        if (![objc_msgSend(a3 "configuration")])
        {
          v15 = sub_100098A04();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [a3 configuration];
            *info = 138412290;
            *&info[4] = v16;
            LODWORD(v35) = 12;
            v34 = info;
            _os_log_send_and_compose_impl();
          }
        }

        v17 = sub_100098A04();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [a3 configuration];
          *info = 136315906;
          *&info[4] = "[W5LogManager __collectIndividual:error:]";
          *&info[12] = 2080;
          *&info[14] = "W5LogManager.m";
          *&info[22] = 1024;
          *v53 = 8167;
          *&v53[4] = 2112;
          *&v53[6] = v18;
          LODWORD(v35) = 38;
          v34 = info;
          _os_log_send_and_compose_impl();
        }

        v13 = [(W5LogManager *)self __collectDeviceAnalyticsEntityCSVs:a3, v34, v35];
        goto LABEL_86;
      case 0x59uLL:
        v13 = [(W5LogManager *)self __dnssdBrowseAll:a3];
        goto LABEL_86;
      case 0x5AuLL:
        v13 = [(W5LogManager *)self __dnssdCacheAndState:a3];
        goto LABEL_86;
      case 0x5BuLL:
        v13 = [(W5LogManager *)self __pingSubnet:a3];
        goto LABEL_86;
      case 0x5CuLL:
        v13 = [(W5LogManager *)self __pingBroadcast:a3];
LABEL_86:
        v9 = v13;
        break;
      default:
        v9 = objc_alloc_init(W5LogItemReceipt);
        [v9 setRequest:a3];
        +[NSDate timeIntervalSinceReferenceDate];
        [v9 setStartedAt:?];
        [v9 startedAt];
        [v9 setCompletedAt:?];
        if (a4)
        {
          v50 = NSLocalizedFailureReasonErrorKey;
          v51 = @"W5ParamErr";
          *a4 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:[NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1]];
        }

        break;
    }

    v22 = self->_debugLogQueue;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100077448;
    v38[3] = &unk_1000E1948;
    v38[4] = a3;
    v38[5] = v9;
    v38[6] = self;
    dispatch_sync(v22, v38);
    [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];
  }

  return v9;
}

- (id)__runDiagnosticsTests:(id)a3 configuration:(id)a4 timeout:(int64_t)a5 error:(id *)a6
{
  v46 = 0;
  v47 = &v46;
  v48 = 0x3052000000;
  v49 = sub_10005E4F0;
  v50 = sub_10005E500;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3052000000;
  v43 = sub_10005E4F0;
  v44 = sub_10005E500;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v11 = objc_alloc_init(NSLock);
  v12 = dispatch_semaphore_create(0);
  v13 = objc_alloc_init(W5DiagnosticsTestRequestInternal);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = sub_10005E4F0;
  v30 = sub_10005E500;
  v31 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100077BD8;
  block[3] = &unk_1000E19E8;
  block[4] = self;
  block[5] = &v26;
  dispatch_sync(queue, block);
  v15 = v27[5];
  [(W5DiagnosticsTestRequestInternal *)v13 setUuid:v27[5]];
  [(W5DiagnosticsTestRequestInternal *)v13 setTestRequests:a3];
  -[W5DiagnosticsTestRequestInternal setIncludeEvents:](v13, "setIncludeEvents:", [objc_msgSend(a4 objectForKeyedSubscript:{@"IncludeEvents", "BOOLValue"}]);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100077C30;
  v24[3] = &unk_1000E30F0;
  v24[6] = &v36;
  v24[7] = &v32;
  v24[8] = &v40;
  v24[9] = &v46;
  v24[4] = v11;
  v24[5] = v12;
  [(W5DiagnosticsTestRequestInternal *)v13 setReply:v24];
  [(W5DiagnosticsManager *)self->_diagnostics addRequest:v13];
  if (a5)
  {
    v16 = dispatch_time(0, (a5 / 1000.0 * 1000000000.0));
    if (dispatch_semaphore_wait(v12, v16))
    {
      [v11 lock];
      if ((v33[3] & 1) == 0)
      {
        *(v37 + 24) = 1;
        v54 = NSLocalizedFailureReasonErrorKey;
        v55 = @"W5TimeoutErr";
        v17 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:3 userInfo:[NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1]];
        v41[5] = v17;
      }

      [v11 unlock];
    }
  }

  else
  {
    v18 = dispatch_time(0, 600000000000);
    if (dispatch_semaphore_wait(v12, v18) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v53 = 0x4082C00000000000;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
    }
  }

  v19 = v41[5];
  v20 = v47[5];
  if (a6)
  {
    v21 = v41[5];
    if (v21)
    {
      *a6 = [v21 copy];
    }
  }

  v22 = [v47[5] copy];
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);
  return v22;
}

+ (id)__descriptionForNetwork:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = +[NSMutableString string];
  v5 = [a3 ssidString];
  if (v5)
  {
    [v4 appendFormat:@"'%@' %@, ", v5, objc_msgSend(a3, "ssid")];
  }

  else
  {
    [v4 appendFormat:@"<HIDDEN>, ", v15, v16];
  }

  [v4 appendFormat:@"bssid=%@, ", objc_msgSend(a3, "bssid")];
  [a3 channel];
  [v4 appendFormat:@"channel=[%@], ", W5DescriptionForChannel()];
  [v4 appendFormat:@"cc=%@, ", objc_msgSend(a3, "countryCode")];
  [a3 fastestSupportedPHYMode];
  [v4 appendFormat:@"type=%@, ", W5DescriptionForPHYMode()];
  [v4 appendFormat:@"rssi=%li, ", objc_msgSend(a3, "rssi")];
  [v4 appendFormat:@"rsn=%@, ", sub_10001D1FC(a3)];
  [v4 appendFormat:@"wpa=%@, ", sub_10001CEE4(a3)];
  if ([objc_msgSend(a3 "supportedSecurityTypes")])
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  [v4 appendFormat:@"wep=%s, ", v6];
  if ([objc_msgSend(a3 "supportedSecurityTypes")])
  {
    v7 = "cert";
  }

  else
  {
    v8 = [objc_msgSend(a3 "supportedSecurityTypes")];
    v7 = "psk";
    if (!v8)
    {
      v7 = "no";
    }
  }

  [v4 appendFormat:@"wapi=%s, ", v7];
  if ([a3 isIBSS])
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  [v4 appendFormat:@"ibss=%s, ", v9];
  if ([a3 isPersonalHotspot])
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  [v4 appendFormat:@"ph=%s, ", v10];
  if ([a3 isAppleSWAP])
  {
    v11 = "yes";
  }

  else
  {
    v11 = "no";
  }

  [v4 appendFormat:@"swap=%s, ", v11];
  if ([a3 isPasspoint])
  {
    v12 = "yes";
  }

  else
  {
    v12 = "no";
  }

  [v4 appendFormat:@"hs20=%s, ", v12];
  v13 = [a3 airPortBaseStationModelName];
  if (v13)
  {
    [v4 appendFormat:@"airport=[%@]", v13];
  }

  return v4;
}

+ (id)__logScanResults:(id)a3
{
  v4 = +[NSMutableString string];
  v33[0] = [NSSortDescriptor sortDescriptorWithKey:@"networkName" ascending:1 selector:"caseInsensitiveCompare:"];
  v33[1] = [NSSortDescriptor sortDescriptorWithKey:@"BSSID" ascending:1];
  v20 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [a3 sortedArrayUsingDescriptors:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v33, 2)}];
  v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v21 = 0;
    v22 = 0;
    v24 = 0;
    v25 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v23 = 0;
    v27 = *v29;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = v4;
        [v4 appendFormat:@"%@\n\n", v13];
        v15 = [objc_msgSend(v13 "channel")];
        v16 = [v13 channel];
        if (v15)
        {
          if ([v16 is6GHzPSC])
          {
            ++v25;
          }

          else
          {
            ++v24;
          }
        }

        else
        {
          v17 = [v16 is5GHz];
          v18 = [v13 channel];
          if (v17)
          {
            if ([v18 isDFS])
            {
              ++v21;
            }

            else
            {
              ++v22;
            }
          }

          else
          {
            v23 += [v18 is2GHz];
          }
        }

        v4 = v14;
        v7 += [v13 isIBSS];
        if (![v13 SSID])
        {
          ++v9;
        }

        if ([v13 airPortBaseStationModel])
        {
          ++v8;
        }

        v10 += [v13 isPasspoint];
        v11 += [v13 isPersonalHotspot];
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v24 = 0;
    v25 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v23 = 0;
  }

  [v4 insertString:+[NSString stringWithFormat:](NSString atIndex:{"stringWithFormat:", @"total=%lu, 6GHz(PSC)=%ld, 6GHz(NonPSC)=%ld, 5GHz(Active)=%ld, 5GHz(DFS)=%ld, 2GHz=%ld, ibss=%ld, hidden=%ld, passpoint=%ld, ph=%ld, airport=%ld\n\n\n", objc_msgSend(v20, "count"), v25, v24, v22, v21, v23, v7, v9, v10, v11, v8), 0}];
  return v4;
}

- (id)__logDiagnosticsPingResults:(id)a3
{
  v5 = +[NSMutableString string];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = a3;
  v24 = [a3 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    v23 = *v31;
    do
    {
      v6 = 0;
      do
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * v6);
        v8 = [v7 testID];
        v9 = [v7 info];
        v25 = v6;
        if (v8 == 53)
        {
          [v5 appendString:{-[W5LogManager __logDiagnosticsPingResults:](self, "__logDiagnosticsPingResults:", objc_msgSend(v9, "objectForKeyedSubscript:", @"ConcurrentResults"}];
        }

        else
        {
          v10 = [v9 objectForKeyedSubscript:@"PingResult"];
          v11 = [objc_msgSend(v7 "info")];
          v12 = +[NSMutableArray array];
          if ([v11 count])
          {
            [v12 addObjectsFromArray:v11];
          }

          if (v10)
          {
            [v12 addObject:v10];
          }

          if ([v12 count])
          {
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v27;
              do
              {
                for (i = 0; i != v14; i = i + 1)
                {
                  if (*v27 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v26 + 1) + 8 * i);
                  [v5 appendString:@"————————————————————————————————————————————————————————————————————\n"];
                  dateFormatter = self->_dateFormatter;
                  [v17 startedAt];
                  v19 = [(NSDateFormatter *)dateFormatter stringFromDate:[NSDate dateWithTimeIntervalSinceReferenceDate:?]];
                  v20 = self->_dateFormatter;
                  [v17 endedAt];
                  [v5 appendFormat:@"[%@ - %@]\n", v19, -[NSDateFormatter stringFromDate:](v20, "stringFromDate:", +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:"))];
                  [v5 appendFormat:@"%@\n", objc_msgSend(v17, "command")];
                  [v5 appendFormat:@"%@\n", objc_msgSend(v17, "output")];
                }

                v14 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
              }

              while (v14);
            }
          }
        }

        v6 = v25 + 1;
      }

      while ((v25 + 1) != v24);
      v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v24);
  }

  return v5;
}

- (id)__logDiagnosticsTestResults:(id)a3
{
  v4 = +[NSMutableString string];
  [v4 appendString:W5FormattedHeaderForDiagnosticsTestResults()];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        if ([v9 testID] == 53)
        {
          v10 = [objc_msgSend(v9 "info")];
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v17 + 1) + 8 * j);
                [v4 appendString:W5FormattedDescriptionForDiagnosticsTestResult()];
              }

              v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v12);
          }
        }

        else
        {
          [v4 appendString:W5FormattedDescriptionForDiagnosticsTestResult()];
        }
      }

      v6 = [a3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)__logBTCProfile:(apple80211_btc_profile_osx *)a3
{
  v4 = [NSMutableString stringWithCapacity:0];
  var0 = a3->var0;
  [(NSMutableString *)v4 appendFormat:@"      Mode                        : %@\n", W5DescriptionForBTCMode()];
  var1 = a3->var1;
  [(NSMutableString *)v4 appendFormat:@"      Desense                     : %@\n", W5DescriptionForDesenseFlags()];
  [(NSMutableString *)v4 appendFormat:@"      Desense Level               : %i\n", a3->var2];
  [(NSMutableString *)v4 appendFormat:@"      Desense Thresh              : [%i, %i]\n", a3->var4, a3->var3];
  [(NSMutableString *)v4 appendFormat:@"      Chain Ack                   : ["];
  if (a3->var5)
  {
    v7 = 0;
    do
    {
      if (a3->var6[v7] == 1)
      {
        v8 = "On";
      }

      else
      {
        v8 = "Off";
      }

      [(NSMutableString *)v4 appendFormat:@"%s", v8];
      var5 = a3->var5;
      if (v7 < var5 - 1)
      {
        [(NSMutableString *)v4 appendString:@", "];
        var5 = a3->var5;
      }

      ++v7;
    }

    while (v7 < var5);
  }

  [(NSMutableString *)v4 appendString:@"]\n"];
  [(NSMutableString *)v4 appendFormat:@"      Chain Tx Power Offset       : ["];
  if (a3->var5)
  {
    v10 = 0;
    do
    {
      [(NSMutableString *)v4 appendFormat:@"%i", a3->var7[v10]];
      v11 = a3->var5;
      if (v10 < v11 - 1)
      {
        [(NSMutableString *)v4 appendString:@", "];
        v11 = a3->var5;
      }

      ++v10;
    }

    while (v10 < v11);
  }

  [(NSMutableString *)v4 appendString:@"]\n"];
  [(NSMutableString *)v4 appendFormat:@"      WiFi RSSI Thresh / Hyst     : %i/%i\n", a3->var8, a3->var9];
  [(NSMutableString *)v4 appendFormat:@"      BT RSSI Thresh / Hyst       : %i/%i\n", a3->var10, a3->var11];
  [(NSMutableString *)v4 appendFormat:@"      SISO Resp Enable            : ["];
  if (a3->var12)
  {
    v12 = 0;
    do
    {
      [(NSMutableString *)v4 appendFormat:@"%i", a3->var13[v12]];
      var12 = a3->var12;
      if (v12 < var12 - 1)
      {
        [(NSMutableString *)v4 appendString:@", "];
        var12 = a3->var12;
      }

      ++v12;
    }

    while (v12 < var12);
  }

  [(NSMutableString *)v4 appendString:@"]\n"];
  [(NSMutableString *)v4 appendFormat:@"      Max SISO Resp Power         : ["];
  if (a3->var12)
  {
    v14 = 0;
    do
    {
      [(NSMutableString *)v4 appendFormat:@"%i", a3->var14[v14]];
      v15 = a3->var12;
      if (v14 < v15 - 1)
      {
        [(NSMutableString *)v4 appendString:@", "];
        v15 = a3->var12;
      }

      ++v14;
    }

    while (v14 < v15);
  }

  [(NSMutableString *)v4 appendString:@"]\n"];
  v16 = [(NSMutableString *)v4 copy];

  return v16;
}

+ (id)__logTxPower:(apple80211_per_chain_power_data_get *)a3
{
  v4 = [NSMutableString stringWithCapacity:0];
  [(NSMutableString *)v4 appendFormat:@"      Current            : %i\n", a3->var2];
  [(NSMutableString *)v4 appendFormat:@"      Offset             : %i\n", a3->var1];
  [(NSMutableString *)v4 appendFormat:@"      Min                : %i\n", a3->var3];
  [(NSMutableString *)v4 appendFormat:@"      Max                : %i\n", a3->var4];
  v5 = [(NSMutableString *)v4 copy];

  return v5;
}

+ (id)__logNetworkStatus:(id)a3
{
  v4 = +[NSMutableString string];
  if ([a3 primaryIPv4InterfaceName])
  {
    [v4 appendFormat:@"    Primary IPv4         : %s (%s / %s)\n", objc_msgSend(objc_msgSend(a3, "primaryIPv4InterfaceName"), "UTF8String"), objc_msgSend(objc_msgSend(a3, "primaryIPv4ServiceName"), "UTF8String"), objc_msgSend(objc_msgSend(a3, "primaryIPv4ServiceID"), "UTF8String")];
    v5 = [a3 primaryIPv4Addresses];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 appendFormat:@"                         : %s\n", objc_msgSend(*(*(&v25 + 1) + 8 * i), "UTF8String")];
        }

        v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }
  }

  else
  {
    [v4 appendFormat:@"    Primary IPv4         : None\n"];
  }

  if ([a3 primaryIPv6InterfaceName])
  {
    [v4 appendFormat:@"    Primary IPv6         : %s (%s / %s)\n", objc_msgSend(objc_msgSend(a3, "primaryIPv6InterfaceName"), "UTF8String"), objc_msgSend(objc_msgSend(a3, "primaryIPv6ServiceName"), "UTF8String"), objc_msgSend(objc_msgSend(a3, "primaryIPv6ServiceID"), "UTF8String")];
    v10 = [a3 primaryIPv6Addresses];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v4 appendFormat:@"                         : %s\n", objc_msgSend(*(*(&v21 + 1) + 8 * j), "UTF8String")];
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v12);
    }
  }

  else
  {
    [v4 appendFormat:@"    Primary IPv6         : None\n"];
  }

  v15 = [a3 primaryDNSAddresses];
  if ([v15 count])
  {
    [v4 appendFormat:@"    DNS Addresses        : %s\n", objc_msgSend(objc_msgSend(v15, "firstObject"), "UTF8String")];
    if ([v15 count] >= 2 && objc_msgSend(v15, "count") >= 2)
    {
      v16 = 1;
      do
      {
        [v4 appendFormat:@"                         : %s\n", objc_msgSend(objc_msgSend(v15, "objectAtIndexedSubscript:", v16++), "UTF8String")];
      }

      while (v16 < [v15 count]);
    }
  }

  else
  {
    [v4 appendFormat:@"    DNS Addresses        : None\n"];
  }

  v17 = "Not Reachable";
  if (([a3 isAppleReachable] & 2) != 0 && (objc_msgSend(a3, "isAppleReachable") & 4) == 0)
  {
    v17 = "Reachable";
  }

  v18 = [a3 isAppleReachable];
  v19 = " (WWAN)";
  if ((v18 & 0x40000) == 0)
  {
    v19 = "";
  }

  [v4 appendFormat:@"    Apple                : %s%s\n", v17, v19];
  return v4;
}

+ (id)__logWiFiStatus:(id)a3
{
  v5 = +[NSMutableString string];
  [v5 appendFormat:@"    MAC Address          : %s (hw=%s)\n", objc_msgSend(objc_msgSend(a3, "macAddress"), "UTF8String"), objc_msgSend(objc_msgSend(a3, "hardwareMACAddress"), "UTF8String")];
  [v5 appendFormat:@"    Interface Name       : %s\n", objc_msgSend(objc_msgSend(a3, "interfaceName"), "UTF8String")];
  if ([a3 powerOn])
  {
    v6 = "On";
  }

  else
  {
    v6 = "Off";
  }

  if ([objc_msgSend(a3 "power")] == 24)
  {
    [objc_msgSend(a3 "power")];
  }

  [v5 appendFormat:@"    Power                : %s [%@]\n", v6, W5DescriptionForPower()];
  [a3 opMode];
  [v5 appendFormat:@"    Op Mode              : %s\n", objc_msgSend(W5DescriptionForOpMode(), "UTF8String")];
  if ([objc_msgSend(objc_msgSend(a3 "ssidString")])
  {
    v7 = [objc_msgSend(objc_msgSend(a3 "ssidString")];
  }

  else
  {
    v7 = "None";
  }

  [v5 appendFormat:@"    SSID                 : %s\n", v7];
  if ([objc_msgSend(objc_msgSend(a3 "bssid")])
  {
    v8 = [objc_msgSend(objc_msgSend(a3 "bssid")];
  }

  else
  {
    v8 = "None";
  }

  [v5 appendFormat:@"    BSSID                : %s\n", v8];
  [v5 appendFormat:@"    RSSI                 : %i dBm\n", objc_msgSend(a3, "rssi")];
  [v5 appendFormat:@"    Noise                : %i dBm\n", objc_msgSend(a3, "noise")];
  [a3 txRate];
  [v5 appendFormat:@"    Tx Rate              : %.1f Mbps\n", v9];
  if ([a3 ssid])
  {
    [a3 security];
    [v5 appendFormat:@"    Security             : %s\n", objc_msgSend(W5DescriptionForSecurity(), "UTF8String")];
  }

  else
  {
    [v5 appendFormat:@"    Security             : None\n", v52];
  }

  if ([a3 security] == 12 || objc_msgSend(a3, "security") == 11 || objc_msgSend(a3, "security") == 9 || objc_msgSend(a3, "security") == 10 || objc_msgSend(a3, "security") == 8)
  {
    [a3 eapolControlMode];
    [v5 appendFormat:@"    802.1X Mode          : %s\n", objc_msgSend(W5DescriptionForEAPOLControlMode(), "UTF8String")];
    [a3 eapolSupplicantState];
    [v5 appendFormat:@"    802.1X Supplicant    : %s\n", objc_msgSend(W5DescriptionForEAPOLSupplicantState(), "UTF8String")];
  }

  [a3 phyMode];
  [v5 appendFormat:@"    PHY Mode             : %s\n", objc_msgSend(W5DescriptionForPHYMode(), "UTF8String")];
  [v5 appendFormat:@"    MCS Index            : %i\n", objc_msgSend(a3, "mcsIndex")];
  v10 = [a3 ssid];
  if (v10)
  {
    v10 = [a3 guardInterval];
  }

  [v5 appendFormat:@"    Guard Interval       : %i\n", v10];
  [v5 appendFormat:@"    NSS                  : %i\n", objc_msgSend(a3, "numberOfSpacialStreams")];
  [a3 channel];
  if ([W5DescriptionForChannel() UTF8String])
  {
    [a3 channel];
    v11 = [W5DescriptionForChannel() UTF8String];
  }

  else
  {
    v11 = "None";
  }

  [v5 appendFormat:@"    Channel              : %s\n", v11];
  [v5 appendFormat:@"    Country Code         : %s\n", objc_msgSend(objc_msgSend(a3, "countryCode"), "UTF8String")];
  if ([objc_msgSend(a3 "networkServiceID")])
  {
    v12 = [objc_msgSend(a3 "networkServiceID")];
  }

  else
  {
    v12 = "None";
  }

  [v5 appendFormat:@"    NetworkServiceID     : %s\n", v12];
  [a3 ipv4ConfigMethod];
  [v5 appendFormat:@"    IPv4 Config Method   : %s\n", objc_msgSend(W5DescriptionForIPv4ConfigMethod(), "UTF8String")];
  if ([objc_msgSend(objc_msgSend(a3 "ipv4Addresses")])
  {
    v13 = [objc_msgSend(objc_msgSend(a3 "ipv4Addresses")];
  }

  else
  {
    v13 = "None";
  }

  [v5 appendFormat:@"    IPv4 Address         : %s\n", v13];
  if ([objc_msgSend(a3 "ipv4Addresses")] >= 2)
  {
    v14 = 1;
    do
    {
      printf("                         : %s\n", [objc_msgSend(objc_msgSend(a3 "ipv4Addresses")]);
    }

    while (v14 < [objc_msgSend(a3 "ipv4Addresses")]);
  }

  if ([objc_msgSend(a3 "ipv4RouterAddress")])
  {
    v15 = [objc_msgSend(a3 "ipv4RouterAddress")];
  }

  else
  {
    v15 = "None";
  }

  [v5 appendFormat:@"    IPv4 Router          : %s\n", v15];
  [a3 ipv6ConfigMethod];
  [v5 appendFormat:@"    IPv6 Config Method   : %s\n", objc_msgSend(W5DescriptionForIPv6ConfigMethod(), "UTF8String")];
  if ([objc_msgSend(objc_msgSend(a3 "ipv6Addresses")])
  {
    v16 = [objc_msgSend(objc_msgSend(a3 "ipv6Addresses")];
  }

  else
  {
    v16 = "None";
  }

  [v5 appendFormat:@"    IPv6 Address         : %s\n", v16];
  if ([objc_msgSend(a3 "ipv6Addresses")] >= 2)
  {
    v17 = 1;
    do
    {
      printf("                         : %s\n", [objc_msgSend(objc_msgSend(a3 "ipv6Addresses")]);
    }

    while (v17 < [objc_msgSend(a3 "ipv6Addresses")]);
  }

  if ([objc_msgSend(a3 "ipv6RouterAddress")])
  {
    v18 = [objc_msgSend(a3 "ipv6RouterAddress")];
  }

  else
  {
    v18 = "None";
  }

  [v5 appendFormat:@"    IPv6 Router          : %s\n", v18];
  if ([objc_msgSend(objc_msgSend(a3 "dnsAddresses")])
  {
    v19 = [objc_msgSend(objc_msgSend(a3 "dnsAddresses")];
  }

  else
  {
    v19 = "None";
  }

  [v5 appendFormat:@"    DNS                  : %s\n", v19];
  if ([objc_msgSend(a3 "dnsAddresses")] >= 2)
  {
    v20 = 1;
    do
    {
      [v5 appendFormat:@"                         : %s\n", objc_msgSend(objc_msgSend(objc_msgSend(a3, "dnsAddresses"), "objectAtIndexedSubscript:", v20++), "UTF8String")];
    }

    while (v20 < [objc_msgSend(a3 "dnsAddresses")]);
  }

  [a3 btcMode];
  [v5 appendFormat:@"    BTC Mode             : %s\n", objc_msgSend(W5DescriptionForBTCMode(), "UTF8String")];
  if ([a3 desense])
  {
    if ([objc_msgSend(a3 "desense")] == 16)
    {
      [objc_msgSend(a3 "desense")];
    }

    if ([objc_msgSend(a3 "desenseLevel")] == 8)
    {
      [objc_msgSend(a3 "desenseLevel")];
    }

    v53 = [W5DescriptionForDesense() UTF8String];
    v21 = @"    Desense              : %s\n";
  }

  else
  {
    v21 = @"    Desense              : Unavailable\n";
  }

  [v5 appendFormat:v21, v53];
  if ([a3 chainAck])
  {
    if ([objc_msgSend(a3 "chainAck")] == 24)
    {
      [objc_msgSend(a3 "chainAck")];
    }

    v54 = [W5DescriptionForChainAck() UTF8String];
    v22 = @"    Chain Ack            : [%s]\n";
  }

  else
  {
    v22 = @"    Chain Ack            : Unavailable\n";
  }

  [v5 appendFormat:v22, v54];
  if ([a3 txChainPower])
  {
    [objc_msgSend(a3 "txChainPower")];
    if (*([objc_msgSend(a3 "txChainPower")] + 1))
    {
      [objc_msgSend(a3 "txChainPower")];
      if (*([objc_msgSend(a3 "txChainPower")] + 1))
      {
        v23 = 0;
        v24 = 8;
        do
        {
          [objc_msgSend(a3 "txChainPower")];
          v25 = *([objc_msgSend(a3 "txChainPower")] + v24);
          [v5 appendFormat:@"    Tx Power [%lu]         : %s\n", v23, objc_msgSend(W5DescriptionForChainPowerState(), "UTF8String")];
          [objc_msgSend(a3 "txChainPower")];
          v26 = [objc_msgSend(a3 "txChainPower")];
          v27 = *&v26[v24];
          LODWORD(v56) = *&v26[v24 + 16];
          v55 = v27;
          [v5 appendFormat:@"%s", objc_msgSend(objc_msgSend(a1, "__logTxPower:", &v55), "UTF8String")];
          ++v23;
          [objc_msgSend(a3 "txChainPower")];
          v24 += 20;
        }

        while (v23 < *([objc_msgSend(a3 "txChainPower")] + 1));
      }
    }
  }

  if ([a3 btcProfiles2GHz])
  {
    [objc_msgSend(a3 "btcProfiles2GHz")];
    if (*([objc_msgSend(a3 "btcProfiles2GHz")] + 2))
    {
      v28 = 0;
      v29 = 12;
      do
      {
        [objc_msgSend(a3 "btcConfig")];
        if (*([objc_msgSend(a3 "btcConfig")] + 1))
        {
          [objc_msgSend(a3 "btcConfig")];
          if (v28 == *([objc_msgSend(a3 "btcConfig")] + 2))
          {
            v30 = "Active";
          }

          else
          {
            v30 = "Inactive";
          }
        }

        else
        {
          v30 = "Inactive";
        }

        [v5 appendFormat:@"    BTC Profile 2.4GHz [%lu]        : %s\n", v28, v30];
        [objc_msgSend(a3 "btcProfiles2GHz")];
        v31 = [objc_msgSend(a3 "btcProfiles2GHz")];
        v55 = *&v31[v29];
        v32 = *&v31[v29 + 16];
        v33 = *&v31[v29 + 32];
        v34 = *&v31[v29 + 64];
        v58 = *&v31[v29 + 48];
        v59 = v34;
        v56 = v32;
        v57 = v33;
        v35 = *&v31[v29 + 80];
        v36 = *&v31[v29 + 96];
        v37 = *&v31[v29 + 112];
        *&v62[12] = *&v31[v29 + 124];
        v61 = v36;
        *v62 = v37;
        v60 = v35;
        [v5 appendFormat:@"%s", objc_msgSend(objc_msgSend(a1, "__logBTCProfile:", &v55), "UTF8String")];
        ++v28;
        [objc_msgSend(a3 "btcProfiles2GHz")];
        v29 += 140;
      }

      while (v28 < *([objc_msgSend(a3 "btcProfiles2GHz")] + 2));
    }
  }

  if ([a3 btcProfiles5GHz])
  {
    [objc_msgSend(a3 "btcProfiles5GHz")];
    if (*([objc_msgSend(a3 "btcProfiles5GHz")] + 2))
    {
      v38 = 0;
      v39 = 12;
      do
      {
        [objc_msgSend(a3 "btcConfig")];
        if (*([objc_msgSend(a3 "btcConfig")] + 3))
        {
          [objc_msgSend(a3 "btcConfig")];
          if (v38 == *([objc_msgSend(a3 "btcConfig")] + 4))
          {
            v40 = "Active";
          }

          else
          {
            v40 = "Inactive";
          }
        }

        else
        {
          v40 = "Inactive";
        }

        [v5 appendFormat:@"    BTC Profile 5GHz [%lu]          : %s\n", v38, v40];
        [objc_msgSend(a3 "btcProfiles5GHz")];
        v41 = [objc_msgSend(a3 "btcProfiles5GHz")];
        v55 = *&v41[v39];
        v42 = *&v41[v39 + 16];
        v43 = *&v41[v39 + 32];
        v44 = *&v41[v39 + 64];
        v58 = *&v41[v39 + 48];
        v59 = v44;
        v56 = v42;
        v57 = v43;
        v45 = *&v41[v39 + 80];
        v46 = *&v41[v39 + 96];
        v47 = *&v41[v39 + 112];
        *&v62[12] = *&v41[v39 + 124];
        v61 = v46;
        *v62 = v47;
        v60 = v45;
        [v5 appendFormat:@"%s", objc_msgSend(objc_msgSend(a1, "__logBTCProfile:", &v55), "UTF8String")];
        ++v38;
        [objc_msgSend(a3 "btcProfiles5GHz")];
        v39 += 140;
      }

      while (v38 < *([objc_msgSend(a3 "btcProfiles5GHz")] + 2));
    }
  }

  if ([a3 smartCCADesenseSupported])
  {
    v48 = "Supported";
  }

  else
  {
    v48 = "Not Supported";
  }

  [v5 appendFormat:@"    SmartCCA/Desense     : %s (USB=%d)\n", v48, objc_msgSend(a3, "smartCCADesenseUSBPresence")];
  v49 = [objc_msgSend(a3 "capabilities")];
  v50 = "No";
  if (v49)
  {
    v50 = "Yes";
  }

  [v5 appendFormat:@"    Supports 6e          : %s\n", v50];
  [v5 appendFormat:@"    Supported Channels   : %s\n", objc_msgSend(objc_msgSend(objc_msgSend(a3, "supportedChannels"), "componentsJoinedByString:", @", "), "UTF8String")];
  return v5;
}

+ (id)__logBluetoothStatus:(id)a3
{
  v4 = +[NSMutableString string];
  v5 = [a3 powerOn];
  v6 = "Off";
  if (v5)
  {
    v6 = "On";
  }

  [v4 appendFormat:@"    Power                : %s\n", v6];
  if ([objc_msgSend(a3 "address")])
  {
    v7 = [objc_msgSend(a3 "address")];
  }

  else
  {
    v7 = "None";
  }

  [v4 appendFormat:@"    MAC Address          : %s\n", v7];
  if ([a3 isDiscoverable])
  {
    v8 = "Yes";
  }

  else
  {
    v8 = "No";
  }

  [v4 appendFormat:@"    Discoverable         : %s\n", v8];
  if ([a3 isConnectable])
  {
    v9 = "Yes";
  }

  else
  {
    v9 = "No";
  }

  [v4 appendFormat:@"    Connectable          : %s\n", v9];
  if ([a3 isScanning])
  {
    v10 = "Yes";
  }

  else
  {
    v10 = "No";
  }

  [v4 appendFormat:@"    Scanning             : %s\n", v10];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v30 = a3;
  obj = [a3 devices];
  v11 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = *v39;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        v13 += [v18 isPaired];
        v14 += [v18 isCloudPaired];
        v15 += [v18 isConnected];
      }

      v12 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  [v4 appendFormat:@"    Devices              : %lu (paired=%lu cloud=%lu connected=%lu)\n\n", objc_msgSend(objc_msgSend(v30, "devices"), "count"), v13, v14, v15];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obja = [v30 devices];
  v19 = [obja countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    v31 = v4;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(obja);
        }

        v23 = *(*(&v34 + 1) + 8 * j);
        [v4 appendFormat:@"    %@\n", objc_msgSend(v23, "name")];
        [v4 appendFormat:@"    Address          : %@\n", objc_msgSend(v23, "address")];
        if ([v23 isPaired])
        {
          v24 = "Yes";
        }

        else
        {
          v24 = "No";
        }

        [v4 appendFormat:@"    Paired           : %s\n", v24];
        if ([v23 isCloudPaired])
        {
          v25 = "Yes";
        }

        else
        {
          v25 = "No";
        }

        [v4 appendFormat:@"    CloudPaired      : %s\n", v25];
        if ([v23 isConnected])
        {
          v26 = "Yes";
        }

        else
        {
          v26 = "No";
        }

        [v4 appendFormat:@"    Connected        : %s\n", v26];
        if ([v23 isConnected])
        {
          [v23 majorClass];
          [v23 minorClass];
          v4 = v31;
          [v31 appendFormat:@"    Type             : %@\n", W5DescriptionForBluetoothDeviceType()];
          if ([v23 isLowEnergy])
          {
            v27 = "Yes";
          }

          else
          {
            v27 = "No";
          }

          [v31 appendFormat:@"    LE               : %s\n", v27];
          if ([v23 isAppleDevice])
          {
            v28 = "Yes";
          }

          else
          {
            v28 = "No";
          }

          [v31 appendFormat:@"    Apple            : %s\n", v28];
        }

        [v4 appendString:@"\n"];
      }

      v20 = [obja countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v20);
  }

  return v4;
}

- (id)__logAWDLStatus:(id)a3
{
  v5 = +[NSMutableString string];
  v6 = [(W5StatusManager *)self->_status corewifi];
  [v5 appendFormat:@"IPv6: %@\n\n", objc_msgSend(objc_msgSend(-[CWFInterface AWDL](v6, "AWDL"), "IPv6Addresses"), "firstObject")];
  [a3 airDropDiscoverableMode];
  [v5 appendFormat:@"AirDrop Discoverable Mode: %@\n\n", W5DescriptionForAirDropDiscoverableMode()];
  DWORD2(v49) = 0;
  *&v49 = 0;
  [-[CWFInterface AWDLSyncEnabled](v6 "AWDLSyncEnabled")];
  if (DWORD2(v49))
  {
    v7 = "enabled";
  }

  else
  {
    v7 = "disabled";
  }

  [v5 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"awdl is %s\n", v7)}];
  *&v49 = 0;
  [-[CWFInterface AWDLOpMode](v6 "AWDLOpMode")];
  if (DWORD1(v49) <= 2)
  {
    v8 = (&off_1000E3140)[DWORD1(v49)];
  }

  else
  {
    v8 = "UNKNOWN";
  }

  [v5 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"awdl mode = %s\n", v8)}];
  *&v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  [-[CWFInterface AWDLPeerTrafficRegistration](v6 "AWDLPeerTrafficRegistration")];
  if (DWORD2(v59))
  {
    v9 = " FAVOR INFRA HINT";
    if (!HIDWORD(v59))
    {
      v9 = " NO HINT";
    }

    v10 = [NSString stringWithFormat:@"traffic registration found for peer (hint=%x%s) %02x:%02x:%02x:%02x:%02x:%02x \n", HIDWORD(v59), v9, BYTE4(v49), BYTE5(v49), BYTE6(v49), BYTE7(v49), BYTE8(v49), BYTE9(v49)];
  }

  else
  {
    v10 = [NSString stringWithFormat:@"no peer traffic registration active\n", v39, v40, v41, v42, v43, v44, v45, v46];
  }

  [v5 appendString:v10];
  *&v49 = 0;
  [-[CWFInterface AWDLMasterChannel](v6 "AWDLMasterChannel")];
  [v5 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"awdl master channel = %u\n", DWORD1(v49))}];
  *&v49 = 0;
  [-[CWFInterface AWDLSecondaryMasterChannel](v6 "AWDLSecondaryMasterChannel")];
  [v5 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"awdl secondary master channel = %u\n", DWORD1(v49))}];
  v11 = +[NSMutableString string];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  [-[CWFInterface AWDLSyncChannelSequence](v6 "AWDLSyncChannelSequence")];
  [v11 appendFormat:@"awdl channel sequence: strategy %u, step count %u, encoding %u, length=%u, duplicate=%u, fill=%u\n", HIDWORD(v73), BYTE7(v49), BYTE6(v49), BYTE5(v49), BYTE8(v49), BYTE9(v49)];
  if (BYTE5(v49))
  {
    v12 = 0;
    v13 = &v50;
    while (1)
    {
      [v11 appendFormat:@"%u", *v13];
      if (*v13)
      {
        v14 = v13[1];
        v15 = @"++";
        if ((v14 & 0x400) != 0)
        {
          goto LABEL_20;
        }

        if ((v14 & 4) != 0)
        {
          break;
        }
      }

LABEL_21:
      [v11 appendString:@" "];
      ++v12;
      v13 += 3;
      if (v12 >= BYTE5(v49))
      {
        goto LABEL_22;
      }
    }

    if ((v14 & 0x200) != 0)
    {
      v15 = @"+";
    }

    else
    {
      v15 = @"-";
    }

LABEL_20:
    [v11 appendString:v15];
    goto LABEL_21;
  }

LABEL_22:
  [v11 appendString:@"\n"];
  [v5 appendString:{objc_msgSend(v11, "copy")}];
  *&v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  [-[CWFInterface AWDLElectionParameters](v6 "AWDLElectionParameters")];
  v16 = +[NSMutableString string];
  [v16 appendFormat:@"awdl election params:\n"];
  [v16 appendFormat:@"  electionID            %u\n", WORD1(v50)];
  [v16 appendFormat:@"  self metric           0x%x\n", v51];
  [v16 appendFormat:@"  flags                 0x%x\n", v50];
  [v16 appendFormat:@"  top master metric     0x%x\n", HIDWORD(v50)];
  [v16 appendFormat:@"  distance from top     %u\n", BYTE4(v50)];
  [v16 appendFormat:@"  top master            %02X:%02X:%02X:%02X:%02X:%02X\n", BYTE6(v50), BYTE7(v50), BYTE8(v50), BYTE9(v50), BYTE10(v50), BYTE11(v50)];
  [v5 appendString:{objc_msgSend(v16, "copy")}];
  DWORD2(v49) = 0;
  *&v49 = 0;
  [-[CWFInterface AWDLElectionMetric](v6 "AWDLElectionMetric")];
  [v5 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"awdl election metric = %u\n", DWORD1(v49))}];
  v17 = +[NSMutableString string];
  v49 = 0uLL;
  LODWORD(v50) = 0;
  [-[CWFInterface AWDLElectionRSSIThresholds](v6 "AWDLElectionRSSIThresholds")];
  [v17 appendString:@"awdl election rssi thresholds:\n"];
  [v17 appendFormat:@"  close     %d\n", DWORD2(v49)];
  [v17 appendFormat:@"  mid       %d\n", DWORD1(v49)];
  [v17 appendFormat:@"  edge      %d\n", v50];
  [v17 appendFormat:@"  closeSync %d\n", HIDWORD(v49)];
  [v5 appendString:{objc_msgSend(v17, "copy")}];
  *&v49 = 0;
  [-[CWFInterface AWDLSocialTimeSlots](v6 "AWDLSocialTimeSlots")];
  v18 = "enabled";
  if (!BYTE4(v49))
  {
    v18 = "disabled";
  }

  [v5 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"awdl social time slots: %s\n", v18)}];
  *&v49 = 0;
  [-[CWFInterface AWDLEncryptionType](v6 "AWDLEncryptionType")];
  if (DWORD1(v49))
  {
    v19 = "ENABLED";
  }

  else
  {
    v19 = "DISABLED";
  }

  [v5 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"awdl encryption is %s\n", v19)}];
  v49 = 0uLL;
  *&v50 = 0;
  [-[CWFInterface AWDLStrategy](v6 "AWDLStrategy")];
  [v5 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"awdl strategy: %u sched %@ [%llu.%03llu]\n", DWORD1(v49), W5DescriptionForAWDLScheduleState(), v50 / 0x3B9ACA00, v50 % 0x3B9ACA00 / 0xF4240)}];
  *&v49 = 0;
  [-[CWFInterface AWDLPresenceMode](v6 "AWDLPresenceMode")];
  [v5 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"awdl presence mode = %u\n", DWORD1(v49))}];
  *&v49 = 0;
  [-[CWFInterface AWDLGuardTime](v6 "AWDLGuardTime")];
  [v5 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"awdl guard time = %u\n", DWORD1(v49))}];
  v49 = 0uLL;
  [-[CWFInterface AWDLAvailabilityWindowAPAlignment](v6 "AWDLAvailabilityWindowAPAlignment")];
  if (DWORD1(v49))
  {
    v20 = "ENABLED";
  }

  else
  {
    v20 = "DISABLED";
  }

  [v5 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"awdl availability window ap beacon alignment: %s offset %d (ms)\n", v20, DWORD2(v49))}];
  *&v49 = 0;
  [-[CWFInterface AWDLContinuousElectionAlgorithmEnabled](v6 "AWDLContinuousElectionAlgorithmEnabled")];
  if (DWORD1(v49))
  {
    v21 = "ENABLED";
  }

  else
  {
    v21 = "DISABLED";
  }

  [v5 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"awdl aw continous election %s\n", v21)}];
  v22 = +[NSMutableString string];
  v49 = 0uLL;
  *&v50 = 0;
  [-[CWFInterface AWDLSyncState](v6 "AWDLSyncState")];
  switch(DWORD1(v49))
  {
    case 1:
      [v22 appendFormat:@"awdl state: master [%02X:%02X:%02X:%02X:%02X:%02X]\n", BYTE8(v49), BYTE9(v49), BYTE10(v49), BYTE11(v49), BYTE12(v49), BYTE13(v49)];
      break;
    case 2:
      [v22 appendFormat:@"awdl state: slave [%02X:%02X:%02X:%02X:%02X:%02X]\n", BYTE8(v49), BYTE9(v49), BYTE10(v49), BYTE11(v49), BYTE12(v49), BYTE13(v49)];
      break;
    case 3:
      [v22 appendFormat:@"awdl state: non-election master [%02X:%02X:%02X:%02X:%02X:%02X]\n", BYTE8(v49), BYTE9(v49), BYTE10(v49), BYTE11(v49), BYTE12(v49), BYTE13(v49)];
      break;
    default:
      [v22 appendString:@"awdl state: stop\n"];
      break;
  }

  [v5 appendString:{objc_msgSend(v22, "copy")}];
  *&v49 = 0;
  [-[CWFInterface AWDLAFTxMode](v6 "AWDLAFTxMode")];
  [v5 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"awdl af tx mode = %u\n", DWORD1(v49))}];
  v49 = 0uLL;
  LODWORD(v50) = 0;
  [-[CWFInterface AWDLExtensionStateMachineParameters](v6 "AWDLExtensionStateMachineParameters")];
  [v5 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"awdl ext params: min=%u, maxUni=%u, maxMulti=%u, maxAction=%u\n", v50, DWORD2(v49), DWORD1(v49), HIDWORD(v49))}];
  v49 = 0uLL;
  *&v50 = 0;
  [-[CWFInterface AWDLSyncParameters](v6 "AWDLSyncParameters")];
  [v5 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"awdl sync params: aw_period=%d, aw_length=%d, extension_length=%d, sync_frame_period=%d, as non election master %d\n", DWORD2(v49), DWORD1(v49), HIDWORD(v49), v50, DWORD1(v50))}];
  v23 = +[NSMutableString string];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  [-[CWFInterface AWDLSidecarDiagnostics](v6 "AWDLSidecarDiagnostics")];
  [v23 appendFormat:@"awdl sidecar diags: txLatencySumMS=%d, txFailCount=%d, txPacketCount=%d, txMaxPacketBurstSizeKB=%d, peerRssi24G=%d, peerRssi5G=%d\n", DWORD1(v49), DWORD2(v49), HIDWORD(v49), v50, DWORD1(v50), DWORD2(v50)];
  for (i = 0; i != 36; i += 12)
  {
    [v23 appendFormat:@"                    ch=%d, cca=%d\n", *(&v52 + i + 4), *(&v52 + i)];
  }

  [v5 appendString:{objc_msgSend(v23, "copy")}];
  [v5 appendString:@"\n\n"];
  v25 = +[NSMutableString string];
  v48 = 0;
  v47 = 0;
  [-[CWFInterface AWDLSyncEnabled](v6 "AWDLSyncEnabled")];
  [v25 appendString:@"----------------------------------------------------------------------\n"];
  [v25 appendString:@"AWDL Statistics\n"];
  [v25 appendString:@"----------------------------------------------------------------------\n"];
  if (v48)
  {
    bzero(&v49, 0xE88uLL);
    [-[CWFInterface AWDLStatistics](v6 "AWDLStatistics")];
    [v25 appendFormat:@"Rx Bytes              = %d\n", DWORD2(v49)];
    [v25 appendFormat:@"Tx Bytes              = %d\n", HIDWORD(v49)];
    [v25 appendFormat:@"Self Infra Channel    = %d\n", DWORD1(v50)];
    [v25 appendFormat:@"Peer Infra Channel    = %d\n", BYTE8(v50)];
    [v25 appendFormat:@"# of Peers Discovered = %d\n", BYTE9(v50)];
    [v25 appendFormat:@"# of Cached Peers     = %d\n", BYTE10(v50)];
    [v25 appendFormat:@"Flags                 = %x\n", DWORD1(v49)];
    if (BYTE4(v49))
    {
      v26 = "XZ";
    }

    else
    {
      v26 = "non-XZ";
    }

    [v25 appendFormat:@"Country Code          = %s\n", v26];
    if ((BYTE4(v49) & 0x10) != 0)
    {
      v27 = "Yes";
    }

    else
    {
      v27 = "No";
    }

    [v25 appendFormat:@"Is AppleTV            = %s\n", v27];
    if ((BYTE4(v49) & 8) != 0)
    {
      v28 = "Yes";
    }

    else
    {
      v28 = "No";
    }

    [v25 appendFormat:@"Supports Solo         = %s\n", v28];
    if ((BYTE4(v49) & 0x20) != 0)
    {
      v29 = "Yes";
    }

    else
    {
      v29 = "No";
    }

    [v25 appendFormat:@"Was Airplaying        = %s\n", v29];
    if ((BYTE4(v49) & 0x40) != 0)
    {
      v30 = "Yes";
    }

    else
    {
      v30 = "No";
    }

    [v25 appendFormat:@"Was Infra-Airplaying  = %s\n", v30];
    [v25 appendString:@"\n"];
    [v25 appendFormat:@"Cached Peer's Infra on: \n"];
    [v25 appendFormat:@"                 2.4G = %d\n", BYTE11(v50)];
    [v25 appendFormat:@"                   5G = %d\n", BYTE12(v50)];
    [v25 appendFormat:@"                  DFS = %d\n", BYTE13(v50)];
    [v25 appendFormat:@"       Not-Associated = %d\n", BYTE14(v50)];
    [v25 appendFormat:@"           Same Infra = %d\n", v51];
    [v25 appendFormat:@"      Different Infra = %d\n", HIBYTE(v50)];
    [v25 appendString:@"AWDL State History:\n"];
    [v25 appendString:@"                           State           Count      Duration(msecs)\n"];
    v31 = 0;
    v32 = &v72;
    do
    {
      [v25 appendFormat:@"%32s %15d %20llu\n", objc_msgSend(W5DescriptionForAWDLScheduleState(), "UTF8String"), *(v32 - 2), *v32];
      ++v31;
      ++v32;
    }

    while (v31 != 54);
    [v25 appendString:@"\n"];
    [v25 appendFormat:@"No-Service Idle Time  = %llu\n", *(&v51 + 1)];
    [v25 appendFormat:@"Services Browsed      = +%d -%d (+%d, -%d)\n", v78, v84, v77, v83];
    [v25 appendFormat:@"Services Advertised   = +%d -%d (+%d, -%d)\n", v75, v81, v74, v80];
    [v25 appendString:@"\n"];
    [v25 appendString:@"\n"];
    [v25 appendString:@"Add Service History:\n"];
    [v25 appendString:@"      #            Browse                                     |         Advertise\n"];
    [v25 appendString:@"             Id              Key                              |   Id              Key\n"];
    v33 = 0;
    v34 = 1;
    do
    {
      [v25 appendFormat:@"      %d -   %3d, ", v34, *&v79[v33 + 32]];
      [v25 appendString:sub_10007E6A8(&v79[v33])];
      [v25 appendFormat:@"                %3d, ", *&v76[v33 + 32]];
      [v25 appendString:sub_10007E6A8(&v76[v33])];
      [v25 appendString:@"\n"];
      v33 += 48;
      v34 = (v34 + 1);
    }

    while (v33 != 384);
    [v25 appendString:@"\n"];
    [v25 appendString:@"\n"];
    [v25 appendString:@"Delete Service History:\n"];
    [v25 appendString:@"      #                     Browse                            |               Advertise\n"];
    [v25 appendString:@"             Id         Age             Key                   |   Id         Age              Key\n"];
    v35 = 0;
    v36 = 1;
    do
    {
      [v25 appendFormat:@"     %d -    %3d, %10llu, ", v36, *&v85[v35 + 32], *&v85[v35 + 40]];
      [v25 appendString:sub_10007E6A8(&v85[v35])];
      [v25 appendFormat:@"    %3d, %10llu, ", *&v82[v35 + 32], *&v82[v35 + 40]];
      [v25 appendString:sub_10007E6A8(&v82[v35])];
      [v25 appendString:@"\n"];
      v35 += 48;
      v36 = (v36 + 1);
    }

    while (v35 != 384);
    v37 = @"\n";
  }

  else
  {
    v37 = @"AWDL is DISABLED\n";
  }

  [v25 appendString:v37];
  [v5 appendString:{objc_msgSend(v25, "copy")}];
  return [v5 copy];
}

- (id)__pingWithAddress:(id)a3 count:(int64_t)a4 timeout:(double)a5 wait:(double)a6 interval:(double)a7 trafficClass:(id)a8 interfaceName:(id)a9 dataLength:(unint64_t)a10
{
  v10 = 0;
  if (a3 && a4 <= 2147483646 && a5 < 2147483650.0 && a9 != 0)
  {
    if (a8 && ([a8 integerValue], (v20 = W5DescriptionForPingTrafficClass()) != 0))
    {
      v21 = v20;
      v35[0] = @"-c";
      v35[1] = [NSString stringWithFormat:@"%ld", a4];
      v35[2] = @"-b";
      v35[3] = a9;
      v35[4] = @"-k";
      v35[5] = v21;
      v35[6] = @"-i";
      v35[7] = [NSString stringWithFormat:@"%.1f", *&a7];
      v35[8] = @"-t";
      v35[9] = [NSString stringWithFormat:@"%.2f", *&a5];
      v35[10] = @"-W";
      v35[11] = [NSString stringWithFormat:@"%ld", (a6 * 1000.0)];
      v35[12] = @"-s";
      v35[13] = [NSString stringWithFormat:@"%ld", a10 + 56];
      v35[14] = a3;
      v22 = v35;
      v23 = 15;
    }

    else
    {
      v34[0] = @"-c";
      v34[1] = [NSString stringWithFormat:@"%ld", a4];
      v34[2] = @"-b";
      v34[3] = a9;
      v34[4] = @"-i";
      v34[5] = [NSString stringWithFormat:@"%.1f", *&a7];
      v34[6] = @"-t";
      v34[7] = [NSString stringWithFormat:@"%.2f", *&a5];
      v34[8] = @"-W";
      v34[9] = [NSString stringWithFormat:@"%ld", (a6 * 1000.0)];
      v34[10] = @"-s";
      v34[11] = [NSString stringWithFormat:@"%ld", a10 + 56];
      v34[12] = a3;
      v22 = v34;
      v23 = 13;
    }

    v24 = [NSArray arrayWithObjects:v22 count:v23];
    +[NSDate timeIntervalSinceReferenceDate];
    v26 = v25;
    v27 = [NSMutableData dataWithCapacity:0];
    [NSTask runTaskWithLaunchPath:@"/sbin/ping" arguments:v24 outputData:v27 error:0];
    v10 = objc_alloc_init(W5PingResult);
    [v10 setInterfaceName:a9];
    [v10 setAddress:a3];
    [v10 setCount:a4];
    [v10 setTimeout:a5];
    [v10 setWait:a6];
    [v10 setInterval:a7];
    [v10 setTrafficClass:{objc_msgSend(a8, "integerValue")}];
    [v10 setDataLength:a10];
    [v10 setStartedAt:v26];
    +[NSDate timeIntervalSinceReferenceDate];
    [v10 setEndedAt:?];
    [v10 setCommand:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"/sbin/ping %@", -[NSArray componentsJoinedByString:](v24, "componentsJoinedByString:", @" "}];
    [v10 setOutput:{objc_msgSend([NSString alloc], "initWithData:encoding:", v27, 4)}];
    [W5LogManager __parsePingOutput:v27 result:v10];
    if (v10)
    {
      v28 = objc_alloc_init(W5Event);
      [v28 setEventID:34];
      [v10 endedAt];
      [v28 setTimestamp:?];
      v32 = @"PingResult";
      v33 = v10;
      [v28 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v33, &v32, 1)}];
      pingCallback = self->_pingCallback;
      if (pingCallback)
      {
        pingCallback[2](pingCallback, v28);
      }
    }
  }

  return v10;
}

- (id)__ping6WithAddress:(id)a3 count:(int64_t)a4 wait:(double)a5 trafficClass:(id)a6 interfaceName:(id)a7 dataLength:(unint64_t)a8
{
  v8 = 0;
  if (a3 && a4 <= 2147483646 && a7)
  {
    if (a6 && ([a6 integerValue], (v15 = W5DescriptionForPingTrafficClass()) != 0))
    {
      v16 = v15;
      v30[0] = @"-c";
      v30[1] = [NSString stringWithFormat:@"%ld", a4];
      v30[2] = @"-B";
      v30[3] = a7;
      v30[4] = @"-I";
      v30[5] = a7;
      v30[6] = @"-k";
      v30[7] = v16;
      v30[8] = @"-i";
      v30[9] = [NSString stringWithFormat:@"%f", *&a5];
      v30[10] = @"-s";
      v30[11] = [NSString stringWithFormat:@"%ld", a8 + 56];
      v30[12] = a3;
      v17 = v30;
      v18 = 13;
    }

    else
    {
      v29[0] = @"-c";
      v29[1] = [NSString stringWithFormat:@"%ld", a4];
      v29[2] = @"-B";
      v29[3] = a7;
      v29[4] = @"-I";
      v29[5] = a7;
      v29[6] = @"-i";
      v29[7] = [NSString stringWithFormat:@"%f", *&a5];
      v29[8] = @"-s";
      v29[9] = [NSString stringWithFormat:@"%ld", a8 + 56];
      v29[10] = a3;
      v17 = v29;
      v18 = 11;
    }

    v19 = [NSArray arrayWithObjects:v17 count:v18];
    +[NSDate timeIntervalSinceReferenceDate];
    v21 = v20;
    v22 = [NSMutableData dataWithCapacity:0];
    [NSTask runTaskWithLaunchPath:@"/sbin/ping6" arguments:v19 outputData:v22 error:0];
    v8 = objc_alloc_init(W5PingResult);
    [v8 setInterfaceName:a7];
    [v8 setAddress:a3];
    [v8 setCount:a4];
    [v8 setWait:a5];
    [v8 setTrafficClass:{objc_msgSend(a6, "integerValue")}];
    [v8 setDataLength:a8];
    [v8 setStartedAt:v21];
    +[NSDate timeIntervalSinceReferenceDate];
    [v8 setEndedAt:?];
    [v8 setCommand:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"/sbin/ping6 %@", -[NSArray componentsJoinedByString:](v19, "componentsJoinedByString:", @" "}];
    [v8 setOutput:{objc_msgSend([NSString alloc], "initWithData:encoding:", v22, 4)}];
    [W5LogManager __parsePingOutput:v22 result:v8];
    if (v8)
    {
      v23 = objc_alloc_init(W5Event);
      [v23 setEventID:34];
      [v8 endedAt];
      [v23 setTimestamp:?];
      v27 = @"PingResult";
      v28 = v8;
      [v23 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v28, &v27, 1)}];
      pingCallback = self->_pingCallback;
      if (pingCallback)
      {
        pingCallback[2](pingCallback, v23);
      }
    }
  }

  return v8;
}

- (id)__pingUsingCFNetworkWithAddress:(id)a3 count:(int64_t)a4 timeout:(int64_t)a5 trafficClass:(id)a6 networkServiceType:(id)a7
{
  v7 = 0;
  if (a3 && a4 <= 2147483646 && a5 <= 2147483646)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v13 = v12;
    v14 = +[NSMutableArray array];
    v15 = 0.0;
    v16 = 0.0;
    v46 = a4;
    if (a4 >= 1)
    {
      v17 = kCFNetDiagnosticPingOptionTimeout;
      v18 = kCFNetDiagnosticPingOptionPacketCount;
      v48 = kCFNetDiagnosticPingOptionTrafficClass;
      v47 = kCFNetDiagnosticPingOptionTypeOfService;
      v19 = v46;
      do
      {
        v58[0] = v17;
        v20 = [NSNumber numberWithInteger:a5];
        v58[1] = v18;
        v59[0] = v20;
        v59[1] = &off_1000EF470;
        v21 = [+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary mutableCopy:v59];
        v22 = v21;
        if (a6)
        {
          [v21 setObject:a6 forKeyedSubscript:v48];
        }

        if (a7)
        {
          [v22 setObject:a7 forKeyedSubscript:v47];
        }

        +[NSDate timeIntervalSinceReferenceDate];
        v24 = v23;
        cf = 0;
        v25 = CFNetDiagnosticPingWithOptions();
        +[NSDate timeIntervalSinceReferenceDate];
        if (v25)
        {
          v16 = v16 + 1.0;
          [v14 addObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", (v26 - v24) * 1000.0)}];
        }

        --v19;
      }

      while (v19);
    }

    v27 = 0.0;
    v28 = 0.0;
    if ([v14 count])
    {
      v29 = 0;
      v15 = 0.0;
      do
      {
        [objc_msgSend(v14 objectAtIndexedSubscript:{v29), "doubleValue"}];
        v28 = v28 + v30;
        if (v30 <= v15)
        {
          v31 = v15;
        }

        else
        {
          v31 = v30;
        }

        if (v30 < v27)
        {
          v32 = v30;
        }

        else
        {
          v32 = v27;
        }

        if (v29)
        {
          v15 = v31;
        }

        else
        {
          v15 = v30;
        }

        if (v29)
        {
          v27 = v32;
        }

        else
        {
          v27 = v30;
        }

        ++v29;
      }

      while (v29 < [v14 count]);
    }

    v33 = 0.0;
    v34 = 0.0;
    if ([v14 count])
    {
      v34 = v28 / [v14 count];
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v35 = [v14 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v51;
      do
      {
        for (i = 0; i != v36; i = i + 1)
        {
          if (*v51 != v37)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v50 + 1) + 8 * i) doubleValue];
          v33 = v33 + (v39 - v34) * (v39 - v34);
        }

        v36 = [v14 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v36);
    }

    v40 = sqrt(v33 / [v14 count]);
    v7 = objc_alloc_init(W5PingResult);
    [v7 setInterfaceName:{-[W5WiFiInterface interfaceName](-[W5StatusManager wifi](self->_status, "wifi"), "interfaceName")}];
    [v7 setAddress:a3];
    [v7 setCount:v46];
    [v7 setMin:v27];
    [v7 setMax:v15];
    [v7 setAvg:v34];
    [v7 setStddev:v40];
    [v7 setPacketLoss:(v46 - v16) / v46];
    [v7 setStartedAt:v13];
    +[NSDate timeIntervalSinceReferenceDate];
    [v7 setEndedAt:?];
    v41 = v7;
    if (v7)
    {
      v42 = objc_alloc_init(W5Event);
      [v42 setEventID:34];
      [v7 endedAt];
      [v42 setTimestamp:?];
      v55 = @"PingResult";
      v56 = v7;
      [v42 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v56, &v55, 1)}];
      pingCallback = self->_pingCallback;
      if (pingCallback)
      {
        pingCallback[2](pingCallback, v42);
      }
    }
  }

  return v7;
}

- (id)__pingUsingIMFoundationWithAddress:(id)a3 timeout:(int64_t)a4
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = sub_10005E4F0;
  v23 = sub_10005E500;
  v24 = 0;
  v7 = sub_10007E790();
  if (a4 <= 2147483646 && a3 && v7)
  {
    v8 = dispatch_semaphore_create(0);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x3052000000;
    v30 = sub_10005E4F0;
    v9 = qword_100106C10;
    v31 = sub_10005E500;
    v32 = qword_100106C10;
    if (!qword_100106C10)
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10007E8D4;
      v25[3] = &unk_1000E13B0;
      v25[4] = &buf;
      sub_10007E8D4(v25);
      v9 = *(*(&buf + 1) + 40);
    }

    _Block_object_dispose(&buf, 8);
    v10 = [[v9 alloc] initWithAddress:a3 wifi:1];
    +[NSDate timeIntervalSinceReferenceDate];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10007BF28;
    v18[3] = &unk_1000E28B0;
    v18[4] = a3;
    v18[5] = self;
    v18[8] = v11;
    v18[6] = v8;
    v18[7] = &v19;
    [v10 startWithTimeout:dispatch_get_global_queue(0 queue:0) completionHandler:{v18, a4}];
    v12 = dispatch_time(0, 80000000000);
    if (dispatch_semaphore_wait(v8, v12) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = 0x4054000000000000;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", &buf, 0xCu);
    }

    v13 = v20[5];
  }

  if (v20[5])
  {
    v14 = objc_alloc_init(W5Event);
    [v14 setEventID:34];
    [v20[5] endedAt];
    [v14 setTimestamp:?];
    v26 = @"PingResult";
    v27 = v20[5];
    [v14 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v27, &v26, 1)}];
    pingCallback = self->_pingCallback;
    if (pingCallback)
    {
      pingCallback[2](pingCallback, v14);
    }
  }

  v16 = v20[5];
  _Block_object_dispose(&v19, 8);
  return v16;
}

+ (void)__parsePingOutput:(id)a3 result:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      v5 = [[NSString alloc] initWithData:a3 encoding:4];
      if (v5)
      {
        v14 = v5;
        v6 = [v5 componentsSeparatedByString:@"\n"];
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v16;
          do
          {
            v10 = 0;
            do
            {
              if (*v16 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = [*(*(&v15 + 1) + 8 * v10) componentsSeparatedByCharactersInSet:{+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet, "whitespaceCharacterSet")}];
              if ([v11 containsObject:@"loss"])
              {
                v12 = [v11 objectAtIndexedSubscript:6];
                [objc_msgSend(v12 substringToIndex:{objc_msgSend(v12, "length") - 1), "doubleValue"}];
                [a4 setPacketLoss:?];
              }

              else if ([v11 containsObject:@"round-trip"])
              {
                v13 = [objc_msgSend(v11 objectAtIndexedSubscript:{3), "componentsSeparatedByString:", @"/"}];
                [objc_msgSend(v13 objectAtIndexedSubscript:{0), "doubleValue"}];
                [a4 setMin:?];
                [objc_msgSend(v13 objectAtIndexedSubscript:{1), "doubleValue"}];
                [a4 setAvg:?];
                [objc_msgSend(v13 objectAtIndexedSubscript:{2), "doubleValue"}];
                [a4 setMax:?];
                [objc_msgSend(v13 objectAtIndexedSubscript:{3), "doubleValue"}];
                [a4 setStddev:?];
              }

              v10 = v10 + 1;
            }

            while (v8 != v10);
            v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v8);
        }

        [a4 setOutput:v14];
      }
    }
  }
}

- (void)__runToolWithOutputFileHandle:(id)a3 readFromStandardError:(BOOL)a4 launchPath:(id)a5 arguments:(id)a6 addCommand:(BOOL)a7 addTimestamps:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v12 = a4;
  if (a7)
  {
    if ([a5 hasPrefix:@"/wl"])
    {
      v15 = @"[wlan]";
    }

    else
    {
      v15 = a5;
    }

    v16 = +[NSMutableString string];
    [v16 appendString:@"--------------------------------------------------------------------\n"];
    [v16 appendFormat:@"%@ %@\n", -[__CFString lastPathComponent](v15, "lastPathComponent"), objc_msgSend(a6, "componentsJoinedByString:", @" "];
    [v16 appendString:@"--------------------------------------------------------------------\n"];
    [a3 writeData:{objc_msgSend(v16, "dataUsingEncoding:", 4)}];
  }

  v17 = [a3 offsetInFile];
  v18 = +[NSDate date];
  if (v8)
  {
    v19 = v18;
    v20 = +[NSMutableString string];
    [v20 appendFormat:@"BEGIN: %@, END: 00:00:00.000\n", -[NSDateFormatter stringFromDate:](self->_dateFormatter, "stringFromDate:", v19)];
    [v20 appendString:@"--------------------------------------------------------------------\n"];
    [a3 writeData:{objc_msgSend(v20, "dataUsingEncoding:", 4)}];
    if (v12)
    {
      v21 = 0;
    }

    else
    {
      v21 = a3;
    }

    if (v12)
    {
      v22 = a3;
    }

    else
    {
      v22 = 0;
    }

    [NSTask runTaskWithLaunchPath:a5 arguments:a6 timeout:v21 outputFileHandle:v22 errorFileHandle:0 launchHandler:0 didLaunch:10.0 error:0];
    [a3 seekToFileOffset:v17];
    v23 = +[NSMutableString string];
    [v23 appendFormat:@"BEGIN: %@, END: %@\n", -[NSDateFormatter stringFromDate:](self->_dateFormatter, "stringFromDate:", v19), -[NSDateFormatter stringFromDate:](self->_dateFormatter, "stringFromDate:", +[NSDate date](NSDate, "date"))];
    [v23 appendString:@"--------------------------------------------------------------------\n"];
    [a3 writeData:{objc_msgSend(v23, "dataUsingEncoding:", 4)}];
    [a3 seekToEndOfFile];
LABEL_21:
    [a3 writeData:{objc_msgSend(@"\n", "dataUsingEncoding:", 4)}];
    return;
  }

  if (v12)
  {
    v24 = 0;
  }

  else
  {
    v24 = a3;
  }

  if (v12)
  {
    v25 = a3;
  }

  else
  {
    v25 = 0;
  }

  [NSTask runTaskWithLaunchPath:a5 arguments:a6 timeout:v24 outputFileHandle:v25 errorFileHandle:0 launchHandler:0 didLaunch:10.0 error:0];
  if (v9)
  {
    goto LABEL_21;
  }
}

- (BOOL)__wlCLIWithArguments:(id)a3 outputFilePath:(id)a4 outputData:(id)a5
{
  if (![(CWFInterface *)[(W5StatusManager *)self->_status corewifi] SSID])
  {
    return 0;
  }

  if (a4)
  {

    return [NSTask runTaskWithLaunchPath:@"/usr/local/bin/wl" arguments:a3 outputFilePath:a4 error:0];
  }

  if (!a5)
  {
    return 0;
  }

  return [NSTask runTaskWithLaunchPath:@"/usr/local/bin/wl" arguments:a3 outputData:a5 error:0];
}

- (void)__dumpCoreCaptureLogsWithReason:(id)a3 component:(id)a4
{
  v6 = [(W5StatusManager *)self->_status concurrentQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007CC3C;
  v7[3] = &unk_1000E1C98;
  v7[4] = a4;
  v7[5] = a3;
  [(NSOperationQueue *)v6 addOperationWithBlock:v7];
}

+ (id)__temporaryDirectory
{
  v2 = +[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", [[(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:@"com.apple.wifivelocity"] stringByAppendingPathComponent:[(NSString *)[+[NSUUID UUIDString] substringToIndex:5 UUID]]];
  v5 = 0;
  if (![+[NSFileManager createDirectoryAtPath:"createDirectoryAtPath:withIntermediateDirectories:attributes:error:"]
  {
    v3 = sub_100098A04();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = "+[W5LogManager __temporaryDirectory]";
      v8 = 2080;
      v9 = "W5LogManager.m";
      v10 = 1024;
      v11 = 9851;
      v12 = 2112;
      v13 = v5;
      _os_log_send_and_compose_impl();
    }
  }

  return v2;
}

@end