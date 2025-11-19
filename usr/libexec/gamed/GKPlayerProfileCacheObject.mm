@interface GKPlayerProfileCacheObject
+ (id)_familiarityLookup;
+ (id)filterPlayerIDs:(id)a3 familiarity:(int)a4 includeSelf:(BOOL)a5;
+ (id)localPlayerInManagedObjectContext:(id)a3;
+ (id)playerProfileWithPlayerID:(id)a3 inManagedObjectContext:(id)a4;
+ (id)playerProfilesWithPlayerIDs:(id)a3 inManagedObjectContext:(id)a4;
+ (id)playerProfilesWithPlayers:(id)a3 inManagedObjectContext:(id)a4;
+ (id)playersByFamiliarity:(id)a3;
+ (id)profileForPlayer:(id)a3 context:(id)a4;
+ (id)selfPlayerID;
+ (int)familiarityForPlayerID:(id)a3;
+ (unsigned)piecesToLoadForFamiliarity:(int)a3;
+ (void)addFamiliarPlayerIDs:(id)a3 familiarity:(int)a4;
+ (void)buildFamiliarilyLookupForProfile:(id)a3;
+ (void)removeFamiliarPlayerIDs:(id)a3 familiarity:(int)a4;
+ (void)setFamiliarPlayerIDs:(id)a3 familiarity:(int)a4;
- (BOOL)isFindable;
- (BOOL)isLocalPlayer;
- (BOOL)isUnderage;
- (BOOL)isValid;
- (id)internalRepresentation;
- (id)internalRepresentationWithPieces:(unsigned __int8)a3;
- (id)updateImagesWithImageURLs:(id)a3;
- (int)familiarity;
- (void)clearImages;
- (void)deleteCachedAvatars;
- (void)deleteCachedImage:(id)a3;
- (void)expireRecentMatchesWithGame:(id)a3;
- (void)invalidate;
- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4 pieces:(unsigned __int8)a5;
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

  v4 = [(GKPlayerProfileCacheObject *)self alias];
  v3 = v4 != 0;

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
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isFindable
{
  v5.receiver = self;
  v5.super_class = GKPlayerProfileCacheObject;
  v2 = [(GKPlayerProfileCacheObject *)&v5 primitiveValueForKey:@"findable"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)clearImages
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKPlayerProfileCacheObject clearImages]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKPlayerProfileCacheObject clearImages]", [v7 UTF8String], 722);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  if (([(GKPlayerProfileCacheObject *)self conformsToProtocol:&OBJC_PROTOCOL___GKCacheObjectImageProtocol]& 1) == 0)
  {
    v9 = [NSString stringWithFormat:@"Assertion failed"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v11 = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ([self conformsToProtocol:@protocol(GKCacheObjectImageProtocol)])\n[%s (%s:%d)]", v9, "-[GKPlayerProfileCacheObject clearImages]", [v11 UTF8String], 723);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  v13 = [(GKCacheObject *)self imageCacheKeyPathsByKey];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100125264;
  v14[3] = &unk_100367928;
  v14[4] = self;
  [v13 enumerateKeysAndObjectsUsingBlock:v14];

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
    v8 = [v7 lastPathComponent];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v6, "-[GKPlayerProfileCacheObject deleteCachedAvatars]", [v8 UTF8String], 740);

    [NSException raise:@"GameKit Exception" format:@"%@", v9];
  }

  v10 = [(GKPlayerProfileCacheObject *)self playerID];
  v11 = GKAvatarSubdirectoryNameForPlayerID();

  [(GKPlayerProfileCacheObject *)self deleteCachedImage:v11];
}

- (void)deleteCachedImage:(id)a3
{
  v4 = a3;
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
    v10 = [v9 lastPathComponent];
    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v8, "-[GKPlayerProfileCacheObject deleteCachedImage:]", [v10 UTF8String], 751);

    [NSException raise:@"GameKit Exception" format:@"%@", v11];
  }

  v12 = [NSURL URLWithString:v4];
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
    [(GKCacheObject *)&v17 deleteCachedImage:v4];
  }
}

