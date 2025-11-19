@interface W5DebugManager
+ (BOOL)__getEAPOLDebugFlagsEnabled;
+ (BOOL)__setEAPOLDebugFlagsEnabled:(BOOL)a3 error:(id *)a4;
+ (id)__valueForKey:(id)a3 domain:(id)a4;
+ (void)__bluetoothLoggingEnabledWithQueue:(id)a3 reply:(id)a4;
+ (void)__dnsLoggingEnabledWithQueue:(id)a3 reply:(id)a4;
+ (void)__eapolLoggingEnabledWithQueue:(id)a3 reply:(id)a4;
+ (void)__ios__setWiFiLoggingEnabled:(BOOL)a3 queue:(id)a4 reply:(id)a5;
+ (void)__ios_wifiLoggingEnabledWithQueue:(id)a3 reply:(id)a4;
+ (void)__mostRecentLogWithSuffix:(id)a3 logPath:(id)a4 queue:(id)a5 reply:(id)a6;
+ (void)__openDirectoryLoggingEnabledWithQueue:(id)a3 reply:(id)a4;
+ (void)__setAirPlayLoggingEnabled:(BOOL)a3 queue:(id)a4 reply:(id)a5;
+ (void)__setDHCPLoggingEnabled:(BOOL)a3 queue:(id)a4 reply:(id)a5;
+ (void)__setDNSLoggingEnabled:(BOOL)a3 queue:(id)a4 reply:(id)a5;
+ (void)__setEAPOLLoggingEnabled:(BOOL)a3 queue:(id)a4 reply:(id)a5;
+ (void)__setOpenDirectoryLoggingEnabled:(BOOL)a3 queue:(id)a4 reply:(id)a5;
+ (void)__setValue:(id)a3 key:(id)a4 domain:(id)a5;
+ (void)setOSLogPreferenceLevel:(id)a3 enableOvserizeMessages:(BOOL)a4 subsystem:(id)a5;
- (W5DebugManager)initWithDiagnosticsModeManager:(id)a3 statusManager:(id)a4;
- (id)queryDebugConfigurationAndReturnError:(id *)a3;
- (void)__queryMegaWiFiProfileInstalledAndReply:(id)a3;
- (void)__queryNoLoggingWiFiProfileInstalledAndReply:(id)a3;
- (void)__setMegaWiFiProfileInstalled:(BOOL)a3 reply:(id)a4;
- (void)__setNoLoggingWiFiProfileInstalled:(BOOL)a3 reply:(id)a4;
- (void)dealloc;
- (void)queryDebugConfigurationAndReply:(id)a3;
- (void)queryDiagnosticsModeAndReply:(id)a3;
- (void)querySTBCAndReply:(id)a3;
- (void)setDebugConfiguration:(id)a3 reply:(id)a4;
- (void)setDiagnosticsMode:(id)a3 reply:(id)a4;
- (void)setSTBCEnabled:(BOOL)a3 reply:(id)a4;
@end

@implementation W5DebugManager

- (W5DebugManager)initWithDiagnosticsModeManager:(id)a3 statusManager:(id)a4
{
  v9.receiver = self;
  v9.super_class = W5DebugManager;
  v6 = [(W5DebugManager *)&v9 init];
  if (v6 && (v7 = dispatch_queue_create("com.apple.wifivelocity.debug", 0), (v6->_queue = v7) != 0) && (v6->_diagnosticsModeManager = a3) != 0)
  {
    v6->_statusManager = a4;
  }

  else
  {

    return 0;
  }

  return v6;
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  v4.receiver = self;
  v4.super_class = W5DebugManager;
  [(W5DebugManager *)&v4 dealloc];
}

- (void)queryDebugConfigurationAndReply:(id)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100038AD8;
  v4[3] = &unk_1000E1C70;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (id)queryDebugConfigurationAndReturnError:(id *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = sub_100039368;
  v23 = sub_100039378;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = sub_100039368;
  v17 = sub_100039378;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003981C;
  v12[3] = &unk_1000E25D0;
  v12[5] = &v13;
  v12[6] = &v19;
  v12[4] = v5;
  [(W5DebugManager *)self queryDebugConfigurationAndReply:v12];
  v6 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v5, v6) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v26 = 0x4010000000000000;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v7 = v14[5];
  v8 = v20[5];
  if (a3)
  {
    v9 = v14[5];
    if (v9)
    {
      *a3 = v9;
    }
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

- (void)setDebugConfiguration:(id)a3 reply:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000398F4;
  block[3] = &unk_1000E1CC0;
  block[4] = a3;
  block[5] = self;
  block[6] = a4;
  dispatch_async(queue, block);
}

- (void)querySTBCAndReply:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0, 0);
  }
}

- (void)setSTBCEnabled:(BOOL)a3 reply:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (void)queryDiagnosticsModeAndReply:(id)a3
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003A424;
  v6[3] = &unk_1000E1C70;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(global_queue, v6);
}

- (void)setDiagnosticsMode:(id)a3 reply:(id)a4
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A530;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(global_queue, block);
}

