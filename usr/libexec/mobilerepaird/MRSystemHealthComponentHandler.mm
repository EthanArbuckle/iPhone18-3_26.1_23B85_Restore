@interface MRSystemHealthComponentHandler
- (MRSystemHealthComponentHandler)initWithComponentName:(id)name;
- (void)postComponentStatus:(unint64_t)status;
@end

@implementation MRSystemHealthComponentHandler

- (MRSystemHealthComponentHandler)initWithComponentName:(id)name
{
  nameCopy = name;
  v39.receiver = self;
  v39.super_class = MRSystemHealthComponentHandler;
  v5 = [(MRBaseComponentHandler *)&v39 init];
  v6 = v5;
  if (v5)
  {
    [(MRBaseComponentHandler *)v5 setComponentName:nameCopy];
    componentName = [(MRBaseComponentHandler *)v6 componentName];
    v8 = [NSString stringWithFormat:@"SUcaseFor%@", componentName];
    [(MRBaseComponentHandler *)v6 setComponentSUCaseKey:v8];

    v9 = +[NSUserDefaults groupStandardUserDefaults];
    componentSUCaseKey = [(MRBaseComponentHandler *)v6 componentSUCaseKey];
    -[MRBaseComponentHandler setIsSUCaseForComponent:](v6, "setIsSUCaseForComponent:", [v9 BOOLForKey:componentSUCaseKey]);

    [(MRBaseComponentHandler *)v6 setDisplayNotification:0];
    [(MRBaseComponentHandler *)v6 setDisplayModalPopup:[(MRBaseComponentHandler *)v6 isSUCaseForComponent]^ 1];
    componentName2 = [(MRBaseComponentHandler *)v6 componentName];
    v12 = [NSString stringWithFormat:@"prefs:root=General&path=About/MAIN_PARTS_AND_SERVICE/%@", componentName2];
    v13 = [NSURL URLWithString:v12];
    [(MRBaseComponentHandler *)v6 setLinkedSensitiveURL:v13];

    componentName3 = [(MRBaseComponentHandler *)v6 componentName];
    v15 = [NSString stringWithFormat:@"com.apple.mobilerepair.%@Repair", componentName3];
    [(MRBaseComponentHandler *)v6 setComponentFollowupClientID:v15];

    componentFollowupClientID = [(MRBaseComponentHandler *)v6 componentFollowupClientID];
    v17 = [componentFollowupClientID stringByAppendingString:@"FINISH_REPAIR"];
    [(MRBaseComponentHandler *)v6 setFinishRepairKey:v17];

    componentName4 = [(MRBaseComponentHandler *)v6 componentName];
    v19 = [NSString stringWithFormat:@"unlockCheckCountFor%@", componentName4];
    [(MRBaseComponentHandler *)v6 setComponentUnLockCheckCountKey:v19];

    componentName5 = [(MRBaseComponentHandler *)v6 componentName];
    v21 = [NSString stringWithFormat:@"retriggerCheckCountFor%@", componentName5];
    [(MRBaseComponentHandler *)v6 setComponentRetriggerCountKey:v21];

    componentName6 = [(MRBaseComponentHandler *)v6 componentName];
    v23 = [NSString stringWithFormat:@"lastCheckTimeFor%@", componentName6];
    [(MRBaseComponentHandler *)v6 setComponentLastCheckTimeKey:v23];

    componentName7 = [(MRBaseComponentHandler *)v6 componentName];
    v25 = [NSString stringWithFormat:@"hasDisplayedFollowupForSHC%@", componentName7];
    [(MRBaseComponentHandler *)v6 setComponentHasDisplayedFollowUpKey:v25];

    componentName8 = [(MRBaseComponentHandler *)v6 componentName];
    v27 = [NSString stringWithFormat:@"com.apple.mobilerepair.%@unlockchecker", componentName8];
    [(MRBaseComponentHandler *)v6 setComponentUnlockCheckerActivityName:v27];

    [(MRBaseComponentHandler *)v6 setComponentId:0];
    [(MRBaseComponentHandler *)v6 setNotifyServer:0];
    componentName9 = [(MRBaseComponentHandler *)v6 componentName];
    v29 = [NSString stringWithFormat:@"firstUIDisplayedTimeFor%@", componentName9];
    [(MRBaseComponentHandler *)v6 setComponentFirstUIDisplayedTimeKey:v29];

    componentName10 = [(MRBaseComponentHandler *)v6 componentName];
    v31 = [NSString stringWithFormat:@"lastKnownIDFor%@", componentName10];
    [(MRBaseComponentHandler *)v6 setLastKnownComponentIdentifierKey:v31];

    componentName11 = [(MRBaseComponentHandler *)v6 componentName];
    v33 = [CRFDRBaseDeviceHandler copySealingManifestDataInstanceForComponent:componentName11];
    [(MRBaseComponentHandler *)v6 setLastKnownComponentIdentifierValue:v33];

    [(MRBaseComponentHandler *)v6 setUnlockCheckActivityRequired:0];
    componentName12 = [(MRBaseComponentHandler *)v6 componentName];
    v35 = dispatch_queue_create([componentName12 UTF8String], 0);
    [(MRSystemHealthComponentHandler *)v6 setComponentEventQueue:v35];

    componentName13 = [(MRBaseComponentHandler *)v6 componentName];
    v37 = [componentName13 stringByAppendingString:@"Failed"];
    [(MRBaseComponentHandler *)v6 setComponentStatusKey:v37];
  }

  return v6;
}

- (void)postComponentStatus:(unint64_t)status
{
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    componentName = [(MRBaseComponentHandler *)self componentName];
    v7 = +[NSXPCConnection currentConnection];
    *buf = 138412802;
    v21 = componentName;
    v22 = 2048;
    statusCopy = status;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "postComponentStatus name:%@ status:%llu connection:%@", buf, 0x20u);
  }

  componentAuthHandler = [(MRBaseComponentHandler *)self componentAuthHandler];
  copyComponentStatus = [componentAuthHandler copyComponentStatus];

  v10 = handleForCategory();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (copyComponentStatus != -3)
  {
    if (v11)
    {
      componentName2 = [(MRBaseComponentHandler *)self componentName];
      *buf = 138412290;
      v21 = componentName2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@]Processing componentStatus", buf, 0xCu);
    }

    if (status == 2)
    {
      v16 = 1;
    }

    else
    {
      if (status != 1)
      {
LABEL_14:
        componentEventQueue = [(MRSystemHealthComponentHandler *)self componentEventQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000BD3C;
        block[3] = &unk_1000187B8;
        block[4] = self;
        dispatch_async(componentEventQueue, block);
        goto LABEL_15;
      }

      v16 = 0;
    }

    v17 = [NSUserDefaults groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
    componentStatusKey = [(MRBaseComponentHandler *)self componentStatusKey];
    [v17 setBool:v16 forKey:componentStatusKey];

    goto LABEL_14;
  }

  if (v11)
  {
    componentName3 = [(MRBaseComponentHandler *)self componentName];
    *buf = 138412290;
    v21 = componentName3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@]Ignoring componentStatus for pending repair case", buf, 0xCu);
  }

  componentEventQueue = [NSUserDefaults groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
  componentStatusKey2 = [(MRBaseComponentHandler *)self componentStatusKey];
  [componentEventQueue removeObjectForKey:componentStatusKey2];

LABEL_15:
}

@end