+ (id)localPlayerInManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKPlayerProfileCacheObject localPlayerInManagedObjectContext:]", v6);
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "+[GKPlayerProfileCacheObject localPlayerInManagedObjectContext:]", [v9 UTF8String], 769);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v11 = objc_getAssociatedObject(v4, @"GKLocalPlayerObjectIDKey");
  v12 = [v4 objectRegisteredForID:v11];
  if (!v12)
  {
    v13 = [a1 selfPlayerID];
    if (v13)
    {
      v14 = [NSPredicate predicateWithFormat:@"playerID = %@", v13];
      v12 = [(GKCacheObject *)GKPlayerProfileCacheObject firstObjectMatchingPredicate:v14 context:v4];

      objc_setAssociatedObject(v4, @"GKLocalPlayerObjectIDKey", v11, 1);
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (id)playerProfileWithPlayerID:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKPlayerProfileCacheObject playerProfileWithPlayerID:inManagedObjectContext:]", v9);
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v12 = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "+[GKPlayerProfileCacheObject playerProfileWithPlayerID:inManagedObjectContext:]", [v12 UTF8String], 784);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  if (v6 && ([a1 selfPlayerID], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v6, "isEqualToString:", v14), v14, !v15))
  {
    v20 = v6;
    v17 = [NSArray arrayWithObjects:&v20 count:1];
    v18 = [a1 playerProfilesWithPlayerIDs:v17 inManagedObjectContext:v7];
    v16 = [v18 lastObject];
  }

  else
  {
    v16 = [a1 localPlayerInManagedObjectContext:v7];
  }

  return v16;
}

+ (id)profileForPlayer:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 playerID];

  if (v7)
  {
    v8 = [v5 playerID];
    v9 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:v8 inManagedObjectContext:v6];
  }

  else
  {
    v9 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v6];
  }

  return v9;
}

+ (id)playerProfilesWithPlayers:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a4;
  v7 = [a3 _gkFilterWithBlock:&stru_100367950];
  v8 = [a1 playerProfilesWithPlayerIDs:v7 inManagedObjectContext:v6];

  return v8;
}

+ (id)playerProfilesWithPlayerIDs:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v13 = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v11, "+[GKPlayerProfileCacheObject playerProfilesWithPlayerIDs:inManagedObjectContext:]", [v13 UTF8String], 813);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  v15 = [a1 uniqueObjectIDLookupWithContext:v7];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100125E18;
  v19[3] = &unk_100367978;
  v20 = v7;
  v21 = a1;
  v16 = v7;
  v17 = [v15 uniqueObjectsForKeys:v6 context:v16 newObject:v19];

  return v17;
}

