@interface TransparencyFollowup
+ (BOOL)isFollowupEnabled;
+ (id)instance;
- (BOOL)clearAllFollowups:(id *)a3;
- (BOOL)clearFollowup:(id)a3 error:(id *)a4;
- (BOOL)clearFollowups:(id)a3 error:(id *)a4;
- (BOOL)clearFollowupsByType:(id)a3 type:(unint64_t)a4 error:(id *)a5;
- (BOOL)postFollowup:(id)a3 type:(unint64_t)a4 eventId:(id)a5 errorCode:(int64_t)a6 optInState:(id)a7 infoLink:(id)a8 additionalInfo:(id)a9 error:(id *)a10;
- (TransparencyFollowup)initWithAnalytics:(id)a3;
- (id)_localizedKTStringForKey:(id)a3;
- (id)createOptOutFollowup:(id)a3 infoLink:(id)a4;
- (id)createSMTFollowup:(id)a3 infoLink:(id)a4;
- (id)createSelfFollowup:(id)a3 infoLink:(id)a4;
- (id)createTLTResetFollowup:(id)a3 infoLink:(id)a4;
- (id)createTreeRollFollowup:(id)a3 infoLink:(id)a4;
- (id)detailsAction:(unint64_t)a3 eventId:(id)a4 infoLink:(id)a5;
- (id)getPendingFollowups;
- (id)ignoreAction;
- (id)itemForType:(unint64_t)a3 eventId:(id)a4 infoLink:(id)a5;
- (id)ktFollowupStatus;
- (id)notification:(id)a3 message:(id)a4 activateAction:(id)a5 clearAction:(id)a6;
- (id)settingsAction:(unint64_t)a3 eventId:(id)a4;
- (void)startFollowupStatusSampler;
@end

@implementation TransparencyFollowup

+ (BOOL)isFollowupEnabled
{
  if (qword_10038BC50 != -1)
  {
    sub_100002C04();
  }

  return byte_10038BC48;
}

+ (id)instance
{
  if (qword_10038BC68 != -1)
  {
    sub_100002C2C();
  }

  v3 = qword_10038BC40;

  return v3;
}

- (TransparencyFollowup)initWithAnalytics:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = TransparencyFollowup;
  v5 = [(TransparencyFollowup *)&v31 init];
  if (v5)
  {
    v6 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.transparency.followupclient"];
    [(TransparencyFollowup *)v5 setController:v6];

    v7 = +[NSMutableDictionary dictionary];
    [(TransparencyFollowup *)v5 setFollowUpItems:v7];

    if (!v4)
    {
      v4 = +[TransparencyAnalytics logger];
    }

    [(TransparencyFollowup *)v5 setLogger:v4];
    v8 = [(TransparencyFollowup *)v5 controller];
    v30 = 0;
    v9 = [v8 pendingFollowUpItems:&v30];
    v10 = v30;

    if (!v9 && v10)
    {
      if (qword_10038BC58 != -1)
      {
        sub_100247E54();
      }

      v11 = qword_10038BC60;
      if (os_log_type_enabled(qword_10038BC60, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "failed to get pending follow up items: %@", buf, 0xCu);
      }
    }

    v24 = v10;
    v25 = v4;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          v18 = [v17 userInfo];
          v19 = [v18 objectForKeyedSubscript:@"eventId"];

          if (v19)
          {
            v20 = [[NSUUID alloc] initWithUUIDString:v19];
            if (v20)
            {
              [(TransparencyFollowup *)v5 followUpItems];
              v22 = v21 = v5;
              [v22 setObject:v17 forKey:v20];

              v5 = v21;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v14);
    }

    [(TransparencyFollowup *)v5 startFollowupStatusSampler];
    v4 = v25;
  }

  return v5;
}

- (id)detailsAction:(unint64_t)a3 eventId:(id)a4 infoLink:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=TRANSPARENCY"];
  v11 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_VIEW_DETAILS_LABEL"];
  v12 = [FLFollowUpAction actionWithLabel:v11 url:v10];

  v13 = +[NSMutableDictionary dictionary];
  v14 = [v9 UUIDString];

  [v13 setObject:v14 forKeyedSubscript:@"eventId"];
  v15 = [NSNumber numberWithUnsignedInteger:a3];
  [v13 setObject:v15 forKeyedSubscript:@"type"];

  [v13 setObject:&off_10033CE28 forKeyedSubscript:@"action"];
  if (v8)
  {
    [v13 setObject:v8 forKeyedSubscript:@"infoLink"];
  }

  [v12 setUserInfo:v13];

  return v12;
}

