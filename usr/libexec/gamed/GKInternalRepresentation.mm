@interface GKInternalRepresentation
+ (id)internalRepresentationForCacheObject:(id)a3;
- (id)initWithCacheObject:(id)a3;
- (void)updateWithCacheObject:(id)a3;
@end

@implementation GKInternalRepresentation

+ (id)internalRepresentationForCacheObject:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCacheObject:v4];

  return v5;
}

- (id)initWithCacheObject:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKInternalRepresentation(Cache) initWithCacheObject:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/GKInternalRepresentation+Cache.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKInternalRepresentation(Cache) initWithCacheObject:]", [v9 UTF8String], 36);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v14.receiver = self;
  v14.super_class = GKInternalRepresentation;
  v11 = [(GKInternalRepresentation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(GKInternalRepresentation *)v11 updateWithCacheObject:v4];
  }

  return v12;
}

- (void)updateWithCacheObject:(id)a3
{
  v19 = a3;
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKInternalRepresentation(Cache) updateWithCacheObject:]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/GKInternalRepresentation+Cache.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKInternalRepresentation(Cache) updateWithCacheObject:]", [v7 UTF8String], 47);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = [objc_opt_class() secureCodedPropertyKeys];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v9 allKeys];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [v9 objectForKey:v15];
        if ([v16 isMemberOfClass:objc_opt_class()])
        {
          v17 = 0;
        }

        else
        {
          v17 = [v19 valueForKey:v15];
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v17)
          {
            goto LABEL_15;
          }

          [(GKInternalRepresentation *)self setValue:v17 forKey:v15];
        }

LABEL_15:
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }
}

@end