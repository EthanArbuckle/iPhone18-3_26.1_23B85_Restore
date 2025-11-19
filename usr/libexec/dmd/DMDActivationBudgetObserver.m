@interface DMDActivationBudgetObserver
- (BOOL)_budgetDays:(id)a3 duration:(id)a4 calendar:(id)a5 schedule:(id)a6;
- (BOOL)_extractComponentsFromBudgetPredicate:(id)a3;
- (BOOL)_extractComponentsFromCompositeBudgetPredicate:(id)a3;
- (BOOL)_registerPredicateObserver;
- (DMDActivationBudgetObserver)initWithDelegate:(id)a3 uniqueIdentifier:(id)a4 budgetPredicate:(id)a5;
- (DMDActivationBudgetObserver)initWithDelegate:(id)a3 uniqueIdentifier:(id)a4 compositeBudgetPredicate:(id)a5;
- (id)evaluatePredicateWithError:(id *)a3;
- (id)metadata;
- (void)invalidate;
@end

@implementation DMDActivationBudgetObserver

- (DMDActivationBudgetObserver)initWithDelegate:(id)a3 uniqueIdentifier:(id)a4 budgetPredicate:(id)a5
{
  v8 = a5;
  v16.receiver = self;
  v16.super_class = DMDActivationBudgetObserver;
  v9 = [(DMDActivationPredicateObserver *)&v16 initWithDelegate:a3 uniqueIdentifier:a4 predicate:v8];
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = objc_opt_new();
  usageMonitor = v9->_usageMonitor;
  v9->_usageMonitor = v10;

  v12 = objc_opt_new();
  expiredNotificationTimes = v9->_expiredNotificationTimes;
  v9->_expiredNotificationTimes = v12;

  if (![(DMDActivationBudgetObserver *)v9 _extractComponentsFromBudgetPredicate:v8])
  {
    goto LABEL_5;
  }

  if ([(DMDActivationBudgetObserver *)v9 _registerPredicateObserver])
  {
LABEL_4:
    v14 = v9;
  }

  else
  {
LABEL_5:
    v14 = 0;
  }

  return v14;
}

- (DMDActivationBudgetObserver)initWithDelegate:(id)a3 uniqueIdentifier:(id)a4 compositeBudgetPredicate:(id)a5
{
  v8 = a5;
  v16.receiver = self;
  v16.super_class = DMDActivationBudgetObserver;
  v9 = [(DMDActivationPredicateObserver *)&v16 initWithDelegate:a3 uniqueIdentifier:a4 predicate:v8];
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = objc_opt_new();
  usageMonitor = v9->_usageMonitor;
  v9->_usageMonitor = v10;

  v12 = objc_opt_new();
  expiredNotificationTimes = v9->_expiredNotificationTimes;
  v9->_expiredNotificationTimes = v12;

  if (![(DMDActivationBudgetObserver *)v9 _extractComponentsFromCompositeBudgetPredicate:v8])
  {
    goto LABEL_5;
  }

  if ([(DMDActivationBudgetObserver *)v9 _registerPredicateObserver])
  {
LABEL_4:
    v14 = v9;
  }

  else
  {
LABEL_5:
    v14 = 0;
  }

  return v14;
}

