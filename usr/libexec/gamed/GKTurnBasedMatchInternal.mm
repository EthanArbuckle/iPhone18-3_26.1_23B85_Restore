@interface GKTurnBasedMatchInternal
- (void)updateWithCacheObject:(id)object;
@end

@implementation GKTurnBasedMatchInternal

- (void)updateWithCacheObject:(id)object
{
  objectCopy = object;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedMatchInternal(Cache) updateWithCacheObject:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/GKInternalRepresentation+Cache.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKTurnBasedMatchInternal(Cache) updateWithCacheObject:]", [lastPathComponent UTF8String], 297);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  managedObjectContext = [objectCopy managedObjectContext];
  sessionID = [objectCopy sessionID];
  [(GKTurnBasedMatchInternal *)self setMatchID:sessionID];

  status = [objectCopy status];
  [(GKTurnBasedMatchInternal *)self setStatus:status];

  creationDate = [objectCopy creationDate];
  [(GKTurnBasedMatchInternal *)self setCreationDate:creationDate];

  lastTurnDate = [objectCopy lastTurnDate];
  [(GKTurnBasedMatchInternal *)self setLastTurnDate:lastTurnDate];

  message = [objectCopy message];
  [(GKTurnBasedMatchInternal *)self setMessage:message];

  localizableMessage = [objectCopy localizableMessage];
  v18 = [NSPropertyListSerialization _gkTypesafePropertyListWithData:localizableMessage withClass:objc_opt_class()];
  [(GKTurnBasedMatchInternal *)self setLocalizableMessage:v18];

  reason = [objectCopy reason];
  [(GKTurnBasedMatchInternal *)self setReason:reason];

  -[GKTurnBasedMatchInternal setMinPlayers:](self, "setMinPlayers:", [objectCopy minPlayers]);
  -[GKTurnBasedMatchInternal setMaxPlayers:](self, "setMaxPlayers:", [objectCopy maxPlayers]);
  deletionDate = [objectCopy deletionDate];
  [(GKTurnBasedMatchInternal *)self setDeletionDate:deletionDate];

  -[GKTurnBasedMatchInternal setCurrentParticipant:](self, "setCurrentParticipant:", [objectCopy currentParticipant]);
  -[GKTurnBasedMatchInternal setTurnNumber:](self, "setTurnNumber:", [objectCopy turnNumber]);
  lastTurnPlayerID = [objectCopy lastTurnPlayerID];
  [(GKTurnBasedMatchInternal *)self setLastTurnPlayerID:lastTurnPlayerID];

  gameData = [objectCopy gameData];
  [(GKTurnBasedMatchInternal *)self setMatchData:gameData];

  matchDataVersion = [objectCopy matchDataVersion];
  [(GKTurnBasedMatchInternal *)self setMatchDataVersion:matchDataVersion];

  bundleID = [objectCopy bundleID];
  [(GKTurnBasedMatchInternal *)self setBundleID:bundleID];

  bundleVersion = [objectCopy bundleVersion];
  [(GKTurnBasedMatchInternal *)self setBundleVersion:bundleVersion];

  shortBundleVersion = [objectCopy shortBundleVersion];
  [(GKTurnBasedMatchInternal *)self setShortBundleVersion:shortBundleVersion];

  participants = [objectCopy participants];
  v28 = [[NSMutableSet alloc] initWithCapacity:0];
  currentPlayerID = [objectCopy currentPlayerID];

  if (currentPlayerID)
  {
    currentPlayerID2 = [objectCopy currentPlayerID];
    [v28 addObject:currentPlayerID2];
  }

  v31 = [participants _gkValuesForKeyPath:@"playerID"];
  [v28 addObjectsFromArray:v31];

  v32 = [participants _gkValuesForKeyPath:@"invitedBy"];
  [v28 addObjectsFromArray:v32];

  allObjects = [v28 allObjects];
  v48 = managedObjectContext;
  v34 = [GKPlayerProfileCacheObject playerProfilesWithPlayerIDs:allObjects inManagedObjectContext:managedObjectContext];

  v35 = [v34 _gkValuesForKeyPath:@"internalRepresentation"];
  v36 = [v35 _gkMapDictionaryWithKeyPath:@"playerID"];
  currentPlayerID3 = [objectCopy currentPlayerID];
  v38 = [currentPlayerID3 length];

  if (v38)
  {
    currentPlayerID4 = [objectCopy currentPlayerID];
    v40 = [v36 objectForKeyedSubscript:currentPlayerID4];
    [(GKTurnBasedMatchInternal *)self setCurrentPlayer:v40];
  }

  participants2 = [objectCopy participants];
  array = [participants2 array];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100161ED8;
  v49[3] = &unk_100369218;
  v50 = v36;
  v43 = v36;
  v44 = [array _gkMapWithBlock:v49];
  [(GKTurnBasedMatchInternal *)self setParticipants:v44];

  exchanges = [objectCopy exchanges];
  array2 = [exchanges array];
  v47 = [array2 _gkMapWithBlock:&stru_100369258];
  [(GKTurnBasedMatchInternal *)self setExchanges:v47];
}

@end