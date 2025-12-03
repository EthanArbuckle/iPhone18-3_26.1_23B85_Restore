@interface GKLeaderboardCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)representation;
@end

@implementation GKLeaderboardCacheObject

- (void)updateWithServerRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKLeaderboardCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKLeaderboardCacheObject updateWithServerRepresentation:]", [lastPathComponent UTF8String], 3179);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v56.receiver = self;
  v56.super_class = GKLeaderboardCacheObject;
  [(GKCacheObject *)&v56 updateWithServerRepresentation:representationCopy];
  v11 = [representationCopy objectForKeyedSubscript:@"global-alltime-info"];
  if (!v11)
  {
    v11 = representationCopy;
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
  identifier = [(GKLeaderboardCacheObject *)self identifier];
  v15 = [identifier isEqualToString:v12];

  if ((v15 & 1) == 0)
  {
    [(GKLeaderboardCacheObject *)self setIdentifier:v12];
    v16 = [representationCopy objectForKeyedSubscript:@"title"];
    if (v16 || ([representationCopy objectForKeyedSubscript:@"category-title"], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v17 = v16;
      [(GKLeaderboardCacheObject *)self setLocalizedTitle:v16];
    }

    v18 = [representationCopy objectForKeyedSubscript:@"score-type"];
    if (v18)
    {
      [(GKLeaderboardCacheObject *)self setScoreType:v18];
    }

    v19 = [v11 objectForKeyedSubscript:@"base-leaderboard-id"];

    if (v19)
    {
      [(GKLeaderboardCacheObject *)self setBaseLeaderboardID:v19];
      identifier2 = [(GKLeaderboardCacheObject *)self identifier];

      if (!identifier2)
      {
        [(GKLeaderboardCacheObject *)self setIdentifier:v19];
      }
    }

    else
    {
      identifier3 = [(GKLeaderboardCacheObject *)self identifier];
      [(GKLeaderboardCacheObject *)self setBaseLeaderboardID:identifier3];
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
        previousInstance = [(GKLeaderboardCacheObject *)self previousInstance];

        if (previousInstance)
        {
          managedObjectContext = [(GKLeaderboardCacheObject *)self managedObjectContext];
          previousInstance2 = [(GKLeaderboardCacheObject *)self previousInstance];
          [managedObjectContext deleteObject:previousInstance2];
        }

        [(GKLeaderboardCacheObject *)self setPreviousInstance:0];
        v42 = +[NSUUID UUID];
        uUIDString = [v42 UUIDString];
        [(GKLeaderboardCacheObject *)self setRecordID:uUIDString];

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
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKLeaderboardCacheObject internalRepresentation]", [lastPathComponent UTF8String], 3298);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = +[GKLeaderboardInternal internalRepresentation];
  recordID = [(GKLeaderboardCacheObject *)self recordID];
  [v9 setRecordID:recordID];

  ascResourceID = [(GKLeaderboardCacheObject *)self ascResourceID];
  [v9 setAscResourceID:ascResourceID];

  baseLeaderboardID = [(GKLeaderboardCacheObject *)self baseLeaderboardID];
  [v9 setBaseLeaderboardID:baseLeaderboardID];

  duration = [(GKLeaderboardCacheObject *)self duration];
  [duration doubleValue];
  [v9 setDuration:?];

  friendRank = [(GKLeaderboardCacheObject *)self friendRank];
  [v9 setFriendRank:{objc_msgSend(friendRank, "unsignedIntegerValue")}];

  maxFriendRank = [(GKLeaderboardCacheObject *)self maxFriendRank];
  [v9 setFriendRankCount:{objc_msgSend(maxFriendRank, "unsignedIntegerValue")}];

  groupIdentifier = [(GKLeaderboardCacheObject *)self groupIdentifier];
  [v9 setGroupIdentifier:groupIdentifier];

  imageURLDictionary = [(GKCacheObject *)self imageURLDictionary];
  [v9 setIcons:imageURLDictionary];

  identifier = [(GKLeaderboardCacheObject *)self identifier];
  [v9 setIdentifier:identifier];

  localizedTitle = [(GKLeaderboardCacheObject *)self localizedTitle];
  [v9 setLocalizedTitle:localizedTitle];

  nextStartDate = [(GKLeaderboardCacheObject *)self nextStartDate];
  [v9 setNextStartDate:nextStartDate];

  rank = [(GKLeaderboardCacheObject *)self rank];
  [v9 setOverallRank:{objc_msgSend(rank, "unsignedIntegerValue")}];

  maxRank = [(GKLeaderboardCacheObject *)self maxRank];
  [v9 setOverallRankCount:{objc_msgSend(maxRank, "unsignedIntegerValue")}];

  recordID2 = [(GKLeaderboardCacheObject *)self recordID];
  [v9 setRecordID:recordID2];

  [v9 setReleaseState:{-[GKLeaderboardCacheObject releaseState](self, "releaseState")}];
  startDate = [(GKLeaderboardCacheObject *)self startDate];
  [v9 setStartDate:startDate];

  activityIdentifier = [(GKLeaderboardCacheObject *)self activityIdentifier];
  [v9 setActivityIdentifier:activityIdentifier];

  activityProperties = [(GKLeaderboardCacheObject *)self activityProperties];
  if (activityProperties)
  {
    activityProperties2 = [(GKLeaderboardCacheObject *)self activityProperties];
    [v9 setActivityProperties:activityProperties2];
  }

  else
  {
    [v9 setActivityProperties:&__NSDictionary0__struct];
  }

  leaderboardDescription = [(GKLeaderboardCacheObject *)self leaderboardDescription];
  [v9 setLeaderboardDescription:leaderboardDescription];

  visibility = [(GKLeaderboardCacheObject *)self visibility];
  [v9 setVisibility:visibility];

  type = [(GKLeaderboardCacheObject *)self type];
  v31 = [type isEqualToString:@"recurring"];

  [v9 setType:v31];
  [v9 setSupportsChallenges:{-[GKLeaderboardCacheObject supportsChallenges](self, "supportsChallenges")}];

  return v9;
}

@end