@interface Chip
+ (BOOL)hasHardware:(BOOL *)a3;
+ (id)bootModeAsString:(int64_t)a3;
+ (id)getCentauriBootArgs;
+ (id)stateAsString:(int64_t)a3;
- (BOOL)activate:(id *)a3;
- (BOOL)bootInMode:(int64_t)a3 lpmData:(id)a4 powerTablePaths:(id)a5 failureReason:(id *)a6;
- (BOOL)collectLogsWithReason:(id)a3 fatal:(BOOL)a4 useFWReason:(BOOL)a5 lpm:(BOOL)a6;
- (BOOL)reset;
- (BOOL)storeFirmwareBootTimestamps:(id)a3;
- (Chip)initWithQueue:(id)a3 delegate:(id)a4;
- (id)getCrashlogs;
- (id)getFirmwareBootTimestamps;
- (id)getHostBootTimestamps;
- (id)getPMUFaultInfo;
- (id)getSiKPublicKey;
- (id)ping;
- (id)preflightQuery;
- (id)shellCommand:(id)a3;
- (int)createController:(id *)a3;
- (int)powerCycle;
- (int)powerOff;
- (int)powerOn:(id *)a3;
- (int64_t)getChipState;
- (unint64_t)driverInstance;
- (void)dealloc;
- (void)destroyController;
- (void)handleCrashlogAvailable;
- (void)invalidate;
- (void)log;
- (void)setHardwareHealth:(BOOL)a3;
@end

@implementation Chip

- (Chip)initWithQueue:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = Chip;
  v9 = [(Chip *)&v14 init];
  v10 = v9;
  if (v9)
  {
    [(Chip *)v9 setState:0];
    v10->_hasFirmware = CentauriBooterIsFirmwarePresent();
    v10->_hasHardware = [objc_opt_class() hasHardware:&v10->_builtIn];
    objc_storeStrong(&v10->_queue, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v11 = objc_alloc_init(CCHIInterface);
    cchiInterface = v10->_cchiInterface;
    v10->_cchiInterface = v11;

    CentauriControllerSetLogSink();
  }

  return v10;
}

- (void)dealloc
{
  if (self->_active)
  {
    v3 = sub_100025204();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029A78();
    }

    abort_report_np();
    __break(1u);
  }

  v4.receiver = self;
  v4.super_class = Chip;
  [(Chip *)&v4 dealloc];
}

- (BOOL)activate:(id *)a3
{
  v14 = 0;
  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    *buf = 138543618;
    v16 = v7;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  ChipPower = CentauriControllerGetChipPower();
  if (ChipPower)
  {
    *a3 = [NSString stringWithFormat:@"getChipPowerFailure:0x%08x", ChipPower];
    v11 = sub_100025204();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_opt_class() description];
      v13 = NSStringFromSelector(a2);
      *buf = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      v19 = 1024;
      v20 = ChipPower;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to get chip power state: 0x%08x", buf, 0x1Cu);
    }

    return 0;
  }

  else
  {
    self->_state = 5;
    result = 1;
    self->_active = 1;
  }

  return result;
}

- (void)invalidate
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v7, 0x16u);
  }

  [(CCHIInterface *)self->_cchiInterface stop];
  [(Chip *)self destroyController];
  self->_active = 0;
}

+ (id)getCentauriBootArgs
{
  v3 = &stru_10005D038;
  v4 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  v5 = v4;
  if (v4)
  {
    CFProperty = IORegistryEntryCreateCFProperty(v4, @"centauri-boot-args", kCFAllocatorDefault, 0);
    v7 = CFProperty;
    if (CFProperty)
    {
      v8 = CFGetTypeID(CFProperty);
      TypeID = CFDataGetTypeID();
      v10 = v8 == TypeID;
      if (v8 == TypeID)
      {
        v11 = [[NSString alloc] initWithData:v7 encoding:1];
        v15 = sub_100025204();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [objc_opt_class() description];
          v13 = NSStringFromSelector(a2);
          v17 = 138543874;
          v18 = v12;
          v19 = 2114;
          v20 = v13;
          v21 = 2114;
          v22 = v11;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: user-specified Centauri boot-args: '%{public}@'", &v17, 0x20u);
        }

        v3 = v11;
      }

      else
      {
        v15 = sub_100025204();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [objc_opt_class() description];
          objc_claimAutoreleasedReturnValue();
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          sub_100029AC0();
          v3 = &stru_10005D038;
        }
      }

      CFRelease(v7);
    }

    else
    {
      v10 = 1;
    }

    IOObjectRelease(v5);
    if (!v10)
    {

      v3 = 0;
    }
  }

  return v3;
}

