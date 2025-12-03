@interface GKTurnBasedExchangeCacheObject
- (void)updateWithServerRepresentation:(id)representation participants:(id)participants;
@end

@implementation GKTurnBasedExchangeCacheObject

- (void)updateWithServerRepresentation:(id)representation participants:(id)participants
{
  representationCopy = representation;
  participantsCopy = participants;
  v7 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v7, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedExchangeCacheObject updateWithServerRepresentation:participants:]", v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v9, "-[GKTurnBasedExchangeCacheObject updateWithServerRepresentation:participants:]", [lastPathComponent UTF8String], 4012);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  v66.receiver = self;
  v66.super_class = GKTurnBasedExchangeCacheObject;
  [(GKCacheObject *)&v66 updateWithServerRepresentation:representationCopy];
  v13 = [representationCopy objectForKeyedSubscript:@"request-id"];
  v56 = v13;
  if ([v13 length])
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  [(GKTurnBasedExchangeCacheObject *)self setExchangeID:v14];
  v15 = [representationCopy objectForKeyedSubscript:@"status"];
  [(GKTurnBasedExchangeCacheObject *)self setStatusString:v15];

  v16 = [representationCopy objectForKeyedSubscript:@"data"];
  [(GKTurnBasedExchangeCacheObject *)self setData:v16];

  v17 = [representationCopy objectForKeyedSubscript:@"message"];
  v55 = v17;
  if (v17)
  {
    v18 = [NSPropertyListSerialization dataWithPropertyList:v17 format:100 options:0 error:0];
    [(GKTurnBasedExchangeCacheObject *)self setLocalizableMessage:v18];
  }

  else
  {
    [(GKTurnBasedExchangeCacheObject *)self setLocalizableMessage:0];
  }

  v19 = [representationCopy objectForKeyedSubscript:@"sent-at"];
  if (v19)
  {
    v20 = [NSDate _gkDateFromServerTimestamp:v19];
    [(GKTurnBasedExchangeCacheObject *)self setSendDate:v20];
  }

  v21 = [representationCopy objectForKeyedSubscript:@"timeout-at"];
  if (v21)
  {
    v22 = [NSDate _gkDateFromServerTimestamp:v21];
    [(GKTurnBasedExchangeCacheObject *)self setTimeoutDate:v22];
  }

  v23 = [representationCopy objectForKeyedSubscript:@"completed-at"];
  if (v23)
  {
    v24 = [NSDate _gkDateFromServerTimestamp:v23];
    [(GKTurnBasedExchangeCacheObject *)self setCompletionDate:v24];
  }

  v52 = v23;
  v25 = [representationCopy objectForKeyedSubscript:@"from-slot"];
  v26 = v25;
  if (v25)
  {
    -[GKTurnBasedExchangeCacheObject setSenderIndex:](self, "setSenderIndex:", [v25 integerValue]);
  }

  v51 = v26;
  v53 = v21;
  v54 = v19;
  v27 = [representationCopy objectForKeyedSubscript:@"to-slots"];
  if (v27)
  {
    v28 = [participantsCopy count];
    v29 = +[NSMutableOrderedSet orderedSet];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v30 = v27;
    v31 = v27;
    v32 = [v31 countByEnumeratingWithState:&v62 objects:v68 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v63;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v63 != v34)
          {
            objc_enumerationMutation(v31);
          }

          integerValue = [*(*(&v62 + 1) + 8 * i) integerValue];
          if ((integerValue & 0x8000000000000000) == 0 || integerValue < v28)
          {
            v37 = [participantsCopy objectAtIndexedSubscript:integerValue];
            [v29 addObject:v37];
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v62 objects:v68 count:16];
      }

      while (v33);
    }

    [(GKTurnBasedExchangeCacheObject *)self setRecipients:v29];
    v27 = v30;
  }

  managedObjectContext = [(GKTurnBasedExchangeCacheObject *)self managedObjectContext];
  replies = [(GKTurnBasedExchangeCacheObject *)self replies];
  [managedObjectContext _gkDeleteObjects:replies];

  v40 = [representationCopy objectForKeyedSubscript:@"replies"];
  if ([v40 count])
  {
    v49 = v27;
    v50 = representationCopy;
    v41 = [[NSMutableOrderedSet alloc] initWithCapacity:{objc_msgSend(v40, "count")}];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v42 = v40;
    v43 = [v42 countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v59;
      do
      {
        for (j = 0; j != v44; j = j + 1)
        {
          if (*v59 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v58 + 1) + 8 * j);
          v48 = [(GKCacheObject *)[GKTurnBasedExchangeReplyCacheObject alloc] initWithManagedObjectContext:managedObjectContext];
          [(GKTurnBasedExchangeReplyCacheObject *)v48 updateWithServerRepresentation:v47];
          [(GKTurnBasedExchangeReplyCacheObject *)v48 setExchange:self];
          [v41 addObject:v48];
        }

        v44 = [v42 countByEnumeratingWithState:&v58 objects:v67 count:16];
      }

      while (v44);
    }

    [(GKTurnBasedExchangeCacheObject *)self setReplies:v41];
    v27 = v49;
    representationCopy = v50;
  }
}

@end