@interface GKProfileServicePrivate
+ (id)cacheKeyForScopedIDs:(id)a3;
+ (id)loadCachedScopedPlayerIDs:(id)a3 gameBundleIDs:(id)a4 error:(id *)a5 moc:(id)a6;
+ (id)makeGKScopedIDsFromInternal:(id)a3;
+ (id)parseContactAssociationIDsFromRelationships:(id)a3 contactAssociationIDMap:(id)a4 contacts:(id)a5;
+ (id)scopedIDsFetchRequestWithPlayerIDs:(id)a3 gameBundleIDs:(id)a4;
+ (void)verifyAndAssociatePlayerID:(id)a3 withGameScopedPlayerID:(id)a4 andTeamScopedPlayerID:(id)a5 forGameBundleID:(id)a6 usingMoc:(id)a7;
- (BOOL)checkExistingProfileIsValidForPlayer:(id)a3 context:(id)a4;
- (id)fetchScopedIDsCacheKeysWithPlayerIDs:(id)a3 gameBundleIDs:(id)a4 moc:(id)a5;
- (id)filterPlayerIDsThatNeedPreloading:(id)a3 gameBundleIDs:(id)a4 moc:(id)a5;
- (void)cachePhotos:(id)a3 avatarType:(id)a4 fileNames:(id)a5 handler:(id)a6;
- (void)clearContactsIntegrationCachesWithCompletionHandler:(id)a3;
- (void)clearScopedIdsCacheWithHandler:(id)a3;
- (void)contactsIntegrationStatusWithCompletionHandler:(id)a3;
- (void)deletePhotoWithHandler:(id)a3;
- (void)fetchAndCacheScopedPlayerIDs:(id)a3 gameBundleIDs:(id)a4 cachedScopedIDs:(id)a5 handler:(id)a6;
- (void)fetchAndCacheScopedPlayerIDs:(id)a3 gameBundleIDs:(id)a4 scopedIDsCacheKeys:(id)a5 cacheOnly:(BOOL)a6 handler:(id)a7;
- (void)fetchAndCacheScopedPlayerIDsForRequest:(id)a3 scopedIDsCacheKeys:(id)a4 cacheOnly:(BOOL)a5 handler:(id)a6;
- (void)filterForContactIDsSupportingFriendingViaPushFromContactIDs:(id)a3 withCompletion:(id)a4;
- (void)getContactAssociationIDsForContacts:(id)a3 shouldRefresh:(BOOL)a4 completionHandler:(id)a5;
- (void)getContactsForContactAssociationIDs:(id)a3 completionHandler:(id)a4;
- (void)getContactsIntegrationConsentWithCompletionHandler:(id)a3;
- (void)getContextualPromptStatesWithCompletion:(id)a3;
- (void)getFriendingViaPushEnabledWithCompletion:(id)a3;
- (void)getGameCenterRelationshipsForContact:(id)a3 shouldRefresh:(BOOL)a4 completionHandler:(id)a5;
- (void)getNicknameSuggestions:(int64_t)a3 minSuggestionLength:(int64_t)a4 maxSuggestionLength:(int64_t)a5 handler:(id)a6;
- (void)getProfilePrivacyWithHandler:(id)a3;
- (void)getProfilesForPlayerIDs:(id)a3 fetchOptions:(unint64_t)a4 handler:(id)a5;
- (void)getProfilesForPlayerIDs:(id)a3 playerIdToContactAssociationIdMap:(id)a4 handler:(id)a5;
- (void)getTermsAndConditionsURLWithHandler:(id)a3;
- (void)invalidateCachedProfileForLocalPlayerWithHandler:(id)a3;
- (void)loadProfileForPlayer:(id)a3 pieces:(unsigned __int8)a4 context:(id)a5 handler:(id)a6;
- (void)loadScopedPlayerIDs:(id)a3 gameBundleIDs:(id)a4 handler:(id)a5;
- (void)preloadInstalledGamesScopedPlayerIDs:(id)a3 completion:(id)a4;
- (void)setArcadeSubscriptionExpiration:(id)a3 handler:(id)a4;
- (void)setContactsIntegrationConsent:(int)a3 withCompletionHandler:(id)a4;
- (void)setFindable:(BOOL)a3 handler:(id)a4;
- (void)setFriendInvitesAllowedFlag:(id)a3 source:(unint64_t)a4 handler:(id)a5;
- (void)setGlobalFriendListAccess:(int)a3 handler:(id)a4;
- (void)setPhotoData:(id)a3 avatarType:(id)a4 handler:(id)a5;
- (void)setPlayerNickname:(id)a3 suggestionsCount:(int64_t)a4 minSuggestionLength:(int64_t)a5 maxSuggestionLength:(int64_t)a6 handler:(id)a7;
- (void)setPrivacyNoticeVersion:(unint64_t)a3 withCompletionHandler:(id)a4;
- (void)setProfilePrivacy:(int)a3 handler:(id)a4;
- (void)setProfileSettings:(id)a3 handler:(id)a4;
- (void)setStatus:(id)a3 handler:(id)a4;
- (void)startContactsIntegrationIDSSyncForHandles:(id)a3 completionHandler:(id)a4;
- (void)startContactsIntegrationSyncWithOptions:(unint64_t)a3 completionHandler:(id)a4;
- (void)updateContactsIntegrationInfoFromLocalPlayerProfile:(id)a3 completionHandler:(id)a4;
@end

@implementation GKProfileServicePrivate

