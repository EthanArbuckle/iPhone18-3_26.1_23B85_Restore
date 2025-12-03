@interface ChipManager
+ (BOOL)isErrorFatalFromSource:(unsigned int)source errorCode:(unsigned int)code arg:(unint64_t)arg;
+ (BOOL)shouldHaltForError:(id)error;
+ (BOOL)shouldPanicForError:(id)error;
+ (BOOL)shouldUseFWReasonForErrorFromSource:(unsigned int)source errorCode:(unsigned int)code arg:(unint64_t)arg;
+ (id)centauriDebugErrorCodeAsString:(int)string;
+ (id)controllerErrorCodeAsString:(int)string;
+ (id)errorSourceAsString:(int)string;
+ (id)linkTrainingTimeoutArgAsString:(int)string;
+ (id)subsystemIDAsString:(int)string;
+ (void)panicWithMessage:(id)message;
- (BOOL)bootChip;
- (BOOL)bootChipInMode:(int64_t)mode withLPMData:(id)data bootAttempts:(unint64_t)attempts failureReason:(id *)reason;
- (BOOL)handleChipBooted;
- (BOOL)readyForNewPowerTableValidationWithReason:(id *)reason;
- (BOOL)validateNewPowerTables:(id *)tables;
- (ChipManager)initWithQueue:(id)queue;
- (id)bootPerformanceDataForHostTimestamps:(id)timestamps firmwareTimestamps:(id)firmwareTimestamps;
- (id)contextForAnalytics;
- (void)activate;
- (void)castPowerTableVoteForSession:(id)session client:(int64_t)client vote:(BOOL)vote completion:(id)completion;
- (void)checkForNewPowerTables:(id)tables;
- (void)chipHasCrashlogAvailable:(id)available;
- (void)chipStateDidChangeFrom:(int64_t)from to:(int64_t)to;
- (void)collectLogs:(id)logs fatal:(BOOL)fatal completion:(id)completion;
- (void)createPowerAssertion;
- (void)createTransaction;
- (void)dealloc;
- (void)getPMUFaultInfo:(id)info;
- (void)getPowerStats:(BOOL)stats completion:(id)completion;
- (void)getSiKPublicKey:(id)key;
- (void)handleFatalError:(id)error;
- (void)helloCommand:(id)command;
- (void)invalidate;
- (void)log;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)preflightQuery:(id)query;
- (void)processBootPerformanceStats;
- (void)rawCommand:(id)command gid:(unsigned __int8)gid oid:(unsigned __int8)oid completion:(id)completion;
- (void)rebootIntoLowPowerMode:(id)mode debugMode:(BOOL)debugMode completion:(id)completion;
- (void)releasePowerAssertion;
- (void)releaseTransaction;
- (void)reloadPowerTables;
- (void)resetChip;
- (void)setActivateRetryCount:(unint64_t)count;
- (void)setBootRetryCount:(unint64_t)count;
- (void)setPowerTableEvaluationReadinessForSession:(id)session client:(int64_t)client ready:(BOOL)ready completion:(id)completion;
- (void)shellCommand:(id)command completion:(id)completion;
@end

@implementation ChipManager

- (ChipManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v53.receiver = self;
  v53.super_class = ChipManager;
  v7 = [(ChipManager *)&v53 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_30;
  }

  objc_storeStrong(&v7->_dispatchQueue, queue);
  v9 = [[Chip alloc] initWithQueue:queueCopy delegate:v8];
  chip = v8->_chip;
  v8->_chip = v9;

  v8->_hasHardware = [(Chip *)v8->_chip hasHardware];
  v11 = +[NSFileManager defaultManager];
  v12 = NSTemporaryDirectory();
  v13 = [v12 stringByAppendingPathComponent:@"lpm.token"];
  v14 = [v11 fileExistsAtPath:v13];

  if (v14)
  {
    v15 = sub_100025204();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [objc_opt_class() description];
      v17 = NSStringFromSelector(a2);
      *buf = 138543618;
      v55 = v16;
      v56 = 2114;
      v57 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: starting up in low power mode", buf, 0x16u);
    }

    v8->_lowPowerMode = 1;
  }

  if ([(Chip *)v8->_chip builtIn])
  {
    v18 = [[PowerTableManager alloc] initWithQueue:queueCopy delegate:v8];
    powerTableManager = v8->_powerTableManager;
    v8->_powerTableManager = v18;
  }

  v20 = [[AnalyticsReporter alloc] initWithDelegate:v8];
  analyticsReporter = v8->_analyticsReporter;
  v8->_analyticsReporter = v20;

  if (_os_feature_enabled_impl())
  {
    v22 = sub_100025D88();
    v23 = +[NSUserDefaults standardUserDefaults];
    v24 = v23;
    if (v22)
    {
      [v23 removeObjectForKey:@"ActivateRetryCount"];

      v25 = +[NSUserDefaults standardUserDefaults];
      [v25 removeObjectForKey:@"ActivateRetryTimestamp"];

      v26 = +[NSUserDefaults standardUserDefaults];
      [v26 removeObjectForKey:@"BootRetryCount"];

      v27 = +[NSUserDefaults standardUserDefaults];
      [v27 removeObjectForKey:@"BootRetryTimestamp"];
    }

    else
    {
      v8->_activateRetryCount = [v23 integerForKey:@"ActivateRetryCount"];

      if (v8->_activateRetryCount)
      {
        v34 = +[NSUserDefaults standardUserDefaults];
        [v34 doubleForKey:@"ActivateRetryTimestamp"];
        v35 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
        previousActivateRetryDate = v8->_previousActivateRetryDate;
        v8->_previousActivateRetryDate = v35;
      }

      v37 = +[NSUserDefaults standardUserDefaults];
      v8->_bootRetryCount = [v37 integerForKey:@"BootRetryCount"];

      if (!v8->_bootRetryCount)
      {
        goto LABEL_18;
      }

      v27 = +[NSUserDefaults standardUserDefaults];
      [v27 doubleForKey:@"BootRetryTimestamp"];
      v38 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      previousBootRetryDate = v8->_previousBootRetryDate;
      v8->_previousBootRetryDate = v38;
    }

LABEL_18:
    v40 = sub_100025204();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [objc_opt_class() description];
      v42 = NSStringFromSelector(a2);
      activateRetryCount = v8->_activateRetryCount;
      v44 = v8->_previousActivateRetryDate;
      *buf = 138544130;
      v55 = v41;
      v56 = 2114;
      v57 = v42;
      v58 = 2048;
      v59 = activateRetryCount;
      v60 = 2112;
      v61 = v44;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: activate retry count %lu, previous date %@", buf, 0x2Au);
    }

    v28 = sub_100025204();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v29 = [objc_opt_class() description];
    v30 = NSStringFromSelector(a2);
    bootRetryCount = v8->_bootRetryCount;
    v46 = v8->_previousBootRetryDate;
    *buf = 138544130;
    v55 = v29;
    v56 = 2114;
    v57 = v30;
    v58 = 2048;
    v59 = bootRetryCount;
    v60 = 2112;
    v61 = v46;
    v31 = "%{public}@::%{public}@: boot retry count %lu, previous date %@";
    v32 = v28;
    v33 = 42;
    goto LABEL_22;
  }

  v28 = sub_100025204();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [objc_opt_class() description];
    v30 = NSStringFromSelector(a2);
    *buf = 138543618;
    v55 = v29;
    v56 = 2114;
    v57 = v30;
    v31 = "%{public}@::%{public}@: boot retry persistence disabled";
    v32 = v28;
    v33 = 22;
LABEL_22:
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
  }

LABEL_23:

  if (sub_100025BB0() && [(Chip *)v8->_chip builtIn])
  {
    v47 = sub_100025204();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [objc_opt_class() description];
      v49 = NSStringFromSelector(a2);
      hasFirmware = [(Chip *)v8->_chip hasFirmware];
      v51 = "failure";
      *buf = 138543874;
      v55 = v48;
      if (hasFirmware)
      {
        v51 = "success";
      }

      v56 = 2114;
      v57 = v49;
      v58 = 2080;
      v59 = v51;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: reporting software update %s", buf, 0x20u);
    }

    [(AnalyticsReporter *)v8->_analyticsReporter reportSoftwareUpdateSuccess:[(Chip *)v8->_chip hasFirmware] failureReason:&stru_10005D038];
  }

