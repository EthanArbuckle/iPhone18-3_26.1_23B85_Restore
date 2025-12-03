@interface NFReaderRestrictor
- (BOOL)_readerModeStoppedShouldCooloffRun:(id)run;
- (BOOL)_requiresReaderModeProtection;
- (BOOL)_validateStartStopSequence;
- (BOOL)readerModeProtectionActive;
- (BOOL)readerModeStoppedShouldCooloffRun;
- (NFReaderRestrictor)initWithThermalMonitor:(id)monitor delegate:(id)delegate;
- (NFReaderRestrictorDelegate)delegate;
- (double)getCooloffTime;
- (double)maxOperationTimeSpan;
- (double)maxReaderTime;
- (id)description;
- (id)expectedBurnoutTime;
- (id)state;
- (void)_handleReaderBurnoutProtectionDebounceTimer;
- (void)_handleReaderBurnoutProtectionTimer;
- (void)_purgeOldOperations;
- (void)_tagDetectedWithDate:(id)date;
- (void)setCurrentTestTime:(id)time;
- (void)stackLoaded:(id)loaded;
- (void)stackUnloaded;
- (void)tagDetected;
- (void)thermalStateChanged:(unint64_t)changed;
- (void)triggerBurnoutTimer;
@end

@implementation NFReaderRestrictor

- (BOOL)_requiresReaderModeProtection
{
  if (!NFIsInternalBuild())
  {
    return 1;
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"BurnoutTimerDisable"];

  if (!v5)
  {
    return 1;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i Disabling reader mode protection.", v11, ClassName, Name, 389);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(self);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    *buf = 67109890;
    v18 = v14;
    v19 = 2082;
    v20 = object_getClassName(self);
    v21 = 2082;
    v22 = sel_getName(a2);
    v23 = 1024;
    v24 = 389;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Disabling reader mode protection.", buf, 0x22u);
  }

  return 0;
}

- (BOOL)readerModeProtectionActive
{
  [(NSLock *)self->_burnoutStateLock lock];
  if ([(NFReaderRestrictor *)self _requiresReaderModeProtection]&& self->_burnoutProtectionState > 1)
  {
    thermalPressureCritical = 1;
  }

  else if ([(NFReaderRestrictor *)self _requiresThermalModeProtection])
  {
    thermalPressureCritical = [(NFReaderRestrictor *)self thermalPressureCritical];
  }

  else
  {
    thermalPressureCritical = 0;
  }

  [(NSLock *)self->_burnoutStateLock unlock];
  return thermalPressureCritical;
}

- (BOOL)readerModeStoppedShouldCooloffRun
{
  if (self->_currentTestTime)
  {

    return [(NFReaderRestrictor *)self _readerModeStoppedShouldCooloffRun:?];
  }

  else
  {
    v4 = [NSDate dateWithTimeIntervalSinceNow:0.0];
    v5 = [(NFReaderRestrictor *)self _readerModeStoppedShouldCooloffRun:v4];

    return v5;
  }
}

