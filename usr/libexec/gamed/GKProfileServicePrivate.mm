@interface GKProfileServicePrivate
+ (id)cacheKeyForScopedIDs:(id)ds;
+ (id)loadCachedScopedPlayerIDs:(id)ds gameBundleIDs:(id)iDs error:(id *)error moc:(id)moc;
+ (id)makeGKScopedIDsFromInternal:(id)internal;
+ (id)parseContactAssociationIDsFromRelationships:(id)relationships contactAssociationIDMap:(id)map contacts:(id)contacts;
+ (id)scopedIDsFetchRequestWithPlayerIDs:(id)ds gameBundleIDs:(id)iDs;
+ (void)verifyAndAssociatePlayerID:(id)d withGameScopedPlayerID:(id)iD andTeamScopedPlayerID:(id)playerID forGameBundleID:(id)bundleID usingMoc:(id)moc;
- (BOOL)checkExistingProfileIsValidForPlayer:(id)player context:(id)context;
- (id)fetchScopedIDsCacheKeysWithPlayerIDs:(id)ds gameBundleIDs:(id)iDs moc:(id)moc;
- (id)filterPlayerIDsThatNeedPreloading:(id)preloading gameBundleIDs:(id)ds moc:(id)moc;
- (void)cachePhotos:(id)photos avatarType:(id)type fileNames:(id)names handler:(id)handler;
- (void)clearContactsIntegrationCachesWithCompletionHandler:(id)handler;
- (void)clearScopedIdsCacheWithHandler:(id)handler;
- (void)contactsIntegrationStatusWithCompletionHandler:(id)handler;
- (void)deletePhotoWithHandler:(id)handler;
- (void)fetchAndCacheScopedPlayerIDs:(id)ds gameBundleIDs:(id)iDs cachedScopedIDs:(id)scopedIDs handler:(id)handler;
- (void)fetchAndCacheScopedPlayerIDs:(id)ds gameBundleIDs:(id)iDs scopedIDsCacheKeys:(id)keys cacheOnly:(BOOL)only handler:(id)handler;
- (void)fetchAndCacheScopedPlayerIDsForRequest:(id)request scopedIDsCacheKeys:(id)keys cacheOnly:(BOOL)only handler:(id)handler;
- (void)filterForContactIDsSupportingFriendingViaPushFromContactIDs:(id)ds withCompletion:(id)completion;
- (void)getContactAssociationIDsForContacts:(id)contacts shouldRefresh:(BOOL)refresh completionHandler:(id)handler;
- (void)getContactsForContactAssociationIDs:(id)ds completionHandler:(id)handler;
- (void)getContactsIntegrationConsentWithCompletionHandler:(id)handler;
- (void)getContextualPromptStatesWithCompletion:(id)completion;
- (void)getFriendingViaPushEnabledWithCompletion:(id)completion;
- (void)getGameCenterRelationshipsForContact:(id)contact shouldRefresh:(BOOL)refresh completionHandler:(id)handler;
- (void)getNicknameSuggestions:(int64_t)suggestions minSuggestionLength:(int64_t)length maxSuggestionLength:(int64_t)suggestionLength handler:(id)handler;
- (void)getProfilePrivacyWithHandler:(id)handler;
- (void)getProfilesForPlayerIDs:(id)ds fetchOptions:(unint64_t)options handler:(id)handler;
- (void)getProfilesForPlayerIDs:(id)ds playerIdToContactAssociationIdMap:(id)map handler:(id)handler;
- (void)getTermsAndConditionsURLWithHandler:(id)handler;
- (void)invalidateCachedProfileForLocalPlayerWithHandler:(id)handler;
- (void)loadProfileForPlayer:(id)player pieces:(unsigned __int8)pieces context:(id)context handler:(id)handler;
- (void)loadScopedPlayerIDs:(id)ds gameBundleIDs:(id)iDs handler:(id)handler;
- (void)preloadInstalledGamesScopedPlayerIDs:(id)ds completion:(id)completion;
- (void)setArcadeSubscriptionExpiration:(id)expiration handler:(id)handler;
- (void)setContactsIntegrationConsent:(int)consent withCompletionHandler:(id)handler;
- (void)setFindable:(BOOL)findable handler:(id)handler;
- (void)setFriendInvitesAllowedFlag:(id)flag source:(unint64_t)source handler:(id)handler;
- (void)setGlobalFriendListAccess:(int)access handler:(id)handler;
- (void)setPhotoData:(id)data avatarType:(id)type handler:(id)handler;
- (void)setPlayerNickname:(id)nickname suggestionsCount:(int64_t)count minSuggestionLength:(int64_t)length maxSuggestionLength:(int64_t)suggestionLength handler:(id)handler;
- (void)setPrivacyNoticeVersion:(unint64_t)version withCompletionHandler:(id)handler;
- (void)setProfilePrivacy:(int)privacy handler:(id)handler;
- (void)setProfileSettings:(id)settings handler:(id)handler;
- (void)setStatus:(id)status handler:(id)handler;
- (void)startContactsIntegrationIDSSyncForHandles:(id)handles completionHandler:(id)handler;
- (void)startContactsIntegrationSyncWithOptions:(unint64_t)options completionHandler:(id)handler;
- (void)updateContactsIntegrationInfoFromLocalPlayerProfile:(id)profile completionHandler:(id)handler;
@end

