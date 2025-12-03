@interface GKPlayerProfileCacheObject
+ (id)_familiarityLookup;
+ (id)filterPlayerIDs:(id)ds familiarity:(int)familiarity includeSelf:(BOOL)self;
+ (id)localPlayerInManagedObjectContext:(id)context;
+ (id)playerProfileWithPlayerID:(id)d inManagedObjectContext:(id)context;
+ (id)playerProfilesWithPlayerIDs:(id)ds inManagedObjectContext:(id)context;
+ (id)playerProfilesWithPlayers:(id)players inManagedObjectContext:(id)context;
+ (id)playersByFamiliarity:(id)familiarity;
+ (id)profileForPlayer:(id)player context:(id)context;
+ (id)selfPlayerID;
+ (int)familiarityForPlayerID:(id)d;
+ (unsigned)piecesToLoadForFamiliarity:(int)familiarity;
+ (void)addFamiliarPlayerIDs:(id)ds familiarity:(int)familiarity;
+ (void)buildFamiliarilyLookupForProfile:(id)profile;
+ (void)removeFamiliarPlayerIDs:(id)ds familiarity:(int)familiarity;
+ (void)setFamiliarPlayerIDs:(id)ds familiarity:(int)familiarity;
- (BOOL)isFindable;
- (BOOL)isLocalPlayer;
- (BOOL)isUnderage;
- (BOOL)isValid;
- (id)internalRepresentation;
- (id)internalRepresentationWithPieces:(unsigned __int8)pieces;
- (id)updateImagesWithImageURLs:(id)ls;
- (int)familiarity;
- (void)clearImages;
- (void)deleteCachedAvatars;
- (void)deleteCachedImage:(id)image;
- (void)expireRecentMatchesWithGame:(id)game;
- (void)invalidate;
- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date pieces:(unsigned __int8)pieces;
@end

@implementation GKPlayerProfileCacheObject

- (BOOL)isValid
{
  v6.receiver = self;
  v6.super_class = GKPlayerProfileCacheObject;
  if (![(GKExpiringCacheObject *)&v6 isValid]|| ([(GKPlayerProfileCacheObject *)self availablePieces]& 1) == 0)
  {
    return 0;
  }

  alias = [(GKPlayerProfileCacheObject *)self alias];
  v3 = alias != 0;

  return v3;
}

- (void)invalidate
{
  [(GKPlayerProfileCacheObject *)self setAvailablePieces:0];
  v3.receiver = self;
  v3.super_class = GKPlayerProfileCacheObject;
  [(GKExpiringCacheObject *)&v3 invalidate];
}

- (BOOL)isUnderage
{
  v5.receiver = self;
  v5.super_class = GKPlayerProfileCacheObject;
  v2 = [(GKPlayerProfileCacheObject *)&v5 primitiveValueForKey:@"underage"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isFindable
{
  v5.receiver = self;
  v5.super_class = GKPlayerProfileCacheObject;
  v2 = [(GKPlayerProfileCacheObject *)&v5 primitiveValueForKey:@"findable"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)clearImages
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKPlayerProfileCacheObject clearImages]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKPlayerProfileCacheObject clearImages]", [lastPathComponent UTF8String], 722);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  if (([(GKPlayerProfileCacheObject *)self conformsToProtocol:&OBJC_PROTOCOL___GKCacheObjectImageProtocol]& 1) == 0)
  {
    v9 = [NSString stringWithFormat:@"Assertion failed"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent2 = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ([self conformsToProtocol:@protocol(GKCacheObjectImageProtocol)])\n[%s (%s:%d)]", v9, "-[GKPlayerProfileCacheObject clearImages]", [lastPathComponent2 UTF8String], 723);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  imageCacheKeyPathsByKey = [(GKCacheObject *)self imageCacheKeyPathsByKey];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100125264;
  v14[3] = &unk_100367928;
  v14[4] = self;
  [imageCacheKeyPathsByKey enumerateKeysAndObjectsUsingBlock:v14];

  [(GKPlayerProfileCacheObject *)self deleteCachedAvatars];
}

- (void)deleteCachedAvatars
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_10028FF28();
  }

  v4 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v4, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v5 = +[NSThread callStackSymbols];
    v6 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKPlayerProfileCacheObject deleteCachedAvatars]", v5];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v6, "-[GKPlayerProfileCacheObject deleteCachedAvatars]", [lastPathComponent UTF8String], 740);

    [NSException raise:@"GameKit Exception" format:@"%@", v9];
  }

  playerID = [(GKPlayerProfileCacheObject *)self playerID];
  v11 = GKAvatarSubdirectoryNameForPlayerID();

  [(GKPlayerProfileCacheObject *)self deleteCachedImage:v11];
}

