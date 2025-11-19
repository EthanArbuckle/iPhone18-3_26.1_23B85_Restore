@interface W5WiFiPerfLoggingManager
- (BOOL)__wlCLIWithArguments:(id)a3 outputFilePath:(id)a4 outputData:(id)a5;
- (W5WiFiPerfLoggingManager)initWithStatusManager:(id)a3;
- (id)__pendingRequestWithUUID:(id)a3;
- (void)__cancelActiveRequestAndReply:(id)a3;
- (void)__collectNetworkCountersPOST;
- (void)__collectNetworkCountersPRE;
- (void)__collectWiFiCountersPOST;
- (void)__collectWiFiCountersPRE;
- (void)__collectWiFiDeviceConfig;
- (void)__collectWiFiMemoryStatsWithFilename:(id)a3;
- (void)__dumpCoreCaptureLogsWithReason:(id)a3;
- (void)__nextRequest;
- (void)__runToolWithOutputFileHandle:(id)a3 readFromStandardError:(BOOL)a4 launchPath:(id)a5 arguments:(id)a6 addCommand:(BOOL)a7 addTimestamps:(BOOL)a8;
- (void)__setupWatchdogTask;
- (void)__startAWDLPerfLogging;
- (void)__startAWDLQueryTimer;
- (void)__startCoreCaptureTriggerTimerWithInterval:(unint64_t)a3;
- (void)__startNANPerfLogging;
- (void)__startNANQueryTimer;
- (void)__startP2PPerfLogging;
- (void)__startPerfLogging;
- (void)addRequest:(id)a3;
- (void)cancelRequestWithUUID:(id)a3 reply:(id)a4;
- (void)dealloc;
- (void)teardownAndNotify:(id)a3;
@end

@implementation W5WiFiPerfLoggingManager

- (W5WiFiPerfLoggingManager)initWithStatusManager:(id)a3
{
  v11.receiver = self;
  v11.super_class = W5WiFiPerfLoggingManager;
  v4 = [(W5WiFiPerfLoggingManager *)&v11 init];
  v5 = v4;
  if (!a3)
  {
    goto LABEL_9;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  v4->_status = a3;
  v6 = dispatch_queue_create("com.apple.wifivelocity.wifiperf", 0);
  v5->_queue = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = objc_alloc_init(NSMutableArray);
  v5->_pendingRequests = v7;
  if (v7 && (v8 = objc_alloc_init(NSMutableArray), (v5->_runningTasks = v8) != 0) && (v9 = objc_alloc_init(NSDateFormatter), (v5->_dateFormatter = v9) != 0))
  {
    [(NSDateFormatter *)v9 setDateFormat:@"HH:mm:ss.SSS"];
  }

  else
  {
LABEL_9:

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  awdlQueryTimer = self->_awdlQueryTimer;
  if (awdlQueryTimer)
  {
    dispatch_source_cancel(awdlQueryTimer);
    dispatch_release(self->_awdlQueryTimer);
    self->_awdlQueryTimer = 0;
  }

  nanQueryTimer = self->_nanQueryTimer;
  if (nanQueryTimer)
  {
    dispatch_source_cancel(nanQueryTimer);
    dispatch_release(self->_nanQueryTimer);
    self->_nanQueryTimer = 0;
  }

  coreCaptureTriggerTimer = self->_coreCaptureTriggerTimer;
  if (coreCaptureTriggerTimer)
  {
    dispatch_source_cancel(coreCaptureTriggerTimer);
    dispatch_release(self->_coreCaptureTriggerTimer);
    self->_coreCaptureTriggerTimer = 0;
  }

  beginGroup = self->_beginGroup;
  if (beginGroup)
  {
    dispatch_release(beginGroup);
  }

  endGroup = self->_endGroup;
  if (endGroup)
  {
    dispatch_release(endGroup);
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  v9.receiver = self;
  v9.super_class = W5WiFiPerfLoggingManager;
  [(W5WiFiPerfLoggingManager *)&v9 dealloc];
}

- (void)teardownAndNotify:(id)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001F738;
  v4[3] = &unk_1000E1C70;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)addRequest:(id)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001F848;
  v4[3] = &unk_1000E1C98;
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

- (void)cancelRequestWithUUID:(id)a3 reply:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FA1C;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(queue, block);
}

- (void)__dumpCoreCaptureLogsWithReason:(id)a3
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FC5C;
  block[3] = &unk_1000E1CE8;
  block[4] = a3;
  dispatch_async(global_queue, block);
}

- (void)__startCoreCaptureTriggerTimerWithInterval:(unint64_t)a3
{
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
  self->_coreCaptureTriggerTimer = v5;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001FFE8;
  handler[3] = &unk_1000E1CE8;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  coreCaptureTriggerTimer = self->_coreCaptureTriggerTimer;
  a3 *= 1000000000;
  v7 = dispatch_time(0, a3);
  dispatch_source_set_timer(coreCaptureTriggerTimer, v7, a3, 0);
  dispatch_resume(self->_coreCaptureTriggerTimer);
}

