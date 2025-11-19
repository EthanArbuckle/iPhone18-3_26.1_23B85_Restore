@interface MRSystemHealthComponentHandler
- (MRSystemHealthComponentHandler)initWithComponentName:(id)a3;
- (void)postComponentStatus:(unint64_t)a3;
@end

@implementation MRSystemHealthComponentHandler

- (MRSystemHealthComponentHandler)initWithComponentName:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = MRSystemHealthComponentHandler;
  v5 = [(MRBaseComponentHandler *)&v39 init];
  v6 = v5;
  if (v5)
  {
    [(MRBaseComponentHandler *)v5 setComponentName:v4];
    v7 = [(MRBaseComponentHandler *)v6 componentName];
    v8 = [NSString stringWithFormat:@"SUcaseFor%@", v7];
    [(MRBaseComponentHandler *)v6 setComponentSUCaseKey:v8];

    v9 = +[NSUserDefaults groupStandardUserDefaults];
    v10 = [(MRBaseComponentHandler *)v6 componentSUCaseKey];
    -[MRBaseComponentHandler setIsSUCaseForComponent:](v6, "setIsSUCaseForComponent:", [v9 BOOLForKey:v10]);

    [(MRBaseComponentHandler *)v6 setDisplayNotification:0];
    [(MRBaseComponentHandler *)v6 setDisplayModalPopup:[(MRBaseComponentHandler *)v6 isSUCaseForComponent]^ 1];
    v11 = [(MRBaseComponentHandler *)v6 componentName];
    v12 = [NSString stringWithFormat:@"prefs:root=General&path=About/MAIN_PARTS_AND_SERVICE/%@", v11];
    v13 = [NSURL URLWithString:v12];
    [(MRBaseComponentHandler *)v6 setLinkedSensitiveURL:v13];

    v14 = [(MRBaseComponentHandler *)v6 componentName];
    v15 = [NSString stringWithFormat:@"com.apple.mobilerepair.%@Repair", v14];
    [(MRBaseComponentHandler *)v6 setComponentFollowupClientID:v15];

    v16 = [(MRBaseComponentHandler *)v6 componentFollowupClientID];
    v17 = [v16 stringByAppendingString:@"FINISH_REPAIR"];
    [(MRBaseComponentHandler *)v6 setFinishRepairKey:v17];

    v18 = [(MRBaseComponentHandler *)v6 componentName];
    v19 = [NSString stringWithFormat:@"unlockCheckCountFor%@", v18];
    [(MRBaseComponentHandler *)v6 setComponentUnLockCheckCountKey:v19];

    v20 = [(MRBaseComponentHandler *)v6 componentName];
    v21 = [NSString stringWithFormat:@"retriggerCheckCountFor%@", v20];
    [(MRBaseComponentHandler *)v6 setComponentRetriggerCountKey:v21];

    v22 = [(MRBaseComponentHandler *)v6 componentName];
    v23 = [NSString stringWithFormat:@"lastCheckTimeFor%@", v22];
    [(MRBaseComponentHandler *)v6 setComponentLastCheckTimeKey:v23];

    v24 = [(MRBaseComponentHandler *)v6 componentName];
    v25 = [NSString stringWithFormat:@"hasDisplayedFollowupForSHC%@", v24];
    [(MRBaseComponentHandler *)v6 setComponentHasDisplayedFollowUpKey:v25];

    v26 = [(MRBaseComponentHandler *)v6 componentName];
    v27 = [NSString stringWithFormat:@"com.apple.mobilerepair.%@unlockchecker", v26];
    [(MRBaseComponentHandler *)v6 setComponentUnlockCheckerActivityName:v27];

    [(MRBaseComponentHandler *)v6 setComponentId:0];
    [(MRBaseComponentHandler *)v6 setNotifyServer:0];
    v28 = [(MRBaseComponentHandler *)v6 componentName];
    v29 = [NSString stringWithFormat:@"firstUIDisplayedTimeFor%@", v28];
    [(MRBaseComponentHandler *)v6 setComponentFirstUIDisplayedTimeKey:v29];

    v30 = [(MRBaseComponentHandler *)v6 componentName];
    v31 = [NSString stringWithFormat:@"lastKnownIDFor%@", v30];
    [(MRBaseComponentHandler *)v6 setLastKnownComponentIdentifierKey:v31];

    v32 = [(MRBaseComponentHandler *)v6 componentName];
    v33 = [CRFDRBaseDeviceHandler copySealingManifestDataInstanceForComponent:v32];
    [(MRBaseComponentHandler *)v6 setLastKnownComponentIdentifierValue:v33];

    [(MRBaseComponentHandler *)v6 setUnlockCheckActivityRequired:0];
    v34 = [(MRBaseComponentHandler *)v6 componentName];
    v35 = dispatch_queue_create([v34 UTF8String], 0);
    [(MRSystemHealthComponentHandler *)v6 setComponentEventQueue:v35];

    v36 = [(MRBaseComponentHandler *)v6 componentName];
    v37 = [v36 stringByAppendingString:@"Failed"];
    [(MRBaseComponentHandler *)v6 setComponentStatusKey:v37];
  }

  return v6;
}

- (void)postComponentStatus:(unint64_t)a3
{
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MRBaseComponentHandler *)self componentName];
    v7 = +[NSXPCConnection currentConnection];
    *buf = 138412802;
    v21 = v6;
    v22 = 2048;
    v23 = a3;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "postComponentStatus name:%@ status:%llu connection:%@", buf, 0x20u);
  }

  v8 = [(MRBaseComponentHandler *)self componentAuthHandler];
  v9 = [v8 copyComponentStatus];

  v10 = handleForCategory();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9 != -3)
  {
    if (v11)
    {
      v15 = [(MRBaseComponentHandler *)self componentName];
      *buf = 138412290;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@]Processing componentStatus", buf, 0xCu);
    }

    if (a3 == 2)
    {
      v16 = 1;
    }

    else
    {
      if (a3 != 1)
      {
LABEL_14:
        v13 = [(MRSystemHealthComponentHandler *)self componentEventQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000BD3C;
        block[3] = &unk_1000187B8;
        block[4] = self;
        dispatch_async(v13, block);
        goto LABEL_15;
      }

      v16 = 0;
    }

    v17 = [NSUserDefaults groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
    v18 = [(MRBaseComponentHandler *)self componentStatusKey];
    [v17 setBool:v16 forKey:v18];

    goto LABEL_14;
  }

  if (v11)
  {
    v12 = [(MRBaseComponentHandler *)self componentName];
    *buf = 138412290;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@]Ignoring componentStatus for pending repair case", buf, 0xCu);
  }

  v13 = [NSUserDefaults groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
  v14 = [(MRBaseComponentHandler *)self componentStatusKey];
  [v13 removeObjectForKey:v14];

LABEL_15:
}

@end