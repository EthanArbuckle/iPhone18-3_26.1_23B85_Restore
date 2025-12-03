@interface HTProcessInfo
+ (BOOL)isAnyThirdPartyDeveloperProcessForeground;
+ (BOOL)shouldSaveFenceHangLogs;
+ (id)displayStateArray;
+ (id)processForPid:(int)pid;
+ (id)recentAppsDict;
+ (unint64_t)getEarliestPendingHangStartTime:(unint64_t)time;
+ (void)addDisplayStateChangeEvent:(DisplayStateChangeEvent)event;
+ (void)checkForHUDTimeouts:(unint64_t)timeouts;
+ (void)checkForHangTimeouts:(unint64_t)timeouts;
+ (void)initialize;
+ (void)recordFenceHang:(id)hang startTime:(unint64_t)time endTime:(unint64_t)endTime reportedTime:(unint64_t)reportedTime blownFenceId:(unint64_t)id saveTailspin:(BOOL)tailspin subtype:(int64_t)subtype isThirdPartyDevSupportModeHang:(BOOL)self0 captureMicroHang:(BOOL)self1;
+ (void)stopWatchingAllPids;
+ (void)stopWatchingPid:(int)pid;
- (BOOL)checkShouldSaveHangLogs;
- (BOOL)isDeveloperApp;
- (BOOL)isInForeground;
- (BOOL)isThirdPartyDevSupportModeHang;
- (BOOL)shouldDisplayNonFenceHangToHUD;
- (BOOL)startTimeWithinMS:(unint64_t)s ofCurrentTime:(unint64_t)time;
- (HTProcessInfo)initWithPid:(int)pid sharedMem:(void *)mem length:(unint64_t)length bundleID:(const char *)d;
- (id)checkEventsForTimeouts:(unint64_t)timeouts withType:(int64_t)type;
- (id)getApplicationByBundleId:(id)id;
- (unint64_t)getHangStartTime:(unint64_t)time;
- (void)checkEventsForHUDUpdate:(unint64_t)update;
- (void)dealloc;
- (void)recordHang:(id)hang threadID:(unint64_t)d startTime:(unint64_t)time endTime:(unint64_t)endTime saveTailspin:(BOOL)tailspin subtype:(int64_t)subtype userActionData:(id)data isThirdPartyDevSupportModeHang:(BOOL)self0 captureMicroHang:(BOOL)self1 recentStateInfo:(id)self2;
@end

@implementation HTProcessInfo

- (BOOL)isThirdPartyDevSupportModeHang
{
  v3 = +[HTPrefs sharedPrefs];
  if ([v3 thirdPartyDevHangHUDEnabled])
  {
    isDeveloperApp = [(HTProcessInfo *)self isDeveloperApp];
  }

  else
  {
    isDeveloperApp = 0;
  }

  return isDeveloperApp;
}

- (BOOL)checkShouldSaveHangLogs
{
  if (self->shouldDisableProcess)
  {
    LOBYTE(hangtracerDaemonEnabled) = 0;
  }

  else
  {
    v4 = +[HTPrefs sharedPrefs];
    isInternal = [v4 isInternal];

    if (isInternal)
    {
      LOBYTE(hangtracerDaemonEnabled) = 1;
    }

    else
    {
      v6 = +[HTPrefs sharedPrefs];
      v12 = 0;
      v7 = [v6 getHighestPrioritySettingValue:@"HangTracerEnabled" matchingSelector:"BOOLValue" contextPrefixOut:&v12];
      v8 = v12;

      if (v7)
      {
        if ([v8 isEqualToString:@"HTThirdPartyDevSupport"] && !-[HTProcessInfo isDeveloperApp](self, "isDeveloperApp"))
        {
          LOBYTE(hangtracerDaemonEnabled) = 0;
        }

        else
        {
          LOBYTE(hangtracerDaemonEnabled) = [v7 BOOLValue];
        }
      }

      else
      {
        v9 = +[HTPrefs sharedPrefs];
        hangtracerDaemonEnabled = [v9 hangtracerDaemonEnabled];

        v10 = sub_100003824();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v14 = hangtracerDaemonEnabled;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No overriden settings found to be enabling or disabling hangtracing. Using default of %{BOOL}d.", buf, 8u);
        }
      }
    }
  }

  return hangtracerDaemonEnabled;
}

+ (void)initialize
{
  qword_100067AA0 = objc_alloc_init(NSMutableArray);

  _objc_release_x1();
}

+ (void)addDisplayStateChangeEvent:(DisplayStateChangeEvent)event
{
  v3 = dword_100067B48;
  *(&unk_100067AA8 + dword_100067B48) = event;
  dword_100067B48 = (v3 + 1) % 0xAu;
}

