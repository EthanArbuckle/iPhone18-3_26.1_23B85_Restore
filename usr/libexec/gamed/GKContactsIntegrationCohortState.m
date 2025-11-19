@interface GKContactsIntegrationCohortState
+ (GKContactsIntegrationCohortState)stateWithMoc:(id)a3;
- (id)initWithFetchResult:(id)a3;
@end

@implementation GKContactsIntegrationCohortState

+ (GKContactsIntegrationCohortState)stateWithMoc:(id)a3
{
  v3 = a3;
  v4 = +[GKCDIDSInfo _gkFetchRequest];
  v5 = [NSExpression expressionForKeyPath:@"cohort"];
  v20 = v5;
  v6 = [NSArray arrayWithObjects:&v20 count:1];
  v7 = [NSExpression expressionForFunction:@"count:" arguments:v6];

  v8 = objc_alloc_init(NSExpressionDescription);
  [v8 setExpression:v7];
  [v8 setName:@"count"];
  [v8 setExpressionResultType:300];
  v19[0] = v8;
  v19[1] = @"cohort";
  v9 = [NSArray arrayWithObjects:v19 count:2];
  [v4 setPropertiesToFetch:v9];

  v18 = @"cohort";
  v10 = [NSArray arrayWithObjects:&v18 count:1];
  [v4 setPropertiesToGroupBy:v10];

  [v4 setResultType:2];
  v17 = 0;
  v11 = [v3 executeFetchRequest:v4 error:&v17];

  v12 = v17;
  if (v12)
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002948F4(v12, v14);
    }

    v15 = 0;
  }

  else
  {
    v15 = [[GKContactsIntegrationCohortState alloc] initWithFetchResult:v11];
  }

  return v15;
}

- (id)initWithFetchResult:(id)a3
{
  v3 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v19 = 0;
    v20 = 0;
    v6 = 0;
    v17 = 0;
    v18 = 0;
    v7 = *v22;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"cohort"];
        v11 = [v10 intValue];

        v12 = [v9 objectForKeyedSubscript:@"count"];
        v13 = [v12 integerValue];

        if (v11 <= 0)
        {
          if (v11 == -1)
          {
            v17 = v13;
          }
        }

        else
        {
          switch(v11)
          {
            case 1:
              v20 = v13;
              break;
            case 3:
              v19 = v13;
              break;
            case 2:
              v18 = v13;
              break;
          }
        }

        v6 += v13;
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v6 = 0;
    v17 = 0;
    v18 = 0;
  }

  v14 = [(GKContactsIntegrationCohortState *)self initCohortNoneCount:v17 cohortNotSetCount:v20 cohortOptedInCount:v18 cohortOptedOutCount:v19 cohortUnknownCount:v17 percentSyncedAtleastOnce:(v6 - v17) / v6 * 100.0];

  return v14;
}

@end