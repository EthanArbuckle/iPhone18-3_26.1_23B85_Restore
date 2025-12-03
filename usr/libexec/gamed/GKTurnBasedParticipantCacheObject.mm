@interface GKTurnBasedParticipantCacheObject
- (void)updateWithServerRepresentation:(id)representation;
@end

@implementation GKTurnBasedParticipantCacheObject

- (void)updateWithServerRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedParticipantCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKTurnBasedParticipantCacheObject updateWithServerRepresentation:]", [lastPathComponent UTF8String], 3974);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v23.receiver = self;
  v23.super_class = GKTurnBasedParticipantCacheObject;
  [(GKCacheObject *)&v23 updateWithServerRepresentation:representationCopy];
  v11 = [representationCopy objectForKey:@"player-id"];
  if ([v11 length])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [(GKTurnBasedParticipantCacheObject *)self setPlayerID:v12];
  v13 = [representationCopy objectForKey:@"invited-by"];

  if ([v13 length])
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  [(GKTurnBasedParticipantCacheObject *)self setInvitedBy:v14];
  v15 = [representationCopy objectForKey:@"invite-message"];
  [(GKTurnBasedParticipantCacheObject *)self setInviteMessage:v15];

  v16 = [representationCopy objectForKey:@"player-status-code"];
  -[GKTurnBasedParticipantCacheObject setOutcome:](self, "setOutcome:", [v16 integerValue]);

  v17 = [representationCopy objectForKey:@"player-status"];
  [(GKTurnBasedParticipantCacheObject *)self setStatus:v17];

  v18 = [representationCopy objectForKey:@"guest-id"];
  [(GKTurnBasedParticipantCacheObject *)self setGuestID:v18];

  v19 = [representationCopy objectForKey:@"player-last-turn-at"];
  if (v19)
  {
    v20 = [NSDate _gkDateFromServerTimestamp:v19];
    [(GKTurnBasedParticipantCacheObject *)self setLastTurnDate:v20];
  }

  v21 = [representationCopy objectForKey:@"player-timeout-at"];
  if (v21)
  {
    v22 = [NSDate _gkDateFromServerTimestamp:v21];
    [(GKTurnBasedParticipantCacheObject *)self setTimeoutDate:v22];
  }
}

@end