@interface GKRealTimeMultiplayerAcceptBulletin
- (GKRealTimeMultiplayerAcceptBulletin)initWithCoder:(id)coder;
- (GKRealTimeMultiplayerAcceptBulletin)initWithPushNotification:(id)notification;
- (void)assembleBulletin;
- (void)encodeWithCoder:(id)coder;
- (void)handleAction:(id)action;
@end

@implementation GKRealTimeMultiplayerAcceptBulletin

- (GKRealTimeMultiplayerAcceptBulletin)initWithPushNotification:(id)notification
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerAcceptBulletin initWithPushNotification:", buf, 2u);
  }

  v31.receiver = self;
  v31.super_class = GKRealTimeMultiplayerAcceptBulletin;
  v7 = [(GKRealTimeMultiplayerBulletin *)&v31 initWithPushNotification:notificationCopy];
  if (v7)
  {
    v8 = [notificationCopy objectForKeyedSubscript:@"e"];
    v9 = [(GKBulletin *)v7 dataFrom64String:v8];
    [(GKRealTimeMultiplayerBulletin *)v7 setSelfTicket:v9];

    v10 = [notificationCopy objectForKeyedSubscript:@"g"];
    blobType = v7->_blobType;
    v7->_blobType = v10;

    v12 = [notificationCopy objectForKeyedSubscript:@"t"];
    relayType = v7->_relayType;
    v7->_relayType = v12;

    v14 = [notificationCopy objectForKeyedSubscript:@"k"];
    relayConnectionID = v7->_relayConnectionID;
    v7->_relayConnectionID = v14;

    v16 = [notificationCopy objectForKeyedSubscript:@"q"];
    v17 = [(GKBulletin *)v7 dataFrom64String:v16];
    relayTranscationID = v7->_relayTranscationID;
    v7->_relayTranscationID = v17;

    v19 = [notificationCopy objectForKeyedSubscript:@"h"];
    selfRelayIP = v7->_selfRelayIP;
    v7->_selfRelayIP = v19;

    v21 = [notificationCopy objectForKeyedSubscript:@"o"];
    selfRelayPort = v7->_selfRelayPort;
    v7->_selfRelayPort = v21;

    v23 = [notificationCopy objectForKeyedSubscript:@"H"];
    v24 = [(GKBulletin *)v7 dataFrom64String:v23];
    peerRelayIP = v7->_peerRelayIP;
    v7->_peerRelayIP = v24;

    v26 = [notificationCopy objectForKeyedSubscript:@"O"];
    peerRelayPort = v7->_peerRelayPort;
    v7->_peerRelayPort = v26;

    v28 = [notificationCopy objectForKeyedSubscript:@"r"];
    relayToken = v7->_relayToken;
    v7->_relayToken = v28;
  }

  return v7;
}