- (id)settingsAction:(unint64_t)a3 eventId:(id)a4
{
  v6 = a4;
  v7 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=TRANSPARENCY"];
  v8 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_VIEW_SETTINGS_LABEL"];
  v9 = [FLFollowUpAction actionWithLabel:v8 url:v7];

  v10 = +[NSMutableDictionary dictionary];
  v11 = [v6 UUIDString];

  [v10 setObject:v11 forKeyedSubscript:@"eventId"];
  v12 = [NSNumber numberWithUnsignedInteger:a3];
  [v10 setObject:v12 forKeyedSubscript:@"type"];

  [v10 setObject:&off_10033CE40 forKeyedSubscript:@"action"];
  [v9 setUserInfo:v10];

  return v9;
}

- (id)ignoreAction
{
  v2 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_CLEAR_WARNING_LABEL"];
  v3 = [FLFollowUpAction actionWithLabel:v2 url:0];

  [v3 setUserInfo:&off_10033D688];

  return v3;
}

- (id)notification:(id)a3 message:(id)a4 activateAction:(id)a5 clearAction:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(FLFollowUpNotification);
  [v13 setTitle:v12];

  [v13 setActivateAction:v10];
  [v13 setClearAction:v9];

  [v13 setFirstNotificationDelay:0.0];
  [v13 setFrequency:0.0];
  [v13 setInformativeText:v11];

  return v13;
}

- (id)createSelfFollowup:(id)a3 infoLink:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(FLFollowUpItem);
  [v8 setUniqueIdentifier:@"com.apple.transparency.ValidateSelfFailed"];
  [v8 setGroupIdentifier:FLGroupIdentifierAccount];
  v9 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_ERROR_TITLE"];
  [v8 setTitle:v9];

  v10 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_SELF_ERROR"];
  [v8 setInformativeText:v10];

  [v8 setDisplayStyle:0];
  [v8 setExtensionIdentifier:@"com.apple.TransparencyUI.FollowUpExtension"];
  v11 = [(TransparencyFollowup *)self detailsAction:0 eventId:v7 infoLink:v6];

  v12 = [(TransparencyFollowup *)self ignoreAction];
  v18[0] = v11;
  v18[1] = v12;
  v13 = [NSArray arrayWithObjects:v18 count:2];
  [v8 setActions:v13];

  v14 = [v8 title];
  v15 = [v8 informativeText];
  v16 = [(TransparencyFollowup *)self notification:v14 message:v15 activateAction:v11 clearAction:v12];

  [v8 setNotification:v16];

  return v8;
}

- (id)createSMTFollowup:(id)a3 infoLink:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(FLFollowUpItem);
  [v8 setUniqueIdentifier:@"com.apple.transparency.AuditFailure"];
  [v8 setGroupIdentifier:FLGroupIdentifierAccount];
  v9 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_ERROR_TITLE"];
  [v8 setTitle:v9];

  v10 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_DATA_ERROR"];
  [v8 setInformativeText:v10];

  [v8 setDisplayStyle:0];
  [v8 setExtensionIdentifier:@"com.apple.TransparencyUI.FollowUpExtension"];
  v11 = [(TransparencyFollowup *)self detailsAction:1 eventId:v7 infoLink:v6];

  v12 = [(TransparencyFollowup *)self ignoreAction];
  v18[0] = v11;
  v18[1] = v12;
  v13 = [NSArray arrayWithObjects:v18 count:2];
  [v8 setActions:v13];

  v14 = [v8 title];
  v15 = [v8 informativeText];
  v16 = [(TransparencyFollowup *)self notification:v14 message:v15 activateAction:v11 clearAction:v12];

  [v8 setNotification:v16];

  return v8;
}

