@interface FMDMessageMgr_iOS
+ (id)sharedInstance;
- (FMDMessageMgr_iOS)init;
- (id)_fillVibrationPattern:(id)pattern toDuration:(double)duration;
- (id)initSingleton;
- (void)_playSoundFor:(id)for;
- (void)activateMessage:(id)message;
- (void)dealloc;
- (void)stopSound;
@end

@implementation FMDMessageMgr_iOS

+ (id)sharedInstance
{
  if (qword_1003144C0 != -1)
  {
    sub_1002257FC();
  }

  v2 = qword_1003144B8;
  if (!qword_1003144B8)
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** The FMDMessageMgr_iOS singleton seems to have been deallocated. This is unexpected & damaging.", v5, 2u);
    }

    v2 = qword_1003144B8;
  }

  return v2;
}

- (FMDMessageMgr_iOS)init
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100225854(v3);
  }

  return 0;
}

- (id)initSingleton
{
  v5.receiver = self;
  v5.super_class = FMDMessageMgr_iOS;
  v2 = [(FMDMessageMgr_iOS *)&v5 init];
  if (v2)
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100225898(v3);
    }

    objc_storeStrong(&qword_1003144B8, v2);
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1002258DC(self, v3);
  }

  v4 = qword_1003144B8;
  qword_1003144B8 = 0;

  v5.receiver = self;
  v5.super_class = FMDMessageMgr_iOS;
  [(FMDMessageMgr_iOS *)&v5 dealloc];
}