LABEL_30:

  return v8;
}

- (void)dealloc
{
  v3 = sub_100025204();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_opt_class() description];
    v5 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: assertion failure: NO -- unexpected dealloc", &v9, 0x16u);
  }

  v6 = abort_report_np();
  [(ChipManager *)v6 setActivateRetryCount:v7, v8];
}

- (void)setActivateRetryCount:(unint64_t)count
{
  self->_activateRetryCount = count;
  if (_os_feature_enabled_impl())
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = v4;
    if (count)
    {
      [v4 setInteger:count forKey:@"ActivateRetryCount"];

      v7 = +[NSUserDefaults standardUserDefaults];
      v6 = +[NSDate now];
      [v6 timeIntervalSinceReferenceDate];
      [v7 setDouble:@"ActivateRetryTimestamp" forKey:?];
    }

    else
    {
      [v4 removeObjectForKey:@"ActivateRetryCount"];

      v7 = +[NSUserDefaults standardUserDefaults];
      [v7 removeObjectForKey:@"ActivateRetryTimestamp"];
    }
  }
}

- (void)activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = sub_100025204();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [objc_opt_class() description];
    v5 = NSStringFromSelector(a2);
    activateRetryCount = self->_activateRetryCount;
    *buf = 138543874;
    v101 = v4;
    v102 = 2114;
    v103 = v5;
    v104 = 2048;
    v105 = activateRetryCount;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: deferred retry count %lu", buf, 0x20u);
  }

  if (_os_feature_enabled_impl())
  {
    if (self->_activateRetryCount >= 0x13)
    {
      v7 = sub_100025204();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10002F030();
      }

      if (!sub_10002529C())
      {
        goto LABEL_62;
      }

      v15 = sub_100030D78("retry limit previously reached", v8, v9, v10, v11, v12, v13, v14, v93);
      if (!v15)
      {
        goto LABEL_62;
      }

      v16 = v15;
      v17 = sub_100025204();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [objc_opt_class() description];
        v19 = NSStringFromSelector(a2);
        *buf = 138543874;
        v101 = v18;
        v102 = 2114;
        v103 = v19;
        v104 = 1024;
        LODWORD(v105) = v16;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to generate simulated crash log: %{darwin.errno}d", buf, 0x1Cu);
      }

LABEL_61:

LABEL_62:
      v22 = &stru_10005D038;
      goto LABEL_89;
    }

    v17 = [(NSDate *)self->_previousActivateRetryDate dateByAddingTimeInterval:600.0];
    [v17 timeIntervalSinceNow];
    if (v20 > 0.0)
    {
      v67 = v20;
      v68 = sub_100025204();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v69 = [objc_opt_class() description];
        v70 = NSStringFromSelector(a2);
        *buf = 138543874;
        v101 = v69;
        v102 = 2114;
        v103 = v70;
        v104 = 2112;
        v105 = v17;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: deferring until %@", buf, 0x20u);
      }

      v71 = dispatch_time(0, (v67 * 1000000000.0));
      dispatchQueue = self->_dispatchQueue;
      v99[0] = _NSConcreteStackBlock;
      v99[1] = 3221225472;
      v99[2] = sub_10001E484;
      v99[3] = &unk_10005C700;
      v99[4] = self;
      dispatch_after(v71, dispatchQueue, v99);
      goto LABEL_61;
    }
  }

  [(ChipManager *)self createPowerAssertion];
  [(ChipManager *)self createTransaction];
  v21 = 1;
  v22 = &stru_10005D038;
  while (1)
  {
    v23 = sub_100025204();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [objc_opt_class() description];
      v25 = NSStringFromSelector(a2);
      *buf = 138544130;
      v101 = v24;
      v102 = 2114;
      v103 = v25;
      v104 = 2048;
      v105 = v21;
      v106 = 2048;
      v107 = 3;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: attempt %lu of %lu", buf, 0x2Au);
    }

    chip = self->_chip;
    v98 = v22;
    v27 = [(Chip *)chip activate:&v98];
    v28 = v98;

    if (!v27)
    {
      v22 = v28;
      goto LABEL_21;
    }

    if ([(Chip *)self->_chip state]!= 5)
    {
      break;
    }

    v29 = self->_chip;
    v97 = &stru_10005D038;
    v30 = [(Chip *)v29 powerOn:&v97];
    v31 = v97;
    if (!v30)
    {
      goto LABEL_32;
    }

    v93 = v31;
    v22 = [NSString stringWithFormat:@"powerOnFailure:%@"];

LABEL_21:
    if (![(Chip *)self->_chip collectLogsWithReason:@"ActivateFailure" fatal:1 useFWReason:0 lpm:0])
    {
      v32 = sub_100025204();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v43 = [objc_opt_class() description];
        v44 = NSStringFromSelector(a2);
        *buf = 138543618;
        v101 = v43;
        v102 = 2114;
        v103 = v44;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: activate failure", buf, 0x16u);
      }

      if (sub_10002529C())
      {
        v40 = sub_100030D78("activate failure", v33, v34, v35, v36, v37, v38, v39, v93);
        if (v40)
        {
          v41 = v40;
          v42 = sub_100025204();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v94 = [objc_opt_class() description];
            v45 = NSStringFromSelector(a2);
            *buf = 138543874;
            v101 = v94;
            v102 = 2114;
            v103 = v45;
            v46 = v45;
            v104 = 1024;
            LODWORD(v105) = v41;
            _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to generate simulated crash log: %{darwin.errno}d", buf, 0x1Cu);
          }
        }
      }
    }

    if (++v21 == 4)
    {
      goto LABEL_33;
    }
  }

  v31 = &stru_10005D038;
LABEL_32:
  [(AnalyticsReporter *)self->_analyticsReporter reportActivateSuccess:1 afterAttempts:3 * self->_activateRetryCount + v21 failureReason:&stru_10005D038];
  [(ChipManager *)self setActivateRetryCount:0];
  self->_activated = 1;

  v22 = v28;
LABEL_33:
  if (!self->_activated)
  {
    [(ChipManager *)self setActivateRetryCount:self->_activateRetryCount + 1];
    if (self->_activateRetryCount > 0x12)
    {
      v52 = sub_100025204();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        sub_10002EEE0();
      }

      [(AnalyticsReporter *)self->_analyticsReporter reportActivateSuccess:0 afterAttempts:54 failureReason:v22];
    }

    else
    {
      if ([(Chip *)self->_chip builtIn]&& self->_activateRetryCount == 2)
      {
        [(Chip *)self->_chip setHardwareHealth:0];
      }

      v50 = dispatch_time(0, 600000000000);
      v51 = self->_dispatchQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001E48C;
      block[3] = &unk_10005C700;
      block[4] = self;
      dispatch_after(v50, v51, block);
    }

    if (self->_lowPowerMode)
    {
      goto LABEL_88;
    }

    if ([(Chip *)self->_chip state]== 5)
    {
      goto LABEL_88;
    }

    powerOff = [(Chip *)self->_chip powerOff];
    if (!powerOff)
    {
      goto LABEL_88;
    }

    v54 = powerOff;
    v55 = sub_100025204();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v89 = [objc_opt_class() description];
      v90 = NSStringFromSelector(a2);
      *buf = 138543874;
      v101 = v89;
      v102 = 2114;
      v103 = v90;
      v104 = 1024;
      LODWORD(v105) = v54;
      _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: power off failure: 0x%08x, power off reason: activate failure", buf, 0x1Cu);
    }

    if (!sub_10002529C())
    {
      goto LABEL_88;
    }

    v63 = sub_100030D78("power off failure: 0x%08x, power off reason: activate failure", v56, v57, v58, v59, v60, v61, v62, v54);
    if (!v63)
    {
      goto LABEL_88;
    }

    v64 = v63;
    v47 = sub_100025204();
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    v65 = [objc_opt_class() description];
    v66 = NSStringFromSelector(a2);
    *buf = 138543874;
    v101 = v65;
    v102 = 2114;
    v103 = v66;
    v104 = 1024;
    LODWORD(v105) = v64;
