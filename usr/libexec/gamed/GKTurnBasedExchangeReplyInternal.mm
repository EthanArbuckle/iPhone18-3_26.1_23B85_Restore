@interface GKTurnBasedExchangeReplyInternal
- (void)updateWithCacheObject:(id)object;
@end

@implementation GKTurnBasedExchangeReplyInternal

- (void)updateWithCacheObject:(id)object
{
  objectCopy = object;
  v4 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v4, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v5 = +[NSThread callStackSymbols];
    v6 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedExchangeReplyInternal(Cache) updateWithCacheObject:]", v5];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/GKInternalRepresentation+Cache.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v6, "-[GKTurnBasedExchangeReplyInternal(Cache) updateWithCacheObject:]", [lastPathComponent UTF8String], 428);

    [NSException raise:@"GameKit Exception" format:@"%@", v9];
  }

  -[GKTurnBasedExchangeReplyInternal setRecipientIndex:](self, "setRecipientIndex:", [objectCopy recipientIndex]);
  localizableMessage = [objectCopy localizableMessage];
  v11 = [NSPropertyListSerialization _gkTypesafePropertyListWithData:localizableMessage withClass:objc_opt_class()];
  [(GKTurnBasedExchangeReplyInternal *)self setLocalizableMessage:v11];

  data = [objectCopy data];
  [(GKTurnBasedExchangeReplyInternal *)self setData:data];

  replyDate = [objectCopy replyDate];
  [(GKTurnBasedExchangeReplyInternal *)self setReplyDate:replyDate];
}

@end