- (void)setStatus:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if ([v8 length] >= 0x8D)
  {
    v9 = [v8 substringToIndex:140];
  }

  v10 = [(GKService *)self clientProxy];
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1072, "[GKProfileServicePrivate setStatus:handler:]"];
  v12 = [(GKService *)self transactionGroupWithName:v11];

  v13 = [(GKService *)self clientProxy];
  v14 = [v13 replyQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100079AEC;
  v22[3] = &unk_100361F90;
  v15 = v12;
  v23 = v15;
  v16 = v9;
  v24 = v16;
  v17 = v10;
  v25 = v17;
  v26 = self;
  [v15 performOnQueue:v14 block:v22];

  if (v7)
  {
    v18 = [v17 replyQueue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100079DC8;
    v19[3] = &unk_100360EB0;
    v21 = v7;
    v20 = v15;
    [v20 notifyOnQueue:v18 block:v19];
  }
}

- (void)cachePhotos:(id)a3 avatarType:(id)a4 fileNames:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1107, "[GKProfileServicePrivate cachePhotos:avatarType:fileNames:handler:]"];
  v15 = [(GKService *)self transactionGroupWithName:v14];

  v16 = [(GKService *)self clientProxy];
  v17 = [v16 replyQueue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10007A050;
  v26[3] = &unk_100361BF8;
  v18 = v15;
  v27 = v18;
  v19 = v11;
  v28 = v19;
  v29 = self;
  v20 = v10;
  v30 = v20;
  v21 = v12;
  v31 = v21;
  [v18 performOnQueue:v17 block:v26];

  if (v13)
  {
    v22 = [(GKService *)self clientProxy];
    v23 = [v22 replyQueue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10007A378;
    v24[3] = &unk_100360FA0;
    v25 = v13;
    [v18 notifyOnQueue:v23 block:v24];
  }
}

- (void)setPhotoData:(id)a3 avatarType:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1141, "[GKProfileServicePrivate setPhotoData:avatarType:handler:]"];
  v12 = [(GKService *)self transactionGroupWithName:v11];

  v13 = [(GKService *)self clientProxy];
  v14 = [v13 replyQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10007A588;
  v22[3] = &unk_100361F90;
  v15 = v12;
  v23 = v15;
  v24 = self;
  v16 = v8;
  v25 = v16;
  v17 = v9;
  v26 = v17;
  [v15 performOnQueue:v14 block:v22];

  if (v10)
  {
    v18 = [(GKService *)self clientProxy];
    v19 = [v18 replyQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10007A990;
    v20[3] = &unk_100360FA0;
    v21 = v10;
    [v15 notifyOnQueue:v19 block:v20];
  }
}

- (void)deletePhotoWithHandler:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKProfileService: deletePhotoWithHandler", buf, 2u);
  }

  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1179, "[GKProfileServicePrivate deletePhotoWithHandler:]"];
  v8 = [(GKService *)self transactionGroupWithName:v7];

  v9 = [(GKService *)self clientProxy];
  v10 = [v9 replyQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007ABB0;
  v16[3] = &unk_100360FF0;
  v11 = v8;
  v17 = v11;
  v18 = self;
  [v11 performOnQueue:v10 block:v16];

  if (v4)
  {
    v12 = [(GKService *)self clientProxy];
    v13 = [v12 replyQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10007AE40;
    v14[3] = &unk_100360FA0;
    v15 = v4;
    [v11 notifyOnQueue:v13 block:v14];
  }
}

- (void)setFindable:(BOOL)a3 handler:(id)a4
{
  v6 = a4;
  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1210, "[GKProfileServicePrivate setFindable:handler:]"];
  v8 = [(GKService *)self transactionGroupWithName:v7];

  v9 = [v8 context];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007AF80;
  v12[3] = &unk_100362750;
  v16 = a3;
  v13 = v8;
  v14 = self;
  v15 = v6;
  v10 = v6;
  v11 = v8;
  [v9 performBlock:v12];
}

- (void)setPlayerNickname:(id)a3 suggestionsCount:(int64_t)a4 minSuggestionLength:(int64_t)a5 maxSuggestionLength:(int64_t)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a7;
  if (v12)
  {
    v14 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1256, "[GKProfileServicePrivate setPlayerNickname:suggestionsCount:minSuggestionLength:maxSuggestionLength:handler:]"];
    v15 = [(GKService *)self transactionGroupWithName:v14];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10007B53C;
    v24[3] = &unk_1003627A0;
    v28 = a4;
    v29 = a5;
    v30 = a6;
    v25 = v12;
    v26 = self;
    v16 = v15;
    v27 = v16;
    [v16 performOnManagedObjectContext:v24];
    v17 = [(GKService *)self clientProxy];
    v18 = [v17 replyQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10007BA98;
    v21[3] = &unk_100360EB0;
    v22 = v16;
    v23 = v13;
    v19 = v16;
    [v19 notifyOnQueue:v18 block:v21];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v20 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100289460();
    }

    v19 = [NSError userErrorForCode:17 underlyingError:0];
    (*(v13 + 2))(v13, &__NSArray0__struct, 0, v19);
  }
}

- (void)getNicknameSuggestions:(int64_t)a3 minSuggestionLength:(int64_t)a4 maxSuggestionLength:(int64_t)a5 handler:(id)a6
{
  v10 = a6;
  v30[0] = @"suggestions-count";
  v11 = [NSNumber numberWithInteger:a3];
  v31[0] = v11;
  v30[1] = @"min-suggestion-length";
  v12 = [NSNumber numberWithInteger:a4];
  v31[1] = v12;
  v30[2] = @"max-suggestion-length";
  v13 = [NSNumber numberWithInteger:a5];
  v31[2] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:3];

  v15 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1322, "[GKProfileServicePrivate getNicknameSuggestions:minSuggestionLength:maxSuggestionLength:handler:]"];
  v16 = [GKDispatchGroup dispatchGroupWithName:v15];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10007BDE4;
  v26[3] = &unk_100360F00;
  v27 = v14;
  v28 = self;
  v17 = v16;
  v29 = v17;
  v18 = v14;
  [v17 perform:v26];
  v19 = [(GKService *)self clientProxy];
  v20 = [v19 replyQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10007BFF4;
  v23[3] = &unk_100360EB0;
  v24 = v17;
  v25 = v10;
  v21 = v17;
  v22 = v10;
  [v21 notifyOnQueue:v20 block:v23];
}