- (void)deleteCachedImage:(id)image
{
  imageCopy = image;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_10028FF64();
  }

  v6 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v6, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v7 = +[NSThread callStackSymbols];
    v8 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKPlayerProfileCacheObject deleteCachedImage:]", v7];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v9 lastPathComponent];
    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v8, "-[GKPlayerProfileCacheObject deleteCachedImage:]", [lastPathComponent UTF8String], 751);

    [NSException raise:@"GameKit Exception" format:@"%@", v11];
  }

  v12 = [NSURL URLWithString:imageCopy];
  if ([v12 isFileURL])
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_10028FFA0();
    }

    v14 = +[NSFileManager defaultManager];
    v15 = [v14 removeItemAtURL:v12 error:0];

    if (v15)
    {
      if (!os_log_GKGeneral)
      {
        v16 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
      {
        sub_10028FCDC();
      }
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = GKPlayerProfileCacheObject;
    [(GKCacheObject *)&v17 deleteCachedImage:imageCopy];
  }
}

+ (id)localPlayerInManagedObjectContext:(id)context
{
  contextCopy = context;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKPlayerProfileCacheObject localPlayerInManagedObjectContext:]", v6);
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "+[GKPlayerProfileCacheObject localPlayerInManagedObjectContext:]", [lastPathComponent UTF8String], 769);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v11 = objc_getAssociatedObject(contextCopy, @"GKLocalPlayerObjectIDKey");
  v12 = [contextCopy objectRegisteredForID:v11];
  if (!v12)
  {
    selfPlayerID = [self selfPlayerID];
    if (selfPlayerID)
    {
      v14 = [NSPredicate predicateWithFormat:@"playerID = %@", selfPlayerID];
      v12 = [(GKCacheObject *)GKPlayerProfileCacheObject firstObjectMatchingPredicate:v14 context:contextCopy];

      objc_setAssociatedObject(contextCopy, @"GKLocalPlayerObjectIDKey", v11, 1);
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (id)playerProfileWithPlayerID:(id)d inManagedObjectContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKPlayerProfileCacheObject playerProfileWithPlayerID:inManagedObjectContext:]", v9);
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "+[GKPlayerProfileCacheObject playerProfileWithPlayerID:inManagedObjectContext:]", [lastPathComponent UTF8String], 784);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  if (dCopy && ([self selfPlayerID], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(dCopy, "isEqualToString:", v14), v14, !v15))
  {
    v20 = dCopy;
    v17 = [NSArray arrayWithObjects:&v20 count:1];
    v18 = [self playerProfilesWithPlayerIDs:v17 inManagedObjectContext:contextCopy];
    lastObject = [v18 lastObject];
  }

  else
  {
    lastObject = [self localPlayerInManagedObjectContext:contextCopy];
  }

  return lastObject;
}

+ (id)profileForPlayer:(id)player context:(id)context
{
  playerCopy = player;
  contextCopy = context;
  playerID = [playerCopy playerID];

  if (playerID)
  {
    playerID2 = [playerCopy playerID];
    v9 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:playerID2 inManagedObjectContext:contextCopy];
  }

  else
  {
    v9 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:contextCopy];
  }

  return v9;
}

+ (id)playerProfilesWithPlayers:(id)players inManagedObjectContext:(id)context
{
  contextCopy = context;
  v7 = [players _gkFilterWithBlock:&stru_100367950];
  v8 = [self playerProfilesWithPlayerIDs:v7 inManagedObjectContext:contextCopy];

  return v8;
}