- (id)createTreeRollFollowup:(id)a3 infoLink:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(FLFollowUpItem);
  [v8 setUniqueIdentifier:@"com.apple.transparency.TreeRollDetected"];
  [v8 setGroupIdentifier:FLGroupIdentifierAccount];
  v9 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_RESET_TITLE"];
  [v8 setTitle:v9];

  v10 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_RESET"];
  [v8 setInformativeText:v10];

  [v8 setDisplayStyle:0];
  [v8 setExtensionIdentifier:@"com.apple.TransparencyUI.FollowUpExtension"];
  v11 = [(TransparencyFollowup *)self detailsAction:3 eventId:v7 infoLink:v6];

  v12 = [(TransparencyFollowup *)self settingsAction:3 eventId:v7];

  v18[0] = v11;
  v18[1] = v12;
  v13 = [NSArray arrayWithObjects:v18 count:2];
  [v8 setActions:v13];

  v14 = [v8 title];
  v15 = [v8 informativeText];
  v16 = [(TransparencyFollowup *)self notification:v14 message:v15 activateAction:v11 clearAction:v12];

  [v8 setNotification:v16];

  return v8;
}

- (id)createTLTResetFollowup:(id)a3 infoLink:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(FLFollowUpItem);
  [v8 setUniqueIdentifier:@"com.apple.transparency.TLTResetDetected"];
  [v8 setGroupIdentifier:FLGroupIdentifierAccount];
  v9 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_RESET_TITLE"];
  [v8 setTitle:v9];

  v10 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_RESET"];
  [v8 setInformativeText:v10];

  [v8 setDisplayStyle:0];
  [v8 setExtensionIdentifier:@"com.apple.TransparencyUI.FollowUpExtension"];
  v11 = [(TransparencyFollowup *)self detailsAction:5 eventId:v7 infoLink:v6];

  v12 = [(TransparencyFollowup *)self ignoreAction];
  v18[0] = v11;
  v18[1] = v12;
  v13 = [NSArray arrayWithObjects:v18 count:2];
  [v8 setActions:v13];

  v14 = [v8 title];
  v15 = [v8 informativeText];
  v16 = [(TransparencyFollowup *)self notification:v14 message:v15 activateAction:v11 clearAction:v12];

  [v8 setNotification:v16];

  return v8;
}

- (id)createOptOutFollowup:(id)a3 infoLink:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(FLFollowUpItem);
  [v8 setUniqueIdentifier:@"com.apple.transparency.OptOut"];
  [v8 setGroupIdentifier:FLGroupIdentifierAccount];
  v9 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_DISABLED_TITLE"];
  [v8 setTitle:v9];

  v10 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_DISABLED"];
  [v8 setInformativeText:v10];

  [v8 setDisplayStyle:0];
  [v8 setExtensionIdentifier:@"com.apple.TransparencyUI.FollowUpExtension"];
  v11 = [(TransparencyFollowup *)self detailsAction:4 eventId:v7 infoLink:v6];

  v12 = [(TransparencyFollowup *)self ignoreAction];
  v18[0] = v11;
  v18[1] = v12;
  v13 = [NSArray arrayWithObjects:v18 count:2];
  [v8 setActions:v13];

  v14 = [v8 title];
  v15 = [v8 informativeText];
  v16 = [(TransparencyFollowup *)self notification:v14 message:v15 activateAction:v11 clearAction:v12];

  [v8 setNotification:v16];

  return v8;
}

- (id)itemForType:(unint64_t)a3 eventId:(id)a4 infoLink:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3uLL:
        v11 = [(TransparencyFollowup *)self createTreeRollFollowup:v9 infoLink:v10];
        break;
      case 4uLL:
        v11 = [(TransparencyFollowup *)self createOptOutFollowup:v9 infoLink:v10];
        break;
      case 5uLL:
        v11 = [(TransparencyFollowup *)self createTLTResetFollowup:v9 infoLink:v10];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v11 = [(TransparencyFollowup *)self createSMTFollowup:v9 infoLink:v10];
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_15;
      }

      v11 = [(TransparencyFollowup *)self createSTHFollowup:v9 infoLink:v10];
    }
  }

  else
  {
    v11 = [(TransparencyFollowup *)self createSelfFollowup:v9 infoLink:v10];
  }

  v5 = v11;
LABEL_15:

  return v5;
}

