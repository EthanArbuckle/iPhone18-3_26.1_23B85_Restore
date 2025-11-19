@interface LifetimeServoStatePersistenceBase
+ (BOOL)writePersistedStateNvram:(const void *)a3 dataSize:(unint64_t)a4 path:(__CFString *)a5;
+ (__CFData)copyPersistedStateNvram:(__CFString *)a3;
+ (__CFString)copyPersistenceNvramPath;
+ (id)copyFiler;
+ (unsigned)getPMPSvc;
- (BOOL)UpdateLTSStateCommonFromPMP:(ltsStateCommon *)a3;
- (BOOL)initializeLTSPersistence;
- (BOOL)isNandDataValidForKey:(__CFString *)a3;
- (BOOL)isNvramDataValid:(unint64_t *)a3;
- (BOOL)readInteger:(unsigned int *)a3 forKey:(__CFString *)a4;
- (BOOL)saveLTSStateToNand:(void *)a3;
- (BOOL)sendDataToPMP:(__CFData *)a3 forKey:(__CFString *)a4;
- (BOOL)updatePersistenceLTSState:(BOOL)a3;
- (BOOL)writePersistedStateNvram:(void *)a3 path:(__CFString *)a4;
- (LifetimeServoStatePersistenceBase)init;
- (LifetimeServoStatePersistenceBase)initWithParams:(id)a3;
- (__CFData)copyKeyFromPMP:(__CFString *)a3 is_64:(BOOL)a4;
- (__CFData)readNVRAMData;
- (unsigned)getNVRAMValueWithType:(int)a3 commonState:(ltsStateCommon *)a4;
- (void)copyUpdatedLTSState;
- (void)dealloc;
- (void)initClassVariables;
- (void)overrideParam:(id)a3 value:(int)a4;
- (void)readNVRAM;
- (void)resolvePersistentLTSState:(ltsStateCommon *)a3 integratorStatePtr:(unint64_t *)a4 nandDataValidityKey:(__CFString *)a5 minValidVer:(unsigned int)a6;
- (void)safeFreeLTSStatePtrs:(void *)a3;
- (void)safeFreeUpdatedLTSState:(void *)a3;
@end

@implementation LifetimeServoStatePersistenceBase

+ (unsigned)getPMPSvc
{
  result = dword_1000AB268;
  if (!dword_1000AB268)
  {
    v3 = IOServiceNameMatching("ApplePMPv2");
    result = IOServiceGetMatchingService(kIOMainPortDefault, v3);
    dword_1000AB268 = result;
  }

  return result;
}

- (LifetimeServoStatePersistenceBase)init
{
  v6.receiver = self;
  v6.super_class = LifetimeServoStatePersistenceBase;
  v2 = [(LifetimeServoStatePersistenceBase *)&v6 init];
  if (!v2)
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100057B6C();
    }

    return 0;
  }

  v3 = v2;
  v4 = +[LifetimeServoStatePersistenceBase copyFiler];
  v3->_filer = v4;
  if (!v4)
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100057B30();
    }

    return 0;
  }

  return v3;
}

- (LifetimeServoStatePersistenceBase)initWithParams:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  self->_nvramLength = 0;
  self->_isRevDict = a3;
  *&self->_resolvedLTSPersistence.current_version = 0;
  self->_resolvedLTSPersistence.pmp_data_source = 0;
  *&self->_hasNvram = 0;
  self->_nvramPersistence = 0;
  [(LifetimeServoStatePersistenceBase *)self initClassVariables];
  [(LifetimeServoStatePersistenceBase *)self initializeLTSPersistence];
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.thermalmonitor.lts-ctrl-state", v6);
  if (v7)
  {
    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v7);
    self->_statePersistenceTimer = v8;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10003D870;
    handler[3] = &unk_100085260;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    statePersistenceTimer = self->_statePersistenceTimer;
    v10 = dispatch_time(0x8000000000000000, 1800000000000);
    dispatch_source_set_timer(statePersistenceTimer, v10, 0x1A3185C5000uLL, 0x2540BE400uLL);
    dispatch_resume(self->_statePersistenceTimer);
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100057BA8();
  }

  objc_autoreleasePoolPop(v5);
  return self;
}

- (void)initClassVariables
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100057C20(a2);
  }
}

