@interface GKTurnBasedParticipantInternal
- (void)updateWithCacheObject:(id)a3;
@end

@implementation GKTurnBasedParticipantInternal

- (void)updateWithCacheObject:(id)a3
{
  v16 = a3;
  v4 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v4, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v5 = +[NSThread callStackSymbols];
    v6 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedParticipantInternal(Cache) updateWithCacheObject:]", v5];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/GKInternalRepresentation+Cache.m"];
    v8 = [v7 lastPathComponent];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v6, "-[GKTurnBasedParticipantInternal(Cache) updateWithCacheObject:]", [v8 UTF8String], 375);

    [NSException raise:@"GameKit Exception" format:@"%@", v9];
  }

  v10 = [v16 session];
  v11 = [v10 sessionID];
  [(GKTurnBasedParticipantInternal *)self setSessionID:v11];

  v12 = [v16 lastTurnDate];
  [(GKTurnBasedParticipantInternal *)self setLastTurnDate:v12];

  v13 = [v16 timeoutDate];
  [(GKTurnBasedParticipantInternal *)self setTimeoutDate:v13];

  v14 = [v16 inviteMessage];
  [(GKTurnBasedParticipantInternal *)self setInviteMessage:v14];

  v15 = [v16 status];
  [(GKTurnBasedParticipantInternal *)self setStatus:v15];

  -[GKTurnBasedParticipantInternal setMatchOutcome:](self, "setMatchOutcome:", [v16 outcome]);
}

@end