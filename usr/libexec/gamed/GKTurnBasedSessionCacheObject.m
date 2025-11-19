@interface GKTurnBasedSessionCacheObject
+ (id)sessionWithID:(id)a3 inManagedObjectContext:(id)a4;
+ (id)sessionsWithSessionIDs:(id)a3 inContext:(id)a4;
- (BOOL)isActive;
- (id)gameData;
- (id)internalRepresentation;
- (id)participantAtIndex:(int64_t)a3;
- (id)participantWithPlayerID:(id)a3;
- (void)deleteGameData;
- (void)expire;
- (void)expireGameData;
- (void)prepareForDeletion;
- (void)saveGameData:(id)a3 expirationDate:(id)a4;
- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4;
@end

@implementation GKTurnBasedSessionCacheObject

- (BOOL)isActive
{
  v3 = [(GKTurnBasedSessionCacheObject *)self status];
  if ([v3 isEqualToString:@"Active"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(GKTurnBasedSessionCacheObject *)self status];
    v4 = [v5 isEqualToString:@"Invited"];
  }

  return v4;
}

- (void)prepareForDeletion
{
  [(GKTurnBasedSessionCacheObject *)self deleteGameData];
  v3.receiver = self;
  v3.super_class = GKTurnBasedSessionCacheObject;
  [(GKTurnBasedSessionCacheObject *)&v3 prepareForDeletion];
}

- (id)gameData
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedSessionCacheObject gameData]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKTurnBasedSessionCacheObject gameData]", [v7 UTF8String], 3666);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = [(GKTurnBasedSessionCacheObject *)self sessionID];
  v10 = GKTurnBasedGameDataCacheRoot();

  if (v10)
  {
    v11 = [NSData dataWithContentsOfFile:v10];
    if (!v11)
    {
      [(GKTurnBasedSessionCacheObject *)self setDataExpirationDate:0];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)deleteGameData
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedSessionCacheObject deleteGameData]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKTurnBasedSessionCacheObject deleteGameData]", [v7 UTF8String], 3680);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = [(GKTurnBasedSessionCacheObject *)self sessionID];
  v10 = GKTurnBasedGameDataCacheRoot();

  if (v10)
  {
    v11 = +[NSFileManager defaultManager];
    v12 = [v11 removeItemAtPath:v10 error:0];

    if (v12)
    {
      if (!os_log_GKGeneral)
      {
        v13 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
      {
        sub_100290764();
      }
    }
  }

  [(GKTurnBasedSessionCacheObject *)self setDataExpirationDate:0];
}

- (void)expireGameData
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedSessionCacheObject expireGameData]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKTurnBasedSessionCacheObject expireGameData]", [v7 UTF8String], 3693);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = +[NSDate date];
  [(GKTurnBasedSessionCacheObject *)self setDataExpirationDate:v9];
}

