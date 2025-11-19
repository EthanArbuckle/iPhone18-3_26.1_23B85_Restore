@interface GKDTServiceHubProxy
- (id)connectionProxyForUseCase:(id)a3;
- (id)transportWithCredential:(id)a3;
- (void)acceptInviteWithNotification:(id)a3;
- (void)acceptMultiplayerGameInvite;
- (void)achievementSelected:(id)a3;
- (void)authenticatedPlayersDidChange:(id)a3 authenticatingBundleID:(id)a4 reply:(id)a5;
- (void)beginNetworkActivity;
- (void)cancelGameInvite:(id)a3;
- (void)cancelInviteWithNotification:(id)a3;
- (void)challengeCompleted:(id)a3;
- (void)challengeReceived:(id)a3;
- (void)completedChallengeSelected:(id)a3;
- (void)declineInviteWithNotification:(id)a3;
- (void)didConnectToParticipantWithID:(id)a3;
- (void)didDisconnectFromParticipantWithID:(id)a3;
- (void)didReceiveData:(id)a3 reliably:(BOOL)a4 forRecipients:(id)a5 fromSender:(id)a6;
- (void)endNetworkActivity;
- (void)fetchTurnBasedData;
- (void)friendRequestSelected:(id)a3;
- (void)metricsValuesChanged;
- (void)nearbyDataReceivedForPlayerID:(id)a3 deviceID:(id)a4 data:(id)a5;
- (void)nearbyPlayerFoundForPlayerID:(id)a3 deviceID:(id)a4 discoveryInfo:(id)a5;
- (void)nearbyPlayerLostForPlayerID:(id)a3 deviceID:(id)a4;
- (void)presentBannerWithNotification:(id)a3;
- (void)receivedChallengeSelected:(id)a3;
- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4;
- (void)relayPushNotification:(id)a3;
- (void)requestSandboxExtension:(id)a3;
- (void)resetNetworkActivity;
- (void)respondedToNearbyInvite:(id)a3;
- (void)scoreSelected:(id)a3;
- (void)setBadgeCount:(unint64_t)a3 forType:(unint64_t)a4;
- (void)setCurrentGame:(id)a3 serverEnvironment:(int64_t)a4 reply:(id)a5;
- (void)setDebugMode:(BOOL)a3 bundleID:(id)a4 reply:(id)a5;
- (void)setPreferencesValues:(id)a3;
- (void)updateInviteWithNotification:(id)a3;
@end

@implementation GKDTServiceHubProxy

- (id)connectionProxyForUseCase:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self connection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10011C09C;
  v9[3] = &unk_100361108;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (id)transportWithCredential:(id)a3
{
  v3 = a3;
  v4 = +[GKClientProxy gameCenterClient];
  v5 = [v4 transportWithCredential:v3];

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

- (void)setPreferencesValues:(id)a3
{
  v3 = a3;
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

- (void)setCurrentGame:(id)a3 serverEnvironment:(int64_t)a4 reply:(id)a5
{
  v6 = a3;
  v7 = a5;
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

- (void)authenticatedPlayersDidChange:(id)a3 authenticatingBundleID:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
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

- (void)requestSandboxExtension:(id)a3
{
  v3 = a3;
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

- (void)friendRequestSelected:(id)a3
{
  v3 = a3;
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

- (void)respondedToNearbyInvite:(id)a3
{
  v3 = a3;
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

- (void)presentBannerWithNotification:(id)a3
{
  v3 = a3;
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

- (void)acceptInviteWithNotification:(id)a3
{
  v3 = a3;
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

- (void)declineInviteWithNotification:(id)a3
{
  v3 = a3;
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

- (void)updateInviteWithNotification:(id)a3
{
  v3 = a3;
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

- (void)cancelInviteWithNotification:(id)a3
{
  v3 = a3;
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

- (void)cancelGameInvite:(id)a3
{
  v3 = a3;
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

- (void)relayPushNotification:(id)a3
{
  v3 = a3;
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

- (void)nearbyPlayerFoundForPlayerID:(id)a3 deviceID:(id)a4 discoveryInfo:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
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

- (void)nearbyPlayerLostForPlayerID:(id)a3 deviceID:(id)a4
{
  v5 = a3;
  v6 = a4;
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

- (void)nearbyDataReceivedForPlayerID:(id)a3 deviceID:(id)a4 data:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
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

- (void)didConnectToParticipantWithID:(id)a3
{
  v3 = a3;
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

- (void)didDisconnectFromParticipantWithID:(id)a3
{
  v3 = a3;
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

- (void)didReceiveData:(id)a3 reliably:(BOOL)a4 forRecipients:(id)a5 fromSender:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a6;
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

- (void)receivedChallengeSelected:(id)a3
{
  v3 = a3;
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

- (void)completedChallengeSelected:(id)a3
{
  v3 = a3;
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

- (void)challengeReceived:(id)a3
{
  v3 = a3;
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

- (void)challengeCompleted:(id)a3
{
  v3 = a3;
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

- (void)scoreSelected:(id)a3
{
  v3 = a3;
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

- (void)achievementSelected:(id)a3
{
  v3 = a3;
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

- (void)setBadgeCount:(unint64_t)a3 forType:(unint64_t)a4
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

- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [(GKDTServiceHubProxy *)self connectionProxyForUseCase:@"refreshContentsForDataType:userInfo"];
  [v7 refreshContentsForDataType:v4 userInfo:v6];
}

- (void)setDebugMode:(BOOL)a3 bundleID:(id)a4 reply:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = a4;
  [GKClientProxy setDebugMode:v6 bundleID:v9];
  v10.receiver = self;
  v10.super_class = GKDTServiceHubProxy;
  [(GKClientProxy *)&v10 setDebugMode:v6 bundleID:v9 reply:v8];
}

@end