+ (void)checkForHangTimeouts:(unint64_t)timeouts
{
  os_unfair_lock_lock(&stru_100067B4C);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = qword_100067AA0;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) checkEventsForTimeouts:timeouts withType:{2, v13}];
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  os_unfair_lock_unlock(&stru_100067B4C);
  if (v10)
  {
    v11 = sub_100003824();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      serviceName = [v10 serviceName];
      *buf = 138412290;
      v18 = serviceName;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Hang for service name %@ timed out, recording", buf, 0xCu);
    }

    [v10 recordHang];
  }
}

- (unint64_t)getHangStartTime:(unint64_t)time
{
  shmem_region = self->shmem_region;
  if (!shmem_region->var1)
  {
    return -1;
  }

  v6 = 0;
  v7 = -1;
  v8 = 380;
  do
  {
    if (!atomic_load((shmem_region + v8 - 348)) && (*(&shmem_region->var0 + v8) & 1) == 0)
    {
      v10 = *(shmem_region + v8 - 372);
      if (time > v10 && sub_1000024F8(time - v10) > 250.0)
      {
        v11 = sub_10001AB1C(self->pid);
        if (v10 >= v7)
        {
          v12 = v7;
        }

        else
        {
          v12 = v10;
        }

        if (!v11)
        {
          v7 = v12;
        }
      }
    }

    ++v6;
    shmem_region = self->shmem_region;
    v8 += 584;
  }

  while (v6 < shmem_region->var1);
  return v7;
}

+ (unint64_t)getEarliestPendingHangStartTime:(unint64_t)time
{
  os_unfair_lock_lock(&stru_100067B4C);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = qword_100067AA0;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v21;
    v9 = -1;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 getHangStartTime:time];
        if (v12 < v9)
        {
          v13 = v12;
          v14 = v11[3];
          v15 = sub_1000024F8(time - v12);
          v16 = [NSString stringWithFormat:@"detected pending hang in %@, duration %.2f ms", v14, *&v15, v20];

          v7 = v16;
          v9 = v13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v9 = -1;
  }

  os_unfair_lock_unlock(&stru_100067B4C);
  if (v7)
  {
    v17 = sub_100003824();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "getEarliestPendingHangStartTime: %@", buf, 0xCu);
    }
  }

  if (v9 == -1)
  {
    v18 = 0;
  }

  else
  {
    v18 = v9;
  }

  return v18;
}

+ (void)checkForHUDTimeouts:(unint64_t)timeouts
{
  os_unfair_lock_lock(&stru_100067B4C);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = qword_100067AA0;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) checkEventsForHUDUpdate:{timeouts, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&stru_100067B4C);
}

+ (void)stopWatchingPid:(int)pid
{
  os_unfair_lock_lock(&stru_100067B4C);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = qword_100067AA0;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (*(*(*(&v9 + 1) + 8 * i) + 56) == pid)
        {
          [qword_100067AA0 removeObject:v9];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&stru_100067B4C);
}

+ (void)stopWatchingAllPids
{
  os_unfair_lock_lock(&stru_100067B4C);
  [qword_100067AA0 removeAllObjects];

  os_unfair_lock_unlock(&stru_100067B4C);
}

+ (id)processForPid:(int)pid
{
  os_unfair_lock_lock(&stru_100067B4C);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = qword_100067AA0;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v9[14] == pid)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  os_unfair_lock_unlock(&stru_100067B4C);

  return v10;
}

+ (BOOL)shouldSaveFenceHangLogs
{
  v2 = +[HTPrefs sharedPrefs];
  isInternal = [v2 isInternal];

  if (isInternal)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    os_unfair_lock_lock(&stru_100067B4C);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = qword_100067AA0;
    v4 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if ([v8 isInForeground] && (v8[72] & 1) != 0)
          {
            LOBYTE(v4) = 1;
            goto LABEL_14;
          }
        }

        v4 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    os_unfair_lock_unlock(&stru_100067B4C);
  }

  return v4;
}

+ (BOOL)isAnyThirdPartyDeveloperProcessForeground
{
  os_unfair_lock_lock(&stru_100067B4C);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = qword_100067AA0;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isInForeground] && (objc_msgSend(v6, "isDeveloperApp") & 1) != 0)
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  os_unfair_lock_unlock(&stru_100067B4C);
  return v3;
}