@implementation GKProfileServicePrivate

- (void)setStatus:(id)status handler:(id)handler
{
  statusCopy = status;
  handlerCopy = handler;
  v8 = statusCopy;
  v9 = v8;
  if ([v8 length] >= 0x8D)
  {
    v9 = [v8 substringToIndex:140];
  }

  clientProxy = [(GKService *)self clientProxy];
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1072, "[GKProfileServicePrivate setStatus:handler:]"];
  v12 = [(GKService *)self transactionGroupWithName:v11];

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100079AEC;
  v22[3] = &unk_100361F90;
  v15 = v12;
  v23 = v15;
  v16 = v9;
  v24 = v16;
  v17 = clientProxy;
  v25 = v17;
  selfCopy = self;
  [v15 performOnQueue:replyQueue block:v22];

  if (handlerCopy)
  {
    replyQueue2 = [v17 replyQueue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100079DC8;
    v19[3] = &unk_100360EB0;
    v21 = handlerCopy;
    v20 = v15;
    [v20 notifyOnQueue:replyQueue2 block:v19];
  }
}

- (void)cachePhotos:(id)photos avatarType:(id)type fileNames:(id)names handler:(id)handler
{
  photosCopy = photos;
  typeCopy = type;
  namesCopy = names;
  handlerCopy = handler;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1107, "[GKProfileServicePrivate cachePhotos:avatarType:fileNames:handler:]"];
  v15 = [(GKService *)self transactionGroupWithName:v14];

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10007A050;
  v26[3] = &unk_100361BF8;
  v18 = v15;
  v27 = v18;
  v19 = typeCopy;
  v28 = v19;
  selfCopy = self;
  v20 = photosCopy;
  v30 = v20;
  v21 = namesCopy;
  v31 = v21;
  [v18 performOnQueue:replyQueue block:v26];

  if (handlerCopy)
  {
    clientProxy2 = [(GKService *)self clientProxy];
    replyQueue2 = [clientProxy2 replyQueue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10007A378;
    v24[3] = &unk_100360FA0;
    v25 = handlerCopy;
    [v18 notifyOnQueue:replyQueue2 block:v24];
  }
}

- (void)setPhotoData:(id)data avatarType:(id)type handler:(id)handler
{
  dataCopy = data;
  typeCopy = type;
  handlerCopy = handler;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1141, "[GKProfileServicePrivate setPhotoData:avatarType:handler:]"];
  v12 = [(GKService *)self transactionGroupWithName:v11];

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10007A588;
  v22[3] = &unk_100361F90;
  v15 = v12;
  v23 = v15;
  selfCopy = self;
  v16 = dataCopy;
  v25 = v16;
  v17 = typeCopy;
  v26 = v17;
  [v15 performOnQueue:replyQueue block:v22];

  if (handlerCopy)
  {
    clientProxy2 = [(GKService *)self clientProxy];
    replyQueue2 = [clientProxy2 replyQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10007A990;
    v20[3] = &unk_100360FA0;
    v21 = handlerCopy;
    [v15 notifyOnQueue:replyQueue2 block:v20];
  }
}

- (void)deletePhotoWithHandler:(id)handler
{
  handlerCopy = handler;
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

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007ABB0;
  v16[3] = &unk_100360FF0;
  v11 = v8;
  v17 = v11;
  selfCopy = self;
  [v11 performOnQueue:replyQueue block:v16];

  if (handlerCopy)
  {
    clientProxy2 = [(GKService *)self clientProxy];
    replyQueue2 = [clientProxy2 replyQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10007AE40;
    v14[3] = &unk_100360FA0;
    v15 = handlerCopy;
    [v11 notifyOnQueue:replyQueue2 block:v14];
  }
}

- (void)setFindable:(BOOL)findable handler:(id)handler
{
  handlerCopy = handler;
  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1210, "[GKProfileServicePrivate setFindable:handler:]"];
  v8 = [(GKService *)self transactionGroupWithName:v7];

  context = [v8 context];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007AF80;
  v12[3] = &unk_100362750;
  findableCopy = findable;
  v13 = v8;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = v8;
  [context performBlock:v12];
}

- (void)setPlayerNickname:(id)nickname suggestionsCount:(int64_t)count minSuggestionLength:(int64_t)length maxSuggestionLength:(int64_t)suggestionLength handler:(id)handler
{
  nicknameCopy = nickname;
  handlerCopy = handler;
  if (nicknameCopy)
  {
    v14 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1256, "[GKProfileServicePrivate setPlayerNickname:suggestionsCount:minSuggestionLength:maxSuggestionLength:handler:]"];
    v15 = [(GKService *)self transactionGroupWithName:v14];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10007B53C;
    v24[3] = &unk_1003627A0;
    countCopy = count;
    lengthCopy = length;
    suggestionLengthCopy = suggestionLength;
    v25 = nicknameCopy;
    selfCopy = self;
    v16 = v15;
    v27 = v16;
    [v16 performOnManagedObjectContext:v24];
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10007BA98;
    v21[3] = &unk_100360EB0;
    v22 = v16;
    v23 = handlerCopy;
    v19 = v16;
    [v19 notifyOnQueue:replyQueue block:v21];
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
    (*(handlerCopy + 2))(handlerCopy, &__NSArray0__struct, 0, v19);
  }
}