- (void)getTermsAndConditionsURLWithHandler:(id)a3
{
  v4 = a3;
  v21 = @"key";
  v22 = @"TD.termsOfServiceURL";
  v5 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v6 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1346, "[GKProfileServicePrivate getTermsAndConditionsURLWithHandler:]"];
  v7 = [GKDispatchGroup dispatchGroupWithName:v6];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10007C284;
  v17[3] = &unk_100360F00;
  v18 = v5;
  v19 = self;
  v8 = v7;
  v20 = v8;
  v9 = v5;
  [v8 perform:v17];
  v10 = [(GKService *)self clientProxy];
  v11 = [v10 replyQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007C490;
  v14[3] = &unk_100360EB0;
  v15 = v8;
  v16 = v4;
  v12 = v8;
  v13 = v4;
  [v12 notifyOnQueue:v11 block:v14];
}

- (void)setGlobalFriendListAccess:(int)a3 handler:(id)a4
{
  v6 = a4;
  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1368, "[GKProfileServicePrivate setGlobalFriendListAccess:handler:]"];
  v8 = [(GKService *)self transactionGroupWithName:v7];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10007C6A8;
  v17[3] = &unk_100362840;
  v19 = a3;
  v17[4] = self;
  v9 = v8;
  v18 = v9;
  [v9 performOnManagedObjectContext:v17];
  v10 = [(GKService *)self clientProxy];
  v11 = [v10 replyQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007C988;
  v14[3] = &unk_100360EB0;
  v15 = v9;
  v16 = v6;
  v12 = v9;
  v13 = v6;
  [v12 notifyOnQueue:v11 block:v14];
}

- (void)setArcadeSubscriptionExpiration:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1410, "[GKProfileServicePrivate setArcadeSubscriptionExpiration:handler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10007CBA8;
  v19[3] = &unk_100360F00;
  v20 = v6;
  v21 = self;
  v10 = v9;
  v22 = v10;
  v11 = v6;
  [v10 perform:v19];
  v12 = [(GKService *)self clientProxy];
  v13 = [v12 replyQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007CD30;
  v16[3] = &unk_100360EB0;
  v17 = v10;
  v18 = v7;
  v14 = v10;
  v15 = v7;
  [v14 notifyOnQueue:v13 block:v16];
}

- (void)setFriendInvitesAllowedFlag:(id)a3 source:(unint64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [NSNumber numberWithUnsignedInteger:a4];
    *buf = 138412546;
    v20 = v8;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "GKProfileService: setFriendInvitesAllowedFlag: %@, source: %@", buf, 0x16u);
  }

  v14 = +[NSMutableDictionary dictionary];
  v15 = v14;
  if (a4)
  {
    [v14 setObject:v8 forKeyedSubscript:@"allow-friend-invites-from-challenges"];
  }

  if ((a4 & 2) != 0)
  {
    [v15 setObject:v8 forKeyedSubscript:@"allow-friend-invites-from-multiplayer-invites"];
  }

  if ([v15 count])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10007CFCC;
    v17[3] = &unk_100362868;
    v18 = v9;
    [(GKProfileServicePrivate *)self setProfileSettings:v15 handler:v17];
    v16 = v18;
  }

  else
  {
    v16 = [NSError userErrorForCode:17 description:@"At least one source must be selected"];
    (*(v9 + 2))(v9, v16);
  }
}

- (void)setPrivacyNoticeVersion:(unint64_t)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v21 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKProfileService: setPrivacyNoticeVersion:%lu", buf, 0xCu);
  }

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [NSNumber numberWithUnsignedInteger:a3];
    *buf = 138412290;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Syncing the privacy notice version (%@) to the server...", buf, 0xCu);
  }

  v18 = GKAccountPrivacyNoticeVersionKey;
  v13 = [NSNumber numberWithUnsignedInteger:a3];
  v19 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007D300;
  v16[3] = &unk_100362868;
  v17 = v6;
  v15 = v6;
  [(GKProfileServicePrivate *)self setProfileSettings:v14 handler:v16];
}

- (void)setProfilePrivacy:(int)a3 handler:(id)a4
{
  v6 = a4;
  v7 = @"everyone";
  if (a3 == 2)
  {
    v7 = @"me";
  }

  if (a3 == 1)
  {
    v8 = @"friends";
  }

  else
  {
    v8 = v7;
  }

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v30 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "GKProfileService: setProfilePrivacy:%@", buf, 0xCu);
  }

  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1500, "[GKProfileServicePrivate setProfilePrivacy:handler:]"];
  v12 = [(GKService *)self transactionGroupWithName:v11];

  v13 = [(GKService *)self clientProxy];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10007D6A0;
  v24[3] = &unk_100362890;
  v28 = a3;
  v25 = v8;
  v26 = self;
  v14 = v12;
  v27 = v14;
  [v14 performOnManagedObjectContext:v24];
  v15 = [(GKService *)self clientProxy];
  v16 = [v15 replyQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10007D9B8;
  v20[3] = &unk_100360FC8;
  v21 = v14;
  v22 = v13;
  v23 = v6;
  v17 = v6;
  v18 = v13;
  v19 = v14;
  [v19 notifyOnQueue:v16 block:v20];
}

- (void)setProfileSettings:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1544, "[GKProfileServicePrivate setProfileSettings:handler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10007DC08;
  v19[3] = &unk_100360F00;
  v20 = v6;
  v21 = self;
  v10 = v9;
  v22 = v10;
  v11 = v6;
  [v10 perform:v19];
  v12 = [(GKService *)self clientProxy];
  v13 = [v12 replyQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007DE08;
  v16[3] = &unk_100360EB0;
  v17 = v10;
  v18 = v7;
  v14 = v10;
  v15 = v7;
  [v14 notifyOnQueue:v13 block:v16];
}

- (void)invalidateCachedProfileForLocalPlayerWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1571, "[GKProfileServicePrivate invalidateCachedProfileForLocalPlayerWithHandler:]"];
  v6 = [(GKService *)self transactionGroupWithName:v5];

  [v6 performOnManagedObjectContext:&stru_1003628F8];
  if (v4)
  {
    v7 = [(GKService *)self clientProxy];
    v8 = [v7 replyQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10007E02C;
    v9[3] = &unk_100360FA0;
    v10 = v4;
    [v6 notifyOnQueue:v8 block:v9];
  }
}

