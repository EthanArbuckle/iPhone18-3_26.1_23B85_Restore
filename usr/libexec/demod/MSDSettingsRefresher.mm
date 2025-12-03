@interface MSDSettingsRefresher
+ (id)sharedInstance;
- (BOOL)initializeSettingsFileWithDeviceValues;
- (MSDSettingsRefresher)init;
- (NSNumber)volume;
- (NSString)airplaneMode;
- (NSString)trueTone;
- (id)airDropMode;
- (id)getSavedValues;
- (void)initializeCacheWithValues:(id)values;
- (void)initializeWithOverwrite:(BOOL)overwrite;
- (void)restoreSavedDeviceSettings;
- (void)setAirDropMode:(id)mode;
- (void)setAirplaneMode:(id)mode;
- (void)setTrueTone:(id)tone;
- (void)setVolume:(id)volume;
@end

@implementation MSDSettingsRefresher

+ (id)sharedInstance
{
  if (qword_1001A5988 != -1)
  {
    sub_1000E2F40();
  }

  v3 = qword_1001A5990;

  return v3;
}

- (MSDSettingsRefresher)init
{
  v7.receiver = self;
  v7.super_class = MSDSettingsRefresher;
  v2 = [(MSDSettingsRefresher *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_initialized = 0;
    v4 = objc_alloc_init(BrightnessSystemClient);
    [(MSDSettingsRefresher *)v3 setBrightnessClient:v4];

    v5 = objc_alloc_init(SFAirDropDiscoveryController);
    [(MSDSettingsRefresher *)v3 setSfAirDropController:v5];

    [(MSDSettingsRefresher *)v3 setSettingsFilePath:@"/var/mobile/Library/Application Support/ScreenSaverManager/DeviceSettings.plist"];
  }

  return v3;
}

- (void)initializeWithOverwrite:(BOOL)overwrite
{
  overwriteCopy = overwrite;
  v5 = +[NSFileManager defaultManager];
  if (self->_initialized)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "[MSDSettingsRefresher initializeWithOverwrite:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s - MSDSettingsRefresher object already initialized", &v15, 0xCu);
    }
  }

  else
  {
    settingsFilePath = [(MSDSettingsRefresher *)self settingsFilePath];
    v8 = [v5 fileExistsAtPath:settingsFilePath];

    v9 = sub_100063A54();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      v11 = !overwriteCopy;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      if (v10)
      {
        settingsFilePath2 = [(MSDSettingsRefresher *)self settingsFilePath];
        v15 = 136315394;
        v16 = "[MSDSettingsRefresher initializeWithOverwrite:]";
        v17 = 2114;
        v18 = settingsFilePath2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s - Settings file already exists at %{public}@", &v15, 0x16u);
      }

      getSavedValues = [(MSDSettingsRefresher *)self getSavedValues];
      [(MSDSettingsRefresher *)self initializeCacheWithValues:getSavedValues];

      self->_initialized = 1;
    }

    else
    {
      if (v10)
      {
        settingsFilePath3 = [(MSDSettingsRefresher *)self settingsFilePath];
        v15 = 136315394;
        v16 = "[MSDSettingsRefresher initializeWithOverwrite:]";
        v17 = 2114;
        v18 = settingsFilePath3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s - Settings file doesn't exist at %{public}@: creating a new file...", &v15, 0x16u);
      }

      self->_initialized = [(MSDSettingsRefresher *)self initializeSettingsFileWithDeviceValues];
    }
  }
}