- (BOOL)isInForeground
{
  uTF8String = [(NSString *)self->processBundleID UTF8String];
  if (uTF8String)
  {
    v4 = uTF8String;
    v5 = [(NSString *)self->processBundleID lengthOfBytesUsingEncoding:4];
    shmem_region = self->shmem_region;
    var1 = shmem_region->var1;
    if (var1)
    {
      v8 = v5;
      while (!shmem_region->var2[0].var12[255])
      {
        if (!strncmp(v4, shmem_region->var2[0].var12, v8))
        {
          v10 = atomic_load(&shmem_region->var2[0].var3);
          LOBYTE(uTF8String) = v10 == 0;
          return uTF8String;
        }

        shmem_region = (shmem_region + 584);
        if (!--var1)
        {
          goto LABEL_11;
        }
      }

      shmem_region->var2[0].var12[255] = 0;
      v9 = sub_100003824();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_1000332CC();
      }
    }

LABEL_11:
    LOBYTE(uTF8String) = 0;
  }

  return uTF8String;
}

- (HTProcessInfo)initWithPid:(int)pid sharedMem:(void *)mem length:(unint64_t)length bundleID:(const char *)d
{
  v11 = sub_10000450C();
  if (!v11)
  {
    v13 = sub_100003824();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(lengthCopy) = pid;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unable to identify process name of pid %d", buf, 8u);
    }

    goto LABEL_25;
  }

  if (length >> 7 <= 0x2C)
  {
    v12 = sub_100003824();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      lengthCopy = length;
      v40 = 2048;
      v41 = 5760;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Shared memory region smaller than expected: %zu < %zu", buf, 0x16u);
    }

LABEL_24:

    munmap(mem, length);
LABEL_25:
    selfCopy = 0;
    goto LABEL_26;
  }

  if (*mem != 7)
  {
    v12 = sub_100003824();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100033334(mem, v12);
    }

    goto LABEL_24;
  }

  v37.receiver = self;
  v37.super_class = HTProcessInfo;
  v14 = [(HTProcessInfo *)&v37 init];
  v15 = v14;
  if (v14)
  {
    v14->pid = pid;
    v14->shmem_length = length;
    v14->shmem_region = mem;
    objc_storeStrong(&v14->processPath, v11);
    lastPathComponent = [(NSString *)v15->processPath lastPathComponent];
    v17 = lastPathComponent;
    if (lastPathComponent)
    {
      v18 = lastPathComponent;
    }

    else
    {
      v18 = @"[Unknown]";
    }

    objc_storeStrong(&v15->processName, v18);

    v19 = [NSString stringWithUTF8String:d];
    processBundleID = v15->processBundleID;
    v15->processBundleID = v19;

    v21 = [(NSString *)v15->processBundleID rangeOfString:@"com.apple." options:1];
    if (v22)
    {
      v23 = v21 == 0;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    v15->isFirstPartyApp = v24;
    if (v23)
    {
      v27 = sub_100004620(v15->processBundleID);
    }

    else
    {
      v27 = 0;
    }

    v15->shouldDisableProcess = v27;
    v15->shouldSaveHangLogs = [(HTProcessInfo *)v15 checkShouldSaveHangLogs];
    v28 = dispatch_source_create(&_dispatch_source_type_proc, pid, 0x80000000uLL, qword_100067D60);
    appExitSource = v15->appExitSource;
    v15->appExitSource = v28;

    v30 = v15->appExitSource;
    if (v30)
    {
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10001C244;
      v35[3] = &unk_100055C40;
      pidCopy = pid;
      v35[4] = v15;
      dispatch_source_set_event_handler(v30, v35);
      dispatch_resume(v15->appExitSource);
    }

    else
    {
      v31 = sub_100003824();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1000333B0(pid, v31);
      }
    }

    v32 = sub_100003824();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      processPath = v15->processPath;
      pid = v15->pid;
      *buf = 138543618;
      lengthCopy = processPath;
      v40 = 1024;
      LODWORD(v41) = pid;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "New proc: %{public}@(%u)", buf, 0x12u);
    }
  }

  self = v15;
  selfCopy = self;
LABEL_26:

  return selfCopy;
}