+ (void)setOSLogPreferenceLevel:(id)a3 enableOvserizeMessages:(BOOL)a4 subsystem:(id)a5
{
  v5 = a4;
  v7 = [NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Preferences/Logging/Subsystems/%@.plist" isDirectory:a5], 0];
  v8 = +[NSMutableDictionary dictionary];
  [v8 setDictionary:{+[NSDictionary dictionaryWithContentsOfURL:](NSDictionary, "dictionaryWithContentsOfURL:", v7)}];
  v9 = +[NSMutableDictionary dictionary];
  [v9 setDictionary:{objc_msgSend(v8, "objectForKeyedSubscript:", @"DEFAULT-OPTIONS"}];
  v10 = +[NSMutableDictionary dictionary];
  [v10 setDictionary:{objc_msgSend(v8, "objectForKeyedSubscript:", @"Level"}];
  [v10 setObject:a3 forKeyedSubscript:@"Enable"];
  [v10 setObject:a3 forKeyedSubscript:@"Persist"];
  v11 = &kCFBooleanTrue;
  if (!v5)
  {
    v11 = &kCFBooleanFalse;
  }

  [v9 setObject:*v11 forKeyedSubscript:@"Enable-Oversize-Messages"];
  [v9 setObject:v10 forKeyedSubscript:@"Level"];
  [v8 setObject:v9 forKeyedSubscript:@"DEFAULT-OPTIONS"];

  [v8 writeToURL:v7 atomically:1];
}

+ (void)__ios_wifiLoggingEnabledWithQueue:(id)a3 reply:(id)a4
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A8A0;
  block[3] = &unk_1000E2248;
  block[4] = a4;
  dispatch_async(global_queue, block);
}

+ (void)__ios__setWiFiLoggingEnabled:(BOOL)a3 queue:(id)a4 reply:(id)a5
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003AA44;
  block[3] = &unk_1000E2620;
  v10 = a3;
  block[4] = a1;
  block[5] = a5;
  dispatch_async(global_queue, block);
}

+ (BOOL)__setEAPOLDebugFlagsEnabled:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v6 = SCPreferencesCreate(kCFAllocatorDefault, [+[NSProcessInfo processName] processInfo];
  v7 = v6;
  if (v6 && SCPreferencesLock(v6, 1u))
  {
    if (SCPreferencesSetValue(v7, @"LogFlags", [NSNumber numberWithInt:(v5 << 31 >> 31)]) && SCPreferencesCommitChanges(v7) && SCPreferencesApplyChanges(v7))
    {
      v8 = 0;
    }

    else
    {
      v8 = SCError();
    }

    SCPreferencesUnlock(v7);
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = SCError();
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  if (v8)
  {
    v10 = NSLocalizedFailureReasonErrorKey;
    v11 = @"err";
    *a4 = [NSError errorWithDomain:kCFErrorDomainSystemConfiguration code:v8 userInfo:[NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1]];
  }

LABEL_10:
  if (v7)
  {
    CFRelease(v7);
  }

  return v8 == 0;
}

+ (BOOL)__getEAPOLDebugFlagsEnabled
{
  v2 = SCPreferencesCreate(kCFAllocatorDefault, [+[NSProcessInfo processName] processInfo];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [SCPreferencesGetValue(v2 @"LogFlags")] == -1;
  CFRelease(v3);
  return v4;
}

+ (void)__eapolLoggingEnabledWithQueue:(id)a3 reply:(id)a4
{
  global_queue = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003AE08;
  v7[3] = &unk_1000E1C70;
  v7[4] = a1;
  v7[5] = a4;
  dispatch_async(global_queue, v7);
}

+ (void)__setEAPOLLoggingEnabled:(BOOL)a3 queue:(id)a4 reply:(id)a5
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003AF50;
  block[3] = &unk_1000E2620;
  v10 = a3;
  block[4] = a1;
  block[5] = a5;
  dispatch_async(global_queue, block);
}

+ (void)__dnsLoggingEnabledWithQueue:(id)a3 reply:(id)a4
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B0E0;
  block[3] = &unk_1000E2248;
  block[4] = a4;
  dispatch_async(global_queue, block);
}

+ (void)__setDNSLoggingEnabled:(BOOL)a3 queue:(id)a4 reply:(id)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003B320;
  v5[3] = &unk_1000E2648;
  v6 = a3;
  v5[4] = a1;
  v5[5] = a4;
  v5[6] = a5;
  [a1 __dnsLoggingEnabledWithQueue:a4 reply:v5];
}

+ (void)__setDHCPLoggingEnabled:(BOOL)a3 queue:(id)a4 reply:(id)a5
{
  if (a3)
  {
    v6 = "IPConfiguration: verbose mode enabled";
  }

  else
  {
    v6 = "IPConfiguration: verbose mode disabled";
  }

  if (a3)
  {
    v7 = @"1";
  }

  else
  {
    v7 = @"0";
  }

  syslog(2, v6);
  v8[0] = @"setverbose";
  v8[1] = v7;
  [NSTask runTaskWithLaunchPath:@"/usr/sbin/ipconfig" arguments:[NSArray arrayWithObjects:v8 count:2] reply:a5];
}

