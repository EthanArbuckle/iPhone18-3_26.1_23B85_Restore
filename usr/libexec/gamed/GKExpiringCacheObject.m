@interface GKExpiringCacheObject
+ (id)fetchSortDescriptors;
+ (void)expireObjectsMatchingPredicate:(id)a3 context:(id)a4;
+ (void)invalidateObjectsMatchingPredicate:(id)a3 context:(id)a4;
- (BOOL)expired;
- (BOOL)isValid;
- (void)awakeFromInsert;
- (void)expire;
- (void)invalidate;
- (void)updateWithServerRepresentation:(id)a3;
- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4;
@end

@implementation GKExpiringCacheObject

+ (id)fetchSortDescriptors
{
  v2 = [NSSortDescriptor sortDescriptorWithKey:@"timeStamp" ascending:0];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (BOOL)isValid
{
  v2 = [(GKExpiringCacheObject *)self expirationDate];
  v3 = v2 != 0;

  return v3;
}

- (void)invalidate
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKExpiringCacheObject invalidate]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKExpiringCacheObject invalidate]", [v7 UTF8String], 593);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  [(GKExpiringCacheObject *)self setExpirationDate:0];
}

- (void)expire
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKExpiringCacheObject expire]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKExpiringCacheObject expire]", [v7 UTF8String], 599);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  if ([(GKExpiringCacheObject *)self isValid])
  {
    v9 = [NSDate dateWithTimeIntervalSinceNow:-1.0];
    [(GKExpiringCacheObject *)self setExpirationDate:v9];

    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_10028FE40();
    }
  }
}

- (BOOL)expired
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKExpiringCacheObject expired]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKExpiringCacheObject expired]", [v7 UTF8String], 608);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  if (![(GKExpiringCacheObject *)self isValid])
  {
    return 1;
  }

  v9 = [(GKExpiringCacheObject *)self expirationDate];
  [v9 timeIntervalSinceNow];
  v11 = v10 <= 0.0;

  return v11;
}

- (void)updateWithServerRepresentation:(id)a3
{
  v4 = a3;
  v5 = [NSDate dateWithTimeIntervalSinceNow:30.0];
  [(GKExpiringCacheObject *)self updateWithServerRepresentation:v4 expirationDate:v5];
}

- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_10028FEB0();
  }

  v9 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v9, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v10 = +[NSThread callStackSymbols];
    v11 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKExpiringCacheObject updateWithServerRepresentation:expirationDate:]", v10];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v13 = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v11, "-[GKExpiringCacheObject updateWithServerRepresentation:expirationDate:]", [v13 UTF8String], 626);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  v15 = +[NSDate date];
  v16.receiver = self;
  v16.super_class = GKExpiringCacheObject;
  [(GKCacheObject *)&v16 updateWithServerRepresentation:v6];
  if (!v7)
  {
    v7 = [(GKExpiringCacheObject *)self expirationDate];
    if (!v7)
    {
      v7 = v15;
    }
  }

  [(GKExpiringCacheObject *)self setTimeStamp:v15];
  [(GKExpiringCacheObject *)self setExpirationDate:v7];
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = GKExpiringCacheObject;
  [(GKExpiringCacheObject *)&v4 awakeFromInsert];
  v3 = +[NSDate date];
  [(GKExpiringCacheObject *)self setTimeStamp:v3];
}

+ (void)expireObjectsMatchingPredicate:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_10028FEEC();
  }

  v9 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v9, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v10 = +[NSThread callStackSymbols];
    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKExpiringCacheObject expireObjectsMatchingPredicate:context:]", v10);
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v13 = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v11, "+[GKExpiringCacheObject expireObjectsMatchingPredicate:context:]", [v13 UTF8String], 646);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  v15 = [a1 objectsMatchingPredicate:v6 context:v7];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * v19) expire];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }
}

+ (void)invalidateObjectsMatchingPredicate:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKExpiringCacheObject invalidateObjectsMatchingPredicate:context:]", v9);
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v12 = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "+[GKExpiringCacheObject invalidateObjectsMatchingPredicate:context:]", [v12 UTF8String], 655);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v14 = [a1 objectsMatchingPredicate:v6 context:v7];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * v18) setExpirationDate:0];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

@end