- (void)__startPerfLogging
{
  dispatch_group_enter(self->_beginGroup);
  v3 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%@", -[W5WiFiInterface interfaceName](-[W5StatusManager wifi](self->_status, "wifi"), "interfaceName"), @"tcpdump.pcap"}];
  v43[0] = @"-n";
  v43[1] = @"-p";
  v43[2] = @"-i";
  v43[3] = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName];
  v43[4] = @"-s";
  v43[5] = @"300";
  v43[6] = @"-w";
  v43[7] = v3;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100020C84;
  v35[3] = &unk_1000E1D10;
  v35[4] = self;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100020D58;
  v34[3] = &unk_1000E1D38;
  v34[4] = self;
  [NSTask runTaskWithLaunchPath:@"/usr/sbin/tcpdump" arguments:[NSArray arrayWithObjects:v43 count:8] launchHandler:v35 reply:v34];
  dispatch_group_enter(self->_beginGroup);
  v4 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%@", -[W5WiFiInterface interfaceName](-[W5StatusManager wifi](self->_status, "wifi"), "interfaceName"), @"netstat_inout.txt"}];
  v42[0] = @"-I";
  v42[1] = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName];
  v42[2] = @"-w";
  v42[3] = @"1";
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100020D74;
  v33[3] = &unk_1000E1D10;
  v33[4] = self;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100020E48;
  v32[3] = &unk_1000E1D38;
  v32[4] = self;
  [NSTask runTaskWithLaunchPath:@"/usr/sbin/netstat" arguments:[NSArray arrayWithObjects:v42 count:4] outputFilePath:v4 launchHandler:v33 reply:v32];
  dispatch_group_enter(self->_beginGroup);
  v5 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%@", -[W5WiFiInterface interfaceName](-[W5StatusManager wifi](self->_status, "wifi"), "interfaceName"), @"netstat_queue.txt"}];
  v41[0] = @"-I";
  v41[1] = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName];
  v41[2] = @"-w";
  v41[3] = @"1";
  v41[4] = @"-qq";
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100020E64;
  v31[3] = &unk_1000E1D10;
  v31[4] = self;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100020F38;
  v30[3] = &unk_1000E1D38;
  v30[4] = self;
  [NSTask runTaskWithLaunchPath:@"/usr/sbin/netstat" arguments:[NSArray arrayWithObjects:v41 count:5] outputFilePath:v5 launchHandler:v31 reply:v30];
  dispatch_group_enter(self->_beginGroup);
  v6 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%@", -[W5WiFiInterface interfaceName](-[W5StatusManager wifi](self->_status, "wifi"), "interfaceName"), @"netstat_tcp.txt"}];
  v40[0] = @"-I";
  v40[1] = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName];
  v40[2] = @"-w";
  v40[3] = @"1";
  v40[4] = @"-s";
  v40[5] = @"-p";
  v40[6] = @"tcp";
  v28[4] = self;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100020F54;
  v29[3] = &unk_1000E1D10;
  v29[4] = self;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100021028;
  v28[3] = &unk_1000E1D38;
  [NSTask runTaskWithLaunchPath:@"/usr/sbin/netstat" arguments:[NSArray arrayWithObjects:v40 count:7] outputFilePath:v6 launchHandler:v29 reply:v28];
  dispatch_group_enter(self->_beginGroup);
  v7 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%@", -[W5WiFiInterface interfaceName](-[W5StatusManager wifi](self->_status, "wifi"), "interfaceName"), @"netstat_udp.txt"}];
  v39[0] = @"-I";
  v39[1] = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName];
  v39[2] = @"-w";
  v39[3] = @"1";
  v39[4] = @"-s";
  v39[5] = @"-p";
  v39[6] = @"udp";
  v8 = [NSArray arrayWithObjects:v39 count:7];
  v26[4] = self;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100021044;
  v27[3] = &unk_1000E1D10;
  v27[4] = self;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100021118;
  v26[3] = &unk_1000E1D38;
  [NSTask runTaskWithLaunchPath:@"/usr/sbin/netstat" arguments:v8 outputFilePath:v7 launchHandler:v27 reply:v26];
  dispatch_group_enter(self->_beginGroup);
  v9 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%@", -[W5WiFiInterface interfaceName](-[W5StatusManager wifi](self->_status, "wifi"), "interfaceName"), @"nettop.txt"}];
  v24[4] = self;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100021134;
  v25[3] = &unk_1000E1D10;
  v25[4] = self;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100021208;
  v24[3] = &unk_1000E1D38;
  [NSTask runTaskWithLaunchPath:@"/usr/bin/nettop" arguments:&off_1000F34F8 outputFilePath:v9 launchHandler:v25 reply:v24];
  v10 = [(NSDictionary *)[(W5WiFiPerfLoggingRequest *)self->_activeRequest configuration] objectForKeyedSubscript:@"WiFiStatsSampleInterval"];
  if (v10)
  {
    v38[0] = @"-vrftsR";
    v38[1] = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v10 integerValue]);
    v11 = [NSArray arrayWithObjects:v38 count:2];
  }

  else
  {
    v11 = &off_1000F3510;
  }

  dispatch_group_enter(self->_beginGroup);
  v12 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", @"wifistats.txt"}];
  v22[4] = self;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100021224;
  v23[3] = &unk_1000E1D10;
  v23[4] = self;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000212F8;
  v22[3] = &unk_1000E1D38;
  [NSTask runTaskWithLaunchPath:@"/usr/local/bin/wifistats" arguments:v11 outputFilePath:v12 launchHandler:v23 reply:v22];
  v13 = [(NSDictionary *)[(W5WiFiPerfLoggingRequest *)self->_activeRequest configuration] objectForKeyedSubscript:@"PowermetricsCPUSampleInterval"];
  if (v13)
  {
    v14 = [v13 integerValue];
  }

  else
  {
    v14 = 0;
  }

  dispatch_group_enter(self->_beginGroup);
  v15 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", @"powermetrics.txt"}];
  v37[0] = @"-b";
  v37[1] = @"/usr/local/bin/powermetrics";
  v37[2] = @"-i";
  v37[3] = [NSString stringWithFormat:@"%ld", v14];
  v37[4] = @"--samplers";
  v37[5] = @"cpu_power,tasks,network,interrupts";
  v37[6] = @"--show-usage-summary";
  v37[7] = @"--show-plimits";
  v37[8] = @"--show-process-qos";
  v37[9] = @"--show-process-netstats";
  v37[10] = @"--show-process-energy";
  v37[11] = @"--show-process-samp-norm";
  v37[12] = @"--show-process-gpu";
  v37[13] = @"--show-process-io";
  v37[14] = @"--show-process-wait-times";
  v37[15] = @"-u";
  v37[16] = v15;
  v20[4] = self;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100021314;
  v21[3] = &unk_1000E1D10;
  v21[4] = self;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000213E8;
  v20[3] = &unk_1000E1D38;
  [NSTask runTaskWithLaunchPath:@"/usr/sbin/taskpolicy" arguments:[NSArray arrayWithObjects:v37 count:17] launchHandler:v21 reply:v20];
  if ([-[NSDictionary objectForKeyedSubscript:](-[W5WiFiPerfLoggingRequest configuration](self->_activeRequest "configuration")])
  {
    dispatch_group_enter(self->_beginGroup);
    v16 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", @"wifiperf.artrace"}];
    v36[0] = @"-o";
    v36[1] = v16;
    v18[4] = self;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100021404;
    v19[3] = &unk_1000E1D10;
    v19[4] = self;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000214D8;
    v18[3] = &unk_1000E1D38;
    [NSTask runTaskWithLaunchPath:@"/usr/local/bin/artrace" arguments:[NSArray arrayWithObjects:v36 count:2] launchHandler:v19 reply:v18];
  }

  v17 = [(NSDictionary *)[(W5WiFiPerfLoggingRequest *)self->_activeRequest configuration] objectForKeyedSubscript:@"CoreCaptureTriggerInterval"];
  if (v17)
  {
    -[W5WiFiPerfLoggingManager __startCoreCaptureTriggerTimerWithInterval:](self, "__startCoreCaptureTriggerTimerWithInterval:", [v17 unsignedIntegerValue]);
  }
}

