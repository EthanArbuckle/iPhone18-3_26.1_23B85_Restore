@interface GKAcceptedInviteManager
+ (id)syncQueue;
- (BOOL)removeAndReturnQueuedCancelledInviteWithSessionToken:(id)token;
- (GKAcceptedInviteManager)init;
- (id)_fetchAndRemoveBulletinFromArray:(id)array passingTest:(id)test;
- (id)_fetchObjectFromArray:(id)array passingTest:(id)test;
- (id)description;
- (id)multiplayerInviteForGame:(id)game;
- (id)multiplayerInviteForGameDescriptor:(id)descriptor;
- (id)removeAndReturnInviteWithSessionToken:(id)token;
- (id)removeAndReturnTurnBasedInviteWithMatchID:(id)d;
- (id)turnBasedInviteForGame:(id)game;
- (id)turnBasedInviteForGameDescriptor:(id)descriptor;
- (void)_addBulletin:(id)bulletin toArray:(id)array;
- (void)_insertBulletin:(id)bulletin atFrontOfArray:(id)array;
- (void)addMultiplayerInvite:(id)invite;
- (void)addTurnBasedEvent:(id)event;
- (void)declineMultiplayerInvite:(id)invite;
- (void)performSync:(id)sync;
- (void)queueCancelledMultiplayerInviteSessionToken:(id)token;
@end

@implementation GKAcceptedInviteManager

- (GKAcceptedInviteManager)init
{
  v10.receiver = self;
  v10.super_class = GKAcceptedInviteManager;
  v2 = [(GKAcceptedInviteManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    acceptedMultiplayerInvites = v2->_acceptedMultiplayerInvites;
    v2->_acceptedMultiplayerInvites = v3;

    v5 = objc_alloc_init(NSMutableArray);
    queuedCancelledMultiplayerInviteSessionTokens = v2->_queuedCancelledMultiplayerInviteSessionTokens;
    v2->_queuedCancelledMultiplayerInviteSessionTokens = v5;

    v7 = objc_alloc_init(NSMutableArray);
    acceptedTurnBased = v2->_acceptedTurnBased;
    v2->_acceptedTurnBased = v7;
  }

  return v2;
}

+ (id)syncQueue
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GKAcceptedInviteManager syncQueue", v6, 2u);
  }

  if (qword_1003B9440 != -1)
  {
    sub_100295220();
  }

  v4 = qword_1003B9438;

  return v4;
}

- (void)performSync:(id)sync
{
  syncCopy = sync;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKAcceptedInviteManager performSync:", buf, 2u);
  }

  syncQueue = [objc_opt_class() syncQueue];
  v7 = dispatch_get_current_queue();

  if (v7 == syncQueue)
  {
    label = dispatch_queue_get_label(syncQueue);
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s invoked on the same queue(%s), would deadlock at %@", "[GKAcceptedInviteManager performSync:]", label, v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAcceptedInviteManager.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (dispatch_get_current_queue() != queue)\n[%s (%s:%d)]", v10, "-[GKAcceptedInviteManager performSync:]", [lastPathComponent UTF8String], 58);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  dispatch_sync(syncQueue, syncCopy);
}

- (void)_addBulletin:(id)bulletin toArray:(id)array
{
  bulletinCopy = bulletin;
  arrayCopy = array;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKAcceptedInviteManager _addBulletin: toArray:", buf, 2u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10018617C;
  v12[3] = &unk_1003610B8;
  v13 = arrayCopy;
  v14 = bulletinCopy;
  v10 = bulletinCopy;
  v11 = arrayCopy;
  [(GKAcceptedInviteManager *)self performSync:v12];
}

- (void)_insertBulletin:(id)bulletin atFrontOfArray:(id)array
{
  bulletinCopy = bulletin;
  arrayCopy = array;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKAcceptedInviteManager _insertBulletin:toFrontOfArray:", buf, 2u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001862A8;
  v12[3] = &unk_1003610B8;
  v13 = arrayCopy;
  v14 = bulletinCopy;
  v10 = bulletinCopy;
  v11 = arrayCopy;
  [(GKAcceptedInviteManager *)self performSync:v12];
}