+ (id)playerProfilesWithPlayerIDs:(id)ds inManagedObjectContext:(id)context
{
  dsCopy = ds;
  contextCopy = context;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_100290010();
  }

  v9 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v9, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v10 = +[NSThread callStackSymbols];
    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKPlayerProfileCacheObject playerProfilesWithPlayerIDs:inManagedObjectContext:]", v10);
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v11, "+[GKPlayerProfileCacheObject playerProfilesWithPlayerIDs:inManagedObjectContext:]", [lastPathComponent UTF8String], 813);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  v15 = [self uniqueObjectIDLookupWithContext:contextCopy];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100125E18;
  v19[3] = &unk_100367978;
  v20 = contextCopy;
  selfCopy = self;
  v16 = contextCopy;
  v17 = [v15 uniqueObjectsForKeys:dsCopy context:v16 newObject:v19];

  return v17;
}

- (id)updateImagesWithImageURLs:(id)ls
{
  lsCopy = ls;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_10029004C();
  }

  v6 = dispatch_get_current_queue();
  v7 = &_sScA15unownedExecutorScevgTj_ptr;
  if (dispatch_queue_get_specific(v6, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKPlayerProfileCacheObject updateImagesWithImageURLs:]", v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v9, "-[GKPlayerProfileCacheObject updateImagesWithImageURLs:]", [lastPathComponent UTF8String], 830);

    v7 = &_sScA15unownedExecutorScevgTj_ptr;
    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  if (([(GKPlayerProfileCacheObject *)self conformsToProtocol:&OBJC_PROTOCOL___GKCacheObjectImageProtocol]& 1) == 0)
  {
    v13 = [NSString stringWithFormat:@"Assertion failed"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent2 = [v14 lastPathComponent];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ([self conformsToProtocol:@protocol(GKCacheObjectImageProtocol)])\n[%s (%s:%d)]", v13, "-[GKPlayerProfileCacheObject updateImagesWithImageURLs:]", [lastPathComponent2 UTF8String], 831);

    [v7[171] raise:@"GameKit Exception" format:{@"%@", v16}];
  }

  v17 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [lsCopy count]);
  v18 = [lsCopy objectForKeyedSubscript:@"template"];
  v19 = [(GKPlayerProfileCacheObject *)self valueForKeyPath:@"imageTemplate"];
  v20 = v19;
  if (v19 != v18 && ([v19 isEqualToString:v18] & 1) == 0)
  {
    [(GKPlayerProfileCacheObject *)self clearImages];
    [v17 addObject:@"template"];
    [(GKPlayerProfileCacheObject *)self setValue:v18 forKeyPath:@"imageTemplate"];
  }

  return v17;
}

- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date pieces:(unsigned __int8)pieces
{
  piecesCopy = pieces;
  representationCopy = representation;
  dateCopy = date;
  v9 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v9, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v10 = +[NSThread callStackSymbols];
    v11 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKPlayerProfileCacheObject updateWithServerRepresentation:expirationDate:pieces:]", v10];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v11, "-[GKPlayerProfileCacheObject updateWithServerRepresentation:expirationDate:pieces:]", [lastPathComponent UTF8String], 854);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  v77.receiver = self;
  v77.super_class = GKPlayerProfileCacheObject;
  [(GKExpiringCacheObject *)&v77 updateWithServerRepresentation:representationCopy expirationDate:dateCopy];
  if (representationCopy)
  {
    v15 = [representationCopy objectForKey:GKPlayerIDKey];
    v73 = v15;
    if (v15)
    {
      [(GKPlayerProfileCacheObject *)self setPlayerID:v15];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v16 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
      {
        sub_100290088();
      }
    }

    v17 = [representationCopy objectForKeyedSubscript:GKAliasKey];
    [(GKPlayerProfileCacheObject *)self setAlias:v17];

    v18 = [representationCopy objectForKeyedSubscript:GKPlayerStatusKey];
    [(GKPlayerProfileCacheObject *)self setStatus:v18];

    v19 = [representationCopy objectForKeyedSubscript:@"pb-account"];
    -[GKPlayerProfileCacheObject setPurpleBuddyAccount:](self, "setPurpleBuddyAccount:", [v19 BOOLValue]);

    v20 = [representationCopy objectForKeyedSubscript:GKUnderageKey];
    v21 = v20;
    if (v20)
    {
      -[GKPlayerProfileCacheObject setUnderage:](self, "setUnderage:", [v20 BOOLValue]);
    }

    v22 = [representationCopy objectForKeyedSubscript:GKFindableKey];

    if (v22)
    {
      -[GKPlayerProfileCacheObject setFindable:](self, "setFindable:", [v22 BOOLValue]);
    }

    if ([(GKPlayerProfileCacheObject *)self isLocalPlayer])
    {
      photoPendingExpirationDate = [(GKPlayerProfileCacheObject *)self photoPendingExpirationDate];
      [photoPendingExpirationDate timeIntervalSinceNow];
      v25 = v24;

      if (v25 < 0.0)
      {
        v26 = [representationCopy objectForKey:GKPhotoPendingKey];
        -[GKPlayerProfileCacheObject setPhotoPending:](self, "setPhotoPending:", [v26 BOOLValue]);
      }

      if ([(GKPlayerProfileCacheObject *)self photoPending])
      {
        imageURLDictionary = [(GKCacheObject *)self imageURLDictionary];
        if ([imageURLDictionary count])
        {
          v76[0] = _NSConcreteStackBlock;
          v76[1] = 3221225472;
          v76[2] = sub_100126BD8;
          v76[3] = &unk_1003679A0;
          v76[4] = self;
          [imageURLDictionary enumerateKeysAndObjectsUsingBlock:v76];
        }

        else
        {
          [(GKPlayerProfileCacheObject *)self setPhotoPending:0];
        }
      }

      [GKContactsIntegrationUserSettings applySettingsToObject:self fromResults:representationCopy];
    }

    v28 = [representationCopy objectForKeyedSubscript:GKPrivacySettingsKey];
    v29 = v28;
    if (v28)
    {
      v30 = [v28 objectForKeyedSubscript:GKPrivacySettingsFriendsKey];
      [(GKPlayerProfileCacheObject *)self setFriendsVisibility:sub_100126C90(v30, v30)];

      v31 = [v29 objectForKeyedSubscript:GKPrivacySettingsAchievementsKey];
      [(GKPlayerProfileCacheObject *)self setAchievementsVisibility:sub_100126C90(v31, v31)];

      v32 = [v29 objectForKeyedSubscript:GKPrivacySettingsGamesPlayedKey];
      [(GKPlayerProfileCacheObject *)self setGamesPlayedVisibility:sub_100126C90(v32, v32)];
    }

    else
    {
      [(GKPlayerProfileCacheObject *)self setFriendsVisibility:2];
      [(GKPlayerProfileCacheObject *)self setAchievementsVisibility:2];
      [(GKPlayerProfileCacheObject *)self setGamesPlayedVisibility:2];
    }

    v33 = [representationCopy objectForKeyedSubscript:GKGlobalFriendListAccessKey];
    [(GKPlayerProfileCacheObject *)self setGlobalFriendListAccess:sub_100126D04(v33, v33)];

    v34 = [representationCopy objectForKeyedSubscript:GKIsArcadeSubscriberKey];
    v71 = v34;
    if (v34)
    {
      bOOLValue = [v34 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v74 = dateCopy;
    [(GKPlayerProfileCacheObject *)self setIsArcadeSubscriber:bOOLValue];
    v36 = [representationCopy objectForKey:GKPhotoURLsKey];
    if (v36 && ([(GKPlayerProfileCacheObject *)self photoPending]& 1) == 0)
    {
      v37 = [(GKPlayerProfileCacheObject *)self updateImagesWithImageURLs:v36];
    }

    v72 = v22;
    v38 = [v36 objectForKeyedSubscript:GKAvatarTypeKey];
    if (v38)
    {
      [(GKPlayerProfileCacheObject *)self setAvatarType:v38];
    }

    v39 = [representationCopy objectForKeyedSubscript:@"avatar"];
    v40 = [GKCDAvatarArtwork alloc];
    managedObjectContext = [(GKPlayerProfileCacheObject *)self managedObjectContext];
    v42 = [(GKCDAvatarArtwork *)v40 initWithContext:managedObjectContext];

    v43 = [v39 objectForKeyedSubscript:@"type"];
    [(GKCDAvatarArtwork *)v42 setType:v43];

    v44 = [v39 objectForKeyedSubscript:@"artwork"];
    managedObjectContext2 = [(GKPlayerProfileCacheObject *)self managedObjectContext];
    v70 = v44;
    v46 = [GKCDArtwork artworkFromServerRepresentation:v44 moc:managedObjectContext2];

    v69 = v46;
    [(GKCDAvatarArtwork *)v42 setArtwork:v46];
    [(GKPlayerProfileCacheObject *)self setAvatarArtwork:v42];
    v47 = [representationCopy objectForKeyedSubscript:GKFriendBiDirectionalKey];
    v48 = [representationCopy objectForKeyedSubscript:GKFriendPlayedWithKey];
    v49 = [representationCopy objectForKeyedSubscript:GKFriendPlayedNearbyKey];
    v67 = v49;
    v68 = v48;
    if (v47)
    {
      v50 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v47 integerValue] | (2 * objc_msgSend(v48, "integerValue")) | (4 * objc_msgSend(v49, "integerValue")));
      [(GKPlayerProfileCacheObject *)self setFriendLevel:v50];

      v51 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v52 = GKOSLoggers();
        v51 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        sub_1002900C4(v51, self);
      }
    }

    else
    {
      firstName = [(GKPlayerProfileCacheObject *)self firstName];

      if (firstName)
      {
        v54 = &off_100382628;
      }

      else
      {
        v54 = &off_100382610;
      }

      [(GKPlayerProfileCacheObject *)self setFriendLevel:v54];
    }

    v55 = [representationCopy objectForKey:GKNumberOfFriendsKey];
    integerValue = [v55 integerValue];

    if (integerValue != [(GKPlayerProfileCacheObject *)self numberOfFriends])
    {
      [(GKPlayerProfileCacheObject *)self setNumberOfFriends:integerValue];
    }

    v57 = [representationCopy objectForKey:GKNumberOfGamesPlayedKey];
    -[GKPlayerProfileCacheObject setNumberOfGames:](self, "setNumberOfGames:", [v57 integerValue]);

    v58 = [representationCopy objectForKey:GKNumberOfAchievementsKey];
    -[GKPlayerProfileCacheObject setNumberOfAchievements:](self, "setNumberOfAchievements:", [v58 integerValue]);

    v59 = [representationCopy objectForKey:GKNumberOfAchievementPointsKey];
    -[GKPlayerProfileCacheObject setNumberOfAchievementPoints:](self, "setNumberOfAchievementPoints:", [v59 integerValue]);

    if ((piecesCopy & 0x10) != 0)
    {
      v60 = [representationCopy objectForKey:GKNumberOfFriendsInCommonKey];
      -[GKPlayerProfileCacheObject setNumberOfFriendsInCommon:](self, "setNumberOfFriendsInCommon:", [v60 integerValue]);

      v61 = [representationCopy objectForKey:GKNumberOfGamesInCommonKey];
      -[GKPlayerProfileCacheObject setNumberOfGamesInCommon:](self, "setNumberOfGamesInCommon:", [v61 integerValue]);
    }

    v62 = [representationCopy objectForKeyedSubscript:@"allow-friend-invites-from-challenges"];
    -[GKPlayerProfileCacheObject setAllowChallengeFriendInvites:](self, "setAllowChallengeFriendInvites:", [v62 isEqualToString:@"allowed"]);

    v63 = [representationCopy objectForKeyedSubscript:@"allow-friend-invites-from-multiplayer-invites"];
    -[GKPlayerProfileCacheObject setAllowMultiplayerFriendInvites:](self, "setAllowMultiplayerFriendInvites:", [v63 isEqualToString:@"allowed"]);

    v64 = [representationCopy objectForKeyedSubscript:GKIsChallengeable];
    -[GKPlayerProfileCacheObject setIsChallengeable:](self, "setIsChallengeable:", [v64 BOOLValue]);

    v65 = [representationCopy objectForKeyedSubscript:GKSupportsMultiplayerActivities];
    -[GKPlayerProfileCacheObject setSupportsMultiplayerActivities:](self, "setSupportsMultiplayerActivities:", [v65 BOOLValue]);

    if ((piecesCopy & 0x80) != 0)
    {
      v66 = [representationCopy objectForKeyedSubscript:@"can-receive-friend-invitation"];
      -[GKPlayerProfileCacheObject setAllowReceivingFriendInvites:](self, "setAllowReceivingFriendInvites:", [v66 BOOLValue]);
    }

    [(GKPlayerProfileCacheObject *)self setAvailablePieces:piecesCopy];

    dateCopy = v74;
  }
}