LABEL_57:
    _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to generate simulated crash log: %{darwin.errno}d", buf, 0x1Cu);

    goto LABEL_39;
  }

  [(PowerTableManager *)self->_powerTableManager activate];
  if ([(Chip *)self->_chip builtIn]&& ![(Chip *)self->_chip hasFirmware])
  {
    v75 = sub_100025204();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      sub_10002EF88();
    }

    [(Chip *)self->_chip setHardwareHealth:0];
    if ([(Chip *)self->_chip state]== 5)
    {
      goto LABEL_88;
    }

    if (self->_lowPowerMode)
    {
      goto LABEL_88;
    }

    powerOff2 = [(Chip *)self->_chip powerOff];
    if (!powerOff2)
    {
      goto LABEL_88;
    }

    v77 = powerOff2;
    v78 = sub_100025204();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      v91 = [objc_opt_class() description];
      v92 = NSStringFromSelector(a2);
      *buf = 138543874;
      v101 = v91;
      v102 = 2114;
      v103 = v92;
      v104 = 1024;
      LODWORD(v105) = v77;
      _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: power off failure: 0x%08x, power off reason: no firmware", buf, 0x1Cu);
    }

    if (!sub_10002529C())
    {
      goto LABEL_88;
    }

    v86 = sub_100030D78("power off failure: 0x%08x, power off reason: no firmware", v79, v80, v81, v82, v83, v84, v85, v77);
    if (!v86)
    {
      goto LABEL_88;
    }

    v87 = v86;
    v47 = sub_100025204();
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    v65 = [objc_opt_class() description];
    v66 = NSStringFromSelector(a2);
    *buf = 138543874;
    v101 = v65;
    v102 = 2114;
    v103 = v66;
    v104 = 1024;
    LODWORD(v105) = v87;
    goto LABEL_57;
  }

  [(Chip *)self->_chip addObserver:self forKeyPath:@"state" options:7 context:objc_opt_class()];
  if (!self->_lowPowerMode)
  {
    state = [(Chip *)self->_chip state];
    if (state > 2)
    {
      if (state == 3)
      {
        ping = [(Chip *)self->_chip ping];

        if (ping)
        {
          goto LABEL_88;
        }

        v74 = @"InitialPingFailed";
        goto LABEL_86;
      }

      if (state == 4)
      {
        [(ChipManager *)self handleFatalError:@"CCPUFWCrash" useFWReason:1];
        goto LABEL_88;
      }

      if (state != 5)
      {
        goto LABEL_88;
      }
    }

    else
    {
      if (!state)
      {
        v74 = @"UnknownInitialState";
LABEL_86:
        [(ChipManager *)self handleFatalError:v74];
        goto LABEL_88;
      }

      if (state != 1)
      {
        if (state != 2)
        {
          goto LABEL_88;
        }

        v74 = @"PartiallyBooted";
        goto LABEL_86;
      }
    }

    [(ChipManager *)self bootChip];
    goto LABEL_88;
  }

  v47 = sub_100025204();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = [objc_opt_class() description];
    v49 = NSStringFromSelector(a2);
    *buf = 138543618;
    v101 = v48;
    v102 = 2114;
    v103 = v49;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: skipping recovery because low power mode", buf, 0x16u);
  }

LABEL_39:

LABEL_88:
  [(ChipManager *)self releaseTransaction];
  [(ChipManager *)self releasePowerAssertion];
LABEL_89:
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

  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(Chip *)self->_chip removeObserver:self forKeyPath:@"state"];
  [(Chip *)self->_chip invalidate];
}

- (void)helloCommand:(id)command
{
  commandCopy = command;
  objc_initWeak(&location, self);
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

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E758;
  block[3] = &unk_10005CB68;
  objc_copyWeak(v13, &location);
  v13[1] = a2;
  block[4] = self;
  v12 = commandCopy;
  v10 = commandCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)rawCommand:(id)command gid:(unsigned __int8)gid oid:(unsigned __int8)oid completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v13 = sub_100025204();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [objc_opt_class() description];
    v15 = NSStringFromSelector(a2);
    *buf = 138543618;
    v27 = v14;
    v28 = 2114;
    v29 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EA00;
  block[3] = &unk_10005CB90;
  objc_copyWeak(v22, &location);
  block[4] = self;
  v20 = commandCopy;
  gidCopy = gid;
  oidCopy = oid;
  v22[1] = a2;
  v21 = completionCopy;
  v17 = completionCopy;
  v18 = commandCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
}

- (void)shellCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v9 = sub_100025204();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [objc_opt_class() description];
    v11 = NSStringFromSelector(a2);
    *buf = 138543618;
    v21 = v10;
    v22 = 2114;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001EC9C;
  v15[3] = &unk_10005CBB8;
  objc_copyWeak(v18, &location);
  v15[4] = self;
  v16 = commandCopy;
  v18[1] = a2;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = commandCopy;
  dispatch_async(dispatchQueue, v15);

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

- (void)getPowerStats:(BOOL)stats completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8 = sub_100025204();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_opt_class() description];
    v10 = NSStringFromSelector(a2);
    *buf = 138543618;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001EF14;
  v13[3] = &unk_10005CBE0;
  objc_copyWeak(v15, &location);
  v15[1] = a2;
  statsCopy = stats;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  dispatch_async(dispatchQueue, v13);

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

- (void)getPMUFaultInfo:(id)info
{
  infoCopy = info;
  objc_initWeak(&location, self);
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

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F17C;
  block[3] = &unk_10005CB68;
  objc_copyWeak(v13, &location);
  v13[1] = a2;
  block[4] = self;
  v12 = infoCopy;
  v10 = infoCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)collectLogs:(id)logs fatal:(BOOL)fatal completion:(id)completion
{
  logsCopy = logs;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v11 = sub_100025204();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [objc_opt_class() description];
    v13 = NSStringFromSelector(a2);
    *buf = 138543618;
    v25 = v12;
    v26 = 2114;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  logsCopy = [NSString stringWithFormat:@"ClientRequested-%@", logsCopy];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F43C;
  block[3] = &unk_10005CC08;
  objc_copyWeak(v21, &location);
  fatalCopy = fatal;
  block[4] = self;
  v19 = logsCopy;
  v21[1] = a2;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = logsCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

- (void)preflightQuery:(id)query
{
  queryCopy = query;
  objc_initWeak(&location, self);
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

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F6C0;
  block[3] = &unk_10005CB68;
  objc_copyWeak(v13, &location);
  v13[1] = a2;
  block[4] = self;
  v12 = queryCopy;
  v10 = queryCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)rebootIntoLowPowerMode:(id)mode debugMode:(BOOL)debugMode completion:(id)completion
{
  modeCopy = mode;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v11 = sub_100025204();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [objc_opt_class() description];
    v13 = NSStringFromSelector(a2);
    *buf = 138543618;
    v24 = v12;
    v25 = 2114;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FBAC;
  block[3] = &unk_10005CC08;
  objc_copyWeak(v20, &location);
  debugModeCopy = debugMode;
  block[4] = self;
  v18 = modeCopy;
  v20[1] = a2;
  v19 = completionCopy;
  v15 = completionCopy;
  v16 = modeCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

- (void)getSiKPublicKey:(id)key
{
  keyCopy = key;
  objc_initWeak(&location, self);
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

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FF9C;
  block[3] = &unk_10005CB68;
  objc_copyWeak(v13, &location);
  v13[1] = a2;
  block[4] = self;
  v12 = keyCopy;
  v10 = keyCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)checkForNewPowerTables:(id)tables
{
  tablesCopy = tables;
  objc_initWeak(&location, self);
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

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020218;
  block[3] = &unk_10005CB68;
  objc_copyWeak(v13, &location);
  v13[1] = a2;
  block[4] = self;
  v12 = tablesCopy;
  v10 = tablesCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)setPowerTableEvaluationReadinessForSession:(id)session client:(int64_t)client ready:(BOOL)ready completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v13 = sub_100025204();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [objc_opt_class() description];
    v15 = NSStringFromSelector(a2);
    *buf = 138543618;
    v26 = v14;
    v27 = 2114;
    v28 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100020648;
  v19[3] = &unk_10005CC30;
  objc_copyWeak(v22, &location);
  v19[4] = self;
  v20 = sessionCopy;
  v22[1] = a2;
  v22[2] = client;
  readyCopy = ready;
  v21 = completionCopy;
  v17 = completionCopy;
  v18 = sessionCopy;
  dispatch_async(dispatchQueue, v19);

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
}

- (void)castPowerTableVoteForSession:(id)session client:(int64_t)client vote:(BOOL)vote completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v13 = sub_100025204();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [objc_opt_class() description];
    v15 = NSStringFromSelector(a2);
    *buf = 138543618;
    v26 = v14;
    v27 = 2114;
    v28 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100020924;
  v19[3] = &unk_10005CC30;
  objc_copyWeak(v22, &location);
  v19[4] = self;
  v20 = sessionCopy;
  v22[1] = a2;
  v22[2] = client;
  voteCopy = vote;
  v21 = completionCopy;
  v17 = completionCopy;
  v18 = sessionCopy;
  dispatch_async(dispatchQueue, v19);

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
}