- (id)updateImagesWithImageURLs:(id)a3
{
  v4 = a3;
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
    v11 = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v9, "-[GKPlayerProfileCacheObject updateImagesWithImageURLs:]", [v11 UTF8String], 830);

    v7 = &_sScA15unownedExecutorScevgTj_ptr;
    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  if (([(GKPlayerProfileCacheObject *)self conformsToProtocol:&OBJC_PROTOCOL___GKCacheObjectImageProtocol]& 1) == 0)
  {
    v13 = [NSString stringWithFormat:@"Assertion failed"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v15 = [v14 lastPathComponent];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ([self conformsToProtocol:@protocol(GKCacheObjectImageProtocol)])\n[%s (%s:%d)]", v13, "-[GKPlayerProfileCacheObject updateImagesWithImageURLs:]", [v15 UTF8String], 831);

    [v7[171] raise:@"GameKit Exception" format:{@"%@", v16}];
  }

  v17 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v18 = [v4 objectForKeyedSubscript:@"template"];
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

- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4 pieces:(unsigned __int8)a5
{
  v75 = a5;
  v7 = a3;
  v8 = a4;
  v9 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v9, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v10 = +[NSThread callStackSymbols];
    v11 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKPlayerProfileCacheObject updateWithServerRepresentation:expirationDate:pieces:]", v10];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v13 = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v11, "-[GKPlayerProfileCacheObject updateWithServerRepresentation:expirationDate:pieces:]", [v13 UTF8String], 854);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  v77.receiver = self;
  v77.super_class = GKPlayerProfileCacheObject;
  [(GKExpiringCacheObject *)&v77 updateWithServerRepresentation:v7 expirationDate:v8];
  if (v7)
  {
    v15 = [v7 objectForKey:GKPlayerIDKey];
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

    v17 = [v7 objectForKeyedSubscript:GKAliasKey];
    [(GKPlayerProfileCacheObject *)self setAlias:v17];

    v18 = [v7 objectForKeyedSubscript:GKPlayerStatusKey];
    [(GKPlayerProfileCacheObject *)self setStatus:v18];

    v19 = [v7 objectForKeyedSubscript:@"pb-account"];
    -[GKPlayerProfileCacheObject setPurpleBuddyAccount:](self, "setPurpleBuddyAccount:", [v19 BOOLValue]);

    v20 = [v7 objectForKeyedSubscript:GKUnderageKey];
    v21 = v20;
    if (v20)
    {
      -[GKPlayerProfileCacheObject setUnderage:](self, "setUnderage:", [v20 BOOLValue]);
    }

    v22 = [v7 objectForKeyedSubscript:GKFindableKey];

    if (v22)
    {
      -[GKPlayerProfileCacheObject setFindable:](self, "setFindable:", [v22 BOOLValue]);
    }

    if ([(GKPlayerProfileCacheObject *)self isLocalPlayer])
    {
      v23 = [(GKPlayerProfileCacheObject *)self photoPendingExpirationDate];
      [v23 timeIntervalSinceNow];
      v25 = v24;

      if (v25 < 0.0)
      {
        v26 = [v7 objectForKey:GKPhotoPendingKey];
        -[GKPlayerProfileCacheObject setPhotoPending:](self, "setPhotoPending:", [v26 BOOLValue]);
      }

      if ([(GKPlayerProfileCacheObject *)self photoPending])
      {
        v27 = [(GKCacheObject *)self imageURLDictionary];
        if ([v27 count])
        {
          v76[0] = _NSConcreteStackBlock;
          v76[1] = 3221225472;
          v76[2] = sub_100126BD8;
          v76[3] = &unk_1003679A0;
          v76[4] = self;
          [v27 enumerateKeysAndObjectsUsingBlock:v76];
        }

        else
        {
          [(GKPlayerProfileCacheObject *)self setPhotoPending:0];
        }
      }

      [GKContactsIntegrationUserSettings applySettingsToObject:self fromResults:v7];
    }

    v28 = [v7 objectForKeyedSubscript:GKPrivacySettingsKey];
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

    v33 = [v7 objectForKeyedSubscript:GKGlobalFriendListAccessKey];
    [(GKPlayerProfileCacheObject *)self setGlobalFriendListAccess:sub_100126D04(v33, v33)];

    v34 = [v7 objectForKeyedSubscript:GKIsArcadeSubscriberKey];
    v71 = v34;
    if (v34)
    {
      v35 = [v34 BOOLValue];
    }

    else
    {
      v35 = 0;
    }

    v74 = v8;
    [(GKPlayerProfileCacheObject *)self setIsArcadeSubscriber:v35];
    v36 = [v7 objectForKey:GKPhotoURLsKey];
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

    v39 = [v7 objectForKeyedSubscript:@"avatar"];
    v40 = [GKCDAvatarArtwork alloc];
    v41 = [(GKPlayerProfileCacheObject *)self managedObjectContext];
    v42 = [(GKCDAvatarArtwork *)v40 initWithContext:v41];

    v43 = [v39 objectForKeyedSubscript:@"type"];
    [(GKCDAvatarArtwork *)v42 setType:v43];

    v44 = [v39 objectForKeyedSubscript:@"artwork"];
    v45 = [(GKPlayerProfileCacheObject *)self managedObjectContext];
    v70 = v44;
    v46 = [GKCDArtwork artworkFromServerRepresentation:v44 moc:v45];

    v69 = v46;
    [(GKCDAvatarArtwork *)v42 setArtwork:v46];
    [(GKPlayerProfileCacheObject *)self setAvatarArtwork:v42];
    v47 = [v7 objectForKeyedSubscript:GKFriendBiDirectionalKey];
    v48 = [v7 objectForKeyedSubscript:GKFriendPlayedWithKey];
    v49 = [v7 objectForKeyedSubscript:GKFriendPlayedNearbyKey];
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
      v53 = [(GKPlayerProfileCacheObject *)self firstName];

      if (v53)
      {
        v54 = &off_100382628;
      }

      else
      {
        v54 = &off_100382610;
      }

      [(GKPlayerProfileCacheObject *)self setFriendLevel:v54];
    }

    v55 = [v7 objectForKey:GKNumberOfFriendsKey];
    v56 = [v55 integerValue];

    if (v56 != [(GKPlayerProfileCacheObject *)self numberOfFriends])
    {
      [(GKPlayerProfileCacheObject *)self setNumberOfFriends:v56];
    }

    v57 = [v7 objectForKey:GKNumberOfGamesPlayedKey];
    -[GKPlayerProfileCacheObject setNumberOfGames:](self, "setNumberOfGames:", [v57 integerValue]);

    v58 = [v7 objectForKey:GKNumberOfAchievementsKey];
    -[GKPlayerProfileCacheObject setNumberOfAchievements:](self, "setNumberOfAchievements:", [v58 integerValue]);

    v59 = [v7 objectForKey:GKNumberOfAchievementPointsKey];
    -[GKPlayerProfileCacheObject setNumberOfAchievementPoints:](self, "setNumberOfAchievementPoints:", [v59 integerValue]);

    if ((v75 & 0x10) != 0)
    {
      v60 = [v7 objectForKey:GKNumberOfFriendsInCommonKey];
      -[GKPlayerProfileCacheObject setNumberOfFriendsInCommon:](self, "setNumberOfFriendsInCommon:", [v60 integerValue]);

      v61 = [v7 objectForKey:GKNumberOfGamesInCommonKey];
      -[GKPlayerProfileCacheObject setNumberOfGamesInCommon:](self, "setNumberOfGamesInCommon:", [v61 integerValue]);
    }

    v62 = [v7 objectForKeyedSubscript:@"allow-friend-invites-from-challenges"];
    -[GKPlayerProfileCacheObject setAllowChallengeFriendInvites:](self, "setAllowChallengeFriendInvites:", [v62 isEqualToString:@"allowed"]);

    v63 = [v7 objectForKeyedSubscript:@"allow-friend-invites-from-multiplayer-invites"];
    -[GKPlayerProfileCacheObject setAllowMultiplayerFriendInvites:](self, "setAllowMultiplayerFriendInvites:", [v63 isEqualToString:@"allowed"]);

    v64 = [v7 objectForKeyedSubscript:GKIsChallengeable];
    -[GKPlayerProfileCacheObject setIsChallengeable:](self, "setIsChallengeable:", [v64 BOOLValue]);

    v65 = [v7 objectForKeyedSubscript:GKSupportsMultiplayerActivities];
    -[GKPlayerProfileCacheObject setSupportsMultiplayerActivities:](self, "setSupportsMultiplayerActivities:", [v65 BOOLValue]);

    if ((v75 & 0x80) != 0)
    {
      v66 = [v7 objectForKeyedSubscript:@"can-receive-friend-invitation"];
      -[GKPlayerProfileCacheObject setAllowReceivingFriendInvites:](self, "setAllowReceivingFriendInvites:", [v66 BOOLValue]);
    }

    [(GKPlayerProfileCacheObject *)self setAvailablePieces:v75];

    v8 = v74;
  }
}

