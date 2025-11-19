@interface PRSystemSettingsMonitor
- (BOOL)startMonitoring;
- (PRSystemSettingsMonitor)initWithQueue:(id)a3;
- (unint64_t)airplaneModeStatus;
- (void)airplaneModeStatusChanged;
- (void)dealloc;
- (void)fetchAndUpdateAirplaneModeStatus;
- (void)initRadioSCPreferencesRef;
@end

@implementation PRSystemSettingsMonitor

- (PRSystemSettingsMonitor)initWithQueue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PRSystemSettingsMonitor;
  v6 = [(PRSystemSettingsMonitor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    airplaneModeStatusInternal = v7->_airplaneModeStatusInternal;
    v7->_airplaneModeStatusInternal = 0;

    v7->_radioPrefs = 0;
    v7->_monitoring = 0;
  }

  return v7;
}

- (void)dealloc
{
  radioPrefs = self->_radioPrefs;
  if (radioPrefs)
  {
    CFRelease(radioPrefs);
  }

  v4.receiver = self;
  v4.super_class = PRSystemSettingsMonitor;
  [(PRSystemSettingsMonitor *)&v4 dealloc];
}

- (void)initRadioSCPreferencesRef
{
  if (!self->_radioPrefs)
  {
    v3 = SCPreferencesCreate(kCFAllocatorDefault, @"com.apple.WirelessRadioManager:registerForAirplaneModeNotifications", @"com.apple.radios.plist");
    self->_radioPrefs = v3;
    if (!v3 && os_log_type_enabled(qword_1009F4F80, OS_LOG_TYPE_ERROR))
    {
      sub_1004BD9D8();
    }
  }
}

- (BOOL)startMonitoring
{
  if (self->_monitoring)
  {
    return 1;
  }

  radioPrefs = self->_radioPrefs;
  if (!radioPrefs)
  {
    [(PRSystemSettingsMonitor *)self initRadioSCPreferencesRef];
    radioPrefs = self->_radioPrefs;
  }

  context.version = 0;
  context.info = self;
  memset(&context.retain, 0, 24);
  v5 = SCPreferencesSetCallback(radioPrefs, sub_1003163DC, &context);
  v2 = v5 != 0;
  if (v5)
  {
    [(PRSystemSettingsMonitor *)self setAirplaneModeStatusInternal:0];
    [(PRSystemSettingsMonitor *)self fetchAndUpdateAirplaneModeStatus];
    v6 = SCPreferencesSetDispatchQueue(self->_radioPrefs, self->_queue);
    v7 = qword_1009F4F80;
    if (v6)
    {
      if (os_log_type_enabled(qword_1009F4F80, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "regulatory,ap,Airplane Mode notifications are successfully scheduled.", buf, 2u);
      }

      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003163E4;
      block[3] = &unk_10098BD28;
      block[4] = self;
      dispatch_async(queue, block);
    }

    else if (os_log_type_enabled(qword_1009F4F80, OS_LOG_TYPE_ERROR))
    {
      sub_1004BDA40();
    }

    self->_monitoring = 1;
  }

  else if (os_log_type_enabled(qword_1009F4F80, OS_LOG_TYPE_ERROR))
  {
    sub_1004BDA0C();
  }

  return v2;
}

- (void)airplaneModeStatusChanged
{
  v3 = qword_1009F4F80;
  if (os_log_type_enabled(qword_1009F4F80, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "regulatory,ap,Airplane Mode changed notification.", &v11, 2u);
  }

  [(PRSystemSettingsMonitor *)self fetchAndUpdateAirplaneModeStatus];
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(PRSystemSettingsMonitor *)v4 airplaneModeStatus];
  v6 = qword_1009F4F80;
  if (os_log_type_enabled(qword_1009F4F80, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"PRAirplaneModeOff";
    if (v5 == 1)
    {
      v7 = @"PRAirplaneModeOn";
    }

    if (!v5)
    {
      v7 = @"PRAirplaneModeStatusUnknown";
    }

    v8 = v7;
    v11 = 138412290;
    v12 = v8;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "regulatory,ap,Airplane Mode changed: %@", &v11, 0xCu);
  }

  airplaneModeChangedHandler = v4->_airplaneModeChangedHandler;
  if (airplaneModeChangedHandler)
  {
    airplaneModeChangedHandler[2](airplaneModeChangedHandler, v5);
  }

  objc_sync_exit(v4);
}

- (void)fetchAndUpdateAirplaneModeStatus
{
  SCPreferencesSynchronize(self->_radioPrefs);
  radioPrefs = self->_radioPrefs;
  if (radioPrefs)
  {
    SCPreferencesLock(radioPrefs, 1u);
    [(PRSystemSettingsMonitor *)self setAirplaneModeStatusInternal:SCPreferencesGetValue(self->_radioPrefs, @"AirplaneMode")];
    v4 = self->_radioPrefs;

    SCPreferencesUnlock(v4);
  }

  else if (os_log_type_enabled(qword_1009F4F80, OS_LOG_TYPE_ERROR))
  {
    sub_1004BDA74();
  }
}

- (unint64_t)airplaneModeStatus
{
  if (!self->_radioPrefs)
  {
    [(PRSystemSettingsMonitor *)self initRadioSCPreferencesRef];
    [(PRSystemSettingsMonitor *)self fetchAndUpdateAirplaneModeStatus];
  }

  result = self->_airplaneModeStatusInternal;
  if (result)
  {
    if ([result BOOLValue])
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

@end