- (void)handleFatalError:(id)error
{
  chip = self->_chip;
  errorCopy = error;
  [(ChipManager *)self handleFatalError:errorCopy useFWReason:0 driverInstance:[(Chip *)chip driverInstance] collectLogsAndReset:1];
}

- (void)setBootRetryCount:(unint64_t)count
{
  self->_bootRetryCount = count;
  if (_os_feature_enabled_impl())
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = v4;
    if (count)
    {
      [v4 setInteger:count forKey:@"BootRetryCount"];

      v7 = +[NSUserDefaults standardUserDefaults];
      v6 = +[NSDate now];
      [v6 timeIntervalSinceReferenceDate];
      [v7 setDouble:@"BootRetryTimestamp" forKey:?];
    }

    else
    {
      [v4 removeObjectForKey:@"BootRetryCount"];

      v7 = +[NSUserDefaults standardUserDefaults];
      [v7 removeObjectForKey:@"BootRetryTimestamp"];
    }
  }
}

- (BOOL)bootChip
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    bootRetryCount = self->_bootRetryCount;
    *buf = 138543874;
    v83 = v5;
    v84 = 2114;
    v85 = v6;
    v86 = 2048;
    v87 = bootRetryCount;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: retry count %lu", buf, 0x20u);
  }

  if (_os_feature_enabled_impl())
  {
    if (self->_bootRetryCount >= 0x13)
    {
      v8 = sub_100025204();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10002F030();
      }

      if (!sub_10002529C())
      {
        goto LABEL_24;
      }

      v16 = sub_100030D78("retry limit previously reached", v9, v10, v11, v12, v13, v14, v15, v76);
      if (!v16)
      {
        goto LABEL_24;
      }

      v17 = v16;
      v18 = sub_100025204();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [objc_opt_class() description];
        v20 = NSStringFromSelector(a2);
        *buf = 138543874;
        v83 = v19;
        v84 = 2114;
        v85 = v20;
        v86 = 1024;
        LODWORD(v87) = v17;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to generate simulated crash log: %{darwin.errno}d", buf, 0x1Cu);
      }

LABEL_23:

LABEL_24:
      v29 = 0;
      v27 = &stru_10005D038;
      goto LABEL_25;
    }

    v18 = [(NSDate *)self->_previousBootRetryDate dateByAddingTimeInterval:600.0];
    [v18 timeIntervalSinceNow];
    if (v21 > 0.0)
    {
      v30 = v21;
      v31 = sub_100025204();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [objc_opt_class() description];
        v33 = NSStringFromSelector(a2);
        *buf = 138543874;
        v83 = v32;
        v84 = 2114;
        v85 = v33;
        v86 = 2112;
        v87 = v18;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: deferring until %@", buf, 0x20u);
      }

      v34 = dispatch_time(0, (v30 * 1000000000.0));
      dispatchQueue = self->_dispatchQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000217D4;
      block[3] = &unk_10005C700;
      block[4] = self;
      dispatch_after(v34, dispatchQueue, block);
      goto LABEL_23;
    }
  }

  if ([(Chip *)self->_chip state]== 5)
  {
    chip = self->_chip;
    v80 = &stru_10005D038;
    v23 = [(Chip *)chip powerOn:&v80];
    v24 = v80;
    v25 = v24;
    if (v23)
    {
      v37 = v23;
      v27 = [NSString stringWithFormat:@"powerOnFailure:%@", v24];
      v38 = sub_100025204();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v70 = [objc_opt_class() description];
        v71 = NSStringFromSelector(a2);
        *buf = 138543874;
        v83 = v70;
        v84 = 2114;
        v85 = v71;
        v86 = 1024;
        LODWORD(v87) = v37;
        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: power on failure: 0x%08x, power on reason: boot", buf, 0x1Cu);
      }

      if (sub_10002529C())
      {
        v46 = sub_100030D78("power on failure: 0x%08x, power on reason: boot", v39, v40, v41, v42, v43, v44, v45, v37);
        if (v46)
        {
          v47 = v46;
          v48 = sub_100025204();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v74 = [objc_opt_class() description];
            v75 = NSStringFromSelector(a2);
            *buf = 138543874;
            v83 = v74;
            v84 = 2114;
            v85 = v75;
            v86 = 1024;
            LODWORD(v87) = v47;
            _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to generate simulated crash log: %{darwin.errno}d", buf, 0x1Cu);
          }
        }
      }

      goto LABEL_34;
    }
  }

  v79 = &stru_10005D038;
  v26 = [(ChipManager *)self bootChipInMode:0 withLPMData:0 bootAttempts:3 failureReason:&v79];
  v27 = v79;
  if (v26)
  {
    if ([(Chip *)self->_chip builtIn])
    {
      v28 = self->_chip;
      v29 = 1;
      [(Chip *)v28 setHardwareHealth:1];
    }

    else
    {
      v29 = 1;
    }

    goto LABEL_25;
  }

LABEL_34:
  [(ChipManager *)self setBootRetryCount:self->_bootRetryCount + 1];
  if (self->_bootRetryCount > 0x12)
  {
    v51 = sub_100025204();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_10002EEE0();
    }

    analyticsReporter = self->_analyticsReporter;
    v53 = 3 * self->_bootRetryCount;
    v54 = [Chip bootModeAsString:0];
    [(AnalyticsReporter *)analyticsReporter reportBootSuccess:0 afterAttempts:v53 mode:v54 failureReason:v27];
  }

  else
  {
    if ([(Chip *)self->_chip builtIn]&& self->_bootRetryCount == 2)
    {
      [(Chip *)self->_chip setHardwareHealth:0];
    }

    objc_initWeak(buf, self);
    v49 = dispatch_time(0, 600000000000);
    v50 = self->_dispatchQueue;
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_10002EC10;
    v77[3] = &unk_10005CC58;
    objc_copyWeak(v78, buf);
    v77[4] = self;
    v78[1] = a2;
    dispatch_after(v49, v50, v77);
    objc_destroyWeak(v78);
    objc_destroyWeak(buf);
  }

  powerOff = [(Chip *)self->_chip powerOff];
  if (powerOff)
  {
    v56 = powerOff;
    v57 = sub_100025204();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v68 = [objc_opt_class() description];
      v69 = NSStringFromSelector(a2);
      *buf = 138543874;
      v83 = v68;
      v84 = 2114;
      v85 = v69;
      v86 = 1024;
      LODWORD(v87) = v56;
      _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: power off failure: 0x%08x, power off reason: boot failures", buf, 0x1Cu);
    }

    if (sub_10002529C())
    {
      v65 = sub_100030D78("power off failure: 0x%08x, power off reason: boot failures", v58, v59, v60, v61, v62, v63, v64, v56);
      if (v65)
      {
        v66 = v65;
        v67 = sub_100025204();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          v72 = [objc_opt_class() description];
          v73 = NSStringFromSelector(a2);
          *buf = 138543874;
          v83 = v72;
          v84 = 2114;
          v85 = v73;
          v86 = 1024;
          LODWORD(v87) = v66;
          _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to generate simulated crash log: %{darwin.errno}d", buf, 0x1Cu);
        }
      }
    }
  }

  v29 = 0;
LABEL_25:

  return v29;
}