- (id)evaluatePredicateWithError:(id *)a3
{
  v5 = [(DMDActivationBudgetObserver *)self usageBudget];
  v6 = [v5 identifier];

  [(DMDActivationBudgetObserver *)self setRemainingTime:0];
  v7 = [(DMDActivationBudgetObserver *)self expiredNotificationTimes];
  [v7 removeAllObjects];

  v8 = [(DMDActivationBudgetObserver *)self usageMonitor];
  v57 = v6;
  v9 = [NSArray arrayWithObjects:&v57 count:1];
  v45 = 0;
  v10 = [v8 checkStatusOfBudgets:v9 error:&v45];
  v11 = v45;

  if (v10)
  {
    v40 = a3;
    v12 = [v10 objectForKeyedSubscript:v6];
    v13 = v12;
    v14 = &__kCFBooleanFalse;
    if (v12)
    {
      v38 = v11;
      v39 = v10;
      [v12 doubleValue];
      if (v15 <= 0.0)
      {
        v14 = &__kCFBooleanTrue;
      }

      [(DMDActivationBudgetObserver *)self setRemainingTime:v13];
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v16 = [(DMDActivationBudgetObserver *)self notificationTimes];
      v17 = [v16 countByEnumeratingWithState:&v41 objects:v56 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v42;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v42 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v41 + 1) + 8 * i);
            [v21 doubleValue];
            v23 = v22;
            [v13 doubleValue];
            if (v23 >= v24)
            {
              v25 = [(DMDActivationBudgetObserver *)self expiredNotificationTimes];
              [v25 addObject:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v41 objects:v56 count:16];
        }

        while (v18);
      }

      v11 = v38;
      v10 = v39;
    }

    -[DMDActivationPredicateObserver setLastPredicateEvaluationValue:](self, "setLastPredicateEvaluationValue:", [v14 BOOLValue]);
    v26 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(DMDActivationPredicateObserver *)self predicateType];
      v28 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
      v29 = [(DMDActivationBudgetObserver *)self expiredNotificationTimes];
      *buf = 138544386;
      v47 = v27;
      v48 = 2114;
      v49 = v28;
      v50 = 2114;
      v51 = v6;
      v52 = 2114;
      v53 = v29;
      v54 = 2114;
      v55 = v13;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Predicate type: %{public}@ with unique identifier: %{public}@ succeeded checking status of Usage Tracking monitor with budget identifier %{public}@, expired notification times: %{public}@, remaining time: %{public}@ seconds", buf, 0x34u);
    }

    a3 = v40;
  }

  else
  {
    v13 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v35 = [(DMDActivationPredicateObserver *)self predicateType];
      v36 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
      v37 = [v11 debugDescription];
      *buf = 138544130;
      v47 = v35;
      v48 = 2114;
      v49 = v36;
      v50 = 2114;
      v51 = v6;
      v52 = 2114;
      v53 = v37;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Predicate type: %{public}@ with unique identifier: %{public}@ failed checking status of Usage Tracking monitor with budget identifier: %{public}@, error: %{public}@", buf, 0x2Au);
    }

    v14 = 0;
  }

  if (a3 && v11)
  {
    v30 = v11;
    *a3 = v11;
  }

  v31 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [(DMDActivationPredicateObserver *)self predicateType];
    v33 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    *buf = 138544130;
    v47 = v32;
    v48 = 2114;
    v49 = v33;
    v50 = 2114;
    v51 = v14;
    v52 = 2114;
    v53 = v6;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Predicate type: %{public}@ with unique identifier: %{public}@ evaluated predicate: %{public}@ for Usage Tracking monitor with identifier: %{public}@", buf, 0x2Au);
  }

  return v14;
}

