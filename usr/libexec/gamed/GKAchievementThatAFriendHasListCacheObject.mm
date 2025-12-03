@interface GKAchievementThatAFriendHasListCacheObject
+ (id)dateFromMillisecondsSinceEpoch:(double)epoch;
+ (id)friendsForAchievement:(id)achievement plist:(id)plist profileProvider:(id)provider;
- (BOOL)isValid;
- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date playerId:(id)id achievementId:(id)achievementId;
@end

@implementation GKAchievementThatAFriendHasListCacheObject

+ (id)friendsForAchievement:(id)achievement plist:(id)plist profileProvider:(id)provider
{
  achievementCopy = achievement;
  plistCopy = plist;
  providerCopy = provider;
  v10 = objc_alloc_init(NSMutableArray);
  v11 = [plistCopy objectForKeyedSubscript:@"results"];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10012A338;
  v39[3] = &unk_100367A40;
  v12 = achievementCopy;
  v40 = v12;
  v13 = [v11 indexOfObjectPassingTest:v39];

  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [v10 copy];
  }

  else
  {
    v31 = v12;
    v32 = plistCopy;
    v34 = v10;
    v15 = [plistCopy objectForKeyedSubscript:@"results"];
    v16 = [v15 objectAtIndexedSubscript:v13];

    [v16 objectForKeyedSubscript:@"friends-with-achievement"];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v38 = 0u;
    v17 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          v22 = [v21 objectForKeyedSubscript:@"friend-player-id"];
          v23 = providerCopy[2](providerCopy, v22);

          v24 = [v21 objectForKeyedSubscript:@"timestamp"];
          [v24 doubleValue];
          v26 = v25;

          v27 = [GKAchievementThatAFriendHasListCacheObject dateFromMillisecondsSinceEpoch:v26];
          v28 = v27;
          if (v23)
          {
            v41[0] = @"friend";
            v41[1] = @"timestamp";
            v42[0] = v23;
            v42[1] = v27;
            v29 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];
            [v34 addObject:v29];
          }
        }

        v18 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v18);
    }

    v10 = v34;
    v14 = [v34 copy];

    v12 = v31;
    plistCopy = v32;
  }

  return v14;
}

+ (id)dateFromMillisecondsSinceEpoch:(double)epoch
{
  v4 = fabs(epoch);
  v5 = [NSDate alloc];
  v6 = epoch / 1000.0;
  if (v4 == INFINITY)
  {
    v6 = 0.0;
  }

  v7 = [v5 initWithTimeIntervalSince1970:v6];

  return v7;
}

- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date playerId:(id)id achievementId:(id)achievementId
{
  v14.receiver = self;
  v14.super_class = GKAchievementThatAFriendHasListCacheObject;
  achievementIdCopy = achievementId;
  representationCopy = representation;
  [(GKExpiringCacheObject *)&v14 updateWithServerRepresentation:representationCopy expirationDate:date];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10012A514;
  v13[3] = &unk_100367A68;
  v13[4] = self;
  v11 = objc_retainBlock(v13);
  v12 = [GKAchievementThatAFriendHasListCacheObject friendsForAchievement:achievementIdCopy plist:representationCopy profileProvider:v11];

  [(GKListCacheObject *)self updateEntriesWithRepresentations:v12 entryForRepresentation:&stru_100367AA8 reuseEntriesByIndex:1];
}

- (BOOL)isValid
{
  v7.receiver = self;
  v7.super_class = GKAchievementThatAFriendHasListCacheObject;
  if (![(GKExpiringCacheObject *)&v7 isValid])
  {
    return 0;
  }

  game = [(GKAchievementThatAFriendHasListCacheObject *)self game];
  name = [game name];
  v5 = name != 0;

  return v5;
}

@end