- (BOOL)postFollowup:(id)a3 type:(unint64_t)a4 eventId:(id)a5 errorCode:(int64_t)a6 optInState:(id)a7 infoLink:(id)a8 additionalInfo:(id)a9 error:(id *)a10
{
  v41 = a3;
  v15 = a5;
  v16 = a7;
  v42 = a8;
  v17 = a9;
  if (qword_10038BC58 != -1)
  {
    sub_100247E7C();
  }

  v18 = qword_10038BC60;
  if (os_log_type_enabled(qword_10038BC60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v47 = a4;
    v48 = 2112;
    v49 = v15;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received a postFollowup call of type: %lu eventId: %@", buf, 0x16u);
  }

  if (v16)
  {
    if ([v16 state] && objc_msgSend(v16, "state") != 2)
    {
      if (v15)
      {
        v39 = [(TransparencyFollowup *)self itemForType:a4 eventId:v15 infoLink:v42];
        v40 = +[NSMutableDictionary dictionary];
        [v40 setObject:v41 forKeyedSubscript:@"application"];
        v21 = [NSNumber numberWithUnsignedInteger:a4];
        [v40 setObject:v21 forKeyedSubscript:@"type"];

        v22 = [v15 UUIDString];
        [v40 setObject:v22 forKeyedSubscript:@"eventId"];

        [v40 addEntriesFromDictionary:v17];
        [v39 setUserInfo:v40];
        v23 = [(TransparencyFollowup *)self followUpItems];
        objc_sync_enter(v23);
        v24 = [(TransparencyFollowup *)self followUpItems];
        v25 = [v24 objectForKeyedSubscript:v15];
        v26 = v25 == 0;

        if (v26)
        {
          v28 = [(TransparencyFollowup *)self followUpItems];
          [v28 setObject:v39 forKey:v15];
        }

        else
        {
          if (qword_10038BC58 != -1)
          {
            sub_100247EB8();
          }

          v27 = qword_10038BC60;
          if (os_log_type_enabled(qword_10038BC60, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v47 = v15;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "skipping follow up due to existing follow up for eventId %{public}@", buf, 0xCu);
          }

          v28 = v39;
          v39 = 0;
        }

        objc_sync_exit(v23);
        if (v39)
        {
          if (qword_10038BC58 != -1)
          {
            sub_100247EE0();
          }

          v33 = qword_10038BC60;
          if (os_log_type_enabled(qword_10038BC60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v47 = v15;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "posting follow up for eventId %{public}@", buf, 0xCu);
          }

          v34 = [(TransparencyFollowup *)self controller];
          v43 = 0;
          v35 = [v34 postFollowUpItem:v39 error:&v43];
          v36 = v43;

          if ((v35 & 1) == 0)
          {
            if (qword_10038BC58 != -1)
            {
              sub_100247F08();
            }

            v37 = qword_10038BC60;
            if (os_log_type_enabled(qword_10038BC60, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              v47 = a4;
              v48 = 2112;
              v49 = v36;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "failed to post follow up type %lu: %@", buf, 0x16u);
            }
          }
        }
      }

      else
      {
        if (qword_10038BC58 != -1)
        {
          sub_100247F30();
        }

        v29 = qword_10038BC60;
        if (os_log_type_enabled(qword_10038BC60, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "no eventId passed, not much we can do", buf, 2u);
        }

        v30 = [(TransparencyFollowup *)self logger];
        v44 = @"type";
        v31 = [NSNumber numberWithUnsignedInteger:a4];
        v45 = v31;
        v32 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        [v30 logHardFailureForEventNamed:@"PostFollowUpMissEvent" withAttributes:v32];
      }
    }

    else
    {
      if (qword_10038BC58 != -1)
      {
        sub_100247F58();
      }

      v19 = qword_10038BC60;
      if (os_log_type_enabled(qword_10038BC60, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v47 = v16;
        v48 = 2048;
        v49 = a4;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "opt-in state %@ follow up type %lu", buf, 0x16u);
      }
    }
  }

  else
  {
    if (qword_10038BC58 != -1)
    {
      sub_100247E90();
    }

    v20 = qword_10038BC60;
    if (os_log_type_enabled(qword_10038BC60, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "failed to post follow up due to missing optIn state", buf, 2u);
    }

    if (a10)
    {
      *a10 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-178 description:@"failed to post follow up due to missing optIn state"];
    }
  }

  return v16 != 0;
}