- (GKRealTimeMultiplayerAcceptBulletin)initWithCoder:(id)coder
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerAcceptBulletin initWithCoder:", buf, 2u);
  }

  v27.receiver = self;
  v27.super_class = GKRealTimeMultiplayerAcceptBulletin;
  v7 = [(GKRealTimeMultiplayerBulletin *)&v27 initWithCoder:coderCopy];
  if (v7)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"blobType"];
    blobType = v7->_blobType;
    v7->_blobType = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relayType"];
    relayType = v7->_relayType;
    v7->_relayType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relayConnectionID"];
    relayConnectionID = v7->_relayConnectionID;
    v7->_relayConnectionID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relayTranscationID"];
    relayTranscationID = v7->_relayTranscationID;
    v7->_relayTranscationID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selfRelayIP"];
    selfRelayIP = v7->_selfRelayIP;
    v7->_selfRelayIP = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selfRelayPort"];
    selfRelayPort = v7->_selfRelayPort;
    v7->_selfRelayPort = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerRelayIP"];
    peerRelayIP = v7->_peerRelayIP;
    v7->_peerRelayIP = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerRelayPort"];
    peerRelayPort = v7->_peerRelayPort;
    v7->_peerRelayPort = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relayToken"];
    relayToken = v7->_relayToken;
    v7->_relayToken = v24;
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKRealTimeMultiplayerAcceptBulletin encodeWithCoder:", buf, 2u);
  }

  v16.receiver = self;
  v16.super_class = GKRealTimeMultiplayerAcceptBulletin;
  [(GKRealTimeMultiplayerBulletin *)&v16 encodeWithCoder:coderCopy];
  blobType = [(GKRealTimeMultiplayerAcceptBulletin *)self blobType];
  [coderCopy encodeObject:blobType forKey:@"blobType"];

  relayType = [(GKRealTimeMultiplayerAcceptBulletin *)self relayType];
  [coderCopy encodeObject:relayType forKey:@"relayType"];

  relayConnectionID = [(GKRealTimeMultiplayerAcceptBulletin *)self relayConnectionID];
  [coderCopy encodeObject:relayConnectionID forKey:@"relayConnectionID"];

  relayTranscationID = [(GKRealTimeMultiplayerAcceptBulletin *)self relayTranscationID];
  [coderCopy encodeObject:relayTranscationID forKey:@"relayTranscationID"];

  selfRelayIP = [(GKRealTimeMultiplayerAcceptBulletin *)self selfRelayIP];
  [coderCopy encodeObject:selfRelayIP forKey:@"selfRelayIP"];

  selfRelayPort = [(GKRealTimeMultiplayerAcceptBulletin *)self selfRelayPort];
  [coderCopy encodeObject:selfRelayPort forKey:@"selfRelayPort"];

  peerRelayIP = [(GKRealTimeMultiplayerAcceptBulletin *)self peerRelayIP];
  [coderCopy encodeObject:peerRelayIP forKey:@"peerRelayIP"];

  peerRelayPort = [(GKRealTimeMultiplayerAcceptBulletin *)self peerRelayPort];
  [coderCopy encodeObject:peerRelayPort forKey:@"peerRelayPort"];

  relayToken = [(GKRealTimeMultiplayerAcceptBulletin *)self relayToken];
  [coderCopy encodeObject:relayToken forKey:@"relayToken"];
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
  gameDescriptor = [(GKBulletin *)self gameDescriptor];
  adamID = [gameDescriptor adamID];
  [(GKBulletinAction *)v5 setAdamID:adamID];

  gameDescriptor2 = [(GKBulletin *)self gameDescriptor];
  bundleIdentifier = [gameDescriptor2 bundleIdentifier];
  [(GKBulletinAction *)v5 setBundleID:bundleIdentifier];

  [(GKBulletinAction *)v5 setTitle:&stru_100374F10];
  [(GKBulletin *)self setDefaultAction:v5];
  [(GKBulletin *)self setBulletinType:402];
  originatorPlayer = [(GKGameplayBulletin *)self originatorPlayer];
  v11 = [originatorPlayer displayNameWithOptions:0];

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
  gameName = [(GKBulletin *)self gameName];
  v16 = [NSString localizedStringWithFormat:v14, gameName];
  [(GKBulletin *)self setTitle:v16];

  [(GKBulletin *)self setMessage:v13];
}

- (void)handleAction:(id)action
{
  actionCopy = action;
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
  [(GKBulletin *)&v13 handleAction:actionCopy];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "bulletin handle multiplayer action: %@", buf, 0xCu);
  }

  gameDescriptor = [(GKBulletin *)self gameDescriptor];
  bundleIdentifier = [gameDescriptor bundleIdentifier];
  v11 = [GKClientProxy clientForBundleID:bundleIdentifier];

  clientNotification = [(GKRealTimeMultiplayerBulletin *)self clientNotification];
  [v11 acceptInviteWithNotification:clientNotification];
}

@end