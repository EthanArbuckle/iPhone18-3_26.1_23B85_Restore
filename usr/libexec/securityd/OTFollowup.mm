@interface OTFollowup
- (BOOL)clearAllRepairFollowUps:(id)a3 error:(id *)a4;
- (BOOL)hasPosted:(unsigned __int8)a3;
- (OTFollowup)initWithFollowupController:(id)a3;
- (id)createCDPFollowupContext:(unsigned __int8)a3;
- (id)sfaStatus;
- (id)sysdiagnoseStatus;
- (void)clearAllPostedFlags;
@end

@implementation OTFollowup

- (id)sfaStatus
{
  v21 = +[NSMutableDictionary dictionary];
  if (objc_opt_class())
  {
    v26 = 0;
    v19 = [[FLFollowUpController alloc] initWithClientIdentifier:0];
    v2 = [v19 pendingFollowUpItems:&v26];
    v3 = v26;
    if (v3)
    {
      v4 = sub_100006274("octagon");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetching pending follow ups failed with: %@", buf, 0xCu);
      }
    }

    v18 = v3;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v2;
    v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          v10 = [v9 notification];
          v11 = [v10 creationDate];

          if (v11)
          {
            v12 = [CKKSAnalytics fuzzyDaysSinceDate:v11];
          }

          else
          {
            v12 = 10000;
          }

          v13 = [v9 uniqueIdentifier];
          v14 = [NSString stringWithFormat:@"OACFU-%@", v13];

          v15 = [NSNumber numberWithInteger:v12];
          [v21 setObject:v15 forKeyedSubscript:v14];
        }

        v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    v16 = sub_100006274("octagon");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v21;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Analytics CFUs are %@", buf, 0xCu);
    }
  }

  return v21;
}

- (id)sysdiagnoseStatus
{
  if (objc_opt_class())
  {
    v2 = +[NSMutableDictionary dictionary];
    v25 = 0;
    v20 = [[FLFollowUpController alloc] initWithClientIdentifier:0];
    v3 = [v20 pendingFollowUpItems:&v25];
    v4 = v25;
    if (v4)
    {
      v5 = sub_100006274("octagon");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching pending follow ups failed with: %@", buf, 0xCu);
      }

      v6 = [v4 description];
      [v2 setObject:v6 forKeyedSubscript:@"error"];
    }

    v19 = v4;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v12 notification];
          v14 = [v13 creationDate];

          if (v14)
          {
            v15 = objc_alloc_init(NSISO8601DateFormatter);
            v16 = [v15 stringForObjectValue:v14];
            v17 = [v12 uniqueIdentifier];
            [v2 setObject:v16 forKeyedSubscript:v17];
          }

          else
          {
            v15 = [v12 uniqueIdentifier];
            [v2 setObject:@"creation-date-missing" forKeyedSubscript:v15];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)clearAllRepairFollowUps:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(OTFollowup *)self clearFollowUp:3 activeAccount:v6 error:a4];
  v8 = v7 & [(OTFollowup *)self clearFollowUp:5 activeAccount:v6 error:a4];
  LOBYTE(a4) = [(OTFollowup *)self clearFollowUp:4 activeAccount:v6 error:a4];

  return v8 & a4;
}

- (id)createCDPFollowupContext:(unsigned __int8)a3
{
  v3 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v3 = +[CDPFollowUpContext contextForRecoveryKeyRepair];
    }

    else if (a3 == 2)
    {
      v3 = +[CDPFollowUpContext contextForStateRepair];
    }
  }

  else
  {
    switch(a3)
    {
      case 3u:
        v3 = +[CDPFollowUpContext contextForConfirmExistingSecret];
        break;
      case 4u:
        v3 = +[CDPFollowUpContext contextForSecureTerms];
        break;
      case 5u:
        v3 = +[CDPFollowUpContext contextForOfflinePasscodeChange];
        break;
    }
  }

  return v3;
}

- (OTFollowup)initWithFollowupController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = OTFollowup;
  v5 = [(OTFollowup *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(OTFollowup *)v5 setCdpd:v4];
    v7 = +[NSMutableSet set];
    postedCFUTypes = v6->_postedCFUTypes;
    v6->_postedCFUTypes = v7;
  }

  return v6;
}

- (void)clearAllPostedFlags
{
  v2 = [(OTFollowup *)self postedCFUTypes];
  [v2 removeAllObjects];
}

- (BOOL)hasPosted:(unsigned __int8)a3
{
  v3 = a3;
  v4 = [(OTFollowup *)self postedCFUTypes];
  v5 = v4;
  if ((v3 - 1) > 4)
  {
    v6 = @"none";
  }

  else
  {
    v6 = *(&off_100343A40 + (v3 - 1));
  }

  v7 = [v4 containsObject:v6];

  return v7;
}

@end