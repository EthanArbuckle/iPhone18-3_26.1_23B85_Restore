@interface PTPCPassiveInstrumentationConfig
+ (id)currentPersistedSettings:(id)settings errorOut:(id *)out;
+ (id)keyToExpectedClassDict;
+ (id)resetPersistedDefaults:(id)defaults;
- (PTPCPassiveInstrumentationConfig)initWithDefaultsDomain:(id)domain errorOut:(id *)out;
- (id)_cleanPerDrawableSetting;
- (id)_locked_MssPMICycleIntervalOverride:(id *)override;
- (id)_locked_applyPresetSettings:(unint64_t)settings;
- (id)_locked_cacheMetricMonitorIsMonitoring;
- (id)_locked_cacheMssPmiOverride;
- (id)_locked_cachePerDrawableEnabled;
- (id)_locked_handleLightweightPowerTracingPreset;
- (id)_locked_handleNonePreset;
- (id)_locked_metricMonitoredAppProcessNames:(id *)names;
- (id)_locked_mssPMICycleInterval:(id *)interval;
- (id)_locked_mssPMICycleIntervalDefault:(id *)default;
- (id)_locked_perDrawableEnabled:(id *)enabled;
- (id)_locked_setMetricMonitoringEnabled:(BOOL)enabled;
- (id)_locked_setMssPMICycleInterval:(id)interval;
- (id)_locked_updateInstrumentationForPreset:(unint64_t)preset;
- (id)_restoreDefaultInstrumentationSettings;
- (id)_restoreMetricMonitorSettings;
- (id)_restoreMssPmiOverrideSetting;
- (id)_restorePerDrawableSetting;
- (id)applyPresetSettings:(unint64_t)settings;
- (id)clearPresetSettings;
- (id)metricMonitoredAppProcessNames:(id *)names;
- (id)metricMonitoringEnabled:(id *)enabled;
- (id)mssPMICycleInterval:(id *)interval;
- (id)mssPMICycleIntervalOverride:(id *)override;
- (id)perDrawableEnabled:(id *)enabled;
- (id)resetPersistedDefaultsAndRestoreDefaultInstrumentationSettings;
- (id)setMetricMonitoredAppProcessNames:(id)names;
- (id)setMetricMonitoringEnabled:(BOOL)enabled;
- (id)setMssPMICycleInterval:(id)interval;
- (id)setPerDrawableEnabled:(id)enabled;
- (unint64_t)_locked_currentPresetSetting;
- (unint64_t)currentPresetSetting;
@end

@implementation PTPCPassiveInstrumentationConfig

