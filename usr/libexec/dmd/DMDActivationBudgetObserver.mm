@interface DMDActivationBudgetObserver
- (BOOL)_budgetDays:(id)days duration:(id)duration calendar:(id)calendar schedule:(id)schedule;
- (BOOL)_extractComponentsFromBudgetPredicate:(id)predicate;
- (BOOL)_extractComponentsFromCompositeBudgetPredicate:(id)predicate;
- (BOOL)_registerPredicateObserver;
- (DMDActivationBudgetObserver)initWithDelegate:(id)delegate uniqueIdentifier:(id)identifier budgetPredicate:(id)predicate;
- (DMDActivationBudgetObserver)initWithDelegate:(id)delegate uniqueIdentifier:(id)identifier compositeBudgetPredicate:(id)predicate;
- (id)evaluatePredicateWithError:(id *)error;
- (id)metadata;
- (void)invalidate;
@end

@implementation DMDActivationBudgetObserver

- (DMDActivationBudgetObserver)initWithDelegate:(id)delegate uniqueIdentifier:(id)identifier budgetPredicate:(id)predicate
{
  predicateCopy = predicate;
  v16.receiver = self;
  v16.super_class = DMDActivationBudgetObserver;
  v9 = [(DMDActivationPredicateObserver *)&v16 initWithDelegate:delegate uniqueIdentifier:identifier predicate:predicateCopy];
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

  if (![(DMDActivationBudgetObserver *)v9 _extractComponentsFromBudgetPredicate:predicateCopy])
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

- (DMDActivationBudgetObserver)initWithDelegate:(id)delegate uniqueIdentifier:(id)identifier compositeBudgetPredicate:(id)predicate
{
  predicateCopy = predicate;
  v16.receiver = self;
  v16.super_class = DMDActivationBudgetObserver;
  v9 = [(DMDActivationPredicateObserver *)&v16 initWithDelegate:delegate uniqueIdentifier:identifier predicate:predicateCopy];
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

  if (![(DMDActivationBudgetObserver *)v9 _extractComponentsFromCompositeBudgetPredicate:predicateCopy])
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

- (id)evaluatePredicateWithError:(id *)error
{
  usageBudget = [(DMDActivationBudgetObserver *)self usageBudget];
  identifier = [usageBudget identifier];

  [(DMDActivationBudgetObserver *)self setRemainingTime:0];
  expiredNotificationTimes = [(DMDActivationBudgetObserver *)self expiredNotificationTimes];
  [expiredNotificationTimes removeAllObjects];

  usageMonitor = [(DMDActivationBudgetObserver *)self usageMonitor];
  v57 = identifier;
  v9 = [NSArray arrayWithObjects:&v57 count:1];
  v45 = 0;
  v10 = [usageMonitor checkStatusOfBudgets:v9 error:&v45];
  v11 = v45;

  if (v10)
  {
    errorCopy = error;
    v12 = [v10 objectForKeyedSubscript:identifier];
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
      notificationTimes = [(DMDActivationBudgetObserver *)self notificationTimes];
      v17 = [notificationTimes countByEnumeratingWithState:&v41 objects:v56 count:16];
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
              objc_enumerationMutation(notificationTimes);
            }

            v21 = *(*(&v41 + 1) + 8 * i);
            [v21 doubleValue];
            v23 = v22;
            [v13 doubleValue];
            if (v23 >= v24)
            {
              expiredNotificationTimes2 = [(DMDActivationBudgetObserver *)self expiredNotificationTimes];
              [expiredNotificationTimes2 addObject:v21];
            }
          }

          v18 = [notificationTimes countByEnumeratingWithState:&v41 objects:v56 count:16];
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
      predicateType = [(DMDActivationPredicateObserver *)self predicateType];
      uniqueIdentifier = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
      expiredNotificationTimes3 = [(DMDActivationBudgetObserver *)self expiredNotificationTimes];
      *buf = 138544386;
      v47 = predicateType;
      v48 = 2114;
      v49 = uniqueIdentifier;
      v50 = 2114;
      v51 = identifier;
      v52 = 2114;
      v53 = expiredNotificationTimes3;
      v54 = 2114;
      v55 = v13;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Predicate type: %{public}@ with unique identifier: %{public}@ succeeded checking status of Usage Tracking monitor with budget identifier %{public}@, expired notification times: %{public}@, remaining time: %{public}@ seconds", buf, 0x34u);
    }

    error = errorCopy;
  }

  else
  {
    v13 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      predicateType2 = [(DMDActivationPredicateObserver *)self predicateType];
      uniqueIdentifier2 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
      v37 = [v11 debugDescription];
      *buf = 138544130;
      v47 = predicateType2;
      v48 = 2114;
      v49 = uniqueIdentifier2;
      v50 = 2114;
      v51 = identifier;
      v52 = 2114;
      v53 = v37;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Predicate type: %{public}@ with unique identifier: %{public}@ failed checking status of Usage Tracking monitor with budget identifier: %{public}@, error: %{public}@", buf, 0x2Au);
    }

    v14 = 0;
  }

  if (error && v11)
  {
    v30 = v11;
    *error = v11;
  }

  v31 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    predicateType3 = [(DMDActivationPredicateObserver *)self predicateType];
    uniqueIdentifier3 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    *buf = 138544130;
    v47 = predicateType3;
    v48 = 2114;
    v49 = uniqueIdentifier3;
    v50 = 2114;
    v51 = v14;
    v52 = 2114;
    v53 = identifier;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Predicate type: %{public}@ with unique identifier: %{public}@ evaluated predicate: %{public}@ for Usage Tracking monitor with identifier: %{public}@", buf, 0x2Au);
  }

  return v14;
}

