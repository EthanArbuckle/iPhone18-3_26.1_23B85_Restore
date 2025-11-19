@interface GKAcceptedInviteManager
+ (id)syncQueue;
- (BOOL)removeAndReturnQueuedCancelledInviteWithSessionToken:(id)a3;
- (GKAcceptedInviteManager)init;
- (id)_fetchAndRemoveBulletinFromArray:(id)a3 passingTest:(id)a4;
- (id)_fetchObjectFromArray:(id)a3 passingTest:(id)a4;
- (id)description;
- (id)multiplayerInviteForGame:(id)a3;
- (id)multiplayerInviteForGameDescriptor:(id)a3;
- (id)removeAndReturnInviteWithSessionToken:(id)a3;
- (id)removeAndReturnTurnBasedInviteWithMatchID:(id)a3;
- (id)turnBasedInviteForGame:(id)a3;
- (id)turnBasedInviteForGameDescriptor:(id)a3;
- (void)_addBulletin:(id)a3 toArray:(id)a4;
- (void)_insertBulletin:(id)a3 atFrontOfArray:(id)a4;
- (void)addMultiplayerInvite:(id)a3;
- (void)addTurnBasedEvent:(id)a3;
- (void)declineMultiplayerInvite:(id)a3;
- (void)performSync:(id)a3;
- (void)queueCancelledMultiplayerInviteSessionToken:(id)a3;
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

- (void)performSync:(id)a3
{
  v3 = a3;
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

  v6 = [objc_opt_class() syncQueue];
  v7 = dispatch_get_current_queue();

  if (v7 == v6)
  {
    label = dispatch_queue_get_label(v6);
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s invoked on the same queue(%s), would deadlock at %@", "[GKAcceptedInviteManager performSync:]", label, v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKAcceptedInviteManager.m"];
    v12 = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (dispatch_get_current_queue() != queue)\n[%s (%s:%d)]", v10, "-[GKAcceptedInviteManager performSync:]", [v12 UTF8String], 58);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  dispatch_sync(v6, v3);
}

- (void)_addBulletin:(id)a3 toArray:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v13 = v7;
  v14 = v6;
  v10 = v6;
  v11 = v7;
  [(GKAcceptedInviteManager *)self performSync:v12];
}

- (void)_insertBulletin:(id)a3 atFrontOfArray:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v13 = v7;
  v14 = v6;
  v10 = v6;
  v11 = v7;
  [(GKAcceptedInviteManager *)self performSync:v12];
}

- (id)_fetchObjectFromArray:(id)a3 passingTest:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v10 = v6;
  v15 = v10;
  v11 = v7;
  v16 = v11;
  v17 = buf;
  [(GKAcceptedInviteManager *)self performSync:v14];
  v12 = *(v19 + 5);

  _Block_object_dispose(buf, 8);

  return v12;
}

- (id)_fetchAndRemoveBulletinFromArray:(id)a3 passingTest:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v10 = v6;
  v15 = v10;
  v11 = v7;
  v16 = v11;
  v17 = buf;
  [(GKAcceptedInviteManager *)self performSync:v14];
  v12 = *(v19 + 5);

  _Block_object_dispose(buf, 8);

  return v12;
}

- (void)addMultiplayerInvite:(id)a3
{
  v4 = a3;
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
  v8 = v4;
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

- (void)declineMultiplayerInvite:(id)a3
{
  v4 = a3;
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

  v7 = [v4 declineReason];

  if (v7)
  {
    [(GKAcceptedInviteManager *)self addMultiplayerInvite:v4];
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

- (void)queueCancelledMultiplayerInviteSessionToken:(id)a3
{
  v4 = a3;
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

  [(GKAcceptedInviteManager *)self _insertBulletin:v4 atFrontOfArray:self->_queuedCancelledMultiplayerInviteSessionTokens];
}

- (void)addTurnBasedEvent:(id)a3
{
  v4 = a3;
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

  [(GKAcceptedInviteManager *)self _addBulletin:v4 toArray:self->_acceptedTurnBased];
}

- (id)removeAndReturnInviteWithSessionToken:(id)a3
{
  v4 = a3;
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
  v12 = v4;
  v8 = v4;
  v9 = [(GKAcceptedInviteManager *)self _fetchAndRemoveBulletinFromArray:acceptedMultiplayerInvites passingTest:v11];

  return v9;
}

- (BOOL)removeAndReturnQueuedCancelledInviteWithSessionToken:(id)a3
{
  v4 = a3;
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
  v13 = v4;
  v8 = v4;
  v9 = [(GKAcceptedInviteManager *)self _fetchAndRemoveBulletinFromArray:queuedCancelledMultiplayerInviteSessionTokens passingTest:v12];
  v10 = v9 != 0;

  return v10;
}

- (id)removeAndReturnTurnBasedInviteWithMatchID:(id)a3
{
  v4 = a3;
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
  v12 = v4;
  v8 = v4;
  v9 = [(GKAcceptedInviteManager *)self _fetchAndRemoveBulletinFromArray:acceptedTurnBased passingTest:v11];

  return v9;
}

- (id)multiplayerInviteForGame:(id)a3
{
  v4 = a3;
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

  v7 = [[GKGameDescriptor alloc] initWithDictionary:v4];
  v8 = [(GKAcceptedInviteManager *)self multiplayerInviteForGameDescriptor:v7];

  return v8;
}

- (id)multiplayerInviteForGameDescriptor:(id)a3
{
  v4 = a3;
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
  v15 = v4;
  v11 = v4;
  v12 = [(GKAcceptedInviteManager *)self _fetchAndRemoveBulletinFromArray:v10 passingTest:v14];

  return v12;
}

- (id)turnBasedInviteForGame:(id)a3
{
  v4 = a3;
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

  v7 = [[GKGameDescriptor alloc] initWithDictionary:v4];
  v8 = [(GKAcceptedInviteManager *)self turnBasedInviteForGameDescriptor:v7];

  return v8;
}

- (id)turnBasedInviteForGameDescriptor:(id)a3
{
  v4 = a3;
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
  v12 = v4;
  v8 = v4;
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