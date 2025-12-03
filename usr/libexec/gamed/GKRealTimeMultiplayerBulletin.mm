@interface GKRealTimeMultiplayerBulletin
- (GKRealTimeMultiplayerBulletin)init;
- (GKRealTimeMultiplayerBulletin)initWithCoder:(id)coder;
- (GKRealTimeMultiplayerBulletin)initWithPushNotification:(id)notification;
- (id)clientNotification;
- (id)clientNotificationWithiCloudID:(id)d;
- (id)customInviteSoundPathForBundleID:(id)d;
- (id)description;
- (int64_t)inviteVersionFromMessage:(id)message;
- (void)declineInviteWithReason:(int)reason;
- (void)encodeWithCoder:(id)coder;
- (void)parseClientData:(id)data;
- (void)updateDeclineInviteTrackingForReason:(int64_t)reason;
@end

@implementation GKRealTimeMultiplayerBulletin

- (GKRealTimeMultiplayerBulletin)init
{
  v3.receiver = self;
  v3.super_class = GKRealTimeMultiplayerBulletin;
  return [(GKRealTimeMultiplayerBulletin *)&v3 init];
}

- (int64_t)inviteVersionFromMessage:(id)message
{
  messageCopy = message;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerBulletin inviteVersionFromMessage:", v10, 2u);
  }

  v6 = [messageCopy length];
  bytes = [messageCopy bytes];
  if (v6 < 2 || bytes[v6 - 2])
  {
    v8 = 0;
  }

  else
  {
    v8 = bytes[v6 - 1];
  }

  return v8;
}

- (void)parseClientData:(id)data
{
  dataCopy = data;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerBulletin parseClientData:", v9, 2u);
  }

  v7 = [NSNumber numberWithUnsignedChar:[(GKRealTimeMultiplayerBulletin *)self inviteVersionFromMessage:dataCopy]];
  inviteVersion = self->_inviteVersion;
  self->_inviteVersion = v7;
}

- (GKRealTimeMultiplayerBulletin)initWithPushNotification:(id)notification
{
  notificationCopy = notification;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerBulletin initWithPushNotification:", buf, 2u);
  }

  v49.receiver = self;
  v49.super_class = GKRealTimeMultiplayerBulletin;
  v7 = [(GKMultiplayerBulletin *)&v49 initWithPushNotification:notificationCopy];
  if (v7)
  {
    v8 = [(NSDictionary *)notificationCopy objectForKeyedSubscript:@"x"];
    clientDictionary = v7->_clientDictionary;
    v7->_clientDictionary = v8;

    v10 = [(NSDictionary *)notificationCopy objectForKeyedSubscript:@"s"];
    v11 = [(GKBulletin *)v7 dataFrom64String:v10];
    sessionToken = v7->_sessionToken;
    v7->_sessionToken = v11;

    v13 = [(NSDictionary *)notificationCopy objectForKeyedSubscript:@"P"];
    v14 = [(GKBulletin *)v7 dataFrom64String:v13];
    peerPushToken = v7->_peerPushToken;
    v7->_peerPushToken = v14;

    v16 = [(NSDictionary *)notificationCopy objectForKeyedSubscript:@"N"];
    peerNatType = v7->_peerNatType;
    v7->_peerNatType = v16;

    v18 = [(NSDictionary *)notificationCopy objectForKeyedSubscript:@"A"];
    v19 = [(GKBulletin *)v7 dataFrom64String:v18];
    peerNatIP = v7->_peerNatIP;
    v7->_peerNatIP = v19;

    v21 = [(NSDictionary *)notificationCopy objectForKeyedSubscript:@"B"];
    v22 = [(GKBulletin *)v7 dataFrom64String:v21];
    peerBlob = v7->_peerBlob;
    v7->_peerBlob = v22;

    v24 = [(NSDictionary *)v7->_clientDictionary objectForKeyedSubscript:GKInviteSessionIDKey];
    sessionID = v7->_sessionID;
    v7->_sessionID = v24;

    v26 = [(NSDictionary *)v7->_clientDictionary objectForKeyedSubscript:GKTransportPseudonymKey];
    peerPseudonym = v7->_peerPseudonym;
    v7->_peerPseudonym = v26;

    v28 = GKSuggestedTransportVersionPushShortKey;
    v29 = [(NSDictionary *)notificationCopy objectForKeyedSubscript:GKSuggestedTransportVersionPushShortKey];

    if (v29)
    {
      v30 = notificationCopy;
    }

    else
    {
      v31 = [(NSDictionary *)v7->_clientDictionary objectForKeyedSubscript:v28];

      if (!v31)
      {
        v43 = [NSNumber numberWithInteger:1];
        transportVersionToUse = v7->_transportVersionToUse;
        v7->_transportVersionToUse = v43;

        if (!os_log_GKGeneral)
        {
          v45 = GKOSLoggers();
        }

        v46 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
        {
          v47 = v46;
          v48 = [NSNumber numberWithInteger:1];
          *buf = 138412290;
          v51 = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Default to use (%@) GKDefaultTransportVersionIfNeeded, since this is not included in the push notification.", buf, 0xCu);
        }

        goto LABEL_11;
      }

      v30 = v7->_clientDictionary;
    }

    v32 = [(NSDictionary *)v30 objectForKeyedSubscript:v28];
    v33 = v7->_transportVersionToUse;
    v7->_transportVersionToUse = v32;

LABEL_11:
    clientDictionary = [(GKRealTimeMultiplayerBulletin *)v7 clientDictionary];
    v35 = [clientDictionary objectForKeyedSubscript:@"s"];
    v36 = [(GKBulletin *)v7 dataFrom64String:v35];

    [(GKRealTimeMultiplayerBulletin *)v7 parseClientData:v36];
    v37 = [GKGameDescriptor alloc];
    v38 = [(NSDictionary *)notificationCopy objectForKey:@"d"];
    v39 = [v37 initWithPushDictionary:v38];
    [(GKBulletin *)v7 setGameDescriptor:v39];

    v40 = [(NSDictionary *)notificationCopy objectForKey:GKDeclineReasonKey];
    declineReason = v7->_declineReason;
    v7->_declineReason = v40;
  }

  return v7;
}

