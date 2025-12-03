@interface W5DebugManager
+ (BOOL)__getEAPOLDebugFlagsEnabled;
+ (BOOL)__setEAPOLDebugFlagsEnabled:(BOOL)enabled error:(id *)error;
+ (id)__valueForKey:(id)key domain:(id)domain;
+ (void)__bluetoothLoggingEnabledWithQueue:(id)queue reply:(id)reply;
+ (void)__dnsLoggingEnabledWithQueue:(id)queue reply:(id)reply;
+ (void)__eapolLoggingEnabledWithQueue:(id)queue reply:(id)reply;
+ (void)__ios__setWiFiLoggingEnabled:(BOOL)enabled queue:(id)queue reply:(id)reply;
+ (void)__ios_wifiLoggingEnabledWithQueue:(id)queue reply:(id)reply;
+ (void)__mostRecentLogWithSuffix:(id)suffix logPath:(id)path queue:(id)queue reply:(id)reply;
+ (void)__openDirectoryLoggingEnabledWithQueue:(id)queue reply:(id)reply;
+ (void)__setAirPlayLoggingEnabled:(BOOL)enabled queue:(id)queue reply:(id)reply;
+ (void)__setDHCPLoggingEnabled:(BOOL)enabled queue:(id)queue reply:(id)reply;
+ (void)__setDNSLoggingEnabled:(BOOL)enabled queue:(id)queue reply:(id)reply;
+ (void)__setEAPOLLoggingEnabled:(BOOL)enabled queue:(id)queue reply:(id)reply;
+ (void)__setOpenDirectoryLoggingEnabled:(BOOL)enabled queue:(id)queue reply:(id)reply;
+ (void)__setValue:(id)value key:(id)key domain:(id)domain;
+ (void)setOSLogPreferenceLevel:(id)level enableOvserizeMessages:(BOOL)messages subsystem:(id)subsystem;
- (W5DebugManager)initWithDiagnosticsModeManager:(id)manager statusManager:(id)statusManager;
- (id)queryDebugConfigurationAndReturnError:(id *)error;
- (void)__queryMegaWiFiProfileInstalledAndReply:(id)reply;
- (void)__queryNoLoggingWiFiProfileInstalledAndReply:(id)reply;
- (void)__setMegaWiFiProfileInstalled:(BOOL)installed reply:(id)reply;
- (void)__setNoLoggingWiFiProfileInstalled:(BOOL)installed reply:(id)reply;
- (void)dealloc;
- (void)queryDebugConfigurationAndReply:(id)reply;
- (void)queryDiagnosticsModeAndReply:(id)reply;
- (void)querySTBCAndReply:(id)reply;
- (void)setDebugConfiguration:(id)configuration reply:(id)reply;
- (void)setDiagnosticsMode:(id)mode reply:(id)reply;
- (void)setSTBCEnabled:(BOOL)enabled reply:(id)reply;
@end

@implementation W5DebugManager

- (W5DebugManager)initWithDiagnosticsModeManager:(id)manager statusManager:(id)statusManager
{
  v9.receiver = self;
  v9.super_class = W5DebugManager;
  v6 = [(W5DebugManager *)&v9 init];
  if (v6 && (v7 = dispatch_queue_create("com.apple.wifivelocity.debug", 0), (v6->_queue = v7) != 0) && (v6->_diagnosticsModeManager = manager) != 0)
  {
    v6->_statusManager = statusManager;
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

- (void)queryDebugConfigurationAndReply:(id)reply
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100038AD8;
  v4[3] = &unk_1000E1C70;
  v4[4] = self;
  v4[5] = reply;
  dispatch_async(queue, v4);
}

- (id)queryDebugConfigurationAndReturnError:(id *)error
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
  if (error)
  {
    v9 = v14[5];
    if (v9)
    {
      *error = v9;
    }
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

- (void)setDebugConfiguration:(id)configuration reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000398F4;
  block[3] = &unk_1000E1CC0;
  block[4] = configuration;
  block[5] = self;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)querySTBCAndReply:(id)reply
{
  if (reply)
  {
    (*(reply + 2))(reply, 0, 0);
  }
}

- (void)setSTBCEnabled:(BOOL)enabled reply:(id)reply
{
  if (reply)
  {
    (*(reply + 2))(reply, 0);
  }
}

- (void)queryDiagnosticsModeAndReply:(id)reply
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003A424;
  v6[3] = &unk_1000E1C70;
  v6[4] = self;
  v6[5] = reply;
  dispatch_async(global_queue, v6);
}

- (void)setDiagnosticsMode:(id)mode reply:(id)reply
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A530;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = mode;
  block[6] = reply;
  dispatch_async(global_queue, block);
}

