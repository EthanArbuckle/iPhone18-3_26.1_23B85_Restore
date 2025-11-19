@interface GKTurnBasedExchangeInternal
- (void)updateWithCacheObject:(id)a3;
@end

@implementation GKTurnBasedExchangeInternal

- (void)updateWithCacheObject:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedExchangeInternal(Cache) updateWithCacheObject:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/GKInternalRepresentation+Cache.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKTurnBasedExchangeInternal(Cache) updateWithCacheObject:]", [v9 UTF8String], 395);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v11 = [v4 session];
  v12 = [v11 participants];

  v13 = [v4 recipients];
  v14 = [v13 array];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100162600;
  v28[3] = &unk_100369218;
  v29 = v12;
  v15 = v12;
  v16 = [v14 _gkMapWithBlock:v28];
  [(GKTurnBasedExchangeInternal *)self setRecipientIndexes:v16];

  -[GKTurnBasedExchangeInternal setSenderIndex:](self, "setSenderIndex:", [v4 senderIndex]);
  v17 = [v4 exchangeID];
  [(GKTurnBasedExchangeInternal *)self setExchangeID:v17];

  v18 = [v4 statusString];
  [(GKTurnBasedExchangeInternal *)self setStatusString:v18];

  v19 = [v4 data];
  [(GKTurnBasedExchangeInternal *)self setData:v19];

  v20 = [v4 localizableMessage];
  v21 = [NSPropertyListSerialization _gkTypesafePropertyListWithData:v20 withClass:objc_opt_class()];
  [(GKTurnBasedExchangeInternal *)self setLocalizableMessage:v21];

  v22 = [v4 sendDate];
  [(GKTurnBasedExchangeInternal *)self setSendDate:v22];

  v23 = [v4 timeoutDate];
  [(GKTurnBasedExchangeInternal *)self setTimeoutDate:v23];

  v24 = [v4 completionDate];
  [(GKTurnBasedExchangeInternal *)self setCompletionDate:v24];

  v25 = [v4 replies];
  v26 = [v25 array];
  v27 = [v26 _gkMapWithBlock:&stru_1003692C0];
  [(GKTurnBasedExchangeInternal *)self setReplies:v27];
}

@end