- (void)__startAWDLPerfLogging
{
  v3 = [(W5WiFiInterface *)[(W5StatusManager *)self->_status awdl] interfaceName];
  if (v3)
  {
    v4 = v3;
    [(W5WiFiPerfLoggingManager *)self __startAWDLQueryTimer];
    dispatch_group_enter(self->_beginGroup);
    v5 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%@", v4, @"io80211.pcap"}];
    v31[0] = v4;
    v31[1] = @"-logf='vv el+ set'";
    v31[2] = @"-quiet";
    v31[3] = [NSString stringWithFormat:@"-outfile=%@", v5];
    v31[4] = @"-dlog";
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100021DB0;
    v25[3] = &unk_1000E1D10;
    v25[4] = self;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100021E84;
    v24[3] = &unk_1000E1D38;
    v24[4] = self;
    [NSTask runTaskWithLaunchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v31 count:5] launchHandler:v25 reply:v24];
    dispatch_group_enter(self->_beginGroup);
    v6 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%@", v4, @"tcpdump.pcap"}];
    v30[0] = @"-n";
    v30[1] = @"-p";
    v30[2] = @"-i";
    v30[3] = v4;
    v30[4] = @"-s";
    v30[5] = @"300";
    v30[6] = @"-w";
    v30[7] = v6;
    v22[4] = self;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100021EA0;
    v23[3] = &unk_1000E1D10;
    v23[4] = self;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100021F74;
    v22[3] = &unk_1000E1D38;
    [NSTask runTaskWithLaunchPath:@"/usr/sbin/tcpdump" arguments:[NSArray arrayWithObjects:v30 count:8] launchHandler:v23 reply:v22];
    dispatch_group_enter(self->_beginGroup);
    v7 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%@", v4, @"netstat_inout.txt"}];
    v29[0] = @"-I";
    v29[1] = v4;
    v29[2] = @"-w";
    v29[3] = @"1";
    v20[4] = self;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100021F90;
    v21[3] = &unk_1000E1D10;
    v21[4] = self;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100022064;
    v20[3] = &unk_1000E1D38;
    [NSTask runTaskWithLaunchPath:@"/usr/sbin/netstat" arguments:[NSArray arrayWithObjects:v29 count:4] outputFilePath:v7 launchHandler:v21 reply:v20];
    dispatch_group_enter(self->_beginGroup);
    v8 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%@", v4, @"netstat_queue.txt"}];
    v28[0] = @"-I";
    v28[1] = v4;
    v28[2] = @"-w";
    v28[3] = @"1";
    v28[4] = @"-qq";
    v18[4] = self;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100022080;
    v19[3] = &unk_1000E1D10;
    v19[4] = self;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100022154;
    v18[3] = &unk_1000E1D38;
    [NSTask runTaskWithLaunchPath:@"/usr/sbin/netstat" arguments:[NSArray arrayWithObjects:v28 count:5] outputFilePath:v8 launchHandler:v19 reply:v18];
    dispatch_group_enter(self->_beginGroup);
    v9 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%@", v4, @"netstat_tcp.txt"}];
    v27[0] = @"-I";
    v27[1] = v4;
    v27[2] = @"-w";
    v27[3] = @"1";
    v27[4] = @"-s";
    v27[5] = @"-p";
    v27[6] = @"tcp";
    v16[4] = self;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100022170;
    v17[3] = &unk_1000E1D10;
    v17[4] = self;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100022244;
    v16[3] = &unk_1000E1D38;
    [NSTask runTaskWithLaunchPath:@"/usr/sbin/netstat" arguments:[NSArray arrayWithObjects:v27 count:7] outputFilePath:v9 launchHandler:v17 reply:v16];
    dispatch_group_enter(self->_beginGroup);
    v10 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%@", v4, @"netstat_udp.txt"}];
    v26[0] = @"-I";
    v26[1] = v4;
    v26[2] = @"-w";
    v26[3] = @"1";
    v26[4] = @"-s";
    v26[5] = @"-p";
    v26[6] = @"udp";
    v14[4] = self;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100022260;
    v15[3] = &unk_1000E1D10;
    v15[4] = self;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100022334;
    v14[3] = &unk_1000E1D38;
    [NSTask runTaskWithLaunchPath:@"/usr/sbin/netstat" arguments:[NSArray arrayWithObjects:v26 count:7] outputFilePath:v10 launchHandler:v15 reply:v14];
    dispatch_group_enter(self->_beginGroup);
    v11 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%@", v4, @"nettop.txt"}];
    v12[4] = self;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100022350;
    v13[3] = &unk_1000E1D10;
    v13[4] = self;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100022424;
    v12[3] = &unk_1000E1D38;
    [NSTask runTaskWithLaunchPath:@"/usr/bin/nettop" arguments:&off_1000F3528 outputFilePath:v11 launchHandler:v13 reply:v12];
  }
}