- (void)readNVRAM
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100057C20(a2);
  }
}

- (void)safeFreeLTSStatePtrs:(void *)a3
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100057C20(a2);
  }
}

- (BOOL)initializeLTSPersistence
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100057C20(a2);
  }

  return 0;
}

- (void)copyUpdatedLTSState
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100057C20(a2);
  }

  return 0;
}

- (BOOL)saveLTSStateToNand:(void *)a3
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100057C20(a2);
  }

  return 0;
}

- (BOOL)writePersistedStateNvram:(void *)a3 path:(__CFString *)a4
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100057C20(a2);
  }

  return 0;
}

- (BOOL)updatePersistenceLTSState:(BOOL)a3
{
  v3 = a3;
  v5 = [(LifetimeServoStatePersistenceBase *)self copyUpdatedLTSState];
  if (v5)
  {
    [(LifetimeServoStatePersistenceBase *)self saveLTSStateToNand:v5];
    if (self->_hasNvram && v3)
    {
      if ([(LifetimeServoStatePersistenceBase *)self writePersistedStateNvram:v5 path:self->_nvramPersistence])
      {
        if (byte_1000AB2F8 == 1)
        {
          v7 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            *v9 = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> Saved LTS state to NVRam", v9, 2u);
          }
        }
      }

      else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100057CFC();
      }
    }

    [(LifetimeServoStatePersistenceBase *)self safeFreeUpdatedLTSState:v5];
  }

  else
  {
    sub_100057CA0();
  }

  return v5 != 0;
}

- (void)safeFreeUpdatedLTSState:(void *)a3
{
  if (a3)
  {
    [(LifetimeServoStatePersistenceBase *)self safeFreeLTSStatePtrs:?];

    free(a3);
  }
}

- (__CFData)readNVRAMData
{
  if (!self->_hasNvram)
  {
    sub_100057D38(&v6);
    return v6;
  }

  if (!self->_nvramPersistence)
  {
    sub_100057DD8(&v6);
    return v6;
  }

  v3 = [(LifetimeServoStatePersistenceBase *)LifetimeServoStatePersistence copyPersistedStateNvram:?];
  if (v3)
  {
    v4 = v3;
    self->_nvramLength = CFDataGetLength(v3);
  }

  else
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100057D9C();
    }

    return 0;
  }

  return v4;
}

- (unsigned)getNVRAMValueWithType:(int)a3 commonState:(ltsStateCommon *)a4
{
  if (self->_hasNvram)
  {
    if (a4)
    {
      if (a3 == 1)
      {
        var1 = a4->var1;
        v4 = "Counter";
        goto LABEL_13;
      }

      if (!a3)
      {
        var1 = a4->var0;
        v4 = "Version";
        goto LABEL_13;
      }

      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100057E78();
      }
    }

    else if (byte_1000AB2F8 == 1)
    {
      v6 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<Notice> getNVRAMValueWithType: NVRAM ltsStateCommon pointer was not provided", &v9, 2u);
      }
    }

    var1 = 0;
    v4 = "None";
    goto LABEL_13;
  }

  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100057E3C();
  }

  var1 = 0;
LABEL_13:
  if (byte_1000AB2F8 == 1)
  {
    v7 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = v4;
      v11 = 1024;
      v12 = var1;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> getNVRAMValueWithType: %s = %d", &v9, 0x12u);
    }
  }

  return var1;
}

- (BOOL)isNvramDataValid:(unint64_t *)a3
{
  if (!self->_hasNvram)
  {
    sub_100057EE8(&v9);
LABEL_15:
    v5 = v9;
    goto LABEL_7;
  }

  if (!a3)
  {
    sub_100057F4C(&v9);
    goto LABEL_15;
  }

  v3 = *a3;
  if (byte_1000AB2F8 == 1)
  {
    v4 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = (v3 / 31536000.0);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Notice> LTS data from NVRAM contains %llu years of accumulated IS", &v9, 0xCu);
    }
  }

  v5 = v3 < 3.1536e10;
LABEL_7:
  if (byte_1000AB2F8 == 1)
  {
    v6 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "INVALID";
      if (v5)
      {
        v7 = "VALID";
      }

      v9 = 136315138;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<Notice> LTS nvramDataValid: NVRAM data is %s", &v9, 0xCu);
    }
  }

  return v5;
}