- (GKRealTimeMultiplayerBulletin)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerBulletin initWithCoder:", buf, 2u);
  }

  v40.receiver = self;
  v40.super_class = GKRealTimeMultiplayerBulletin;
  v7 = [(GKGameplayBulletin *)&v40 initWithCoder:coderCopy];
  if (v7)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionToken"];
    sessionToken = v7->_sessionToken;
    v7->_sessionToken = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selfNatType"];
    selfNatType = v7->_selfNatType;
    v7->_selfNatType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverHosted"];
    v7->_serverHosted = [v12 BOOLValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerPushToken"];
    peerPushToken = v7->_peerPushToken;
    v7->_peerPushToken = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerNatType"];
    peerNatType = v7->_peerNatType;
    v7->_peerNatType = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerNatIP"];
    peerNatIP = v7->_peerNatIP;
    v7->_peerNatIP = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerBlob"];
    peerBlob = v7->_peerBlob;
    v7->_peerBlob = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selfTicket"];
    selfTicket = v7->_selfTicket;
    v7->_selfTicket = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"declineReason"];
    declineReason = v7->_declineReason;
    v7->_declineReason = v23;

    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = [NSSet setWithObjects:v25, v26, v27, objc_opt_class(), 0];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"clientDictionary"];
    clientDictionary = v7->_clientDictionary;
    v7->_clientDictionary = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inviteVersion"];
    inviteVersion = v7->_inviteVersion;
    v7->_inviteVersion = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    sessionID = v7->_sessionID;
    v7->_sessionID = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pseudonym"];
    peerPseudonym = v7->_peerPseudonym;
    v7->_peerPseudonym = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transportVersionToUse"];
    transportVersionToUse = v7->_transportVersionToUse;
    v7->_transportVersionToUse = v37;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerBulletin encodeWithCoder:", buf, 2u);
  }

  v21.receiver = self;
  v21.super_class = GKRealTimeMultiplayerBulletin;
  [(GKGameplayBulletin *)&v21 encodeWithCoder:coderCopy];
  sessionToken = [(GKRealTimeMultiplayerBulletin *)self sessionToken];
  [coderCopy encodeObject:sessionToken forKey:@"sessionToken"];

  selfNatType = [(GKRealTimeMultiplayerBulletin *)self selfNatType];
  [coderCopy encodeObject:selfNatType forKey:@"selfNatType"];

  v9 = [NSNumber numberWithBool:[(GKRealTimeMultiplayerBulletin *)self serverHosted]];
  [coderCopy encodeObject:v9 forKey:@"serverHosted"];

  peerPushToken = [(GKRealTimeMultiplayerBulletin *)self peerPushToken];
  [coderCopy encodeObject:peerPushToken forKey:@"peerPushToken"];

  peerNatType = [(GKRealTimeMultiplayerBulletin *)self peerNatType];
  [coderCopy encodeObject:peerNatType forKey:@"peerNatType"];

  peerNatIP = [(GKRealTimeMultiplayerBulletin *)self peerNatIP];
  [coderCopy encodeObject:peerNatIP forKey:@"peerNatIP"];

  peerBlob = [(GKRealTimeMultiplayerBulletin *)self peerBlob];
  [coderCopy encodeObject:peerBlob forKey:@"peerBlob"];

  selfTicket = [(GKRealTimeMultiplayerBulletin *)self selfTicket];
  [coderCopy encodeObject:selfTicket forKey:@"selfTicket"];

  declineReason = [(GKRealTimeMultiplayerBulletin *)self declineReason];
  [coderCopy encodeObject:declineReason forKey:@"declineReason"];

  clientDictionary = [(GKRealTimeMultiplayerBulletin *)self clientDictionary];
  [coderCopy encodeObject:clientDictionary forKey:@"clientDictionary"];

  inviteVersion = [(GKRealTimeMultiplayerBulletin *)self inviteVersion];
  [coderCopy encodeObject:inviteVersion forKey:@"inviteVersion"];

  sessionID = [(GKRealTimeMultiplayerBulletin *)self sessionID];
  [coderCopy encodeObject:sessionID forKey:@"sessionID"];

  peerPseudonym = [(GKRealTimeMultiplayerBulletin *)self peerPseudonym];
  [coderCopy encodeObject:peerPseudonym forKey:@"pseudonym"];

  transportVersionToUse = [(GKRealTimeMultiplayerBulletin *)self transportVersionToUse];
  [coderCopy encodeObject:transportVersionToUse forKey:@"transportVersionToUse"];
}