- (void)invalidate
{
  v3 = [(DMDActivationBudgetObserver *)self usageBudget];
  v4 = [v3 identifier];

  v5 = [(DMDActivationBudgetObserver *)self usageMonitor];
  v11 = v4;
  v6 = [NSArray arrayWithObjects:&v11 count:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008B70;
  v9[3] = &unk_1000CDBD0;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [v5 stopMonitoringBudgets:v6 completionHandler:v9];

  v8.receiver = self;
  v8.super_class = DMDActivationBudgetObserver;
  [(DMDActivationPredicateObserver *)&v8 invalidate];
}

- (id)metadata
{
  v3 = objc_opt_new();
  v4 = [(DMDActivationBudgetObserver *)self expiredNotificationTimes];
  v5 = [v4 sortedArrayUsingSelector:"compare:"];

  if ([v5 count])
  {
    [v3 setObject:v5 forKeyedSubscript:DMFDeclarationStatePredicatePayloadStatusExpiredNotificationTimesKey];
  }

  v8.receiver = self;
  v8.super_class = DMDActivationBudgetObserver;
  v6 = [(DMDActivationPredicateObserver *)&v8 metadata];
  if ([v3 count])
  {
    [v6 setObject:v3 forKeyedSubscript:DMFDeclarationStatePredicatePayloadStatusKey];
  }

  return v6;
}

- (BOOL)_extractComponentsFromBudgetPredicate:(id)a3
{
  v4 = a3;
  v5 = [v4 payloadCalendarIdentifier];
  [(DMDActivationBudgetObserver *)self setCalendarIdentifier:v5];

  v6 = [(DMDActivationBudgetObserver *)self calendarIdentifier];
  v7 = [(DMDActivationPredicateObserver *)self calendarForIdentifier:v6];

  v8 = [v4 payloadMonitor];
  if (v8)
  {
    v9 = [v4 payloadIdentifiersVersion2];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v4 payloadIdentifiers];
    }

    v12 = v11;

    if (![v12 count])
    {
      v18 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10007BF74();
      }

      v13 = 0;
LABEL_40:

      goto LABEL_41;
    }

    v14 = objc_opt_new();
    v15 = objc_opt_new();
    v55 = objc_opt_new();
    if ([v8 isEqualToString:@"Apps"])
    {
      v16 = [NSSet setWithArray:v12];
      v17 = v14;
      v14 = v16;
    }

    else if ([v8 isEqualToString:@"Categories"])
    {
      v19 = [NSSet setWithArray:v12];
      v17 = v15;
      v15 = v19;
    }

    else
    {
      if (![v8 isEqualToString:@"WebSites"])
      {
LABEL_19:
        v21 = [v4 payloadExemptApps];
        v51 = v21;
        if (v21)
        {
          v22 = [NSSet setWithArray:v21];
        }

        else
        {
          v22 = objc_opt_new();
        }

        v52 = v22;
        v53 = v15;
        v23 = [v4 payloadNotificationTimes];
        v48 = v12;
        v49 = v8;
        v54 = v14;
        v47 = v23;
        if (v23)
        {
          v24 = [NSSet setWithArray:v23];
        }

        else
        {
          v24 = objc_opt_new();
        }

        v25 = v24;
        [(DMDActivationBudgetObserver *)self setNotificationTimes:v24];

        v26 = objc_opt_new();
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v50 = v4;
        v27 = [v4 payloadTimeBudget];
        v28 = [v27 countByEnumeratingWithState:&v56 objects:v82 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v57;
          while (2)
          {
            for (i = 0; i != v29; i = i + 1)
            {
              if (*v57 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v56 + 1) + 8 * i);
              v33 = [v32 payloadDays];
              v34 = [v32 payloadSeconds];
              v35 = [(DMDActivationBudgetObserver *)self _budgetDays:v33 duration:v34 calendar:v7 schedule:v26];

              if ((v35 & 1) == 0)
              {
                v42 = DMFConfigurationEngineLog();
                v12 = v48;
                v18 = v54;
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  sub_10007BED0();
                }

                v13 = 0;
                v8 = v49;
                v4 = v50;
                v41 = v55;
                goto LABEL_39;
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v56 objects:v82 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

        v36 = [USBudget alloc];
        v37 = [v7 calendarIdentifier];
        v38 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
        v39 = [v36 initWithCategories:v53 applications:v54 exemptApplications:v52 webDomains:v55 schedule:v26 calendarIdentifier:v37 identifier:v38];
        [(DMDActivationBudgetObserver *)self setUsageBudget:v39];

        v27 = DMFConfigurationEngineLog();
        v13 = 1;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v46 = [(DMDActivationPredicateObserver *)self predicateType];
          v45 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
          v44 = [(DMDActivationBudgetObserver *)self calendarIdentifier];
          v40 = [(DMDActivationBudgetObserver *)self notificationTimes];
          *buf = 138545922;
          v61 = v46;
          v62 = 2114;
          v63 = v45;
          v64 = 2114;
          v65 = v44;
          v66 = 2114;
          v12 = v48;
          v8 = v49;
          v67 = v49;
          v68 = 2114;
          v69 = v48;
          v70 = 2114;
          v71 = v53;
          v72 = 2114;
          v41 = v55;
          v73 = v54;
          v74 = 2114;
          v75 = v55;
          v76 = 2114;
          v77 = v51;
          v78 = 2114;
          v79 = v40;
          v80 = 2114;
          v81 = v26;
          v13 = 1;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Predicate type: %{public}@ with unique identifier: %{public}@ extracted calendar identifier: %{public}@, budget type: %{public}@, budgeted identifiers: %{public}@, budgeted category identifiers: %{public}@, budgeted application identifiers: %{public}@, budgeted website identifiers: %{public}@, exempt application identifiers: %{public}@, notification times: %{public}@, budget schedule: %{public}@", buf, 0x70u);

          v4 = v50;
          v18 = v54;
        }

        else
        {
          v8 = v49;
          v4 = v50;
          v12 = v48;
          v18 = v54;
          v41 = v55;
        }

LABEL_39:

        goto LABEL_40;
      }

      v20 = [NSSet setWithArray:v12];
      v17 = v55;
      v55 = v20;
    }

    goto LABEL_19;
  }

  v12 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10007C018();
  }

  v13 = 0;