- (BOOL)initializeSettingsFileWithDeviceValues
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  v4 = +[NSFileManager defaultManager];
  trueTone = [(MSDSettingsRefresher *)self trueTone];
  if (trueTone)
  {
    [v3 setObject:trueTone forKey:@"TrueTone"];
  }

  else
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000E2F54();
    }
  }

  airDropMode = [(MSDSettingsRefresher *)self airDropMode];

  if (airDropMode)
  {
    [v3 setObject:airDropMode forKey:@"AirDrop"];
  }

  else
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E2F88();
    }
  }

  volume = [(MSDSettingsRefresher *)self volume];

  if (volume)
  {
    [v3 setObject:volume forKey:@"Volume"];
  }

  else
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E2FBC();
    }
  }

  airplaneMode = [(MSDSettingsRefresher *)self airplaneMode];

  if (airplaneMode)
  {
    [v3 setObject:airplaneMode forKey:@"AirplaneMode"];
  }

  else
  {
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000E2FF0();
    }
  }

  settingsFilePath = [(MSDSettingsRefresher *)self settingsFilePath];
  stringByDeletingLastPathComponent = [settingsFilePath stringByDeletingLastPathComponent];

  if ([v4 fileExistsAtPath:stringByDeletingLastPathComponent])
  {
    v15 = 0;
  }

  else
  {
    v16 = sub_100063A54();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v31 = "[MSDSettingsRefresher initializeSettingsFileWithDeviceValues]";
      v32 = 2114;
      v33 = stringByDeletingLastPathComponent;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s - creating directory at %{public}@", buf, 0x16u);
    }

    v17 = [NSURL fileURLWithPath:stringByDeletingLastPathComponent];
    v29 = 0;
    v18 = [v4 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:&v29];
    v15 = v29;

    if ((v18 & 1) == 0)
    {
      sub_1000E3024(stringByDeletingLastPathComponent, v15);
LABEL_30:
      v24 = 0;
      goto LABEL_36;
    }
  }

  v19 = v15;
  settingsFilePath2 = [(MSDSettingsRefresher *)self settingsFilePath];
  v21 = [NSURL fileURLWithPath:settingsFilePath2];
  v28 = v15;
  [v3 writeToURL:v21 error:&v28];
  v15 = v28;

  v22 = sub_100063A54();
  v23 = v22;
  if (v15)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000E30F0(self, v15);
    }

    goto LABEL_30;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    settingsFilePath3 = [(MSDSettingsRefresher *)self settingsFilePath];
    *buf = 136315394;
    v31 = "[MSDSettingsRefresher initializeSettingsFileWithDeviceValues]";
    v32 = 2114;
    v33 = settingsFilePath3;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s - Initialized the default system settings file '%{public}@' and cache with values", buf, 0x16u);
  }

  v26 = sub_100063A54();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "[MSDSettingsRefresher initializeSettingsFileWithDeviceValues]";
    v32 = 2114;
    v33 = v3;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s - System Settings Values: %{public}@", buf, 0x16u);
  }

  [(MSDSettingsRefresher *)self initializeCacheWithValues:v3];
  v15 = 0;
  v24 = 1;
LABEL_36:

  return v24;
}

- (void)initializeCacheWithValues:(id)values
{
  valuesCopy = values;
  v5 = [valuesCopy objectForKey:@"TrueTone"];
  trueTone = self->_trueTone;
  self->_trueTone = v5;

  v7 = [valuesCopy objectForKey:@"AirDrop"];
  airDrop = self->_airDrop;
  self->_airDrop = v7;

  v9 = [valuesCopy objectForKey:@"Volume"];
  volume = self->_volume;
  self->_volume = v9;

  v11 = [valuesCopy objectForKey:@"AirplaneMode"];

  airplaneMode = self->_airplaneMode;
  self->_airplaneMode = v11;

  v13 = sub_100063A54();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E31AC(v13);
  }
}

- (void)restoreSavedDeviceSettings
{
  initialized = self->_initialized;
  v4 = sub_100063A54();
  v5 = v4;
  if (initialized)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[MSDSettingsRefresher restoreSavedDeviceSettings]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - Reverting system settings to defaults", &v10, 0xCu);
    }

    if (self->_trueTone)
    {
      [(MSDSettingsRefresher *)self setTrueTone:?];
    }

    else
    {
      v6 = sub_100063A54();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000E32B4();
      }
    }

    if (self->_airDrop)
    {
      [(MSDSettingsRefresher *)self setAirDropMode:?];
    }

    else
    {
      v7 = sub_100063A54();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000E32E8();
      }
    }

    if (self->_volume)
    {
      [(MSDSettingsRefresher *)self setVolume:?];
    }

    else
    {
      v8 = sub_100063A54();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E331C();
      }
    }

    if (self->_airplaneMode)
    {
      [(MSDSettingsRefresher *)self setAirplaneMode:?];
    }

    else
    {
      v9 = sub_100063A54();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E3350();
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E3230(v5);
    }

    [(MSDSettingsRefresher *)self initializeWithOverwrite:0];
  }
}

- (NSNumber)volume
{
  v2 = +[MSDAudioController sharedInstance];
  [v2 getVolumeForCategory:3];
  v4 = v3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E3384(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  LODWORD(v13) = v4;
  v14 = [NSNumber numberWithFloat:v13];

  return v14;
}

- (void)setVolume:(id)volume
{
  volumeCopy = volume;
  volume = [(MSDSettingsRefresher *)self volume];
  v6 = [volumeCopy isEqualToNumber:volume];

  if ((v6 & 1) == 0)
  {
    v7 = +[MSDAudioController sharedInstance];
    [volumeCopy floatValue];
    [v7 setVolumeTo:3 forCategory:?];
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [volumeCopy floatValue];
      v10 = 136315394;
      v11 = "[MSDSettingsRefresher setVolume:]";
      v12 = 2050;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s - Set system volume to %{public}1.2f", &v10, 0x16u);
    }
  }
}