- (id)checkEventsForTimeouts:(unint64_t)timeouts withType:(int64_t)type
{
  shmem_region = self->shmem_region;
  if (!shmem_region->var1)
  {
    goto LABEL_15;
  }

  v8 = 0;
  timeoutsCopy = timeouts;
  v10 = 424;
  while (1)
  {
    if (!atomic_load((shmem_region + v10 - 392)))
    {
      v12 = *(shmem_region + v10 - 416);
      if (v12 != -1 && v12 > timeouts)
      {
        goto LABEL_15;
      }

      v14 = sub_1000024F8((timeoutsCopy - v12));
      v15 = v14;
      if (type == 2)
      {
        v16 = +[HTPrefs sharedPrefs];
        runloopHangTimeoutDurationMSec = [v16 runloopHangTimeoutDurationMSec];

        if (v15 <= runloopHangTimeoutDurationMSec)
        {
          goto LABEL_14;
        }
      }

      else if (type != 8 || v14 <= 250.0)
      {
        goto LABEL_14;
      }

      if ((sub_10002AA48(v12, timeouts, self->shmem_region->var3, 0) & 1) == 0)
      {
        break;
      }
    }

LABEL_14:
    ++v8;
    shmem_region = self->shmem_region;
    v10 += 584;
    if (v8 >= shmem_region->var1)
    {
      goto LABEL_15;
    }
  }

  v20 = shmem_region + v10;
  *(shmem_region + v10 - 416) = -1;
  if (*(shmem_region + v10 - 45))
  {
    *(v20 - 45) = 0;
    v21 = sub_100003824();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_1000332CC();
    }

    goto LABEL_25;
  }

  v22 = v20 - 364;
  v23 = v20 - 301;
  if (!*v23)
  {
    if (*(shmem_region + v10 - 44))
    {
      *(shmem_region + v10 - 44) = 0;
      v24 = sub_100003824();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = sub_1000043DC(type);
        processBundleID = self->processBundleID;
        *buf = 138543874;
        v62 = v25;
        v63 = 2114;
        v64 = processBundleID;
        v65 = 2048;
        v66 = v12;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Hang %{public}@ detected for bundleid %{public}@ for already reported user switched away hang, startTime %llu", buf, 0x20u);
      }

      goto LABEL_15;
    }

    if (sub_10001AB1C(self->pid))
    {
      v27 = strncmp(shmem_region + v10 - 300, "com.apple.HangTracer.HangTracerTests.testbundleid", 0x100uLL);
      v28 = sub_100003824();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
      if (v27)
      {
        if (v29)
        {
          sub_100033490(type);
        }

        AnalyticsSendEventLazy();
        v30 = sub_1000043DC(type);
        v31 = self->processBundleID;
        v32 = sub_10001A92C();
        sub_10001A9B4(v30, v31, v12, timeouts, v32);

        goto LABEL_15;
      }

      if (v29)
      {
        sub_100033544(type);
      }
    }

    if (type == 2)
    {
      v33 = shmem_region + v10;
      v34 = (shmem_region + v10 - 376);
      v35 = *v34;
      kdebug_trace();
      v36 = self->processBundleID;
      v37 = sub_10001A92C();
      sub_10001A9B4(@"Timed Out Runloop Hang", v36, v12, timeouts, v37);

      AnalyticsSendEventLazy();
      v38 = sub_100003824();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1000336B0(&self->processBundleID);
      }

      v39 = [HTTimeoutHangInfo alloc];
      v40 = [NSString stringWithUTF8String:v22];
      v41 = *v34;
      v42 = *(v33 - 388) != 0;
      isThirdPartyDevSupportModeHang = [(HTProcessInfo *)self isThirdPartyDevSupportModeHang];
      v44 = sub_100027494(v33);
      LOBYTE(v60) = 0;
      LOBYTE(v59) = isThirdPartyDevSupportModeHang;
      v18 = [(HTTimeoutHangInfo *)v39 initWithServiceName:v40 threadID:v41 startTime:v12 endTime:timeouts saveTailspin:v42 subType:2 userActionData:0 isThirdPartyDevSupportModeHang:v59 processInfo:self captureMicroHang:v60 recentStateInfo:v44];

LABEL_54:
      goto LABEL_16;
    }

    v45 = sub_1000043DC(8uLL);
    v46 = self->processBundleID;
    v47 = sub_10001A92C();
    sub_10001A9B4(v45, v46, v12, timeouts, v47);

    v48 = shmem_region + v10 - 386;
    v49 = *v48;
    if (!*v48)
    {
      goto LABEL_48;
    }

    v45 = +[HTPrefs sharedPrefs];
    if (v15 > [v45 runloopHangDurationThresholdMSec])
    {

LABEL_51:
      v52 = sub_100003824();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        sub_1000335D0(&self->processBundleID, self);
      }

      v53 = [HTTimeoutHangInfo alloc];
      v40 = [NSString stringWithUTF8String:v22];
      v54 = shmem_region + v10;
      v55 = *(shmem_region + v10 - 376);
      v56 = *(shmem_region + v10 - 388) != 0;
      isThirdPartyDevSupportModeHang2 = [(HTProcessInfo *)self isThirdPartyDevSupportModeHang];
      v58 = sub_100027494(v54);
      LOBYTE(v60) = 0;
      LOBYTE(v59) = isThirdPartyDevSupportModeHang2;
      v18 = [(HTTimeoutHangInfo *)v53 initWithServiceName:v40 threadID:v55 startTime:v12 endTime:timeouts saveTailspin:v56 subType:8 userActionData:0 isThirdPartyDevSupportModeHang:v59 processInfo:self captureMicroHang:v60 recentStateInfo:v58];

      goto LABEL_54;
    }

    if (*v48)
    {
    }

    else
    {
LABEL_48:
      v50 = +[HTPrefs sharedPrefs];
      runloopHangThirdPartyDurationThresholdMSec = [v50 runloopHangThirdPartyDurationThresholdMSec];

      if (v49)
      {
      }

      if (v15 > runloopHangThirdPartyDurationThresholdMSec)
      {
        goto LABEL_51;
      }
    }

    AnalyticsSendEventLazy();
    goto LABEL_15;
  }

  *v23 = 0;
  v21 = sub_100003824();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    sub_100033428();
  }

