@interface GKRealTimeMultiplayerBulletin
- (GKRealTimeMultiplayerBulletin)init;
- (GKRealTimeMultiplayerBulletin)initWithCoder:(id)a3;
- (GKRealTimeMultiplayerBulletin)initWithPushNotification:(id)a3;
- (id)clientNotification;
- (id)clientNotificationWithiCloudID:(id)a3;
- (id)customInviteSoundPathForBundleID:(id)a3;
- (id)description;
- (int64_t)inviteVersionFromMessage:(id)a3;
- (void)declineInviteWithReason:(int)a3;
- (void)encodeWithCoder:(id)a3;
- (void)parseClientData:(id)a3;
- (void)updateDeclineInviteTrackingForReason:(int64_t)a3;
@end

@implementation GKRealTimeMultiplayerBulletin

- (GKRealTimeMultiplayerBulletin)init
{
  v3.receiver = self;
  v3.super_class = GKRealTimeMultiplayerBulletin;
  return [(GKRealTimeMultiplayerBulletin *)&v3 init];
}

- (int64_t)inviteVersionFromMessage:(id)a3
{
  v3 = a3;
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

  v6 = [v3 length];
  v7 = [v3 bytes];
  if (v6 < 2 || v7[v6 - 2])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7[v6 - 1];
  }

  return v8;
}

- (void)parseClientData:(id)a3
{
  v4 = a3;
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

  v7 = [NSNumber numberWithUnsignedChar:[(GKRealTimeMultiplayerBulletin *)self inviteVersionFromMessage:v4]];
  inviteVersion = self->_inviteVersion;
  self->_inviteVersion = v7;
}

- (GKRealTimeMultiplayerBulletin)initWithPushNotification:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerBulletin initWithPushNotification:", buf, 2u);
  }

  v49.receiver = self;
  v49.super_class = GKRealTimeMultiplayerBulletin;
  v7 = [(GKMultiplayerBulletin *)&v49 initWithPushNotification:v4];
  if (v7)
  {
    v8 = [(NSDictionary *)v4 objectForKeyedSubscript:@"x"];
    clientDictionary = v7->_clientDictionary;
    v7->_clientDictionary = v8;

    v10 = [(NSDictionary *)v4 objectForKeyedSubscript:@"s"];
    v11 = [(GKBulletin *)v7 dataFrom64String:v10];
    sessionToken = v7->_sessionToken;
    v7->_sessionToken = v11;

    v13 = [(NSDictionary *)v4 objectForKeyedSubscript:@"P"];
    v14 = [(GKBulletin *)v7 dataFrom64String:v13];
    peerPushToken = v7->_peerPushToken;
    v7->_peerPushToken = v14;

    v16 = [(NSDictionary *)v4 objectForKeyedSubscript:@"N"];
    peerNatType = v7->_peerNatType;
    v7->_peerNatType = v16;

    v18 = [(NSDictionary *)v4 objectForKeyedSubscript:@"A"];
    v19 = [(GKBulletin *)v7 dataFrom64String:v18];
    peerNatIP = v7->_peerNatIP;
    v7->_peerNatIP = v19;

    v21 = [(NSDictionary *)v4 objectForKeyedSubscript:@"B"];
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
    v29 = [(NSDictionary *)v4 objectForKeyedSubscript:GKSuggestedTransportVersionPushShortKey];

    if (v29)
    {
      v30 = v4;
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
    v34 = [(GKRealTimeMultiplayerBulletin *)v7 clientDictionary];
    v35 = [v34 objectForKeyedSubscript:@"s"];
    v36 = [(GKBulletin *)v7 dataFrom64String:v35];

    [(GKRealTimeMultiplayerBulletin *)v7 parseClientData:v36];
    v37 = [GKGameDescriptor alloc];
    v38 = [(NSDictionary *)v4 objectForKey:@"d"];
    v39 = [v37 initWithPushDictionary:v38];
    [(GKBulletin *)v7 setGameDescriptor:v39];

    v40 = [(NSDictionary *)v4 objectForKey:GKDeclineReasonKey];
    declineReason = v7->_declineReason;
    v7->_declineReason = v40;
  }

  return v7;
}