- (void)getProfilePrivacyWithHandler:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKProfileService: getProfilePrivacyWithHandler", buf, 2u);
  }

  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1590, "[GKProfileServicePrivate getProfilePrivacyWithHandler:]"];
  v8 = [(GKService *)self transactionGroupWithName:v7];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10007E224;
  v17[3] = &unk_100362920;
  v9 = v8;
  v18 = v9;
  [v9 performOnManagedObjectContext:v17];
  v10 = [(GKService *)self clientProxy];
  v11 = [v10 replyQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007E2D4;
  v14[3] = &unk_100361270;
  v15 = v9;
  v16 = v4;
  v12 = v4;
  v13 = v9;
  [v13 notifyOnQueue:v11 block:v14];
}

- (void)getContactsIntegrationConsentWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKProfileService: getContactsIntegrationConsentWithCompletionHandler", buf, 2u);
  }

  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1615, "[GKProfileServicePrivate getContactsIntegrationConsentWithCompletionHandler:]"];
  v8 = [(GKService *)self transactionGroupWithName:v7];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10007E530;
  v17[3] = &unk_100362920;
  v9 = v8;
  v18 = v9;
  [v9 performOnManagedObjectContext:v17];
  v10 = [(GKService *)self clientProxy];
  v11 = [v10 replyQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007E68C;
  v14[3] = &unk_100361270;
  v15 = v9;
  v16 = v4;
  v12 = v4;
  v13 = v9;
  [v13 notifyOnQueue:v11 block:v14];
}

- (void)setContactsIntegrationConsent:(int)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v26 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKProfileService: setContactsIntegrationConsent:%d", buf, 8u);
  }

  v9 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1634, "[GKProfileServicePrivate setContactsIntegrationConsent:withCompletionHandler:]"];
  v10 = [(GKService *)self transactionGroupWithName:v9];

  v11 = [(GKService *)self clientProxy];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10007E950;
  v22[3] = &unk_100362840;
  v24 = a3;
  v22[4] = self;
  v12 = v10;
  v23 = v12;
  [v12 performOnManagedObjectContext:v22];
  v13 = [(GKService *)self clientProxy];
  v14 = [v13 replyQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10007EF2C;
  v18[3] = &unk_100360FC8;
  v19 = v12;
  v20 = v11;
  v21 = v6;
  v15 = v6;
  v16 = v11;
  v17 = v12;
  [v17 notifyOnQueue:v14 block:v18];
}

- (void)updateContactsIntegrationInfoFromLocalPlayerProfile:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKProfileServicePrivate updateContactsIntegrationInfoFromLocalPlayerProfile:completionHandler:]", v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKProfileService.m"];
    v12 = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "-[GKProfileServicePrivate updateContactsIntegrationInfoFromLocalPlayerProfile:completionHandler:]", [v12 UTF8String], 1702);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v14 = +[GKPlayerCredentialController sharedController];
  v15 = [v6 contactsAssociationID];
  v16 = [v6 contactsIntegrationConsent];
  v17 = [v6 serviceLastUpdatedTimestamp];
  v18 = [(GKService *)self clientProxy];
  v19 = [v18 environment];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10007F1E8;
  v21[3] = &unk_100361CB8;
  v22 = v7;
  v20 = v7;
  [v14 setContactAssociationID:v15 contactIntegrationConsent:v16 serviceLastUpdateTimestamp:v17 forEnvironment:v19 forcefully:0 completionHandler:v21];
}

- (void)getGameCenterRelationshipsForContact:(id)a3 shouldRefresh:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    if (v8)
    {
      v10 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1736, "[GKProfileServicePrivate getGameCenterRelationshipsForContact:shouldRefresh:completionHandler:]"];
      v11 = [GKDispatchGroup dispatchGroupWithName:v10];

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10007F4B8;
      v24[3] = &unk_100361670;
      v24[4] = self;
      v25 = v8;
      v27 = a4;
      v12 = v11;
      v26 = v12;
      [v12 perform:v24];
      v13 = [(GKService *)self clientProxy];
      v14 = [v13 replyQueue];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10007F654;
      v21[3] = &unk_100360EB0;
      v22 = v12;
      v23 = v9;
      v15 = v12;
      [v15 notifyOnQueue:v14 block:v21];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v18 = GKOSLoggers();
      }

      v19 = os_log_GKContacts;
      if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Attempting to get relationships without a contact.", buf, 2u);
      }

      v20 = [NSError errorWithDomain:GKContactsIntegrationErrorDomain code:8 userInfo:0];
      (*(v9 + 2))(v9, 0, v20);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    v17 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
    {
      sub_10028980C(v17);
    }
  }
}

- (void)contactsIntegrationStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(GKProfileServicePrivate *)self contactsIntegrationController];
  v6 = [(GKService *)self clientProxy];
  v7 = [v6 replyQueue];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007F7B4;
  v10[3] = &unk_1003629C0;
  v11 = v7;
  v12 = v4;
  v8 = v4;
  v9 = v7;
  [v5 stateWithCompletionHandler:v10];
}

- (void)getContactAssociationIDsForContacts:(id)a3 shouldRefresh:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    if (v8)
    {
      v10 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1783, "[GKProfileServicePrivate getContactAssociationIDsForContacts:shouldRefresh:completionHandler:]"];
      v11 = [GKDispatchGroup dispatchGroupWithName:v10];

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10007FB50;
      v24[3] = &unk_100361670;
      v24[4] = self;
      v25 = v8;
      v27 = a4;
      v12 = v11;
      v26 = v12;
      [v12 perform:v24];
      v13 = [(GKService *)self clientProxy];
      v14 = [v13 replyQueue];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10007FDDC;
      v21[3] = &unk_100360EB0;
      v22 = v12;
      v23 = v9;
      v15 = v12;
      [v15 notifyOnQueue:v14 block:v21];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v18 = GKOSLoggers();
      }

      v19 = os_log_GKContacts;
      if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Attempting to get relationships without a contact.", buf, 2u);
      }

      v20 = [NSError errorWithDomain:GKContactsIntegrationErrorDomain code:8 userInfo:0];
      (*(v9 + 2))(v9, 0, v20);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    v17 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Will not proceed getting relationsips for contacts because there is no completion block", buf, 2u);
    }
  }
}

