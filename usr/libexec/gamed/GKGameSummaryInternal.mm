@interface GKGameSummaryInternal
+ (id)internalGameSummariesFromResults:(id)results limit:(id)limit;
- (id)initWithGameSummary:(id)summary;
@end

@implementation GKGameSummaryInternal

- (id)initWithGameSummary:(id)summary
{
  summaryCopy = summary;
  v14.receiver = self;
  v14.super_class = GKGameSummaryInternal;
  v5 = [(GKGameSummaryInternal *)&v14 init];
  if (v5)
  {
    adamID = [summaryCopy adamID];
    [(GKGameSummaryInternal *)v5 setAdamID:adamID];

    bundleID = [summaryCopy bundleID];
    [(GKGameSummaryInternal *)v5 setBundleID:bundleID];

    compatiblePlatforms = [summaryCopy compatiblePlatforms];
    integerValue = [compatiblePlatforms integerValue];

    v10 = [GKGameDescriptor gamePlatformStringSetFromGamePlatformSet:integerValue];
    [(GKGameSummaryInternal *)v5 setCompatiblePlatforms:v10];

    playedAt = [summaryCopy playedAt];
    [(GKGameSummaryInternal *)v5 setPlayedAt:playedAt];

    isArcade = [summaryCopy isArcade];
    -[GKGameSummaryInternal setIsArcade:](v5, "setIsArcade:", [isArcade BOOLValue]);
  }

  return v5;
}

+ (id)internalGameSummariesFromResults:(id)results limit:(id)limit
{
  resultsCopy = results;
  limitCopy = limit;
  v7 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v7, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v8 = +[NSThread callStackSymbols];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKGameSummaryInternal(GKDaemonAdditions) internalGameSummariesFromResults:limit:]", v8);
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKGameSummaryInternal+GKDaemonAdditions.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v9, "+[GKGameSummaryInternal(GKDaemonAdditions) internalGameSummariesFromResults:limit:]", [lastPathComponent UTF8String], 34);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  v13 = objc_alloc_init(NSMutableArray);
  if ([resultsCopy count])
  {
    v14 = [resultsCopy count];
    v30 = limitCopy;
    if (limitCopy)
    {
      longValue = [limitCopy longValue];
      v16 = [resultsCopy count];
      if (longValue >= v16)
      {
        longValue = v16;
      }
    }

    else
    {
      longValue = v14;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = resultsCopy;
    v17 = resultsCopy;
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
        bundleID = [v23 bundleID];
        v25 = [bundleID isEqualToString:v21];

        if ((v25 & 1) == 0)
        {
          v26 = [[GKGameSummaryInternal alloc] initWithGameSummary:v23];
          [v13 addObject:v26];
          v27 = [v13 count];

          if (v27 >= longValue)
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

    limitCopy = v30;
    resultsCopy = v31;
  }

  v28 = [v13 copy];

  return v28;
}

@end