- (id)clientNotificationWithiCloudID:(id)d
{
  dCopy = d;
  clientNotification = [(GKRealTimeMultiplayerBulletin *)self clientNotification];
  v6 = [NSMutableDictionary dictionaryWithDictionary:clientNotification];

  if (dCopy)
  {
    [v6 setObject:dCopy forKeyedSubscript:@"iCloudID"];
  }

  return v6;
}

- (id)clientNotification
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerBulletin clientNotification", v35, 2u);
  }

  v5 = objc_alloc_init(NSMutableDictionary);
  sessionToken = [(GKRealTimeMultiplayerBulletin *)self sessionToken];

  if (sessionToken)
  {
    sessionToken2 = [(GKRealTimeMultiplayerBulletin *)self sessionToken];
    [v5 setObject:sessionToken2 forKeyedSubscript:@"session-token"];
  }

  receiverPlayerID = [(GKGameplayBulletin *)self receiverPlayerID];

  if (receiverPlayerID)
  {
    receiverPlayerID2 = [(GKGameplayBulletin *)self receiverPlayerID];
    [v5 setObject:receiverPlayerID2 forKeyedSubscript:@"self-id"];
  }

  originatorPlayerID = [(GKGameplayBulletin *)self originatorPlayerID];

  if (originatorPlayerID)
  {
    originatorPlayerID2 = [(GKGameplayBulletin *)self originatorPlayerID];
    [v5 setObject:originatorPlayerID2 forKeyedSubscript:@"peer-id"];
  }

  peerPushToken = [(GKRealTimeMultiplayerBulletin *)self peerPushToken];

  if (peerPushToken)
  {
    peerPushToken2 = [(GKRealTimeMultiplayerBulletin *)self peerPushToken];
    [v5 setObject:peerPushToken2 forKeyedSubscript:@"peer-push-token"];
  }

  peerNatType = [(GKRealTimeMultiplayerBulletin *)self peerNatType];

  if (peerNatType)
  {
    peerNatType2 = [(GKRealTimeMultiplayerBulletin *)self peerNatType];
    [v5 setObject:peerNatType2 forKeyedSubscript:@"peer-nat-type"];
  }

  peerNatIP = [(GKRealTimeMultiplayerBulletin *)self peerNatIP];

  if (peerNatIP)
  {
    peerNatIP2 = [(GKRealTimeMultiplayerBulletin *)self peerNatIP];
    [v5 setObject:peerNatIP2 forKeyedSubscript:@"peer-nat-ip"];
  }

  peerBlob = [(GKRealTimeMultiplayerBulletin *)self peerBlob];

  if (peerBlob)
  {
    peerBlob2 = [(GKRealTimeMultiplayerBulletin *)self peerBlob];
    [v5 setObject:peerBlob2 forKeyedSubscript:@"peer-blob"];
  }

  inviteVersion = [(GKRealTimeMultiplayerBulletin *)self inviteVersion];

  if (inviteVersion)
  {
    inviteVersion2 = [(GKRealTimeMultiplayerBulletin *)self inviteVersion];
    [v5 setObject:inviteVersion2 forKeyedSubscript:@"invite-version"];
  }

  transportVersionToUse = [(GKRealTimeMultiplayerBulletin *)self transportVersionToUse];

  if (transportVersionToUse)
  {
    transportVersionToUse2 = [(GKRealTimeMultiplayerBulletin *)self transportVersionToUse];
    [v5 setObject:transportVersionToUse2 forKeyedSubscript:GKSuggestedTransportVersionPushShortKey];
  }

  selfTicket = [(GKRealTimeMultiplayerBulletin *)self selfTicket];

  if (selfTicket)
  {
    selfTicket2 = [(GKRealTimeMultiplayerBulletin *)self selfTicket];
    [v5 setObject:selfTicket2 forKeyedSubscript:GKInviteCDXTicketIDKey];
  }

  sessionID = [(GKRealTimeMultiplayerBulletin *)self sessionID];

  if (sessionID)
  {
    sessionID2 = [(GKRealTimeMultiplayerBulletin *)self sessionID];
    [v5 setObject:sessionID2 forKeyedSubscript:GKInviteSessionIDKey];
  }

  peerPseudonym = [(GKRealTimeMultiplayerBulletin *)self peerPseudonym];

  if (peerPseudonym)
  {
    peerPseudonym2 = [(GKRealTimeMultiplayerBulletin *)self peerPseudonym];
    [v5 setObject:peerPseudonym2 forKeyedSubscript:GKInvitePeerPseudonym];
  }

  gameDescriptor = [(GKBulletin *)self gameDescriptor];
  bundleIdentifier = [gameDescriptor bundleIdentifier];
  [v5 setObject:bundleIdentifier forKeyedSubscript:GKBundleIDKey];

  declineReason = [(GKRealTimeMultiplayerBulletin *)self declineReason];

  if (declineReason)
  {
    declineReason2 = [(GKRealTimeMultiplayerBulletin *)self declineReason];
    [v5 setObject:declineReason2 forKeyedSubscript:GKDeclineReasonKey];
  }

  return v5;
}