- (void)__startAWDLQueryTimer
{
  v3 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"awdl_%@", @"apple80211.txt"}];
  [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v3, 0];
  [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:v3 attributes:0, 0];
  self->_awdlQueryFileHandle = [NSFileHandle fileHandleForUpdatingAtPath:v3];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
  self->_awdlQueryTimer = v4;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000225F4;
  handler[3] = &unk_1000E1CE8;
  handler[4] = self;
  dispatch_source_set_event_handler(v4, handler);
  awdlQueryTimer = self->_awdlQueryTimer;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002271C;
  v8[3] = &unk_1000E1CE8;
  v8[4] = self;
  dispatch_source_set_cancel_handler(awdlQueryTimer, v8);
  v6 = self->_awdlQueryTimer;
  v7 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(self->_awdlQueryTimer);
}

- (void)__startNANPerfLogging
{
  v3 = [(W5WiFiInterface *)[(W5StatusManager *)self->_status nan] interfaceName];
  if (v3)
  {
    v4 = v3;
    [(W5WiFiPerfLoggingManager *)self __startNANQueryTimer];
    dispatch_group_enter(self->_beginGroup);
    v5 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%@", v4, @"io80211.pcap"}];
    v24[0] = v4;
    v24[1] = @"-logf='vv el+ set'";
    v24[2] = @"-quiet";
    v24[3] = [NSString stringWithFormat:@"-outfile=%@", v5];
    v24[4] = @"-dlog";
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100022DDC;
    v19[3] = &unk_1000E1D10;
    v19[4] = self;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100022EB0;
    v18[3] = &unk_1000E1D38;
    v18[4] = self;
    [NSTask runTaskWithLaunchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v24 count:5] launchHandler:v19 reply:v18];
    dispatch_group_enter(self->_beginGroup);
    v6 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%@", v4, @"tcpdump.pcap"}];
    v23[0] = @"-n";
    v23[1] = @"-p";
    v23[2] = @"-i";
    v23[3] = v4;
    v23[4] = @"-s";
    v23[5] = @"300";
    v23[6] = @"-w";
    v23[7] = v6;
    v16[4] = self;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100022ECC;
    v17[3] = &unk_1000E1D10;
    v17[4] = self;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100022FA0;
    v16[3] = &unk_1000E1D38;
    [NSTask runTaskWithLaunchPath:@"/usr/sbin/tcpdump" arguments:[NSArray arrayWithObjects:v23 count:8] launchHandler:v17 reply:v16];
    dispatch_group_enter(self->_beginGroup);
    v7 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%@", v4, @"netstat_queue.txt"}];
    v22[0] = @"-I";
    v22[1] = v4;
    v22[2] = @"-w";
    v22[3] = @"1";
    v22[4] = @"-qq";
    v14[4] = self;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100022FBC;
    v15[3] = &unk_1000E1D10;
    v15[4] = self;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100023090;
    v14[3] = &unk_1000E1D38;
    [NSTask runTaskWithLaunchPath:@"/usr/sbin/netstat" arguments:[NSArray arrayWithObjects:v22 count:5] outputFilePath:v7 launchHandler:v15 reply:v14];
    dispatch_group_enter(self->_beginGroup);
    v8 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%@", v4, @"netstat_tcp.txt"}];
    v21[0] = @"-I";
    v21[1] = v4;
    v21[2] = @"-w";
    v21[3] = @"1";
    v21[4] = @"-s";
    v21[5] = @"-p";
    v21[6] = @"tcp";
    v12[4] = self;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000230AC;
    v13[3] = &unk_1000E1D10;
    v13[4] = self;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100023180;
    v12[3] = &unk_1000E1D38;
    [NSTask runTaskWithLaunchPath:@"/usr/sbin/netstat" arguments:[NSArray arrayWithObjects:v21 count:7] outputFilePath:v8 launchHandler:v13 reply:v12];
    dispatch_group_enter(self->_beginGroup);
    v9 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%@", v4, @"netstat_udp.txt"}];
    v20[0] = @"-I";
    v20[1] = v4;
    v20[2] = @"-w";
    v20[3] = @"1";
    v20[4] = @"-s";
    v20[5] = @"-p";
    v20[6] = @"udp";
    v10[4] = self;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002319C;
    v11[3] = &unk_1000E1D10;
    v11[4] = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100023270;
    v10[3] = &unk_1000E1D38;
    [NSTask runTaskWithLaunchPath:@"/usr/sbin/netstat" arguments:[NSArray arrayWithObjects:v20 count:7] outputFilePath:v9 launchHandler:v11 reply:v10];
  }
}

