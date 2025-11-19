@interface ANCAlertSource
- (ANCAlertSource)initWithDelegate:(id)a3 queue:(id)a4;
- (ANCAlertSourceDelegate)delegate;
- (BOOL)isAlertSilent:(id)a3;
- (BOOL)isSpecialSectionID:(id)a3;
- (id)displayNameForAppIdentifier:(id)a3;
- (id)lazyContactStore;
- (unint64_t)genreIDForGenre:(id)a3;
- (unsigned)categoryIDForAppIdentifier:(id)a3;
- (unsigned)categoryIDForGenreID:(unint64_t)a3;
- (void)callHistoryChanged:(BOOL)a3;
- (void)callHistoryChangedNotification;
- (void)callIdentificationChanged:(id)a3;
- (void)callStatusChanged;
- (void)combineCurrentArray:(id)a3 withNewArray:(id)a4 maxCount:(unint64_t)a5 objectRemoved:(id)a6 objectAdded:(id)a7;
- (void)invalidate;
- (void)modifyAlert:(id)a3;
- (void)observer:(id)a3 addBulletin:(id)a4 forFeed:(unint64_t)a5;
- (void)observer:(id)a3 modifyBulletin:(id)a4 forFeed:(unint64_t)a5;
- (void)observer:(id)a3 noteInvalidatedBulletinIDs:(id)a4;
- (void)observer:(id)a3 removeBulletin:(id)a4 forFeed:(unint64_t)a5;
- (void)removeAlert:(id)a3;
- (void)voicemailsChanged:(BOOL)a3;
- (void)voicemailsChangedNotification;
@end

@implementation ANCAlertSource

- (ANCAlertSource)initWithDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v64.receiver = self;
  v64.super_class = ANCAlertSource;
  v8 = [(ANCAlertSource *)&v64 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_queue, a4);
    v10 = objc_alloc_init(NSMutableDictionary);
    alerts = v9->_alerts;
    v9->_alerts = v10;

    firstPartyAppIdentifierToCategoryMap = v9->_firstPartyAppIdentifierToCategoryMap;
    v9->_firstPartyAppIdentifierToCategoryMap = &off_1000C4288;

    v13 = objc_alloc_init(NSMutableDictionary);
    appIdentifierToCategoryCache = v9->_appIdentifierToCategoryCache;
    v9->_appIdentifierToCategoryCache = v13;

    v15 = objc_alloc_init(NSMutableDictionary);
    bbBulletinAlerts = v9->_bbBulletinAlerts;
    v9->_bbBulletinAlerts = v15;

    v17 = [[BBObserver alloc] initWithQueue:v9->_queue];
    bbObserver = v9->_bbObserver;
    v9->_bbObserver = v17;

    [(BBObserver *)v9->_bbObserver setDelegate:v9];
    [(BBObserver *)v9->_bbObserver setObserverFeed:1];
    v19 = v9->_bbObserver;
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_10005E468;
    v62[3] = &unk_1000BDA48;
    v20 = v9;
    v63 = v20;
    [(BBObserver *)v19 getSectionInfoWithCompletion:v62];
    v21 = [DNDEventBehaviorResolutionService serviceForClientIdentifier:@"com.apple.BTLEServer.ANCS"];
    behaviorResolutionService = v20->_behaviorResolutionService;
    v20->_behaviorResolutionService = v21;

    v23 = objc_alloc_init(NSMutableArray);
    tuIncomingCalls = v20->_tuIncomingCalls;
    v20->_tuIncomingCalls = v23;

    v25 = +[NSMapTable strongToStrongObjectsMapTable];
    tuIncomingCallAlerts = v20->_tuIncomingCallAlerts;
    v20->_tuIncomingCallAlerts = v25;

    v27 = objc_alloc_init(NSMutableArray);
    tuActiveCalls = v20->_tuActiveCalls;
    v20->_tuActiveCalls = v27;

    v29 = +[NSMapTable strongToStrongObjectsMapTable];
    tuActiveCallAlerts = v20->_tuActiveCallAlerts;
    v20->_tuActiveCallAlerts = v29;

    v31 = +[NSNotificationCenter defaultCenter];
    [v31 addObserver:v20 selector:"callStatusChanged" name:TUCallCenterCallStatusChangedNotification object:0];

    v32 = +[NSNotificationCenter defaultCenter];
    [v32 addObserver:v20 selector:"callStatusChanged" name:TUCallCenterVideoCallStatusChangedNotification object:0];

    v33 = +[NSNotificationCenter defaultCenter];
    [v33 addObserver:v20 selector:"callIdentificationChanged:" name:TUCallCenterCallerIDChangedNotification object:0];

    v34 = [TUCallCenter callCenterWithQueue:v9->_queue];
    tuCallCenter = v20->_tuCallCenter;
    v20->_tuCallCenter = v34;

    queue = v9->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005E58C;
    block[3] = &unk_1000BD398;
    v37 = v20;
    v61 = v37;
    dispatch_async(queue, block);
    v38 = objc_alloc_init(NSMutableArray);
    chUnreadMissedCalls = v37->_chUnreadMissedCalls;
    v37->_chUnreadMissedCalls = v38;

    v40 = objc_alloc_init(NSMutableDictionary);
    chMissedCallAlerts = v37->_chMissedCallAlerts;
    v37->_chMissedCallAlerts = v40;

    v42 = +[NSNotificationCenter defaultCenter];
    [v42 addObserver:v37 selector:"callHistoryChangedNotification" name:kCallHistoryDatabaseChangedNotification object:0];

    v43 = objc_alloc_init(CHManager);
    chManager = v37->_chManager;
    v37->_chManager = v43;

    v45 = v9->_queue;
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_10005E594;
    v58[3] = &unk_1000BD398;
    v46 = v37;
    v59 = v46;
    dispatch_async(v45, v58);
    v47 = objc_alloc_init(NSMutableArray);
    vvUnreadVoicemails = v46->_vvUnreadVoicemails;
    v46->_vvUnreadVoicemails = v47;

    v49 = +[NSMapTable strongToStrongObjectsMapTable];
    vvVoicemailAlerts = v46->_vvVoicemailAlerts;
    v46->_vvVoicemailAlerts = v49;

    v51 = objc_alloc_init(VMVoicemailManager);
    vvManager = v46->_vvManager;
    v46->_vvManager = v51;

    v53 = +[NSNotificationCenter defaultCenter];
    [v53 addObserver:v46 selector:"voicemailsChangedNotification" name:VMVoicemailVoicemailsChangedNotification object:0];

    v54 = v9->_queue;
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_10005E5A0;
    v56[3] = &unk_1000BD398;
    v57 = v46;
    dispatch_async(v54, v56);
  }

  return v9;
}