- (BOOL)clearAllFollowups:(id *)a3
{
  if (qword_10038BC58 != -1)
  {
    sub_100247F80();
  }

  v5 = qword_10038BC60;
  if (os_log_type_enabled(qword_10038BC60, OS_LOG_TYPE_INFO))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "clearing all Transparency followups", &v13, 2u);
  }

  v6 = [(TransparencyFollowup *)self controller];
  v7 = [v6 clearPendingFollowUpItems:a3];

  if (v7)
  {
    v8 = [(TransparencyFollowup *)self followUpItems];
    objc_sync_enter(v8);
    v9 = [(TransparencyFollowup *)self followUpItems];
    [v9 removeAllObjects];

    objc_sync_exit(v8);
  }

  else
  {
    if (qword_10038BC58 != -1)
    {
      sub_100247F94();
    }

    v10 = qword_10038BC60;
    if (os_log_type_enabled(qword_10038BC60, OS_LOG_TYPE_ERROR))
    {
      if (a3)
      {
        v11 = *a3;
      }

      else
      {
        v11 = 0;
      }

      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "failed to clear Transparency followups: %@", &v13, 0xCu);
    }
  }

  return v7;
}

- (BOOL)clearFollowupsByType:(id)a3 type:(unint64_t)a4 error:(id *)a5
{
  v29 = a3;
  v33 = self;
  obj = [(TransparencyFollowup *)self followUpItems];
  objc_sync_enter(obj);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = [(TransparencyFollowup *)self followUpItems];
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v7)
  {
    v32 = *v35;
    v27 = 1;
    v31 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(v31);
        }

        v9 = *(*(&v34 + 1) + 8 * v8);
        v10 = [(TransparencyFollowup *)v33 followUpItems];
        v11 = [v10 objectForKeyedSubscript:v9];

        if (v11)
        {
          v12 = [v11 userInfo];
          v13 = v12 == 0;

          if (!v13)
          {
            v14 = [v11 userInfo];
            v15 = [v14 objectForKeyedSubscript:@"application"];
            v16 = [v14 objectForKeyedSubscript:@"type"];
            v17 = [v16 unsignedIntegerValue];

            if (v17 == a4 && [v15 isEqualToString:v29])
            {
              v18 = [(TransparencyFollowup *)v33 controller];
              v19 = [v11 uniqueIdentifier];
              v42 = v19;
              v20 = [NSArray arrayWithObjects:&v42 count:1];
              v21 = [v18 clearPendingFollowUpItemsWithUniqueIdentifiers:v20 error:a5];

              if (v21)
              {
                v22 = [(TransparencyFollowup *)v33 followUpItems];
                [v22 removeObjectForKey:v9];
              }

              else
              {
                if (qword_10038BC58 != -1)
                {
                  sub_100247FBC();
                }

                v23 = qword_10038BC60;
                if (os_log_type_enabled(qword_10038BC60, OS_LOG_TYPE_ERROR))
                {
                  v24 = a5;
                  if (a5)
                  {
                    v24 = *a5;
                  }

                  *buf = 138412546;
                  v39 = v9;
                  v40 = 2112;
                  v41 = v24;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to clear tree reset CFU for event id %@ with error: %@", buf, 0x16u);
                }

                v27 = 0;
              }
            }
          }
        }

        v8 = v8 + 1;
      }

      while (v7 != v8);
      v6 = v31;
      v7 = [v31 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v7);
  }

  else
  {
    v27 = 1;
  }

  objc_sync_exit(obj);
  return v27 & 1;
}

- (BOOL)clearFollowup:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TransparencyFollowup *)self controller];
  v8 = [v6 uniqueIdentifier];
  v18 = v8;
  v9 = [NSArray arrayWithObjects:&v18 count:1];
  v10 = [v7 clearPendingFollowUpItemsWithUniqueIdentifiers:v9 error:a4];

  if (v10)
  {
    v11 = [NSUUID alloc];
    v12 = [v6 userInfo];
    v13 = [v12 objectForKeyedSubscript:@"eventId"];
    v14 = [v11 initWithUUIDString:v13];

    if (v14)
    {
      v15 = [(TransparencyFollowup *)self followUpItems];
      objc_sync_enter(v15);
      v16 = [(TransparencyFollowup *)self followUpItems];
      [v16 removeObjectForKey:v14];

      objc_sync_exit(v15);
    }
  }

  return v10;
}