+ (void)__mostRecentLogWithSuffix:(id)a3 logPath:(id)a4 queue:(id)a5 reply:(id)a6
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0x7FFFFFFFFFFFFFFFLL;
  v9 = [NSMutableData data:a3];
  v10 = dispatch_io_create_with_path(0, [a4 UTF8String], 0, 0, &_dispatch_main_q, &stru_1000E2688);
  dispatch_io_set_high_water(v10, 0x3E8uLL);
  io_handler[0] = _NSConcreteStackBlock;
  io_handler[1] = 3221225472;
  io_handler[2] = sub_10003B5D0;
  io_handler[3] = &unk_1000E26B0;
  io_handler[7] = a6;
  io_handler[8] = v12;
  io_handler[4] = v10;
  io_handler[5] = v9;
  io_handler[6] = a3;
  dispatch_io_read(v10, 0, 0xFFFFFFFFFFFFFFFFLL, &_dispatch_main_q, io_handler);
  _Block_object_dispose(v12, 8);
}

+ (void)__openDirectoryLoggingEnabledWithQueue:(id)a3 reply:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003B870;
  v4[3] = &unk_1000E26D8;
  v4[4] = a3;
  v4[5] = a4;
  [W5DebugManager __mostRecentLogWithSuffix:&off_1000F3F90 logPath:@"/var/log/opendirectoryd.log" queue:a3 reply:v4];
}

+ (void)__setOpenDirectoryLoggingEnabled:(BOOL)a3 queue:(id)a4 reply:(id)a5
{
  v8 = @"set";
  v9 = @"log";
  if (a3)
  {
    v6 = @"debug";
  }

  else
  {
    v6 = @"off";
  }

  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v8 count:3];
  [NSTask runTaskWithLaunchPath:@"/usr/bin/odutil" arguments:v7 reply:a5, v8, v9];
}

+ (id)__valueForKey:(id)a3 domain:(id)a4
{
  result = CFPreferencesCopyAppValue(a3, a4);
  if (result)
  {

    return result;
  }

  return result;
}

+ (void)__setValue:(id)a3 key:(id)a4 domain:(id)a5
{
  CFPreferencesSetAppValue(a4, a3, a5);

  CFPreferencesAppSynchronize(a5);
}

+ (void)__bluetoothLoggingEnabledWithQueue:(id)a3 reply:(id)a4
{
  v6 = [objc_msgSend(a1 __valueForKey:@"ShouldLog" domain:{@"com.apple.wirelessproxd.debug", "BOOLValue"}];
  v7 = [objc_msgSend(a1 __valueForKey:@"DiagnosticMode" domain:{@"com.apple.MobileBluetooth.debug", "BOOLValue"}];
  v8 = [objc_msgSend(a1 __valueForKey:@"DefaultLevel" domain:{@"com.apple.MobileBluetooth.debug", "isEqualToString:", @"Info"}];
  v9 = [objc_msgSend(a1 __valueForKey:@"HCITraces" domain:{@"com.apple.MobileBluetooth.debug", "objectForKey:", @"StackDebugEnabled"}];
  if (v9)
  {
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_msgSend(objc_msgSend(a1 __valueForKey:@"LE" domain:{@"com.apple.MobileBluetooth.debug", "objectForKey:", @"DebugLevel", "isEqualToString:", @"Info"}];
  if (a4)
  {
    v12 = *(a4 + 2);

    v12(a4, 0, v6 & v7 & v8 & v10 & v11);
  }
}

+ (void)__setAirPlayLoggingEnabled:(BOOL)a3 queue:(id)a4 reply:(id)a5
{
  if (a3)
  {
    [W5DebugManager __enableAirPlayLoggingWithQueue:a4 reply:a5];
  }

  else
  {
    [W5DebugManager __disableAirPlayLoggingWithQueue:a4 reply:a5];
  }
}

- (void)__queryMegaWiFiProfileInstalledAndReply:(id)a3
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C220;
  block[3] = &unk_1000E2248;
  block[4] = a3;
  dispatch_async(global_queue, block);
}

- (void)__setMegaWiFiProfileInstalled:(BOOL)a3 reply:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003C3E4;
  v4[3] = &unk_1000E2700;
  v5 = a3;
  v4[4] = a4;
  [(W5DebugManager *)self __queryMegaWiFiProfileInstalledAndReply:v4];
}

- (void)__queryNoLoggingWiFiProfileInstalledAndReply:(id)a3
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C5D4;
  block[3] = &unk_1000E2248;
  block[4] = a3;
  dispatch_async(global_queue, block);
}

- (void)__setNoLoggingWiFiProfileInstalled:(BOOL)a3 reply:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003C798;
  v4[3] = &unk_1000E2700;
  v5 = a3;
  v4[4] = a4;
  [(W5DebugManager *)self __queryNoLoggingWiFiProfileInstalledAndReply:v4];
}

@end