- (void)saveGameData:(id)a3 expirationDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedSessionCacheObject saveGameData:expirationDate:]", v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v12 = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "-[GKTurnBasedSessionCacheObject saveGameData:expirationDate:]", [v12 UTF8String], 3699);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  if (v6)
  {
    v14 = [(GKTurnBasedSessionCacheObject *)self sessionID];
    v15 = GKTurnBasedGameDataCacheRoot();

    if (v15)
    {
      v25 = 0;
      v16 = [v6 writeToFile:v15 options:1 error:&v25];
      v17 = v25;
      v18 = v17;
      if (v16)
      {
        v19 = v7;
      }

      else if ([v17 code] == 4)
      {
        v20 = [v15 stringByDeletingLastPathComponent];
        v21 = objc_alloc_init(NSFileManager);
        if ([v21 createDirectoryAtPath:v20 withIntermediateDirectories:1 attributes:0 error:0])
        {
          v24 = v18;
          v22 = [v6 writeToFile:v15 options:1 error:&v24];
          v23 = v24;

          if (v22)
          {
            v19 = v7;
          }

          else
          {
            v19 = 0;
          }

          v18 = v23;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      [(GKTurnBasedSessionCacheObject *)self setDataExpirationDate:v19];
    }
  }

  else
  {
    [(GKTurnBasedSessionCacheObject *)self deleteGameData];
  }
}

- (id)participantWithPlayerID:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedSessionCacheObject participantWithPlayerID:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKTurnBasedSessionCacheObject participantWithPlayerID:]", [v9 UTF8String], 3728);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  if (v4)
  {
    v11 = [(GKTurnBasedSessionCacheObject *)self participants];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100135F40;
    v16[3] = &unk_1003655F8;
    v17 = v4;
    v12 = [v11 indexOfObjectPassingTest:v16];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
    }

    else
    {
      v14 = [(GKTurnBasedSessionCacheObject *)self participants];
      v13 = [v14 objectAtIndex:v12];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_1002907D4();
  }

  v9 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v9, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v10 = +[NSThread callStackSymbols];
    v11 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedSessionCacheObject updateWithServerRepresentation:expirationDate:]", v10];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v13 = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v11, "-[GKTurnBasedSessionCacheObject updateWithServerRepresentation:expirationDate:]", [v13 UTF8String], 3749);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  v81.receiver = self;
  v81.super_class = GKTurnBasedSessionCacheObject;
  [(GKExpiringCacheObject *)&v81 updateWithServerRepresentation:v6 expirationDate:0];
  v15 = [v6 objectForKeyedSubscript:@"session-id"];
  if (v15)
  {
    [(GKTurnBasedSessionCacheObject *)self setSessionID:v15];
  }

  v16 = [v6 objectForKeyedSubscript:@"created-at"];

  if (v16)
  {
    v17 = [NSDate _gkDateFromServerTimestamp:v16];
    [(GKTurnBasedSessionCacheObject *)self setCreationDate:v17];
  }

  v18 = [v6 objectForKeyedSubscript:@"session-status"];

  if (v18)
  {
    [(GKTurnBasedSessionCacheObject *)self setStatus:v18];
  }

  v19 = [v6 objectForKeyedSubscript:@"current-player-id"];

  if (v19)
  {
    if ([v19 length])
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    [(GKTurnBasedSessionCacheObject *)self setCurrentPlayerID:v20];
  }

  v21 = [v6 objectForKeyedSubscript:@"current-guest-id"];

  if (v21)
  {
    if ([v21 length])
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    [(GKTurnBasedSessionCacheObject *)self setCurrentGuestID:v22];
  }

  v23 = [v6 objectForKeyedSubscript:@"last-turn-at"];

  if (v23)
  {
    v24 = [NSDate _gkDateFromServerTimestamp:v23];
    [(GKTurnBasedSessionCacheObject *)self setLastTurnDate:v24];
  }

  v25 = [v6 objectForKeyedSubscript:@"bundle-id"];

  if (v25)
  {
    [(GKTurnBasedSessionCacheObject *)self setBundleID:v25];
  }

  v26 = [v6 objectForKeyedSubscript:@"bundle-version"];

  if (v26)
  {
    [(GKTurnBasedSessionCacheObject *)self setBundleVersion:v26];
  }

  v27 = [v6 objectForKeyedSubscript:@"short-bundle-version"];

  if (v27)
  {
    [(GKTurnBasedSessionCacheObject *)self setShortBundleVersion:v27];
  }

  v28 = [v6 objectForKeyedSubscript:@"platform"];

  if (v28)
  {
    v29 = [NSNumber numberWithInteger:[GKGameDescriptor gamePlatformFromServerGameDescriptorString:v28]];
    [(GKTurnBasedSessionCacheObject *)self setPlatform:v29];
  }

  v30 = [v6 objectForKeyedSubscript:@"slots"];
  if (v30)
  {
    [(GKTurnBasedSessionCacheObject *)self setExpirationDate:v7];
    v31 = [v6 objectForKeyedSubscript:@"match-id"];

    if (v31)
    {
      [(GKTurnBasedSessionCacheObject *)self setUnusedID:v31];
    }

    v32 = [v6 objectForKeyedSubscript:@"taken-at"];

    if (v32)
    {
      v33 = [NSDate _gkDateFromServerTimestamp:v32];
      [(GKTurnBasedSessionCacheObject *)self setLastTurnDate:v33];
    }

    v69 = v7;
    v34 = [v6 objectForKeyedSubscript:@"delete-at"];

    if (v34)
    {
      v35 = [NSDate _gkDateFromServerTimestamp:v34];
      [(GKTurnBasedSessionCacheObject *)self setDeletionDate:v35];
    }

    v36 = [v6 objectForKeyedSubscript:@"message"];

    if (v36)
    {
      [(GKTurnBasedSessionCacheObject *)self setMessage:v36];
    }

    v37 = [v6 objectForKeyedSubscript:@"localized-message"];

    if (v37)
    {
      v38 = [NSPropertyListSerialization dataWithPropertyList:v37 format:100 options:0 error:0];
      [(GKTurnBasedSessionCacheObject *)self setLocalizableMessage:v38];
    }

    v39 = [v6 objectForKeyedSubscript:@"reason"];

    if (v39)
    {
      [(GKTurnBasedSessionCacheObject *)self setReason:v39];
    }

    v40 = [v6 objectForKeyedSubscript:@"min-players"];

    if (v40)
    {
      -[GKTurnBasedSessionCacheObject setMinPlayers:](self, "setMinPlayers:", [v40 integerValue]);
    }

    v41 = [v6 objectForKeyedSubscript:@"max-players"];

    if (v41)
    {
      -[GKTurnBasedSessionCacheObject setMaxPlayers:](self, "setMaxPlayers:", [v41 integerValue]);
    }

    v42 = [v6 objectForKeyedSubscript:@"whose-turn"];

    if (v42)
    {
      if ([v42 length])
      {
        v43 = v42;
      }

      else
      {
        v43 = 0;
      }

      [(GKTurnBasedSessionCacheObject *)self setCurrentPlayerID:v43];
    }

    v44 = [v6 objectForKeyedSubscript:@"turn-on-slot"];

    if (v44)
    {
      -[GKTurnBasedSessionCacheObject setCurrentParticipant:](self, "setCurrentParticipant:", [v44 integerValue]);
    }

    v45 = [v6 objectForKeyedSubscript:@"turn-number"];

    if (v45)
    {
      v46 = [v45 integerValue];
      if (v46 != [(GKTurnBasedSessionCacheObject *)self turnNumber])
      {
        [(GKTurnBasedSessionCacheObject *)self setDataExpirationDate:0];
        [(GKTurnBasedSessionCacheObject *)self setTurnNumber:v46];
      }
    }

    v28 = [v6 objectForKeyedSubscript:@"submitted-by"];

    if (v28)
    {
      if ([v28 length])
      {
        v47 = v28;
      }

      else
      {
        v47 = 0;
      }

      [(GKTurnBasedSessionCacheObject *)self setLastTurnPlayerID:v47];
    }

    v48 = objc_autoreleasePoolPush();
    v49 = [(GKTurnBasedSessionCacheObject *)self managedObjectContext];
    v50 = [(GKTurnBasedSessionCacheObject *)self mutableOrderedSetValueForKey:@"participants"];
    +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v50 count]);
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_100136988;
    v51 = v79[3] = &unk_100366858;
    v80 = v51;
    [v50 enumerateObjectsUsingBlock:v79];
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_100136A08;
    v75[3] = &unk_100367E20;
    v52 = v51;
    v76 = v52;
    v53 = v49;
    v77 = v53;
    v54 = v50;
    v78 = v54;
    [v30 enumerateObjectsUsingBlock:v75];
    v55 = [v52 allValues];
    [v53 _gkDeleteObjects:v55];

    v56 = [v6 objectForKeyedSubscript:@"exchanges"];
    if (v56)
    {
      [(GKTurnBasedSessionCacheObject *)self exchanges];
      v57 = v67 = v48;
      v58 = [v57 _gkMapDictionaryWithKeyPath:@"exchangeID"];
      v68 = v30;
      v59 = [v58 mutableCopy];

      v60 = [(GKTurnBasedSessionCacheObject *)self mutableOrderedSetValueForKey:@"exchanges"];
      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_100136AD8;
      v70[3] = &unk_100363F00;
      v71 = v59;
      v61 = v53;
      v72 = v61;
      v73 = v54;
      v74 = v60;
      v66 = v60;
      v62 = v59;
      [v56 enumerateObjectsUsingBlock:v70];
      v63 = [v62 allValues];
      [v61 _gkDeleteObjects:v63];

      v48 = v67;
      v30 = v68;
    }

    objc_autoreleasePoolPop(v48);
    v7 = v69;
  }

  v64 = [v6 objectForKeyedSubscript:@"game-state"];

  if (v64)
  {
    [(GKTurnBasedSessionCacheObject *)self saveGameData:v64 expirationDate:v7];
  }

  v65 = [v6 objectForKeyedSubscript:@"game-state-version"];

  if (v65)
  {
    [(GKTurnBasedSessionCacheObject *)self setMatchDataVersion:v65];
  }
}