- (id)getPendingFollowups
{
  v3 = [(TransparencyFollowup *)self followUpItems];
  objc_sync_enter(v3);
  v4 = [(TransparencyFollowup *)self followUpItems];
  v5 = [v4 allKeys];

  objc_sync_exit(v3);

  return v5;
}

- (BOOL)clearFollowups:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (v5)
  {
    v21 = v5;
    if ([v5 count])
    {
      obj = [(TransparencyFollowup *)self followUpItems];
      objc_sync_enter(obj);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v23 = v21;
      v6 = [v23 countByEnumeratingWithState:&v25 objects:v34 count:16];
      if (v6)
      {
        v7 = *v26;
        v22 = 1;
        do
        {
          v8 = 0;
          do
          {
            if (*v26 != v7)
            {
              objc_enumerationMutation(v23);
            }

            v9 = *(*(&v25 + 1) + 8 * v8);
            v10 = [(TransparencyFollowup *)self followUpItems];
            v11 = [v10 objectForKeyedSubscript:v9];

            if (v11)
            {
              v12 = [(TransparencyFollowup *)self controller];
              v13 = [v11 uniqueIdentifier];
              v33 = v13;
              v14 = [NSArray arrayWithObjects:&v33 count:1];
              v15 = [v12 clearPendingFollowUpItemsWithUniqueIdentifiers:v14 error:a4];

              if (v15)
              {
                v16 = [(TransparencyFollowup *)self followUpItems];
                [v16 removeObjectForKey:v9];
              }

              else
              {
                if (qword_10038BC58 != -1)
                {
                  sub_100247FE4();
                }

                v17 = qword_10038BC60;
                if (os_log_type_enabled(qword_10038BC60, OS_LOG_TYPE_ERROR))
                {
                  v18 = a4;
                  if (a4)
                  {
                    v18 = *a4;
                  }

                  *buf = 138412546;
                  v30 = v9;
                  v31 = 2112;
                  v32 = v18;
                  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to clear followup for event id %@ with error: %@", buf, 0x16u);
                }

                v22 = 0;
              }
            }

            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [v23 countByEnumeratingWithState:&v25 objects:v34 count:16];
        }

        while (v6);
      }

      else
      {
        v22 = 1;
      }

      objc_sync_exit(obj);
    }

    else
    {
      v22 = 1;
    }

    v5 = v21;
  }

  else
  {
    v22 = 1;
  }

  return v22 & 1;
}

- (id)_localizedKTStringForKey:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/Transparency.framework"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 localizations];
    v7 = &off_10038B000;
    v8 = &off_10038B000;
    if (v6)
    {
      v9 = CFPreferencesCopyValue(@"AppleLanguages", kCFPreferencesAnyApplication, @"mobile", kCFPreferencesAnyHost);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [NSBundle preferredLocalizationsFromArray:v6 forPreferences:v9];
        if ([v10 count])
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v12)
          {
            v13 = v12;
            v27 = v6;
            v14 = *v29;
            while (2)
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v29 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v28 + 1) + 8 * i);
                v17 = [v5 localizedStringForKey:v3 value:0 table:@"Localizable-NARWHAL" localization:v16];
                if (v17)
                {
                  v18 = v17;
                  v7 = &off_10038B000;
                  if (qword_10038BC58 != -1)
                  {
                    sub_100248020();
                  }

                  v6 = v27;
                  v8 = &off_10038B000;
                  v22 = qword_10038BC60;
                  if (os_log_type_enabled(qword_10038BC60, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543618;
                    v33 = v16;
                    v34 = 2114;
                    v35 = v18;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "followup localized string (%{public}@) = %{public}@", buf, 0x16u);
                  }

                  goto LABEL_46;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }

            v18 = 0;
            v6 = v27;
            v8 = &off_10038B000;
            v7 = &off_10038B000;
          }

          else
          {
            v18 = 0;
          }