- (void)_purgeOldOperations
{
  currentTestTime = self->_currentTestTime;
  if (currentTestTime)
  {
    v4 = currentTestTime;
  }

  else
  {
    v4 = [NSDate dateWithTimeIntervalSinceNow:0.0];
  }

  v5 = v4;
  v6 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_readerOperationTimes;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        if (v12)
        {
          v13 = *(v12 + 8);
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        [(NSDate *)v5 timeIntervalSinceDate:v14, v21];
        v16 = v15;
        [(NFReaderRestrictor *)self maxOperationTimeSpan];
        v18 = v17;

        if (v16 <= v18)
        {
          [(NSMutableArray *)v6 addObject:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v19 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v9 = v19;
    }

    while (v19);
  }

  readerOperationTimes = self->_readerOperationTimes;
  self->_readerOperationTimes = v6;
}

- (BOOL)_validateStartStopSequence
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_readerOperationTimes;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v43 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
    v6 = -1;
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * v7);
        if (v9)
        {
          v9 = v9[2];
        }

        v10 = v9;
        v11 = [v10 isEqualToString:@"ReaderStopped"];
        v6 = v11 ^ 1;

        if ((v11 ^ 1) == v8)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v13 = Logger;
            Class = object_getClass(self);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(self);
            Name = sel_getName(a2);
            if (v11)
            {
              v18 = @"Stop";
            }

            else
            {
              v18 = @"Start";
            }

            v19 = 45;
            if (isMetaClass)
            {
              v19 = 43;
            }

            v13(3, "%c[%{public}s %{public}s]:%i Failed validation : last == current == %{public}@", v19, ClassName, Name, 424, v18);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v20 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = object_getClass(self);
            if (class_isMetaClass(v21))
            {
              v22 = 43;
            }

            else
            {
              v22 = 45;
            }

            v23 = object_getClassName(self);
            v24 = sel_getName(a2);
            *buf = 67110146;
            v25 = @"Start";
            if (v11)
            {
              v25 = @"Stop";
            }

            v34 = v22;
            v35 = 2082;
            v36 = v23;
            v37 = 2082;
            v38 = v24;
            v39 = 1024;
            v40 = 424;
            v41 = 2114;
            v42 = v25;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed validation : last == current == %{public}@", buf, 0x2Cu);
          }
        }

        v7 = v7 + 1;
        v8 = v11 ^ 1;
      }

      while (v4 != v7);
      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v43 count:16];
    }

    while (v4);
  }

  return 1;
}

- (NFReaderRestrictor)initWithThermalMonitor:(id)monitor delegate:(id)delegate
{
  monitorCopy = monitor;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = NFReaderRestrictor;
  v9 = [(NFReaderRestrictor *)&v16 init];
  if (v9)
  {
    v10 = objc_opt_new();
    burnoutStateLock = v9->_burnoutStateLock;
    v9->_burnoutStateLock = v10;

    v12 = objc_opt_new();
    readerOperationTimes = v9->_readerOperationTimes;
    v9->_readerOperationTimes = v12;

    objc_storeStrong(&v9->_thermalMonitor, monitor);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    currentTestTime = v9->_currentTestTime;
    v9->_currentTestTime = 0;

    v9->_burnoutProtectionState = 0;
  }

  return v9;
}

- (id)description
{
  v3 = objc_opt_new();
  [(NSLock *)self->_burnoutStateLock lock];
  if ([(NFReaderRestrictor *)self thermalPressureCritical])
  {
    v4 = @"thermal = critical, ";
  }

  else if ([(NFReaderRestrictor *)self thermalPressureBackoff])
  {
    v4 = @"thermal = backoff, ";
  }

  else
  {
    if (![(NFReaderRestrictor *)self thermalPressureNominal])
    {
      goto LABEL_8;
    }

    v4 = @"thermal = nominal, ";
  }

  [v3 appendFormat:v4];
LABEL_8:
  burnoutProtectionState = self->_burnoutProtectionState;
  if (burnoutProtectionState <= 3)
  {
    [v3 appendFormat:*(&off_100317C20 + burnoutProtectionState)];
  }

  [v3 appendFormat:@", _currentTestTime = %@", self->_currentTestTime];
  [(NSLock *)self->_burnoutStateLock unlock];

  return v3;
}

- (void)stackLoaded:(id)loaded
{
  loadedCopy = loaded;
  objc_initWeak(&location, self);
  [(NSLock *)self->_burnoutStateLock lock];
  self->_burnoutProtectionState = 0;
  v5 = [NFTimer alloc];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A1FF4;
  v16[3] = &unk_100315F08;
  objc_copyWeak(&v17, &location);
  v6 = [v5 initWithCallback:v16 queue:loadedCopy];
  readermodeBurnoutProtectionTimer = self->_readermodeBurnoutProtectionTimer;
  self->_readermodeBurnoutProtectionTimer = v6;

  v8 = [NFTimer alloc];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000A206C;
  v14[3] = &unk_100315F08;
  objc_copyWeak(&v15, &location);
  v9 = [v8 initWithCallback:v14 queue:loadedCopy];
  readermodeBurnoutProtectionDebounceTimer = self->_readermodeBurnoutProtectionDebounceTimer;
  self->_readermodeBurnoutProtectionDebounceTimer = v9;

  [(NSLock *)self->_burnoutStateLock unlock];
  thermalMonitor = self->_thermalMonitor;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A20EC;
  v12[3] = &unk_100317C00;
  objc_copyWeak(&v13, &location);
  sub_1000689D8(thermalMonitor, v12, loadedCopy);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)stackUnloaded
{
  [(NSLock *)self->_burnoutStateLock lock];
  [(NFTimer *)self->_readermodeBurnoutProtectionTimer stopTimer];
  readermodeBurnoutProtectionTimer = self->_readermodeBurnoutProtectionTimer;
  self->_readermodeBurnoutProtectionTimer = 0;

  [(NFTimer *)self->_readermodeBurnoutProtectionDebounceTimer stopTimer];
  readermodeBurnoutProtectionDebounceTimer = self->_readermodeBurnoutProtectionDebounceTimer;
  self->_readermodeBurnoutProtectionDebounceTimer = 0;

  self->_burnoutProtectionState = 0;
  [(NSMutableArray *)self->_readerOperationTimes removeAllObjects];
  sub_100068A6C(self->_thermalMonitor);
  burnoutStateLock = self->_burnoutStateLock;

  [(NSLock *)burnoutStateLock unlock];
}

