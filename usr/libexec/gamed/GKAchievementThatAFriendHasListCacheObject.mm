@interface GKAchievementThatAFriendHasListCacheObject
+ (id)dateFromMillisecondsSinceEpoch:(double)a3;
+ (id)friendsForAchievement:(id)a3 plist:(id)a4 profileProvider:(id)a5;
- (BOOL)isValid;
- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4 playerId:(id)a5 achievementId:(id)a6;
@end

@implementation GKAchievementThatAFriendHasListCacheObject

+ (id)friendsForAchievement:(id)a3 plist:(id)a4 profileProvider:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(NSMutableArray);
  v11 = [v8 objectForKeyedSubscript:@"results"];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10012A338;
  v39[3] = &unk_100367A40;
  v12 = v7;
  v40 = v12;
  v13 = [v11 indexOfObjectPassingTest:v39];

  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [v10 copy];
  }

  else
  {
    v31 = v12;
    v32 = v8;
    v34 = v10;
    v15 = [v8 objectForKeyedSubscript:@"results"];
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
          v23 = v9[2](v9, v22);

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
    v8 = v32;
  }

  return v14;
}

+ (id)dateFromMillisecondsSinceEpoch:(double)a3
{
  v4 = fabs(a3);
  v5 = [NSDate alloc];
  v6 = a3 / 1000.0;
  if (v4 == INFINITY)
  {
    v6 = 0.0;
  }

  v7 = [v5 initWithTimeIntervalSince1970:v6];

  return v7;
}

- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4 playerId:(id)a5 achievementId:(id)a6
{
  v14.receiver = self;
  v14.super_class = GKAchievementThatAFriendHasListCacheObject;
  v9 = a6;
  v10 = a3;
  [(GKExpiringCacheObject *)&v14 updateWithServerRepresentation:v10 expirationDate:a4];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10012A514;
  v13[3] = &unk_100367A68;
  v13[4] = self;
  v11 = objc_retainBlock(v13);
  v12 = [GKAchievementThatAFriendHasListCacheObject friendsForAchievement:v9 plist:v10 profileProvider:v11];

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

  v3 = [(GKAchievementThatAFriendHasListCacheObject *)self game];
  v4 = [v3 name];
  v5 = v4 != 0;

  return v5;
}

@end