- (void)invalidate
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = [(ANCAlertSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005E6BC;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_sync(v4, block);

  v5 = [(ANCAlertSource *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005E700;
  v6[3] = &unk_1000BD398;
  v6[4] = self;
  dispatch_sync(v5, v6);
}

- (id)displayNameForAppIdentifier:(id)a3
{
  v3 = [LSApplicationProxy applicationProxyForIdentifier:a3];
  v4 = [v3 localizedName];

  return v4;
}

- (BOOL)isAlertSilent:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(DNDMutableClientEventDetails);
  v6 = [v4 appIdentifier];
  [v5 setBundleIdentifier:v6];

  v7 = [v4 updateDNDEventDetails:v5];

  v8 = [(ANCAlertSource *)self behaviorResolutionService];
  v22 = 0;
  v9 = [v8 resolveBehaviorForEventDetails:v7 error:&v22];
  v10 = v22;

  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v14 = [v9 interruptionSuppression];
    v13 = v14 != 0;
    v15 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [v4 appIdentifier];
      [v9 interruptionSuppression];
      v18 = DNDStringFromInterruptionSuppression();
      v19 = v18;
      v20 = "N";
      *buf = 138412802;
      v24 = v17;
      if (v14)
      {
        v20 = "Y";
      }

      v25 = 2112;
      v26 = v18;
      v27 = 2080;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "appIdentifier %@ DNDSuppress=%@ isSilent=%s", buf, 0x20u);
    }
  }

  else
  {
    v12 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007B164(v10, v12);
    }

    v13 = 0;
  }

  return v13;
}

- (void)modifyAlert:(id)a3
{
  v4 = a3;
  v5 = [(ANCAlertSource *)self alerts];
  v6 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v4 categoryID]);
  v8 = [v5 objectForKeyedSubscript:v6];

  [v8 exchangeObjectAtIndex:objc_msgSend(v8 withObjectAtIndex:{"indexOfObject:", v4), objc_msgSend(v8, "count") - 1}];
  [v4 setSilent:{-[ANCAlertSource isAlertSilent:](self, "isAlertSilent:", v4)}];
  v7 = [(ANCAlertSource *)self delegate];
  [v7 alertModified:v4];
}