- (BOOL)bootChipInMode:(int64_t)mode withLPMData:(id)data bootAttempts:(unint64_t)attempts failureReason:(id *)reason
{
  dataCopy = data;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_bootMode = mode;
  if (attempts)
  {
    if (mode)
    {
      v11 = @"LPMBootFailure";
    }

    else
    {
      v11 = @"BootFailure";
    }

    v12 = 1;
    while (1)
    {
      v13 = sub_100025204();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [objc_opt_class() description];
        v15 = NSStringFromSelector(a2);
        *buf = 138544130;
        v27 = v14;
        v28 = 2114;
        v29 = v15;
        v30 = 2048;
        v31 = v12;
        v32 = 2048;
        attemptsCopy = attempts;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: attempt %lu of %lu", buf, 0x2Au);
      }

      chip = self->_chip;
      pathsToUse = [(PowerTableManager *)self->_powerTableManager pathsToUse];
      if ([(Chip *)chip bootInMode:mode lpmData:dataCopy powerTablePaths:pathsToUse failureReason:reason])
      {
        handleChipBooted = [(ChipManager *)self handleChipBooted];

        if (handleChipBooted)
        {
          analyticsReporter = self->_analyticsReporter;
          v22 = v12 + self->_bootRetryCount * attempts;
          v23 = [Chip bootModeAsString:mode];
          v24 = 1;
          [(AnalyticsReporter *)analyticsReporter reportBootSuccess:1 afterAttempts:v22 mode:v23 failureReason:&stru_10005D038];

          [(ChipManager *)self setBootRetryCount:0];
          goto LABEL_19;
        }
      }

      else
      {
      }

      v19 = v11;
      if ([objc_opt_class() shouldPanicForError:v19])
      {
        [objc_opt_class() panicWithMessage:v19];
      }

      if ([objc_opt_class() shouldHaltForError:v19])
      {
        break;
      }

      [(Chip *)self->_chip collectLogsWithReason:v19 fatal:1 useFWReason:1 lpm:mode == 1];
      [(ChipManager *)self resetChip];

      if (++v12 > attempts)
      {
        goto LABEL_18;
      }
    }

    self->_halted = 1;
  }

LABEL_18:
  v24 = 0;
LABEL_19:

  return v24;
}

