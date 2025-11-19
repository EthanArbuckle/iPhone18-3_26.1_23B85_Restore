@interface GKRealTimeMultiplayerAcceptBulletin
- (GKRealTimeMultiplayerAcceptBulletin)initWithCoder:(id)a3;
- (GKRealTimeMultiplayerAcceptBulletin)initWithPushNotification:(id)a3;
- (void)assembleBulletin;
- (void)encodeWithCoder:(id)a3;
- (void)handleAction:(id)a3;
@end

@implementation GKRealTimeMultiplayerAcceptBulletin

- (GKRealTimeMultiplayerAcceptBulletin)initWithPushNotification:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerAcceptBulletin initWithPushNotification:", buf, 2u);
  }

  v31.receiver = self;
  v31.super_class = GKRealTimeMultiplayerAcceptBulletin;
  v7 = [(GKRealTimeMultiplayerBulletin *)&v31 initWithPushNotification:v4];
  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:@"e"];
    v9 = [(GKBulletin *)v7 dataFrom64String:v8];
    [(GKRealTimeMultiplayerBulletin *)v7 setSelfTicket:v9];

    v10 = [v4 objectForKeyedSubscript:@"g"];
    blobType = v7->_blobType;
    v7->_blobType = v10;

    v12 = [v4 objectForKeyedSubscript:@"t"];
    relayType = v7->_relayType;
    v7->_relayType = v12;

    v14 = [v4 objectForKeyedSubscript:@"k"];
    relayConnectionID = v7->_relayConnectionID;
    v7->_relayConnectionID = v14;

    v16 = [v4 objectForKeyedSubscript:@"q"];
    v17 = [(GKBulletin *)v7 dataFrom64String:v16];
    relayTranscationID = v7->_relayTranscationID;
    v7->_relayTranscationID = v17;

    v19 = [v4 objectForKeyedSubscript:@"h"];
    selfRelayIP = v7->_selfRelayIP;
    v7->_selfRelayIP = v19;

    v21 = [v4 objectForKeyedSubscript:@"o"];
    selfRelayPort = v7->_selfRelayPort;
    v7->_selfRelayPort = v21;

    v23 = [v4 objectForKeyedSubscript:@"H"];
    v24 = [(GKBulletin *)v7 dataFrom64String:v23];
    peerRelayIP = v7->_peerRelayIP;
    v7->_peerRelayIP = v24;

    v26 = [v4 objectForKeyedSubscript:@"O"];
    peerRelayPort = v7->_peerRelayPort;
    v7->_peerRelayPort = v26;

    v28 = [v4 objectForKeyedSubscript:@"r"];
    relayToken = v7->_relayToken;
    v7->_relayToken = v28;
  }

  return v7;
}