- (id)internalRepresentationWithPieces:(unsigned __int8)a3
{
  v4 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v4, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v5 = +[NSThread callStackSymbols];
    v6 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKPlayerProfileCacheObject internalRepresentationWithPieces:]", v5];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v8 = [v7 lastPathComponent];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v6, "-[GKPlayerProfileCacheObject internalRepresentationWithPieces:]", [v8 UTF8String], 1031);

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
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKPlayerProfileCacheObject internalRepresentation]", [v7 UTF8String], 1057);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = [(GKPlayerProfileCacheObject *)self availablePieces]& 0xDF;

  return [(GKPlayerProfileCacheObject *)self internalRepresentationWithPieces:v9];
}

- (void)expireRecentMatchesWithGame:(id)a3
{
  v8 = a3;
  v4 = [(GKPlayerProfileCacheObject *)self managedObjectContext];
  if (v8)
  {
    v5 = [NSPredicate predicateWithFormat:@"player = %@ AND game = %@", self, v8];
    [(GKExpiringCacheObject *)GKRecentPlayerListCacheObject expireObjectsMatchingPredicate:v5 context:v4];
  }

  v6 = [NSPredicate predicateWithFormat:@"player = %@ && game == nil", self];
  [(GKExpiringCacheObject *)GKRecentPlayerListCacheObject expireObjectsMatchingPredicate:v6 context:v4];

  v7 = [NSPredicate predicateWithFormat:@"player = %@ OR otherPlayer = %@", self, self];
  [(GKExpiringCacheObject *)GKRecentGameListCacheObject expireObjectsMatchingPredicate:v7 context:v4];
}

