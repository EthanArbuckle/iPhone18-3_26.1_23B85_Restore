@interface ANCAlertSource
- (ANCAlertSource)initWithDelegate:(id)delegate queue:(id)queue;
- (ANCAlertSourceDelegate)delegate;
- (BOOL)isAlertSilent:(id)silent;
- (BOOL)isSpecialSectionID:(id)d;
- (id)displayNameForAppIdentifier:(id)identifier;
- (id)lazyContactStore;
- (unint64_t)genreIDForGenre:(id)genre;
- (unsigned)categoryIDForAppIdentifier:(id)identifier;
- (unsigned)categoryIDForGenreID:(unint64_t)d;
- (void)callHistoryChanged:(BOOL)changed;
- (void)callHistoryChangedNotification;
- (void)callIdentificationChanged:(id)changed;
- (void)callStatusChanged;
- (void)combineCurrentArray:(id)array withNewArray:(id)newArray maxCount:(unint64_t)count objectRemoved:(id)removed objectAdded:(id)added;
- (void)invalidate;
- (void)modifyAlert:(id)alert;
- (void)observer:(id)observer addBulletin:(id)bulletin forFeed:(unint64_t)feed;
- (void)observer:(id)observer modifyBulletin:(id)bulletin forFeed:(unint64_t)feed;
- (void)observer:(id)observer noteInvalidatedBulletinIDs:(id)ds;
- (void)observer:(id)observer removeBulletin:(id)bulletin forFeed:(unint64_t)feed;
- (void)removeAlert:(id)alert;
- (void)voicemailsChanged:(BOOL)changed;
- (void)voicemailsChangedNotification;
@end

@implementation ANCAlertSource

- (ANCAlertSource)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v64.receiver = self;
  v64.super_class = ANCAlertSource;
  v8 = [(ANCAlertSource *)&v64 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_queue, queue);
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

  queue = [(ANCAlertSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005E6BC;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_sync(queue, block);

  queue2 = [(ANCAlertSource *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005E700;
  v6[3] = &unk_1000BD398;
  v6[4] = self;
  dispatch_sync(queue2, v6);
}

- (id)displayNameForAppIdentifier:(id)identifier
{
  v3 = [LSApplicationProxy applicationProxyForIdentifier:identifier];
  localizedName = [v3 localizedName];

  return localizedName;
}

- (BOOL)isAlertSilent:(id)silent
{
  silentCopy = silent;
  v5 = objc_alloc_init(DNDMutableClientEventDetails);
  appIdentifier = [silentCopy appIdentifier];
  [v5 setBundleIdentifier:appIdentifier];

  v7 = [silentCopy updateDNDEventDetails:v5];

  behaviorResolutionService = [(ANCAlertSource *)self behaviorResolutionService];
  v22 = 0;
  v9 = [behaviorResolutionService resolveBehaviorForEventDetails:v7 error:&v22];
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
    interruptionSuppression = [v9 interruptionSuppression];
    v13 = interruptionSuppression != 0;
    v15 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      appIdentifier2 = [silentCopy appIdentifier];
      [v9 interruptionSuppression];
      v18 = DNDStringFromInterruptionSuppression();
      v19 = v18;
      v20 = "N";
      *buf = 138412802;
      v24 = appIdentifier2;
      if (interruptionSuppression)
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

- (void)modifyAlert:(id)alert
{
  alertCopy = alert;
  alerts = [(ANCAlertSource *)self alerts];
  v6 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [alertCopy categoryID]);
  v8 = [alerts objectForKeyedSubscript:v6];

  [v8 exchangeObjectAtIndex:objc_msgSend(v8 withObjectAtIndex:{"indexOfObject:", alertCopy), objc_msgSend(v8, "count") - 1}];
  [alertCopy setSilent:{-[ANCAlertSource isAlertSilent:](self, "isAlertSilent:", alertCopy)}];
  delegate = [(ANCAlertSource *)self delegate];
  [delegate alertModified:alertCopy];
}

- (void)removeAlert:(id)alert
{
  alertCopy = alert;
  alerts = [(ANCAlertSource *)self alerts];
  v5 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [alertCopy categoryID]);
  v6 = [alerts objectForKeyedSubscript:v5];

  [v6 removeObject:alertCopy];
  if (![v6 count])
  {
    alerts2 = [(ANCAlertSource *)self alerts];
    v8 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [alertCopy categoryID]);
    [alerts2 removeObjectForKey:v8];
  }

  [alertCopy setSilent:{-[ANCAlertSource isAlertSilent:](self, "isAlertSilent:", alertCopy)}];
  delegate = [(ANCAlertSource *)self delegate];
  [delegate alertRemoved:alertCopy];
}

- (void)observer:(id)observer addBulletin:(id)bulletin forFeed:(unint64_t)feed
{
  observerCopy = observer;
  bulletinCopy = bulletin;
  bbBulletinAlerts = [(ANCAlertSource *)self bbBulletinAlerts];
  bulletinID = [bulletinCopy bulletinID];
  v11 = [bbBulletinAlerts objectForKey:bulletinID];

  if (!v11)
  {
    if ([bulletinCopy contentPreviewSetting] == 3)
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
      sectionID = [bulletinCopy sectionID];
      v14 = [(ANCAlertSource *)self isSpecialSectionID:sectionID];

      if ((v14 & 1) == 0)
      {
        sectionID2 = [bulletinCopy sectionID];
        v16 = [(ANCAlertSource *)self categoryIDForAppIdentifier:sectionID2];

        v17 = [[ANCBulletinAlert alloc] initWithBulletin:bulletinCopy observer:observerCopy categoryID:v16];
        v18 = +[NSDate date];
        publicationDate = [bulletinCopy publicationDate];
        [v18 timeIntervalSinceDate:publicationDate];
        v21 = v20 > 30.0;

        bbBulletinAlerts2 = [(ANCAlertSource *)self bbBulletinAlerts];
        bulletinID2 = [bulletinCopy bulletinID];
        [bbBulletinAlerts2 setObject:v17 forKeyedSubscript:bulletinID2];

        [(ANCAlertSource *)self addAlert:v17 isPreExisting:v21];
      }
    }
  }
}