- (void)__startNANQueryTimer
{
  v3 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"nan_%@", @"apple80211.txt"}];
  [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v3, 0];
  [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:v3 attributes:0, 0];
  self->_nanQueryFileHandle = [NSFileHandle fileHandleForUpdatingAtPath:v3];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
  self->_nanQueryTimer = v4;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100023440;
  handler[3] = &unk_1000E1CE8;
  handler[4] = self;
  dispatch_source_set_event_handler(v4, handler);
  nanQueryTimer = self->_nanQueryTimer;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100023550;
  v8[3] = &unk_1000E1CE8;
  v8[4] = self;
  dispatch_source_set_cancel_handler(nanQueryTimer, v8);
  v6 = self->_nanQueryTimer;
  v7 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(self->_nanQueryTimer);
}

- (void)__startP2PPerfLogging
{
  [(W5WiFiPerfLoggingManager *)self __startAWDLPerfLogging];

  [(W5WiFiPerfLoggingManager *)self __startNANPerfLogging];
}

- (void)__setupWatchdogTask
{
  v3 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"( ");
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  runningTasks = self->_runningTasks;
  v5 = [(NSMutableArray *)runningTasks countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(runningTasks);
        }

        -[NSMutableString appendFormat:](v3, "appendFormat:", @"%d ", [*(*(&v12 + 1) + 8 * i) processIdentifier]);
      }

      v6 = [(NSMutableArray *)runningTasks countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  [(NSMutableString *)v3 appendString:@""]);
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"CHILDPIDS=%@; while kill -0 %d; do sleep 10; done; for PID in ${CHILDPIDS[@]}; do kill -9 $PID; done;", v3, [+[NSProcessInfo processIdentifier] processInfo];
  v16[0] = @"-c";
  v16[1] = v9;
  v10[4] = self;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000237E0;
  v11[3] = &unk_1000E1D10;
  v11[4] = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000238A8;
  v10[3] = &unk_1000E1D38;
  [NSTask runTaskWithLaunchPath:@"/bin/sh" arguments:[NSArray arrayWithObjects:v16 count:2] launchHandler:v11 reply:v10];
}