+ (id)_familiarityLookup
{
  v2 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v2, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v3 = +[NSThread callStackSymbols];
    v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKPlayerProfileCacheObject(GKPlayerFamiliarity) _familiarityLookup]", v3);
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v6 = [v5 lastPathComponent];
    v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v4, "+[GKPlayerProfileCacheObject(GKPlayerFamiliarity) _familiarityLookup]", [v6 UTF8String], 1092);

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

+ (void)buildFamiliarilyLookupForProfile:(id)a3
{
  v4 = a3;
  v5 = [v4 playerID];

  if (v5)
  {
    v19[0] = &off_100382640;
    v17 = [v4 playerID];
    v18 = a1;
    v20[0] = v17;
    v19[1] = &off_100382658;
    v16 = [v4 friendList];
    v6 = [v16 playerIDs];
    v7 = [NSSet setWithArray:v6];
    v20[1] = v7;
    v19[2] = &off_100382670;
    v8 = [v4 friendRequestList];
    v9 = [v8 playerIDs];
    v10 = [NSSet setWithArray:v9];
    v20[2] = v10;
    v19[3] = &off_100382688;
    v11 = [v4 friendRecommendationList];
    v12 = [v11 playerIDs];
    v13 = [NSSet setWithArray:v12];
    v20[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];

    v15 = [v18 _familiarityLookup];
    [v15 addEntriesFromDictionary:v14];
  }
}

+ (id)selfPlayerID
{
  v2 = [a1 _familiarityLookup];
  v3 = [v2 objectForKeyedSubscript:&off_100382640];

  return v3;
}

+ (int)familiarityForPlayerID:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = [a1 _familiarityLookup];
  v6 = [v5 objectForKeyedSubscript:&off_100382640];
  if ([v6 isEqualToString:v4])
  {

    v7 = 1;
    goto LABEL_11;
  }

  v8 = [v5 objectForKeyedSubscript:&off_100382658];
  if ([v8 containsObject:v4])
  {

    v7 = 2;
    goto LABEL_11;
  }

  v9 = [v5 objectForKeyedSubscript:&off_100382670];
  if ([v9 containsObject:v4])
  {
    v10 = 0;
    v7 = 3;
  }

  else
  {
    v11 = [v5 objectForKeyedSubscript:&off_100382688];
    v10 = [v11 containsObject:v4] ^ 1;

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
  v2 = [(GKPlayerProfileCacheObject *)self playerID];
  v3 = [GKPlayerProfileCacheObject familiarityForPlayerID:v2];

  return v3;
}