- (id)internalRepresentationWithPieces:(unsigned __int8)pieces
{
  v4 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v4, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v5 = +[NSThread callStackSymbols];
    v6 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKPlayerProfileCacheObject internalRepresentationWithPieces:]", v5];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v6, "-[GKPlayerProfileCacheObject internalRepresentationWithPieces:]", [lastPathComponent UTF8String], 1031);

    [NSException raise:@"GameKit Exception" format:@"%@", v9];
  }

  v10 = [(GKPlayerProfileCacheObject *)self familiarity]- 1;
  if (v10 > 3)
  {
    v11 = GKPlayerInternal_ptr;
  }

  else
  {
    v11 = off_100367F18[v10];
  }

  v12 = [objc_alloc(*v11) initWithCacheObject:self];

  return v12;
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKPlayerProfileCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKPlayerProfileCacheObject internalRepresentation]", [lastPathComponent UTF8String], 1057);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = [(GKPlayerProfileCacheObject *)self availablePieces]& 0xDF;

  return [(GKPlayerProfileCacheObject *)self internalRepresentationWithPieces:v9];
}

- (void)expireRecentMatchesWithGame:(id)game
{
  gameCopy = game;
  managedObjectContext = [(GKPlayerProfileCacheObject *)self managedObjectContext];
  if (gameCopy)
  {
    gameCopy = [NSPredicate predicateWithFormat:@"player = %@ AND game = %@", self, gameCopy];
    [(GKExpiringCacheObject *)GKRecentPlayerListCacheObject expireObjectsMatchingPredicate:gameCopy context:managedObjectContext];
  }

  v6 = [NSPredicate predicateWithFormat:@"player = %@ && game == nil", self];
  [(GKExpiringCacheObject *)GKRecentPlayerListCacheObject expireObjectsMatchingPredicate:v6 context:managedObjectContext];

  v7 = [NSPredicate predicateWithFormat:@"player = %@ OR otherPlayer = %@", self, self];
  [(GKExpiringCacheObject *)GKRecentGameListCacheObject expireObjectsMatchingPredicate:v7 context:managedObjectContext];
}