- (void)getContactsForContactAssociationIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1828, "[GKProfileServicePrivate getContactsForContactAssociationIDs:completionHandler:]"];
    v9 = [(GKService *)self transactionGroupWithName:v8];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10008006C;
    v19[3] = &unk_100361348;
    v19[4] = self;
    v20 = v6;
    v10 = v9;
    v21 = v10;
    [v10 performOnManagedObjectContext:v19];
    v11 = [(GKService *)self clientProxy];
    v12 = [v11 replyQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100080114;
    v16[3] = &unk_100360EB0;
    v17 = v10;
    v18 = v7;
    v13 = v10;
    [v13 notifyOnQueue:v12 block:v16];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Will not proceed getting contacts for caids because there is no completion block.", buf, 2u);
    }
  }
}

- (void)clearContactsIntegrationCachesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(GKProfileServicePrivate *)self contactsIntegrationController];
  [v5 clearCachesWithCompletionHandler:v4];
}

- (void)startContactsIntegrationSyncWithOptions:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(GKProfileServicePrivate *)self contactsIntegrationController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008028C;
  v9[3] = &unk_100360FA0;
  v10 = v6;
  v8 = v6;
  [v7 startWithOptions:a3 completion:v9];
}

- (void)startContactsIntegrationIDSSyncForHandles:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GKProfileServicePrivate *)self contactsIntegrationController];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100080408;
  v11[3] = &unk_100361198;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 syncIDSDataForHandles:v10 forcefully:1 completion:v11];
}

- (void)filterForContactIDsSupportingFriendingViaPushFromContactIDs:(id)a3 withCompletion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008055C;
  v7[3] = &unk_100362A10;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(GKProfileServicePrivate *)v8 getFriendingViaPushEnabledWithCompletion:v7];
}

- (void)getFriendingViaPushEnabledWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(GKService *)self transport];
  v6 = [v5 storeBag];

  if (v6)
  {
    v15 = GKFriendingViaPushEnabled;
    v7 = [NSArray arrayWithObjects:&v15 count:1];
    v8 = [(GKService *)self clientProxy];
    v9 = [v8 replyQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100080B60;
    v12[3] = &unk_100362868;
    v13 = v4;
    [v6 getValuesForKeys:v7 queue:v9 completion:v12];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "getIsFriendingViaPushEnabledWithCompletion - no storeBag, assume friending via push is enabled", buf, 2u);
    }

    (*(v4 + 2))(v4, 1);
  }
}

- (void)getProfilesForPlayerIDs:(id)a3 fetchOptions:(unint64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1930, "[GKProfileServicePrivate getProfilesForPlayerIDs:fetchOptions:handler:]"];
  v11 = [GKDispatchGroup dispatchGroupWithName:v10];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100080E20;
  v21[3] = &unk_100362A60;
  v21[4] = self;
  v22 = v8;
  v12 = v11;
  v23 = v12;
  v24 = a4;
  v13 = v8;
  [v12 perform:v21];
  v14 = [(GKService *)self clientProxy];
  v15 = [v14 replyQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000810B4;
  v18[3] = &unk_100361270;
  v19 = v12;
  v20 = v9;
  v16 = v9;
  v17 = v12;
  [v17 notifyOnQueue:v15 block:v18];
}

- (void)getProfilesForPlayerIDs:(id)a3 playerIdToContactAssociationIdMap:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1975, "[GKProfileServicePrivate getProfilesForPlayerIDs:playerIdToContactAssociationIdMap:handler:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000813AC;
  v23[3] = &unk_100361F90;
  v23[4] = self;
  v24 = v8;
  v13 = v12;
  v25 = v13;
  v26 = v9;
  v14 = v9;
  v15 = v8;
  [v13 perform:v23];
  v16 = [(GKService *)self clientProxy];
  v17 = [v16 replyQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10008166C;
  v20[3] = &unk_100361270;
  v21 = v13;
  v22 = v10;
  v18 = v10;
  v19 = v13;
  [v19 notifyOnQueue:v17 block:v20];
}

- (BOOL)checkExistingProfileIsValidForPlayer:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100081888;
  v10[3] = &unk_100362AB0;
  v7 = v5;
  v11 = v7;
  v8 = v6;
  v12 = v8;
  v13 = &v14;
  [v8 performBlockAndWait:v10];
  LOBYTE(v6) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v6;
}

- (void)loadProfileForPlayer:(id)a3 pieces:(unsigned __int8)a4 context:(id)a5 handler:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = 0;
  if (v10)
  {
    v36 = v10;
    v14 = [NSArray arrayWithObjects:&v36 count:1];
    v15 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 2042, "[GKProfileServicePrivate loadProfileForPlayer:pieces:context:handler:]"];
    v16 = [GKDispatchGroup dispatchGroupWithName:v15];

    v17 = [GKProfileService profileRequestForPlayerIDs:v14 pieces:v8];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100081C94;
    v27[3] = &unk_100362B28;
    v27[4] = self;
    v28 = v10;
    v29 = v11;
    v18 = v17;
    v30 = v18;
    v19 = v14;
    v34 = v8;
    v31 = v19;
    v33 = v35;
    v20 = v16;
    v32 = v20;
    [v20 perform:v27];
    if (v13)
    {
      v21 = [(GKService *)self clientProxy];
      v22 = [v21 replyQueue];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100082184;
      v23[3] = &unk_1003618D8;
      v25 = v13;
      v26 = v35;
      v24 = v20;
      [v24 notifyOnQueue:v22 block:v23];
    }
  }

  else if (v12)
  {
    (*(v12 + 2))(v12, 0, 0.0);
  }

  _Block_object_dispose(v35, 8);
}