+ (void)setOSLogPreferenceLevel:(id)level enableOvserizeMessages:(BOOL)messages subsystem:(id)subsystem
{
  messagesCopy = messages;
  v7 = [NSURL fileURLWithPath:[NSString stringWithFormat:@"/Library/Preferences/Logging/Subsystems/%@.plist" isDirectory:subsystem], 0];
  v8 = +[NSMutableDictionary dictionary];
  [v8 setDictionary:{+[NSDictionary dictionaryWithContentsOfURL:](NSDictionary, "dictionaryWithContentsOfURL:", v7)}];
  v9 = +[NSMutableDictionary dictionary];
  [v9 setDictionary:{objc_msgSend(v8, "objectForKeyedSubscript:", @"DEFAULT-OPTIONS"}];
  v10 = +[NSMutableDictionary dictionary];
  [v10 setDictionary:{objc_msgSend(v8, "objectForKeyedSubscript:", @"Level"}];
  [v10 setObject:level forKeyedSubscript:@"Enable"];
  [v10 setObject:level forKeyedSubscript:@"Persist"];
  v11 = &kCFBooleanTrue;
  if (!messagesCopy)
  {
    v11 = &kCFBooleanFalse;
  }

  [v9 setObject:*v11 forKeyedSubscript:@"Enable-Oversize-Messages"];
  [v9 setObject:v10 forKeyedSubscript:@"Level"];
  [v8 setObject:v9 forKeyedSubscript:@"DEFAULT-OPTIONS"];

  [v8 writeToURL:v7 atomically:1];
}

+ (void)__ios_wifiLoggingEnabledWithQueue:(id)queue reply:(id)reply
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A8A0;
  block[3] = &unk_1000E2248;
  block[4] = reply;
  dispatch_async(global_queue, block);
}

+ (void)__ios__setWiFiLoggingEnabled:(BOOL)enabled queue:(id)queue reply:(id)reply
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003AA44;
  block[3] = &unk_1000E2620;
  enabledCopy = enabled;
  block[4] = self;
  block[5] = reply;
  dispatch_async(global_queue, block);
}

+ (BOOL)__setEAPOLDebugFlagsEnabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  v6 = SCPreferencesCreate(kCFAllocatorDefault, [+[NSProcessInfo processName] processInfo];
  v7 = v6;
  if (v6 && SCPreferencesLock(v6, 1u))
  {
    if (SCPreferencesSetValue(v7, @"LogFlags", [NSNumber numberWithInt:(enabledCopy << 31 >> 31)]) && SCPreferencesCommitChanges(v7) && SCPreferencesApplyChanges(v7))
    {
      v8 = 0;
    }

    else
    {
      v8 = SCError();
    }

    SCPreferencesUnlock(v7);
    if (!error)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = SCError();
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if (v8)
  {
    v10 = NSLocalizedFailureReasonErrorKey;
    v11 = @"err";
    *error = [NSError errorWithDomain:kCFErrorDomainSystemConfiguration code:v8 userInfo:[NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1]];
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

+ (void)__eapolLoggingEnabledWithQueue:(id)queue reply:(id)reply
{
  global_queue = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003AE08;
  v7[3] = &unk_1000E1C70;
  v7[4] = self;
  v7[5] = reply;
  dispatch_async(global_queue, v7);
}

+ (void)__setEAPOLLoggingEnabled:(BOOL)enabled queue:(id)queue reply:(id)reply
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003AF50;
  block[3] = &unk_1000E2620;
  enabledCopy = enabled;
  block[4] = self;
  block[5] = reply;
  dispatch_async(global_queue, block);
}

+ (void)__dnsLoggingEnabledWithQueue:(id)queue reply:(id)reply
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B0E0;
  block[3] = &unk_1000E2248;
  block[4] = reply;
  dispatch_async(global_queue, block);
}

+ (void)__setDNSLoggingEnabled:(BOOL)enabled queue:(id)queue reply:(id)reply
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003B320;
  v5[3] = &unk_1000E2648;
  enabledCopy = enabled;
  v5[4] = self;
  v5[5] = queue;
  v5[6] = reply;
  [self __dnsLoggingEnabledWithQueue:queue reply:v5];
}

+ (void)__setDHCPLoggingEnabled:(BOOL)enabled queue:(id)queue reply:(id)reply
{
  if (enabled)
  {
    v6 = "IPConfiguration: verbose mode enabled";
  }

  else
  {
    v6 = "IPConfiguration: verbose mode disabled";
  }

  if (enabled)
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
  [NSTask runTaskWithLaunchPath:@"/usr/sbin/ipconfig" arguments:[NSArray arrayWithObjects:v8 count:2] reply:reply];
}

