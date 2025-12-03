@interface GKTurnBasedParticipantInternal
- (void)updateWithCacheObject:(id)object;
@end

@implementation GKTurnBasedParticipantInternal

- (void)updateWithCacheObject:(id)object
{
  objectCopy = object;
  v4 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v4, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v5 = +[NSThread callStackSymbols];
    v6 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedParticipantInternal(Cache) updateWithCacheObject:]", v5];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/GKInternalRepresentation+Cache.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v6, "-[GKTurnBasedParticipantInternal(Cache) updateWithCacheObject:]", [lastPathComponent UTF8String], 375);

    [NSException raise:@"GameKit Exception" format:@"%@", v9];
  }

  session = [objectCopy session];
  sessionID = [session sessionID];
  [(GKTurnBasedParticipantInternal *)self setSessionID:sessionID];

  lastTurnDate = [objectCopy lastTurnDate];
  [(GKTurnBasedParticipantInternal *)self setLastTurnDate:lastTurnDate];

  timeoutDate = [objectCopy timeoutDate];
  [(GKTurnBasedParticipantInternal *)self setTimeoutDate:timeoutDate];

  inviteMessage = [objectCopy inviteMessage];
  [(GKTurnBasedParticipantInternal *)self setInviteMessage:inviteMessage];

  status = [objectCopy status];
  [(GKTurnBasedParticipantInternal *)self setStatus:status];

  -[GKTurnBasedParticipantInternal setMatchOutcome:](self, "setMatchOutcome:", [objectCopy outcome]);
}

@end