- (void)preloadInstalledGamesScopedPlayerIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100082360;
  v13[3] = &unk_100360FA0;
  v7 = a4;
  v14 = v7;
  v8 = objc_retainBlock(v13);
  if ([v6 count])
  {
    v9 = [(GKService *)GKGameServicePrivate serviceFromService:self];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100082378;
    v10[3] = &unk_100362B78;
    v12 = v8;
    v10[4] = self;
    v11 = v6;
    [v9 fetchInstalledGameIdCacheWithHandler:v10];
  }

  else
  {
    (v8[2])(v8);
  }
}

+ (id)scopedIDsFetchRequestWithPlayerIDs:(id)a3 gameBundleIDs:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[GKCDScopedIds _gkFetchRequest];
  v8 = [NSPredicate predicateWithFormat:@"playerId IN %@ AND gameBundleId IN %@ AND fetchedOn != nil", v6, v5];

  [v7 setPredicate:v8];

  return v7;
}

- (id)filterPlayerIDsThatNeedPreloading:(id)a3 gameBundleIDs:(id)a4 moc:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v10, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v11 = +[NSThread callStackSymbols];
    v12 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKProfileServicePrivate filterPlayerIDsThatNeedPreloading:gameBundleIDs:moc:]", v11];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKProfileService.m"];
    v14 = [v13 lastPathComponent];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v12, "-[GKProfileServicePrivate filterPlayerIDsThatNeedPreloading:gameBundleIDs:moc:]", [v14 UTF8String], 2196);

    [NSException raise:@"GameKit Exception" format:@"%@", v15];
  }

  v16 = [GKProfileServicePrivate scopedIDsFetchRequestWithPlayerIDs:v7 gameBundleIDs:v8];
  v17 = objc_opt_new();
  [v17 setName:@"gameBundleIDCount"];
  v18 = [NSExpression expressionForKeyPath:@"gameBundleId"];
  v38 = v18;
  v19 = [NSArray arrayWithObjects:&v38 count:1];
  v20 = [NSExpression expressionForFunction:@"count:" arguments:v19];
  [v17 setExpression:v20];

  [v17 setExpressionResultType:200];
  v37[0] = @"playerId";
  v37[1] = v17;
  v21 = [NSArray arrayWithObjects:v37 count:2];
  [v16 setPropertiesToFetch:v21];

  [v16 setPropertiesToGroupBy:&off_100383370];
  [v16 setResultType:2];
  v22 = [v17 name];
  v23 = [NSExpression expressionForVariable:v22];
  v24 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"%@ >= %d", v23, [v8 count]);
  [v16 setHavingPredicate:v24];

  v36 = 0;
  v25 = [v9 executeFetchRequest:v16 error:&v36];
  v26 = v36;
  if (v26)
  {
    if (!os_log_GKGeneral)
    {
      v27 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100289CB4();
    }

    v28 = &__NSArray0__struct;
  }

  else
  {
    v29 = [v25 _gkMapWithBlock:&stru_100362BB8];
    v30 = [NSSet setWithArray:v29];

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100082E48;
    v34[3] = &unk_100362BE0;
    v35 = v30;
    v31 = v30;
    v32 = [NSPredicate predicateWithBlock:v34];
    v28 = [v7 filteredArrayUsingPredicate:v32];
  }

  return v28;
}

- (id)fetchScopedIDsCacheKeysWithPlayerIDs:(id)a3 gameBundleIDs:(id)a4 moc:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v10, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v11 = +[NSThread callStackSymbols];
    v12 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKProfileServicePrivate fetchScopedIDsCacheKeysWithPlayerIDs:gameBundleIDs:moc:]", v11];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKProfileService.m"];
    v14 = [v13 lastPathComponent];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v12, "-[GKProfileServicePrivate fetchScopedIDsCacheKeysWithPlayerIDs:gameBundleIDs:moc:]", [v14 UTF8String], 2225);

    [NSException raise:@"GameKit Exception" format:@"%@", v15];
  }

  v16 = [GKProfileServicePrivate scopedIDsFetchRequestWithPlayerIDs:v7 gameBundleIDs:v8];
  [v16 setPropertiesToFetch:&off_100383388];
  [v16 setResultType:2];
  v21 = 0;
  v17 = [v9 executeFetchRequest:v16 error:&v21];
  v18 = [v17 _gkMapWithBlock:&stru_100362C00];
  v19 = [NSSet setWithArray:v18];

  return v19;
}

- (void)loadScopedPlayerIDs:(id)a3 gameBundleIDs:(id)a4 handler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [NSPredicate predicateWithBlock:&stru_100362C40];
  v12 = [v10 filteredArrayUsingPredicate:v11];

  if ([v12 count] && objc_msgSend(v8, "count"))
  {
    v13 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 2254, "[GKProfileServicePrivate loadScopedPlayerIDs:gameBundleIDs:handler:]"];
    v14 = [(GKService *)self transactionGroupWithName:v13];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10008338C;
    v27[3] = &unk_100361348;
    v15 = v12;
    v28 = v15;
    v16 = v8;
    v29 = v16;
    v17 = v14;
    v30 = v17;
    [v17 performOnManagedObjectContext:v27];
    v18 = [(GKService *)self clientProxy];
    v19 = [v18 replyQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100083440;
    v21[3] = &unk_100362C68;
    v22 = v17;
    v23 = v15;
    v24 = v16;
    v25 = self;
    v26 = v9;
    v20 = v17;
    [v20 notifyOnQueue:v19 block:v21];
  }

  else
  {
    (*(v9 + 2))(v9, &__NSArray0__struct, 0);
  }
}