LABEL_25:

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)checkEventsForHUDUpdate:(unint64_t)update
{
  if (![(HTProcessInfo *)self shouldDisplayNonFenceHangToHUD])
  {
    return;
  }

  shmem_region = self->shmem_region;
  if (!shmem_region->var1)
  {
    return;
  }

  v6 = 0;
  for (i = 379; ; i += 584)
  {
    v8 = shmem_region + i;
    v12 = 0.0;
    if (sub_10001AFD4(update, shmem_region + i - 371, &v12))
    {
      break;
    }

LABEL_7:
    ++v6;
    shmem_region = self->shmem_region;
    if (v6 >= shmem_region->var1)
    {
      return;
    }
  }

  v10 = *v8;
  v9 = (v8 - 255);
  if (!v10)
  {
    sub_1000251D8(v9, update, *(shmem_region + i - 371), 0x7FFFFFFFFFFFFFFFLL, 0, 0, v12);
    goto LABEL_7;
  }

  *(&shmem_region->var0 + i) = 0;
  v11 = sub_100003824();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_1000332CC();
  }
}

+ (id)displayStateArray
{
  v2 = +[NSMutableArray array];
  v3 = dword_100067B48;
  v4 = 10;
  do
  {
    v5 = &unk_100067AA8 + 16 * v3;
    v6 = *v5;
    if (*v5)
    {
      v7 = *(v5 + 2);
      v8 = sub_100003824();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v13 = v6;
        v14 = 1024;
        v15 = v7;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "timestamp: %llu, status: %d", buf, 0x12u);
      }

      v9 = [NSNumber numberWithUnsignedLongLong:v6];
      [v2 addObject:v9];

      v10 = [NSNumber numberWithInt:v7];
      [v2 addObject:v10];
    }

    v3 = (v3 + 1) % 0xA;
    --v4;
  }

  while (v4);

  return v2;
}

+ (id)recentAppsDict
{
  v2 = sub_100003824();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100033778(v2);
  }

  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = mach_absolute_time();
  os_unfair_lock_lock(&stru_100067B4C);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = qword_100067AA0;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 startTimeWithinMS:10000 ofCurrentTime:v4])
        {
          v11 = *(v10 + 32);
          v12 = [NSString stringWithFormat:@"%i", *(v10 + 56)];
          [v3 setObject:v11 forKeyedSubscript:v12];

          v13 = sub_100003824();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v14 = *(v10 + 56);
            v15 = *(v10 + 32);
            *buf = 67109378;
            v22 = v14;
            v23 = 2112;
            v24 = v15;
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Found Recent App: pid=%i path=%@", buf, 0x12u);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&stru_100067B4C);

  return v3;
}