- (void)getNicknameSuggestions:(int64_t)suggestions minSuggestionLength:(int64_t)length maxSuggestionLength:(int64_t)suggestionLength handler:(id)handler
{
  handlerCopy = handler;
  v30[0] = @"suggestions-count";
  v11 = [NSNumber numberWithInteger:suggestions];
  v31[0] = v11;
  v30[1] = @"min-suggestion-length";
  v12 = [NSNumber numberWithInteger:length];
  v31[1] = v12;
  v30[2] = @"max-suggestion-length";
  v13 = [NSNumber numberWithInteger:suggestionLength];
  v31[2] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:3];

  v15 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1322, "[GKProfileServicePrivate getNicknameSuggestions:minSuggestionLength:maxSuggestionLength:handler:]"];
  v16 = [GKDispatchGroup dispatchGroupWithName:v15];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10007BDE4;
  v26[3] = &unk_100360F00;
  v27 = v14;
  selfCopy = self;
  v17 = v16;
  v29 = v17;
  v18 = v14;
  [v17 perform:v26];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10007BFF4;
  v23[3] = &unk_100360EB0;
  v24 = v17;
  v25 = handlerCopy;
  v21 = v17;
  v22 = handlerCopy;
  [v21 notifyOnQueue:replyQueue block:v23];
}

- (void)getTermsAndConditionsURLWithHandler:(id)handler
{
  handlerCopy = handler;
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
  selfCopy = self;
  v8 = v7;
  v20 = v8;
  v9 = v5;
  [v8 perform:v17];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007C490;
  v14[3] = &unk_100360EB0;
  v15 = v8;
  v16 = handlerCopy;
  v12 = v8;
  v13 = handlerCopy;
  [v12 notifyOnQueue:replyQueue block:v14];
}

- (void)setGlobalFriendListAccess:(int)access handler:(id)handler
{
  handlerCopy = handler;
  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1368, "[GKProfileServicePrivate setGlobalFriendListAccess:handler:]"];
  v8 = [(GKService *)self transactionGroupWithName:v7];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10007C6A8;
  v17[3] = &unk_100362840;
  accessCopy = access;
  v17[4] = self;
  v9 = v8;
  v18 = v9;
  [v9 performOnManagedObjectContext:v17];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007C988;
  v14[3] = &unk_100360EB0;
  v15 = v9;
  v16 = handlerCopy;
  v12 = v9;
  v13 = handlerCopy;
  [v12 notifyOnQueue:replyQueue block:v14];
}

- (void)setArcadeSubscriptionExpiration:(id)expiration handler:(id)handler
{
  expirationCopy = expiration;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1410, "[GKProfileServicePrivate setArcadeSubscriptionExpiration:handler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10007CBA8;
  v19[3] = &unk_100360F00;
  v20 = expirationCopy;
  selfCopy = self;
  v10 = v9;
  v22 = v10;
  v11 = expirationCopy;
  [v10 perform:v19];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007CD30;
  v16[3] = &unk_100360EB0;
  v17 = v10;
  v18 = handlerCopy;
  v14 = v10;
  v15 = handlerCopy;
  [v14 notifyOnQueue:replyQueue block:v16];
}

- (void)setFriendInvitesAllowedFlag:(id)flag source:(unint64_t)source handler:(id)handler
{
  flagCopy = flag;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [NSNumber numberWithUnsignedInteger:source];
    *buf = 138412546;
    v20 = flagCopy;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "GKProfileService: setFriendInvitesAllowedFlag: %@, source: %@", buf, 0x16u);
  }

  v14 = +[NSMutableDictionary dictionary];
  v15 = v14;
  if (source)
  {
    [v14 setObject:flagCopy forKeyedSubscript:@"allow-friend-invites-from-challenges"];
  }

  if ((source & 2) != 0)
  {
    [v15 setObject:flagCopy forKeyedSubscript:@"allow-friend-invites-from-multiplayer-invites"];
  }

  if ([v15 count])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10007CFCC;
    v17[3] = &unk_100362868;
    v18 = handlerCopy;
    [(GKProfileServicePrivate *)self setProfileSettings:v15 handler:v17];
    v16 = v18;
  }

  else
  {
    v16 = [NSError userErrorForCode:17 description:@"At least one source must be selected"];
    (*(handlerCopy + 2))(handlerCopy, v16);
  }
}

- (void)setPrivacyNoticeVersion:(unint64_t)version withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    versionCopy = version;
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
    v12 = [NSNumber numberWithUnsignedInteger:version];
    *buf = 138412290;
    versionCopy = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Syncing the privacy notice version (%@) to the server...", buf, 0xCu);
  }

  v18 = GKAccountPrivacyNoticeVersionKey;
  v13 = [NSNumber numberWithUnsignedInteger:version];
  v19 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007D300;
  v16[3] = &unk_100362868;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [(GKProfileServicePrivate *)self setProfileSettings:v14 handler:v16];
}