- (void)activateMessage:(id)message
{
  messageCopy = message;
  v5 = +[NSMutableDictionary dictionary];
  cfNotification = [(FMDMessageMgr_iOS *)self cfNotification];
  if (cfNotification)
  {
    v7 = cfNotification;
    activeMessage = [(FMDMessageMgr_iOS *)self activeMessage];
    v9 = +[FMXPCTransactionManager sharedInstance];
    v10 = [(FMDMessageMgr_iOS *)self _xpcTransactionNameFor:activeMessage];
    [v9 endTransaction:v10];

    CFUserNotificationCancel(v7);
    [(FMDMessageMgr_iOS *)self setCfNotification:0];
    [(FMDMessageMgr_iOS *)self setActiveMessage:0];
  }

  v11 = [FMPreferencesUtil BOOLForKey:@"DisableSoundPlayback" inDomain:kFMDNotBackedUpPrefDomain];
  if ([messageCopy showMessage])
  {
    defaultButtonTitle = [messageCopy defaultButtonTitle];
    [v5 fm_safelyMapKey:kCFUserNotificationDefaultButtonTitleKey toObject:defaultButtonTitle];

    alternateButtonTitle = [messageCopy alternateButtonTitle];
    [v5 fm_safelyMapKey:kCFUserNotificationAlternateButtonTitleKey toObject:alternateButtonTitle];

    msgText = [messageCopy msgText];
    [v5 fm_safelyMapKey:kCFUserNotificationAlertMessageKey toObject:msgText];

    msgTitle = [messageCopy msgTitle];
    [v5 fm_safelyMapKey:kCFUserNotificationAlertHeaderKey toObject:msgTitle];

    v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [messageCopy showMsgInLockScreen]);
    [v5 setObject:v16 forKeyedSubscript:kCFUserNotificationAlertTopMostKey];

    v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [messageCopy dismissMsgOnUnlock] ^ 1);
    [v5 setObject:v17 forKeyedSubscript:SBUserNotificationDontDismissOnUnlock];

    v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [messageCopy dismissMsgOnLock]);
    [v5 setObject:v18 forKeyedSubscript:SBUserNotificationDismissOnLock];

    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationAllowMenuButtonDismissal];
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationAllowInCarKey];
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationIgnoresQuietMode];
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationSystemAperturePresentationKey];
    v19 = objc_alloc_init(SBSUserNotificationSystemApertureContentDefinition);
    v20 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
    v21 = [v20 pathForResource:@"findiphone-asset-JINDO" ofType:@"ca"];

    v50 = v21;
    v22 = [SBSUserNotificationCAPackageDefinition definitionWithCAPackagePath:v21];
    [v19 setLeadingAssetDefinition:v22];
    msgText2 = [messageCopy msgText];
    [v19 setAlertMessage:msgText2];

    msgTitle2 = [messageCopy msgTitle];
    [v19 setAlertHeader:msgTitle2];

    v25 = [BSColor colorWithRed:0.287 green:1.0 blue:0.719 alpha:1.0];
    v26 = [SBSUserNotificationColorDefinition definitionWithColor:v25];
    [v19 setKeyColor:v26];
    if (objc_opt_respondsToSelector())
    {
      [v19 setPreventsAutomaticDismissal:1];
    }

    build = [v19 build];
    [v5 setObject:build forKeyedSubscript:SBUserNotificationSystemApertureContentDefinitionKey];

    if ([messageCopy playSound])
    {
      if (v11)
      {
        v28 = sub_100002880();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Play sound will be activated, but sound playback is disabled.", buf, 2u);
        }
      }

      else
      {
        v30 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
        soundName = [messageCopy soundName];
        v28 = [v30 pathForResource:soundName ofType:@"caf"];

        v32 = [[NSURL alloc] initFileURLWithPath:v28 isDirectory:0];
        [v5 setObject:v32 forKeyedSubscript:kCFUserNotificationSoundURLKey];
        [v5 setObject:&off_1002E78E8 forKeyedSubscript:SBUserNotificationSoundAlertTypeKey];
        [v5 setObject:TLAlertTopicSystemNotificationFindMyDevice forKeyedSubscript:SBUserNotificationSoundAlertTopicKey];
        v33 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [messageCopy soundDuration]);
        [v5 setObject:v33 forKeyedSubscript:SBUserNotificationSoundRepeatDurationKey];

        if ([messageCopy vibrate])
        {
          _vibrationPattern = [(FMDMessageMgr_iOS *)self _vibrationPattern];
          -[FMDMessageMgr_iOS _fillVibrationPattern:toDuration:](self, "_fillVibrationPattern:toDuration:", _vibrationPattern, [messageCopy soundDuration]);
          v35 = v49 = v32;

          v53[0] = @"Intensity";
          v53[1] = @"VibePattern";
          v54[0] = &off_1002E7D00;
          v54[1] = v35;
          v36 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:2];
          [v5 setObject:v36 forKeyedSubscript:SBUserNotificationSoundVibrationPatternKey];

          v32 = v49;
        }
      }
    }

    *buf = 0;
    [messageCopy timeout];
    v38 = CFUserNotificationCreate(kCFAllocatorDefault, v37, 3uLL, buf, v5);
    if (v38)
    {
      v39 = v38;
      [(FMDMessageMgr_iOS *)self setActiveMessage:messageCopy];
      [(FMDMessageMgr_iOS *)self setCfNotification:v39];
      CFRelease(v39);
      v40 = +[FMXPCTransactionManager sharedInstance];
      v41 = [(FMDMessageMgr_iOS *)self _xpcTransactionNameFor:messageCopy];
      [v40 beginTransaction:v41];

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10012AD8C;
      block[3] = &unk_1002CD2C8;
      block[4] = v39;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      v42 = sub_100002880();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_100225974(buf, v42, v43, v44, v45, v46, v47, v48);
      }
    }
  }

  else if ([messageCopy playSound])
  {
    if (v11)
    {
      v29 = sub_100002880();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Play sound will be activated, but sound playback is disabled.", buf, 2u);
      }
    }

    else
    {
      [(FMDMessageMgr_iOS *)self _playSoundFor:messageCopy];
    }
  }
}

- (void)_playSoundFor:(id)for
{
  forCopy = for;
  v7 = objc_opt_new();
  [v7 setSoundDuration:{objc_msgSend(forCopy, "soundDuration")}];
  soundName = [forCopy soundName];
  [v7 setSoundName:soundName];

  vibrate = [forCopy vibrate];
  [v7 setVibrate:vibrate];
  v6 = +[FMDFMIPManager sharedInstance];
  [v6 playSoundWithMessage:v7 completion:&stru_1002CD308];
}

- (void)stopSound
{
  v2 = +[FMDFMIPManager sharedInstance];
  [v2 stopSoundMessageWithCompletion:&stru_1002CD328];
}

- (id)_fillVibrationPattern:(id)pattern toDuration:(double)duration
{
  patternCopy = pattern;
  v6 = objc_alloc_init(NSMutableArray);
  if (duration >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [patternCopy objectAtIndexedSubscript:v7];
      [v6 addObject:v9];

      v10 = [patternCopy objectAtIndexedSubscript:v7 + 1];
      [v6 addObject:v10];
      v8 += [v10 integerValue];
      v7 += 2;
      if (v7 >= [patternCopy count])
      {
        v7 = 0;
      }
    }

    while (v8 < 1000 * duration);
  }

  v11 = [v6 copy];

  return v11;
}

@end