- (void)overrideParam:(id)a3 value:(int)a4
{
  if (a4 != -1)
  {
    if (byte_1000AB2F8 == 1)
    {
      v7 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412546;
        v12 = a3;
        v13 = 1024;
        v14 = a4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> LSController: setting %@ to %d", &v11, 0x12u);
      }
    }

    if ([a3 isEqualToString:@"LifetimeServoStateSaveIntervalMinutes"])
    {
      v8 = 60000000000 * a4;
      self->_ltsStateSaveInterval = v8;
      statePersistenceTimer = self->_statePersistenceTimer;
      v10 = dispatch_time(0x8000000000000000, v8);
      dispatch_source_set_timer(statePersistenceTimer, v10, self->_ltsStateSaveInterval, 0x2540BE400uLL);
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100057FD0();
    }
  }
}

- (BOOL)isNandDataValidForKey:(__CFString *)a3
{
  v3 = [(Filer *)self->_filer getValueForKey:a3];
  if (v3)
  {
    v10 = 0.0;
    [v3 getBytes:&v10 length:8];
    v4 = v10;
    if (byte_1000AB2F8 == 1)
    {
      v5 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v12 = (v4 / 31536000.0);
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> LTS data from NAND contains %llu years of accumulated IS", buf, 0xCu);
      }
    }

    v6 = v4 < 3.1536e10;
  }

  else
  {
    v6 = 0;
  }

  if (byte_1000AB2F8 == 1)
  {
    v7 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "INVALID";
      if (v6)
      {
        v8 = "VALID";
      }

      *buf = 136315138;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> LTS nandDataValid: NAND data is %s", buf, 0xCu);
    }
  }

  return v6;
}

+ (__CFString)copyPersistenceNvramPath
{
  v2 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x40u, 0xA0u, 0xDDu, 0xD2u, 0x77u, 0xF8u, 0x43u, 0x92u, 0xB4u, 0xA3u, 0x1Eu, 0x73u, 4u, 0x20u, 0x65u, 0x16u);
  v3 = CFStringCreateWithFormat(0, 0, @"%@:%s", v2, "lts-persistance");
  if (v3)
  {
    if (byte_1000AB2F8 == 1)
    {
      v4 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v7 = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Notice> NVRam path: %@", buf, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100058040();
  }

  return v3;
}

- (BOOL)readInteger:(unsigned int *)a3 forKey:(__CFString *)a4
{
  v6 = [(Filer *)self->_filer getValueForKey:a4];
  v7 = v6;
  if (v6)
  {
    *a3 = [v6 unsignedIntegerValue];
  }

  else if (byte_1000AB2F8 == 1)
  {
    v8 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> Failed to read value for key %@", &v10, 0xCu);
    }
  }

  return v7 != 0;
}

- (BOOL)sendDataToPMP:(__CFData *)a3 forKey:(__CFString *)a4
{
  v6 = +[(LifetimeServoStatePersistenceBase *)LifetimeServoStatePersistence];
  if (v6)
  {
    if (IORegistryEntrySetCFProperty(v6, a4, a3))
    {
      sub_10005807C();
      return v8;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    sub_10005811C(&v9);
    return v9;
  }
}

- (__CFData)copyKeyFromPMP:(__CFString *)a3 is_64:(BOOL)a4
{
  v4 = a4;
  v6 = +[(LifetimeServoStatePersistenceBase *)LifetimeServoStatePersistence];
  if (!v6)
  {
    sub_1000583A0();
    return v13;
  }

  CFProperty = IORegistryEntryCreateCFProperty(v6, a3, kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    sub_100058304();
    return v13;
  }

  v8 = CFProperty;
  v9 = CFGetTypeID(CFProperty);
  if (v9 != CFDataGetTypeID())
  {
    sub_1000581C0(a3, v8, &v13);
    return v13;
  }

  Length = CFDataGetLength(v8);
  v11 = 4;
  if (v4)
  {
    v11 = 8;
  }

  if (Length != v11)
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100058274(v8);
    }

    CFRelease(v8);
    return 0;
  }

  return v8;
}