- (void)observer:(id)observer modifyBulletin:(id)bulletin forFeed:(unint64_t)feed
{
  bulletinCopy = bulletin;
  threadSummary = [bulletinCopy threadSummary];

  if (threadSummary)
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
    bbBulletinAlerts = [(ANCAlertSource *)self bbBulletinAlerts];
    bulletinID = [bulletinCopy bulletinID];
    v11 = [bbBulletinAlerts objectForKeyedSubscript:bulletinID];

    if (v11)
    {
      [v11 setBulletin:bulletinCopy];
      [(ANCAlertSource *)self modifyAlert:v11];
    }
  }
}

- (void)observer:(id)observer removeBulletin:(id)bulletin forFeed:(unint64_t)feed
{
  bulletinCopy = bulletin;
  bbBulletinAlerts = [(ANCAlertSource *)self bbBulletinAlerts];
  bulletinID = [bulletinCopy bulletinID];
  v8 = [bbBulletinAlerts objectForKeyedSubscript:bulletinID];

  if (v8)
  {
    [(ANCAlertSource *)self removeAlert:v8];
    bbBulletinAlerts2 = [(ANCAlertSource *)self bbBulletinAlerts];
    bulletinID2 = [bulletinCopy bulletinID];
    [bbBulletinAlerts2 removeObjectForKey:bulletinID2];
  }
}

