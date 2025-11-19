@interface LocalCaptureSettingsController
- (BOOL)getLocalCaptureAudioOnlyValue;
- (id)getCurrentSaveLocationName;
- (id)getPreferenceValue:(__CFString *)a3;
- (id)getSwitchState:(__CFString *)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)audioOnlyToggleChanged:(id)a3;
- (void)dealloc;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentPickerWasCancelled:(id)a3;
- (void)handleAudioOnlyPreferenceChanged;
- (void)setLocalCaptureAudioOnlyValue:(BOOL)a3;
- (void)setPreferenceValue:(id)a3 forKey:(__CFString *)a4;
- (void)setSwitchState:(__CFString *)a3 value:(id)a4;
- (void)showDocumentPicker:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation LocalCaptureSettingsController

- (void)viewDidLoad
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v7 = "[LocalCaptureSettingsController viewDidLoad]";
    v8 = 1024;
    v9 = 37;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v5.receiver = self;
  v5.super_class = LocalCaptureSettingsController;
  [(LocalCaptureSettingsController *)&v5 viewDidLoad];
  v3 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"HQLR_STATUSBAR_TAPPED_ALERT_TITLE"];
  [(LocalCaptureSettingsController *)self setTitle:v3];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100001F50, @"com.apple.replaykit.audioOnlyPreferenceChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)dealloc
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v6 = "[LocalCaptureSettingsController dealloc]";
    v7 = 1024;
    v8 = 72;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.replaykit.audioOnlyPreferenceChanged", 0);
  v4.receiver = self;
  v4.super_class = LocalCaptureSettingsController;
  [(LocalCaptureSettingsController *)&v4 dealloc];
}

