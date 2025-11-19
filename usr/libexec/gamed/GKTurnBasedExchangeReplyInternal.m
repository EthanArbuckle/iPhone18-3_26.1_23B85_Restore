@interface GKTurnBasedExchangeReplyInternal
- (void)updateWithCacheObject:(id)a3;
@end

@implementation GKTurnBasedExchangeReplyInternal

- (void)updateWithCacheObject:(id)a3
{
  v14 = a3;
  v4 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v4, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v5 = +[NSThread callStackSymbols];
    v6 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedExchangeReplyInternal(Cache) updateWithCacheObject:]", v5];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/GKInternalRepresentation+Cache.m"];
    v8 = [v7 lastPathComponent];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v6, "-[GKTurnBasedExchangeReplyInternal(Cache) updateWithCacheObject:]", [v8 UTF8String], 428);

    [NSException raise:@"GameKit Exception" format:@"%@", v9];
  }

  -[GKTurnBasedExchangeReplyInternal setRecipientIndex:](self, "setRecipientIndex:", [v14 recipientIndex]);
  v10 = [v14 localizableMessage];
  v11 = [NSPropertyListSerialization _gkTypesafePropertyListWithData:v10 withClass:objc_opt_class()];
  [(GKTurnBasedExchangeReplyInternal *)self setLocalizableMessage:v11];

  v12 = [v14 data];
  [(GKTurnBasedExchangeReplyInternal *)self setData:v12];

  v13 = [v14 replyDate];
  [(GKTurnBasedExchangeReplyInternal *)self setReplyDate:v13];
}

@end