- (void)__nextRequest
{
  if (!self->_activeRequest && [(NSMutableArray *)self->_pendingRequests count])
  {
    self->_activeRequest = [-[NSMutableArray firstObject](self->_pendingRequests "firstObject")];
    [(NSMutableArray *)self->_pendingRequests removeObjectAtIndex:0];
    beginGroup = self->_beginGroup;
    if (beginGroup)
    {
      dispatch_release(beginGroup);
    }

    self->_beginGroup = dispatch_group_create();
    endGroup = self->_endGroup;
    if (endGroup)
    {
      dispatch_release(endGroup);
    }

    self->_endGroup = dispatch_group_create();
    [+[NSFileManager defaultManager](NSFileManager createDirectoryAtPath:"createDirectoryAtPath:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:@"/var/run/com.apple.wifivelocity/wifiperf" attributes:0 error:0, 0];
    -[NSFileManager createDirectoryAtPath:withIntermediateDirectories:attributes:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", [@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")}], 0, 0, 0);
    [+[NSFileManager defaultManager](NSFileManager createDirectoryAtPath:"createDirectoryAtPath:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:@"/var/run/com.apple.wifivelocity/wifiperf" attributes:0 error:0, 0];
    v5 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", @"thermtune.csv"}];
    v9[0] = @"--tGraphLogFile";
    v9[1] = v5;
    [NSTask runTaskWithLaunchPath:@"/usr/local/bin/thermtune" arguments:[NSArray arrayWithObjects:v9 count:2] error:0];
    [(W5WiFiPerfLoggingManager *)self __collectWiFiCountersPRE];
    [(W5WiFiPerfLoggingManager *)self __collectNetworkCountersPRE];
    [(W5WiFiPerfLoggingManager *)self __collectWiFiMemoryStatsWithFilename:@"wifi_memory_usage_pre.txt"];
    [(W5WiFiPerfLoggingManager *)self __startPerfLogging];
    if ([-[NSDictionary objectForKeyedSubscript:](-[W5WiFiPerfLoggingRequest configuration](self->_activeRequest "configuration")])
    {
      [(W5WiFiPerfLoggingManager *)self __startP2PPerfLogging];
    }

    queue = self->_queue;
    v6 = self->_beginGroup;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100023AF0;
    v8[3] = &unk_1000E1CE8;
    v8[4] = self;
    dispatch_group_notify(v6, queue, v8);
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

- (void)__collectWiFiMemoryStatsWithFilename:(id)a3
{
  v4 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", a3}];
  [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v4, 0];
  [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:v4 attributes:0, 0];
  v5 = [NSFileHandle fileHandleForUpdatingAtPath:v4];
  if (v5)
  {
    [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v5 readFromStandardError:1 launchPath:@"/usr/local/bin/easyperf" arguments:&off_1000F35B8 addCommand:1 addTimestamps:1];
    [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v5 launchPath:@"/usr/bin/heap" arguments:&off_1000F35D0];
    [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v5 launchPath:@"/usr/bin/vmmap" arguments:&off_1000F35E8];
    [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v5 launchPath:@"/usr/bin/footprint" arguments:&off_1000F3600];
    [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v5 launchPath:@"/usr/bin/zprint" arguments:0];
    [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v5 launchPath:@"/usr/local/bin/jetsam_priority" arguments:&off_1000F3618];
  }

  [(NSFileHandle *)v5 closeFile];
}

- (void)__collectNetworkCountersPRE
{
  v3 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", @"network_counters_pre.txt"}];
  [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v3, 0];
  [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:v3 attributes:0, 0];
  v4 = [NSFileHandle fileHandleForUpdatingAtPath:v3];
  if (v4)
  {
    [NSTask runTaskWithLaunchPath:@"/usr/local/bin/netusage" arguments:&off_1000F3630 error:0];
    [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v4 launchPath:@"/usr/local/bin/netusage" arguments:&off_1000F3648];
    [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v4 launchPath:@"/usr/sbin/netstat" arguments:&off_1000F3660];
    [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v4 launchPath:@"/usr/sbin/netstat" arguments:&off_1000F3678];
    [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v4 launchPath:@"/usr/sbin/netstat" arguments:&off_1000F3690];
    [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v4 launchPath:@"/usr/sbin/netstat" arguments:&off_1000F36A8];
    [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v4 launchPath:@"/usr/sbin/netstat" arguments:&off_1000F36C0];
    [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v4 launchPath:@"/usr/bin/nettop" arguments:&off_1000F36D8];
  }

  [(NSFileHandle *)v4 closeFile];
}

- (void)__collectNetworkCountersPOST
{
  v3 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", @"network_counters_post.txt"}];
  [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v3, 0];
  [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:v3 attributes:0, 0];
  v4 = [NSFileHandle fileHandleForUpdatingAtPath:v3];
  if (v4)
  {
    [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v4 launchPath:@"/usr/local/bin/netusage" arguments:&off_1000F36F0];
    [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v4 launchPath:@"/usr/sbin/netstat" arguments:&off_1000F3708];
    [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v4 launchPath:@"/usr/sbin/netstat" arguments:&off_1000F3720];
    [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v4 launchPath:@"/usr/sbin/netstat" arguments:&off_1000F3738];
    [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v4 launchPath:@"/usr/sbin/netstat" arguments:&off_1000F3750];
    [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v4 launchPath:@"/usr/sbin/netstat" arguments:&off_1000F3768];
    [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v4 launchPath:@"/usr/bin/nettop" arguments:&off_1000F3780];
  }

  [(NSFileHandle *)v4 closeFile];
}

- (void)__collectWiFiCountersPRE
{
  v3 = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName];
  if (v3)
  {
    v4 = v3;
    v5 = [(W5WiFiInterface *)[(W5StatusManager *)self->_status awdl] interfaceName];
    v6 = [(W5WiFiInterface *)[(W5StatusManager *)self->_status nan] interfaceName];
    v7 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", @"wifi_counters_pre.txt"}];
    [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v7, 0];
    [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:v7 attributes:0, 0];
    v8 = [NSFileHandle fileHandleForUpdatingAtPath:v7];
    if (v8)
    {
      v9 = [NSMutableData dataWithCapacity:0];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3798 outputFilePath:0 outputData:v9];
      v10 = [objc_msgSend([NSString alloc] initWithData:v9 encoding:{4), "componentsSeparatedByString:", @" "}];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F37B0 outputFilePath:0 outputData:0];
      if ([v10 containsObject:@"bcntrim"])
      {
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F37C8 outputFilePath:0 outputData:0];
      }

      if ([v10 containsObject:@"ops"])
      {
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F37E0 outputFilePath:0 outputData:0];
      }

      if ([v10 containsObject:@"rsdb"])
      {
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F37F8 outputFilePath:0 outputData:0];
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3810 outputFilePath:0 outputData:0];
        if ([v10 containsObject:@"tdmtx"])
        {
          [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3828 outputFilePath:0 outputData:0];
        }

        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3840 outputFileHandle:v8];
        v11 = &off_1000F3858;
      }

      else
      {
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3870 outputFilePath:0 outputData:0];
        v11 = &off_1000F3888;
      }

      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:v11 outputFileHandle:v8];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F38A0 outputFileHandle:v8];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F38B8 outputFileHandle:v8];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F38D0 outputFileHandle:v8];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F38E8 outputFileHandle:v8];
      v19[0] = v4;
      v19[1] = @"-leaky_ap_stats=0";
      [NSTask runTaskWithLaunchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v19 count:2] error:0];
      v18[0] = v4;
      v18[1] = @"-dbg=getmimops";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v8 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v18 count:2]];
      v17[0] = v4;
      v17[1] = @"-dbg=print_packets";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v8 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v17 count:2]];
      v16[0] = v4;
      v16[1] = @"-dbg=print_peers";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v8 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v16 count:2]];
      v15[0] = v4;
      v15[1] = @"-dbg=m";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v8 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v15 count:2]];
      v14[0] = v4;
      v14[1] = @"-dbg=proptx";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v8 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v14 count:2]];
      if (v5)
      {
        v13[0] = v5;
        v13[1] = @"-dbg=print_peers";
        [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v8 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v13 count:2]];
      }

      if (v6)
      {
        v12[0] = v6;
        v12[1] = @"-dbg=print_peers";
        [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v8 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v12 count:2]];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  [(NSFileHandle *)v8 closeFile];
}