+ (id)sessionWithID:(id)a3 inManagedObjectContext:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = a3;
  v8 = [NSArray arrayWithObjects:&v12 count:1];

  v9 = [a1 sessionsWithSessionIDs:v8 inContext:{v6, v12}];

  v10 = [v9 lastObject];

  return v10;
}

+ (id)sessionsWithSessionIDs:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_100290810();
  }

  v9 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v9, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v10 = +[NSThread callStackSymbols];
    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKTurnBasedSessionCacheObject sessionsWithSessionIDs:inContext:]", v10);
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v13 = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v11, "+[GKTurnBasedSessionCacheObject sessionsWithSessionIDs:inContext:]", [v13 UTF8String], 3931);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  v15 = [a1 uniqueObjectIDLookupWithContext:v7];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100136ED0;
  v19[3] = &unk_100367E48;
  v20 = v7;
  v21 = a1;
  v16 = v7;
  v17 = [v15 uniqueObjectsForKeys:v6 context:v16 newObject:v19];

  return v17;
}

- (void)expire
{
  v4.receiver = self;
  v4.super_class = GKTurnBasedSessionCacheObject;
  [(GKExpiringCacheObject *)&v4 expire];
  v3 = [(GKTurnBasedSessionCacheObject *)self expirationDate];
  [(GKTurnBasedSessionCacheObject *)self setDataExpirationDate:v3];
}

- (id)participantAtIndex:(int64_t)a3
{
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedSessionCacheObject participantAtIndex:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKTurnBasedSessionCacheObject participantAtIndex:]", [v9 UTF8String], 3947);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v11 = [(GKTurnBasedSessionCacheObject *)self participants];
  v12 = [v11 count];

  if (v12 <= a3)
  {
    v14 = 0;
  }

  else
  {
    v13 = [(GKTurnBasedSessionCacheObject *)self participants];
    v14 = [v13 objectAtIndex:a3];
  }

  return v14;
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedSessionCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKTurnBasedSessionCacheObject internalRepresentation]", [v7 UTF8String], 3957);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  return [GKTurnBasedMatchInternal internalRepresentationForCacheObject:self];
}

@end