- (GKRealTimeMultiplayerBulletin)initWithCoder:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerBulletin initWithCoder:", buf, 2u);
  }

  v40.receiver = self;
  v40.super_class = GKRealTimeMultiplayerBulletin;
  v7 = [(GKGameplayBulletin *)&v40 initWithCoder:v4];
  if (v7)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionToken"];
    sessionToken = v7->_sessionToken;
    v7->_sessionToken = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selfNatType"];
    selfNatType = v7->_selfNatType;
    v7->_selfNatType = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverHosted"];
    v7->_serverHosted = [v12 BOOLValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerPushToken"];
    peerPushToken = v7->_peerPushToken;
    v7->_peerPushToken = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerNatType"];
    peerNatType = v7->_peerNatType;
    v7->_peerNatType = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerNatIP"];
    peerNatIP = v7->_peerNatIP;
    v7->_peerNatIP = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerBlob"];
    peerBlob = v7->_peerBlob;
    v7->_peerBlob = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selfTicket"];
    selfTicket = v7->_selfTicket;
    v7->_selfTicket = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"declineReason"];
    declineReason = v7->_declineReason;
    v7->_declineReason = v23;

    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = [NSSet setWithObjects:v25, v26, v27, objc_opt_class(), 0];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"clientDictionary"];
    clientDictionary = v7->_clientDictionary;
    v7->_clientDictionary = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inviteVersion"];
    inviteVersion = v7->_inviteVersion;
    v7->_inviteVersion = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    sessionID = v7->_sessionID;
    v7->_sessionID = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pseudonym"];
    peerPseudonym = v7->_peerPseudonym;
    v7->_peerPseudonym = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transportVersionToUse"];
    transportVersionToUse = v7->_transportVersionToUse;
    v7->_transportVersionToUse = v37;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerBulletin encodeWithCoder:", buf, 2u);
  }

  v21.receiver = self;
  v21.super_class = GKRealTimeMultiplayerBulletin;
  [(GKGameplayBulletin *)&v21 encodeWithCoder:v4];
  v7 = [(GKRealTimeMultiplayerBulletin *)self sessionToken];
  [v4 encodeObject:v7 forKey:@"sessionToken"];

  v8 = [(GKRealTimeMultiplayerBulletin *)self selfNatType];
  [v4 encodeObject:v8 forKey:@"selfNatType"];

  v9 = [NSNumber numberWithBool:[(GKRealTimeMultiplayerBulletin *)self serverHosted]];
  [v4 encodeObject:v9 forKey:@"serverHosted"];

  v10 = [(GKRealTimeMultiplayerBulletin *)self peerPushToken];
  [v4 encodeObject:v10 forKey:@"peerPushToken"];

  v11 = [(GKRealTimeMultiplayerBulletin *)self peerNatType];
  [v4 encodeObject:v11 forKey:@"peerNatType"];

  v12 = [(GKRealTimeMultiplayerBulletin *)self peerNatIP];
  [v4 encodeObject:v12 forKey:@"peerNatIP"];

  v13 = [(GKRealTimeMultiplayerBulletin *)self peerBlob];
  [v4 encodeObject:v13 forKey:@"peerBlob"];

  v14 = [(GKRealTimeMultiplayerBulletin *)self selfTicket];
  [v4 encodeObject:v14 forKey:@"selfTicket"];

  v15 = [(GKRealTimeMultiplayerBulletin *)self declineReason];
  [v4 encodeObject:v15 forKey:@"declineReason"];

  v16 = [(GKRealTimeMultiplayerBulletin *)self clientDictionary];
  [v4 encodeObject:v16 forKey:@"clientDictionary"];

  v17 = [(GKRealTimeMultiplayerBulletin *)self inviteVersion];
  [v4 encodeObject:v17 forKey:@"inviteVersion"];

  v18 = [(GKRealTimeMultiplayerBulletin *)self sessionID];
  [v4 encodeObject:v18 forKey:@"sessionID"];

  v19 = [(GKRealTimeMultiplayerBulletin *)self peerPseudonym];
  [v4 encodeObject:v19 forKey:@"pseudonym"];

  v20 = [(GKRealTimeMultiplayerBulletin *)self transportVersionToUse];
  [v4 encodeObject:v20 forKey:@"transportVersionToUse"];
}