- (GKRealTimeMultiplayerAcceptBulletin)initWithCoder:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerAcceptBulletin initWithCoder:", buf, 2u);
  }

  v27.receiver = self;
  v27.super_class = GKRealTimeMultiplayerAcceptBulletin;
  v7 = [(GKRealTimeMultiplayerBulletin *)&v27 initWithCoder:v4];
  if (v7)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"blobType"];
    blobType = v7->_blobType;
    v7->_blobType = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relayType"];
    relayType = v7->_relayType;
    v7->_relayType = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relayConnectionID"];
    relayConnectionID = v7->_relayConnectionID;
    v7->_relayConnectionID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relayTranscationID"];
    relayTranscationID = v7->_relayTranscationID;
    v7->_relayTranscationID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selfRelayIP"];
    selfRelayIP = v7->_selfRelayIP;
    v7->_selfRelayIP = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selfRelayPort"];
    selfRelayPort = v7->_selfRelayPort;
    v7->_selfRelayPort = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerRelayIP"];
    peerRelayIP = v7->_peerRelayIP;
    v7->_peerRelayIP = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerRelayPort"];
    peerRelayPort = v7->_peerRelayPort;
    v7->_peerRelayPort = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relayToken"];
    relayToken = v7->_relayToken;
    v7->_relayToken = v24;
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerAcceptBulletin encodeWithCoder:", buf, 2u);
  }

  v16.receiver = self;
  v16.super_class = GKRealTimeMultiplayerAcceptBulletin;
  [(GKRealTimeMultiplayerBulletin *)&v16 encodeWithCoder:v4];
  v7 = [(GKRealTimeMultiplayerAcceptBulletin *)self blobType];
  [v4 encodeObject:v7 forKey:@"blobType"];

  v8 = [(GKRealTimeMultiplayerAcceptBulletin *)self relayType];
  [v4 encodeObject:v8 forKey:@"relayType"];

  v9 = [(GKRealTimeMultiplayerAcceptBulletin *)self relayConnectionID];
  [v4 encodeObject:v9 forKey:@"relayConnectionID"];

  v10 = [(GKRealTimeMultiplayerAcceptBulletin *)self relayTranscationID];
  [v4 encodeObject:v10 forKey:@"relayTranscationID"];

  v11 = [(GKRealTimeMultiplayerAcceptBulletin *)self selfRelayIP];
  [v4 encodeObject:v11 forKey:@"selfRelayIP"];

  v12 = [(GKRealTimeMultiplayerAcceptBulletin *)self selfRelayPort];
  [v4 encodeObject:v12 forKey:@"selfRelayPort"];

  v13 = [(GKRealTimeMultiplayerAcceptBulletin *)self peerRelayIP];
  [v4 encodeObject:v13 forKey:@"peerRelayIP"];

  v14 = [(GKRealTimeMultiplayerAcceptBulletin *)self peerRelayPort];
  [v4 encodeObject:v14 forKey:@"peerRelayPort"];

  v15 = [(GKRealTimeMultiplayerAcceptBulletin *)self relayToken];
  [v4 encodeObject:v15 forKey:@"relayToken"];
}

- (void)assembleBulletin
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerAcceptBulletin assembleBulletin:", buf, 2u);
  }

  v17.receiver = self;
  v17.super_class = GKRealTimeMultiplayerAcceptBulletin;
  [(GKRealTimeMultiplayerActionBulletin *)&v17 assembleBulletin];
  v5 = objc_alloc_init(GKBulletinAction);
  [(GKBulletinAction *)v5 setType:1];
  v6 = [(GKBulletin *)self gameDescriptor];
  v7 = [v6 adamID];
  [(GKBulletinAction *)v5 setAdamID:v7];

  v8 = [(GKBulletin *)self gameDescriptor];
  v9 = [v8 bundleIdentifier];
  [(GKBulletinAction *)v5 setBundleID:v9];

  [(GKBulletinAction *)v5 setTitle:&stru_100374F10];
  [(GKBulletin *)self setDefaultAction:v5];
  [(GKBulletin *)self setBulletinType:402];
  v10 = [(GKGameplayBulletin *)self originatorPlayer];
  v11 = [v10 displayNameWithOptions:0];

  if (v11)
  {
    v12 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings KETTLE_INVITEE_ACCEPTED_ALERT_MESSAGE_ALIAS_1_FORMAT];
    v13 = [NSString localizedStringWithFormat:v12, v11];
  }

  else
  {
    v13 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings KETTLE_INVITEE_ACCEPTED_ALERT_MESSAGE];
  }

  v14 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings KETTLE_GAME_INVITE_NOTIFICATION_TITLE];
  v15 = [(GKBulletin *)self gameName];
  v16 = [NSString localizedStringWithFormat:v14, v15];
  [(GKBulletin *)self setTitle:v16];

  [(GKBulletin *)self setMessage:v13];
}

- (void)handleAction:(id)a3
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerAcceptBulletin handleAction:", buf, 2u);
  }

  v13.receiver = self;
  v13.super_class = GKRealTimeMultiplayerAcceptBulletin;
  [(GKBulletin *)&v13 handleAction:v4];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "bulletin handle multiplayer action: %@", buf, 0xCu);
  }

  v9 = [(GKBulletin *)self gameDescriptor];
  v10 = [v9 bundleIdentifier];
  v11 = [GKClientProxy clientForBundleID:v10];

  v12 = [(GKRealTimeMultiplayerBulletin *)self clientNotification];
  [v11 acceptInviteWithNotification:v12];
}

@end