- (id)bootPerformanceDataForHostTimestamps:(id)timestamps firmwareTimestamps:(id)firmwareTimestamps
{
  timestampsCopy = timestamps;
  firmwareTimestampsCopy = firmwareTimestamps;
  v160[0] = @"prepareChipForResetDuration";
  obja = [NSString stringWithUTF8String:"prepareChipForResetStart"];
  v160[1] = obja;
  v118 = [NSString stringWithUTF8String:"prepareChipForResetEnd"];
  v160[2] = v118;
  v115 = [NSArray arrayWithObjects:v160 count:3];
  v161[0] = v115;
  v159[0] = @"crashlogCollectionDuration";
  v112 = [NSString stringWithUTF8String:"crashlogStart"];
  v159[1] = v112;
  v109 = [NSString stringWithUTF8String:"crashlogEnd"];
  v159[2] = v109;
  v106 = [NSArray arrayWithObjects:v159 count:3];
  v161[1] = v106;
  v158[0] = @"coreDumpCollectionDuration";
  v104 = [NSString stringWithUTF8String:"coredumpStart"];
  v158[1] = v104;
  v102 = [NSString stringWithUTF8String:"coredumpEnd"];
  v158[2] = v102;
  v100 = [NSArray arrayWithObjects:v158 count:3];
  v161[2] = v100;
  v157[0] = @"prepareForResetDuration";
  v98 = [NSString stringWithUTF8String:"resetStart"];
  v157[1] = v98;
  v97 = [NSString stringWithUTF8String:"prepareForResetEnd"];
  v157[2] = v97;
  v96 = [NSArray arrayWithObjects:v157 count:3];
  v161[3] = v96;
  v156[0] = @"resetPortDisableDuration";
  v95 = [NSString stringWithUTF8String:"resetPortDisableStart"];
  v156[1] = v95;
  v94 = [NSString stringWithUTF8String:"resetPortDisableEnd"];
  v156[2] = v94;
  v93 = [NSArray arrayWithObjects:v156 count:3];
  v161[4] = v93;
  v155[0] = @"resetDuration";
  v92 = [NSString stringWithUTF8String:"resetPortDisableEnd"];
  v155[1] = v92;
  v91 = [NSString stringWithUTF8String:"resetEnd"];
  v155[2] = v91;
  v90 = [NSArray arrayWithObjects:v155 count:3];
  v161[5] = v90;
  v154[0] = @"romPortEnableDuration";
  v89 = [NSString stringWithUTF8String:"firstPortEnableStart"];
  v154[1] = v89;
  v88 = [NSString stringWithUTF8String:"firstPortEnableEnd"];
  v154[2] = v88;
  v87 = [NSArray arrayWithObjects:v154 count:3];
  v161[6] = v87;
  v153[0] = @"romSendImageDuration";
  v86 = [NSString stringWithUTF8String:"firstSendImageStart"];
  v153[1] = v86;
  v84 = [NSString stringWithUTF8String:"firstSendImageEnd"];
  v153[2] = v84;
  v83 = [NSArray arrayWithObjects:v153 count:3];
  v161[7] = v83;
  v152[0] = @"reenumerationPortDisableDuration";
  v82 = [NSString stringWithUTF8String:"reenumerationPortDisableStart"];
  v152[1] = v82;
  v81 = [NSString stringWithUTF8String:"reenumerationPortDisableEnd"];
  v152[2] = v81;
  v80 = [NSArray arrayWithObjects:v152 count:3];
  v161[8] = v80;
  v151[0] = @"reenumerationPortEnableDuration";
  v79 = [NSString stringWithUTF8String:"reenumerationPortEnableStart"];
  v151[1] = v79;
  v78 = [NSString stringWithUTF8String:"reenumerationPortEnableEnd"];
  v151[2] = v78;
  v77 = [NSArray arrayWithObjects:v151 count:3];
  v161[9] = v77;
  v150[0] = @"secondarySendImageDuration";
  v76 = [NSString stringWithUTF8String:"secondSendImageStart"];
  v150[1] = v76;
  v75 = [NSString stringWithUTF8String:"secondSendImageEnd"];
  v150[2] = v75;
  v74 = [NSArray arrayWithObjects:v150 count:3];
  v161[10] = v74;
  v149[0] = @"memswapHandoffDuration";
  v73 = [NSString stringWithUTF8String:"memswapHandOffStart"];
  v149[1] = v73;
  v72 = [NSString stringWithUTF8String:"memswapHandOffEnd"];
  v149[2] = v72;
  v71 = [NSArray arrayWithObjects:v149 count:3];
  v161[11] = v71;
  v148[0] = @"romInterfaceOpenDuration";
  v70 = [NSString stringWithUTF8String:"openROMStart"];
  v148[1] = v70;
  v69 = [NSString stringWithUTF8String:"openROMEnd"];
  v148[2] = v69;
  v68 = [NSArray arrayWithObjects:v148 count:3];
  v161[12] = v68;
  v147[0] = @"secondaryInterfaceOpenDuration";
  v67 = [NSString stringWithUTF8String:"openSecondStageStart"];
  v147[1] = v67;
  v66 = [NSString stringWithUTF8String:"openSecondStageEnd"];
  v147[2] = v66;
  v65 = [NSArray arrayWithObjects:v147 count:3];
  v161[13] = v65;
  v146[0] = @"osInterfaceOpenDuration";
  v64 = [NSString stringWithUTF8String:"openCCHIStart"];
  v146[1] = v64;
  v63 = [NSString stringWithUTF8String:"openCCHIEnd"];
  v146[2] = v63;
  v62 = [NSArray arrayWithObjects:v146 count:3];
  v161[14] = v62;
  v145[0] = @"pingDuration";
  v61 = [NSString stringWithUTF8String:"ccpuPingStart"];
  v145[1] = v61;
  v60 = [NSString stringWithUTF8String:"ccpuPingEnd"];
  v145[2] = v60;
  v59 = [NSArray arrayWithObjects:v145 count:3];
  v161[15] = v59;
  v144[0] = @"bootStageOSDuration0";
  v58 = [NSString stringWithUTF8String:"secondSendImageStart"];
  v144[1] = v58;
  v5 = [NSString stringWithUTF8String:"bootStageOSControl"];
  v144[2] = v5;
  v6 = [NSArray arrayWithObjects:v144 count:3];
  v161[16] = v6;
  v143[0] = @"bootStageOSDuration1";
  v7 = [NSString stringWithUTF8String:"secondSendImageStart"];
  v143[1] = v7;
  v8 = [NSString stringWithUTF8String:"bootStageOSAlpha"];
  v143[2] = v8;
  v9 = [NSArray arrayWithObjects:v143 count:3];
  v161[17] = v9;
  v142[0] = @"bootStageOSDuration2";
  v10 = [NSString stringWithUTF8String:"secondSendImageStart"];
  v142[1] = v10;
  v11 = [NSString stringWithUTF8String:"bootStageOSBeta"];
  v142[2] = v11;
  v12 = [NSArray arrayWithObjects:v142 count:3];
  v161[18] = v12;
  v85 = [NSArray arrayWithObjects:v161 count:19];

  v140[0] = @"firmwareROMDuration";
  objb = +[NSNull null];
  v140[1] = objb;
  v119 = [NSString stringWithUTF8String:"bootFromROM"];
  v140[2] = v119;
  v116 = [NSArray arrayWithObjects:v140 count:3];
  v141[0] = v116;
  v139[0] = @"firmwarePTMDuration";
  v113 = [NSString stringWithUTF8String:"beforePTM"];
  v139[1] = v113;
  v110 = [NSString stringWithUTF8String:"ptmDone"];
  v139[2] = v110;
  v105 = [NSArray arrayWithObjects:v139 count:3];
  v141[1] = v105;
  v138[0] = @"firmwareFDRCalDuration";
  v103 = [NSString stringWithUTF8String:"fdrCalBegin"];
  v138[1] = v103;
  v101 = [NSString stringWithUTF8String:"fdrCalDone"];
  v138[2] = v101;
  v99 = [NSArray arrayWithObjects:v138 count:3];
  v141[2] = v99;
  v137[0] = @"firmwareBTTotalDuration";
  v13 = [NSString stringWithUTF8String:"iopLoadStart"];
  v137[1] = v13;
  v14 = [NSString stringWithUTF8String:"bt5GFetchValidateDone"];
  v137[2] = v14;
  v15 = [NSArray arrayWithObjects:v137 count:3];
  v141[3] = v15;
  v136[0] = @"firmwareWiFiTotalDuration";
  v16 = [NSString stringWithUTF8String:"wifiMainFetchValidateBegin"];
  v136[1] = v16;
  v17 = [NSString stringWithUTF8String:"wifiP2GFetchValidateDone"];
  v136[2] = v17;
  v18 = [NSArray arrayWithObjects:v136 count:3];
  v141[4] = v18;
  v135[0] = @"firmwareFLRSetupDuration";
  v19 = [NSString stringWithUTF8String:"wifiP2GFetchValidateDone"];
  v135[1] = v19;
  v20 = [NSString stringWithUTF8String:"iopLoadDone"];
  v135[2] = v20;
  v21 = [NSArray arrayWithObjects:v135 count:3];
  v141[5] = v21;
  v107 = [NSArray arrayWithObjects:v141 count:6];

  v22 = timestampsCopy;
  v114 = objc_alloc_init(NSMutableDictionary);
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  obj = v85;
  v23 = [obj countByEnumeratingWithState:&v129 objects:v134 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v130;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v130 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v129 + 1) + 8 * i);
        v28 = [v27 objectAtIndexedSubscript:1];
        v29 = [v22 objectForKeyedSubscript:v28];
        if (!v29)
        {
          goto LABEL_10;
        }

        v30 = v29;
        v31 = [v27 objectAtIndexedSubscript:2];
        v17 = [v22 objectForKeyedSubscript:v31];

        if (v17)
        {
          v32 = [v27 objectAtIndexedSubscript:2];
          v33 = [v22 objectForKeyedSubscript:v32];
          longLongValue = [v33 longLongValue];
          v17 = [v27 objectAtIndexedSubscript:1];
          [v22 objectForKeyedSubscript:v17];
          v36 = v35 = v22;
          v37 = longLongValue - [v36 longLongValue];

          v22 = v35;
          if (v37 >= 1)
          {
            v28 = [NSNumber numberWithDouble:v37 / 1000000.0];
            v38 = [v27 objectAtIndexedSubscript:0];
            [v114 setObject:v28 forKey:v38];

LABEL_10:
            continue;
          }
        }
      }

      v24 = [obj countByEnumeratingWithState:&v129 objects:v134 count:16];
    }

    while (v24);
  }

  if (!_os_feature_enabled_impl())
  {
    goto LABEL_33;
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v111 = v107;
  v120 = [v111 countByEnumeratingWithState:&v125 objects:v133 count:16];
  if (!v120)
  {
    goto LABEL_32;
  }

  v117 = *v126;
  do
  {
    for (j = 0; j != v120; j = j + 1)
    {
      if (*v126 != v117)
      {
        objc_enumerationMutation(v111);
      }

      v40 = *(*(&v125 + 1) + 8 * j);
      v41 = [v40 objectAtIndexedSubscript:1];
      v42 = +[NSNull null];
      v43 = [v41 isEqual:v42];
      if ((v43 & 1) != 0 || ([v40 objectAtIndexedSubscript:1], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(firmwareTimestampsCopy, "objectForKeyedSubscript:", v17), (v22 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v44 = [v40 objectAtIndexedSubscript:2];
        v45 = [firmwareTimestampsCopy objectForKeyedSubscript:v44];
        v46 = v45 != 0;

        if (v43)
        {

          if (!v45)
          {
            continue;
          }

          goto LABEL_26;
        }
      }

      else
      {
        v46 = 0;
      }

      if (!v46)
      {
        continue;
      }

LABEL_26:
      v47 = [v40 objectAtIndexedSubscript:2];
      v48 = [firmwareTimestampsCopy objectForKeyedSubscript:v47];
      longLongValue2 = [v48 longLongValue];

      v50 = [v40 objectAtIndexedSubscript:1];
      v51 = +[NSNull null];
      v52 = [v50 isEqual:v51];

      if ((v52 & 1) == 0)
      {
        v53 = [v40 objectAtIndexedSubscript:1];
        v54 = [firmwareTimestampsCopy objectForKeyedSubscript:v53];
        longLongValue2 -= [v54 longLongValue];
      }

      if (longLongValue2 >= 1)
      {
        v55 = [NSNumber numberWithDouble:longLongValue2 / 1000.0];
        v56 = [v40 objectAtIndexedSubscript:0];
        [v114 setObject:v55 forKey:v56];
      }
    }

    v120 = [v111 countByEnumeratingWithState:&v125 objects:v133 count:16];
  }

  while (v120);
LABEL_32:

  v22 = timestampsCopy;
LABEL_33:

  return v114;
}

- (void)processBootPerformanceStats
{
  if (_os_feature_enabled_impl())
  {
    getFirmwareBootTimestamps = [(Chip *)self->_chip getFirmwareBootTimestamps];
    if (getFirmwareBootTimestamps)
    {
      [(Chip *)self->_chip storeFirmwareBootTimestamps:getFirmwareBootTimestamps];
    }
  }

  else
  {
    getFirmwareBootTimestamps = 0;
  }

  getHostBootTimestamps = [(Chip *)self->_chip getHostBootTimestamps];
  v4 = [(ChipManager *)self bootPerformanceDataForHostTimestamps:getHostBootTimestamps firmwareTimestamps:getFirmwareBootTimestamps];
  analyticsReporter = self->_analyticsReporter;
  v6 = [Chip bootModeAsString:self->_bootMode];
  [(AnalyticsReporter *)analyticsReporter reportBootPerformanceStats:v4 mode:v6];
}

- (void)resetChip
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(Chip *)self->_chip reset])
  {
    analyticsReporter = self->_analyticsReporter;

    [(AnalyticsReporter *)analyticsReporter reportChipResetSuccess:1 afterPowerCycle:0 errorCode:0];
  }

  else
  {
    v5 = sub_100025204();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100030044();
    }

    powerCycle = [(Chip *)self->_chip powerCycle];
    [(AnalyticsReporter *)self->_analyticsReporter reportChipResetSuccess:powerCycle == 0 afterPowerCycle:1 errorCode:powerCycle];
    if (powerCycle)
    {
      v7 = sub_100025204();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v18 = [objc_opt_class() description];
        v19 = NSStringFromSelector(a2);
        *buf = 138543874;
        v23 = v18;
        v24 = 2114;
        v25 = v19;
        v26 = 1024;
        v27 = powerCycle;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: power cycle failure: 0x%08x, power cycle reason: reset failure", buf, 0x1Cu);
      }

      if (sub_10002529C())
      {
        v15 = sub_100030D78("power cycle failure: 0x%08x, power cycle reason: reset failure", v8, v9, v10, v11, v12, v13, v14, powerCycle);
        if (v15)
        {
          v16 = v15;
          v17 = sub_100025204();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v20 = [objc_opt_class() description];
            v21 = NSStringFromSelector(a2);
            *buf = 138543874;
            v23 = v20;
            v24 = 2114;
            v25 = v21;
            v26 = 1024;
            v27 = v16;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to generate simulated crash log: %{darwin.errno}d", buf, 0x1Cu);
          }
        }
      }
    }
  }
}