- (void)observer:(id)observer noteInvalidatedBulletinIDs:(id)ds
{
  dsCopy = ds;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [dsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(dsCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        bbBulletinAlerts = [(ANCAlertSource *)self bbBulletinAlerts];
        v12 = [bbBulletinAlerts objectForKeyedSubscript:v10];

        if (v12)
        {
          [(ANCAlertSource *)self removeAlert:v12];
          bbBulletinAlerts2 = [(ANCAlertSource *)self bbBulletinAlerts];
          [bbBulletinAlerts2 removeObjectForKey:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [dsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (BOOL)isSpecialSectionID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:@"com.apple.mobilephone"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [dCopy isEqualToString:@"com.apple.facetime"];
  }

  return v4;
}

- (unsigned)categoryIDForAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  appIdentifierToCategoryCache = [(ANCAlertSource *)self appIdentifierToCategoryCache];
  v6 = [appIdentifierToCategoryCache objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    goto LABEL_16;
  }

  firstPartyAppIdentifierToCategoryMap = [(ANCAlertSource *)self firstPartyAppIdentifierToCategoryMap];
  v6 = [firstPartyAppIdentifierToCategoryMap objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
LABEL_15:
    appIdentifierToCategoryCache2 = [(ANCAlertSource *)self appIdentifierToCategoryCache];
    [appIdentifierToCategoryCache2 setObject:v6 forKeyedSubscript:identifierCopy];

    goto LABEL_16;
  }

  v8 = [LSApplicationProxy applicationProxyForIdentifier:identifierCopy];
  bundleContainerURL = [v8 bundleContainerURL];
  path = [bundleContainerURL path];

  v11 = [path stringByAppendingPathComponent:@"Info.plist"];
  v12 = [NSDictionary dictionaryWithContentsOfFile:v11];
  v13 = [v12 objectForKeyedSubscript:@"SBMatchingApplicationGenres"];
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v13 count])
    {
      goto LABEL_13;
    }

    firstObject = [v13 firstObject];
    unsignedIntegerValue = [(ANCAlertSource *)self genreIDForGenre:firstObject];
  }

  else
  {
    v21 = v8;
    firstObject = [path stringByAppendingPathComponent:@"iTunesMetadata.plist"];
    v16 = [NSDictionary dictionaryWithContentsOfFile:firstObject];
    v17 = [v16 objectForKeyedSubscript:@"genreId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v17 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v8 = v21;
  }

  if (unsignedIntegerValue)
  {
    v6 = [NSNumber numberWithUnsignedChar:[(ANCAlertSource *)self categoryIDForGenreID:unsignedIntegerValue]];
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
  unsignedCharValue = [v6 unsignedCharValue];

  return unsignedCharValue;
}

- (void)callStatusChanged
{
  tuCallCenter = [(ANCAlertSource *)self tuCallCenter];
  v4 = [tuCallCenter audioAndVideoCallsWithStatus:4];

  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 134217984;
    v19 = [v4 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "# incoming calls: %lu", buf, 0xCu);
  }

  tuIncomingCalls = [(ANCAlertSource *)self tuIncomingCalls];
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
  [(ANCAlertSource *)self combineCurrentArray:tuIncomingCalls withNewArray:v4 maxCount:-1 objectRemoved:v17 objectAdded:v16];

  tuCallCenter2 = [(ANCAlertSource *)self tuCallCenter];
  v9 = [tuCallCenter2 audioAndVideoCallsWithStatus:1];

  v10 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v4 count];
    *buf = 134217984;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "# active calls: %lu", buf, 0xCu);
  }

  tuActiveCalls = [(ANCAlertSource *)self tuActiveCalls];
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
  [(ANCAlertSource *)self combineCurrentArray:tuActiveCalls withNewArray:v9 maxCount:-1 objectRemoved:v15 objectAdded:v14];
}

- (void)callIdentificationChanged:(id)changed
{
  object = [changed object];
  tuIncomingCalls = [(ANCAlertSource *)self tuIncomingCalls];
  v5 = [tuIncomingCalls containsObject:object];

  if (v5)
  {
    tuIncomingCallAlerts = [(ANCAlertSource *)self tuIncomingCallAlerts];
    v7 = [tuIncomingCallAlerts objectForKey:object];

    tuIncomingCalls2 = [(ANCAlertSource *)self tuIncomingCalls];
    tuIncomingCalls3 = [(ANCAlertSource *)self tuIncomingCalls];
    v10 = [tuIncomingCalls3 indexOfObject:object];
    tuIncomingCalls4 = [(ANCAlertSource *)self tuIncomingCalls];
    [tuIncomingCalls2 exchangeObjectAtIndex:v10 withObjectAtIndex:{objc_msgSend(tuIncomingCalls4, "count") - 1}];

    [(ANCAlertSource *)self modifyAlert:v7];
  }
}