- (void)invalidate
{
  usageBudget = [(DMDActivationBudgetObserver *)self usageBudget];
  identifier = [usageBudget identifier];

  usageMonitor = [(DMDActivationBudgetObserver *)self usageMonitor];
  v11 = identifier;
  v6 = [NSArray arrayWithObjects:&v11 count:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008B70;
  v9[3] = &unk_1000CDBD0;
  v9[4] = self;
  v10 = identifier;
  v7 = identifier;
  [usageMonitor stopMonitoringBudgets:v6 completionHandler:v9];

  v8.receiver = self;
  v8.super_class = DMDActivationBudgetObserver;
  [(DMDActivationPredicateObserver *)&v8 invalidate];
}

- (id)metadata
{
  v3 = objc_opt_new();
  expiredNotificationTimes = [(DMDActivationBudgetObserver *)self expiredNotificationTimes];
  v5 = [expiredNotificationTimes sortedArrayUsingSelector:"compare:"];

  if ([v5 count])
  {
    [v3 setObject:v5 forKeyedSubscript:DMFDeclarationStatePredicatePayloadStatusExpiredNotificationTimesKey];
  }

  v8.receiver = self;
  v8.super_class = DMDActivationBudgetObserver;
  metadata = [(DMDActivationPredicateObserver *)&v8 metadata];
  if ([v3 count])
  {
    [metadata setObject:v3 forKeyedSubscript:DMFDeclarationStatePredicatePayloadStatusKey];
  }

  return metadata;
}

- (BOOL)_extractComponentsFromBudgetPredicate:(id)predicate
{
  predicateCopy = predicate;
  payloadCalendarIdentifier = [predicateCopy payloadCalendarIdentifier];
  [(DMDActivationBudgetObserver *)self setCalendarIdentifier:payloadCalendarIdentifier];

  calendarIdentifier = [(DMDActivationBudgetObserver *)self calendarIdentifier];
  v7 = [(DMDActivationPredicateObserver *)self calendarForIdentifier:calendarIdentifier];

  payloadMonitor = [predicateCopy payloadMonitor];
  if (payloadMonitor)
  {
    payloadIdentifiersVersion2 = [predicateCopy payloadIdentifiersVersion2];
    v10 = payloadIdentifiersVersion2;
    if (payloadIdentifiersVersion2)
    {
      payloadIdentifiers = payloadIdentifiersVersion2;
    }

    else
    {
      payloadIdentifiers = [predicateCopy payloadIdentifiers];
    }

    v12 = payloadIdentifiers;

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
    if ([payloadMonitor isEqualToString:@"Apps"])
    {
      v16 = [NSSet setWithArray:v12];
      v17 = v14;
      v14 = v16;
    }

    else if ([payloadMonitor isEqualToString:@"Categories"])
    {
      v19 = [NSSet setWithArray:v12];
      v17 = v15;
      v15 = v19;
    }

    else
    {
      if (![payloadMonitor isEqualToString:@"WebSites"])
      {
LABEL_19:
        payloadExemptApps = [predicateCopy payloadExemptApps];
        v51 = payloadExemptApps;
        if (payloadExemptApps)
        {
          v22 = [NSSet setWithArray:payloadExemptApps];
        }

        else
        {
          v22 = objc_opt_new();
        }

        v52 = v22;
        v53 = v15;
        payloadNotificationTimes = [predicateCopy payloadNotificationTimes];
        v48 = v12;
        v49 = payloadMonitor;
        v54 = v14;
        v47 = payloadNotificationTimes;
        if (payloadNotificationTimes)
        {
          v24 = [NSSet setWithArray:payloadNotificationTimes];
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
        v50 = predicateCopy;
        payloadTimeBudget = [predicateCopy payloadTimeBudget];
        v28 = [payloadTimeBudget countByEnumeratingWithState:&v56 objects:v82 count:16];
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
                objc_enumerationMutation(payloadTimeBudget);
              }

              v32 = *(*(&v56 + 1) + 8 * i);
              payloadDays = [v32 payloadDays];
              payloadSeconds = [v32 payloadSeconds];
              v35 = [(DMDActivationBudgetObserver *)self _budgetDays:payloadDays duration:payloadSeconds calendar:v7 schedule:v26];

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
                payloadMonitor = v49;
                predicateCopy = v50;
                v41 = v55;
                goto LABEL_39;
              }
            }

            v29 = [payloadTimeBudget countByEnumeratingWithState:&v56 objects:v82 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

        v36 = [USBudget alloc];
        calendarIdentifier2 = [v7 calendarIdentifier];
        uniqueIdentifier = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
        v39 = [v36 initWithCategories:v53 applications:v54 exemptApplications:v52 webDomains:v55 schedule:v26 calendarIdentifier:calendarIdentifier2 identifier:uniqueIdentifier];
        [(DMDActivationBudgetObserver *)self setUsageBudget:v39];

        payloadTimeBudget = DMFConfigurationEngineLog();
        v13 = 1;
        if (os_log_type_enabled(payloadTimeBudget, OS_LOG_TYPE_INFO))
        {
          predicateType = [(DMDActivationPredicateObserver *)self predicateType];
          uniqueIdentifier2 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
          calendarIdentifier3 = [(DMDActivationBudgetObserver *)self calendarIdentifier];
          notificationTimes = [(DMDActivationBudgetObserver *)self notificationTimes];
          *buf = 138545922;
          v61 = predicateType;
          v62 = 2114;
          v63 = uniqueIdentifier2;
          v64 = 2114;
          v65 = calendarIdentifier3;
          v66 = 2114;
          v12 = v48;
          payloadMonitor = v49;
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
          v79 = notificationTimes;
          v80 = 2114;
          v81 = v26;
          v13 = 1;
          _os_log_impl(&_mh_execute_header, payloadTimeBudget, OS_LOG_TYPE_INFO, "Predicate type: %{public}@ with unique identifier: %{public}@ extracted calendar identifier: %{public}@, budget type: %{public}@, budgeted identifiers: %{public}@, budgeted category identifiers: %{public}@, budgeted application identifiers: %{public}@, budgeted website identifiers: %{public}@, exempt application identifiers: %{public}@, notification times: %{public}@, budget schedule: %{public}@", buf, 0x70u);

          predicateCopy = v50;
          v18 = v54;
        }

        else
        {
          payloadMonitor = v49;
          predicateCopy = v50;
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

- (BOOL)_extractComponentsFromCompositeBudgetPredicate:(id)predicate
{
  predicateCopy = predicate;
  payloadCalendarIdentifier = [predicateCopy payloadCalendarIdentifier];
  [(DMDActivationBudgetObserver *)self setCalendarIdentifier:payloadCalendarIdentifier];

  calendarIdentifier = [(DMDActivationBudgetObserver *)self calendarIdentifier];
  v7 = [(DMDActivationPredicateObserver *)self calendarForIdentifier:calendarIdentifier];

  payloadMonitors = [predicateCopy payloadMonitors];
  payloadApps = [payloadMonitors payloadApps];

  payloadMonitors2 = [predicateCopy payloadMonitors];
  payloadCategoriesVersion2 = [payloadMonitors2 payloadCategoriesVersion2];
  v12 = payloadCategoriesVersion2;
  if (payloadCategoriesVersion2)
  {
    payloadCategories = payloadCategoriesVersion2;
  }

  else
  {
    payloadMonitors3 = [predicateCopy payloadMonitors];
    payloadCategories = [payloadMonitors3 payloadCategories];
  }

  payloadMonitors4 = [predicateCopy payloadMonitors];
  payloadWebSites = [payloadMonitors4 payloadWebSites];

  if (payloadApps || payloadCategories || payloadWebSites)
  {
    if (payloadApps)
    {
      v19 = [NSSet setWithArray:payloadApps];
    }

    else
    {
      v19 = objc_opt_new();
    }

    v20 = v19;
    if (payloadCategories)
    {
      v21 = [NSSet setWithArray:payloadCategories];
    }

    else
    {
      v21 = objc_opt_new();
    }

    v59 = v21;
    if (payloadWebSites)
    {
      v22 = [NSSet setWithArray:payloadWebSites];
    }

    else
    {
      v22 = objc_opt_new();
    }

    v58 = v22;
    payloadMonitors5 = [predicateCopy payloadMonitors];
    payloadExemptApps = [payloadMonitors5 payloadExemptApps];

    if (payloadExemptApps)
    {
      v25 = [NSSet setWithArray:payloadExemptApps];
    }

    else
    {
      v25 = objc_opt_new();
    }

    v57 = v25;
    payloadNotificationTimes = [predicateCopy payloadNotificationTimes];
    v53 = payloadCategories;
    v54 = payloadApps;
    v51 = payloadNotificationTimes;
    v52 = payloadWebSites;
    v60 = v20;
    v56 = payloadExemptApps;
    if (payloadNotificationTimes)
    {
      v27 = [NSSet setWithArray:payloadNotificationTimes];
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
    v55 = predicateCopy;
    payloadTimeBudget = [predicateCopy payloadTimeBudget];
    v31 = [payloadTimeBudget countByEnumeratingWithState:&v61 objects:v83 count:16];
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
            objc_enumerationMutation(payloadTimeBudget);
          }

          v35 = *(*(&v61 + 1) + 8 * i);
          payloadDays = [v35 payloadDays];
          payloadSeconds = [v35 payloadSeconds];
          v38 = [(DMDActivationBudgetObserver *)self _budgetDays:payloadDays duration:payloadSeconds calendar:v7 schedule:v29];

          if ((v38 & 1) == 0)
          {
            v48 = DMFConfigurationEngineLog();
            v17 = v60;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              sub_10007BED0();
            }

            v18 = 0;
            predicateCopy = v55;
            payloadWebSites = v52;
            payloadCategories = v53;
            goto LABEL_39;
          }
        }

        v32 = [payloadTimeBudget countByEnumeratingWithState:&v61 objects:v83 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v39 = [USBudget alloc];
    calendarIdentifier2 = [v7 calendarIdentifier];
    uniqueIdentifier = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    v42 = [v39 initWithCategories:v59 applications:v60 exemptApplications:v57 webDomains:v58 schedule:v29 calendarIdentifier:calendarIdentifier2 identifier:uniqueIdentifier];
    [(DMDActivationBudgetObserver *)self setUsageBudget:v42];

    payloadTimeBudget = DMFConfigurationEngineLog();
    v18 = 1;
    if (os_log_type_enabled(payloadTimeBudget, OS_LOG_TYPE_INFO))
    {
      predicateType = [(DMDActivationPredicateObserver *)self predicateType];
      uniqueIdentifier2 = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
      calendarIdentifier3 = [(DMDActivationBudgetObserver *)self calendarIdentifier];
      notificationTimes = [(DMDActivationBudgetObserver *)self notificationTimes];
      *buf = 138545410;
      v66 = predicateType;
      v67 = 2114;
      v68 = uniqueIdentifier2;
      v46 = uniqueIdentifier2;
      v69 = 2114;
      v70 = calendarIdentifier3;
      v71 = 2114;
      v72 = v60;
      v73 = 2114;
      v74 = v59;
      v75 = 2114;
      v76 = v58;
      v77 = 2114;
      v78 = v56;
      v79 = 2114;
      v80 = notificationTimes;
      v81 = 2114;
      v82 = v29;
      v18 = 1;
      _os_log_impl(&_mh_execute_header, payloadTimeBudget, OS_LOG_TYPE_INFO, "Predicate type: %{public}@ with unique identifier: %{public}@ extracted calendar identifier: %{public}@, budgeted application identifiers: %{public}@, budgeted category identifiers: %{public}@, budgeted website identifiers: %{public}@, exempt application identifiers: %{public}@, notification times: %{public}@, budget schedule: %{public}@", buf, 0x5Cu);

      predicateCopy = v55;
      payloadWebSites = v52;
      payloadCategories = v53;
      v17 = v60;
      v47 = v58;
    }

    else
    {
      predicateCopy = v55;
      payloadWebSites = v52;
      payloadCategories = v53;
      v17 = v60;
LABEL_39:
      v47 = v58;
    }

    payloadApps = v54;
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

- (BOOL)_budgetDays:(id)days duration:(id)duration calendar:(id)calendar schedule:(id)schedule
{
  daysCopy = days;
  durationCopy = duration;
  scheduleCopy = schedule;
  v12 = [calendar maximumRangeOfUnit:512];
  v14 = v13;
  if (![daysCopy count])
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

    daysCopy = v19;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = daysCopy;
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
      unsignedIntegerValue = [v26 unsignedIntegerValue];
      if (unsignedIntegerValue < v12 || unsignedIntegerValue > v24)
      {
        v31 = DMFConfigurationEngineLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10007C170();
        }

        goto LABEL_24;
      }

      v29 = [scheduleCopy objectForKeyedSubscript:v26];

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

      [scheduleCopy setObject:durationCopy forKeyedSubscript:v26];
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
  usageBudget = [(DMDActivationBudgetObserver *)self usageBudget];
  identifier = [usageBudget identifier];

  usageMonitor = [(DMDActivationBudgetObserver *)self usageMonitor];
  usageBudget2 = [(DMDActivationBudgetObserver *)self usageBudget];
  v26 = usageBudget2;
  v7 = [NSArray arrayWithObjects:&v26 count:1];
  notificationTimes = [(DMDActivationBudgetObserver *)self notificationTimes];
  v17 = 0;
  v9 = [usageMonitor startMonitoringBudgets:v7 darwinNotificationName:@"com.apple.dmd.budget.didChange" notificationTimes:notificationTimes error:&v17];
  v10 = v17;

  v11 = DMFConfigurationEngineLog();
  v12 = v11;
  if ((v9 & 1) == 0)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    predicateType = [(DMDActivationPredicateObserver *)self predicateType];
    uniqueIdentifier = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    v16 = [v10 debugDescription];
    *buf = 138544130;
    v19 = predicateType;
    v20 = 2114;
    v21 = uniqueIdentifier;
    v22 = 2114;
    v23 = identifier;
    v24 = 2114;
    v25 = v16;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Predicate type: %{public}@ with unique identifier: %{public}@ failed starting usage monitor with budget identifier: %{public}@, error: %{public}@", buf, 0x2Au);

    goto LABEL_4;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    predicateType = [(DMDActivationPredicateObserver *)self predicateType];
    uniqueIdentifier = [(DMDActivationPredicateObserver *)self uniqueIdentifier];
    *buf = 138543874;
    v19 = predicateType;
    v20 = 2114;
    v21 = uniqueIdentifier;
    v22 = 2114;
    v23 = identifier;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Predicate type: %{public}@ with unique identifier: %{public}@ succeeded starting usage monitor with budget identifier: %{public}@", buf, 0x20u);
LABEL_4:
  }

LABEL_6:

  return v9;
}

@end