- (void)__collectWiFiCountersPOST
{
  v3 = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName];
  if (!v3)
  {
    v8 = 0;
    goto LABEL_16;
  }

  v4 = v3;
  v5 = [(W5WiFiInterface *)[(W5StatusManager *)self->_status awdl] interfaceName];
  v6 = [(W5WiFiInterface *)[(W5StatusManager *)self->_status nan] interfaceName];
  v7 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", @"wifi_counters_post.txt"}];
  [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v7, 0];
  [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:v7 attributes:0, 0];
  v8 = [NSFileHandle fileHandleForUpdatingAtPath:v7];
  if (v8)
  {
    v9 = [NSMutableData dataWithCapacity:0];
    [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3900 outputFilePath:0 outputData:v9];
    v10 = [objc_msgSend([NSString alloc] initWithData:v9 encoding:{4), "componentsSeparatedByString:", @" "}];
    [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3918 outputFileHandle:v8];
    if ([v10 containsObject:@"rsdb"])
    {
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3930 outputFileHandle:v8];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3948 outputFileHandle:v8];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3960 outputFileHandle:v8];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3978 outputFileHandle:v8];
      if (([v10 containsObject:@"tdmtx"] & 1) == 0)
      {
LABEL_8:
        if ([v10 containsObject:@"bcntrim"])
        {
          [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F39D8 outputFileHandle:v8];
        }

        if ([v10 containsObject:@"ops"])
        {
          [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F39F0 outputFileHandle:v8];
        }

        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3A08 outputFileHandle:v8];
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3A20 outputFileHandle:v8];
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3A38 outputFileHandle:v8];
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3A50 outputFileHandle:v8];
        v19[0] = v4;
        v19[1] = @"-leaky_ap_stats";
        [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v8 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v19 count:2]];
        v18[0] = v4;
        v18[1] = @"-dbg=getmimops";
        [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v8 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v18 count:2]];
        v17[0] = v4;
        v17[1] = @"-dbg=print_packets";
        [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v8 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v17 count:2]];
        v16[0] = v4;
        v16[1] = @"-dbg=print_peers";
        [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v8 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v16 count:2]];
        v15[0] = v4;
        v15[1] = @"-dbg=m";
        [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v8 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v15 count:2]];
        v14[0] = v4;
        v14[1] = @"-dbg=proptx";
        [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v8 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v14 count:2]];
        if (v5)
        {
          v13[0] = v5;
          v13[1] = @"-dbg=print_peers";
          [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v8 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v13 count:2]];
        }

        if (v6)
        {
          v12[0] = v6;
          v12[1] = @"-dbg=print_peers";
          [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v8 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v12 count:2]];
        }

        goto LABEL_16;
      }

      v11 = &off_1000F3990;
    }

    else
    {
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F39A8 outputFileHandle:v8];
      v11 = &off_1000F39C0;
    }

    [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:v11 outputFileHandle:v8];
    goto LABEL_8;
  }

LABEL_16:
  [(NSFileHandle *)v8 closeFile];
}