- (BOOL)UpdateLTSStateCommonFromPMP:(ltsStateCommon *)a3
{
  v13 = 0;
  v5 = [(LifetimeServoStatePersistenceBase *)self copyKeyFromPMP:@"lts-ctrl-die-count" is_64:0];
  if (!v5)
  {
    sub_1000584A4(buf);
    return buf[0];
  }

  v6 = v5;
  [(__CFData *)v5 getBytes:&v13 + 4 length:4];
  CFRelease(v6);
  v7 = [(LifetimeServoStatePersistenceBase *)self copyKeyFromPMP:@"lts-ctrl-loop-count" is_64:0];
  if (!v7)
  {
    sub_100058440(buf);
    return buf[0];
  }

  v8 = v7;
  [(__CFData *)v7 getBytes:&v13 length:4];
  CFRelease(v8);
  v9 = HIDWORD(v13);
  v10 = v13 / HIDWORD(v13);
  LODWORD(v13) = v13 / HIDWORD(v13);
  if (byte_1000AB2F8 == 1)
  {
    v11 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v15 = v9;
      v16 = 1024;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<Notice> dieCount:%u loopCount:%u", buf, 0xEu);
      v10 = v13;
      v9 = HIDWORD(v13);
    }
  }

  a3->var2 = v9;
  a3->var3 = v10;
  return 1;
}

- (void)dealloc
{
  self->_filer = 0;
  nvramPersistence = self->_nvramPersistence;
  if (nvramPersistence)
  {
    CFRelease(nvramPersistence);
  }

  self->_nvramPersistence = 0;

  v4.receiver = self;
  v4.super_class = LifetimeServoStatePersistenceBase;
  [(LifetimeServoStatePersistenceBase *)&v4 dealloc];
}

- (void)resolvePersistentLTSState:(ltsStateCommon *)a3 integratorStatePtr:(unint64_t *)a4 nandDataValidityKey:(__CFString *)a5 minValidVer:(unsigned int)a6
{
  v32 = 0;
  if (!self->_hasNvram)
  {
    v15 = 0;
    v12 = 0;
    v11 = 0;
    goto LABEL_16;
  }

  v11 = [(LifetimeServoStatePersistenceBase *)self getNVRAMValueWithType:0 commonState:a3];
  v12 = [(LifetimeServoStatePersistenceBase *)self getNVRAMValueWithType:1 commonState:a3];
  pmpLTSStateversion = self->_pmpLTSStateversion;
  if (v11 > pmpLTSStateversion)
  {
    if (byte_1000AB2F8 == 1)
    {
      v14 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v34 = v11;
        v35 = 1024;
        v36 = pmpLTSStateversion;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "<Notice> NVRAM version %d too high - IS will be discarded and updated to version %d", buf, 0xEu);
      }
    }

    v11 = 0;
LABEL_7:
    self->_initializeNvram = 1;
    goto LABEL_10;
  }

  if (v11 != pmpLTSStateversion)
  {
    if (byte_1000AB2F8 == 1)
    {
      v31 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v34 = v11;
        v35 = 1024;
        v36 = pmpLTSStateversion;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "<Notice> NVRAM version %d mismatch - will be updated to version %d", buf, 0xEu);
      }
    }

    goto LABEL_7;
  }

LABEL_10:
  if ([(LifetimeServoStatePersistenceBase *)self isNvramDataValid:a4])
  {
    v15 = 1;
  }

  else
  {
    if (byte_1000AB2F8 == 1)
    {
      v16 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "<Notice> NVRAM data is INVALID and will be reset", buf, 2u);
      }
    }

    v15 = 0;
    self->_initializeNvram = 1;
  }

