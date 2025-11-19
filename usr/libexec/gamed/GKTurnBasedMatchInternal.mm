@interface GKTurnBasedMatchInternal
- (void)updateWithCacheObject:(id)a3;
@end

@implementation GKTurnBasedMatchInternal

- (void)updateWithCacheObject:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedMatchInternal(Cache) updateWithCacheObject:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/GKInternalRepresentation+Cache.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKTurnBasedMatchInternal(Cache) updateWithCacheObject:]", [v9 UTF8String], 297);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v11 = [v4 managedObjectContext];
  v12 = [v4 sessionID];
  [(GKTurnBasedMatchInternal *)self setMatchID:v12];

  v13 = [v4 status];
  [(GKTurnBasedMatchInternal *)self setStatus:v13];

  v14 = [v4 creationDate];
  [(GKTurnBasedMatchInternal *)self setCreationDate:v14];

  v15 = [v4 lastTurnDate];
  [(GKTurnBasedMatchInternal *)self setLastTurnDate:v15];

  v16 = [v4 message];
  [(GKTurnBasedMatchInternal *)self setMessage:v16];

  v17 = [v4 localizableMessage];
  v18 = [NSPropertyListSerialization _gkTypesafePropertyListWithData:v17 withClass:objc_opt_class()];
  [(GKTurnBasedMatchInternal *)self setLocalizableMessage:v18];

  v19 = [v4 reason];
  [(GKTurnBasedMatchInternal *)self setReason:v19];

  -[GKTurnBasedMatchInternal setMinPlayers:](self, "setMinPlayers:", [v4 minPlayers]);
  -[GKTurnBasedMatchInternal setMaxPlayers:](self, "setMaxPlayers:", [v4 maxPlayers]);
  v20 = [v4 deletionDate];
  [(GKTurnBasedMatchInternal *)self setDeletionDate:v20];

  -[GKTurnBasedMatchInternal setCurrentParticipant:](self, "setCurrentParticipant:", [v4 currentParticipant]);
  -[GKTurnBasedMatchInternal setTurnNumber:](self, "setTurnNumber:", [v4 turnNumber]);
  v21 = [v4 lastTurnPlayerID];
  [(GKTurnBasedMatchInternal *)self setLastTurnPlayerID:v21];

  v22 = [v4 gameData];
  [(GKTurnBasedMatchInternal *)self setMatchData:v22];

  v23 = [v4 matchDataVersion];
  [(GKTurnBasedMatchInternal *)self setMatchDataVersion:v23];

  v24 = [v4 bundleID];
  [(GKTurnBasedMatchInternal *)self setBundleID:v24];

  v25 = [v4 bundleVersion];
  [(GKTurnBasedMatchInternal *)self setBundleVersion:v25];

  v26 = [v4 shortBundleVersion];
  [(GKTurnBasedMatchInternal *)self setShortBundleVersion:v26];

  v27 = [v4 participants];
  v28 = [[NSMutableSet alloc] initWithCapacity:0];
  v29 = [v4 currentPlayerID];

  if (v29)
  {
    v30 = [v4 currentPlayerID];
    [v28 addObject:v30];
  }

  v31 = [v27 _gkValuesForKeyPath:@"playerID"];
  [v28 addObjectsFromArray:v31];

  v32 = [v27 _gkValuesForKeyPath:@"invitedBy"];
  [v28 addObjectsFromArray:v32];

  v33 = [v28 allObjects];
  v48 = v11;
  v34 = [GKPlayerProfileCacheObject playerProfilesWithPlayerIDs:v33 inManagedObjectContext:v11];

  v35 = [v34 _gkValuesForKeyPath:@"internalRepresentation"];
  v36 = [v35 _gkMapDictionaryWithKeyPath:@"playerID"];
  v37 = [v4 currentPlayerID];
  v38 = [v37 length];

  if (v38)
  {
    v39 = [v4 currentPlayerID];
    v40 = [v36 objectForKeyedSubscript:v39];
    [(GKTurnBasedMatchInternal *)self setCurrentPlayer:v40];
  }

  v41 = [v4 participants];
  v42 = [v41 array];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100161ED8;
  v49[3] = &unk_100369218;
  v50 = v36;
  v43 = v36;
  v44 = [v42 _gkMapWithBlock:v49];
  [(GKTurnBasedMatchInternal *)self setParticipants:v44];

  v45 = [v4 exchanges];
  v46 = [v45 array];
  v47 = [v46 _gkMapWithBlock:&stru_100369258];
  [(GKTurnBasedMatchInternal *)self setExchanges:v47];
}

@end