- (void)removeAlert:(id)a3
{
  v10 = a3;
  v4 = [(ANCAlertSource *)self alerts];
  v5 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v10 categoryID]);
  v6 = [v4 objectForKeyedSubscript:v5];

  [v6 removeObject:v10];
  if (![v6 count])
  {
    v7 = [(ANCAlertSource *)self alerts];
    v8 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v10 categoryID]);
    [v7 removeObjectForKey:v8];
  }

  [v10 setSilent:{-[ANCAlertSource isAlertSilent:](self, "isAlertSilent:", v10)}];
  v9 = [(ANCAlertSource *)self delegate];
  [v9 alertRemoved:v10];
}

- (void)observer:(id)a3 addBulletin:(id)a4 forFeed:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(ANCAlertSource *)self bbBulletinAlerts];
  v10 = [v8 bulletinID];
  v11 = [v9 objectForKey:v10];

  if (!v11)
  {
    if ([v8 contentPreviewSetting] == 3)
    {
      v12 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 134217984;
        v25 = 3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Dropping notification setting type (%ld)", &v24, 0xCu);
      }
    }

    else
    {
      v13 = [v8 sectionID];
      v14 = [(ANCAlertSource *)self isSpecialSectionID:v13];

      if ((v14 & 1) == 0)
      {
        v15 = [v8 sectionID];
        v16 = [(ANCAlertSource *)self categoryIDForAppIdentifier:v15];

        v17 = [[ANCBulletinAlert alloc] initWithBulletin:v8 observer:v7 categoryID:v16];
        v18 = +[NSDate date];
        v19 = [v8 publicationDate];
        [v18 timeIntervalSinceDate:v19];
        v21 = v20 > 30.0;

        v22 = [(ANCAlertSource *)self bbBulletinAlerts];
        v23 = [v8 bulletinID];
        [v22 setObject:v17 forKeyedSubscript:v23];

        [(ANCAlertSource *)self addAlert:v17 isPreExisting:v21];
      }
    }
  }
}

- (void)observer:(id)a3 modifyBulletin:(id)a4 forFeed:(unint64_t)a5
{
  v6 = a4;
  v7 = [v6 threadSummary];

  if (v7)
  {
    v8 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Drop summary update to avoid duplicate notification", v12, 2u);
    }
  }

  else
  {
    v9 = [(ANCAlertSource *)self bbBulletinAlerts];
    v10 = [v6 bulletinID];
    v11 = [v9 objectForKeyedSubscript:v10];

    if (v11)
    {
      [v11 setBulletin:v6];
      [(ANCAlertSource *)self modifyAlert:v11];
    }
  }
}

- (void)observer:(id)a3 removeBulletin:(id)a4 forFeed:(unint64_t)a5
{
  v11 = a4;
  v6 = [(ANCAlertSource *)self bbBulletinAlerts];
  v7 = [v11 bulletinID];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    [(ANCAlertSource *)self removeAlert:v8];
    v9 = [(ANCAlertSource *)self bbBulletinAlerts];
    v10 = [v11 bulletinID];
    [v9 removeObjectForKey:v10];
  }
}

- (void)observer:(id)a3 noteInvalidatedBulletinIDs:(id)a4
{
  v5 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [(ANCAlertSource *)self bbBulletinAlerts];
        v12 = [v11 objectForKeyedSubscript:v10];

        if (v12)
        {
          [(ANCAlertSource *)self removeAlert:v12];
          v13 = [(ANCAlertSource *)self bbBulletinAlerts];
          [v13 removeObjectForKey:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (BOOL)isSpecialSectionID:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.mobilephone"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.facetime"];
  }

  return v4;
}