- (id)specifiers
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[LocalCaptureSettingsController specifiers]";
    v22 = 1024;
    v23 = 82;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v19.receiver = self;
  v19.super_class = LocalCaptureSettingsController;
  v3 = [(LocalCaptureSettingsController *)&v19 specifiers];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [PSSpecifier groupSpecifierWithID:@"LOCAL_CAPTURE_GROUP"];
    v7 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"HQLR_SETTINGS_SAVE_LOCATION_FOOTER"];
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v8 = [PSSpecifier preferenceSpecifierNamed:@"Save Location" target:self set:0 get:0 detail:0 cell:8 edit:0];
    v9 = PSIDKey;
    [v8 setProperty:@"save_location" forKey:PSIDKey];
    [v5 addObject:v8];
    v10 = [PSSpecifier preferenceSpecifierNamed:@"Audio Only" target:self set:0 get:0 detail:0 cell:6 edit:0];
    [v10 setProperty:@"audio_only" forKey:v9];
    [v5 addObject:v10];
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v21 = "[LocalCaptureSettingsController specifiers]";
      v22 = 1024;
      v23 = 114;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Added audioOnly specifier", buf, 0x12u);
    }

    v18.receiver = self;
    v18.super_class = LocalCaptureSettingsController;
    [(LocalCaptureSettingsController *)&v18 setSpecifiers:v5];
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 count];
      *buf = 136446722;
      v21 = "[LocalCaptureSettingsController specifiers]";
      v22 = 1024;
      v23 = 116;
      v24 = 2048;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Created custom specifiers array with %lu items", buf, 0x1Cu);
    }
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v17.receiver = self;
    v17.super_class = LocalCaptureSettingsController;
    v12 = [(LocalCaptureSettingsController *)&v17 specifiers];
    v13 = [v12 count];
    *buf = 136446722;
    v21 = "[LocalCaptureSettingsController specifiers]";
    v22 = 1024;
    v23 = 119;
    v24 = 2048;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Returning %lu specifiers", buf, 0x1Cu);
  }

  v16.receiver = self;
  v16.super_class = LocalCaptureSettingsController;
  v14 = [(LocalCaptureSettingsController *)&v16 specifiers];

  return v14;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[LocalCaptureSettingsController numberOfSectionsInTableView:]";
    v7 = 1024;
    v8 = 124;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  return 1;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[LocalCaptureSettingsController tableView:numberOfRowsInSection:]";
    v8 = 1024;
    v9 = 129;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v6, 0x12u);
  }

  return 2;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136446722;
    v28 = "[LocalCaptureSettingsController tableView:cellForRowAtIndexPath:]";
    v29 = 1024;
    v30 = 134;
    v31 = 2048;
    v32 = [v7 row];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Creating cell for row %ld", &v27, 0x1Cu);
  }

  v8 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"HQLR_STATUSBAR_TAPPED_ALERT_TITLE"];
  [(LocalCaptureSettingsController *)self setTitle:v8];

  if ([v7 row])
  {
    v9 = [v7 row];
    v10 = [UITableViewCell alloc];
    if (v9 == 1)
    {
      v11 = [v10 initWithStyle:0 reuseIdentifier:@"AudioOnlyCell"];
      v12 = [v11 textLabel];
      [v12 setText:@"Audio Only"];

      [v11 setSelectionStyle:0];
      v13 = objc_alloc_init(UISwitch);
      v14 = [(LocalCaptureSettingsController *)self getSwitchState:@"RPAudioOnlySelection"];
      v15 = [v14 BOOLValue];

      [v13 setOn:v15];
      [v13 addTarget:self action:"audioOnlyToggleChanged:" forControlEvents:4096];
      [v11 setAccessoryView:v13];
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 136446722;
        v28 = "[LocalCaptureSettingsController tableView:cellForRowAtIndexPath:]";
        v29 = 1024;
        v30 = 162;
        v31 = 1024;
        LODWORD(v32) = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Created audio only toggle with value: %d", &v27, 0x18u);
      }
    }

    else
    {
      v11 = [v10 initWithStyle:0 reuseIdentifier:@"DefaultCell"];
      v24 = [v11 textLabel];
      [v24 setText:@"Unknown"];

      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v7 row];
        v27 = 136446722;
        v28 = "[LocalCaptureSettingsController tableView:cellForRowAtIndexPath:]";
        v29 = 1024;
        v30 = 168;
        v31 = 2048;
        v32 = v25;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Created fallback cell for row: %ld", &v27, 0x1Cu);
      }
    }
  }

  else
  {
    v11 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:@"SaveLocationCell"];
    v16 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"HQLR_SETTINGS_SAVE_LOCATION"];
    v17 = [v11 textLabel];
    [v17 setText:v16];

    v18 = [(LocalCaptureSettingsController *)self getCurrentSaveLocationName];
    v19 = [v11 detailTextLabel];
    [v19 setText:v18];

    [v11 setAccessoryType:1];
    [v11 setSelectionStyle:3];
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v11 textLabel];
      v21 = [v20 text];
      v22 = [v11 detailTextLabel];
      v23 = [v22 text];
      v27 = 136446978;
      v28 = "[LocalCaptureSettingsController tableView:cellForRowAtIndexPath:]";
      v29 = 1024;
      v30 = 148;
      v31 = 2112;
      v32 = v21;
      v33 = 2112;
      v34 = v23;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Created Save Location cell - textLabel: %@, detailLabel: %@", &v27, 0x26u);
    }
  }

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446722;
    v8 = "[LocalCaptureSettingsController tableView:didSelectRowAtIndexPath:]";
    v9 = 1024;
    v10 = 176;
    v11 = 2048;
    v12 = [v6 row];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Row %ld tapped", &v7, 0x1Cu);
  }

  if (![v6 row])
  {
    [(LocalCaptureSettingsController *)self showDocumentPicker:0];
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446466;
      v8 = "[LocalCaptureSettingsController tableView:didSelectRowAtIndexPath:]";
      v9 = 1024;
      v10 = 181;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Save Location row tapped, showing document picker", &v7, 0x12u);
    }
  }
}