+ (BOOL)hasHardware:(BOOL *)a3
{
  parent = 0;
  if (!a3)
  {
    v22 = sub_100025204();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029B98();
    }

    goto LABEL_39;
  }

  v5 = IOServiceNameMatching("centauri");
  if (!v5)
  {
    v22 = sub_100025204();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029B50();
    }

    goto LABEL_39;
  }

  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
  if (MatchingService)
  {
    CFProperty = 0;
    v8 = 0;
    v9 = 1;
LABEL_14:
    v14 = 1;
    goto LABEL_15;
  }

  v10 = IOServiceMatching("AppleCentauriManager");
  if (!v10)
  {
    v22 = sub_100025204();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029B50();
    }

LABEL_39:

    abort_report_np();
    goto LABEL_46;
  }

  v11 = IOServiceGetMatchingService(kIOMainPortDefault, v10);
  if (v11)
  {
    v8 = v11;
    ParentEntry = IORegistryEntryGetParentEntry(v11, "IOService", &parent);
    if (ParentEntry)
    {
      v13 = 1;
    }

    else
    {
      v13 = parent == 0;
    }

    if (!v13)
    {
      CFProperty = IORegistryEntryCreateCFProperty(parent, @"centauri-builtin", kCFAllocatorDefault, 0);
      if (!CFProperty)
      {
        CFProperty = IORegistryEntryCreateCFProperty(parent, @"centauri-builtin-protium", kCFAllocatorDefault, 0);
      }

      v9 = CFProperty != 0;
      goto LABEL_14;
    }

    v24 = sub_100025204();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [objc_opt_class() description];
      v26 = NSStringFromSelector(a2);
      *buf = 138543874;
      v29 = v25;
      v30 = 2114;
      v31 = v26;
      v32 = 1024;
      LODWORD(v33) = ParentEntry;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: assertion failure: (kr == kIOReturnSuccess) && bridgeService -- failed to get manager's parent: 0x%08x", buf, 0x1Cu);
    }

    abort_report_np();
LABEL_46:
    __break(1u);
  }

  v23 = sub_100025204();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_100029B08();
  }

  CFProperty = 0;
  v8 = 0;
  v9 = 0;
  v14 = 0;
LABEL_15:
  v15 = sub_100025204();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [objc_opt_class() description];
    v17 = NSStringFromSelector(a2);
    v18 = v17;
    v19 = "no";
    *buf = 138544130;
    v30 = 2114;
    if (v14)
    {
      v20 = "yes";
    }

    else
    {
      v20 = "no";
    }

    v29 = v16;
    v31 = v17;
    if (v9)
    {
      v19 = "yes";
    }

    v32 = 2080;
    v33 = v20;
    v34 = 2080;
    v35 = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: hasHardware: %s, builtIn: %s", buf, 0x2Au);
  }

  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  if (parent)
  {
    IOObjectRelease(parent);
    parent = 0;
  }

  if (v8)
  {
    IOObjectRelease(v8);
  }

  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  *a3 = v9;
  return v14;
}

+ (id)stateAsString:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_10005C890[a3 - 1];
  }
}

+ (id)bootModeAsString:(int64_t)a3
{
  v3 = @"Normal";
  if (a3 == 1)
  {
    v3 = @"LowPower";
  }

  if (a3 == 2)
  {
    return @"LowPowerDebug";
  }

  else
  {
    return v3;
  }
}