- (void)createTransaction
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_transaction)
  {
    v4 = sub_100025204();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [objc_opt_class() description];
      v6 = NSStringFromSelector(a2);
      v9 = 138543618;
      v10 = v5;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v9, 0x16u);
    }

    v7 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v7;

    if (!self->_transaction)
    {
      sub_1000300EC();
    }
  }
}

- (void)releaseTransaction
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_transaction)
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

    transaction = self->_transaction;
    self->_transaction = 0;
  }
}

- (void)createPowerAssertion
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_powerAssertion)
  {
    v4 = sub_100025204();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [objc_opt_class() description];
      v6 = NSStringFromSelector(a2);
      v12 = 138543618;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v12, 0x16u);
    }

    v7 = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.centaurid.boot", &self->_powerAssertion);
    if (v7 || !self->_powerAssertion)
    {
      v8 = sub_100025204();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [objc_opt_class() description];
        v10 = NSStringFromSelector(a2);
        v12 = 138543874;
        v13 = v9;
        v14 = 2114;
        v15 = v10;
        v16 = 1024;
        v17 = v7;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to create power assertion: 0x%08x", &v12, 0x1Cu);
      }

      v11 = sub_100025204();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10003021C();
      }

      abort_report_np();
    }
  }
}

- (void)releasePowerAssertion
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_powerAssertion)
  {
    v4 = sub_100025204();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [objc_opt_class() description];
      v6 = NSStringFromSelector(a2);
      v13 = 138543618;
      v14 = v5;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v13, 0x16u);
    }

    v7 = IOPMAssertionRelease(self->_powerAssertion);
    self->_powerAssertion = 0;
    if (v7)
    {
      v8 = v7;
      v9 = sub_100025204();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [objc_opt_class() description];
        v11 = NSStringFromSelector(a2);
        v13 = 138543874;
        v14 = v10;
        v15 = 2114;
        v16 = v11;
        v17 = 1024;
        v18 = v8;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to release power assertion: 0x%08x", &v13, 0x1Cu);
      }

      v12 = sub_100025204();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000302C4();
      }

      abort_report_np();
    }
  }
}

- (void)chipStateDidChangeFrom:(int64_t)from to:(int64_t)to
{
  v7 = sub_100025204();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() description];
    v9 = NSStringFromSelector(a2);
    v10 = [Chip stateAsString:from];
    v11 = [Chip stateAsString:to];
    v12 = 138544130;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %@ -> %@", &v12, 0x2Au);
  }
}

- (void)log
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    hasHardware = self->_hasHardware;
    v8 = self->_transaction != 0;
    v9 = self->_powerAssertion != 0;
    activated = self->_activated;
    lowPowerMode = self->_lowPowerMode;
    halted = self->_halted;
    pmuErrorDetected = self->_pmuErrorDetected;
    activateRetryCount = self->_activateRetryCount;
    bootRetryCount = self->_bootRetryCount;
    v16 = 138545922;
    v17 = v5;
    v18 = 2114;
    v19 = v6;
    v20 = 1024;
    v21 = hasHardware;
    v22 = 1024;
    v23 = v8;
    v24 = 1024;
    v25 = v9;
    v26 = 1024;
    v27 = activated;
    v28 = 1024;
    v29 = lowPowerMode;
    v30 = 1024;
    v31 = halted;
    v32 = 1024;
    v33 = pmuErrorDetected;
    v34 = 2048;
    v35 = activateRetryCount;
    v36 = 2048;
    v37 = bootRetryCount;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: HW %u, transaction %u, power assertion %u, activated %u, LPM %u, halted %u, PMU error %u, activate retries %lu, boot retries %lu", &v16, 0x54u);
  }

  [(Chip *)self->_chip log];
  [(PowerTableManager *)self->_powerTableManager log];
}

+ (id)subsystemIDAsString:(int)string
{
  if (string > 1)
  {
    if (string == 2)
    {
      return @"BT";
    }

    if (string == 3)
    {
      v4 = sub_100025204();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (!string)
    {
      return @"Control";
    }

    if (string == 1)
    {
      return @"WiFi";
    }
  }

  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
LABEL_12:
    sub_10003036C();
  }

LABEL_13:

  v5 = abort_report_np();
  return [(ChipManager *)v5 errorSourceAsString:v6, v7];
}

+ (id)errorSourceAsString:(int)string
{
  if (string <= 1)
  {
    if (string)
    {
      if (string != 1)
      {
        goto LABEL_13;
      }

      return @"Airship";
    }

    else
    {
      return @"Centauri";
    }
  }

  else
  {
    if (string != 2)
    {
      if (string == 1000)
      {
        return @"Controller";
      }

      if (string == 1001)
      {
        v4 = sub_100025204();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        goto LABEL_15;
      }

LABEL_13:
      v4 = sub_100025204();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
LABEL_14:
        sub_100030414();
      }

LABEL_15:

      abort_report_np();
      JUMPOUT(0x100023958);
    }

    return @"CentauriDebug";
  }
}

+ (id)centauriDebugErrorCodeAsString:(int)string
{
  switch(string)
  {
    case 0:
      return @"CRStateChangeFailed";
    case 1:
      return @"TRStateChangeFailed";
    case 2:
      v4 = sub_100025204();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      break;
    default:
      v4 = sub_100025204();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
LABEL_9:
        sub_10003060C();
      }

      break;
  }

  v5 = abort_report_np();
  return [(ChipManager *)v5 controllerErrorCodeAsString:v6, v7];
}

+ (id)controllerErrorCodeAsString:(int)string
{
  if (string > 2)
  {
    switch(string)
    {
      case 3:
        return @"S2REntry";
      case 4:
        return @"S2RExit";
      case 5:
        v4 = sub_100025204();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        goto LABEL_17;
    }
  }

  else
  {
    switch(string)
    {
      case 0:
        return @"DextTerminated";
      case 1:
        return @"DextRegisterFailed";
      case 2:
        return @"DextOpenFailed";
    }
  }

  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
LABEL_16:
    sub_1000306B4();
  }

LABEL_17:

  v5 = abort_report_np();
  return [(ChipManager *)v5 linkTrainingTimeoutArgAsString:v6, v7];
}

+ (id)linkTrainingTimeoutArgAsString:(int)string
{
  if (string <= 1)
  {
    if (!string)
    {
      return @"None";
    }

    if (string == 1)
    {
      return @"ROM";
    }
  }

  else
  {
    switch(string)
    {
      case 2:
        return @"Hibernation";
      case 3:
        return @"Other";
      case 4:
        v4 = sub_100025204();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        goto LABEL_15;
    }
  }

  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
LABEL_14:
    sub_10003075C();
  }

LABEL_15:

  v5 = abort_report_np();
  return [(ChipManager *)v5 errorDescriptionForSource:v6 errorCode:v7 arg:v8, v9];
}