LABEL_46:

          if (v18)
          {
            goto LABEL_47;
          }

          goto LABEL_37;
        }

        if (qword_10038BC58 != -1)
        {
          sub_100248048();
        }

        v23 = qword_10038BC60;
        if (os_log_type_enabled(qword_10038BC60, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "failed to get preferred localizations", buf, 2u);
        }
      }

      else
      {
        if (qword_10038BC58 != -1)
        {
          sub_10024800C();
        }

        v21 = qword_10038BC60;
        if (os_log_type_enabled(qword_10038BC60, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "failed to get languages for the current user", buf, 2u);
        }
      }
    }

    else
    {
      if (qword_10038BC58 != -1)
      {
        sub_10024805C();
      }

      v20 = qword_10038BC60;
      if (os_log_type_enabled(qword_10038BC60, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v33 = @"/System/Library/PrivateFrameworks/Transparency.framework";
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "failed to get localizations from the localization bundle (%{public}@)", buf, 0xCu);
      }
    }

LABEL_37:
    if (v7[395] != -1)
    {
      sub_100248070();
    }

    v24 = v8[396];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "failed to get localized string for the current user localization", buf, 2u);
    }

    v18 = [v5 localizedStringForKey:v3 value:v3 table:@"Localizable-NARWHAL"];
    if (v7[395] != -1)
    {
      sub_100248098();
    }

    v25 = v8[396];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v33 = v18;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "followup localized string = %{public}@", buf, 0xCu);
    }

LABEL_47:

    goto LABEL_48;
  }

  if (qword_10038BC58 != -1)
  {
    sub_1002480C0();
  }

  v19 = qword_10038BC60;
  if (os_log_type_enabled(qword_10038BC60, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v33 = @"/System/Library/PrivateFrameworks/Transparency.framework";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "failed to get the localization bundle (%{public}@)", buf, 0xCu);
  }

  v18 = v3;
LABEL_48:

  return v18;
}

- (id)ktFollowupStatus
{
  v2 = +[NSMutableDictionary dictionary];
  if (+[TransparencyFollowup isFollowupEnabled])
  {
    obj = [(TransparencyFollowup *)self followUpItems];
    objc_sync_enter(obj);
    v3 = [(TransparencyFollowup *)self followUpItems];
    v4 = [v3 allKeys];
    v5 = [v4 sortedArrayUsingSelector:"compare:"];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = v5;
    v6 = [v26 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v6)
    {
      v27 = *v31;
      do
      {
        v29 = v6;
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(v26);
          }

          v8 = *(*(&v30 + 1) + 8 * i);
          v9 = [(TransparencyFollowup *)self followUpItems];
          v10 = [v9 objectForKey:v8];

          if (v10)
          {
            v11 = [v10 notification];
            v12 = [v11 creationDate];

            if (v12)
            {
              v13 = [NSNumber numberWithInteger:[SFAnalytics fuzzyDaysSinceDate:v12]];
            }

            else
            {
              v13 = 0;
            }

            v14 = [v10 uniqueIdentifier];
            v15 = [NSString stringWithFormat:@"ktcfu-%@-days", v14];

            v16 = [v10 uniqueIdentifier];
            v17 = [NSString stringWithFormat:@"ktcfu-%@-count", v16];

            v18 = [v2 objectForKeyedSubscript:v15];
            v19 = v18;
            if (!v18 || ([v18 compare:v13] & 0x8000000000000000) != 0)
            {
              [v2 setObject:v13 forKeyedSubscript:v15];
            }

            v20 = [v2 objectForKeyedSubscript:v17];
            v21 = [v20 integerValue];

            v22 = [NSNumber numberWithInteger:v21 + 1];
            [v2 setObject:v22 forKeyedSubscript:v17];
          }
        }

        v6 = [v26 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v6);
    }

    objc_sync_exit(obj);
    if (qword_10038BC58 != -1)
    {
      sub_1002480D4();
    }

    v23 = qword_10038BC60;
    if (os_log_type_enabled(qword_10038BC60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v35 = v2;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Analytics for KT CFUs are %@", buf, 0xCu);
    }
  }

  return v2;
}

- (void)startFollowupStatusSampler
{
  objc_initWeak(&location, self);
  v3 = [(TransparencyFollowup *)self logger];
  v4 = SFAnalyticsSamplerIntervalOncePerReport;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002AA18;
  v5[3] = &unk_1003188E8;
  objc_copyWeak(&v6, &location);
  [v3 addMultiSamplerForName:@"transparencyFollowupStatus" withTimeInterval:v5 block:v4];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

@end