- (id)_locked_MssPMICycleIntervalOverride:(id *)override
{
  *override = 0;
  microstackshot_cycle_interval_override = systemstats_get_microstackshot_cycle_interval_override();
  if (microstackshot_cycle_interval_override)
  {
    v5 = microstackshot_cycle_interval_override;
    v6 = sub_100006DB0();
    if (os_signpost_enabled(v6))
    {
      v12 = 134349056;
      v13 = v5;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Got MSS PMI Override", "Got: %{public}llu", &v12, 0xCu);
    }

    v7 = [NSNumber numberWithUnsignedLongLong:v5];
  }

  else
  {
    if (*__error() == 2)
    {
      v8 = sub_100006DB0();
      if (os_signpost_enabled(v8))
      {
        LOWORD(v12) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No MSS PMI Override", "", &v12, 2u);
      }
    }

    else
    {
      v9 = __error();
      *override = sub_100006DF4(*v9);
      v8 = sub_100006E80();
      if (os_signpost_enabled(v8))
      {
        localizedDescription = [*override localizedDescription];
        v12 = 138543362;
        v13 = localizedDescription;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Get MSS PMI Override Error", "Error: %{public}@", &v12, 0xCu);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (id)_locked_mssPMICycleIntervalDefault:(id *)default
{
  *default = 0;
  microstackshot_cycle_interval_default = systemstats_get_microstackshot_cycle_interval_default();
  if (microstackshot_cycle_interval_default)
  {
    v4 = microstackshot_cycle_interval_default;
    v5 = sub_100006DB0();
    if (os_signpost_enabled(v5))
    {
      v13 = 134349056;
      v14 = v4;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Got MSS PMI default value", "Got: %{public}llu", &v13, 0xCu);
    }

    v6 = [NSNumber numberWithUnsignedLongLong:v4];
  }

  else
  {
    v7 = __error();
    v8 = sub_100006DF4(*v7);
    v9 = sub_100006DB0();
    v10 = os_signpost_enabled(v9);
    if (v8)
    {
      if (v10)
      {
        localizedDescription = [v8 localizedDescription];
        v13 = 138543362;
        v14 = localizedDescription;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MSS PMI default value failed", "Encountered error: %{public}@", &v13, 0xCu);
      }
    }

    else if (v10)
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MSS disabled by default", "", &v13, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)_locked_mssPMICycleInterval:(id *)interval
{
  *interval = 0;
  v11 = 0;
  v5 = [(PTPCPassiveInstrumentationConfig *)self _locked_MssPMICycleIntervalOverride:&v11];
  v6 = v11;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    *interval = v7;
LABEL_5:

    goto LABEL_6;
  }

  if (v5)
  {
    v9 = v5;
    goto LABEL_5;
  }

  v9 = [(PTPCPassiveInstrumentationConfig *)self _locked_mssPMICycleIntervalDefault:interval];
LABEL_6:

  return v9;
}

- (id)mssPMICycleInterval:(id *)interval
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100004E28;
  v24 = sub_100004E38;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100004E28;
  v18 = sub_100004E38;
  v19 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_1000072D4;
  v10 = &unk_100020920;
  selfCopy = self;
  v12 = &v20;
  v13 = &v14;
  v5 = v8;
  os_unfair_lock_lock(&self->_syncLock);
  v9(v5);

  os_unfair_lock_unlock(&self->_syncLock);
  *interval = v15[5];
  v6 = v21[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v6;
}

- (id)_locked_setMssPMICycleInterval:(id)interval
{
  intervalCopy = interval;
  v4 = sub_100006DB0();
  if (os_signpost_enabled(v4))
  {
    v5 = @"-";
    if (intervalCopy)
    {
      v5 = intervalCopy;
    }

    v9 = 138543362;
    v10 = v5;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SettingMssPmiCycleInterval", "Attempting to set to: %{public}@", &v9, 0xCu);
  }

  if (!intervalCopy)
  {
    intervalCopy = &off_100021B90;
  }

  [(__CFString *)intervalCopy unsignedLongLongValue];
  v6 = systemstats_set_microstackshot_cycle_interval_override();
  if (v6)
  {
    v7 = sub_100006DF4(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)setMssPMICycleInterval:(id)interval
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100004E28;
  v18 = sub_100004E38;
  v19 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_1000075B0;
  v10 = &unk_100020948;
  v13 = &v14;
  selfCopy = self;
  intervalCopy = interval;
  v12 = intervalCopy;
  v5 = v8;
  os_unfair_lock_lock(&self->_syncLock);
  v9(v5);

  os_unfair_lock_unlock(&self->_syncLock);
  v6 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v6;
}

- (id)mssPMICycleIntervalOverride:(id *)override
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100004E28;
  v24 = sub_100004E38;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100004E28;
  v18 = sub_100004E38;
  v19 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_100007798;
  v10 = &unk_100020920;
  selfCopy = self;
  v12 = &v20;
  v13 = &v14;
  v5 = v8;
  os_unfair_lock_lock(&self->_syncLock);
  v9(v5);

  os_unfair_lock_unlock(&self->_syncLock);
  *override = v15[5];
  v6 = v21[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v6;
}

- (id)perDrawableEnabled:(id *)enabled
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100004E28;
  v24 = sub_100004E38;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100004E28;
  v18 = sub_100004E38;
  v19 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_1000079AC;
  v10 = &unk_100020920;
  selfCopy = self;
  v12 = &v20;
  v13 = &v14;
  v5 = v8;
  os_unfair_lock_lock(&self->_syncLock);
  v9(v5);

  os_unfair_lock_unlock(&self->_syncLock);
  *enabled = v15[5];
  v6 = v21[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v6;
}

- (id)_locked_perDrawableEnabled:(id *)enabled
{
  v10 = 0;
  v4 = sub_100002B1C(@"mobile", 0, @"FramePacingPerDrawableSignpostsEnabled", &v10);
  v5 = v10;
  v6 = v5;
  *enabled = v6;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = &__kCFBooleanFalse;
    if (v4)
    {
      v8 = v4;
    }

    v7 = v8;
    v4 = v7;
  }

  return v7;
}

- (id)setPerDrawableEnabled:(id)enabled
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100004E28;
  v18 = sub_100004E38;
  v19 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_100007C24;
  v10 = &unk_100020948;
  v13 = &v14;
  selfCopy = self;
  enabledCopy = enabled;
  v12 = enabledCopy;
  v5 = v8;
  os_unfair_lock_lock(&self->_syncLock);
  v9(v5);

  os_unfair_lock_unlock(&self->_syncLock);
  v6 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v6;
}

- (id)metricMonitoredAppProcessNames:(id *)names
{
  if (qword_100025D58 != -1)
  {
    sub_1000131EC();
  }

  if (byte_100025D50)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_100004E28;
    v19 = sub_100004E38;
    v20 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v10 = sub_100007E78;
    v11 = &unk_100020970;
    selfCopy = self;
    v13 = &v15;
    namesCopy = names;
    v5 = v9;
    os_unfair_lock_lock(&self->_syncLock);
    v10(v5);

    os_unfair_lock_unlock(&self->_syncLock);
    v6 = v16[5];
    if (!v6)
    {
      v6 = &__NSArray0__struct;
    }

    v7 = v6;
    _Block_object_dispose(&v15, 8);
  }

  else if (names)
  {
    sub_100007E34();
    *names = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_locked_metricMonitoredAppProcessNames:(id *)names
{
  defaultsManager = [(PTPCPassiveInstrumentationConfig *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"MonitoredProcessNames"];

  return v4;
}

- (id)setMetricMonitoredAppProcessNames:(id)names
{
  namesCopy = names;
  if (qword_100025D58 != -1)
  {
    sub_1000131EC();
  }

  if ((byte_100025D50 & 1) == 0)
  {
    v6 = sub_100007E34();
LABEL_9:
    v7 = v6;
    goto LABEL_10;
  }

  if ([(PTPCPassiveInstrumentationConfig *)self instrumentationSettingsAreLocked])
  {
    v5 = sub_100006E80();
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AttempedToUpdateMonitoredProcessesWhileLocked", "", buf, 2u);
    }

    v6 = [NSError passiveTraceError:1 description:@"Instrumentation settings are locked"];
    goto LABEL_9;
  }

  if ([namesCopy count])
  {
    v9 = [[NSSet alloc] initWithArray:namesCopy];
    allObjects = [v9 allObjects];

    namesCopy = v9;
  }

  else
  {
    allObjects = 0;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  namesCopy = allObjects;
  v11 = [namesCopy countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = *v30;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(namesCopy);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v16 = sub_100006E80();
          if (os_signpost_enabled(v16))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AppProcessNameNotString", "Provided non-string process name value", buf, 2u);
          }

          v7 = [NSError passiveTraceError:1 description:@"Process names must be strings"];

          goto LABEL_10;
        }
      }

      v11 = [namesCopy countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  *buf = 0;
  v24 = buf;
  v25 = 0x3032000000;
  v26 = sub_100004E28;
  v27 = sub_100004E38;
  v28 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v18 = sub_1000082C8;
  v19 = &unk_100020948;
  v22 = buf;
  selfCopy = self;
  namesCopy = namesCopy;
  v21 = namesCopy;
  v15 = v17;
  os_unfair_lock_lock(&self->_syncLock);
  v18(v15);

  os_unfair_lock_unlock(&self->_syncLock);
  v7 = *(v24 + 5);

  _Block_object_dispose(buf, 8);
LABEL_10:

  return v7;
}

- (id)metricMonitoringEnabled:(id *)enabled
{
  if (qword_100025D58 != -1)
  {
    sub_1000131EC();
  }

  if (byte_100025D50)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v11 = sub_100008554;
    v12 = &unk_1000208D0;
    selfCopy = self;
    v14 = &v15;
    v5 = v10;
    os_unfair_lock_lock(&self->_syncLock);
    v11(v5);

    os_unfair_lock_unlock(&self->_syncLock);
    v6 = sub_100006DB0();
    if (os_signpost_enabled(v6))
    {
      if (*(v16 + 24))
      {
        v7 = @"Enabled";
      }

      else
      {
        v7 = @"Not enabled";
      }

      *buf = 138543362;
      v20 = v7;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GotMetricMonitorEnabled", "MetricMonitor state: %{public}@", buf, 0xCu);
    }

    v8 = [NSNumber numberWithBool:*(v16 + 24)];
    _Block_object_dispose(&v15, 8);
  }

  else if (enabled)
  {
    sub_100007E34();
    *enabled = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_locked_setMetricMonitoringEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = sub_100006DB0();
  if (os_signpost_enabled(v5))
  {
    v6 = @"Not enabled";
    if (enabledCopy)
    {
      v6 = @"Enabled";
    }

    *buf = 138543362;
    v30 = v6;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AttemptingToSetMetricMonitoring", "Attempting to set to state: '%{public}@'", buf, 0xCu);
  }

  _locked_isMetricMonitorIsMonitoring = [(PTPCPassiveInstrumentationConfig *)self _locked_isMetricMonitorIsMonitoring];
  if (_locked_isMetricMonitorIsMonitoring != enabledCopy)
  {
    if (enabledCopy)
    {
      v28 = 0;
      v8 = [(PTPCPassiveInstrumentationConfig *)self _locked_metricMonitoredAppProcessNames:&v28];
      v9 = v28;
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        if (![(__CFString *)v8 count])
        {

          v8 = 0;
        }

        v16 = [PPSMetricMonitorConfiguration tracingConfiguration:1.0];
        if ([(__CFString *)v8 count])
        {
          v26 = 0;
          v17 = [PPSMetricMonitorHeadlessClient startMonitoringProcessesWithNames:v8 config:v16 error:&v26];
          v18 = v26;
        }

        else
        {
          v27 = 0;
          v17 = [PPSMetricMonitorHeadlessClient startMonitoringSystemMetricsWithConfig:v16 error:&v27];
          v18 = v27;
        }

        v19 = v18;
        if (v17)
        {
          v20 = sub_100006DB0();
          if (os_signpost_enabled(v20))
          {
            v21 = @"<None>";
            if (v8)
            {
              v21 = v8;
            }

            *buf = 138543362;
            v30 = v21;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "StartedMetricMonitoring", "Start monitoring at 1s cadence. Target processes:\n%{public}@", buf, 0xCu);
          }
        }

        else
        {
          v20 = sub_100006DB0();
          if (os_signpost_enabled(v20))
          {
            localizedDescription = [v19 localizedDescription];
            v23 = localizedDescription;
            v24 = @"Unknown";
            if (localizedDescription)
            {
              v24 = localizedDescription;
            }

            *buf = 138543362;
            v30 = v24;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedToStartMetricMonitoring", "Failed to start monitoring at 1s cadence due to error: %{public}@", buf, 0xCu);
          }
        }

        v10 = v19;
      }

      goto LABEL_35;
    }

    +[PPSMetricMonitorHeadlessClient stopMonitoring];
    v12 = sub_100006DB0();
    if (os_signpost_enabled(v12))
    {
      *buf = 0;
      v14 = "StoppedMetricMonitoring";
      v15 = "";
LABEL_17:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v14, v15, buf, 2u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v11 = _locked_isMetricMonitorIsMonitoring;
  v12 = sub_100006DB0();
  v13 = os_signpost_enabled(v12);
  if (!v11)
  {
    if (v13)
    {
      *buf = 0;
      v14 = "MetricMonitorAlreadyDisabled";
      v15 = "MetricMonitor is already disabled";
      goto LABEL_17;
    }

LABEL_18:

    v10 = 0;
    goto LABEL_35;
  }

  if (v13)
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MetricMonitorAlreadyEnabled", "MetricMonitor is already enabled. We treat requests to start monitoring when already monitoring as an error", buf, 2u);
  }

  v10 = [NSError passiveTraceError:0 description:@"Power profiling is already running"];
LABEL_35:

  return v10;
}

- (id)setMetricMonitoringEnabled:(BOOL)enabled
{
  if (qword_100025D58 != -1)
  {
    sub_1000131EC();
  }

  if (byte_100025D50)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_100004E28;
    v18 = sub_100004E38;
    v19 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v9 = sub_100008AC4;
    v10 = &unk_100020998;
    selfCopy = self;
    v12 = &v14;
    enabledCopy = enabled;
    v5 = v8;
    os_unfair_lock_lock(&self->_syncLock);
    v9(v5);

    os_unfair_lock_unlock(&self->_syncLock);
    v6 = v15[5];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v6 = sub_100007E34();
  }

  return v6;
}

+ (id)currentPersistedSettings:(id)settings errorOut:(id *)out
{
  settingsCopy = settings;
  if (out)
  {
    *out = 0;
  }

  v7 = [[PTPCPassiveInstrumentationConfig alloc] initWithDefaultsDomain:settingsCopy errorOut:out];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [self resetPersistedDefaults:settingsCopy];
    v11 = v10;
    if (v10)
    {
      if (out)
      {
        v12 = v10;
        v9 = 0;
        *out = v11;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = [[PTPCPassiveInstrumentationConfig alloc] initWithDefaultsDomain:settingsCopy errorOut:out];
    }
  }

  return v9;
}

+ (id)resetPersistedDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v15 = 0;
  v4 = sub_100004414(defaultsCopy, &v15);
  v5 = v15;
  if (v4)
  {
    [v4 removeObjectForKey:@"InstrumentationConfiguration"];
    v6 = sub_100006DB0();
    if (os_signpost_enabled(v6))
    {
      v7 = @"com.apple.PerformanceTrace.passive.config";
      if (defaultsCopy)
      {
        v7 = defaultsCopy;
      }

      *buf = 138543362;
      v17 = v7;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HardResetSuccess", "Reset of collection configuration for domain %{public}@", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v9 = sub_100006E80();
    if (os_signpost_enabled(v9))
    {
      if (defaultsCopy)
      {
        v10 = defaultsCopy;
      }

      else
      {
        v10 = @"com.apple.PerformanceTrace.passive.config";
      }

      localizedDescription = [v5 localizedDescription];
      v12 = localizedDescription;
      v13 = @"Unknown";
      if (localizedDescription)
      {
        v13 = localizedDescription;
      }

      *buf = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v13;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HardResetFailure", "Failed to do a reset of instrumentation configuration for domain '%{public}@' due to error: '%{public}@'", buf, 0x16u);
    }

    v8 = v5;
  }

  return v8;
}

- (id)_restorePerDrawableSetting
{
  defaultsManager = [(PTPCPassiveInstrumentationConfig *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"CachedPerFrameDrawable"];

  defaultsManager2 = [(PTPCPassiveInstrumentationConfig *)self defaultsManager];
  v6 = [defaultsManager2 setObjectForKey:@"CachedPerFrameDrawable" objectValue:0];

  if (v6)
  {
    v7 = sub_100006E80();
    if (os_signpost_enabled(v7))
    {
      localizedDescription = [v6 localizedDescription];
      v9 = localizedDescription;
      v10 = @"Unknown";
      if (localizedDescription)
      {
        v10 = localizedDescription;
      }

      v13 = 138543362;
      v14 = v10;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PerDrawableCachedSettingFailure", "Failed to clear cached value due to error: %{public}@", &v13, 0xCu);
    }
  }

  v11 = [(PTPCPassiveInstrumentationConfig *)self _locked_setPerDrawableEnabled:v4];

  return v11;
}

- (id)_cleanPerDrawableSetting
{
  defaultsManager = [(PTPCPassiveInstrumentationConfig *)self defaultsManager];
  v4 = [defaultsManager setObjectForKey:@"CachedPerFrameDrawable" objectValue:0];

  if (v4)
  {
    v5 = sub_100006E80();
    if (os_signpost_enabled(v5))
    {
      localizedDescription = [v4 localizedDescription];
      v7 = localizedDescription;
      v8 = @"Unknown";
      if (localizedDescription)
      {
        v8 = localizedDescription;
      }

      v11 = 138543362;
      v12 = v8;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PerDrawableCachedSettingFailure", "Failed to clear cached value due to error: %{public}@", &v11, 0xCu);
    }
  }

  v9 = [(PTPCPassiveInstrumentationConfig *)self _locked_setPerDrawableEnabled:0];

  return v9;
}

- (id)_restoreMetricMonitorSettings
{
  defaultsManager = [(PTPCPassiveInstrumentationConfig *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"CachedMetricMonitorEnabled"];

  defaultsManager2 = [(PTPCPassiveInstrumentationConfig *)self defaultsManager];
  v6 = [defaultsManager2 setObjectForKey:@"CachedMetricMonitorEnabled" objectValue:0];

  if (v6)
  {
    v7 = sub_100006E80();
    if (os_signpost_enabled(v7))
    {
      localizedDescription = [v6 localizedDescription];
      v9 = localizedDescription;
      v10 = @"Unknown";
      if (localizedDescription)
      {
        v10 = localizedDescription;
      }

      v16 = 138543362;
      v17 = v10;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MetricMonitorCachedSettingFailure", "Failed to clear cached value due to error: %{public}@", &v16, 0xCu);
    }
  }

  bOOLValue = [v4 BOOLValue];
  if (bOOLValue == [(PTPCPassiveInstrumentationConfig *)self _locked_isMetricMonitorIsMonitoring])
  {
    v14 = 0;
  }

  else
  {
    v12 = sub_100006E80();
    if (os_signpost_enabled(v12))
    {
      v13 = @"Disabled";
      if (bOOLValue)
      {
        v13 = @"Enabled";
      }

      v16 = 138543362;
      v17 = v13;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RestoringMetricMonitorSetting", "Toggling to %{public}@", &v16, 0xCu);
    }

    v14 = [(PTPCPassiveInstrumentationConfig *)self _locked_setMetricMonitoringEnabled:bOOLValue];
  }

  return v14;
}

- (id)_restoreMssPmiOverrideSetting
{
  defaultsManager = [(PTPCPassiveInstrumentationConfig *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"CachedMssPmiInterval"];

  defaultsManager2 = [(PTPCPassiveInstrumentationConfig *)self defaultsManager];
  v6 = [defaultsManager2 setObjectForKey:@"CachedMssPmiInterval" objectValue:0];

  if (v6)
  {
    v7 = sub_100006E80();
    if (os_signpost_enabled(v7))
    {
      localizedDescription = [v6 localizedDescription];
      v9 = localizedDescription;
      v10 = @"Unknown";
      if (localizedDescription)
      {
        v10 = localizedDescription;
      }

      v13 = 138543362;
      v14 = v10;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MssPmiCachedSettingFailure", "Failed to clear cached value due to error: %{public}@", &v13, 0xCu);
    }
  }

  v11 = [(PTPCPassiveInstrumentationConfig *)self _locked_setMssPMICycleInterval:v4];

  return v11;
}

- (id)_restoreDefaultInstrumentationSettings
{
  v3 = objc_alloc_init(NSMutableArray);
  _cleanMssPmiSetting = [(PTPCPassiveInstrumentationConfig *)self _cleanMssPmiSetting];
  if (_cleanMssPmiSetting)
  {
    [v3 addObject:_cleanMssPmiSetting];
  }

  _cleanPerDrawableSetting = [(PTPCPassiveInstrumentationConfig *)self _cleanPerDrawableSetting];
  if (_cleanPerDrawableSetting)
  {
    [v3 addObject:_cleanPerDrawableSetting];
  }

  _cleanMetricMonitorSettings = [(PTPCPassiveInstrumentationConfig *)self _cleanMetricMonitorSettings];
  if (_cleanMetricMonitorSettings)
  {
    [v3 addObject:_cleanMetricMonitorSettings];
  }

  if ([v3 count])
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (id)resetPersistedDefaultsAndRestoreDefaultInstrumentationSettings
{
  defaultsManager = [(PTPCPassiveInstrumentationConfig *)self defaultsManager];
  [defaultsManager resetPersistedDefaults];

  _restoreDefaultInstrumentationSettings = [(PTPCPassiveInstrumentationConfig *)self _restoreDefaultInstrumentationSettings];
  v5 = _restoreDefaultInstrumentationSettings;
  if (_restoreDefaultInstrumentationSettings)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [_restoreDefaultInstrumentationSettings countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v18;
      *&v7 = 138543362;
      v16 = v7;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = sub_100006DB0();
          if (os_signpost_enabled(v12))
          {
            localizedDescription = [v11 localizedDescription];
            *buf = v16;
            v22 = localizedDescription;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RestoreDefaultSettingsFailure", "Failed to restore overall default settings due to:\nInstrumentation error: %{public}@", buf, 0xCu);
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v8);
    }

    v14 = [NSError passiveTraceError:0 description:@"Restoring defaults failed", v16];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)keyToExpectedClassDict
{
  if (qword_100025CD8 != -1)
  {
    sub_100013214();
  }

  v3 = qword_100025CD0;

  return v3;
}

- (PTPCPassiveInstrumentationConfig)initWithDefaultsDomain:(id)domain errorOut:(id *)out
{
  domainCopy = domain;
  if (domainCopy)
  {
    v7 = domainCopy;
  }

  else
  {
    v7 = @"com.apple.PerformanceTrace.passive.config";
  }

  v8 = [PTPCDefaultsManager alloc];
  keyToExpectedClassDict = [objc_opt_class() keyToExpectedClassDict];
  v10 = [(PTPCDefaultsManager *)v8 initWithDefaultsDomain:v7 configurationDictKey:@"InstrumentationConfiguration" keyToExpectedClassDict:keyToExpectedClassDict errorOut:out];

  if (v10)
  {
    v15.receiver = self;
    v15.super_class = PTPCPassiveInstrumentationConfig;
    v11 = [(PTPCPassiveInstrumentationConfig *)&v15 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_defaultsManager, v10);
      v12->_syncLock._os_unfair_lock_opaque = 0;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)_locked_currentPresetSetting
{
  defaultsManager = [(PTPCPassiveInstrumentationConfig *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"AppliedPreset"];

  if (v4)
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
    if (unsignedIntegerValue >= 2)
    {
      v6 = sub_100006E80();
      if (os_signpost_enabled(v6))
      {
        v12 = 134217984;
        v13 = unsignedIntegerValue;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnknownPresetSetting", "Unknown preset setting: '%lu'. Clearing.", &v12, 0xCu);
      }

      defaultsManager2 = [(PTPCPassiveInstrumentationConfig *)self defaultsManager];
      v8 = [defaultsManager2 setObjectForKey:@"AppliedPreset" objectValue:0];
      unsignedIntegerValue = 0;
      goto LABEL_11;
    }
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  defaultsManager2 = sub_100006DB0();
  if (os_signpost_enabled(defaultsManager2))
  {
    v9 = @"PowerTracing";
    if (!unsignedIntegerValue)
    {
      v9 = @"None";
    }

    v10 = v9;
    v12 = 138543362;
    v13 = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, defaultsManager2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CurrentPresetSetting", "Current setting: '%{public}@'", &v12, 0xCu);
  }

LABEL_11:

  return unsignedIntegerValue;
}

- (unint64_t)currentPresetSetting
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100009B74;
  v8 = &unk_1000208D0;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (id)_locked_handleNonePreset
{
  v3 = objc_alloc_init(NSMutableArray);
  _restorePerDrawableSetting = [(PTPCPassiveInstrumentationConfig *)self _restorePerDrawableSetting];
  if (_restorePerDrawableSetting)
  {
    [v3 addObject:_restorePerDrawableSetting];
  }

  _restoreMetricMonitorSettings = [(PTPCPassiveInstrumentationConfig *)self _restoreMetricMonitorSettings];
  if (_restoreMetricMonitorSettings)
  {
    [v3 addObject:_restoreMetricMonitorSettings];
  }

  _restoreMssPmiOverrideSetting = [(PTPCPassiveInstrumentationConfig *)self _restoreMssPmiOverrideSetting];
  if (_restoreMssPmiOverrideSetting)
  {
    [v3 addObject:_restoreMssPmiOverrideSetting];
  }

  if ([v3 count])
  {
    v7 = [NSMutableString stringWithFormat:@"Instrumentation configuration errors:\n"];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          localizedDescription = [*(*(&v18 + 1) + 8 * i) localizedDescription];
          v14 = localizedDescription;
          if (localizedDescription)
          {
            v15 = localizedDescription;
          }

          else
          {
            v15 = @"Unknown";
          }

          [v7 appendFormat:@"%@\n", v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v16 = [NSError passiveTraceError:0 description:v7];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_locked_cacheMetricMonitorIsMonitoring
{
  if ([(PTPCPassiveInstrumentationConfig *)self _locked_isMetricMonitorIsMonitoring])
  {
    defaultsManager = [(PTPCPassiveInstrumentationConfig *)self defaultsManager];
    v4 = [defaultsManager setObjectForKey:@"CachedMetricMonitorEnabled" objectValue:&__kCFBooleanTrue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_locked_cachePerDrawableEnabled
{
  v7 = 0;
  v3 = [(PTPCPassiveInstrumentationConfig *)self _locked_perDrawableEnabled:&v7];
  if (v3)
  {
    defaultsManager = [(PTPCPassiveInstrumentationConfig *)self defaultsManager];
    v5 = [defaultsManager setObjectForKey:@"CachedPerFrameDrawable" objectValue:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_locked_cacheMssPmiOverride
{
  v7 = 0;
  v3 = [(PTPCPassiveInstrumentationConfig *)self _locked_MssPMICycleIntervalOverride:&v7];
  if (v3)
  {
    defaultsManager = [(PTPCPassiveInstrumentationConfig *)self defaultsManager];
    v5 = [defaultsManager setObjectForKey:@"CachedMssPmiInterval" objectValue:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_locked_handleLightweightPowerTracingPreset
{
  v3 = sub_100006DB0();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ApplyingLightweightPowerTracingMode", "", buf, 2u);
  }

  v4 = objc_alloc_init(NSMutableArray);
  v5 = [(PTPCPassiveInstrumentationConfig *)self _locked_setMetricMonitoringEnabled:1];
  if (v5)
  {
    v6 = v5;
    v7 = sub_100006DB0();
    if (os_signpost_enabled(v7))
    {
      localizedDescription = [v6 localizedDescription];
      *buf = 138543362;
      v28 = localizedDescription;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PowerProfilingFailed", "Cannot start due to error enabling MetricMonitor: %{public}@", buf, 0xCu);
    }

LABEL_26:

    goto LABEL_27;
  }

  _locked_cachePerDrawableEnabled = [(PTPCPassiveInstrumentationConfig *)self _locked_cachePerDrawableEnabled];
  if (_locked_cachePerDrawableEnabled)
  {
    [v4 addObject:_locked_cachePerDrawableEnabled];
  }

  v10 = [(PTPCPassiveInstrumentationConfig *)self _locked_setPerDrawableEnabled:&__kCFBooleanTrue];
  if (v10)
  {
    [v4 addObject:v10];
  }

  _locked_cacheMssPmiOverride = [(PTPCPassiveInstrumentationConfig *)self _locked_cacheMssPmiOverride];
  if (_locked_cacheMssPmiOverride)
  {
    [v4 addObject:_locked_cacheMssPmiOverride];
  }

  v12 = [(PTPCPassiveInstrumentationConfig *)self _locked_setMssPMICycleInterval:&off_100021BA8];
  if (v12)
  {
    [v4 addObject:v12];
  }

  if ([v4 count])
  {
    v7 = [NSMutableString stringWithFormat:@"Instrumentation configuration errors:\n"];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v4;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          localizedDescription2 = [*(*(&v22 + 1) + 8 * i) localizedDescription];
          v19 = localizedDescription2;
          if (localizedDescription2)
          {
            v20 = localizedDescription2;
          }

          else
          {
            v20 = @"Unknown";
          }

          [v7 appendFormat:@"%@\n", v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

    v6 = [NSError passiveTraceError:0 description:v7];
    goto LABEL_26;
  }

  v6 = 0;
LABEL_27:

  return v6;
}

- (id)_locked_updateInstrumentationForPreset:(unint64_t)preset
{
  if (preset == 1)
  {
    _locked_handleLightweightPowerTracingPreset = [(PTPCPassiveInstrumentationConfig *)self _locked_handleLightweightPowerTracingPreset];
  }

  else
  {
    if (preset)
    {
      [NSError passiveTraceError:1 description:@"Attempted to apply unknown preset"];
    }

    else
    {
      [(PTPCPassiveInstrumentationConfig *)self _locked_handleNonePreset];
    }
    _locked_handleLightweightPowerTracingPreset = ;
  }

  return _locked_handleLightweightPowerTracingPreset;
}

- (id)_locked_applyPresetSettings:(unint64_t)settings
{
  if (settings >= 2)
  {
    v10 = sub_100006E80();
    if (os_signpost_enabled(v10))
    {
      *buf = 134217984;
      settingsCopy = settings;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AttemptedToApplyInvalidPreset", "Unknown preset setting: '%llu'. Ignoring.", buf, 0xCu);
    }

    [NSString stringWithFormat:@"Attempted to apply an invalid preset setting: %llu", settings];
    goto LABEL_13;
  }

  _locked_currentPresetSetting = [(PTPCPassiveInstrumentationConfig *)self _locked_currentPresetSetting];
  if (_locked_currentPresetSetting != settings)
  {
    if (settings)
    {
      v13 = _locked_currentPresetSetting;
      if (_locked_currentPresetSetting)
      {
        v14 = sub_100006DB0();
        if (os_signpost_enabled(v14))
        {
          v15 = @"Unknown";
          if (v13 == 1)
          {
            v15 = @"PowerTracing";
          }

          v16 = v15;
          *buf = 138543618;
          settingsCopy = @"PowerTracing";
          v37 = 2114;
          v38 = v16;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CollidingPresetSettings", "Attempted to apply preset '%{public}@' when already '%{public}@'", buf, 0x16u);
        }

        v17 = @"Unknown";
        if (v13 == 1)
        {
          v17 = @"PowerTracing";
        }

        [NSString stringWithFormat:@"Attempted to apply preset without clearing existing preset ('%@') first", v17];
        v6 = LABEL_13:;
        v11 = [NSError passiveTraceError:1 description:v6];
LABEL_14:
        v9 = v11;
        goto LABEL_15;
      }
    }

    v18 = [(PTPCPassiveInstrumentationConfig *)self _locked_updateInstrumentationForPreset:settings];
    v6 = v18;
    if (v18)
    {
      v11 = v18;
      v6 = v11;
      goto LABEL_14;
    }

    if (settings)
    {
      v19 = [NSNumber numberWithUnsignedInteger:settings];
    }

    else
    {
      v19 = 0;
    }

    defaultsManager = [(PTPCPassiveInstrumentationConfig *)self defaultsManager];
    v9 = [defaultsManager setObjectForKey:@"AppliedPreset" objectValue:v19];

    if (v9)
    {
      v21 = v9;
LABEL_55:

      goto LABEL_15;
    }

    v22 = sub_100006DB0();
    if (os_signpost_enabled(v22))
    {
      v23 = @"Unknown";
      if (settings == 1)
      {
        v23 = @"PowerTracing";
      }

      if (!settings)
      {
        v23 = @"None";
      }

      v24 = v23;
      *buf = 138543362;
      settingsCopy = v24;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UpdatedAppliedPreset", "Updated to '%{public}@'", buf, 0xCu);
    }

    sub_100002698();
    v25 = notify_post("com.apple.performancetrace.passive_preset_state_did_change");
    if (v25)
    {
      v26 = v25;
      v27 = sub_100006E80();
      if (os_signpost_enabled(v27))
      {
        v28 = @"Unknown";
        if (settings == 1)
        {
          v28 = @"PowerTracing";
        }

        if (!settings)
        {
          v28 = @"None";
        }

        v29 = v28;
        *buf = 138543618;
        settingsCopy = v29;
        v37 = 1026;
        LODWORD(v38) = v26;
        v30 = "ApplyPresetNotificationError";
        v31 = "Failed to post notification for application of preset setting: '%{public}@'. Status: %{public}#x";
        v32 = v27;
        v33 = 18;
LABEL_53:
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v30, v31, buf, v33);
      }
    }

    else
    {
      v27 = sub_100006DB0();
      if (os_signpost_enabled(v27))
      {
        v34 = @"Unknown";
        if (settings == 1)
        {
          v34 = @"PowerTracing";
        }

        if (!settings)
        {
          v34 = @"None";
        }

        v29 = v34;
        *buf = 138543362;
        settingsCopy = v29;
        v30 = "ApplyPresetNotificationSuccess";
        v31 = "Posted state change notification due to application of preset setting: '%{public}@'";
        v32 = v27;
        v33 = 12;
        goto LABEL_53;
      }
    }

    goto LABEL_55;
  }

  v6 = sub_100006DB0();
  if (os_signpost_enabled(v6))
  {
    v7 = @"Unknown";
    if (settings == 1)
    {
      v7 = @"PowerTracing";
    }

    if (!settings)
    {
      v7 = @"None";
    }

    v8 = v7;
    *buf = 138543362;
    settingsCopy = v8;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PresetIsAlreadyApplied", "Preset '%{public}@' is already applied", buf, 0xCu);
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (id)applyPresetSettings:(unint64_t)settings
{
  if (settings)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_100004E28;
    v17 = sub_100004E38;
    v18 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v8 = sub_10000A930;
    v9 = &unk_100020970;
    selfCopy = self;
    v11 = &v13;
    settingsCopy = settings;
    v4 = v7;
    os_unfair_lock_lock(&self->_syncLock);
    v8(v4);

    os_unfair_lock_unlock(&self->_syncLock);
    v5 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v5 = [NSError passiveTraceError:1 description:@"Attempted to apply the 'none' present instead of clearing"];
  }

  return v5;
}

- (id)clearPresetSettings
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_10000AAAC;
  v8 = &unk_1000208D0;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

@end