- (unsigned)categoryIDForAppIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ANCAlertSource *)self appIdentifierToCategoryCache];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    goto LABEL_16;
  }

  v7 = [(ANCAlertSource *)self firstPartyAppIdentifierToCategoryMap];
  v6 = [v7 objectForKeyedSubscript:v4];

  if (v6)
  {
LABEL_15:
    v18 = [(ANCAlertSource *)self appIdentifierToCategoryCache];
    [v18 setObject:v6 forKeyedSubscript:v4];

    goto LABEL_16;
  }

  v8 = [LSApplicationProxy applicationProxyForIdentifier:v4];
  v9 = [v8 bundleContainerURL];
  v10 = [v9 path];

  v11 = [v10 stringByAppendingPathComponent:@"Info.plist"];
  v12 = [NSDictionary dictionaryWithContentsOfFile:v11];
  v13 = [v12 objectForKeyedSubscript:@"SBMatchingApplicationGenres"];
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v13 count])
    {
      goto LABEL_13;
    }

    v14 = [v13 firstObject];
    v15 = [(ANCAlertSource *)self genreIDForGenre:v14];
  }

  else
  {
    v21 = v8;
    v14 = [v10 stringByAppendingPathComponent:@"iTunesMetadata.plist"];
    v16 = [NSDictionary dictionaryWithContentsOfFile:v14];
    v17 = [v16 objectForKeyedSubscript:@"genreId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v17 unsignedIntegerValue];
    }

    else
    {
      v15 = 0;
    }

    v8 = v21;
  }

  if (v15)
  {
    v6 = [NSNumber numberWithUnsignedChar:[(ANCAlertSource *)self categoryIDForGenreID:v15]];
    goto LABEL_14;
  }

LABEL_13:
  v6 = 0;
LABEL_14:

  if (v6)
  {
    goto LABEL_15;
  }

LABEL_16:
  v19 = [v6 unsignedCharValue];

  return v19;
}

- (void)callStatusChanged
{
  v3 = [(ANCAlertSource *)self tuCallCenter];
  v4 = [v3 audioAndVideoCallsWithStatus:4];

  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 134217984;
    v19 = [v4 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "# incoming calls: %lu", buf, 0xCu);
  }

  v7 = [(ANCAlertSource *)self tuIncomingCalls];
  v16[4] = self;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10005F88C;
  v17[3] = &unk_1000BE528;
  v17[4] = self;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10005F92C;
  v16[3] = &unk_1000BE528;
  [(ANCAlertSource *)self combineCurrentArray:v7 withNewArray:v4 maxCount:-1 objectRemoved:v17 objectAdded:v16];

  v8 = [(ANCAlertSource *)self tuCallCenter];
  v9 = [v8 audioAndVideoCallsWithStatus:1];

  v10 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v4 count];
    *buf = 134217984;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "# active calls: %lu", buf, 0xCu);
  }

  v13 = [(ANCAlertSource *)self tuActiveCalls];
  v14[4] = self;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005F9E8;
  v15[3] = &unk_1000BE528;
  v15[4] = self;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10005FA88;
  v14[3] = &unk_1000BE528;
  [(ANCAlertSource *)self combineCurrentArray:v13 withNewArray:v9 maxCount:-1 objectRemoved:v15 objectAdded:v14];
}

- (void)callIdentificationChanged:(id)a3
{
  v12 = [a3 object];
  v4 = [(ANCAlertSource *)self tuIncomingCalls];
  v5 = [v4 containsObject:v12];

  if (v5)
  {
    v6 = [(ANCAlertSource *)self tuIncomingCallAlerts];
    v7 = [v6 objectForKey:v12];

    v8 = [(ANCAlertSource *)self tuIncomingCalls];
    v9 = [(ANCAlertSource *)self tuIncomingCalls];
    v10 = [v9 indexOfObject:v12];
    v11 = [(ANCAlertSource *)self tuIncomingCalls];
    [v8 exchangeObjectAtIndex:v10 withObjectAtIndex:{objc_msgSend(v11, "count") - 1}];

    [(ANCAlertSource *)self modifyAlert:v7];
  }
}