- (void)_tagDetectedWithDate:(id)date
{
  burnoutStateLock = self->_burnoutStateLock;
  dateCopy = date;
  [(NSLock *)burnoutStateLock lock];
  readerOperationTimes = self->_readerOperationTimes;
  v7 = sub_1000B2E8C(NFReaderOperation, @"ReaderStarted", dateCopy);

  [(NSMutableArray *)readerOperationTimes addObject:v7];
  if ([(NFReaderRestrictor *)self _requiresThermalModeProtection]&& [(NFReaderRestrictor *)self thermalPressureCritical])
  {
    self->_burnoutProtectionState = 1;
    readermodeBurnoutProtectionTimer = self->_readermodeBurnoutProtectionTimer;
    v9 = 0.0;
    v10 = 0.5;
LABEL_7:
    [(NFTimer *)readermodeBurnoutProtectionTimer startTimer:v9 leeway:v10];
    goto LABEL_8;
  }

  if ([(NFReaderRestrictor *)self _requiresReaderModeProtection]|| [(NFReaderRestrictor *)self _requiresThermalModeProtection])
  {
    self->_burnoutProtectionState = 1;
    v11 = self->_readermodeBurnoutProtectionTimer;
    [(NFReaderRestrictor *)self maxReaderTime];
    v10 = 0.5;
    readermodeBurnoutProtectionTimer = v11;
    goto LABEL_7;
  }

LABEL_8:
  v12 = self->_burnoutStateLock;

  [(NSLock *)v12 unlock];
}

- (void)tagDetected
{
  if (self->_currentTestTime)
  {

    [(NFReaderRestrictor *)self _tagDetectedWithDate:?];
  }

  else
  {
    v3 = [NSDate dateWithTimeIntervalSinceNow:0.0];
    [(NFReaderRestrictor *)self _tagDetectedWithDate:v3];
  }
}