- (void)callHistoryChangedNotification
{
  queue = [(ANCAlertSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005FCDC;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)callHistoryChanged:(BOOL)changed
{
  v5 = [CHRecentCall predicateForCallsWithStatus:kCHCallStatusMissed];
  v15[0] = v5;
  v6 = [CHRecentCall predicateForCallsWithStatusRead:0];
  v15[1] = v6;
  v7 = [NSArray arrayWithObjects:v15 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];

  chManager = [(ANCAlertSource *)self chManager];
  v10 = [chManager callsWithPredicate:v8 limit:0 offset:0 batchSize:0];

  chUnreadMissedCalls = [(ANCAlertSource *)self chUnreadMissedCalls];
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
  changedCopy = changed;
  [(ANCAlertSource *)self combineCurrentArray:chUnreadMissedCalls withNewArray:v10 maxCount:5 objectRemoved:v14 objectAdded:v12];
}

- (void)voicemailsChangedNotification
{
  queue = [(ANCAlertSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100060110;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)voicemailsChanged:(BOOL)changed
{
  vvManager = [(ANCAlertSource *)self vvManager];
  v6 = [vvManager voicemailsPassingTest:&stru_1000BE5B8];

  vvUnreadVoicemails = [(ANCAlertSource *)self vvUnreadVoicemails];
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
  changedCopy = changed;
  [(ANCAlertSource *)self combineCurrentArray:vvUnreadVoicemails withNewArray:v6 maxCount:5 objectRemoved:v10 objectAdded:v8];
}

- (id)lazyContactStore
{
  contactStore = [(ANCAlertSource *)self contactStore];

  if (!contactStore)
  {
    v4 = objc_alloc_init(CNContactStore);
    [(ANCAlertSource *)self setContactStore:v4];
  }

  return [(ANCAlertSource *)self contactStore];
}

- (void)combineCurrentArray:(id)array withNewArray:(id)newArray maxCount:(unint64_t)count objectRemoved:(id)removed objectAdded:(id)added
{
  arrayCopy = array;
  newArrayCopy = newArray;
  removedCopy = removed;
  addedCopy = added;
  v14 = [arrayCopy count];
  v15 = arrayCopy;
  if (v14)
  {
    v16 = 0;
    do
    {
      v17 = [v15 objectAtIndexedSubscript:v16];
      if ([newArrayCopy containsObject:v17] && objc_msgSend(newArrayCopy, "indexOfObject:", v17) < count)
      {
        ++v16;
      }

      else
      {
        removedCopy[2](removedCopy, v17);
        [arrayCopy removeObjectAtIndex:v16];
      }

      v18 = [arrayCopy count];
      v15 = arrayCopy;
    }

    while (v16 != v18);
  }

  v19 = [newArrayCopy count];
  if (v19 >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = v19;
  }

  if (countCopy)
  {
    v21 = countCopy - 1;
    do
    {
      v22 = [newArrayCopy objectAtIndexedSubscript:v21];
      if (([arrayCopy containsObject:v22] & 1) == 0)
      {
        [arrayCopy addObject:v22];
        addedCopy[2](addedCopy, v22);
      }

      --v21;
    }

    while (v21 != -1);
  }
}

- (unint64_t)genreIDForGenre:(id)genre
{
  genreCopy = genre;
  if ([genreCopy isEqualToString:@"Business"])
  {
    v4 = 6000;
  }

  else if ([genreCopy isEqualToString:@"Weather"])
  {
    v4 = 6001;
  }

  else if ([genreCopy isEqualToString:@"Utilities"])
  {
    v4 = 6002;
  }

  else if ([genreCopy isEqualToString:@"Travel"])
  {
    v4 = 6003;
  }

  else if ([genreCopy isEqualToString:@"Sports"])
  {
    v4 = 6004;
  }

  else if ([genreCopy isEqualToString:@"Social Networking"])
  {
    v4 = 6005;
  }

  else if ([genreCopy isEqualToString:@"Reference"])
  {
    v4 = 6006;
  }

  else if ([genreCopy isEqualToString:@"Productivity"])
  {
    v4 = 6007;
  }

  else if ([genreCopy isEqualToString:@"Photo & Video"])
  {
    v4 = 6008;
  }

  else if ([genreCopy isEqualToString:@"News"])
  {
    v4 = 6009;
  }

  else if ([genreCopy isEqualToString:@"Navigation"])
  {
    v4 = 6010;
  }

  else if ([genreCopy isEqualToString:@"Music"])
  {
    v4 = 6011;
  }

  else if ([genreCopy isEqualToString:@"Lifestyle"])
  {
    v4 = 6012;
  }

  else if ([genreCopy isEqualToString:@"Health & Fitness"])
  {
    v4 = 6013;
  }

  else if ([genreCopy isEqualToString:@"Games"])
  {
    v4 = 6014;
  }

  else if ([genreCopy isEqualToString:@"Finance"])
  {
    v4 = 6015;
  }

  else if ([genreCopy isEqualToString:@"Entertainment"])
  {
    v4 = 6016;
  }

  else if ([genreCopy isEqualToString:@"Education"])
  {
    v4 = 6017;
  }

  else if ([genreCopy isEqualToString:@"Books"])
  {
    v4 = 6018;
  }

  else if ([genreCopy isEqualToString:@"Medical"])
  {
    v4 = 6020;
  }

  else if ([genreCopy isEqualToString:@"Newsstand"])
  {
    v4 = 6021;
  }

  else if ([genreCopy isEqualToString:@"Catalogs"])
  {
    v4 = 6022;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)categoryIDForGenreID:(unint64_t)d
{
  if (d - 6000 > 0x15)
  {
    return 0;
  }

  else
  {
    return byte_100092130[d - 6000];
  }
}

- (ANCAlertSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end