+ (id)makeGKScopedIDsFromInternal:(id)a3
{
  v3 = a3;
  v4 = [v3 gamePlayerId];
  if (![v4 length])
  {
    v10 = 0;
    goto LABEL_5;
  }

  v5 = [v3 teamPlayerId];
  v6 = [v5 length];

  if (v6)
  {
    v4 = [v3 playerId];
    v7 = [v3 gameBundleId];
    v8 = [v3 gamePlayerId];
    v9 = [v3 teamPlayerId];
    v10 = [GKScopedIDs makePersistentWithPlayerID:v4 gameBundleID:v7 gamePlayerID:v8 teamPlayerID:v9];

LABEL_5:
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

+ (id)loadCachedScopedPlayerIDs:(id)a3 gameBundleIDs:(id)a4 error:(id *)a5 moc:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v12, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v13 = v11;
    v14 = +[NSThread callStackSymbols];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKProfileServicePrivate loadCachedScopedPlayerIDs:gameBundleIDs:error:moc:]", v14);
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKProfileService.m"];
    v17 = [v16 lastPathComponent];
    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v15, "+[GKProfileServicePrivate loadCachedScopedPlayerIDs:gameBundleIDs:error:moc:]", [v17 UTF8String], 2328);

    v11 = v13;
    [NSException raise:@"GameKit Exception" format:@"%@", v18];
  }

  if ([v9 count] && objc_msgSend(v10, "count"))
  {
    v19 = [a1 scopedIDsFetchRequestWithPlayerIDs:v9 gameBundleIDs:v10];
    v42 = 0;
    v20 = [v11 executeFetchRequest:v19 error:&v42];
    v21 = v42;
    v22 = v21;
    if (v21)
    {
      if (a5)
      {
        v23 = v21;
        *a5 = v22;
      }

      v24 = &__NSArray0__struct;
    }

    else
    {
      v34 = v11;
      v36 = v9;
      v25 = +[NSMutableArray array];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v26 = v20;
      v27 = [v26 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v39;
        do
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v39 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v38 + 1) + 8 * i);
            v37[0] = _NSConcreteStackBlock;
            v37[1] = 3221225472;
            v37[2] = sub_100083D2C;
            v37[3] = &unk_100362C90;
            v37[4] = v31;
            if (([v25 _gkContainsObjectPassingTest:v37] & 1) == 0)
            {
              v32 = [GKProfileServicePrivate makeGKScopedIDsFromInternal:v31];
              if (v32)
              {
                [v25 addObject:v32];
              }
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v28);
      }

      v24 = [v25 copy];
      v9 = v36;
      v11 = v34;
      v22 = 0;
    }
  }

  else
  {
    v24 = &__NSArray0__struct;
  }

  return v24;
}

+ (id)cacheKeyForScopedIDs:(id)a3
{
  v3 = a3;
  v4 = [v3 gameBundleID];
  v5 = [v3 playerID];

  v6 = [GKProfileServicePrivate cacheKeyForScopedIDsWithGameBundleID:v4 playerID:v5];

  return v6;
}

- (void)fetchAndCacheScopedPlayerIDs:(id)a3 gameBundleIDs:(id)a4 cachedScopedIDs:(id)a5 handler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [a5 _gkMapWithBlock:&stru_100362CD0];
  v14 = [NSSet setWithArray:v13];

  [(GKProfileServicePrivate *)self fetchAndCacheScopedPlayerIDs:v12 gameBundleIDs:v11 scopedIDsCacheKeys:v14 cacheOnly:0 handler:v10];
}

- (void)fetchAndCacheScopedPlayerIDs:(id)a3 gameBundleIDs:(id)a4 scopedIDsCacheKeys:(id)a5 cacheOnly:(BOOL)a6 handler:(id)a7
{
  v12 = a3;
  v33 = a5;
  v13 = a7;
  v14 = [GKScopedIDsUtils filterUnsupportedGameBundleIDs:a4];
  if ([v14 count])
  {
    v32 = v12;
    v15 = [GKScopedIDsUtils batchRequestWithPlayerIDs:v12 gameBundleIDs:v14 desiredSize:1000];
    v16 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 2404, "[GKProfileServicePrivate fetchAndCacheScopedPlayerIDs:gameBundleIDs:scopedIDsCacheKeys:cacheOnly:handler:]"];
    v17 = [GKDispatchGroup dispatchGroupWithName:v16];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v18 = v15;
    v19 = [v18 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v43;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v43 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v42 + 1) + 8 * i);
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_100084320;
          v38[3] = &unk_100362CF8;
          v38[4] = self;
          v38[5] = v23;
          v39 = v33;
          v41 = a6;
          v40 = v17;
          [v40 perform:v38];
        }

        v20 = [v18 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v20);
    }

    v24 = [(GKService *)self clientProxy];
    v25 = [v24 replyQueue];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100084538;
    v34[3] = &unk_100362D20;
    v37 = a6;
    v35 = v17;
    v36 = v13;
    v26 = v17;
    v27 = v13;
    [v26 notifyOnQueue:v25 block:v34];

    v12 = v32;
  }

  else
  {
    v28 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v29 = GKOSLoggers();
      v28 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sub_100289E6C();
    }

    v30 = [(GKService *)self clientProxy];
    v31 = [v30 replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100084304;
    block[3] = &unk_100360FA0;
    v47 = v13;
    v18 = v13;
    dispatch_async(v31, block);

    v27 = v47;
  }
}

- (void)fetchAndCacheScopedPlayerIDsForRequest:(id)a3 scopedIDsCacheKeys:(id)a4 cacheOnly:(BOOL)a5 handler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a3;
  v13 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v14 = [(GKService *)self clientProxy];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100084864;
  v17[3] = &unk_100362D70;
  v18 = v10;
  v19 = v11;
  v17[4] = self;
  v20 = a5;
  v15 = v10;
  v16 = v11;
  [v13 issueRequest:v12 bagKey:@"gk-get-scoped-ids" clientProxy:v14 handler:v17];
}

- (void)clearScopedIdsCacheWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 2509, "[GKProfileServicePrivate clearScopedIdsCacheWithHandler:]"];
  v6 = [(GKService *)self transactionGroupWithName:v5];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100085064;
  v15[3] = &unk_100362920;
  v7 = v6;
  v16 = v7;
  [v7 performOnManagedObjectContext:v15];
  v8 = [(GKService *)self clientProxy];
  v9 = [v8 replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100085138;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = v4;
  v10 = v7;
  v11 = v4;
  [v10 notifyOnQueue:v9 block:v12];
}