- (void)setProfilePrivacy:(int)privacy handler:(id)handler
{
  handlerCopy = handler;
  v7 = @"everyone";
  if (privacy == 2)
  {
    v7 = @"me";
  }

  if (privacy == 1)
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

  clientProxy = [(GKService *)self clientProxy];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10007D6A0;
  v24[3] = &unk_100362890;
  privacyCopy = privacy;
  v25 = v8;
  selfCopy = self;
  v14 = v12;
  v27 = v14;
  [v14 performOnManagedObjectContext:v24];
  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10007D9B8;
  v20[3] = &unk_100360FC8;
  v21 = v14;
  v22 = clientProxy;
  v23 = handlerCopy;
  v17 = handlerCopy;
  v18 = clientProxy;
  v19 = v14;
  [v19 notifyOnQueue:replyQueue block:v20];
}

- (void)setProfileSettings:(id)settings handler:(id)handler
{
  settingsCopy = settings;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1544, "[GKProfileServicePrivate setProfileSettings:handler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10007DC08;
  v19[3] = &unk_100360F00;
  v20 = settingsCopy;
  selfCopy = self;
  v10 = v9;
  v22 = v10;
  v11 = settingsCopy;
  [v10 perform:v19];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007DE08;
  v16[3] = &unk_100360EB0;
  v17 = v10;
  v18 = handlerCopy;
  v14 = v10;
  v15 = handlerCopy;
  [v14 notifyOnQueue:replyQueue block:v16];
}

- (void)invalidateCachedProfileForLocalPlayerWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1571, "[GKProfileServicePrivate invalidateCachedProfileForLocalPlayerWithHandler:]"];
  v6 = [(GKService *)self transactionGroupWithName:v5];

  [v6 performOnManagedObjectContext:&stru_1003628F8];
  if (handlerCopy)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10007E02C;
    v9[3] = &unk_100360FA0;
    v10 = handlerCopy;
    [v6 notifyOnQueue:replyQueue block:v9];
  }
}

- (void)getProfilePrivacyWithHandler:(id)handler
{
  handlerCopy = handler;
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
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007E2D4;
  v14[3] = &unk_100361270;
  v15 = v9;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = v9;
  [v13 notifyOnQueue:replyQueue block:v14];
}

- (void)getContactsIntegrationConsentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007E68C;
  v14[3] = &unk_100361270;
  v15 = v9;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = v9;
  [v13 notifyOnQueue:replyQueue block:v14];
}

- (void)setContactsIntegrationConsent:(int)consent withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    consentCopy = consent;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKProfileService: setContactsIntegrationConsent:%d", buf, 8u);
  }

  v9 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1634, "[GKProfileServicePrivate setContactsIntegrationConsent:withCompletionHandler:]"];
  v10 = [(GKService *)self transactionGroupWithName:v9];

  clientProxy = [(GKService *)self clientProxy];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10007E950;
  v22[3] = &unk_100362840;
  consentCopy2 = consent;
  v22[4] = self;
  v12 = v10;
  v23 = v12;
  [v12 performOnManagedObjectContext:v22];
  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10007EF2C;
  v18[3] = &unk_100360FC8;
  v19 = v12;
  v20 = clientProxy;
  v21 = handlerCopy;
  v15 = handlerCopy;
  v16 = clientProxy;
  v17 = v12;
  [v17 notifyOnQueue:replyQueue block:v18];
}

- (void)updateContactsIntegrationInfoFromLocalPlayerProfile:(id)profile completionHandler:(id)handler
{
  profileCopy = profile;
  handlerCopy = handler;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKProfileServicePrivate updateContactsIntegrationInfoFromLocalPlayerProfile:completionHandler:]", v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKProfileService.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "-[GKProfileServicePrivate updateContactsIntegrationInfoFromLocalPlayerProfile:completionHandler:]", [lastPathComponent UTF8String], 1702);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v14 = +[GKPlayerCredentialController sharedController];
  contactsAssociationID = [profileCopy contactsAssociationID];
  contactsIntegrationConsent = [profileCopy contactsIntegrationConsent];
  serviceLastUpdatedTimestamp = [profileCopy serviceLastUpdatedTimestamp];
  clientProxy = [(GKService *)self clientProxy];
  environment = [clientProxy environment];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10007F1E8;
  v21[3] = &unk_100361CB8;
  v22 = handlerCopy;
  v20 = handlerCopy;
  [v14 setContactAssociationID:contactsAssociationID contactIntegrationConsent:contactsIntegrationConsent serviceLastUpdateTimestamp:serviceLastUpdatedTimestamp forEnvironment:environment forcefully:0 completionHandler:v21];
}

- (void)getGameCenterRelationshipsForContact:(id)contact shouldRefresh:(BOOL)refresh completionHandler:(id)handler
{
  contactCopy = contact;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (contactCopy)
    {
      v10 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1736, "[GKProfileServicePrivate getGameCenterRelationshipsForContact:shouldRefresh:completionHandler:]"];
      v11 = [GKDispatchGroup dispatchGroupWithName:v10];

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10007F4B8;
      v24[3] = &unk_100361670;
      v24[4] = self;
      v25 = contactCopy;
      refreshCopy = refresh;
      v12 = v11;
      v26 = v12;
      [v12 perform:v24];
      clientProxy = [(GKService *)self clientProxy];
      replyQueue = [clientProxy replyQueue];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10007F654;
      v21[3] = &unk_100360EB0;
      v22 = v12;
      v23 = handlerCopy;
      v15 = v12;
      [v15 notifyOnQueue:replyQueue block:v21];
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
      (*(handlerCopy + 2))(handlerCopy, 0, v20);
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

- (void)contactsIntegrationStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  contactsIntegrationController = [(GKProfileServicePrivate *)self contactsIntegrationController];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007F7B4;
  v10[3] = &unk_1003629C0;
  v11 = replyQueue;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = replyQueue;
  [contactsIntegrationController stateWithCompletionHandler:v10];
}