- (BOOL)getLocalCaptureAudioOnlyValue
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[LocalCaptureSettingsController getLocalCaptureAudioOnlyValue]";
    v6 = 1024;
    v7 = 188;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Getting audio only setting", &v4, 0x12u);
  }

  v2 = CFPreferencesCopyAppValue(@"RPAudioOnlySelection", @"com.apple.replayd");
  if (v2)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446722;
      v5 = "[LocalCaptureSettingsController getLocalCaptureAudioOnlyValue]";
      v6 = 1024;
      v7 = 194;
      v8 = 1024;
      v9 = 1;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Read audio only: %d", &v4, 0x18u);
    }

    CFRelease(v2);
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[LocalCaptureSettingsController getLocalCaptureAudioOnlyValue]";
    v6 = 1024;
    v7 = 197;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d No audio only setting found, defaulting to NO", &v4, 0x12u);
  }

  return v2 != 0;
}

- (void)setLocalCaptureAudioOnlyValue:(BOOL)a3
{
  v3 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[LocalCaptureSettingsController setLocalCaptureAudioOnlyValue:]";
    v7 = 1024;
    v8 = 205;
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Setting audio only to: %d", &v5, 0x18u);
  }

  if (v3)
  {
    CFPreferencesSetAppValue(@"RPAudioOnlySelection", kCFBooleanTrue, @"com.apple.replayd");
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446466;
      v6 = "[LocalCaptureSettingsController setLocalCaptureAudioOnlyValue:]";
      v7 = 1024;
      v8 = 209;
      v4 = " [INFO] %{public}s:%d Set RPHQLRAudioOnly to true";
LABEL_11:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v4, &v5, 0x12u);
    }
  }

  else
  {
    CFPreferencesSetAppValue(@"RPAudioOnlySelection", 0, @"com.apple.replayd");
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446466;
      v6 = "[LocalCaptureSettingsController setLocalCaptureAudioOnlyValue:]";
      v7 = 1024;
      v8 = 213;
      v4 = " [INFO] %{public}s:%d Removed RPHQLRAudioOnly key from preferences";
      goto LABEL_11;
    }
  }

  CFPreferencesAppSynchronize(@"com.apple.replayd");
}

- (id)getSwitchState:(__CFString *)a3
{
  CFPreferencesSynchronize(@"com.apple.replayd", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  v4 = CFPreferencesCopyAppValue(a3, @"com.apple.replayd");
  v5 = v4;
  if (v4)
  {
    CFRelease(v4);
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446722;
    v10 = "[LocalCaptureSettingsController getSwitchState:]";
    v11 = 1024;
    v12 = 228;
    v13 = 1024;
    v14 = v5 != 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Read audio only value: %d", &v9, 0x18u);
  }

  v6 = &kCFBooleanTrue;
  if (!v5)
  {
    v6 = &kCFBooleanFalse;
  }

  v7 = *v6;

  return v7;
}

- (void)setSwitchState:(__CFString *)a3 value:(id)a4
{
  if ([a4 BOOLValue])
  {
    v5 = kCFBooleanTrue;
  }

  else
  {
    v5 = 0;
  }

  CFPreferencesSetAppValue(a3, v5, @"com.apple.replayd");

  CFPreferencesAppSynchronize(@"com.apple.replayd");
}

- (void)audioOnlyToggleChanged:(id)a3
{
  v4 = [a3 isOn];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[LocalCaptureSettingsController audioOnlyToggleChanged:]";
    v8 = 1024;
    v9 = 243;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Audio only toggle changed: %d", &v6, 0x18u);
  }

  v5 = [NSNumber numberWithBool:v4];
  [(LocalCaptureSettingsController *)self setSwitchState:@"RPAudioOnlySelection" value:v5];
}

