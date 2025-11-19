@interface GKLeaderboardCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)a3;
@end

@implementation GKLeaderboardCacheObject

- (void)updateWithServerRepresentation:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKLeaderboardCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKLeaderboardCacheObject updateWithServerRepresentation:]", [v9 UTF8String], 3179);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v56.receiver = self;
  v56.super_class = GKLeaderboardCacheObject;
  [(GKCacheObject *)&v56 updateWithServerRepresentation:v4];
  v11 = [v4 objectForKeyedSubscript:@"global-alltime-info"];
  if (!v11)
  {
    v11 = v4;
  }

  v12 = [v11 objectForKeyedSubscript:@"leaderboard-id"];
  if (!v12)
  {
    v12 = [v11 objectForKeyedSubscript:@"category-name"];
  }

  if ([GKLeaderboardCacheObject getIsPrereleaseFromServerRep:v11])
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  [(GKLeaderboardCacheObject *)self setReleaseState:v13];
  v14 = [(GKLeaderboardCacheObject *)self identifier];
  v15 = [v14 isEqualToString:v12];

  if ((v15 & 1) == 0)
  {
    [(GKLeaderboardCacheObject *)self setIdentifier:v12];
    v16 = [v4 objectForKeyedSubscript:@"title"];
    if (v16 || ([v4 objectForKeyedSubscript:@"category-title"], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v17 = v16;
      [(GKLeaderboardCacheObject *)self setLocalizedTitle:v16];
    }

    v18 = [v4 objectForKeyedSubscript:@"score-type"];
    if (v18)
    {
      [(GKLeaderboardCacheObject *)self setScoreType:v18];
    }

    v19 = [v11 objectForKeyedSubscript:@"base-leaderboard-id"];

    if (v19)
    {
      [(GKLeaderboardCacheObject *)self setBaseLeaderboardID:v19];
      v20 = [(GKLeaderboardCacheObject *)self identifier];

      if (!v20)
      {
        [(GKLeaderboardCacheObject *)self setIdentifier:v19];
      }
    }

    else
    {
      v21 = [(GKLeaderboardCacheObject *)self identifier];
      [(GKLeaderboardCacheObject *)self setBaseLeaderboardID:v21];
    }

    v22 = [v11 objectForKeyedSubscript:@"group-id"];

    if (!v22)
    {
      v23 = [v11 objectForKeyedSubscript:@"group-category-name"];
      if (!v23)
      {
LABEL_24:
        v24 = [v11 objectForKeyedSubscript:@"asc-resource-id"];
        [(GKLeaderboardCacheObject *)self setAscResourceID:v24];

        v25 = [v11 objectForKeyedSubscript:@"type"];
        v26 = v25;
        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = @"classic";
        }

        [(GKLeaderboardCacheObject *)self setType:v27];
        v28 = [v11 objectForKeyedSubscript:@"start-date"];

        if (v28)
        {
          v29 = [NSDate _gkDateFromServerTimestamp:v28];
          [(GKLeaderboardCacheObject *)self setStartDate:v29];
        }

        v30 = [v11 objectForKeyedSubscript:@"next-start-date"];

        if (v30)
        {
          v31 = [NSDate _gkDateFromServerTimestamp:v30];
          [(GKLeaderboardCacheObject *)self setNextStartDate:v31];
        }

        v32 = [v11 objectForKeyedSubscript:@"duration"];

        if (v32)
        {
          [(GKLeaderboardCacheObject *)self setDuration:v32];
        }

        v33 = [v11 objectForKeyedSubscript:@"rank"];

        if (v33)
        {
          [(GKLeaderboardCacheObject *)self setRank:v33];
        }

        v34 = [v11 objectForKeyedSubscript:@"leaderboard-size"];

        if (v34)
        {
          [(GKLeaderboardCacheObject *)self setMaxRank:v34];
        }

        v35 = [v11 objectForKeyedSubscript:@"friend-rank"];

        if (v35)
        {
          [(GKLeaderboardCacheObject *)self setFriendRank:v35];
        }

        v36 = [v11 objectForKeyedSubscript:@"num-friends-ranked"];

        if (v36)
        {
          [(GKLeaderboardCacheObject *)self setMaxFriendRank:v36];
        }

        v37 = [v11 objectForKeyedSubscript:@"last-submitted"];

        if (v37)
        {
          v38 = [NSDate _gkDateFromServerTimestamp:v37];
          [(GKLeaderboardCacheObject *)self setLastSubmittedDate:v38];
        }

        [(GKLeaderboardCacheObject *)self setIsPrimary:1];
        [(GKLeaderboardCacheObject *)self setPreviousInstanceLoaded:0];
        v39 = [(GKLeaderboardCacheObject *)self previousInstance];

        if (v39)
        {
          v40 = [(GKLeaderboardCacheObject *)self managedObjectContext];
          v41 = [(GKLeaderboardCacheObject *)self previousInstance];
          [v40 deleteObject:v41];
        }

        [(GKLeaderboardCacheObject *)self setPreviousInstance:0];
        v42 = +[NSUUID UUID];
        v43 = [v42 UUIDString];
        [(GKLeaderboardCacheObject *)self setRecordID:v43];

        v44 = [v11 objectForKeyedSubscript:@"image-urls"];
        if (v44 || ([v11 objectForKeyedSubscript:@"category-image-urls"], (v44 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v45 = v44;
          v46 = [(GKCacheObject *)self updateImagesWithImageURLs:v44];
        }

        -[GKLeaderboardCacheObject setSupportsChallenges:](self, "setSupportsChallenges:", [v11 BOOLValueFromKey:@"allow-challenges" defaultValue:0]);
        v47 = [v11 objectForKeyedSubscript:@"activity-vendor-id"];
        [(GKLeaderboardCacheObject *)self setActivityIdentifier:v47];

        v48 = [v11 objectForKeyedSubscript:@"activity-properties"];
        if (v48)
        {
          v49 = v48;
          v50 = [v11 objectForKeyedSubscript:@"activity-properties"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v52 = [v11 objectForKeyedSubscript:@"activity-properties"];
            v53 = [NSDictionary dictionaryWithDictionary:v52];
            [(GKLeaderboardCacheObject *)self setActivityProperties:v53];
          }
        }

        v54 = [v11 objectForKeyedSubscript:@"description"];
        [(GKLeaderboardCacheObject *)self setLeaderboardDescription:v54];

        v55 = [v11 objectForKeyedSubscript:@"visibility"];
        [(GKLeaderboardCacheObject *)self setVisibility:v55];

        goto LABEL_52;
      }

      v22 = v23;
    }

    [(GKLeaderboardCacheObject *)self setGroupIdentifier:v22];

    goto LABEL_24;
  }

LABEL_52:
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKLeaderboardCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKLeaderboardCacheObject internalRepresentation]", [v7 UTF8String], 3298);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = +[GKLeaderboardInternal internalRepresentation];
  v10 = [(GKLeaderboardCacheObject *)self recordID];
  [v9 setRecordID:v10];

  v11 = [(GKLeaderboardCacheObject *)self ascResourceID];
  [v9 setAscResourceID:v11];

  v12 = [(GKLeaderboardCacheObject *)self baseLeaderboardID];
  [v9 setBaseLeaderboardID:v12];

  v13 = [(GKLeaderboardCacheObject *)self duration];
  [v13 doubleValue];
  [v9 setDuration:?];

  v14 = [(GKLeaderboardCacheObject *)self friendRank];
  [v9 setFriendRank:{objc_msgSend(v14, "unsignedIntegerValue")}];

  v15 = [(GKLeaderboardCacheObject *)self maxFriendRank];
  [v9 setFriendRankCount:{objc_msgSend(v15, "unsignedIntegerValue")}];

  v16 = [(GKLeaderboardCacheObject *)self groupIdentifier];
  [v9 setGroupIdentifier:v16];

  v17 = [(GKCacheObject *)self imageURLDictionary];
  [v9 setIcons:v17];

  v18 = [(GKLeaderboardCacheObject *)self identifier];
  [v9 setIdentifier:v18];

  v19 = [(GKLeaderboardCacheObject *)self localizedTitle];
  [v9 setLocalizedTitle:v19];

  v20 = [(GKLeaderboardCacheObject *)self nextStartDate];
  [v9 setNextStartDate:v20];

  v21 = [(GKLeaderboardCacheObject *)self rank];
  [v9 setOverallRank:{objc_msgSend(v21, "unsignedIntegerValue")}];

  v22 = [(GKLeaderboardCacheObject *)self maxRank];
  [v9 setOverallRankCount:{objc_msgSend(v22, "unsignedIntegerValue")}];

  v23 = [(GKLeaderboardCacheObject *)self recordID];
  [v9 setRecordID:v23];

  [v9 setReleaseState:{-[GKLeaderboardCacheObject releaseState](self, "releaseState")}];
  v24 = [(GKLeaderboardCacheObject *)self startDate];
  [v9 setStartDate:v24];

  v25 = [(GKLeaderboardCacheObject *)self activityIdentifier];
  [v9 setActivityIdentifier:v25];

  v26 = [(GKLeaderboardCacheObject *)self activityProperties];
  if (v26)
  {
    v27 = [(GKLeaderboardCacheObject *)self activityProperties];
    [v9 setActivityProperties:v27];
  }

  else
  {
    [v9 setActivityProperties:&__NSDictionary0__struct];
  }

  v28 = [(GKLeaderboardCacheObject *)self leaderboardDescription];
  [v9 setLeaderboardDescription:v28];

  v29 = [(GKLeaderboardCacheObject *)self visibility];
  [v9 setVisibility:v29];

  v30 = [(GKLeaderboardCacheObject *)self type];
  v31 = [v30 isEqualToString:@"recurring"];

  [v9 setType:v31];
  [v9 setSupportsChallenges:{-[GKLeaderboardCacheObject supportsChallenges](self, "supportsChallenges")}];

  return v9;
}

@end