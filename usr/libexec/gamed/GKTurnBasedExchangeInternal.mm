@interface GKTurnBasedExchangeInternal
- (void)updateWithCacheObject:(id)object;
@end

@implementation GKTurnBasedExchangeInternal

- (void)updateWithCacheObject:(id)object
{
  objectCopy = object;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedExchangeInternal(Cache) updateWithCacheObject:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/GKInternalRepresentation+Cache.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKTurnBasedExchangeInternal(Cache) updateWithCacheObject:]", [lastPathComponent UTF8String], 395);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  session = [objectCopy session];
  participants = [session participants];

  recipients = [objectCopy recipients];
  array = [recipients array];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100162600;
  v28[3] = &unk_100369218;
  v29 = participants;
  v15 = participants;
  v16 = [array _gkMapWithBlock:v28];
  [(GKTurnBasedExchangeInternal *)self setRecipientIndexes:v16];

  -[GKTurnBasedExchangeInternal setSenderIndex:](self, "setSenderIndex:", [objectCopy senderIndex]);
  exchangeID = [objectCopy exchangeID];
  [(GKTurnBasedExchangeInternal *)self setExchangeID:exchangeID];

  statusString = [objectCopy statusString];
  [(GKTurnBasedExchangeInternal *)self setStatusString:statusString];

  data = [objectCopy data];
  [(GKTurnBasedExchangeInternal *)self setData:data];

  localizableMessage = [objectCopy localizableMessage];
  v21 = [NSPropertyListSerialization _gkTypesafePropertyListWithData:localizableMessage withClass:objc_opt_class()];
  [(GKTurnBasedExchangeInternal *)self setLocalizableMessage:v21];

  sendDate = [objectCopy sendDate];
  [(GKTurnBasedExchangeInternal *)self setSendDate:sendDate];

  timeoutDate = [objectCopy timeoutDate];
  [(GKTurnBasedExchangeInternal *)self setTimeoutDate:timeoutDate];

  completionDate = [objectCopy completionDate];
  [(GKTurnBasedExchangeInternal *)self setCompletionDate:completionDate];

  replies = [objectCopy replies];
  array2 = [replies array];
  v27 = [array2 _gkMapWithBlock:&stru_1003692C0];
  [(GKTurnBasedExchangeInternal *)self setReplies:v27];
}

@end