- (BOOL)startTimeWithinMS:(unint64_t)s ofCurrentTime:(unint64_t)time
{
  shmem_region = self->shmem_region;
  if (!shmem_region->var1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  sCopy = s;
  v10 = 380;
  do
  {
    v11 = *(shmem_region + v10 - 372);
    if (time < v11 && (*(&shmem_region->var0 + v10) & 1) == 0 && sub_1000024F8(time - v11) < sCopy)
    {
      v8 = 1;
    }

    ++v7;
    shmem_region = self->shmem_region;
    v10 += 584;
  }

  while (v7 < shmem_region->var1);
  return v8;
}

- (void)recordHang:(id)hang threadID:(unint64_t)d startTime:(unint64_t)time endTime:(unint64_t)endTime saveTailspin:(BOOL)tailspin subtype:(int64_t)subtype userActionData:(id)data isThirdPartyDevSupportModeHang:(BOOL)self0 captureMicroHang:(BOOL)self1 recentStateInfo:(id)self2
{
  tailspinCopy = tailspin;
  hangCopy = hang;
  dataCopy = data;
  infoCopy = info;
  v18 = sub_1000024F8(endTime - time);
  isFirstPartyApp = self->isFirstPartyApp;
  if (isFirstPartyApp)
  {
    v12 = +[HTPrefs sharedPrefs];
    if (v18 > [v12 runloopHangDurationThresholdMSec])
    {
      v20 = 1;
LABEL_7:

      goto LABEL_8;
    }

    if (self->isFirstPartyApp)
    {
      v20 = 0;
      goto LABEL_7;
    }
  }

  v21 = +[HTPrefs sharedPrefs];
  v20 = v18 > [v21 runloopHangThirdPartyDurationThresholdMSec];

  if (isFirstPartyApp)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (subtype == 9 || !v20 && !microHang)
  {
    v40 = +[HTHangInfo allHangs];
    v41 = [v40 count];

    v42 = infoCopy;
    if (v41)
    {
      +[HTHangInfo getHangWaitTimeout];
      if (v43 <= 0.0)
      {
        +[HTTailspin saveTailspinForAllPendingHangs];
      }

      else
      {
        sub_10000EB44(@"Record Hang", v43);
      }
    }

    v44 = sub_100003824();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      processName = self->processName;
      v46 = sub_1000043DC(subtype);
      v47 = +[HTPrefs sharedPrefs];
      *buf = 138544386;
      endTimeCopy = processName;
      v74 = 2048;
      v75 = v18 / 1000.0;
      v76 = 2114;
      v77 = hangCopy;
      v78 = 2114;
      v79 = v46;
      v80 = 2048;
      v81 = [v47 runloopHangDurationThresholdMSec] / 1000.0;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%{public}@: Hang detected %.2fs (%{public}@, %{public}@) duration < capture threshold %.2fs after accounting for assertion overlaps, not capturing tailspin for it", buf, 0x34u);
    }

    v48 = dataCopy;
  }

  else
  {
    v22 = sub_100003824();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->processName;
      v24 = sub_1000043DC(subtype);
      v25 = +[HTPrefs sharedPrefs];
      *buf = 138544386;
      endTimeCopy = v23;
      v74 = 2048;
      v75 = v18 / 1000.0;
      v76 = 2114;
      v77 = hangCopy;
      v78 = 2114;
      v79 = v24;
      v80 = 2048;
      v81 = [v25 runloopHangDurationThresholdMSec] / 1000.0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: Hang detected %.2fs (%{public}@, %{public}@) duration > capture threshold %.2fs after accounting for assertion overlaps", buf, 0x34u);
    }

    if (subtype == 10)
    {
      v26 = sub_100003824();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = sub_1000043DC(0xAuLL);
        *buf = 134218242;
        endTimeCopy = endTime;
        v74 = 2114;
        v75 = *&v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "hang endTime  %llu for hangsubType %{public}@", buf, 0x16u);
      }
    }

    AnalyticsSendEventLazy();
    if (subtype != 8)
    {
      v28 = sub_1000043DC(subtype);
      processBundleID = self->processBundleID;
      v30 = sub_10001A8A4();
      sub_10001A9B4(v28, processBundleID, time, endTime, v30);
    }

    shouldDisplayNonFenceHangToHUD = [(HTProcessInfo *)self shouldDisplayNonFenceHangToHUD];
    if (tailspinCopy)
    {
      v32 = +[HTPrefs sharedPrefs];
      htTailspinEnabled = [v32 htTailspinEnabled];

      if (htTailspinEnabled)
      {
        if (self->shouldSaveHangLogs)
        {
          if (sub_10002A60C())
          {
            if ([HTTailspin hasAppExceededGeneratedLogsCountForDuration:self->processName procName:self->isFirstPartyApp isFirstPartyApp:v18])
            {
              v34 = sub_100003824();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v35 = self->processName;
                v36 = +[HTPrefs sharedPrefs];
                runLoopHangPerPeriodLogLimit = [v36 runLoopHangPerPeriodLogLimit];
                *buf = 138543618;
                endTimeCopy = v35;
                v74 = 1024;
                LODWORD(v75) = runLoopHangPerPeriodLogLimit;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ hit its Generated Log limit of %u for this reporting period. Not saving a report!", buf, 0x12u);
              }

              v38 = 0;
              v39 = 2;
            }

            else
            {
              v55 = [HTTailspin hasExceededDailyLimit:self->isFirstPartyApp isFirstPartyApp:v18];
              if (v55)
              {
                v39 = 1;
              }

              else
              {
                v39 = 11;
              }

              v38 = v55 ^ 1;
            }
          }

          else
          {
            v53 = sub_100003824();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              v54 = self->processName;
              *buf = 138543362;
              endTimeCopy = v54;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%{public}@: Tried to save tailspin, but tailspin support is not present on this device!", buf, 0xCu);
            }

            v38 = 0;
            v39 = 3;
          }
        }

        else
        {
          v51 = sub_100003824();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = self->processName;
            *buf = 138543362;
            endTimeCopy = v52;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%{public}@: Tried to save tailspin, but shouldSaveHangLogs said NO", buf, 0xCu);
          }

          v38 = 0;
          v39 = 4;
        }
      }

      else
      {
        v49 = sub_100003824();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = self->processName;
          *buf = 138543362;
          endTimeCopy = v50;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}@: HangTracer tailspin support is disabled, not saving a report!", buf, 0xCu);
        }

        v38 = 0;
        v39 = 5;
      }
    }

    else
    {
      v38 = 0;
      v39 = 11;
    }

    v56 = shouldDisplayNonFenceHangToHUD ^ 1;
    if (subtype == 10)
    {
      v56 = 1;
    }

    if ((v56 & 1) == 0)
    {
      uTF8String = [(NSString *)self->processBundleID UTF8String];
      v58 = mach_absolute_time();
      sub_1000251D8(uTF8String, v58, time, endTime, v38, subtype == 2, v18);
    }

    if (v38)
    {
      v59 = [NSString stringWithFormat:@"%@-%@: timeout %.0fms", hangCopy, self->processName, *&v18];
      v60 = [HTHangInfo alloc];
      pid = self->pid;
      v62 = self->isFirstPartyApp;
      v63 = self->processName;
      processPath = self->processPath;
      v42 = infoCopy;
      v48 = dataCopy;
      BYTE2(v67) = shouldDisplayNonFenceHangToHUD;
      BYTE1(v67) = modeHang;
      LOBYTE(v67) = v62;
      v65 = [HTHangInfo initWithPid:v60 threadID:"initWithPid:threadID:startTime:endTime:reportedTime:blownFenceID:hangSubtype:isFirstPartyApp:isThirdPartyDevSupportModeHang:displayedInHUD:serviceName:reason:processName:processPath:userActionData:recentStateInfo:" startTime:pid endTime:d reportedTime:time blownFenceID:endTime hangSubtype:endTime isFirstPartyApp:0 isThirdPartyDevSupportModeHang:subtype displayedInHUD:v67 serviceName:hangCopy reason:v59 processName:v63 processPath:processPath userActionData:dataCopy recentStateInfo:infoCopy];
      [HTHangInfo addHang:v65];
      +[HTHangInfo getHangWaitTimeout];
      if (v66 <= 0.0)
      {
        +[HTTailspin saveTailspinForAllPendingHangs];
      }

      else
      {
        sub_10000EB44(@"Record Hang", v66);
      }
    }

    else
    {
      [HTTailspin notifyHTTailSpinResult:0 failReason:v39 hangSubType:subtype htBugType:sub_10001AE00(self->isFirstPartyApp, modeHang, v18)];
      v42 = infoCopy;
      v48 = dataCopy;
    }
  }
}