LABEL_16:
  if (![(LifetimeServoStatePersistenceBase *)self readInteger:&v32 + 4 forKey:@"version"]&& byte_1000AB2F8 == 1)
  {
    v17 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<Notice> LTS getNANDVer: NAND version does not exist", buf, 2u);
    }
  }

  if (![(LifetimeServoStatePersistenceBase *)self readInteger:&v32 forKey:@"counter"]&& byte_1000AB2F8 == 1)
  {
    v18 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "<Notice> LTS getNANDVer: NAND counter does not exist", buf, 2u);
    }
  }

  v19 = HIDWORD(v32);
  v20 = self->_pmpLTSStateversion;
  if (HIDWORD(v32) <= v20)
  {
    if (HIDWORD(v32) != v20 && byte_1000AB2F8 == 1)
    {
      v22 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v34 = v19;
        v35 = 1024;
        v36 = v20;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "<Notice> NAND version %d mismatch - will be updated to version %d", buf, 0xEu);
      }
    }
  }

  else
  {
    if (byte_1000AB2F8 == 1)
    {
      v21 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v34 = v19;
        v35 = 1024;
        v36 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "<Notice> NAND version %d too high - IS will be discarded and updated to version %d", buf, 0xEu);
      }
    }

    HIDWORD(v32) = 0;
  }

  v23 = [(LifetimeServoStatePersistenceBase *)self isNandDataValidForKey:a5];
  v24 = HIDWORD(v32);
  if (HIDWORD(v32) <= v11)
  {
    v25 = v11;
  }

  else
  {
    v25 = HIDWORD(v32);
  }

  if (v25 >= a6 && ((v15 | v23) & 1) != 0)
  {
    v26 = v32;
    self->_resolvedLTSPersistence.current_version = HIDWORD(v32);
    self->_resolvedLTSPersistence.current_count = v26;
    self->_resolvedLTSPersistence.pmp_data_source = 1;
    if ((v23 & 1) == 0 || v15 && (v11 > v24 || v24 == v11 && v12 > v26))
    {
      self->_resolvedLTSPersistence.current_version = v11;
      self->_resolvedLTSPersistence.current_count = v12;
      self->_resolvedLTSPersistence.pmp_data_source = 2;
      v24 = v11;
    }
  }

  else
  {
    self->_resolvedLTSPersistence.current_version = v25;
    v24 = v25;
  }

  if (byte_1000AB2F8 == 1)
  {
    v27 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      current_count = self->_resolvedLTSPersistence.current_count;
      pmp_data_source = self->_resolvedLTSPersistence.pmp_data_source;
      *buf = 67109632;
      v34 = v24;
      v35 = 1024;
      v36 = current_count;
      v37 = 1024;
      v38 = pmp_data_source;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "<Notice> Resolved persistence: Version: %d, Counter: %d, PMP Data Source: %d", buf, 0x14u);
    }
  }

  if (self->_hasNvram && self->_initializeNvram && byte_1000AB2F8 == 1)
  {
    v30 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "<Notice> NVRAM will be updated", buf, 2u);
    }
  }
}

+ (id)copyFiler
{
  bzero(v5, 0x400uLL);
  if (!&_lookupPathForPersistentData)
  {
    sub_1000585A4(v4);
    return *v4;
  }

  if (lookupPathForPersistentData())
  {
    sub_100058508();
    return *v4;
  }

  if (byte_1000AB2F8 == 1)
  {
    v2 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 136315138;
      *&v4[4] = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "<Notice> Persistence filepath:%s", v4, 0xCu);
    }
  }

  return [[Filer alloc] initWithFileName:"com.apple.cltm" inDirectory:v5];
}

+ (__CFData)copyPersistedStateNvram:(__CFString *)a3
{
  if (a3)
  {
    v4 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
    if (v4)
    {
      v5 = v4;
      CFProperty = IORegistryEntryCreateCFProperty(v4, a3, kCFAllocatorDefault, 0);
      v7 = CFProperty;
      if (CFProperty)
      {
        v8 = CFGetTypeID(CFProperty);
        if (v8 != CFDataGetTypeID() && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100058608();
        }
      }

      else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100058644();
      }

      IOObjectRelease(v5);
    }

    else
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100058680();
      }

      return 0;
    }
  }

  else
  {
    sub_100058700(&v10);
    return v10;
  }

  return v7;
}

+ (BOOL)writePersistedStateNvram:(const void *)a3 dataSize:(unint64_t)a4 path:(__CFString *)a5
{
  if (a5)
  {
    v8 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
    if (v8)
    {
      v9 = v8;
      v10 = objc_autoreleasePoolPush();
      v11 = IORegistryEntrySetCFProperty(v9, a5, [NSData dataWithBytes:a3 length:a4]);
      v12 = v11 == 0;
      if (v11 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100058764();
      }

      objc_autoreleasePoolPop(v10);
      IOObjectRelease(v9);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000587A0(&v14);
    return v14;
  }

  return v12;
}

@end