- (BOOL)_readerModeStoppedShouldCooloffRun:(id)run
{
  runCopy = run;
  [(NSLock *)self->_burnoutStateLock lock];
  if (![(NFReaderRestrictor *)self _requiresReaderModeProtection])
  {
LABEL_9:
    v8 = 0;
    goto LABEL_37;
  }

  burnoutProtectionState = self->_burnoutProtectionState;
  if (burnoutProtectionState == 2)
  {
    [(NFReaderRestrictor *)self getCooloffTime];
    v13 = v26;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v28 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v32 = 45;
      if (isMetaClass)
      {
        v32 = 43;
      }

      v28(6, "%c[%{public}s %{public}s]:%i Starting cooloff timer for %f seconds.", v32, ClassName, Name, 244, *&v13);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = object_getClass(self);
      if (class_isMetaClass(v34))
      {
        v35 = 43;
      }

      else
      {
        v35 = 45;
      }

      *buf = 67110146;
      *v51 = v35;
      *&v51[4] = 2082;
      *&v51[6] = object_getClassName(self);
      v52 = 2082;
      v53 = sel_getName(a2);
      v54 = 1024;
      v55 = 244;
      v56 = 2048;
      v57 = v13;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Starting cooloff timer for %f seconds.", buf, 0x2Cu);
    }

    readerOperationTimes = self->_readerOperationTimes;
    v37 = sub_1000B2E8C(NFReaderOperation, @"ReaderStopped", runCopy);
    [(NSMutableArray *)readerOperationTimes addObject:v37];

    goto LABEL_33;
  }

  if (burnoutProtectionState != 1)
  {
    if (!burnoutProtectionState && [(NFReaderRestrictor *)self thermalPressureCritical])
    {
      self->_burnoutProtectionState = 3;
      coolOffRunning = self->_coolOffRunning;
      if (!coolOffRunning)
      {
        self->_coolOffRunning = 1;
      }

      v8 = !coolOffRunning;
      readermodeBurnoutProtectionDebounceTimer = self->_readermodeBurnoutProtectionDebounceTimer;
      v10 = 3153600000.0;
      v11 = 0.5;
LABEL_36:
      [(NFTimer *)readermodeBurnoutProtectionDebounceTimer startTimer:v10 leeway:v11];
      goto LABEL_37;
    }

    goto LABEL_9;
  }

  [(NFReaderRestrictor *)self getCooloffTime];
  v13 = v12;
  v14 = self->_readerOperationTimes;
  v15 = sub_1000B2E8C(NFReaderOperation, @"ReaderStopped", runCopy);
  [(NSMutableArray *)v14 addObject:v15];

  [(NFTimer *)self->_readermodeBurnoutProtectionTimer stopTimer];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFLogGetLogger();
  v17 = v16;
  if (v13 > 0.0)
  {
    if (v16)
    {
      v18 = object_getClass(self);
      v19 = class_isMetaClass(v18);
      v20 = object_getClassName(self);
      v47 = sel_getName(a2);
      v21 = 45;
      if (v19)
      {
        v21 = 43;
      }

      v17(6, "%c[%{public}s %{public}s]:%i Starting cooloff timer for %f seconds.", v21, v20, v47, 226, *&v13);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = object_getClass(self);
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      *buf = 67110146;
      *v51 = v24;
      *&v51[4] = 2082;
      *&v51[6] = object_getClassName(self);
      v52 = 2082;
      v53 = sel_getName(a2);
      v54 = 1024;
      v55 = 226;
      v56 = 2048;
      v57 = v13;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Starting cooloff timer for %f seconds.", buf, 0x2Cu);
    }

    v25 = NFSharedSignpostLog();
    if (os_signpost_enabled(v25))
    {
      *buf = 134217984;
      *v51 = v13;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "READER_MODE_COOLOFF", "starting timer for %0.2lf secs", buf, 0xCu);
    }

    [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339418];
LABEL_33:
    self->_burnoutProtectionState = 3;
    v38 = self->_coolOffRunning;
    if (!v38)
    {
      self->_coolOffRunning = 1;
    }

    v8 = !v38;
    readermodeBurnoutProtectionDebounceTimer = self->_readermodeBurnoutProtectionDebounceTimer;
    v11 = 0.5;
    v10 = v13;
    goto LABEL_36;
  }

  if (v16)
  {
    v40 = object_getClass(self);
    v41 = class_isMetaClass(v40);
    v42 = object_getClassName(self);
    v49 = sel_getName(a2);
    v43 = 45;
    if (v41)
    {
      v43 = 43;
    }

    v17(6, "%c[%{public}s %{public}s]:%i Cooloff not needed.", v43, v42, v49, 237);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v44 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = object_getClass(self);
    if (class_isMetaClass(v45))
    {
      v46 = 43;
    }

    else
    {
      v46 = 45;
    }

    *buf = 67109890;
    *v51 = v46;
    *&v51[4] = 2082;
    *&v51[6] = object_getClassName(self);
    v52 = 2082;
    v53 = sel_getName(a2);
    v54 = 1024;
    v55 = 237;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Cooloff not needed.", buf, 0x22u);
  }

  v8 = 0;
  self->_burnoutProtectionState = 0;
LABEL_37:
  [(NFReaderRestrictor *)self _purgeOldOperations];
  [(NFReaderRestrictor *)self _validateStartStopSequence];
  [(NSLock *)self->_burnoutStateLock unlock];

  return v8;
}

