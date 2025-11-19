@interface APPCPolicyEngine
+ (BOOL)isSubscriber;
+ (id)policiesForContainerType:(id)a3 adType:(id)a4 adFormatType:(id)a5;
+ (id)policiesToEnforce;
+ (id)savedPolicies;
@end

@implementation APPCPolicyEngine

+ (BOOL)isSubscriber
{
  v2 = [[PCBooleanCondition alloc] initWithType:@"sc" value:@"751A1F1B-43AB-40F2-BB35-C6731882A9F7" identifier:@"com.apple.news"];
  v5 = 0;
  v3 = [PCStatusConditionStorage isStatusConditionRegistered:v2 error:&v5];

  return v3;
}

+ (id)policiesForContainerType:(id)a3 adType:(id)a4 adFormatType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[APPCPolicyEngine savedPolicies];
  v12 = APLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v42 = objc_opt_class();
    v43 = 2114;
    v44 = v11;
    v13 = v42;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{private}@] Policies: %{public}@", buf, 0x16u);
  }

  v14 = +[NSMutableArray array];
  if ([v11 count])
  {
    v35 = v8;
    v32 = [NSPredicate predicateWithFormat:@"containerType = %@ OR containerType = nil", v8];
    v15 = [v11 filteredArrayUsingPredicate:?];
    v34 = v9;
    v30 = [NSPredicate predicateWithFormat:@"adType = %@ OR adType = nil", v9];
    v31 = v15;
    v16 = [v15 filteredArrayUsingPredicate:?];
    v33 = v10;
    v17 = [NSPredicate predicateWithFormat:@"adFormatType = %@ OR adFormatType = nil", v10];
    v29 = v16;
    v18 = [v16 filteredArrayUsingPredicate:v17];
    v19 = [a1 isSubscriber];
    v20 = @"non-subscriber";
    if (v19)
    {
      v20 = @"subscriber";
    }

    v21 = [NSPredicate predicateWithFormat:@"userStatus = %@ OR userStatus = nil", v20];
    v22 = [v18 filteredArrayUsingPredicate:v21];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v37;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v37 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v24);
    }

    v9 = v34;
    v8 = v35;
    v10 = v33;
  }

  return v14;
}

+ (id)policiesToEnforce
{
  v3 = +[APPCPolicyEngine savedPolicies];
  v4 = [a1 isSubscriber];
  v5 = @"non-subscriber";
  if (v4)
  {
    v5 = @"subscriber";
  }

  v6 = [NSPredicate predicateWithFormat:@"userStatus = %@ OR userStatus = nil", v5];
  v7 = [v3 filteredArrayUsingPredicate:v6];
  v8 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

+ (id)savedPolicies
{
  if (qword_1004DF680 != -1)
  {
    sub_100393968();
  }

  v3 = qword_1004DF678;

  return v3;
}

@end