- (void)showDocumentPicker:(id)a3
{
  [(LocalCaptureSettingsController *)self setSaveLocationSpecifier:a3];
  v4 = [UIDocumentPickerViewController alloc];
  v15 = UTTypeFolder;
  v5 = [NSArray arrayWithObjects:&v15 count:1];
  v6 = [v4 initForOpeningContentTypes:v5 asCopy:0];

  [v6 setDelegate:self];
  [v6 setModalPresentationStyle:2];
  v7 = self;
  v8 = [(LocalCaptureSettingsController *)v7 presentedViewController];

  if (v8)
  {
    do
    {
      v9 = [(LocalCaptureSettingsController *)v7 presentedViewController];

      v10 = [(LocalCaptureSettingsController *)v9 presentedViewController];

      v7 = v9;
    }

    while (v10);
  }

  else
  {
    v9 = v7;
  }

  [(LocalCaptureSettingsController *)v9 presentViewController:v6 animated:1 completion:0];
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446466;
    v12 = "[LocalCaptureSettingsController showDocumentPicker:]";
    v13 = 1024;
    v14 = 265;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Presenting document picker", &v11, 0x12u);
  }
}

- (id)getPreferenceValue:(__CFString *)a3
{
  v3 = CFPreferencesCopyAppValue(a3, @"com.apple.replayd");

  return v3;
}

- (void)setPreferenceValue:(id)a3 forKey:(__CFString *)a4
{
  CFPreferencesSetAppValue(a4, a3, @"com.apple.replayd");

  CFPreferencesAppSynchronize(@"com.apple.replayd");
}

- (id)getCurrentSaveLocationName
{
  v3 = [(LocalCaptureSettingsController *)self getPreferenceValue:@"RPSaveLocationPath"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = +[NSFileManager defaultManager];
      v5 = [v4 displayNameAtPath:v3];
      v6 = v5;
      if (v5 && [v5 length])
      {
        [(LocalCaptureSettingsController *)self setPreferenceValue:v6 forKey:@"RPSaveLocationName"];
        goto LABEL_13;
      }
    }
  }

  v4 = [(LocalCaptureSettingsController *)self getPreferenceValue:@"RPSaveLocationName"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v4 length])
  {
    v7 = v4;
    v4 = v7;
  }

  else
  {
    v7 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_HQLR_FILES"];
  }

  v6 = v7;
LABEL_13:

  return v6;
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v5 = a4;
  if ([v5 count])
  {
    v6 = [v5 firstObject];
    v7 = [v6 path];
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 displayNameAtPath:v7];
    v10 = v9;
    if (!v9 || ![v9 length])
    {
      v11 = [v6 lastPathComponent];
      v12 = [v11 stringByDeletingPathExtension];

      v10 = v12;
    }

    [(LocalCaptureSettingsController *)self setPreferenceValue:v7 forKey:@"RPSaveLocationPath"];
    [(LocalCaptureSettingsController *)self setPreferenceValue:v10 forKey:@"RPSaveLocationName"];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003C60;
    block[3] = &unk_1000A1088;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v15 = "[LocalCaptureSettingsController documentPicker:didPickDocumentsAtURLs:]";
      v16 = 1024;
      v17 = 325;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Selected folder: %@ at path: %@", buf, 0x26u);
    }
  }
}

- (void)documentPickerWasCancelled:(id)a3
{
  v3 = a3;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[LocalCaptureSettingsController documentPickerWasCancelled:]";
    v6 = 1024;
    v7 = 330;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Document picker cancelled", &v4, 0x12u);
  }
}

- (void)handleAudioOnlyPreferenceChanged
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v7 = "[LocalCaptureSettingsController handleAudioOnlyPreferenceChanged]";
    v8 = 1024;
    v9 = 334;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Received Darwin notification for audio only preference change", buf, 0x12u);
  }

  if (!-[LocalCaptureSettingsController isHandlingNotification](self, "isHandlingNotification") && -[LocalCaptureSettingsController isViewLoaded](self, "isViewLoaded") && (-[LocalCaptureSettingsController view](self, "view"), v3 = objc_claimAutoreleasedReturnValue(), [v3 window], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    [(LocalCaptureSettingsController *)self setIsHandlingNotification:1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003F64;
    block[3] = &unk_1000A1088;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v7 = "[LocalCaptureSettingsController handleAudioOnlyPreferenceChanged]";
    v8 = 1024;
    v9 = 338;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Skipping reload - already handling notification or view not visible", buf, 0x12u);
  }
}

@end