- (void)getContactAssociationIDsForContacts:(id)contacts shouldRefresh:(BOOL)refresh completionHandler:(id)handler
{
  contactsCopy = contacts;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (contactsCopy)
    {
      v10 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1783, "[GKProfileServicePrivate getContactAssociationIDsForContacts:shouldRefresh:completionHandler:]"];
      v11 = [GKDispatchGroup dispatchGroupWithName:v10];

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10007FB50;
      v24[3] = &unk_100361670;
      v24[4] = self;
      v25 = contactsCopy;
      refreshCopy = refresh;
      v12 = v11;
      v26 = v12;
      [v12 perform:v24];
      clientProxy = [(GKService *)self clientProxy];
      replyQueue = [clientProxy replyQueue];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10007FDDC;
      v21[3] = &unk_100360EB0;
      v22 = v12;
      v23 = handlerCopy;
      v15 = v12;
      [v15 notifyOnQueue:replyQueue block:v21];
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
      (*(handlerCopy + 2))(handlerCopy, 0, v20);
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

- (void)getContactsForContactAssociationIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v8 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1828, "[GKProfileServicePrivate getContactsForContactAssociationIDs:completionHandler:]"];
    v9 = [(GKService *)self transactionGroupWithName:v8];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10008006C;
    v19[3] = &unk_100361348;
    v19[4] = self;
    v20 = dsCopy;
    v10 = v9;
    v21 = v10;
    [v10 performOnManagedObjectContext:v19];
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100080114;
    v16[3] = &unk_100360EB0;
    v17 = v10;
    v18 = handlerCopy;
    v13 = v10;
    [v13 notifyOnQueue:replyQueue block:v16];
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

- (void)clearContactsIntegrationCachesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  contactsIntegrationController = [(GKProfileServicePrivate *)self contactsIntegrationController];
  [contactsIntegrationController clearCachesWithCompletionHandler:handlerCopy];
}

- (void)startContactsIntegrationSyncWithOptions:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  contactsIntegrationController = [(GKProfileServicePrivate *)self contactsIntegrationController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008028C;
  v9[3] = &unk_100360FA0;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [contactsIntegrationController startWithOptions:options completion:v9];
}

- (void)startContactsIntegrationIDSSyncForHandles:(id)handles completionHandler:(id)handler
{
  handlesCopy = handles;
  handlerCopy = handler;
  contactsIntegrationController = [(GKProfileServicePrivate *)self contactsIntegrationController];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100080408;
  v11[3] = &unk_100361198;
  v12 = handlesCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = handlesCopy;
  [contactsIntegrationController syncIDSDataForHandles:v10 forcefully:1 completion:v11];
}

- (void)filterForContactIDsSupportingFriendingViaPushFromContactIDs:(id)ds withCompletion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008055C;
  v7[3] = &unk_100362A10;
  selfCopy = self;
  dsCopy = ds;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = dsCopy;
  [(GKProfileServicePrivate *)selfCopy getFriendingViaPushEnabledWithCompletion:v7];
}

- (void)getFriendingViaPushEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  transport = [(GKService *)self transport];
  storeBag = [transport storeBag];

  if (storeBag)
  {
    v15 = GKFriendingViaPushEnabled;
    v7 = [NSArray arrayWithObjects:&v15 count:1];
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100080B60;
    v12[3] = &unk_100362868;
    v13 = completionCopy;
    [storeBag getValuesForKeys:v7 queue:replyQueue completion:v12];
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

    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (void)getProfilesForPlayerIDs:(id)ds fetchOptions:(unint64_t)options handler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v10 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1930, "[GKProfileServicePrivate getProfilesForPlayerIDs:fetchOptions:handler:]"];
  v11 = [GKDispatchGroup dispatchGroupWithName:v10];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100080E20;
  v21[3] = &unk_100362A60;
  v21[4] = self;
  v22 = dsCopy;
  v12 = v11;
  v23 = v12;
  optionsCopy = options;
  v13 = dsCopy;
  [v12 perform:v21];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000810B4;
  v18[3] = &unk_100361270;
  v19 = v12;
  v20 = handlerCopy;
  v16 = handlerCopy;
  v17 = v12;
  [v17 notifyOnQueue:replyQueue block:v18];
}