- (id)_fetchObjectFromArray:(id)array passingTest:(id)test
{
  arrayCopy = array;
  testCopy = test;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKAcceptedInviteManager _fetchObjectinFromArray: passingTest:", buf, 2u);
  }

  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = sub_100186468;
  v22 = sub_100186478;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100186480;
  v14[3] = &unk_10036A008;
  v10 = arrayCopy;
  v15 = v10;
  v11 = testCopy;
  v16 = v11;
  v17 = buf;
  [(GKAcceptedInviteManager *)self performSync:v14];
  v12 = *(v19 + 5);

  _Block_object_dispose(buf, 8);

  return v12;
}

- (id)_fetchAndRemoveBulletinFromArray:(id)array passingTest:(id)test
{
  arrayCopy = array;
  testCopy = test;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKAcceptedInviteManager _fetchAndRemoveBulletinFromArray: passingTest:", buf, 2u);
  }

  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = sub_100186468;
  v22 = sub_100186478;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100186720;
  v14[3] = &unk_10036A008;
  v10 = arrayCopy;
  v15 = v10;
  v11 = testCopy;
  v16 = v11;
  v17 = buf;
  [(GKAcceptedInviteManager *)self performSync:v14];
  v12 = *(v19 + 5);

  _Block_object_dispose(buf, 8);

  return v12;
}

- (void)addMultiplayerInvite:(id)invite
{
  inviteCopy = invite;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKAcceptedInviteManager addMultiplayerInvite:", buf, 2u);
  }

  queuedCancelledMultiplayerInviteSessionTokens = self->_queuedCancelledMultiplayerInviteSessionTokens;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001869E4;
  v12[3] = &unk_10036A030;
  v8 = inviteCopy;
  v13 = v8;
  v9 = [(GKAcceptedInviteManager *)self _fetchObjectFromArray:queuedCancelledMultiplayerInviteSessionTokens passingTest:v12];
  if (v9)
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "GKAcceptedInviteManager remove a queuedCancelledMultiplayerInviteSessionToken: %@", buf, 0xCu);
    }

    [(GKAcceptedInviteManager *)self removeAndReturnQueuedCancelledInviteWithSessionToken:v9];
  }

  [(GKAcceptedInviteManager *)self _insertBulletin:v8 atFrontOfArray:self->_acceptedMultiplayerInvites];
}

- (void)declineMultiplayerInvite:(id)invite
{
  inviteCopy = invite;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKAcceptedInviteManager declineMultiplayerInvite:", buf, 2u);
  }

  declineReason = [inviteCopy declineReason];

  if (declineReason)
  {
    [(GKAcceptedInviteManager *)self addMultiplayerInvite:inviteCopy];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Cannot add a multiplayer invite as a declined invite if there is no declineReason set!", v10, 2u);
    }
  }
}

- (void)queueCancelledMultiplayerInviteSessionToken:(id)token
{
  tokenCopy = token;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKAcceptedInviteManager queueCancelledMultiplayerInvite:", v7, 2u);
  }

  [(GKAcceptedInviteManager *)self _insertBulletin:tokenCopy atFrontOfArray:self->_queuedCancelledMultiplayerInviteSessionTokens];
}

- (void)addTurnBasedEvent:(id)event
{
  eventCopy = event;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKAcceptedInviteManager addTurnBasedEvent:", v7, 2u);
  }

  [(GKAcceptedInviteManager *)self _addBulletin:eventCopy toArray:self->_acceptedTurnBased];
}