- (id)clientNotificationWithiCloudID:(id)a3
{
  v4 = a3;
  v5 = [(GKRealTimeMultiplayerBulletin *)self clientNotification];
  v6 = [NSMutableDictionary dictionaryWithDictionary:v5];

  if (v4)
  {
    [v6 setObject:v4 forKeyedSubscript:@"iCloudID"];
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
  v6 = [(GKRealTimeMultiplayerBulletin *)self sessionToken];

  if (v6)
  {
    v7 = [(GKRealTimeMultiplayerBulletin *)self sessionToken];
    [v5 setObject:v7 forKeyedSubscript:@"session-token"];
  }

  v8 = [(GKGameplayBulletin *)self receiverPlayerID];

  if (v8)
  {
    v9 = [(GKGameplayBulletin *)self receiverPlayerID];
    [v5 setObject:v9 forKeyedSubscript:@"self-id"];
  }

  v10 = [(GKGameplayBulletin *)self originatorPlayerID];

  if (v10)
  {
    v11 = [(GKGameplayBulletin *)self originatorPlayerID];
    [v5 setObject:v11 forKeyedSubscript:@"peer-id"];
  }

  v12 = [(GKRealTimeMultiplayerBulletin *)self peerPushToken];

  if (v12)
  {
    v13 = [(GKRealTimeMultiplayerBulletin *)self peerPushToken];
    [v5 setObject:v13 forKeyedSubscript:@"peer-push-token"];
  }

  v14 = [(GKRealTimeMultiplayerBulletin *)self peerNatType];

  if (v14)
  {
    v15 = [(GKRealTimeMultiplayerBulletin *)self peerNatType];
    [v5 setObject:v15 forKeyedSubscript:@"peer-nat-type"];
  }

  v16 = [(GKRealTimeMultiplayerBulletin *)self peerNatIP];

  if (v16)
  {
    v17 = [(GKRealTimeMultiplayerBulletin *)self peerNatIP];
    [v5 setObject:v17 forKeyedSubscript:@"peer-nat-ip"];
  }

  v18 = [(GKRealTimeMultiplayerBulletin *)self peerBlob];

  if (v18)
  {
    v19 = [(GKRealTimeMultiplayerBulletin *)self peerBlob];
    [v5 setObject:v19 forKeyedSubscript:@"peer-blob"];
  }

  v20 = [(GKRealTimeMultiplayerBulletin *)self inviteVersion];

  if (v20)
  {
    v21 = [(GKRealTimeMultiplayerBulletin *)self inviteVersion];
    [v5 setObject:v21 forKeyedSubscript:@"invite-version"];
  }

  v22 = [(GKRealTimeMultiplayerBulletin *)self transportVersionToUse];

  if (v22)
  {
    v23 = [(GKRealTimeMultiplayerBulletin *)self transportVersionToUse];
    [v5 setObject:v23 forKeyedSubscript:GKSuggestedTransportVersionPushShortKey];
  }

  v24 = [(GKRealTimeMultiplayerBulletin *)self selfTicket];

  if (v24)
  {
    v25 = [(GKRealTimeMultiplayerBulletin *)self selfTicket];
    [v5 setObject:v25 forKeyedSubscript:GKInviteCDXTicketIDKey];
  }

  v26 = [(GKRealTimeMultiplayerBulletin *)self sessionID];

  if (v26)
  {
    v27 = [(GKRealTimeMultiplayerBulletin *)self sessionID];
    [v5 setObject:v27 forKeyedSubscript:GKInviteSessionIDKey];
  }

  v28 = [(GKRealTimeMultiplayerBulletin *)self peerPseudonym];

  if (v28)
  {
    v29 = [(GKRealTimeMultiplayerBulletin *)self peerPseudonym];
    [v5 setObject:v29 forKeyedSubscript:GKInvitePeerPseudonym];
  }

  v30 = [(GKBulletin *)self gameDescriptor];
  v31 = [v30 bundleIdentifier];
  [v5 setObject:v31 forKeyedSubscript:GKBundleIDKey];

  v32 = [(GKRealTimeMultiplayerBulletin *)self declineReason];

  if (v32)
  {
    v33 = [(GKRealTimeMultiplayerBulletin *)self declineReason];
    [v5 setObject:v33 forKeyedSubscript:GKDeclineReasonKey];
  }

  return v5;
}

- (void)updateDeclineInviteTrackingForReason:(int64_t)a3
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

  v7 = [NSNumber numberWithInteger:a3];
  [(GKRealTimeMultiplayerBulletin *)self setDeclineReason:v7];

  if (a3 > 5)
  {
    v8 = &GKReporterInviteDeclineUser;
  }

  else
  {
    v8 = *(&off_10036A250 + a3);
  }

  v9 = *v8;
  v10 = +[GKReporter reporter];
  [v10 reportEvent:GKReporterDomainInvite type:v9];
}

- (void)declineInviteWithReason:(int)a3
{
  v3 = *&a3;
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
    v12 = [(GKBulletin *)self gameDescriptor];
    v13 = [v12 bundleIdentifier];
    v14 = [(GKService *)GKMultiplayerMatchService serviceForBundleID:v13 localPlayer:0];
    [v14 declineGameInvite:v11 reason:v9 handler:0];
  }
}

- (id)customInviteSoundPathForBundleID:(id)a3
{
  v3 = a3;
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
  v8 = [v7 _gkPathForInviteSound];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
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
  v4 = [(GKBulletin *)self gameDescriptor];
  v5 = [v4 bundleIdentifier];
  v6 = [(GKGameplayBulletin *)self originatorPlayerID];
  v7 = [(GKGameplayBulletin *)self receiverPlayerID];
  v8 = [(GKRealTimeMultiplayerBulletin *)self sessionToken];
  v9 = [(GKRealTimeMultiplayerBulletin *)self sessionID];
  v10 = [v3 stringByAppendingFormat:@"\ngameDescriptor.bundleIdentifier:%@\noriginatorPlayerID:%@\nreceiverPlayerID:%@\nsessionToken:%@\nsessionID:%@\n", v5, v6, v7, v8, v9];

  return v10;
}

@end