- (void)__collectWiFiDeviceConfig
{
  v3 = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_msgSend(@"/var/run/com.apple.wifivelocity/wifiperf" stringByAppendingPathComponent:{-[NSUUID UUIDString](-[W5WiFiPerfLoggingRequest uuid](self->_activeRequest, "uuid"), "UUIDString")), "stringByAppendingPathComponent:", @"wifi_device_config.txt"}];
    [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v5, 0];
    [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:v5 attributes:0, 0];
    v6 = [NSFileHandle fileHandleForUpdatingAtPath:v5];
    if (v6)
    {
      v7 = [NSMutableData dataWithCapacity:0];
      v29[0] = v4;
      v29[1] = @"-cardcap";
      [NSTask runTaskWithLaunchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v29 count:2] outputData:v7 error:0];
      v8 = [objc_msgSend([NSString alloc] initWithData:v7 encoding:{4), "componentsSeparatedByString:", @"\n"}];
      [(NSMutableData *)v7 setLength:0];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3A68 outputFilePath:0 outputData:v7];
      v9 = [objc_msgSend([NSString alloc] initWithData:v7 encoding:{4), "componentsSeparatedByString:", @" "}];
      v28[0] = v4;
      v28[1] = @"-driver_ver";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v28 count:2]];
      v27[0] = v4;
      v27[1] = @"-hardware_ver";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v27 count:2]];
      v26[0] = v4;
      v26[1] = @"-ssid";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v26 count:2]];
      v25[0] = v4;
      v25[1] = @"-bssid";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v25 count:2]];
      v24[0] = v4;
      v24[1] = @"-rssi";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v24 count:2]];
      v23[0] = v4;
      v23[1] = @"-noise";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v23 count:2]];
      v22[0] = v4;
      v22[1] = @"-channel";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v22 count:2]];
      v21[0] = v4;
      v21[1] = @"-authtype";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v21 count:2]];
      v20[0] = v4;
      v20[1] = @"-country_code";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v20 count:2]];
      v19[0] = v4;
      v19[1] = @"-rateset";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v19 count:2]];
      v18[0] = v4;
      v18[1] = @"-leaky_ap_stats_mode";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v18 count:2]];
      v17[0] = v4;
      v17[1] = @"-cardcap";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v17 count:2]];
      v16[0] = v4;
      v16[1] = @"-dbg=mimopsstatus";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v16 count:2]];
      if ([v8 containsObject:@"roam"])
      {
        v15[0] = v4;
        v15[1] = @"-dbg=print-roam";
        [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v15 count:2]];
      }

      if ([v8 containsObject:@"ocl"])
      {
        v14[0] = v4;
        v14[1] = @"-dbg=ocl_status";
        [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v14 count:2]];
        v13[0] = v4;
        v13[1] = @"-dbg=ocl_rssi_threshold";
        [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v13 count:2]];
      }

      if ([v8 containsObject:@"awdl"])
      {
        [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:&off_1000F3A80];
      }

      if ([v8 containsObject:@"timesync"])
      {
        [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:&off_1000F3A98];
      }

      v12[0] = v4;
      v12[1] = @"-dbg=bgscan-private-mac";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v12 count:2]];
      v11[0] = v4;
      v11[1] = @"-dbg=dtim";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v11 count:2]];
      v10[0] = v4;
      v10[1] = @"-dbg=private-mac";
      [(W5WiFiPerfLoggingManager *)self __runToolWithOutputFileHandle:v6 launchPath:@"/usr/local/bin/apple80211" arguments:[NSArray arrayWithObjects:v10 count:2]];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3AB0 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3AC8 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3AE0 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3AF8 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3B10 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3B28 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3B40 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3B58 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3B70 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3B88 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3BA0 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3BB8 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3BD0 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3BE8 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3C00 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3C18 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3C30 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3C48 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3C60 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3C78 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3C90 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3CA8 outputFileHandle:v6];
      if ([v9 containsObject:@"ampdu"])
      {
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3CC0 outputFileHandle:v6];
      }

      if ([v9 containsObject:@"amsdu"])
      {
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3CD8 outputFileHandle:v6];
      }

      if ([v9 containsObject:@"ocl"])
      {
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3CF0 outputFileHandle:v6];
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3D08 outputFileHandle:v6];
      }

      if ([v9 containsObject:@"txcap"])
      {
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3D20 outputFileHandle:v6];
      }

      if ([v9 containsObject:@"mim_ps"])
      {
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3D38 outputFileHandle:v6];
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3D50 outputFileHandle:v6];
      }

      if ([v9 containsObject:@"ops"])
      {
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3D68 outputFileHandle:v6];
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3D80 outputFileHandle:v6];
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3D98 outputFileHandle:v6];
      }

      if ([v9 containsObject:@"nap"])
      {
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3DB0 outputFileHandle:v6];
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3DC8 outputFileHandle:v6];
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3DE0 outputFileHandle:v6];
      }

      if ([v9 containsObject:@"bcntrim"])
      {
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3DF8 outputFileHandle:v6];
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3E10 outputFileHandle:v6];
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3E28 outputFileHandle:v6];
      }

      if ([v9 containsObject:@"rsdb"])
      {
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3E40 outputFileHandle:v6];
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3E58 outputFileHandle:v6];
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3E70 outputFileHandle:v6];
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3E88 outputFileHandle:v6];
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3EA0 outputFileHandle:v6];
        if ([v9 containsObject:@"tdmtx"])
        {
          [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3EB8 outputFileHandle:v6];
          [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3ED0 outputFileHandle:v6];
        }
      }

      if ([v9 containsObject:@"tvpm"])
      {
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3EE8 outputFileHandle:v6];
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3F00 outputFileHandle:v6];
        [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3F18 outputFileHandle:v6];
      }

      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3F30 outputFileHandle:v6];
      [(W5WiFiPerfLoggingManager *)self __wlCLIWithArguments:&off_1000F3F48 outputFileHandle:v6];
    }
  }

  else
  {
    v6 = 0;
  }

  [(NSFileHandle *)v6 closeFile];
}

- (void)__cancelActiveRequestAndReply:(id)a3
{
  if (self->_activeRequest)
  {
    coreCaptureTriggerTimer = self->_coreCaptureTriggerTimer;
    if (coreCaptureTriggerTimer)
    {
      dispatch_source_cancel(coreCaptureTriggerTimer);
      dispatch_release(self->_coreCaptureTriggerTimer);
      self->_coreCaptureTriggerTimer = 0;
    }

    awdlQueryTimer = self->_awdlQueryTimer;
    if (awdlQueryTimer)
    {
      dispatch_source_cancel(awdlQueryTimer);
      dispatch_release(self->_awdlQueryTimer);
      self->_awdlQueryTimer = 0;
    }

    nanQueryTimer = self->_nanQueryTimer;
    if (nanQueryTimer)
    {
      dispatch_source_cancel(nanQueryTimer);
      dispatch_release(self->_nanQueryTimer);
      self->_nanQueryTimer = 0;
    }

    [NSTask runTaskWithLaunchPath:@"/usr/local/bin/thermtune" arguments:&off_1000F3F60 error:0];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    runningTasks = self->_runningTasks;
    v9 = [(NSMutableArray *)runningTasks countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(runningTasks);
          }

          kill([*(*(&v17 + 1) + 8 * i) processIdentifier], 9);
        }

        v10 = [(NSMutableArray *)runningTasks countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [(NSMutableArray *)self->_runningTasks removeAllObjects];
    [(W5WiFiPerfLoggingManager *)self __collectWiFiCountersPOST];
    [(W5WiFiPerfLoggingManager *)self __collectNetworkCountersPOST];
    [(W5WiFiPerfLoggingManager *)self __collectWiFiMemoryStatsWithFilename:@"wifi_memory_usage_post.txt"];
    [(W5WiFiPerfLoggingManager *)self __collectWiFiDeviceConfig];
    endGroup = self->_endGroup;
    queue = self->_queue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100025E30;
    v16[3] = &unk_1000E1C70;
    v16[4] = self;
    v16[5] = a3;
    dispatch_group_notify(endGroup, queue, v16);
  }

  else
  {
    [(W5WiFiPerfLoggingManager *)self __nextRequest];
    if (a3)
    {
      v15 = *(a3 + 2);

      v15(a3, 0);
    }
  }
}

@end