- (BOOL)bootInMode:(int64_t)a3 lpmData:(id)a4 powerTablePaths:(id)a5 failureReason:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v11 = sub_100025204();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [objc_opt_class() description];
    v13 = NSStringFromSelector(a2);
    v14 = [objc_opt_class() bootModeAsString:a3];
    v15 = v14;
    v16 = "yes";
    *buf = 138544130;
    v62 = 2114;
    v61 = v12;
    if (!v9)
    {
      v16 = "no";
    }

    v63 = v13;
    v64 = 2112;
    v65 = v14;
    v66 = 2080;
    v67 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: mode %@, lpmData %s", buf, 0x2Au);
  }

  v17 = &stru_10005D038;
  if ([(Chip *)self state]!= 1)
  {
    v37 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
    *a6 = [NSString stringWithFormat:@"wrongState:%@", v37];

    v38 = sub_100025204();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v41 = [objc_opt_class() description];
      v42 = NSStringFromSelector(a2);
      v43 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      *buf = 138543874;
      v61 = v41;
      v62 = 2114;
      v63 = v42;
      v64 = 2112;
      v65 = v43;
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", buf, 0x20u);
    }

    v21 = 0;
    v17 = &stru_10005D038;
    goto LABEL_38;
  }

  *&v47 = sub_100009CC0;
  LODWORD(v48) = 2;
  *&v52 = self->_controller;
  if (![(Chip *)self builtIn])
  {
    *(&v48 + 1) = "/usr/local/standalone/firmware/Centauri/ftab.bin";
  }

  if (a3 == 1)
  {
    DWORD2(v49) = 1;
  }

  v18 = [objc_opt_class() getCentauriBootArgs];
  v19 = v18;
  if (!v18)
  {
    v21 = 0;
    *a6 = @"bootArgQueryFailure";
    goto LABEL_38;
  }

  if (a3 == 2)
  {
    v59[0] = v18;
    v59[1] = @"lpm-firmware=1";
    v20 = [NSArray arrayWithObjects:v59 count:2];
    v21 = [v20 componentsJoinedByString:@" "];
  }

  else
  {
    v21 = v18;
  }

  if ([v21 length])
  {
    v57 = @"bootargs";
    v58 = v21;
    *&v49 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  }

  if (v9)
  {
    *(&v51 + 1) = v9;
  }

  if (v10)
  {
    *(&v52 + 1) = v10;
  }

  v22 = +[NSUserDefaults standardUserDefaults];
  v23 = [v22 BOOLForKey:@"AlwaysDumpBooterDiagnostics"];

  v24 = +[NSUserDefaults standardUserDefaults];
  v25 = [v24 BOOLForKey:@"DumpBooterDiagnosticsOnFailure"];

  if ((v23 | v25))
  {
    BYTE8(v50) = v23;
    v26 = NSTemporaryDirectory();
    v27 = v26;
    *&v51 = [v26 UTF8String];
  }

  self->_booted = 1;
  objc_storeStrong(&self->_activeBootArgs, v21);
  objc_storeStrong(&self->_activePowerTablePaths, a5);
  v28 = objc_autoreleasePoolPush();
  v29 = CentauriBooterCreate();
  if (v29)
  {
    if (CentauriBooterBootChip())
    {
      CFRelease(v29);
      v29 = 0;
      v30 = 1;
      goto LABEL_25;
    }

    *a6 = @"bootFailure";
    v40 = sub_100025204();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029BE0();
    }
  }

  else
  {
    *a6 = @"booterCreateFailure";
    v40 = sub_100025204();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029C28();
    }

    v29 = 0;
  }

  v30 = 0;
LABEL_25:
  v17 = &stru_10005D038;
  objc_autoreleasePoolPop(v28);
  if (!v30)
  {
    goto LABEL_30;
  }

  cchiInterface = self->_cchiInterface;
  v46 = &stru_10005D038;
  v32 = [(CCHIInterface *)cchiInterface start:&v46];
  v17 = v46;
  if (v32)
  {
    [(Chip *)self setState:3];
    v33 = sub_100025204();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [objc_opt_class() description];
      v35 = NSStringFromSelector(a2);
      *v53 = 138543618;
      v54 = v34;
      v55 = 2114;
      v56 = v35;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: success", v53, 0x16u);
    }

    LOBYTE(v30) = 1;
LABEL_30:
    if (!v29)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  [NSString stringWithFormat:@"interfaceStartFailure:%@", v17];
  *a6 = LOBYTE(v30) = 0;
  if (v29)
  {
LABEL_31:
    CFRelease(v29);
  }

LABEL_32:
  if ((v30 & 1) == 0)
  {
LABEL_38:
    [(Chip *)self setState:2];
    v36 = 0;
    goto LABEL_39;
  }

  v36 = 1;
LABEL_39:

  return v36;
}

- (id)ping
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v15 = 138543618;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v15, 0x16u);
  }

  if ([(Chip *)self state]!= 3)
  {
    v8 = sub_100025204();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_opt_class() description];
      v13 = NSStringFromSelector(a2);
      v14 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      v15 = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", &v15, 0x20u);
    }

    goto LABEL_14;
  }

  v7 = [(CCHIInterface *)self->_cchiInterface hello];
  if (!v7)
  {
    v8 = sub_100025204();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029C70();
    }

LABEL_14:
    v7 = 0;
    goto LABEL_7;
  }

  v8 = sub_100025204();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_opt_class() description];
    v10 = NSStringFromSelector(a2);
    v15 = 138543874;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: success: '%{public}@'", &v15, 0x20u);
  }