- (id)removeAndReturnInviteWithSessionToken:(id)token
{
  tokenCopy = token;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKAcceptedInviteManager removeAndReturnInviteWithSessionToken:", buf, 2u);
  }

  acceptedMultiplayerInvites = self->_acceptedMultiplayerInvites;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100186DD8;
  v11[3] = &unk_10036A058;
  v12 = tokenCopy;
  v8 = tokenCopy;
  v9 = [(GKAcceptedInviteManager *)self _fetchAndRemoveBulletinFromArray:acceptedMultiplayerInvites passingTest:v11];

  return v9;
}

- (BOOL)removeAndReturnQueuedCancelledInviteWithSessionToken:(id)token
{
  tokenCopy = token;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKAcceptedInviteManager removeAndReturnQueuedCancelledInviteWithSessionToken:", buf, 2u);
  }

  queuedCancelledMultiplayerInviteSessionTokens = self->_queuedCancelledMultiplayerInviteSessionTokens;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100186F38;
  v12[3] = &unk_10036A030;
  v13 = tokenCopy;
  v8 = tokenCopy;
  v9 = [(GKAcceptedInviteManager *)self _fetchAndRemoveBulletinFromArray:queuedCancelledMultiplayerInviteSessionTokens passingTest:v12];
  v10 = v9 != 0;

  return v10;
}

- (id)removeAndReturnTurnBasedInviteWithMatchID:(id)d
{
  dCopy = d;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKAcceptedInviteManager removeAndReturnTurnBasedInviteWithMatchID:", buf, 2u);
  }

  acceptedTurnBased = self->_acceptedTurnBased;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100187068;
  v11[3] = &unk_10036A080;
  v12 = dCopy;
  v8 = dCopy;
  v9 = [(GKAcceptedInviteManager *)self _fetchAndRemoveBulletinFromArray:acceptedTurnBased passingTest:v11];

  return v9;
}

- (id)multiplayerInviteForGame:(id)game
{
  gameCopy = game;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKAcceptedInviteManager multiplayerInviteForGame:", v10, 2u);
  }

  v7 = [[GKGameDescriptor alloc] initWithDictionary:gameCopy];
  v8 = [(GKAcceptedInviteManager *)self multiplayerInviteForGameDescriptor:v7];

  return v8;
}

- (id)multiplayerInviteForGameDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKAcceptedInviteManager multiplayerInviteForGameDescriptor:", buf, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    acceptedMultiplayerInvites = self->_acceptedMultiplayerInvites;
    *buf = 138412290;
    v17 = acceptedMultiplayerInvites;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKAcceptedInviteManager - accepted invite bulletins %@", buf, 0xCu);
  }

  v10 = self->_acceptedMultiplayerInvites;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100187344;
  v14[3] = &unk_10036A058;
  v15 = descriptorCopy;
  v11 = descriptorCopy;
  v12 = [(GKAcceptedInviteManager *)self _fetchAndRemoveBulletinFromArray:v10 passingTest:v14];

  return v12;
}

- (id)turnBasedInviteForGame:(id)game
{
  gameCopy = game;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKAcceptedInviteManager turnBasedInviteForGame:", v10, 2u);
  }

  v7 = [[GKGameDescriptor alloc] initWithDictionary:gameCopy];
  v8 = [(GKAcceptedInviteManager *)self turnBasedInviteForGameDescriptor:v7];

  return v8;
}

- (id)turnBasedInviteForGameDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKAcceptedInviteManager turnBasedInviteForGameDescriptor:", buf, 2u);
  }

  acceptedTurnBased = self->_acceptedTurnBased;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100187554;
  v11[3] = &unk_10036A0A8;
  v12 = descriptorCopy;
  v8 = descriptorCopy;
  v9 = [(GKAcceptedInviteManager *)self _fetchAndRemoveBulletinFromArray:acceptedTurnBased passingTest:v11];

  return v9;
}

- (id)description
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100186468;
  v9 = sub_100186478;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100187660;
  v4[3] = &unk_1003624A8;
  v4[4] = self;
  v4[5] = &v5;
  [(GKAcceptedInviteManager *)self performSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

@end