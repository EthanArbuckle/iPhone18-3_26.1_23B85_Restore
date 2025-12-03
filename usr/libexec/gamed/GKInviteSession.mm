@interface GKInviteSession
- (BOOL)shouldBeCleared;
- (GKInviteSession)init;
- (GKInviteSession)initWithSessionToken:(id)token;
- (id)referencesForInvitee:(id)invitee;
- (void)addInvitee:(id)invitee reference:(id)reference;
- (void)addResponse:(id)response;
- (void)performAsync:(id)async;
- (void)removeAllInvitees;
- (void)removeAllResponses;
- (void)removeInvitee:(id)invitee reference:(id)reference;
@end

@implementation GKInviteSession

- (GKInviteSession)init
{
  v15.receiver = self;
  v15.super_class = GKInviteSession;
  v2 = [(GKInviteSession *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.gamed.invitesession", v3);
    syncQueue = v2->_syncQueue;
    v2->_syncQueue = v4;

    v6 = [[NSMutableDictionary alloc] initWithCapacity:0];
    invitees = v2->_invitees;
    v2->_invitees = v6;

    v8 = objc_alloc_init(NSArray);
    responses = v2->_responses;
    v2->_responses = v8;

    v10 = [[NSMutableArray alloc] initWithCapacity:0];
    invitedPlayers = v2->_invitedPlayers;
    v2->_invitedPlayers = v10;

    v12 = [[NSMutableArray alloc] initWithCapacity:0];
    shareInvitees = v2->_shareInvitees;
    v2->_shareInvitees = v12;
  }

  return v2;
}

- (GKInviteSession)initWithSessionToken:(id)token
{
  tokenCopy = token;
  v6 = [(GKInviteSession *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionToken, token);
  }

  return v7;
}

- (void)performAsync:(id)async
{
  asyncCopy = async;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKInviteSession: performAsync", v7, 2u);
  }

  dispatch_async(self->_syncQueue, asyncCopy);
}

- (void)addInvitee:(id)invitee reference:(id)reference
{
  inviteeCopy = invitee;
  referenceCopy = reference;
  playerID = [inviteeCopy playerID];
  if (playerID)
  {
    v8 = [(NSMutableDictionary *)self->_invitees objectForKey:playerID];
    if (!v8)
    {
      v8 = [NSMutableSet setWithCapacity:0];
      [(NSMutableDictionary *)self->_invitees setObject:v8 forKey:playerID];
      [(NSMutableArray *)self->_invitedPlayers addObject:inviteeCopy];
      v9 = +[GKDataRequestManager sharedManager];
      v10 = [NSString stringWithFormat:@"inviteInvitee.%@", playerID];
      [v9 beginTransaction:v10];
    }

    if (referenceCopy)
    {
      [v8 addObject:referenceCopy];
    }
  }
}

- (void)removeInvitee:(id)invitee reference:(id)reference
{
  inviteeCopy = invitee;
  referenceCopy = reference;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [inviteeCopy debugDescription];
    *buf = 138412546;
    v36 = v11;
    v37 = 2112;
    v38 = referenceCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "GKInviteSession: removeInvitee: %@ refrence: %@", buf, 0x16u);
  }

  playerID = [inviteeCopy playerID];
  if (playerID)
  {
    v13 = [(NSMutableDictionary *)self->_invitees objectForKey:playerID];
    v14 = v13;
    if (v13)
    {
      if (!referenceCopy || ([v13 removeObject:referenceCopy], !objc_msgSend(v14, "count")))
      {
        [(NSMutableDictionary *)self->_invitees removeObjectForKey:playerID];
        [(NSMutableArray *)self->_invitedPlayers removeObject:inviteeCopy];
        if (!os_log_GKGeneral)
        {
          v15 = GKOSLoggers();
        }

        v16 = os_log_GKTrace;
        if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "GKInviteSession: removeInvitee: reference exist and player has been removed from _invitees/_invitedPlayers", buf, 2u);
        }

        v17 = +[GKDataRequestManager sharedManager];
        v18 = [NSString stringWithFormat:@"inviteInvitee.%@", playerID];
        [v17 endTransaction:v18];
      }
    }

    if ([(NSMutableDictionary *)self->_invitees count]|| [(NSMutableArray *)self->_shareInvitees count])
    {
      if (!os_log_GKGeneral)
      {
        v19 = GKOSLoggers();
      }

      v20 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v21 = v20;
        sessionToken = [(GKInviteSession *)self sessionToken];
        *buf = 138412290;
        v36 = sessionToken;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "GKInviteSession - Still have invitees in invite session, %@", buf, 0xCu);
      }

      if (!os_log_GKGeneral)
      {
        v23 = GKOSLoggers();
      }

      v24 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v25 = v24;
        invitees = [(GKInviteSession *)self invitees];
        *buf = 138412290;
        v36 = invitees;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "invitees %@", buf, 0xCu);
      }

      if (!os_log_GKGeneral)
      {
        v27 = GKOSLoggers();
      }

      v28 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v29 = v28;
        shareInvitees = [(GKInviteSession *)self shareInvitees];
        *buf = 138412290;
        v36 = shareInvitees;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "shareInvitees %@", buf, 0xCu);
      }
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v31 = GKOSLoggers();
      }

      v32 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v33 = v32;
        sessionToken2 = [(GKInviteSession *)self sessionToken];
        *buf = 138412290;
        v36 = sessionToken2;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "No more invitees, clearing session token %@", buf, 0xCu);
      }

      [(GKInviteSession *)self setSessionToken:0];
    }
  }
}

- (id)referencesForInvitee:(id)invitee
{
  invitees = self->_invitees;
  playerID = [invitee playerID];
  v5 = [(NSMutableDictionary *)invitees objectForKey:playerID];

  return v5;
}

- (void)removeAllInvitees
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKInviteSession: removeAllInvitees", buf, 2u);
  }

  v5 = +[GKDataRequestManager sharedManager];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_invitees;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        conciseDescription = [*(*(&v13 + 1) + 8 * v10) conciseDescription];
        v12 = [NSString stringWithFormat:@"inviteInvitee.%@", conciseDescription];
        [v5 endTransaction:v12];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  [(NSMutableDictionary *)self->_invitees removeAllObjects];
  [(NSMutableArray *)self->_invitedPlayers removeAllObjects];
  [(NSMutableArray *)self->_shareInvitees removeAllObjects];
}

- (void)addResponse:(id)response
{
  v4 = [(NSArray *)self->_responses arrayByAddingObject:response];
  [(GKInviteSession *)self setResponses:v4];
}

- (void)removeAllResponses
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKInviteSession: removeAllResponses", v6, 2u);
  }

  v5 = +[NSArray array];
  [(GKInviteSession *)self setResponses:v5];
}

- (BOOL)shouldBeCleared
{
  if ([(NSMutableDictionary *)self->_invitees count]|| [(NSArray *)self->_responses count]|| [(NSMutableArray *)self->_shareInvitees count])
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    v4 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKInviteSession - SHOULD NOT be cleared because still have items:", &v16, 2u);
    }

    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      invitees = self->_invitees;
      v16 = 138412290;
      v17 = invitees;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "invitees %@", &v16, 0xCu);
    }

    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      shareInvitees = self->_shareInvitees;
      v16 = 138412290;
      v17 = shareInvitees;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "shareInvitees %@", &v16, 0xCu);
    }

    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKMatch;
    v13 = os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO);
    if (v13)
    {
      responses = self->_responses;
      v16 = 138412290;
      v17 = responses;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "responses %@", &v16, 0xCu);
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    LOBYTE(v13) = 1;
  }

  return v13;
}

@end