LABEL_41:

  return v13;
}

- (BOOL)_extractComponentsFromCompositeBudgetPredicate:(id)a3
{
  v4 = a3;
  v5 = [v4 payloadCalendarIdentifier];
  [(DMDActivationBudgetObserver *)self setCalendarIdentifier:v5];

  v6 = [(DMDActivationBudgetObserver *)self calendarIdentifier];
  v7 = [(DMDActivationPredicateObserver *)self calendarForIdentifier:v6];

  v8 = [v4 payloadMonitors];
  v9 = [v8 payloadApps];

  v10 = [v4 payloadMonitors];
  v11 = [v10 payloadCategoriesVersion2];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = [v4 payloadMonitors];
    v13 = [v14 payloadCategories];
  }

  v15 = [v4 payloadMonitors];
  v16 = [v15 payloadWebSites];

  if (v9 || v13 || v16)
  {
    if (v9)
    {
      v19 = [NSSet setWithArray:v9];
    }

    else
    {
      v19 = objc_opt_new();
    }

    v20 = v19;
    if (v13)
    {
      v21 = [NSSet setWithArray:v13];
    }

    else
    {
      v21 = objc_opt_new();
    }

    v59 = v21;
    if (v16)
    {
      v22 = [NSSet setWithArray:v16];
    }

    else
    {
      v22 = objc_opt_new();
    }

    v58 = v22;
    v23 = [v4 payloadMonitors];
    v24 = [v23 payloadExemptApps];

    if (v24)
    {
      v25 = [NSSet setWithArray:v24];
    }

    else
    {
      v25 = objc_opt_new();
    }

    v57 = v25;
    v26 = [v4 payloadNotificationTimes];
    v53 = v13;
    v54 = v9;
    v51 = v26;
    v52 = v16;
    v60 = v20;
    v56 = v24;
    if (v26)
    {
      v27 = [NSSet setWithArray:v26];
    }

    else
    {
      v27 = objc_opt_new();
    }

    v28 = v27;
    [(DMDActivationBudgetObserver *)self setNotificationTimes:v27];

    v29 = objc_opt_new();
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v55 = v4;
    v30 = [v4 payloadTimeBudget];
    v31 = [v30 countByEnumeratingWithState:&v61 objects:v83 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v62;
      while (2)
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v62 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v61 + 1) + 8 * i);
          v36 = [v35 payloadDays];
          v37 = [v35 payloadSeconds];
          v38 = [(DMDActivationBudgetObserver *)self _budgetDays:v36 duration:v37 calendar:v7 schedule:v29];

          if ((v38 & 1) == 0)
          {
            v48 = DMFConfigurationEngineLog();
            v17 = v60;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              sub_10007BED0();
            }

            v18 = 0;
            v4 = v55;
            v16 = v52;
            v13 = v53;
            goto LABEL_39;
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v61 objects:v83 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v39 = [USBudget alloc];
    v40 = [v7 calendarIdentifier];
    v41 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    v42 = [v39 initWithCategories:v59 applications:v60 exemptApplications:v57 webDomains:v58 schedule:v29 calendarIdentifier:v40 identifier:v41];
    [(DMDActivationBudgetObserver *)self setUsageBudget:v42];

    v30 = DMFConfigurationEngineLog();
    v18 = 1;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v50 = [(DMDActivationPredicateObserver *)self predicateType];
      v43 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
      v44 = [(DMDActivationBudgetObserver *)self calendarIdentifier];
      v45 = [(DMDActivationBudgetObserver *)self notificationTimes];
      *buf = 138545410;
      v66 = v50;
      v67 = 2114;
      v68 = v43;
      v46 = v43;
      v69 = 2114;
      v70 = v44;
      v71 = 2114;
      v72 = v60;
      v73 = 2114;
      v74 = v59;
      v75 = 2114;
      v76 = v58;
      v77 = 2114;
      v78 = v56;
      v79 = 2114;
      v80 = v45;
      v81 = 2114;
      v82 = v29;
      v18 = 1;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Predicate type: %{public}@ with unique identifier: %{public}@ extracted calendar identifier: %{public}@, budgeted application identifiers: %{public}@, budgeted category identifiers: %{public}@, budgeted website identifiers: %{public}@, exempt application identifiers: %{public}@, notification times: %{public}@, budget schedule: %{public}@", buf, 0x5Cu);

      v4 = v55;
      v16 = v52;
      v13 = v53;
      v17 = v60;
      v47 = v58;
    }

    else
    {
      v4 = v55;
      v16 = v52;
      v13 = v53;
      v17 = v60;
LABEL_39:
      v47 = v58;
    }

    v9 = v54;
  }

  else
  {
    v17 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10007BF74();
    }

    v18 = 0;
  }

  return v18;
}