- (void)getProfilesForPlayerIDs:(id)ds playerIdToContactAssociationIdMap:(id)map handler:(id)handler
{
  dsCopy = ds;
  mapCopy = map;
  handlerCopy = handler;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 1975, "[GKProfileServicePrivate getProfilesForPlayerIDs:playerIdToContactAssociationIdMap:handler:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000813AC;
  v23[3] = &unk_100361F90;
  v23[4] = self;
  v24 = dsCopy;
  v13 = v12;
  v25 = v13;
  v26 = mapCopy;
  v14 = mapCopy;
  v15 = dsCopy;
  [v13 perform:v23];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10008166C;
  v20[3] = &unk_100361270;
  v21 = v13;
  v22 = handlerCopy;
  v18 = handlerCopy;
  v19 = v13;
  [v19 notifyOnQueue:replyQueue block:v20];
}

- (BOOL)checkExistingProfileIsValidForPlayer:(id)player context:(id)context
{
  playerCopy = player;
  contextCopy = context;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100081888;
  v10[3] = &unk_100362AB0;
  v7 = playerCopy;
  v11 = v7;
  v8 = contextCopy;
  v12 = v8;
  v13 = &v14;
  [v8 performBlockAndWait:v10];
  LOBYTE(contextCopy) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return contextCopy;
}

- (void)loadProfileForPlayer:(id)player pieces:(unsigned __int8)pieces context:(id)context handler:(id)handler
{
  piecesCopy = pieces;
  playerCopy = player;
  contextCopy = context;
  handlerCopy = handler;
  v13 = handlerCopy;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = 0;
  if (playerCopy)
  {
    v36 = playerCopy;
    v14 = [NSArray arrayWithObjects:&v36 count:1];
    v15 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 2042, "[GKProfileServicePrivate loadProfileForPlayer:pieces:context:handler:]"];
    v16 = [GKDispatchGroup dispatchGroupWithName:v15];

    v17 = [GKProfileService profileRequestForPlayerIDs:v14 pieces:piecesCopy];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100081C94;
    v27[3] = &unk_100362B28;
    v27[4] = self;
    v28 = playerCopy;
    v29 = contextCopy;
    v18 = v17;
    v30 = v18;
    v19 = v14;
    v34 = piecesCopy;
    v31 = v19;
    v33 = v35;
    v20 = v16;
    v32 = v20;
    [v20 perform:v27];
    if (v13)
    {
      clientProxy = [(GKService *)self clientProxy];
      replyQueue = [clientProxy replyQueue];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100082184;
      v23[3] = &unk_1003618D8;
      v25 = v13;
      v26 = v35;
      v24 = v20;
      [v24 notifyOnQueue:replyQueue block:v23];
    }
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0.0);
  }

  _Block_object_dispose(v35, 8);
}

- (void)preloadInstalledGamesScopedPlayerIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100082360;
  v13[3] = &unk_100360FA0;
  completionCopy = completion;
  v14 = completionCopy;
  v8 = objc_retainBlock(v13);
  if ([dsCopy count])
  {
    v9 = [(GKService *)GKGameServicePrivate serviceFromService:self];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100082378;
    v10[3] = &unk_100362B78;
    v12 = v8;
    v10[4] = self;
    v11 = dsCopy;
    [v9 fetchInstalledGameIdCacheWithHandler:v10];
  }

  else
  {
    (v8[2])(v8);
  }
}

+ (id)scopedIDsFetchRequestWithPlayerIDs:(id)ds gameBundleIDs:(id)iDs
{
  iDsCopy = iDs;
  dsCopy = ds;
  v7 = +[GKCDScopedIds _gkFetchRequest];
  iDsCopy = [NSPredicate predicateWithFormat:@"playerId IN %@ AND gameBundleId IN %@ AND fetchedOn != nil", dsCopy, iDsCopy];

  [v7 setPredicate:iDsCopy];

  return v7;
}

- (id)filterPlayerIDsThatNeedPreloading:(id)preloading gameBundleIDs:(id)ds moc:(id)moc
{
  preloadingCopy = preloading;
  dsCopy = ds;
  mocCopy = moc;
  v10 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v10, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v11 = +[NSThread callStackSymbols];
    v12 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKProfileServicePrivate filterPlayerIDsThatNeedPreloading:gameBundleIDs:moc:]", v11];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKProfileService.m"];
    lastPathComponent = [v13 lastPathComponent];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v12, "-[GKProfileServicePrivate filterPlayerIDsThatNeedPreloading:gameBundleIDs:moc:]", [lastPathComponent UTF8String], 2196);

    [NSException raise:@"GameKit Exception" format:@"%@", v15];
  }

  v16 = [GKProfileServicePrivate scopedIDsFetchRequestWithPlayerIDs:preloadingCopy gameBundleIDs:dsCopy];
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
  name = [v17 name];
  v23 = [NSExpression expressionForVariable:name];
  v24 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"%@ >= %d", v23, [dsCopy count]);
  [v16 setHavingPredicate:v24];

  v36 = 0;
  v25 = [mocCopy executeFetchRequest:v16 error:&v36];
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
    v28 = [preloadingCopy filteredArrayUsingPredicate:v32];
  }

  return v28;
}