LABEL_7:

  return v7;
}

- (BOOL)reset
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v16 = 138543618;
    v17 = v5;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v16, 0x16u);
  }

  if ([(Chip *)self state]== 5)
  {
    v10 = sub_100025204();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [objc_opt_class() description];
      v12 = NSStringFromSelector(a2);
      v13 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      v16 = 138543874;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", &v16, 0x20u);
    }
  }

  else if (self->_controller)
  {
    [(CCHIInterface *)self->_cchiInterface stop];
    controller = self->_controller;
    v8 = CentauriControllerReset();
    if (!v8)
    {
      [(Chip *)self setState:1];
      return 1;
    }

    v10 = sub_100025204();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = [objc_opt_class() description];
      v15 = NSStringFromSelector(a2);
      v16 = 138543874;
      v17 = v14;
      v18 = 2114;
      v19 = v15;
      v20 = 1024;
      LODWORD(v21) = v8;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: reset failed: 0x%08x", &v16, 0x1Cu);
    }
  }

  else
  {
    v10 = sub_100025204();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029CB8();
    }
  }

  return 0;
}

- (BOOL)collectLogsWithReason:(id)a3 fatal:(BOOL)a4 useFWReason:(BOOL)a5 lpm:(BOOL)a6
{
  v6 = a4;
  v9 = a3;
  v10 = sub_100025204();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    v13 = v12;
    v14 = "nonfatal";
    *buf = 138544130;
    v42 = v11;
    v43 = 2114;
    if (v6)
    {
      v14 = "fatal";
    }

    v44 = v12;
    v45 = 2080;
    v46 = v14;
    v47 = 2114;
    v48[0] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %s: '%{public}@'", buf, 0x2Au);
  }

  if ([(Chip *)self state]== 5)
  {
    v19 = sub_100025204();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [objc_opt_class() description];
      v21 = NSStringFromSelector(a2);
      v22 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      *buf = 138543874;
      v42 = v20;
      v43 = 2114;
      v44 = v21;
      v45 = 2112;
      v46 = v22;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", buf, 0x20u);
    }

    goto LABEL_22;
  }

  if (!self->_controller)
  {
    v19 = sub_100025204();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029CB8();
    }

    goto LABEL_22;
  }

  v15 = v9;
  [v9 UTF8String];
  v16 = CentauriControllerCollectLogsWithOptions();
  if (v16)
  {
    v23 = sub_100025204();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v34 = [objc_opt_class() description];
      v35 = NSStringFromSelector(a2);
      v36 = v9;
      v37 = [v9 UTF8String];
      v38 = "nonfatal";
      *buf = 138544386;
      v43 = 2114;
      v42 = v34;
      if (v6)
      {
        v38 = "fatal";
      }

      v44 = v35;
      v45 = 2080;
      v46 = v38;
      v47 = 1024;
      LODWORD(v48[0]) = v16;
      WORD2(v48[0]) = 2080;
      *(v48 + 6) = v37;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: %s log collection failed: 0x%08x: '%s'", buf, 0x30u);
    }

    if (!sub_10002529C())
    {
      goto LABEL_23;
    }

    v24 = v9;
    [v9 UTF8String];
    v32 = "nonfatal";
    if (v6)
    {
      v32 = "fatal";
    }

    v33 = sub_100030D78("%s log collection failed: 0x%08x: '%s'", v25, v26, v27, v28, v29, v30, v31, v32);
    if (!v33)
    {
LABEL_23:
      v17 = 0;
      if (!v6)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v19 = sub_100025204();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v39 = [objc_opt_class() description];
      v40 = NSStringFromSelector(a2);
      *buf = 138543874;
      v42 = v39;
      v43 = 2114;
      v44 = v40;
      v45 = 1024;
      LODWORD(v46) = v33;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to generate simulated crash log: %{darwin.errno}d", buf, 0x1Cu);
    }

LABEL_22:

    goto LABEL_23;
  }

  v17 = 1;
  if (v6)
  {
LABEL_9:
    [(Chip *)self handleCrashlogAvailable];
  }

LABEL_10:

  return v17;
}

- (int)powerCycle
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_100029D00();
  }

  sub_100029D54(v4, self, &v6, &v7);
  return v7;
}