- (BOOL)_budgetDays:(id)a3 duration:(id)a4 calendar:(id)a5 schedule:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [a5 maximumRangeOfUnit:512];
  v14 = v13;
  if (![v9 count])
  {
    v15 = objc_opt_new();
    if (v12 < &v12[v14])
    {
      v16 = v14;
      v17 = v12;
      do
      {
        v18 = [NSNumber numberWithUnsignedInteger:v17];
        [v15 addObject:v18];

        ++v17;
        --v16;
      }

      while (v16);
    }

    v19 = [v15 copy];

    v9 = v19;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = v9;
  v21 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v21)
  {
    v30 = 1;
    goto LABEL_25;
  }

  v22 = v21;
  v23 = *v34;
  v24 = &v12[v14 - 1];
  while (2)
  {
    for (i = 0; i != v22; i = i + 1)
    {
      if (*v34 != v23)
      {
        objc_enumerationMutation(v20);
      }

      v26 = *(*(&v33 + 1) + 8 * i);
      v27 = [v26 unsignedIntegerValue];
      if (v27 < v12 || v27 > v24)
      {
        v31 = DMFConfigurationEngineLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10007C170();
        }

        goto LABEL_24;
      }

      v29 = [v11 objectForKeyedSubscript:v26];

      if (v29)
      {
        v31 = DMFConfigurationEngineLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10007C0BC();
        }

LABEL_24:

        v30 = 0;
        goto LABEL_25;
      }

      [v11 setObject:v10 forKeyedSubscript:v26];
    }

    v22 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
    v30 = 1;
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_25:

  return v30;
}

- (BOOL)_registerPredicateObserver
{
  v3 = [(DMDActivationBudgetObserver *)self usageBudget];
  v4 = [v3 identifier];

  v5 = [(DMDActivationBudgetObserver *)self usageMonitor];
  v6 = [(DMDActivationBudgetObserver *)self usageBudget];
  v26 = v6;
  v7 = [NSArray arrayWithObjects:&v26 count:1];
  v8 = [(DMDActivationBudgetObserver *)self notificationTimes];
  v17 = 0;
  v9 = [v5 startMonitoringBudgets:v7 darwinNotificationName:@"com.apple.dmd.budget.didChange" notificationTimes:v8 error:&v17];
  v10 = v17;

  v11 = DMFConfigurationEngineLog();
  v12 = v11;
  if ((v9 & 1) == 0)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v13 = [(DMDActivationPredicateObserver *)self predicateType];
    v14 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    v16 = [v10 debugDescription];
    *buf = 138544130;
    v19 = v13;
    v20 = 2114;
    v21 = v14;
    v22 = 2114;
    v23 = v4;
    v24 = 2114;
    v25 = v16;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Predicate type: %{public}@ with unique identifier: %{public}@ failed starting usage monitor with budget identifier: %{public}@, error: %{public}@", buf, 0x2Au);

    goto LABEL_4;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(DMDActivationPredicateObserver *)self predicateType];
    v14 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    *buf = 138543874;
    v19 = v13;
    v20 = 2114;
    v21 = v14;
    v22 = 2114;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Predicate type: %{public}@ with unique identifier: %{public}@ succeeded starting usage monitor with budget identifier: %{public}@", buf, 0x20u);
LABEL_4:
  }

LABEL_6:

  return v9;
}

@end