- (void)callHistoryChangedNotification
{
  v3 = [(ANCAlertSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005FCDC;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)callHistoryChanged:(BOOL)a3
{
  v5 = [CHRecentCall predicateForCallsWithStatus:kCHCallStatusMissed];
  v15[0] = v5;
  v6 = [CHRecentCall predicateForCallsWithStatusRead:0];
  v15[1] = v6;
  v7 = [NSArray arrayWithObjects:v15 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];

  v9 = [(ANCAlertSource *)self chManager];
  v10 = [v9 callsWithPredicate:v8 limit:0 offset:0 batchSize:0];

  v11 = [(ANCAlertSource *)self chUnreadMissedCalls];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10005FEC4;
  v14[3] = &unk_1000BE550;
  v14[4] = self;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005FF94;
  v12[3] = &unk_1000BE578;
  v12[4] = self;
  v13 = a3;
  [(ANCAlertSource *)self combineCurrentArray:v11 withNewArray:v10 maxCount:5 objectRemoved:v14 objectAdded:v12];
}

- (void)voicemailsChangedNotification
{
  v3 = [(ANCAlertSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100060110;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)voicemailsChanged:(BOOL)a3
{
  v5 = [(ANCAlertSource *)self vvManager];
  v6 = [v5 voicemailsPassingTest:&stru_1000BE5B8];

  v7 = [(ANCAlertSource *)self vvUnreadVoicemails];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100060294;
  v10[3] = &unk_1000BE5E0;
  v10[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100060334;
  v8[3] = &unk_1000BE608;
  v8[4] = self;
  v9 = a3;
  [(ANCAlertSource *)self combineCurrentArray:v7 withNewArray:v6 maxCount:5 objectRemoved:v10 objectAdded:v8];
}

- (id)lazyContactStore
{
  v3 = [(ANCAlertSource *)self contactStore];

  if (!v3)
  {
    v4 = objc_alloc_init(CNContactStore);
    [(ANCAlertSource *)self setContactStore:v4];
  }

  return [(ANCAlertSource *)self contactStore];
}

- (void)combineCurrentArray:(id)a3 withNewArray:(id)a4 maxCount:(unint64_t)a5 objectRemoved:(id)a6 objectAdded:(id)a7
{
  v23 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a7;
  v14 = [v23 count];
  v15 = v23;
  if (v14)
  {
    v16 = 0;
    do
    {
      v17 = [v15 objectAtIndexedSubscript:v16];
      if ([v11 containsObject:v17] && objc_msgSend(v11, "indexOfObject:", v17) < a5)
      {
        ++v16;
      }

      else
      {
        v12[2](v12, v17);
        [v23 removeObjectAtIndex:v16];
      }

      v18 = [v23 count];
      v15 = v23;
    }

    while (v16 != v18);
  }

  v19 = [v11 count];
  if (v19 >= a5)
  {
    v20 = a5;
  }

  else
  {
    v20 = v19;
  }

  if (v20)
  {
    v21 = v20 - 1;
    do
    {
      v22 = [v11 objectAtIndexedSubscript:v21];
      if (([v23 containsObject:v22] & 1) == 0)
      {
        [v23 addObject:v22];
        v13[2](v13, v22);
      }

      --v21;
    }

    while (v21 != -1);
  }
}

- (unint64_t)genreIDForGenre:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Business"])
  {
    v4 = 6000;
  }

  else if ([v3 isEqualToString:@"Weather"])
  {
    v4 = 6001;
  }

  else if ([v3 isEqualToString:@"Utilities"])
  {
    v4 = 6002;
  }

  else if ([v3 isEqualToString:@"Travel"])
  {
    v4 = 6003;
  }

  else if ([v3 isEqualToString:@"Sports"])
  {
    v4 = 6004;
  }

  else if ([v3 isEqualToString:@"Social Networking"])
  {
    v4 = 6005;
  }

  else if ([v3 isEqualToString:@"Reference"])
  {
    v4 = 6006;
  }

  else if ([v3 isEqualToString:@"Productivity"])
  {
    v4 = 6007;
  }

  else if ([v3 isEqualToString:@"Photo & Video"])
  {
    v4 = 6008;
  }

  else if ([v3 isEqualToString:@"News"])
  {
    v4 = 6009;
  }

  else if ([v3 isEqualToString:@"Navigation"])
  {
    v4 = 6010;
  }

  else if ([v3 isEqualToString:@"Music"])
  {
    v4 = 6011;
  }

  else if ([v3 isEqualToString:@"Lifestyle"])
  {
    v4 = 6012;
  }

  else if ([v3 isEqualToString:@"Health & Fitness"])
  {
    v4 = 6013;
  }

  else if ([v3 isEqualToString:@"Games"])
  {
    v4 = 6014;
  }

  else if ([v3 isEqualToString:@"Finance"])
  {
    v4 = 6015;
  }

  else if ([v3 isEqualToString:@"Entertainment"])
  {
    v4 = 6016;
  }

  else if ([v3 isEqualToString:@"Education"])
  {
    v4 = 6017;
  }

  else if ([v3 isEqualToString:@"Books"])
  {
    v4 = 6018;
  }

  else if ([v3 isEqualToString:@"Medical"])
  {
    v4 = 6020;
  }

  else if ([v3 isEqualToString:@"Newsstand"])
  {
    v4 = 6021;
  }

  else if ([v3 isEqualToString:@"Catalogs"])
  {
    v4 = 6022;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)categoryIDForGenreID:(unint64_t)a3
{
  if (a3 - 6000 > 0x15)
  {
    return 0;
  }

  else
  {
    return byte_100092130[a3 - 6000];
  }
}

- (ANCAlertSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end