+ (void)__mostRecentLogWithSuffix:(id)suffix logPath:(id)path queue:(id)queue reply:(id)reply
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0x7FFFFFFFFFFFFFFFLL;
  v9 = [NSMutableData data:suffix];
  v10 = dispatch_io_create_with_path(0, [path UTF8String], 0, 0, &_dispatch_main_q, &stru_1000E2688);
  dispatch_io_set_high_water(v10, 0x3E8uLL);
  io_handler[0] = _NSConcreteStackBlock;
  io_handler[1] = 3221225472;
  io_handler[2] = sub_10003B5D0;
  io_handler[3] = &unk_1000E26B0;
  io_handler[7] = reply;
  io_handler[8] = v12;
  io_handler[4] = v10;
  io_handler[5] = v9;
  io_handler[6] = suffix;
  dispatch_io_read(v10, 0, 0xFFFFFFFFFFFFFFFFLL, &_dispatch_main_q, io_handler);
  _Block_object_dispose(v12, 8);
}

+ (void)__openDirectoryLoggingEnabledWithQueue:(id)queue reply:(id)reply
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003B870;
  v4[3] = &unk_1000E26D8;
  v4[4] = queue;
  v4[5] = reply;
  [W5DebugManager __mostRecentLogWithSuffix:&off_1000F3F90 logPath:@"/var/log/opendirectoryd.log" queue:queue reply:v4];
}

+ (void)__setOpenDirectoryLoggingEnabled:(BOOL)enabled queue:(id)queue reply:(id)reply
{
  v8 = @"set";
  v9 = @"log";
  if (enabled)
  {
    v6 = @"debug";
  }

  else
  {
    v6 = @"off";
  }

  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v8 count:3];
  [NSTask runTaskWithLaunchPath:@"/usr/bin/odutil" arguments:v7 reply:reply, v8, v9];
}

+ (id)__valueForKey:(id)key domain:(id)domain
{
  result = CFPreferencesCopyAppValue(key, domain);
  if (result)
  {

    return result;
  }

  return result;
}

+ (void)__setValue:(id)value key:(id)key domain:(id)domain
{
  CFPreferencesSetAppValue(key, value, domain);

  CFPreferencesAppSynchronize(domain);
}

+ (void)__bluetoothLoggingEnabledWithQueue:(id)queue reply:(id)reply
{
  v6 = [objc_msgSend(self __valueForKey:@"ShouldLog" domain:{@"com.apple.wirelessproxd.debug", "BOOLValue"}];
  v7 = [objc_msgSend(self __valueForKey:@"DiagnosticMode" domain:{@"com.apple.MobileBluetooth.debug", "BOOLValue"}];
  v8 = [objc_msgSend(self __valueForKey:@"DefaultLevel" domain:{@"com.apple.MobileBluetooth.debug", "isEqualToString:", @"Info"}];
  v9 = [objc_msgSend(self __valueForKey:@"HCITraces" domain:{@"com.apple.MobileBluetooth.debug", "objectForKey:", @"StackDebugEnabled"}];
  if (v9)
  {
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v11 = [objc_msgSend(objc_msgSend(self __valueForKey:@"LE" domain:{@"com.apple.MobileBluetooth.debug", "objectForKey:", @"DebugLevel", "isEqualToString:", @"Info"}];
  if (reply)
  {
    v12 = *(reply + 2);

    v12(reply, 0, v6 & v7 & v8 & bOOLValue & v11);
  }
}

+ (void)__setAirPlayLoggingEnabled:(BOOL)enabled queue:(id)queue reply:(id)reply
{
  if (enabled)
  {
    [W5DebugManager __enableAirPlayLoggingWithQueue:queue reply:reply];
  }

  else
  {
    [W5DebugManager __disableAirPlayLoggingWithQueue:queue reply:reply];
  }
}

- (void)__queryMegaWiFiProfileInstalledAndReply:(id)reply
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C220;
  block[3] = &unk_1000E2248;
  block[4] = reply;
  dispatch_async(global_queue, block);
}

- (void)__setMegaWiFiProfileInstalled:(BOOL)installed reply:(id)reply
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003C3E4;
  v4[3] = &unk_1000E2700;
  installedCopy = installed;
  v4[4] = reply;
  [(W5DebugManager *)self __queryMegaWiFiProfileInstalledAndReply:v4];
}

- (void)__queryNoLoggingWiFiProfileInstalledAndReply:(id)reply
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C5D4;
  block[3] = &unk_1000E2248;
  block[4] = reply;
  dispatch_async(global_queue, block);
}

- (void)__setNoLoggingWiFiProfileInstalled:(BOOL)installed reply:(id)reply
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003C798;
  v4[3] = &unk_1000E2700;
  installedCopy = installed;
  v4[4] = reply;
  [(W5DebugManager *)self __queryNoLoggingWiFiProfileInstalledAndReply:v4];
}

@end