- (int)powerOff
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v16 = 138543618;
    v17 = v5;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v16, 0x16u);
  }

  if ([(Chip *)self state]== 5)
  {
    v9 = sub_100025204();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = [objc_opt_class() description];
      v12 = NSStringFromSelector(a2);
      v13 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      v16 = 138543874;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", &v16, 0x20u);
    }

    return -536870212;
  }

  else
  {
    [(CCHIInterface *)self->_cchiInterface stop];
    [(Chip *)self destroyController];
    v7 = CentauriControllerSetChipPower();
    if (v7)
    {
      v10 = sub_100025204();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = [objc_opt_class() description];
        v15 = NSStringFromSelector(a2);
        v16 = 138543874;
        v17 = v14;
        v18 = 2114;
        v19 = v15;
        v20 = 1024;
        LODWORD(v21) = v7;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: power off failed: 0x%08x", &v16, 0x1Cu);
      }
    }

    else
    {
      [(Chip *)self setState:5];
      return 0;
    }
  }

  return v7;
}

- (int)powerOn:(id *)a3
{
  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    *buf = 138543618;
    v30 = v7;
    v31 = 2114;
    v32 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  if ([(Chip *)self state]!= 5)
  {
    v12 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
    *a3 = [NSString stringWithFormat:@"wrongState:%@", v12];

    v13 = sub_100025204();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v21 = [objc_opt_class() description];
      v22 = NSStringFromSelector(a2);
      v23 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      *buf = 138543874;
      v30 = v21;
      v31 = 2114;
      v32 = v22;
      v33 = 2112;
      v34 = v23;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", buf, 0x20u);
    }

    LODWORD(v9) = -536870212;
    goto LABEL_14;
  }

  v9 = CentauriControllerSetChipPower();
  if (v9)
  {
    *a3 = [NSString stringWithFormat:@"setChipPowerOnFailure:0x%08x", v9];
    v14 = sub_100025204();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v24 = [objc_opt_class() description];
      v25 = NSStringFromSelector(a2);
      *buf = 138543874;
      v30 = v24;
      v31 = 2114;
      v32 = v25;
      v33 = 1024;
      LODWORD(v34) = v9;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: power on failed: 0x%08x", buf, 0x1Cu);
    }

LABEL_14:
    v10 = &stru_10005D038;
    goto LABEL_7;
  }

  v28 = &stru_10005D038;
  LODWORD(v9) = [(Chip *)self createController:&v28];
  v10 = v28;
  if (v9)
  {
    *a3 = [NSString stringWithFormat:@"createControllerFailure:%@", v10];
    v15 = sub_100025204();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [objc_opt_class() description];
      v17 = NSStringFromSelector(a2);
      *buf = 138543618;
      v30 = v16;
      v31 = 2114;
      v32 = v17;
      v18 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: powering off again", buf, 0x16u);
    }

    v19 = CentauriControllerSetChipPower();
    if (v19)
    {
      v20 = sub_100025204();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v26 = [objc_opt_class() description];
        v27 = NSStringFromSelector(a2);
        *buf = 138543874;
        v30 = v26;
        v31 = 2114;
        v32 = v27;
        v33 = 1024;
        LODWORD(v34) = v19;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: power off failed: 0x%08x", buf, 0x1Cu);
      }

      *a3 = [*a3 stringByAppendingFormat:@", setChipPowerOffFailure:0x%08x", v19];
    }
  }

  else
  {
    [(Chip *)self setState:1];
    LODWORD(v9) = 0;
  }

LABEL_7:

  return v9;
}

- (id)getCrashlogs
{
  if ([(Chip *)self state]== 5)
  {
    v6 = sub_100025204();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_opt_class() description];
      v13 = NSStringFromSelector(a2);
      v14 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      *buf = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", buf, 0x20u);
    }
  }

  else if (self->_controller)
  {
    Crashlogs = CentauriControllerGetCrashlogs();
    v5 = Crashlogs;
    if (Crashlogs == -536870160)
    {
      v6 = sub_100025204();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [objc_opt_class() description];
        v8 = NSStringFromSelector(a2);
        *buf = 138543618;
        v16 = v7;
        v17 = 2114;
        v18 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: no crashlogs found", buf, 0x16u);
      }
    }

    else if (Crashlogs)
    {
      v6 = sub_100025204();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = [objc_opt_class() description];
        v11 = NSStringFromSelector(a2);
        *buf = 138543874;
        v16 = v10;
        v17 = 2114;
        v18 = v11;
        v19 = 1024;
        LODWORD(v20) = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: get crashlogs failed: 0x%08x", buf, 0x1Cu);
      }
    }

    else
    {
      v6 = sub_100025204();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_100029DC4();
      }
    }
  }

  else
  {
    v6 = sub_100025204();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029CB8();
    }
  }

  return 0;
}