- (NSString)trueTone
{
  brightnessClient = [(MSDSettingsRefresher *)self brightnessClient];
  v3 = [brightnessClient copyPropertyForKey:@"ColorAdaptationEnabled"];

  bOOLValue = [v3 BOOLValue];
  v5 = @"NO";
  if (bOOLValue)
  {
    v5 = @"YES";
  }

  v6 = v5;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E340C();
  }

  return v6;
}

- (void)setTrueTone:(id)tone
{
  toneCopy = tone;
  trueTone = [(MSDSettingsRefresher *)self trueTone];
  v6 = [toneCopy isEqual:trueTone];

  if ((v6 & 1) == 0)
  {
    v7 = [toneCopy isEqual:@"YES"];
    brightnessClient = [(MSDSettingsRefresher *)self brightnessClient];
    v9 = [NSNumber numberWithBool:v7];
    [brightnessClient setProperty:v9 forKey:@"ColorAdaptationEnabled"];

    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[MSDSettingsRefresher setTrueTone:]";
      v13 = 2114;
      v14 = toneCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s - Set system true tone setting to %{public}@", &v11, 0x16u);
    }
  }
}

- (NSString)airplaneMode
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100096AEC;
  v13[3] = &unk_10016BC80;
  v13[4] = &v14;
  v2 = objc_retainBlock(v13);
  if (+[NSThread isMainThread])
  {
    (v2[2])(v2);
  }

  else
  {
    dispatch_sync(&_dispatch_main_q, v2);
  }

  if (*(v15 + 24))
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = [NSString stringWithFormat:@"%@", v3];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E3484(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  _Block_object_dispose(&v14, 8);

  return v4;
}

- (void)setAirplaneMode:(id)mode
{
  modeCopy = mode;
  airplaneMode = [(MSDSettingsRefresher *)self airplaneMode];
  v6 = [modeCopy isEqual:airplaneMode];

  if ((v6 & 1) == 0)
  {
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100096C58;
    v11 = &unk_10016AFB0;
    v13 = [modeCopy isEqual:@"YES"];
    v12 = modeCopy;
    v7 = objc_retainBlock(&v8);
    if ([NSThread isMainThread:v8])
    {
      (v7[2])(v7);
    }

    else
    {
      dispatch_sync(&_dispatch_main_q, v7);
    }
  }
}

- (id)airDropMode
{
  sfAirDropController = [(MSDSettingsRefresher *)self sfAirDropController];
  discoverableMode = [sfAirDropController discoverableMode];

  if (discoverableMode >= 3)
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000E3504();
    }

    v4 = @"Off";
  }

  else
  {
    v4 = off_10016BCA0[discoverableMode];
  }

  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E3594();
  }

  return v4;
}

- (void)setAirDropMode:(id)mode
{
  modeCopy = mode;
  airDropMode = [(MSDSettingsRefresher *)self airDropMode];
  v6 = [airDropMode isEqualToString:modeCopy];

  if ((v6 & 1) == 0)
  {
    if ([modeCopy isEqualToString:@"Off"])
    {
      v7 = 0;
    }

    else if ([modeCopy isEqualToString:@"Contacts Only"])
    {
      v7 = 1;
    }

    else if ([modeCopy isEqualToString:@"Everyone"])
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    sfAirDropController = [(MSDSettingsRefresher *)self sfAirDropController];
    [sfAirDropController setDiscoverableMode:v7];

    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[MSDSettingsRefresher setAirDropMode:]";
      v12 = 2114;
      v13 = modeCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s - Set system AirDrop mode setting to %{public}@", &v10, 0x16u);
    }
  }
}

- (id)getSavedValues
{
  v3 = +[NSFileManager defaultManager];
  settingsFilePath = [(MSDSettingsRefresher *)self settingsFilePath];
  v5 = [v3 fileExistsAtPath:settingsFilePath];

  if (v5)
  {
    settingsFilePath2 = [(MSDSettingsRefresher *)self settingsFilePath];
    v7 = [NSURL fileURLWithPath:settingsFilePath2];
    v8 = [NSDictionary dictionaryWithContentsOfURL:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end