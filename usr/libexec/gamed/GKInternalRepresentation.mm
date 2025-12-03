@interface GKInternalRepresentation
+ (id)internalRepresentationForCacheObject:(id)object;
- (id)initWithCacheObject:(id)object;
- (void)updateWithCacheObject:(id)object;
@end

@implementation GKInternalRepresentation

+ (id)internalRepresentationForCacheObject:(id)object
{
  objectCopy = object;
  v5 = [[self alloc] initWithCacheObject:objectCopy];

  return v5;
}

- (id)initWithCacheObject:(id)object
{
  objectCopy = object;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKInternalRepresentation(Cache) initWithCacheObject:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/GKInternalRepresentation+Cache.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKInternalRepresentation(Cache) initWithCacheObject:]", [lastPathComponent UTF8String], 36);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v14.receiver = self;
  v14.super_class = GKInternalRepresentation;
  v11 = [(GKInternalRepresentation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(GKInternalRepresentation *)v11 updateWithCacheObject:objectCopy];
  }

  return v12;
}

- (void)updateWithCacheObject:(id)object
{
  objectCopy = object;
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKInternalRepresentation(Cache) updateWithCacheObject:]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/GKInternalRepresentation+Cache.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKInternalRepresentation(Cache) updateWithCacheObject:]", [lastPathComponent UTF8String], 47);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  secureCodedPropertyKeys = [objc_opt_class() secureCodedPropertyKeys];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [secureCodedPropertyKeys allKeys];
  v11 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [secureCodedPropertyKeys objectForKey:v15];
        if ([v16 isMemberOfClass:objc_opt_class()])
        {
          v17 = 0;
        }

        else
        {
          v17 = [objectCopy valueForKey:v15];
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

      v12 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }
}

@end