- (void)triggerBurnoutTimer
{
  [(NSLock *)self->_burnoutStateLock lock];
  self->_burnoutProtectionState = 1;
  [(NSLock *)self->_burnoutStateLock unlock];
  readermodeBurnoutProtectionTimer = self->_readermodeBurnoutProtectionTimer;

  [(NFTimer *)readermodeBurnoutProtectionTimer startTimer:0.0 leeway:0.5];
}

- (id)expectedBurnoutTime
{
  [(NSLock *)self->_burnoutStateLock lock];
  burnoutProtectionState = self->_burnoutProtectionState;
  if (burnoutProtectionState >= 2)
  {
    if (burnoutProtectionState == 2)
    {
      [(NFReaderRestrictor *)self getCooloffTime];
    }

    else
    {
      [(NFTimer *)self->_readermodeBurnoutProtectionDebounceTimer remainingTime];
    }

    v4 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v4 = [NSNumber numberWithInt:0];
  }

  v5 = v4;
  [(NSLock *)self->_burnoutStateLock unlock];

  return v5;
}

- (id)state
{
  v3 = objc_opt_new();
  v4 = [(NSMutableArray *)self->_readerOperationTimes copy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

        v10 = [*(*(&v17 + 1) + 8 * i) description];
        [v3 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v11 = [NSDictionary alloc];
  v12 = [v3 copy];
  v13 = [NSNumber numberWithUnsignedInt:self->_burnoutProtectionState];
  v14 = [NSNumber numberWithUnsignedInteger:sub_100005D64(self->_thermalMonitor)];
  v15 = [v11 initWithObjectsAndKeys:{v12, @"ReaderHistory", v13, @"state", v14, @"ThermalState", 0, v17}];

  return v15;
}

- (void)setCurrentTestTime:(id)time
{
  timeCopy = time;
  objc_storeStrong(&self->_currentTestTime, time);
  if (self->_burnoutProtectionState == 3 && ![(NFReaderRestrictor *)self thermalPressureCritical])
  {
    [(NFTimer *)self->_readermodeBurnoutProtectionDebounceTimer stopTimer];
    [(NFReaderRestrictor *)self _handleReaderBurnoutProtectionDebounceTimer];
  }
}

- (void)thermalStateChanged:(unint64_t)changed
{
  [(NSLock *)self->_burnoutStateLock lock];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i New state : %lu", v10, ClassName, Name, 442, changed);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    *buf = 67110146;
    *v71 = v13;
    *&v71[4] = 2082;
    *&v71[6] = object_getClassName(self);
    v72 = 2082;
    v73 = sel_getName(a2);
    v74 = 1024;
    v75 = 442;
    v76 = 2048;
    changedCopy = changed;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i New state : %lu", buf, 0x2Cu);
  }

  if (changed < 2)
  {
    burnoutProtectionState = self->_burnoutProtectionState;
    if (burnoutProtectionState == 2)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v52 = NFLogGetLogger();
      if (v52)
      {
        v53 = v52;
        v54 = object_getClass(self);
        v55 = class_isMetaClass(v54);
        v56 = object_getClassName(self);
        v69 = sel_getName(a2);
        v57 = 45;
        if (v55)
        {
          v57 = 43;
        }

        v53(6, "%c[%{public}s %{public}s]:%i Thermal pressure is now nominal, re-scheduling the timer.", v57, v56, v69, 457);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v58 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = object_getClass(self);
        if (class_isMetaClass(v59))
        {
          v60 = 43;
        }

        else
        {
          v60 = 45;
        }

        v61 = object_getClassName(self);
        v62 = sel_getName(a2);
        *buf = 67109890;
        *v71 = v60;
        *&v71[4] = 2082;
        *&v71[6] = v61;
        v72 = 2082;
        v73 = v62;
        v74 = 1024;
        v75 = 457;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Thermal pressure is now nominal, re-scheduling the timer.", buf, 0x22u);
      }

      readermodeBurnoutProtectionDebounceTimer = self->_readermodeBurnoutProtectionDebounceTimer;
      v51 = 0.0;
      v63 = 0.0;
      goto LABEL_64;
    }

    if (burnoutProtectionState != 3)
    {
      goto LABEL_65;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v28 = v27;
      v29 = object_getClass(self);
      v30 = class_isMetaClass(v29);
      v31 = object_getClassName(self);
      v67 = sel_getName(a2);
      v32 = 45;
      if (v30)
      {
        v32 = 43;
      }

      v28(6, "%c[%{public}s %{public}s]:%i Thermal pressure is now nominal, re-scheduling the timer.", v32, v31, v67, 450);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = object_getClass(self);
      if (class_isMetaClass(v34))
      {
        v35 = 43;
      }

      else
      {
        v35 = 45;
      }

      v36 = object_getClassName(self);
      v37 = sel_getName(a2);
      *buf = 67109890;
      *v71 = v35;
      *&v71[4] = 2082;
      *&v71[6] = v36;
      v72 = 2082;
      v73 = v37;
      v74 = 1024;
      v75 = 450;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Thermal pressure is now nominal, re-scheduling the timer.", buf, 0x22u);
    }

    v38 = NFSharedSignpostLog();
    if (!os_signpost_enabled(v38))
    {
      goto LABEL_51;
    }

    *buf = 134217984;
    *v71 = 0x4014000000000000;
    goto LABEL_50;
  }

  if (changed - 3 >= 2)
  {
    if (changed != 2 || self->_burnoutProtectionState != 3)
    {
      goto LABEL_65;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFLogGetLogger();
    if (v39)
    {
      v40 = v39;
      v41 = object_getClass(self);
      v42 = class_isMetaClass(v41);
      v43 = object_getClassName(self);
      v68 = sel_getName(a2);
      v44 = 45;
      if (v42)
      {
        v44 = 43;
      }

      v40(6, "%c[%{public}s %{public}s]:%i Thermal pressure is now moderate, re-scheduling the timer.", v44, v43, v68, 467);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v45 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = object_getClass(self);
      if (class_isMetaClass(v46))
      {
        v47 = 43;
      }

      else
      {
        v47 = 45;
      }

      v48 = object_getClassName(self);
      v49 = sel_getName(a2);
      *buf = 67109890;
      *v71 = v47;
      *&v71[4] = 2082;
      *&v71[6] = v48;
      v72 = 2082;
      v73 = v49;
      v74 = 1024;
      v75 = 467;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Thermal pressure is now moderate, re-scheduling the timer.", buf, 0x22u);
    }

    v38 = NFSharedSignpostLog();
    if (!os_signpost_enabled(v38))
    {
      goto LABEL_51;
    }

    *buf = 134217984;
    *v71 = 0x4014000000000000;
LABEL_50:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "READER_MODE_COOLOFF", "starting timer for %lf secs", buf, 0xCu);
LABEL_51:

    readermodeBurnoutProtectionDebounceTimer = self->_readermodeBurnoutProtectionDebounceTimer;
    v51 = 5.0;
LABEL_63:
    v63 = 0.5;
LABEL_64:
    [(NFTimer *)readermodeBurnoutProtectionDebounceTimer startTimer:v51 leeway:v63];
    goto LABEL_65;
  }

  v14 = self->_burnoutProtectionState;
  if (!v14)
  {
    readermodeBurnoutProtectionDebounceTimer = self->_readermodeBurnoutProtectionTimer;
    v51 = 0.0;
    goto LABEL_63;
  }

  if (v14 == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v16 = v15;
      v17 = object_getClass(self);
      v18 = class_isMetaClass(v17);
      v19 = object_getClassName(self);
      v66 = sel_getName(a2);
      v20 = 45;
      if (v18)
      {
        v20 = 43;
      }

      v16(6, "%c[%{public}s %{public}s]:%i Thermal pressure is now heavy, re-scheduling the timer.", v20, v19, v66, 481);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = object_getClass(self);
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      v24 = object_getClassName(self);
      v25 = sel_getName(a2);
      *buf = 67109890;
      *v71 = v23;
      *&v71[4] = 2082;
      *&v71[6] = v24;
      v72 = 2082;
      v73 = v25;
      v74 = 1024;
      v75 = 481;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Thermal pressure is now heavy, re-scheduling the timer.", buf, 0x22u);
    }

    [(NFTimer *)self->_readermodeBurnoutProtectionTimer startTimer:0.0];
  }