+ (void)recordFenceHang:(id)hang startTime:(unint64_t)time endTime:(unint64_t)endTime reportedTime:(unint64_t)reportedTime blownFenceId:(unint64_t)id saveTailspin:(BOOL)tailspin subtype:(int64_t)subtype isThirdPartyDevSupportModeHang:(BOOL)self0 captureMicroHang:(BOOL)self1
{
  hangCopy = hang;
  v16 = sub_1000024F8(endTime - time);
  v17 = +[HTPrefs sharedPrefs];
  runloopHangDurationThresholdMSec = [v17 runloopHangDurationThresholdMSec];

  if (subtype != 9 && (v16 > runloopHangDurationThresholdMSec || microHang))
  {
    v22 = sub_100003824();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v36 = v16 / 1000.0;
      v37 = 2114;
      v38 = hangCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Fence-hang: Hang detected %.2fs (%{public}@) > capture threshold", buf, 0x16u);
    }

    v23 = +[HTPrefs sharedPrefs];
    shouldDisplayFenceHangToHUD = [v23 shouldDisplayFenceHangToHUD];

    if (shouldDisplayFenceHangToHUD)
    {
      v25 = sub_1000024F8(endTime - time - 24000000);
      v26 = mach_absolute_time();
      sub_1000251D8("Fence Hang", v26, time + 12000000, endTime - 12000000, 1, subtype == 2, v25);
    }

    v27 = +[HTPrefs sharedPrefs];
    htTailspinEnabled = [v27 htTailspinEnabled];

    if (htTailspinEnabled)
    {
      if (+[HTProcessInfo shouldSaveFenceHangLogs])
      {
        if (sub_10002A60C())
        {
          if (!+[HTTailspin hasExceededDailyFenceLogLimit])
          {
            v31 = [NSString stringWithFormat:@"%@-%@: timeout %.0fms", hangCopy, @"AppTBD", *&v16];
            BYTE2(v34) = shouldDisplayFenceHangToHUD;
            BYTE1(v34) = modeHang;
            LOBYTE(v34) = 0;
            v32 = [HTHangInfo initWithPid:"initWithPid:threadID:startTime:endTime:reportedTime:blownFenceID:hangSubtype:isFirstPartyApp:isThirdPartyDevSupportModeHang:displayedInHUD:serviceName:reason:processName:processPath:userActionData:recentStateInfo:" threadID:0 startTime:0 endTime:time reportedTime:endTime blownFenceID:reportedTime hangSubtype:id isFirstPartyApp:subtype isThirdPartyDevSupportModeHang:v34 displayedInHUD:hangCopy serviceName:v31 reason:@"AppTBD" processName:&stru_100057080 processPath:0 userActionData:0 recentStateInfo:?];
            [HTHangInfo addHang:v32];
            +[HTHangInfo getHangWaitTimeout];
            if (v33 <= 0.0)
            {
              +[HTTailspin saveTailspinForAllPendingHangs];
            }

            else
            {
              sub_10000EB44(@"Record Fence Hang", v33);
            }

            goto LABEL_24;
          }

          v29 = 1;
        }

        else
        {
          v29 = 3;
        }
      }

      else
      {
        v29 = 14;
      }
    }

    else
    {
      v29 = 5;
    }

    [HTTailspin notifyHTTailSpinResult:0 failReason:v29 hangSubType:subtype htBugType:0];
    goto LABEL_24;
  }

  v19 = +[HTHangInfo allHangs];
  v20 = [v19 count];

  if (v20)
  {
    +[HTHangInfo getHangWaitTimeout];
    if (v21 <= 0.0)
    {
      +[HTTailspin saveTailspinForAllPendingHangs];
    }

    else
    {
      sub_10000EB44(@"Record Fence Hang", v21);
    }
  }

  v30 = sub_100003824();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v36 = v16 / 1000.0;
    v37 = 2114;
    v38 = hangCopy;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Fence-hang: Hang detected %.2fs (%{public}@), duration < capture threshold after accounting for assertion overlaps, not capturing tailspin for it", buf, 0x16u);
  }

