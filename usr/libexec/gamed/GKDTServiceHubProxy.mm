@interface GKDTServiceHubProxy
- (id)connectionProxyForUseCase:(id)case;
- (id)transportWithCredential:(id)credential;
- (void)acceptInviteWithNotification:(id)notification;
- (void)acceptMultiplayerGameInvite;
- (void)achievementSelected:(id)selected;
- (void)authenticatedPlayersDidChange:(id)change authenticatingBundleID:(id)d reply:(id)reply;
- (void)beginNetworkActivity;
- (void)cancelGameInvite:(id)invite;
- (void)cancelInviteWithNotification:(id)notification;
- (void)challengeCompleted:(id)completed;
- (void)challengeReceived:(id)received;
- (void)completedChallengeSelected:(id)selected;
- (void)declineInviteWithNotification:(id)notification;
- (void)didConnectToParticipantWithID:(id)d;
- (void)didDisconnectFromParticipantWithID:(id)d;
- (void)didReceiveData:(id)data reliably:(BOOL)reliably forRecipients:(id)recipients fromSender:(id)sender;
- (void)endNetworkActivity;
- (void)fetchTurnBasedData;
- (void)friendRequestSelected:(id)selected;
- (void)metricsValuesChanged;
- (void)nearbyDataReceivedForPlayerID:(id)d deviceID:(id)iD data:(id)data;
- (void)nearbyPlayerFoundForPlayerID:(id)d deviceID:(id)iD discoveryInfo:(id)info;
- (void)nearbyPlayerLostForPlayerID:(id)d deviceID:(id)iD;
- (void)presentBannerWithNotification:(id)notification;
- (void)receivedChallengeSelected:(id)selected;
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info;
- (void)relayPushNotification:(id)notification;
- (void)requestSandboxExtension:(id)extension;
- (void)resetNetworkActivity;
- (void)respondedToNearbyInvite:(id)invite;
- (void)scoreSelected:(id)selected;
- (void)setBadgeCount:(unint64_t)count forType:(unint64_t)type;
- (void)setCurrentGame:(id)game serverEnvironment:(int64_t)environment reply:(id)reply;
- (void)setDebugMode:(BOOL)mode bundleID:(id)d reply:(id)reply;
- (void)setPreferencesValues:(id)values;
- (void)updateInviteWithNotification:(id)notification;
@end

@implementation GKDTServiceHubProxy

- (id)connectionProxyForUseCase:(id)case
{
  caseCopy = case;
  connection = [(GKClientProxy *)self connection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10011C09C;
  v9[3] = &unk_100361108;
  v10 = caseCopy;
  v6 = caseCopy;
  v7 = [connection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (id)transportWithCredential:(id)credential
{
  credentialCopy = credential;
  v4 = +[GKClientProxy gameCenterClient];
  v5 = [v4 transportWithCredential:credentialCopy];

  return v5;
}

- (void)beginNetworkActivity
{
  v2 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
    v2 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10028E878(v2, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)endNetworkActivity
{
  v2 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
    v2 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10028E8F0(v2, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)resetNetworkActivity
{
  v2 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
    v2 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10028E968(v2, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)setPreferencesValues:(id)values
{
  valuesCopy = values;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028E9E0(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)setCurrentGame:(id)game serverEnvironment:(int64_t)environment reply:(id)reply
{
  gameCopy = game;
  replyCopy = reply;
  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10028EA58(v8, v10, v11, v12, v13, v14, v15, v16);
  }
}

- (void)authenticatedPlayersDidChange:(id)change authenticatingBundleID:(id)d reply:(id)reply
{
  changeCopy = change;
  dCopy = d;
  replyCopy = reply;
  v10 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
    v10 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10028EAD0(v10, v12, v13, v14, v15, v16, v17, v18);
  }
}

- (void)requestSandboxExtension:(id)extension
{
  extensionCopy = extension;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028EB48(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)friendRequestSelected:(id)selected
{
  selectedCopy = selected;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028EBC0(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)respondedToNearbyInvite:(id)invite
{
  inviteCopy = invite;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028EC38(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)metricsValuesChanged
{
  v2 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
    v2 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10028ECB0(v2, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)presentBannerWithNotification:(id)notification
{
  notificationCopy = notification;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028ED28(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)acceptMultiplayerGameInvite
{
  v2 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
    v2 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10028EDA0(v2, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)acceptInviteWithNotification:(id)notification
{
  notificationCopy = notification;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028EE18(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)declineInviteWithNotification:(id)notification
{
  notificationCopy = notification;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028EE90(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)updateInviteWithNotification:(id)notification
{
  notificationCopy = notification;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028EF08(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)cancelInviteWithNotification:(id)notification
{
  notificationCopy = notification;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028EF80(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)cancelGameInvite:(id)invite
{
  inviteCopy = invite;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028EFF8(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)relayPushNotification:(id)notification
{
  notificationCopy = notification;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028F070(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)nearbyPlayerFoundForPlayerID:(id)d deviceID:(id)iD discoveryInfo:(id)info
{
  dCopy = d;
  iDCopy = iD;
  infoCopy = info;
  v10 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
    v10 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10028F0E8(v10, v12, v13, v14, v15, v16, v17, v18);
  }
}

- (void)nearbyPlayerLostForPlayerID:(id)d deviceID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v7 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
    v7 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10028F160(v7, v9, v10, v11, v12, v13, v14, v15);
  }
}

- (void)nearbyDataReceivedForPlayerID:(id)d deviceID:(id)iD data:(id)data
{
  dCopy = d;
  iDCopy = iD;
  dataCopy = data;
  v10 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
    v10 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10028F1D8(v10, v12, v13, v14, v15, v16, v17, v18);
  }
}

- (void)didConnectToParticipantWithID:(id)d
{
  dCopy = d;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028F250(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)didDisconnectFromParticipantWithID:(id)d
{
  dCopy = d;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028F2C8(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)didReceiveData:(id)data reliably:(BOOL)reliably forRecipients:(id)recipients fromSender:(id)sender
{
  dataCopy = data;
  recipientsCopy = recipients;
  senderCopy = sender;
  v11 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
    v11 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10028F340(v11, v13, v14, v15, v16, v17, v18, v19);
  }
}

- (void)fetchTurnBasedData
{
  v2 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
    v2 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10028F3B8(v2, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)receivedChallengeSelected:(id)selected
{
  selectedCopy = selected;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028F430(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)completedChallengeSelected:(id)selected
{
  selectedCopy = selected;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028F4A8(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)challengeReceived:(id)received
{
  receivedCopy = received;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028F520(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)challengeCompleted:(id)completed
{
  completedCopy = completed;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028F598(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)scoreSelected:(id)selected
{
  selectedCopy = selected;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028F610(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)achievementSelected:(id)selected
{
  selectedCopy = selected;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028F688(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)setBadgeCount:(unint64_t)count forType:(unint64_t)type
{
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10028F700(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info
{
  v4 = *&type;
  infoCopy = info;
  v7 = [(GKDTServiceHubProxy *)self connectionProxyForUseCase:@"refreshContentsForDataType:userInfo"];
  [v7 refreshContentsForDataType:v4 userInfo:infoCopy];
}

- (void)setDebugMode:(BOOL)mode bundleID:(id)d reply:(id)reply
{
  modeCopy = mode;
  replyCopy = reply;
  dCopy = d;
  [GKClientProxy setDebugMode:modeCopy bundleID:dCopy];
  v10.receiver = self;
  v10.super_class = GKDTServiceHubProxy;
  [(GKClientProxy *)&v10 setDebugMode:modeCopy bundleID:dCopy reply:replyCopy];
}

@end