@interface _DASActivityRateLimitConfiguration_Internal
+ (id)rateLimitConfiguration:(id)a3 withIdentifier:(id)a4;
- (BOOL)containsPendingActivity:(id)a3;
- (BOOL)isInactiveAtDate:(id)a3;
- (_DASActivityRateLimitConfiguration_Internal)initWithConfigurationName:(id)a3 andIdentifier:(id)a4;
- (_DASActivityRateLimitConfiguration_Internal)initWithRateLimit:(id)a3 withIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)evaluationResultsWithLPMState:(BOOL)a3;
- (void)addPendingActivity:(id)a3;
- (void)executeActivity:(id)a3 atDate:(id)a4;
- (void)removePendingActivity:(id)a3;
- (void)replaceRateLimitConfiguration:(id)a3;
@end

@implementation _DASActivityRateLimitConfiguration_Internal

- (_DASActivityRateLimitConfiguration_Internal)initWithRateLimit:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = _DASActivityRateLimitConfiguration_Internal;
  v8 = [(_DASActivityRateLimitConfiguration_Internal *)&v27 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_uniqueGroupName, a4);
    v10 = [v6 name];
    configurationName = v9->_configurationName;
    v9->_configurationName = v10;

    v12 = +[NSMutableArray array];
    ratelimitTrackers = v9->_ratelimitTrackers;
    v9->_ratelimitTrackers = v12;

    v14 = +[NSMutableSet set];
    pendingActivities = v9->_pendingActivities;
    v9->_pendingActivities = v14;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = [v6 rateLimits];
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        v20 = 0;
        do
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[_DASActivityRateLimitTracker alloc] initWithRateLimit:*(*(&v23 + 1) + 8 * v20)];
          [(NSMutableArray *)v9->_ratelimitTrackers addObject:v21];

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v18);
    }
  }

  return v9;
}

- (_DASActivityRateLimitConfiguration_Internal)initWithConfigurationName:(id)a3 andIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _DASActivityRateLimitConfiguration_Internal;
  v9 = [(_DASActivityRateLimitConfiguration_Internal *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uniqueGroupName, a4);
    objc_storeStrong(&v10->_configurationName, a3);
    v11 = +[NSMutableArray array];
    ratelimitTrackers = v10->_ratelimitTrackers;
    v10->_ratelimitTrackers = v11;

    v13 = +[NSMutableSet set];
    pendingActivities = v10->_pendingActivities;
    v10->_pendingActivities = v13;
  }

  return v10;
}

+ (id)rateLimitConfiguration:(id)a3 withIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithRateLimit:v6 withIdentifier:v5];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(_DASActivityRateLimitConfiguration_Internal *)self configurationName];
  v6 = [(_DASActivityRateLimitConfiguration_Internal *)self uniqueGroupName];
  v7 = [v4 initWithConfigurationName:v5 andIdentifier:v6];

  v8 = [(_DASActivityRateLimitConfiguration_Internal *)self ratelimitTrackers];
  [v7 setRatelimitTrackers:v8];

  v9 = [(_DASActivityRateLimitConfiguration_Internal *)self pendingActivities];
  [v7 setPendingActivities:v9];

  return v7;
}

- (id)description
{
  uniqueGroupName = self->_uniqueGroupName;
  configurationName = self->_configurationName;
  v4 = [(NSMutableArray *)self->_ratelimitTrackers description];
  v5 = [NSString stringWithFormat:@"Unique Group Name: %@, Configuration Name %@, Rate Limits %@", uniqueGroupName, configurationName, v4];

  return v5;
}

- (BOOL)isInactiveAtDate:(id)a3
{
  v4 = a3;
  v5 = [(_DASActivityRateLimitConfiguration_Internal *)self pendingActivities];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(_DASActivityRateLimitConfiguration_Internal *)self ratelimitTrackers];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (![*(*(&v14 + 1) + 8 * i) onlyExpiredOccurrencesAtDate:v4])
          {
            v7 = 0;
            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 1;
LABEL_13:
  }

  return v7;
}

- (void)replaceRateLimitConfiguration:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = self->_ratelimitTrackers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v26 + 1) + 8 * v10) occurrences];
        [v5 addObjectsFromArray:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v12 = [v4 name];
  configurationName = self->_configurationName;
  self->_configurationName = v12;

  v14 = +[NSMutableArray array];
  ratelimitTrackers = self->_ratelimitTrackers;
  self->_ratelimitTrackers = v14;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = [v4 rateLimits];
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [[_DASActivityRateLimitTracker alloc] initWithRateLimit:*(*(&v22 + 1) + 8 * v20) andOccurrences:v5];
        [(NSMutableArray *)self->_ratelimitTrackers addObject:v21];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v18);
  }
}

- (id)evaluationResultsWithLPMState:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSMutableArray array];
  v6 = +[NSDate now];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [(_DASActivityRateLimitConfiguration_Internal *)self ratelimitTrackers];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  v9 = v6;
  if (v8)
  {
    v10 = v8;
    v11 = *v21;
    v9 = v6;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        [v13 window];
        v15 = v14 == 900.0 && [v13 maximum] == 1;
        if (([v13 timewiseEligibleAtDate:v6 withLPMWindowExtension:v15 & v3] & 1) == 0)
        {
          [v5 addObject:v13];
          v16 = [v13 nextTimewiseEligibleDateFromDate:v6 withLPMWindowExtension:v15 & v3];
          v17 = [v9 laterDate:v16];

          v9 = v17;
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = [_DASRateLimitEvaluationResults evaluationResultsWithMaxedRateLimits:v5 withNextEvaluationDate:v9];

  return v18;
}

- (void)executeActivity:(id)a3 atDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(_DASActivityRateLimitConfiguration_Internal *)self ratelimitTrackers];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) executeAtDate:v7];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  if ([(_DASActivityRateLimitConfiguration_Internal *)self containsPendingActivity:v6])
  {
    [(_DASActivityRateLimitConfiguration_Internal *)self removePendingActivity:v6];
  }
}

- (void)addPendingActivity:(id)a3
{
  v4 = a3;
  v5 = [(_DASActivityRateLimitConfiguration_Internal *)self pendingActivities];
  [v5 addObject:v4];
}

- (void)removePendingActivity:(id)a3
{
  v4 = a3;
  v5 = [(_DASActivityRateLimitConfiguration_Internal *)self pendingActivities];
  [v5 removeObject:v4];
}

- (BOOL)containsPendingActivity:(id)a3
{
  v4 = a3;
  v5 = [(_DASActivityRateLimitConfiguration_Internal *)self pendingActivities];
  v6 = [v5 containsObject:v4];

  return v6;
}

@end