- (id)shellCommand:(id)a3
{
  v5 = a3;
  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v17 = 138543874;
    v18 = v7;
    v19 = 2114;
    v20 = v8;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %@", &v17, 0x20u);
  }

  if ([(Chip *)self state]!= 3)
  {
    v10 = sub_100025204();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = [objc_opt_class() description];
      v15 = NSStringFromSelector(a2);
      v16 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      v17 = 138543874;
      v18 = v14;
      v19 = 2114;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", &v17, 0x20u);
    }

    goto LABEL_14;
  }

  v9 = [(CCHIInterface *)self->_cchiInterface shell:v5];
  if (!v9)
  {
    v10 = sub_100025204();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029C70();
    }

LABEL_14:
    v9 = 0;
    goto LABEL_7;
  }

  v10 = sub_100025204();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    v17 = 138543874;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: success: '%{public}@'", &v17, 0x20u);
  }

LABEL_7:

  return v9;
}

- (id)getPMUFaultInfo
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v15 = 138543618;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v15, 0x16u);
  }

  if ([(Chip *)self state]!= 3)
  {
    v8 = sub_100025204();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_opt_class() description];
      v13 = NSStringFromSelector(a2);
      v14 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      v15 = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", &v15, 0x20u);
    }

    goto LABEL_14;
  }

  v7 = [(CCHIInterface *)self->_cchiInterface getPMUFaultInfo];
  if (!v7)
  {
    v8 = sub_100025204();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029C70();
    }

LABEL_14:
    v7 = 0;
    goto LABEL_7;
  }

  v8 = sub_100025204();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_opt_class() description];
    v10 = NSStringFromSelector(a2);
    v15 = 138543874;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: success: '%{public}@'", &v15, 0x20u);
  }

LABEL_7:

  return v7;
}

- (id)getSiKPublicKey
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v15 = 138543618;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v15, 0x16u);
  }

  if ([(Chip *)self state]!= 3)
  {
    v8 = sub_100025204();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_opt_class() description];
      v13 = NSStringFromSelector(a2);
      v14 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      v15 = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", &v15, 0x20u);
    }

    goto LABEL_14;
  }

  v7 = [(CCHIInterface *)self->_cchiInterface getSiKPublicKey];
  if (!v7)
  {
    v8 = sub_100025204();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029C70();
    }

LABEL_14:
    v7 = 0;
    goto LABEL_7;
  }

  v8 = sub_100025204();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_opt_class() description];
    v10 = NSStringFromSelector(a2);
    v15 = 138543874;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: success: '%{public}@'", &v15, 0x20u);
  }

LABEL_7:

  return v7;
}

- (id)getFirmwareBootTimestamps
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v15 = 138543618;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v15, 0x16u);
  }

  if ([(Chip *)self state]!= 3)
  {
    v8 = sub_100025204();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_opt_class() description];
      v13 = NSStringFromSelector(a2);
      v14 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      v15 = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", &v15, 0x20u);
    }

    goto LABEL_14;
  }

  v7 = [(CCHIInterface *)self->_cchiInterface getBootPerformanceStats];
  if (!v7)
  {
    v8 = sub_100025204();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029C70();
    }

LABEL_14:
    v7 = 0;
    goto LABEL_7;
  }

  v8 = sub_100025204();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_opt_class() description];
    v10 = NSStringFromSelector(a2);
    v15 = 138543618;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: success", &v15, 0x16u);
  }

LABEL_7:

  return v7;
}

- (BOOL)storeFirmwareBootTimestamps:(id)a3
{
  v23 = a3;
  v3 = sub_100025204();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [objc_opt_class() description];
    v5 = NSStringFromSelector(a2);
    *buf = 138543618;
    v29 = v4;
    v30 = 2114;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v23;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v8)
  {
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v7 objectForKeyedSubscript:v11];
        v13 = [v12 longLongValue];

        v14 = [NSNumber numberWithUnsignedLongLong:1000 * v13];
        [v6 setObject:v14 forKey:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v8);
  }

  v15 = CentauriControllerSendFirmwareBootTimestamps();
  if (v15)
  {
    v16 = sub_100025204();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = [objc_opt_class() description];
      v21 = NSStringFromSelector(a2);
      *buf = 138543874;
      v29 = v20;
      v30 = 2114;
      v31 = v21;
      v32 = 1024;
      v33 = v15;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed: 0x%08x", buf, 0x1Cu);
    }
  }

  else
  {
    v16 = sub_100025204();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [objc_opt_class() description];
      v18 = NSStringFromSelector(a2);
      *buf = 138543618;
      v29 = v17;
      v30 = 2114;
      v31 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: success", buf, 0x16u);
    }
  }

  return v15 == 0;
}