- (id)fetchScopedIDsCacheKeysWithPlayerIDs:(id)ds gameBundleIDs:(id)iDs moc:(id)moc
{
  dsCopy = ds;
  iDsCopy = iDs;
  mocCopy = moc;
  v10 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v10, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v11 = +[NSThread callStackSymbols];
    v12 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKProfileServicePrivate fetchScopedIDsCacheKeysWithPlayerIDs:gameBundleIDs:moc:]", v11];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKProfileService.m"];
    lastPathComponent = [v13 lastPathComponent];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v12, "-[GKProfileServicePrivate fetchScopedIDsCacheKeysWithPlayerIDs:gameBundleIDs:moc:]", [lastPathComponent UTF8String], 2225);

    [NSException raise:@"GameKit Exception" format:@"%@", v15];
  }

  v16 = [GKProfileServicePrivate scopedIDsFetchRequestWithPlayerIDs:dsCopy gameBundleIDs:iDsCopy];
  [v16 setPropertiesToFetch:&off_100383388];
  [v16 setResultType:2];
  v21 = 0;
  v17 = [mocCopy executeFetchRequest:v16 error:&v21];
  v18 = [v17 _gkMapWithBlock:&stru_100362C00];
  v19 = [NSSet setWithArray:v18];

  return v19;
}

- (void)loadScopedPlayerIDs:(id)ds gameBundleIDs:(id)iDs handler:(id)handler
{
  iDsCopy = iDs;
  handlerCopy = handler;
  dsCopy = ds;
  v11 = [NSPredicate predicateWithBlock:&stru_100362C40];
  v12 = [dsCopy filteredArrayUsingPredicate:v11];

  if ([v12 count] && objc_msgSend(iDsCopy, "count"))
  {
    v13 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 2254, "[GKProfileServicePrivate loadScopedPlayerIDs:gameBundleIDs:handler:]"];
    v14 = [(GKService *)self transactionGroupWithName:v13];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10008338C;
    v27[3] = &unk_100361348;
    v15 = v12;
    v28 = v15;
    v16 = iDsCopy;
    v29 = v16;
    v17 = v14;
    v30 = v17;
    [v17 performOnManagedObjectContext:v27];
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100083440;
    v21[3] = &unk_100362C68;
    v22 = v17;
    v23 = v15;
    v24 = v16;
    selfCopy = self;
    v26 = handlerCopy;
    v20 = v17;
    [v20 notifyOnQueue:replyQueue block:v21];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, &__NSArray0__struct, 0);
  }
}

+ (id)makeGKScopedIDsFromInternal:(id)internal
{
  internalCopy = internal;
  gamePlayerId = [internalCopy gamePlayerId];
  if (![gamePlayerId length])
  {
    v10 = 0;
    goto LABEL_5;
  }

  teamPlayerId = [internalCopy teamPlayerId];
  v6 = [teamPlayerId length];

  if (v6)
  {
    gamePlayerId = [internalCopy playerId];
    gameBundleId = [internalCopy gameBundleId];
    gamePlayerId2 = [internalCopy gamePlayerId];
    teamPlayerId2 = [internalCopy teamPlayerId];
    v10 = [GKScopedIDs makePersistentWithPlayerID:gamePlayerId gameBundleID:gameBundleId gamePlayerID:gamePlayerId2 teamPlayerID:teamPlayerId2];

LABEL_5:
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

+ (id)loadCachedScopedPlayerIDs:(id)ds gameBundleIDs:(id)iDs error:(id *)error moc:(id)moc
{
  dsCopy = ds;
  iDsCopy = iDs;
  mocCopy = moc;
  v12 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v12, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v13 = mocCopy;
    v14 = +[NSThread callStackSymbols];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKProfileServicePrivate loadCachedScopedPlayerIDs:gameBundleIDs:error:moc:]", v14);
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKProfileService.m"];
    lastPathComponent = [v16 lastPathComponent];
    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v15, "+[GKProfileServicePrivate loadCachedScopedPlayerIDs:gameBundleIDs:error:moc:]", [lastPathComponent UTF8String], 2328);

    mocCopy = v13;
    [NSException raise:@"GameKit Exception" format:@"%@", v18];
  }

  if ([dsCopy count] && objc_msgSend(iDsCopy, "count"))
  {
    v19 = [self scopedIDsFetchRequestWithPlayerIDs:dsCopy gameBundleIDs:iDsCopy];
    v42 = 0;
    v20 = [mocCopy executeFetchRequest:v19 error:&v42];
    v21 = v42;
    v22 = v21;
    if (v21)
    {
      if (error)
      {
        v23 = v21;
        *error = v22;
      }

      v24 = &__NSArray0__struct;
    }

    else
    {
      v34 = mocCopy;
      v36 = dsCopy;
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
      dsCopy = v36;
      mocCopy = v34;
      v22 = 0;
    }
  }

  else
  {
    v24 = &__NSArray0__struct;
  }

  return v24;
}

+ (id)cacheKeyForScopedIDs:(id)ds
{
  dsCopy = ds;
  gameBundleID = [dsCopy gameBundleID];
  playerID = [dsCopy playerID];

  v6 = [GKProfileServicePrivate cacheKeyForScopedIDsWithGameBundleID:gameBundleID playerID:playerID];

  return v6;
}

