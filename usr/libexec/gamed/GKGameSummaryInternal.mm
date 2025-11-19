@interface GKGameSummaryInternal
+ (id)internalGameSummariesFromResults:(id)a3 limit:(id)a4;
- (id)initWithGameSummary:(id)a3;
@end

@implementation GKGameSummaryInternal

- (id)initWithGameSummary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = GKGameSummaryInternal;
  v5 = [(GKGameSummaryInternal *)&v14 init];
  if (v5)
  {
    v6 = [v4 adamID];
    [(GKGameSummaryInternal *)v5 setAdamID:v6];

    v7 = [v4 bundleID];
    [(GKGameSummaryInternal *)v5 setBundleID:v7];

    v8 = [v4 compatiblePlatforms];
    v9 = [v8 integerValue];

    v10 = [GKGameDescriptor gamePlatformStringSetFromGamePlatformSet:v9];
    [(GKGameSummaryInternal *)v5 setCompatiblePlatforms:v10];

    v11 = [v4 playedAt];
    [(GKGameSummaryInternal *)v5 setPlayedAt:v11];

    v12 = [v4 isArcade];
    -[GKGameSummaryInternal setIsArcade:](v5, "setIsArcade:", [v12 BOOLValue]);
  }

  return v5;
}

+ (id)internalGameSummariesFromResults:(id)a3 limit:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v7, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v8 = +[NSThread callStackSymbols];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKGameSummaryInternal(GKDaemonAdditions) internalGameSummariesFromResults:limit:]", v8);
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKGameSummaryInternal+GKDaemonAdditions.m"];
    v11 = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v9, "+[GKGameSummaryInternal(GKDaemonAdditions) internalGameSummariesFromResults:limit:]", [v11 UTF8String], 34);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  v13 = objc_alloc_init(NSMutableArray);
  if ([v5 count])
  {
    v14 = [v5 count];
    v30 = v6;
    if (v6)
    {
      v15 = [v6 longValue];
      v16 = [v5 count];
      if (v15 >= v16)
      {
        v15 = v16;
      }
    }

    else
    {
      v15 = v14;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = v5;
    v17 = v5;
    v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v33;
      v21 = GKGameCenterIdentifier;
LABEL_11:
      v22 = 0;
      while (1)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v32 + 1) + 8 * v22);
        v24 = [v23 bundleID];
        v25 = [v24 isEqualToString:v21];

        if ((v25 & 1) == 0)
        {
          v26 = [[GKGameSummaryInternal alloc] initWithGameSummary:v23];
          [v13 addObject:v26];
          v27 = [v13 count];

          if (v27 >= v15)
          {
            break;
          }
        }

        if (v19 == ++v22)
        {
          v19 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v19)
          {
            goto LABEL_11;
          }

          break;
        }
      }
    }

    v6 = v30;
    v5 = v31;
  }

  v28 = [v13 copy];

  return v28;
}

@end