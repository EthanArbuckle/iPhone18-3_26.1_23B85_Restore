@interface GKTurnBasedExchangeReplyCacheObject
- (void)updateWithServerRepresentation:(id)a3;
@end

@implementation GKTurnBasedExchangeReplyCacheObject

- (void)updateWithServerRepresentation:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedExchangeReplyCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKTurnBasedExchangeReplyCacheObject updateWithServerRepresentation:]", [v9 UTF8String], 4089);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v18.receiver = self;
  v18.super_class = GKTurnBasedExchangeReplyCacheObject;
  [(GKCacheObject *)&v18 updateWithServerRepresentation:v4];
  v11 = [v4 objectForKeyedSubscript:@"slot"];
  v12 = v11;
  if (v11)
  {
    -[GKTurnBasedExchangeReplyCacheObject setRecipientIndex:](self, "setRecipientIndex:", [v11 integerValue]);
  }

  v13 = [v4 objectForKeyedSubscript:@"message"];
  if (v13)
  {
    v14 = [NSPropertyListSerialization dataWithPropertyList:v13 format:100 options:0 error:0];
    [(GKTurnBasedExchangeReplyCacheObject *)self setLocalizableMessage:v14];
  }

  else
  {
    [(GKTurnBasedExchangeReplyCacheObject *)self setLocalizableMessage:0];
  }

  v15 = [v4 objectForKeyedSubscript:@"data"];
  [(GKTurnBasedExchangeReplyCacheObject *)self setData:v15];

  v16 = [v4 objectForKeyedSubscript:@"sent-at"];
  if (v16)
  {
    v17 = [NSDate _gkDateFromServerTimestamp:v16];
    [(GKTurnBasedExchangeReplyCacheObject *)self setReplyDate:v17];
  }
}

@end