- (void)fetchAndCacheScopedPlayerIDs:(id)ds gameBundleIDs:(id)iDs cachedScopedIDs:(id)scopedIDs handler:(id)handler
{
  handlerCopy = handler;
  iDsCopy = iDs;
  dsCopy = ds;
  v13 = [scopedIDs _gkMapWithBlock:&stru_100362CD0];
  v14 = [NSSet setWithArray:v13];

  [(GKProfileServicePrivate *)self fetchAndCacheScopedPlayerIDs:dsCopy gameBundleIDs:iDsCopy scopedIDsCacheKeys:v14 cacheOnly:0 handler:handlerCopy];
}

- (void)fetchAndCacheScopedPlayerIDs:(id)ds gameBundleIDs:(id)iDs scopedIDsCacheKeys:(id)keys cacheOnly:(BOOL)only handler:(id)handler
{
  dsCopy = ds;
  keysCopy = keys;
  handlerCopy = handler;
  v14 = [GKScopedIDsUtils filterUnsupportedGameBundleIDs:iDs];
  if ([v14 count])
  {
    v32 = dsCopy;
    v15 = [GKScopedIDsUtils batchRequestWithPlayerIDs:dsCopy gameBundleIDs:v14 desiredSize:1000];
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
          v39 = keysCopy;
          onlyCopy = only;
          v40 = v17;
          [v40 perform:v38];
        }

        v20 = [v18 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v20);
    }

    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100084538;
    v34[3] = &unk_100362D20;
    onlyCopy2 = only;
    v35 = v17;
    v36 = handlerCopy;
    v26 = v17;
    v27 = handlerCopy;
    [v26 notifyOnQueue:replyQueue block:v34];

    dsCopy = v32;
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

    clientProxy2 = [(GKService *)self clientProxy];
    replyQueue2 = [clientProxy2 replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100084304;
    block[3] = &unk_100360FA0;
    v47 = handlerCopy;
    v18 = handlerCopy;
    dispatch_async(replyQueue2, block);

    v27 = v47;
  }
}

- (void)fetchAndCacheScopedPlayerIDsForRequest:(id)request scopedIDsCacheKeys:(id)keys cacheOnly:(BOOL)only handler:(id)handler
{
  keysCopy = keys;
  handlerCopy = handler;
  requestCopy = request;
  v13 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy = [(GKService *)self clientProxy];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100084864;
  v17[3] = &unk_100362D70;
  v18 = keysCopy;
  v19 = handlerCopy;
  v17[4] = self;
  onlyCopy = only;
  v15 = keysCopy;
  v16 = handlerCopy;
  [v13 issueRequest:requestCopy bagKey:@"gk-get-scoped-ids" clientProxy:clientProxy handler:v17];
}

- (void)clearScopedIdsCacheWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKProfileService.m", 2509, "[GKProfileServicePrivate clearScopedIdsCacheWithHandler:]"];
  v6 = [(GKService *)self transactionGroupWithName:v5];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100085064;
  v15[3] = &unk_100362920;
  v7 = v6;
  v16 = v7;
  [v7 performOnManagedObjectContext:v15];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100085138;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = handlerCopy;
  v10 = v7;
  v11 = handlerCopy;
  [v10 notifyOnQueue:replyQueue block:v12];
}

+ (void)verifyAndAssociatePlayerID:(id)d withGameScopedPlayerID:(id)iD andTeamScopedPlayerID:(id)playerID forGameBundleID:(id)bundleID usingMoc:(id)moc
{
  dCopy = d;
  iDCopy = iD;
  playerIDCopy = playerID;
  bundleIDCopy = bundleID;
  mocCopy = moc;
  if ([bundleIDCopy length] && objc_msgSend(dCopy, "length") && objc_msgSend(iDCopy, "length") && objc_msgSend(playerIDCopy, "length"))
  {
    v64 = dCopy;
    v16 = [NSArray arrayWithObjects:&v64 count:1];
    v63 = bundleIDCopy;
    v17 = [NSArray arrayWithObjects:&v63 count:1];
    v62 = 0;
    v18 = [GKProfileServicePrivate loadCachedScopedPlayerIDs:v16 gameBundleIDs:v17 error:&v62 moc:mocCopy];
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
        v66 = dCopy;
        v67 = 2112;
        v68 = bundleIDCopy;
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
      v47 = mocCopy;
      v57 = v47;
      v46 = dCopy;
      v58 = v46;
      v50 = bundleIDCopy;
      v59 = v50;
      v24 = iDCopy;
      v60 = v24;
      v25 = playerIDCopy;
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
            result = [v32 result];
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
      v66 = dCopy;
      v67 = 2112;
      v68 = bundleIDCopy;
      v69 = 2112;
      v70 = iDCopy;
      v71 = 2112;
      v72 = playerIDCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Skip verifying scoped ID association due to insufficient info, playerID: %@, gameBundleID: %@, gameScopedPlayerID: %@, teamScopedPlayerID: %@", buf, 0x2Au);
    }
  }
}

- (void)getContextualPromptStatesWithCompletion:(id)completion
{
  completionCopy = completion;
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
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100085D90;
  v14[3] = &unk_100360EB0;
  v15 = v9;
  v16 = completionCopy;
  v12 = v9;
  v13 = completionCopy;
  [v12 notifyOnQueue:replyQueue block:v14];
}

+ (id)parseContactAssociationIDsFromRelationships:(id)relationships contactAssociationIDMap:(id)map contacts:(id)contacts
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