- (id)getHostBootTimestamps
{
  v3 = sub_100025204();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [objc_opt_class() description];
    v5 = NSStringFromSelector(a2);
    *buf = 138543618;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  BootTimestamps = CentauriControllerGetBootTimestamps();
  v7 = sub_100025204();
  v8 = v7;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_opt_class() description];
    v11 = NSStringFromSelector(a2);
    *buf = 138543874;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    v16 = 1024;
    v17 = BootTimestamps;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed: 0x%08x", buf, 0x1Cu);
  }

  return 0;
}

- (id)preflightQuery
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    *buf = 138543618;
    v19 = v5;
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  if ([(Chip *)self state]!= 3 && [(Chip *)self state]!= 1)
  {
    v8 = sub_100025204();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = [objc_opt_class() description];
      v15 = NSStringFromSelector(a2);
      v16 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      *buf = 138543874;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", buf, 0x20u);
    }

    goto LABEL_20;
  }

  if ([(Chip *)self state]== 3)
  {
    [(CCHIInterface *)self->_cchiInterface stop];
  }

  [(Chip *)self state];
  v7 = CentauriBooterCopyPreflightParameters();
  if (!v7)
  {
    v8 = sub_100025204();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029E0C();
    }

LABEL_20:
    v11 = 0;
    goto LABEL_11;
  }

  v8 = sub_100025204();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_opt_class() description];
    v10 = NSStringFromSelector(a2);
    *buf = 138543874;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: success: %{public}@", buf, 0x20u);
  }

  v11 = v7;
LABEL_11:

  if ([(Chip *)self state]== 3)
  {
    cchiInterface = self->_cchiInterface;
    v17 = &stru_10005D038;
    [(CCHIInterface *)cchiInterface start:&v17];
  }

  return v11;
}

- (void)setHardwareHealth:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100025204();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_opt_class() description];
    v7 = NSStringFromSelector(a2);
    v12 = 138543874;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    v16 = 1024;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: status: %d", &v12, 0x1Cu);
  }

  v8 = CentauriControllerSetHardwareHealth();
  if (v8)
  {
    v9 = sub_100025204();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [objc_opt_class() description];
      v11 = NSStringFromSelector(a2);
      v12 = 138543874;
      v13 = v10;
      v14 = 2114;
      v15 = v11;
      v16 = 1024;
      v17 = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed: 0x%08x", &v12, 0x1Cu);
    }
  }
}

- (void)log
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v7 = [objc_opt_class() stateAsString:self->_state];
    hasHardware = self->_hasHardware;
    hasFirmware = self->_hasFirmware;
    builtIn = self->_builtIn;
    controller = self->_controller;
    v22 = 138545154;
    v23 = v5;
    v24 = 2114;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    v28 = 1024;
    v29 = hasHardware;
    v30 = 1024;
    v31 = hasFirmware;
    v32 = 1024;
    v33 = builtIn;
    v34 = 1024;
    v35 = controller != 0;
    v36 = 2048;
    v37 = [(Chip *)self driverInstance];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: state %@, HW %u, FW %u, builtin %u, controller %u, driver 0x%llx", &v22, 0x42u);
  }

  v12 = sub_100025204();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [objc_opt_class() description];
    v14 = NSStringFromSelector(a2);
    v15 = v14;
    if (self->_booted)
    {
      activeBootArgs = self->_activeBootArgs;
    }

    else
    {
      activeBootArgs = @"unknown";
    }

    v22 = 138543874;
    v23 = v13;
    v24 = 2114;
    v25 = v14;
    v26 = 2114;
    v27 = activeBootArgs;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: active firmware boot-args: %{public}@", &v22, 0x20u);
  }

  v17 = sub_100025204();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [objc_opt_class() description];
    v19 = NSStringFromSelector(a2);
    v20 = v19;
    if (self->_booted)
    {
      activePowerTablePaths = self->_activePowerTablePaths;
    }

    else
    {
      activePowerTablePaths = @"unknown";
    }

    v22 = 138543874;
    v23 = v18;
    v24 = 2114;
    v25 = v19;
    v26 = 2114;
    v27 = activePowerTablePaths;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: active power table paths: %{public}@", &v22, 0x20u);
  }

  [(CCHIInterface *)self->_cchiInterface log];
}