+ (void)verifyAndAssociatePlayerID:(id)a3 withGameScopedPlayerID:(id)a4 andTeamScopedPlayerID:(id)a5 forGameBundleID:(id)a6 usingMoc:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ([v14 length] && objc_msgSend(v11, "length") && objc_msgSend(v12, "length") && objc_msgSend(v13, "length"))
  {
    v64 = v11;
    v16 = [NSArray arrayWithObjects:&v64 count:1];
    v63 = v14;
    v17 = [NSArray arrayWithObjects:&v63 count:1];
    v62 = 0;
    v18 = [GKProfileServicePrivate loadCachedScopedPlayerIDs:v16 gameBundleIDs:v17 error:&v62 moc:v15];
    v19 = v62;

    if (v19)
    {
      if (!os_log_GKGeneral)
      {
        v20 = GKOSLoggers();
      }

      v21 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v66 = v11;
        v67 = 2112;
        v68 = v14;
        v69 = 2112;
        v70 = v19;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to load cached scoped IDs for playerID: %@, gameBundleID: %@, error: %@", buf, 0x20u);
      }
    }

    else
    {
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_1000858E0;
      v56[3] = &unk_100361FE0;
      v47 = v15;
      v57 = v47;
      v46 = v11;
      v58 = v46;
      v50 = v14;
      v59 = v50;
      v24 = v12;
      v60 = v24;
      v25 = v13;
      v61 = v25;
      v26 = objc_retainBlock(v56);
      v51 = v18;
      if ([v18 count])
      {
        v49 = v26;
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_100085988;
        v53[3] = &unk_100362D98;
        v45 = v24;
        v54 = v45;
        v27 = v25;
        v55 = v27;
        v28 = [v18 _gkFirstObjectPassingTest:v53];

        if (v28)
        {
          v44 = v27;
          v29 = +[GKCDScopedIds _gkFetchRequest];
          v30 = [NSPredicate predicateWithFormat:@"gameBundleId = %@", v50];
          [v29 setPredicate:v30];

          v31 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v29];
          [v31 setResultType:2];
          v52 = 0;
          v32 = [v47 executeRequest:v31 error:&v52];
          v33 = v52;
          v48 = v32;
          if (v33)
          {
            if (!os_log_GKGeneral)
            {
              v34 = GKOSLoggers();
            }

            if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_ERROR))
            {
              sub_100289EA8();
            }
          }

          else
          {
            v43 = [v32 result];
            if (!os_log_GKGeneral)
            {
              v40 = GKOSLoggers();
            }

            if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_DEBUG))
            {
              sub_100289F20();
            }

            v49[2]();
            if (!os_log_GKGeneral)
            {
              v41 = GKOSLoggers();
            }

            v42 = os_log_GKDaemon;
            if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138413058;
              v66 = v46;
              v67 = 2112;
              v68 = v50;
              v69 = 2112;
              v70 = v45;
              v71 = 2112;
              v72 = v44;
              _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "Stored scoped IDs after discrepancy detected for playerID: %@, gameBundleID: %@, gameScopedPlayerID: %@, teamScopedPlayerID: %@", buf, 0x2Au);
            }
          }

          v35 = v49;
        }

        else
        {
          if (!os_log_GKGeneral)
          {
            v38 = GKOSLoggers();
          }

          v39 = os_log_GKDaemon;
          v35 = v49;
          if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138413058;
            v66 = v46;
            v67 = 2112;
            v68 = v50;
            v69 = 2112;
            v70 = v45;
            v71 = 2112;
            v72 = v27;
            _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "No scoped IDs discrepancy detected for playerID: %@, gameBundleID: %@, gameScopedPlayerID: %@, teamScopedPlayerID: %@", buf, 0x2Au);
          }
        }
      }

      else
      {
        (v26[2])(v26);
        v35 = v26;
        if (!os_log_GKGeneral)
        {
          v36 = GKOSLoggers();
        }

        v37 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 138413058;
          v66 = v46;
          v67 = 2112;
          v68 = v50;
          v69 = 2112;
          v70 = v24;
          v71 = 2112;
          v72 = v25;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Stored missing scoped IDs for playerID: %@, gameBundleID: %@, gameScopedPlayerID: %@, teamScopedPlayerID: %@", buf, 0x2Au);
        }
      }

      v19 = 0;
      v18 = v51;
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v22 = GKOSLoggers();
    }

    v23 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v66 = v11;
      v67 = 2112;
      v68 = v14;
      v69 = 2112;
      v70 = v12;
      v71 = 2112;
      v72 = v13;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Skip verifying scoped ID association due to insufficient info, playerID: %@, gameBundleID: %@, gameScopedPlayerID: %@, teamScopedPlayerID: %@", buf, 0x2Au);
    }
  }
}

- (void)getContextualPromptStatesWithCompletion:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKProfileService: getContextualPromptStatesWithCompletion", buf, 2u);
  }

  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 2596, "[GKProfileServicePrivate getContextualPromptStatesWithCompletion:]"];
  v8 = [(GKService *)self transactionGroupWithName:v7];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100085BF4;
  v17[3] = &unk_100361708;
  v17[4] = self;
  v9 = v8;
  v18 = v9;
  [v9 performOnManagedObjectContext:v17];
  v10 = [(GKService *)self clientProxy];
  v11 = [v10 replyQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100085D90;
  v14[3] = &unk_100360EB0;
  v15 = v9;
  v16 = v4;
  v12 = v9;
  v13 = v4;
  [v12 notifyOnQueue:v11 block:v14];
}

+ (id)parseContactAssociationIDsFromRelationships:(id)a3 contactAssociationIDMap:(id)a4 contacts:(id)a5
{
  sub_1001A7B44(0, &qword_1003B84C0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001A7B44(0, &qword_1003B5B78);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100269340(v5, v6, v7);

  sub_1002698C0();
  v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

@end