- (void)updateDeclineInviteTrackingForReason:(int64_t)reason
{
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerBulletin updateDeclineInviteTrackingForReason:", v11, 2u);
  }

  v7 = [NSNumber numberWithInteger:reason];
  [(GKRealTimeMultiplayerBulletin *)self setDeclineReason:v7];

  if (reason > 5)
  {
    v8 = &GKReporterInviteDeclineUser;
  }

  else
  {
    v8 = *(&off_10036A250 + reason);
  }

  v9 = *v8;
  v10 = +[GKReporter reporter];
  [v10 reportEvent:GKReporterDomainInvite type:v9];
}

- (void)declineInviteWithReason:(int)reason
{
  v3 = *&reason;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [NSNumber numberWithUnsignedInt:v3];
    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerBulletin: declineInviteWithReason: %@", &v15, 0xCu);
  }

  v9 = v3;
  [(GKRealTimeMultiplayerBulletin *)self updateDeclineInviteTrackingForReason:v3];
  if (v3 == 5)
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_1002957CC();
    }
  }

  else
  {
    v11 = [GKInviteInternal inviteWithBulletin:self];
    gameDescriptor = [(GKBulletin *)self gameDescriptor];
    bundleIdentifier = [gameDescriptor bundleIdentifier];
    v14 = [(GKService *)GKMultiplayerMatchService serviceForBundleID:bundleIdentifier localPlayer:0];
    [v14 declineGameInvite:v11 reason:v9 handler:0];
  }
}

- (id)customInviteSoundPathForBundleID:(id)d
{
  dCopy = d;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerBulletin: customInviteSoundPathForBundleID:", v13, 2u);
  }

  v6 = GKGetBundlePathForIdentifier();
  v7 = [NSBundle bundleWithPath:v6];
  _gkPathForInviteSound = [v7 _gkPathForInviteSound];
  v9 = _gkPathForInviteSound;
  if (_gkPathForInviteSound)
  {
    v10 = _gkPathForInviteSound;
  }

  else
  {
    v10 = &stru_100374F10;
  }

  v11 = v10;

  return v10;
}

- (id)description
{
  v12.receiver = self;
  v12.super_class = GKRealTimeMultiplayerBulletin;
  v3 = [(GKBulletin *)&v12 description];
  gameDescriptor = [(GKBulletin *)self gameDescriptor];
  bundleIdentifier = [gameDescriptor bundleIdentifier];
  originatorPlayerID = [(GKGameplayBulletin *)self originatorPlayerID];
  receiverPlayerID = [(GKGameplayBulletin *)self receiverPlayerID];
  sessionToken = [(GKRealTimeMultiplayerBulletin *)self sessionToken];
  sessionID = [(GKRealTimeMultiplayerBulletin *)self sessionID];
  v10 = [v3 stringByAppendingFormat:@"\ngameDescriptor.bundleIdentifier:%@\noriginatorPlayerID:%@\nreceiverPlayerID:%@\nsessionToken:%@\nsessionID:%@\n", bundleIdentifier, originatorPlayerID, receiverPlayerID, sessionToken, sessionID];

  return v10;
}

@end