+ (void)addFamiliarPlayerIDs:(id)a3 familiarity:(int)a4
{
  v4 = *&a4;
  v14 = a3;
  if (v4 == 1)
  {
    v6 = [NSString stringWithFormat:@"Assertion failed"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v8 = [v7 lastPathComponent];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (familiarity != GKPlayerFamiliaritySelf)\n[%s (%s:%d)]", v6, "+[GKPlayerProfileCacheObject(GKPlayerFamiliarity) addFamiliarPlayerIDs:familiarity:]", [v8 UTF8String], 1164);

    [NSException raise:@"GameKit Exception" format:@"%@", v9];
  }

  v10 = [a1 _familiarityLookup];
  v11 = [NSNumber numberWithInt:v4];
  v12 = [v10 objectForKeyedSubscript:v11];
  v13 = [v12 mutableCopy];
  [v13 addObjectsFromArray:v14];
  [v10 setObject:v13 forKeyedSubscript:v11];
}

+ (void)removeFamiliarPlayerIDs:(id)a3 familiarity:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  if (v4 == 1)
  {
    v7 = [NSString stringWithFormat:@"Assertion failed"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (familiarity != GKPlayerFamiliaritySelf)\n[%s (%s:%d)]", v7, "+[GKPlayerProfileCacheObject(GKPlayerFamiliarity) removeFamiliarPlayerIDs:familiarity:]", [v9 UTF8String], 1177);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v11 = [a1 _familiarityLookup];
  v12 = [NSNumber numberWithInt:v4];
  v13 = [v11 objectForKeyedSubscript:v12];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100127A18;
  v15[3] = &unk_100366858;
  v16 = [v13 mutableCopy];
  v14 = v16;
  [v6 enumerateObjectsUsingBlock:v15];
  [v11 setObject:v14 forKeyedSubscript:v12];
}

+ (void)setFamiliarPlayerIDs:(id)a3 familiarity:(int)a4
{
  v4 = *&a4;
  v13 = a3;
  if (v4 == 1)
  {
    v6 = [NSString stringWithFormat:@"Assertion failed"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v8 = [v7 lastPathComponent];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (familiarity != GKPlayerFamiliaritySelf)\n[%s (%s:%d)]", v6, "+[GKPlayerProfileCacheObject(GKPlayerFamiliarity) setFamiliarPlayerIDs:familiarity:]", [v8 UTF8String], 1198);

    [NSException raise:@"GameKit Exception" format:@"%@", v9];
  }

  v10 = [a1 _familiarityLookup];
  v11 = [NSNumber numberWithInt:v4];
  v12 = [NSSet setWithArray:v13];
  [v10 setObject:v12 forKeyedSubscript:v11];
}

- (BOOL)isLocalPlayer
{
  v2 = [(GKPlayerProfileCacheObject *)self playerID];
  v3 = [GKPlayerProfileCacheObject familiarityForPlayerID:v2]== 1;

  return v3;
}

+ (id)playersByFamiliarity:(id)a3
{
  v4 = a3;
  v31 = [a1 _familiarityLookup];
  v26 = [v31 objectForKeyedSubscript:&off_100382640];
  v5 = [v31 objectForKeyedSubscript:&off_100382658];
  v6 = [v31 objectForKeyedSubscript:&off_100382670];
  v7 = [v31 objectForKeyedSubscript:&off_100382688];
  v8 = [v4 count];
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
  [v4 enumerateObjectsUsingBlock:v32];

  v42[0] = &off_100382640;
  v17 = [v16 allObjects];
  v43[0] = v17;
  v42[1] = &off_100382658;
  v18 = [v15 allObjects];
  v43[1] = v18;
  v42[2] = &off_100382670;
  v19 = [v14 allObjects];
  v43[2] = v19;
  v42[3] = &off_100382688;
  v20 = [v25 allObjects];
  v43[3] = v20;
  v42[4] = &off_1003826A0;
  v21 = v13;
  v22 = [v13 allObjects];
  v43[4] = v22;
  v24 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:5];

  return v24;
}

+ (unsigned)piecesToLoadForFamiliarity:(int)a3
{
  v3 = 0x8183832B01uLL >> (8 * a3);
  if (a3 >= 5)
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

+ (id)filterPlayerIDs:(id)a3 familiarity:(int)a4 includeSelf:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  v8 = a3;
  v9 = [a1 playersByFamiliarity:v8];
  v10 = [NSNumber numberWithInt:v6];
  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = [NSSet setWithArray:v11];

  if (v5)
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
  v16 = [v8 _gkFilterWithBlock:v18];

  return v16;
}

@end