- (int)createController:(id *)a3
{
  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    *buf = 138543618;
    v25 = v7;
    v26 = 2114;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000EA60;
  v23[3] = &unk_10005C848;
  v23[4] = self;
  v9 = objc_retainBlock(v23);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000EA78;
  v22[3] = &unk_10005C870;
  v22[4] = self;
  v10 = objc_retainBlock(v22);
  if (self->_controller)
  {
    *a3 = @"alreadyCreated";
    v17 = sub_100025204();
    LODWORD(v11) = -536870212;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029E54();
    }
  }

  else
  {
    v11 = CentauriControllerCreateWithParameters();
    if (v11 || !self->_controller)
    {
      *a3 = [NSString stringWithFormat:@"createFailure:0x%08x", v11];
      v17 = sub_100025204();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_100029E9C();
      }
    }

    else
    {
      queue = self->_queue;
      v11 = CentauriControllerRegisterUniqueErrorHandlerWithQueue();
      if (v11)
      {
        *a3 = [NSString stringWithFormat:@"registerErrorHandlerFailure:0x%08x", v11];
        v17 = sub_100025204();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = [objc_opt_class() description];
          v19 = NSStringFromSelector(a2);
          *buf = 138543874;
          v25 = v18;
          v26 = 2114;
          v27 = v19;
          v28 = 1024;
          v29 = v11;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to register error handler: 0x%08x", buf, 0x1Cu);
        }
      }

      else
      {
        controller = self->_controller;
        v14 = self->_queue;
        v11 = CentauriControllerRegisterCrashlogHandler();
        if (!v11)
        {
          v15 = 0;
          goto LABEL_9;
        }

        *a3 = [NSString stringWithFormat:@"registerCrashlogHandlerFailure:0x%08x", v11];
        v17 = sub_100025204();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v20 = [objc_opt_class() description];
          v21 = NSStringFromSelector(a2);
          *buf = 138543874;
          v25 = v20;
          v26 = 2114;
          v27 = v21;
          v28 = 1024;
          v29 = v11;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to register crashlog handler: 0x%08x", buf, 0x1Cu);
        }
      }
    }
  }

  [(Chip *)self destroyController];
  if (v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = -536870212;
  }

LABEL_9:

  return v15;
}

- (int64_t)getChipState
{
  if ([(Chip *)self state]!= 5)
  {
    if (self->_controller)
    {
      ChipState = CentauriControllerGetChipState();
      if (!ChipState)
      {
        v4 = 0;
        v6 = sub_100025204();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [objc_opt_class() description];
          v8 = NSStringFromSelector(a2);
          v9 = [objc_opt_class() stateAsString:0];
          *buf = 138544130;
          v14 = v7;
          v15 = 2114;
          v16 = v8;
          v17 = 1024;
          v18 = 7;
          v19 = 2112;
          v20 = v9;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %d -> %@", buf, 0x26u);
        }

        goto LABEL_7;
      }

      v6 = sub_100025204();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v11 = [objc_opt_class() description];
        v12 = NSStringFromSelector(a2);
        *buf = 138543874;
        v14 = v11;
        v15 = 2114;
        v16 = v12;
        v17 = 1024;
        v18 = ChipState;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: get chip state failed: 0x%08x", buf, 0x1Cu);
      }
    }

    else
    {
      v6 = sub_100025204();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_100029CB8();
      }
    }

    v4 = 0;
LABEL_7:

    return v4;
  }

  return 5;
}

- (void)destroyController
{
  if (self->_controller)
  {
    v4 = sub_100025204();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [objc_opt_class() description];
      v6 = NSStringFromSelector(a2);
      v8 = 138543618;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v8, 0x16u);
    }

    controller = self->_controller;
    CentauriControllerFree();
    self->_controller = 0;
  }
}

- (void)handleCrashlogAvailable
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = sub_100025204();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_opt_class() description];
    v7 = NSStringFromSelector(a2);
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v8, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained chipHasCrashlogAvailable:self];
  }
}

- (unint64_t)driverInstance
{
  if (!self->_controller)
  {
    v5 = sub_100025204();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029CB8();
    }

    goto LABEL_8;
  }

  CurrentDriverInstance = CentauriControllerGetCurrentDriverInstance();
  if (CurrentDriverInstance)
  {
    v5 = sub_100025204();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_opt_class() description];
      v7 = NSStringFromSelector(a2);
      *buf = 138543874;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      v12 = 1024;
      v13 = CurrentDriverInstance;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to get driver instance: 0x%08x", buf, 0x1Cu);
    }

LABEL_8:
  }

  return 0;
}

@end