LABEL_65:
  [(NSLock *)self->_burnoutStateLock unlock];
}

- (void)_handleReaderBurnoutProtectionTimer
{
  [(NSLock *)self->_burnoutStateLock lock];
  if ([(NFReaderRestrictor *)self _requiresReaderModeProtection])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i Burnout timer elapsed.", v9, ClassName, Name, 502);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = object_getClass(self);
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      *buf = 67109890;
      v17 = v12;
      v18 = 2082;
      v19 = object_getClassName(self);
      v20 = 2082;
      v21 = sel_getName(a2);
      v22 = 1024;
      v23 = 502;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Burnout timer elapsed.", buf, 0x22u);
    }

    self->_burnoutProtectionState = 2;
    [(NSLock *)self->_burnoutStateLock unlock];
    delegate = [(NFReaderRestrictor *)self delegate];
    [delegate handleReaderBurnoutTimer];
  }

  else
  {
    burnoutStateLock = self->_burnoutStateLock;

    [(NSLock *)burnoutStateLock unlock];
  }
}

- (void)_handleReaderBurnoutProtectionDebounceTimer
{
  [(NSLock *)self->_burnoutStateLock lock];
  if ([(NFReaderRestrictor *)self _requiresThermalModeProtection]&& [(NFReaderRestrictor *)self thermalPressureCritical])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i Cooloff timer elapsed but thermals is still too hot.", v9, ClassName, Name, 517);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = object_getClass(self);
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      *buf = 67109890;
      v29 = v12;
      v30 = 2082;
      v31 = object_getClassName(self);
      v32 = 2082;
      v33 = sel_getName(a2);
      v34 = 1024;
      v35 = 517;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Cooloff timer elapsed but thermals is still too hot.", buf, 0x22u);
    }

    v13 = NFSharedSignpostLog();
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "READER_MODE_COOLOFF", "starting timer for.. ever", buf, 2u);
    }

    [(NFTimer *)self->_readermodeBurnoutProtectionDebounceTimer startTimer:3153600000.0 leeway:0.5];
    [(NSLock *)self->_burnoutStateLock unlock];
  }

  else
  {
    coolOffRunning = self->_coolOffRunning;
    self->_coolOffRunning = 0;
    if ([(NFReaderRestrictor *)self _requiresReaderModeProtection])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v16 = v15;
        v17 = object_getClass(self);
        v18 = class_isMetaClass(v17);
        v19 = object_getClassName(self);
        v27 = sel_getName(a2);
        v20 = 45;
        if (v18)
        {
          v20 = 43;
        }

        v16(6, "%c[%{public}s %{public}s]:%i Cooloff timer elapsed.", v20, v19, v27, 530);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v21 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = object_getClass(self);
        if (class_isMetaClass(v22))
        {
          v23 = 43;
        }

        else
        {
          v23 = 45;
        }

        *buf = 67109890;
        v29 = v23;
        v30 = 2082;
        v31 = object_getClassName(self);
        v32 = 2082;
        v33 = sel_getName(a2);
        v34 = 1024;
        v35 = 530;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Cooloff timer elapsed.", buf, 0x22u);
      }

      self->_burnoutProtectionState = 0;
      [(NSLock *)self->_burnoutStateLock unlock];
      delegate = [(NFReaderRestrictor *)self delegate];
      [delegate handleReaderBurnoutCleared:coolOffRunning];
    }

    else
    {
      burnoutStateLock = self->_burnoutStateLock;

      [(NSLock *)burnoutStateLock unlock];
    }
  }
}

- (NFReaderRestrictorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)maxOperationTimeSpan
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"NFReaderRestrictor.m" lineNumber:551 description:@"Not implemented"];

  return 300.0;
}

- (double)getCooloffTime
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"NFReaderRestrictor.m" lineNumber:557 description:@"Not implemented"];

  return 315360000.0;
}

- (double)maxReaderTime
{
  thermalPressureNominal = [(NFReaderRestrictor *)self thermalPressureNominal];
  result = 20.0;
  if ((thermalPressureNominal & 1) == 0)
  {
    thermalPressureBackoff = [(NFReaderRestrictor *)self thermalPressureBackoff];
    result = 0.0;
    if (thermalPressureBackoff)
    {
      return 7.0;
    }
  }

  return result;
}

@end