LABEL_24:
}

- (void)dealloc
{
  v3 = sub_100003824();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000337BC(self, v3);
  }

  shmem_region = self->shmem_region;
  if (shmem_region)
  {
    munmap(shmem_region, self->shmem_length);
    self->shmem_region = 0;
  }

  appExitSource = self->appExitSource;
  if (appExitSource)
  {
    dispatch_source_cancel(appExitSource);
  }

  v6.receiver = self;
  v6.super_class = HTProcessInfo;
  [(HTProcessInfo *)&v6 dealloc];
}

- (id)getApplicationByBundleId:(id)id
{
  appInfo = self->appInfo;
  if (!appInfo)
  {
    v5 = sub_100003824();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100033838(self, v5);
    }

    v6 = [LSApplicationRecord alloc];
    processBundleID = self->processBundleID;
    v14 = 0;
    v8 = [v6 initWithBundleIdentifier:processBundleID allowPlaceholder:0 error:&v14];
    v9 = v14;
    v10 = self->appInfo;
    self->appInfo = v8;

    if (v9)
    {
      v11 = sub_100003824();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000338B4(&self->processBundleID, v9, v11);
      }

      v12 = self->appInfo;
      self->appInfo = 0;
    }

    appInfo = self->appInfo;
  }

  return appInfo;
}

- (BOOL)isDeveloperApp
{
  if (self->isFirstPartyApp)
  {
    return 0;
  }

  v4 = +[HTPrefs sharedPrefs];
  thirdPartyIncludeNonDevelopmentApps = [v4 thirdPartyIncludeNonDevelopmentApps];

  if (thirdPartyIncludeNonDevelopmentApps)
  {
    return 1;
  }

  v6 = [(HTProcessInfo *)self getApplicationByBundleId:self->processBundleID];
  isProfileValidated = [v6 isProfileValidated];

  return isProfileValidated;
}

- (BOOL)shouldDisplayNonFenceHangToHUD
{
  v3 = +[HTPrefs sharedPrefs];
  if ([v3 isInternal])
  {
    v4 = +[HTPrefs sharedPrefs];
    hudEnabled = [v4 hudEnabled];

    if (hudEnabled)
    {
      return !self->shouldDisableProcess;
    }
  }

  else
  {
  }

  v7 = +[HTPrefs sharedPrefs];
  thirdPartyDevHangHUDEnabled = [v7 thirdPartyDevHangHUDEnabled];

  return thirdPartyDevHangHUDEnabled && [(HTProcessInfo *)self isDeveloperApp];
}

@end