+ (BOOL)shouldUseFWReasonForErrorFromSource:(unsigned int)source errorCode:(unsigned int)code arg:(unint64_t)arg
{
  v5 = (code >> 3) & 1;
  if (source != 1)
  {
    LOBYTE(v5) = 0;
  }

  if (code | source)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

+ (BOOL)isErrorFatalFromSource:(unsigned int)source errorCode:(unsigned int)code arg:(unint64_t)arg
{
  v5 = code == 3;
  if ((code & 0xFFFFFFFB) == 0)
  {
    v5 = 1;
  }

  if (source == 1000 && v5 || (code != 16 ? (v6 = code - 9 >= 2) : (v6 = 0), v6 ? (v7 = 0) : (v7 = 1), (result = 1, !source) && v7))
  {
    result = 0;
  }

  if (!source && (code & 0xFFFFFFFB) == 2 || !source && code == 11 && !arg)
  {
    return 0;
  }

  return result;
}

+ (BOOL)shouldHaltForError:(id)error
{
  errorCopy = error;
  if (!sub_10002529C())
  {
    goto LABEL_10;
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"HaltOnAnyFailure"];

  if (v6)
  {
    v7 = sub_100025204();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [objc_opt_class() description];
      v9 = NSStringFromSelector(a2);
      v15 = 138544130;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      v19 = 2080;
      uTF8String = [@"HaltOnAnyFailure" UTF8String];
      v21 = 2080;
      uTF8String2 = [errorCopy UTF8String];
LABEL_8:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: halting due to %s preference: %s", &v15, 0x2Au);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 stringArrayForKey:@"HaltOnSpecificFailures"];
  v12 = [v11 containsObject:errorCopy];

  if (!v12)
  {
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v7 = sub_100025204();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() description];
    v9 = NSStringFromSelector(a2);
    v15 = 138544130;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v19 = 2080;
    uTF8String = [@"HaltOnSpecificFailures" UTF8String];
    v21 = 2080;
    uTF8String2 = [errorCopy UTF8String];
    goto LABEL_8;
  }

LABEL_9:

  v13 = 1;
LABEL_11:

  return v13;
}

+ (BOOL)shouldPanicForError:(id)error
{
  errorCopy = error;
  if (!sub_10002529C())
  {
    goto LABEL_10;
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"PanicOnAnyFailure"];

  if (v6)
  {
    v7 = sub_100025204();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [objc_opt_class() description];
      v9 = NSStringFromSelector(a2);
      v15 = 138544130;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      v19 = 2080;
      uTF8String = [@"PanicOnAnyFailure" UTF8String];
      v21 = 2080;
      uTF8String2 = [errorCopy UTF8String];
LABEL_8:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: panicking due to %s preference: %s", &v15, 0x2Au);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 stringArrayForKey:@"PanicOnSpecificFailures"];
  v12 = [v11 containsObject:errorCopy];

  if (!v12)
  {
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v7 = sub_100025204();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() description];
    v9 = NSStringFromSelector(a2);
    v15 = 138544130;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v19 = 2080;
    uTF8String = [@"PanicOnSpecificFailures" UTF8String];
    v21 = 2080;
    uTF8String2 = [errorCopy UTF8String];
    goto LABEL_8;
  }

LABEL_9:

  v13 = 1;
LABEL_11:

  return v13;
}

+ (void)panicWithMessage:(id)message
{
  messageCopy = message;
  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_opt_class() description];
    v11 = NSStringFromSelector(a2);
    *buf = 138543874;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    v16 = 2114;
    v17 = messageCopy;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: %{public}@", buf, 0x20u);
  }

  messageCopy = [NSString stringWithFormat:@"Centauri fatal error: %@", messageCopy];
  v8 = reboot_np(3072, [messageCopy UTF8String]);

  if (v8)
  {
    v9 = sub_100025204();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100030804(self, a2);
    }
  }
}

- (id)contextForAnalytics
{
  v14[0] = @"chipset";
  v3 = sub_1000257CC();
  v4 = v3;
  if (!v3)
  {
    v4 = +[NSNull null];
  }

  v15[0] = v4;
  v14[1] = @"chipsetRevision";
  v5 = sub_100025918();
  v6 = v5;
  if (!v5)
  {
    v6 = +[NSNull null];
  }

  v15[1] = v6;
  v14[2] = @"wsku";
  v7 = sub_100025608();
  v8 = v7;
  if (!v7)
  {
    v8 = +[NSNull null];
  }

  v15[2] = v8;
  v14[3] = @"builtIn";
  v9 = [NSNumber numberWithBool:[(Chip *)self->_chip builtIn]];
  v15[3] = v9;
  v15[4] = &__kCFBooleanFalse;
  v14[4] = @"bootArgsPresent";
  v14[5] = @"chipsetFusing";
  v15[5] = &stru_10005D038;
  v14[6] = @"wifiOTAPowerTableVersion";
  wifiAssetVersion = [(PowerTableManager *)self->_powerTableManager wifiAssetVersion];
  v15[6] = wifiAssetVersion;
  v14[7] = @"btOTAPowerTableVersion";
  btAssetVersion = [(PowerTableManager *)self->_powerTableManager btAssetVersion];
  v15[7] = btAssetVersion;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:8];

  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  return v12;
}

- (void)chipHasCrashlogAvailable:(id)available
{
  availableCopy = available;
  v7 = os_transaction_create();
  if (!v7)
  {
    sub_100030A60(self);
    goto LABEL_9;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = nullsub_1;
  v12[3] = &unk_10005C700;
  v3 = v7;
  v13 = v3;
  v4 = objc_retainBlock(v12);
  if (!self->_crashReporter)
  {
    v8 = [[CrashReporter alloc] initWithBuiltIn:[(Chip *)self->_chip builtIn] analyticsReporter:self->_analyticsReporter];
    crashReporter = self->_crashReporter;
    self->_crashReporter = v8;

    if (!self->_crashReporter)
    {
LABEL_9:
      v11 = sub_100025204();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000309B8();
      }

      goto LABEL_6;
    }
  }

  getCrashlogs = [availableCopy getCrashlogs];
  if (getCrashlogs)
  {
    v11 = getCrashlogs;
    [(CrashReporter *)self->_crashReporter processCrashes:getCrashlogs completion:v4];
LABEL_6:
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (objc_opt_class() != context)
  {
    v27.receiver = self;
    v27.super_class = ChipManager;
    [(ChipManager *)&v27 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_7:

    return;
  }

  v14 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeKindKey];
  unsignedIntegerValue = [v14 unsignedIntegerValue];

  if (([pathCopy isEqualToString:@"state"] & 1) == 0)
  {
    sub_100030B18(self, a2, pathCopy);
    goto LABEL_9;
  }

  if (self->_chip != objectCopy)
  {
LABEL_9:
    sub_100030BF8(self);
    goto LABEL_10;
  }

  if (unsignedIntegerValue == 1)
  {
    v21 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeOldKey];
    integerValue = [v21 integerValue];
    v23 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
    -[ChipManager chipStateDidChangeFrom:to:](self, "chipStateDidChangeFrom:to:", integerValue, [v23 integerValue]);

    goto LABEL_7;
  }

LABEL_10:
  v24 = sub_100030CB0(self, a2, unsignedIntegerValue, v16, v17, v18, v19, v20, v27.receiver);
  [(ChipManager *)v24 readyForNewPowerTableValidationWithReason:v25, v26];
}

- (BOOL)readyForNewPowerTableValidationWithReason:(id *)reason
{
  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    activated = self->_activated;
    bootRetryCount = self->_bootRetryCount;
    v13 = 138544130;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    v17 = 1024;
    v18 = activated;
    v19 = 2048;
    v20 = bootRetryCount;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: activated %u, boot retry count %lu", &v13, 0x26u);
  }

  if (self->_activated)
  {
    if (!self->_bootRetryCount)
    {
      return 1;
    }

    v11 = @"notBooted";
  }

  else
  {
    v11 = @"notActivated";
  }

  result = 0;
  *reason = v11;
  return result;
}

- (BOOL)validateNewPowerTables:(id *)tables
{
  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v10, 0x16u);
  }

  [(ChipManager *)self resetChip];
  return [(ChipManager *)self bootChipInMode:0 withLPMData:0 bootAttempts:1 failureReason:tables];
}

- (void)reloadPowerTables
{
  [(ChipManager *)self setBootRetryCount:0];
  [(ChipManager *)self resetChip];

  [(ChipManager *)self bootChip];
}

- (BOOL)handleChipBooted
{
  ping = [(Chip *)self->_chip ping];

  if (ping)
  {
    if (!self->_pmuErrorDetected)
    {
LABEL_5:
      [(ChipManager *)self processBootPerformanceStats];
      LOBYTE(getPMUFaultInfo) = 1;
      return getPMUFaultInfo;
    }

    getPMUFaultInfo = [(Chip *)self->_chip getPMUFaultInfo];
    if (getPMUFaultInfo)
    {
      v5 = getPMUFaultInfo;
      [(AnalyticsReporter *)self->_analyticsReporter reportPMUError:getPMUFaultInfo];
      v6 = [NSString stringWithFormat:@"ErrorDetectGPIO-%@", v5];
      [(Chip *)self->_chip collectLogsWithReason:v6 fatal:0 useFWReason:0 lpm:0];
      self->_pmuErrorDetected = 0;

      goto LABEL_5;
    }
  }

  else
  {
    LOBYTE(getPMUFaultInfo) = 0;
  }

  return getPMUFaultInfo;
}

@end