+ (id)_familiarityLookup
{
  v2 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v2, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v3 = +[NSThread callStackSymbols];
    v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKPlayerProfileCacheObject(GKPlayerFamiliarity) _familiarityLookup]", v3);
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v5 lastPathComponent];
    v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v4, "+[GKPlayerProfileCacheObject(GKPlayerFamiliarity) _familiarityLookup]", [lastPathComponent UTF8String], 1092);

    [NSException raise:@"GameKit Exception" format:@"%@", v7];
  }

  v8 = dispatch_get_current_queue();
  v9 = dispatch_queue_get_specific(v8, @"com.apple.gamed.GKPlayerProfileCacheObject.familiarityLookup");
  if (!v9)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    dispatch_queue_set_specific(v8, @"com.apple.gamed.GKPlayerProfileCacheObject.familiarityLookup", v9, _GKLookupRelease);
  }

  return v9;
}

+ (void)buildFamiliarilyLookupForProfile:(id)profile
{
  profileCopy = profile;
  playerID = [profileCopy playerID];

  if (playerID)
  {
    v19[0] = &off_100382640;
    playerID2 = [profileCopy playerID];
    selfCopy = self;
    v20[0] = playerID2;
    v19[1] = &off_100382658;
    friendList = [profileCopy friendList];
    playerIDs = [friendList playerIDs];
    v7 = [NSSet setWithArray:playerIDs];
    v20[1] = v7;
    v19[2] = &off_100382670;
    friendRequestList = [profileCopy friendRequestList];
    playerIDs2 = [friendRequestList playerIDs];
    v10 = [NSSet setWithArray:playerIDs2];
    v20[2] = v10;
    v19[3] = &off_100382688;
    friendRecommendationList = [profileCopy friendRecommendationList];
    playerIDs3 = [friendRecommendationList playerIDs];
    v13 = [NSSet setWithArray:playerIDs3];
    v20[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];

    _familiarityLookup = [selfCopy _familiarityLookup];
    [_familiarityLookup addEntriesFromDictionary:v14];
  }
}

+ (id)selfPlayerID
{
  _familiarityLookup = [self _familiarityLookup];
  v3 = [_familiarityLookup objectForKeyedSubscript:&off_100382640];

  return v3;
}

+ (int)familiarityForPlayerID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    goto LABEL_10;
  }

  _familiarityLookup = [self _familiarityLookup];
  v6 = [_familiarityLookup objectForKeyedSubscript:&off_100382640];
  if ([v6 isEqualToString:dCopy])
  {

    v7 = 1;
    goto LABEL_11;
  }

  v8 = [_familiarityLookup objectForKeyedSubscript:&off_100382658];
  if ([v8 containsObject:dCopy])
  {

    v7 = 2;
    goto LABEL_11;
  }

  v9 = [_familiarityLookup objectForKeyedSubscript:&off_100382670];
  if ([v9 containsObject:dCopy])
  {
    v10 = 0;
    v7 = 3;
  }

  else
  {
    v11 = [_familiarityLookup objectForKeyedSubscript:&off_100382688];
    v10 = [v11 containsObject:dCopy] ^ 1;

    v7 = 4;
  }

  if (v10)
  {
LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (int)familiarity
{
  playerID = [(GKPlayerProfileCacheObject *)self playerID];
  v3 = [GKPlayerProfileCacheObject familiarityForPlayerID:playerID];

  return v3;
}

+ (void)addFamiliarPlayerIDs:(id)ds familiarity:(int)familiarity
{
  v4 = *&familiarity;
  dsCopy = ds;
  if (v4 == 1)
  {
    v6 = [NSString stringWithFormat:@"Assertion failed"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (familiarity != GKPlayerFamiliaritySelf)\n[%s (%s:%d)]", v6, "+[GKPlayerProfileCacheObject(GKPlayerFamiliarity) addFamiliarPlayerIDs:familiarity:]", [lastPathComponent UTF8String], 1164);

    [NSException raise:@"GameKit Exception" format:@"%@", v9];
  }

  _familiarityLookup = [self _familiarityLookup];
  v11 = [NSNumber numberWithInt:v4];
  v12 = [_familiarityLookup objectForKeyedSubscript:v11];
  v13 = [v12 mutableCopy];
  [v13 addObjectsFromArray:dsCopy];
  [_familiarityLookup setObject:v13 forKeyedSubscript:v11];
}

+ (void)removeFamiliarPlayerIDs:(id)ds familiarity:(int)familiarity
{
  v4 = *&familiarity;
  dsCopy = ds;
  if (v4 == 1)
  {
    v7 = [NSString stringWithFormat:@"Assertion failed"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (familiarity != GKPlayerFamiliaritySelf)\n[%s (%s:%d)]", v7, "+[GKPlayerProfileCacheObject(GKPlayerFamiliarity) removeFamiliarPlayerIDs:familiarity:]", [lastPathComponent UTF8String], 1177);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  _familiarityLookup = [self _familiarityLookup];
  v12 = [NSNumber numberWithInt:v4];
  v13 = [_familiarityLookup objectForKeyedSubscript:v12];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100127A18;
  v15[3] = &unk_100366858;
  v16 = [v13 mutableCopy];
  v14 = v16;
  [dsCopy enumerateObjectsUsingBlock:v15];
  [_familiarityLookup setObject:v14 forKeyedSubscript:v12];
}

+ (void)setFamiliarPlayerIDs:(id)ds familiarity:(int)familiarity
{
  v4 = *&familiarity;
  dsCopy = ds;
  if (v4 == 1)
  {
    v6 = [NSString stringWithFormat:@"Assertion failed"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (familiarity != GKPlayerFamiliaritySelf)\n[%s (%s:%d)]", v6, "+[GKPlayerProfileCacheObject(GKPlayerFamiliarity) setFamiliarPlayerIDs:familiarity:]", [lastPathComponent UTF8String], 1198);

    [NSException raise:@"GameKit Exception" format:@"%@", v9];
  }

  _familiarityLookup = [self _familiarityLookup];
  v11 = [NSNumber numberWithInt:v4];
  v12 = [NSSet setWithArray:dsCopy];
  [_familiarityLookup setObject:v12 forKeyedSubscript:v11];
}

- (BOOL)isLocalPlayer
{
  playerID = [(GKPlayerProfileCacheObject *)self playerID];
  v3 = [GKPlayerProfileCacheObject familiarityForPlayerID:playerID]== 1;

  return v3;
}

+ (id)playersByFamiliarity:(id)familiarity
{
  familiarityCopy = familiarity;
  _familiarityLookup = [self _familiarityLookup];
  v26 = [_familiarityLookup objectForKeyedSubscript:&off_100382640];
  v5 = [_familiarityLookup objectForKeyedSubscript:&off_100382658];
  v6 = [_familiarityLookup objectForKeyedSubscript:&off_100382670];
  v7 = [_familiarityLookup objectForKeyedSubscript:&off_100382688];
  v8 = [familiarityCopy count];
  v9 = [NSMutableSet setWithCapacity:1];
  v10 = [NSMutableSet setWithCapacity:v8];
  v11 = [NSMutableSet setWithCapacity:v8];
  v12 = [NSMutableSet setWithCapacity:v8];
  [NSMutableSet setWithCapacity:v8];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100128038;
  v32[3] = &unk_1003679C8;
  v33 = v26;
  v34 = v9;
  v35 = v5;
  v36 = v10;
  v37 = v6;
  v38 = v11;
  v39 = v7;
  v41 = v40 = v12;
  v13 = v41;
  v25 = v12;
  v30 = v7;
  v14 = v11;
  v29 = v6;
  v15 = v10;
  v28 = v5;
  v16 = v9;
  v27 = v26;
  [familiarityCopy enumerateObjectsUsingBlock:v32];

  v42[0] = &off_100382640;
  allObjects = [v16 allObjects];
  v43[0] = allObjects;
  v42[1] = &off_100382658;
  allObjects2 = [v15 allObjects];
  v43[1] = allObjects2;
  v42[2] = &off_100382670;
  allObjects3 = [v14 allObjects];
  v43[2] = allObjects3;
  v42[3] = &off_100382688;
  allObjects4 = [v25 allObjects];
  v43[3] = allObjects4;
  v42[4] = &off_1003826A0;
  v21 = v13;
  allObjects5 = [v13 allObjects];
  v43[4] = allObjects5;
  v24 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:5];

  return v24;
}

+ (unsigned)piecesToLoadForFamiliarity:(int)familiarity
{
  v3 = 0x8183832B01uLL >> (8 * familiarity);
  if (familiarity >= 5)
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

+ (id)filterPlayerIDs:(id)ds familiarity:(int)familiarity includeSelf:(BOOL)self
{
  selfCopy = self;
  v6 = *&familiarity;
  dsCopy = ds;
  v9 = [self playersByFamiliarity:dsCopy];
  v10 = [NSNumber numberWithInt:v6];
  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = [NSSet setWithArray:v11];

  if (selfCopy)
  {
    v13 = [v9 objectForKeyedSubscript:&off_100382640];
    v14 = [v12 setByAddingObjectsFromArray:v13];

    v12 = v14;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100128288;
  v18[3] = &unk_100363430;
  v19 = v12;
  v15 = v12;
  v16 = [dsCopy _gkFilterWithBlock:v18];

  return v16;
}

@end