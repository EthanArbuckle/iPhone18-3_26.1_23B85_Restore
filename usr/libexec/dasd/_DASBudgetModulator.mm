@interface _DASBudgetModulator
+ (id)modulatorForBudgetTypes:(id)types withBudgets:(id)budgets persistence:(id)persistence withQueue:(id)queue;
- (double)areaUnderTrapeziodWithFirstValue:(double)value andSecondValue:(double)secondValue;
- (double)budgetProportionAtDate:(id)date withTimeline:(id)timeline withNormalizer:(double)normalizer;
- (double)gaussianKDEatDate:(id)date withTimeline:(id)timeline withNormalizer:(double)normalizer;
- (double)locked_budgetAllocationProportionAtDate:(id)date forWidgetBudgetID:(id)d;
- (double)relativeUsageAtDate:(id)date withTimeline:(id)timeline;
- (id)initForBudgetTypes:(id)types withBudgets:(id)budgets persistence:(id)persistence withQueue:(id)queue;
- (id)usageTimeline;
- (id)usageTimelineForWidgetBudgetID:(id)d withEndDate:(id)date;
- (int)computeSlotForDate:(id)date relativeToDate:(id)toDate;
- (void)locked_addBudgetsToBeModulated:(id)modulated;
- (void)locked_modulateBudgets;
- (void)locked_replaceBudgetsToBeModulated:(id)modulated;
- (void)locked_updateBudgetsToBeModulatedAdditions:(id)additions removals:(id)removals;
- (void)modulateBudgets:(id)budgets lastModulatedAt:(id)at forNumberOfModulationSlots:(int)slots atDate:(id)date;
- (void)registerForTrial;
- (void)updateCapacity:(double)capacity forBudgetWithName:(id)name;
- (void)updateTrialParametersWithManager:(id)manager;
@end

@implementation _DASBudgetModulator

- (id)initForBudgetTypes:(id)types withBudgets:(id)budgets persistence:(id)persistence withQueue:(id)queue
{
  typesCopy = types;
  budgetsCopy = budgets;
  persistenceCopy = persistence;
  queueCopy = queue;
  v48.receiver = self;
  v48.super_class = _DASBudgetModulator;
  v14 = [(_DASBudgetModulator *)&v48 init];
  if (v14)
  {
    if (budgetsCopy)
    {
      v15 = budgetsCopy;
    }

    else
    {
      v15 = +[NSMutableArray array];
    }

    v16 = *(v14 + 5);
    *(v14 + 5) = v15;

    objc_storeStrong(v14 + 1, persistence);
    objc_storeStrong(v14 + 2, queue);
    typesCopy = [NSString stringWithFormat:@"budgetModulation%@", typesCopy];
    v18 = os_log_create("com.apple.duetactivityscheduler", [typesCopy UTF8String]);
    v19 = *(v14 + 11);
    *(v14 + 11) = v18;

    v20 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v14 + 2));
    v21 = *(v14 + 6);
    *(v14 + 6) = v20;

    v22 = +[NSDate distantPast];
    v23 = *(v14 + 4);
    *(v14 + 4) = v22;

    v24 = objc_alloc_init(NSMutableDictionary);
    v25 = *(v14 + 10);
    *(v14 + 10) = v24;

    v26 = objc_alloc_init(NSMutableDictionary);
    v27 = *(v14 + 9);
    *(v14 + 9) = v26;

    v28 = [typesCopy isEqualToString:@"Widgets"];
    if (v28)
    {
      v29 = 900;
    }

    else
    {
      v29 = 1800;
    }

    dword_10020AE10 = v29;
    if (v28)
    {
      v30 = 96;
    }

    else
    {
      v30 = 48;
    }

    dword_10020AE14 = v30;
    [v14 registerForTrial];
    v31 = *(v14 + 6);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100016498;
    block[3] = &unk_1001B5668;
    v32 = v14;
    v47 = v32;
    v33 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_INHERIT_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
    dispatch_source_set_event_handler(v31, v33);

    lastModulationDate = [persistenceCopy lastModulationDate];
    v35 = v32[3];
    v32[3] = lastModulationDate;

    v36 = dword_10020AE10;
    v37 = v32[3];
    if (v37)
    {
      [v37 timeIntervalSinceNow];
      v36 = llround(fmax(v38 + v36, 0.0));
    }

    v39 = *(v14 + 11);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v50 = v36 / 60.0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Setting timer to fire ~%2.0fm from now", buf, 0xCu);
    }

    v40 = *(v14 + 6);
    v41 = dispatch_walltime(0, 1000000000 * v36 + 60000000000);
    dispatch_source_set_timer(v40, v41, 1000000000 * dword_10020AE10, 0xDBCAC8E00uLL);
    v42 = *(v14 + 2);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000164DC;
    v44[3] = &unk_1001B5668;
    v45 = v32;
    dispatch_async(v42, v44);
    dispatch_activate(*(v14 + 6));
  }

  return v14;
}

+ (id)modulatorForBudgetTypes:(id)types withBudgets:(id)budgets persistence:(id)persistence withQueue:(id)queue
{
  queueCopy = queue;
  persistenceCopy = persistence;
  budgetsCopy = budgets;
  typesCopy = types;
  v13 = [objc_alloc(objc_opt_class()) initForBudgetTypes:typesCopy withBudgets:budgetsCopy persistence:persistenceCopy withQueue:queueCopy];

  return v13;
}

- (void)registerForTrial
{
  v3 = +[_DASTrialManager sharedInstance];
  [v3 addDelegate:self];
  [(_DASBudgetModulator *)self updateTrialParametersWithManager:v3];
}

- (void)updateTrialParametersWithManager:(id)manager
{
  managerCopy = manager;
  v5 = [managerCopy factorWithName:@"Budget_UsageModulationMaximumInitialAllotmentPercentage"];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    qword_100209AC0 = v7;
  }

  v8 = qword_100209AC8;
  v9 = qword_100209AD0;
  v10 = [managerCopy factorWithName:@"Budget_MinimumBatteryLevelForFullUsageInitialAllotment"];

  if (v10)
  {
    [v10 doubleValue];
    v9 = v11;
  }

  v12 = [managerCopy factorWithName:@"Budget_MinimumBatteryForUsageInitialAllotment"];

  if (v12)
  {
    [v12 doubleValue];
    v8 = v13;
  }

  if (*&v8 <= *&v9)
  {
    qword_100209AC8 = v8;
    qword_100209AD0 = v9;
  }

  v14 = [managerCopy factorWithName:@"Budget_MinimumUsageAllotmentSlotLookaheadDuration"];

  if (v14)
  {
    [v14 doubleValue];
    qword_100209AD8 = v15;
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134218752;
    v18 = qword_100209AC0;
    v19 = 2048;
    v20 = qword_100209AC8;
    v21 = 2048;
    v22 = qword_100209AD0;
    v23 = 2048;
    v24 = qword_100209AD8;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Config: Initial Allotment: %.2f, Minimum Level: %.0f, Minimum Full Level: %.0f, Minimum Lookahead: %.0f", &v17, 0x2Au);
  }
}

- (void)locked_replaceBudgetsToBeModulated:(id)modulated
{
  queue = self->_queue;
  modulatedCopy = modulated;
  dispatch_assert_queue_V2(queue);
  [(NSMutableDictionary *)self->_lastPredictionUpdateForWidgets removeAllObjects];
  [(NSMutableDictionary *)self->_predictedBudgetsForWidgets removeAllObjects];
  v6 = [modulatedCopy copy];
  budgets = self->_budgets;
  self->_budgets = v6;

  v8 = +[NSDate date];
  lastModulationDate = self->_lastModulationDate;
  self->_lastModulationDate = v8;

  [(_DASBudgetModulator *)self modulateBudgets:modulatedCopy lastModulatedAt:0 forNumberOfModulationSlots:1 atDate:self->_lastModulationDate];
  persistence = self->_persistence;
  v11 = self->_budgets;

  [(_DASBudgetPersisting *)persistence saveBudgets:v11];
}

- (void)locked_addBudgetsToBeModulated:(id)modulated
{
  modulatedCopy = modulated;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_lastModulationDate)
  {
    [(_DASBudgetModulator *)self modulateBudgets:modulatedCopy lastModulatedAt:0 forNumberOfModulationSlots:1 atDate:?];
  }

  v4 = [(NSArray *)self->_budgets arrayByAddingObjectsFromArray:modulatedCopy];
  budgets = self->_budgets;
  self->_budgets = v4;

  [(_DASBudgetPersisting *)self->_persistence saveBudgets:self->_budgets];
}

- (void)locked_updateBudgetsToBeModulatedAdditions:(id)additions removals:(id)removals
{
  additionsCopy = additions;
  removalsCopy = removals;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_lastModulationDate)
  {
    [(_DASBudgetModulator *)self modulateBudgets:additionsCopy lastModulatedAt:0 forNumberOfModulationSlots:1 atDate:?];
  }

  v8 = [(NSArray *)self->_budgets mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = removalsCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 removeObject:{*(*(&v16 + 1) + 8 * v13), v16}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [v8 addObjectsFromArray:additionsCopy];
  v14 = [v8 copy];
  budgets = self->_budgets;
  self->_budgets = v14;

  [(_DASBudgetPersisting *)self->_persistence saveBudgets:self->_budgets];
}

- (double)relativeUsageAtDate:(id)date withTimeline:(id)timeline
{
  dateCopy = date;
  timelineCopy = timeline;
  if (timelineCopy)
  {
    v9 = objc_autoreleasePoolPush();
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v48 = 138412290;
      v49 = timelineCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Modulation Timeline: %@", &v48, 0xCu);
    }

    startDate = [timelineCopy startDate];
    v12 = [timelineCopy valueAtDate:startDate];
    [v12 doubleValue];
    v14 = v13;

    startDate2 = [timelineCopy startDate];
    LODWORD(v16) = dword_10020AE10;
    v17 = [startDate2 dateByAddingTimeInterval:v16];

    endDate = [timelineCopy endDate];
    [v17 timeIntervalSinceDate:endDate];
    v20 = v19;

    if (v20 >= 0.0)
    {
      v25 = v17;
    }

    else
    {
      do
      {
        v22 = [timelineCopy valueAtDate:v17];
        [v22 doubleValue];
        v14 = v14 + v23;

        LODWORD(v24) = dword_10020AE10;
        v25 = [v17 dateByAddingTimeInterval:v24];

        endDate2 = [timelineCopy endDate];
        [v25 timeIntervalSinceDate:endDate2];
        v28 = v27;

        v17 = v25;
      }

      while (v28 < 0.0);
    }

    v30 = *&qword_100209AD8;
    LODWORD(v21) = dword_10020AE10;
    v31 = v21;
    if (*&qword_100209AD8 > v31)
    {
      v30 = v31;
    }

    v32 = [dateCopy dateByAddingTimeInterval:v30];
    startDate3 = [timelineCopy startDate];
    [v32 timeIntervalSinceDate:startDate3];
    v35 = v34;

    if (v35 >= 0.0)
    {
      v36 = v32;
    }

    else
    {
      do
      {
        v36 = [v32 dateByAddingTimeInterval:86400.0];

        startDate4 = [timelineCopy startDate];
        [v36 timeIntervalSinceDate:startDate4];
        v39 = v38;

        v32 = v36;
      }

      while (v39 < 0.0);
    }

    v40 = self->_log;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v42 = v40;
      v43 = [NSNumber numberWithDouble:v14];
      v44 = [timelineCopy valueAtDate:v36];
      v48 = 138412802;
      v49 = v43;
      v50 = 2112;
      v51 = v36;
      v52 = 2112;
      v53 = v44;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "All Likelihoods: %@, Value at %@: %@", &v48, 0x20u);
    }

    if (v14 == 0.0)
    {
      LODWORD(v41) = dword_10020AE14;
      v29 = 1.0 / v41;
    }

    else
    {
      v45 = [timelineCopy valueAtDate:v36];
      [v45 doubleValue];
      v29 = v46 / v14;
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    LODWORD(v8) = dword_10020AE14;
    v29 = 1.0 / v8;
  }

  return v29;
}

- (id)usageTimeline
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[NSDate date];
  v4 = v3;
  if (self->_usage && ([v3 timeIntervalSinceDate:self->_lastUsageTimelineUpdate], v5 < 21600.0))
  {
    deviceActivityLikelihood = self->_usage;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = +[_DASPredictionManager sharedTimelinePredictor];
    deviceActivityLikelihood = [v8 deviceActivityLikelihood];

    objc_storeStrong(&self->_usage, deviceActivityLikelihood);
    objc_storeStrong(&self->_lastUsageTimelineUpdate, v4);
    objc_autoreleasePoolPop(v7);
  }

  return deviceActivityLikelihood;
}

- (void)locked_modulateBudgets
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[NSDate date];
  lastModulationDate = self->_lastModulationDate;
  if (lastModulationDate)
  {
    v5 = [(_DASBudgetModulator *)self numberOfModulationFromDate:lastModulationDate toDate:v3];
    if (!v5)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Last updated budgets too recently. Exiting.", &v10, 2u);
      }

      goto LABEL_9;
    }
  }

  else
  {
    v5 = 1;
  }

  v7 = self->_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    budgets = self->_budgets;
    v9 = self->_lastModulationDate;
    v10 = 138412802;
    v11 = budgets;
    v12 = 2112;
    v13 = v9;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Last modulated budgets %@ at %@, modulating for %d slots from then to now", &v10, 0x1Cu);
  }

  [(_DASBudgetModulator *)self modulateBudgets:self->_budgets lastModulatedAt:self->_lastModulationDate forNumberOfModulationSlots:v5 atDate:v3];
  objc_storeStrong(&self->_lastModulationDate, v3);
  [(_DASBudgetPersisting *)self->_persistence saveBudgets:self->_budgets];
  [(_DASBudgetPersisting *)self->_persistence saveModulationDate:v3];
LABEL_9:
}

- (void)modulateBudgets:(id)budgets lastModulatedAt:(id)at forNumberOfModulationSlots:(int)slots atDate:(id)date
{
  budgetsCopy = budgets;
  dateCopy = date;
  dispatch_assert_queue_V2(self->_queue);
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = budgetsCopy;
  v11 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v75;
    v15 = -1.0;
    v16 = 0.0;
    *&v12 = 134218242;
    v68 = v12;
    atCopy = at;
    v70 = *v75;
    do
    {
      v17 = 0;
      v72 = v13;
      do
      {
        if (*v75 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v74 + 1) + 8 * v17);
        allocationType = [v18 allocationType];
        if (allocationType <= 1)
        {
          if (allocationType)
          {
            if (allocationType == 1)
            {
              [v18 capacity];
              LODWORD(v28) = dword_10020AE14;
              v16 = v27 * slots / v28;
            }
          }

          else
          {
            v16 = 0.0;
          }
        }

        else
        {
          switch(allocationType)
          {
            case 2:
              if (at)
              {
                if (v15 < 0.0)
                {
                  usageTimeline = [(_DASBudgetModulator *)self usageTimeline];
                  [(_DASBudgetModulator *)self relativeUsageAtDate:dateCopy withTimeline:usageTimeline];
                  v15 = v30;
                }

                log = self->_log;
                if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  v79 = v15 * 100.0;
                  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Allocating %2.2f%% of budget based on usage", buf, 0xCu);
                }

                [v18 capacity];
                v16 = v15 * v32;
                if ([v18 allocationType])
                {
                  goto LABEL_43;
                }
              }

              else
              {
                v36 = +[_CDClientContext userContext];
                v37 = +[_CDContextQueries keyPathForBatteryLevel];
                v38 = [v36 objectForKeyedSubscript:v37];
                [v38 doubleValue];
                v40 = v39;

                v13 = v72;
                v41 = 0.0;
                if (v40 >= *&qword_100209AC8)
                {
                  v41 = *&qword_100209AC0;
                  if (v40 < *&qword_100209AD0)
                  {
                    v41 = (v40 - *&qword_100209AC8) * *&qword_100209AC0 / (*&qword_100209AD0 - *&qword_100209AC8);
                  }
                }

                [v18 capacity];
                v16 = v41 * v42;
                v43 = self->_log;
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  v44 = v43;
                  name = [v18 name];
                  *buf = v68;
                  v79 = v16;
                  v80 = 2112;
                  v81 = *&name;
                  _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Allocating %.0f budget on start for %@", buf, 0x16u);
                }

                if ([v18 allocationType])
                {
LABEL_52:
                  v62 = self->_log;
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543618;
                    v79 = *&v18;
                    v80 = 2048;
                    v81 = v16;
                    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Set budget balance for %{public}@ to %10.2lf", buf, 0x16u);
                  }

                  v63 = v18;
                  v64 = v16;
LABEL_58:
                  [v63 setBalance:v64];
                  goto LABEL_59;
                }
              }

              goto LABEL_47;
            case 3:
              if (v15 < 0.0)
              {
                usageTimeline2 = [(_DASBudgetModulator *)self usageTimeline];
                [(_DASBudgetModulator *)self relativeUsageAtDate:dateCopy withTimeline:usageTimeline2];
                v15 = v34;
              }

              [v18 capacity];
              v16 = v35 * (1.0 - v15);
              break;
            case 4:
              if (at)
              {
                widgetBudgetID = [v18 widgetBudgetID];
                v21 = 0.0;
                if (slots >= 1)
                {
                  v23 = 1 - slots;
                  v22 = slots + 1;
                  do
                  {
                    [dateCopy dateByAddingTimeInterval:(dword_10020AE10 * v23)];
                    v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    [(_DASBudgetModulator *)self locked_budgetAllocationProportionAtDate:*&v24 forWidgetBudgetID:widgetBudgetID];
                    v15 = v25;
                    v21 = v21 + v25;
                    v26 = self->_log;
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412802;
                      v79 = v24;
                      v80 = 2048;
                      v81 = v15;
                      v82 = 2048;
                      v83 = v21;
                      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Relative usage at slot date %@ is %5.5f, total proportion until now is %5.5f", buf, 0x20u);
                    }

                    --v22;
                    ++v23;
                  }

                  while (v22 > 1);
                }

                at = atCopy;
                v14 = v70;
                v13 = v72;
              }

              else
              {
                v21 = 0.05;
              }

              [v18 capacity];
              v16 = v21 * v46;
              v47 = self->_log;
              if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
              {
                *buf = 134218240;
                v79 = v21 * 100.0;
                v80 = 2048;
                v81 = v16;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Allocating %5.5f%% of widget budget based on usage, resulting in a adjustment of %5.5f", buf, 0x16u);
              }

              break;
          }
        }

        if ([v18 allocationType])
        {
          if (!at)
          {
            goto LABEL_52;
          }

LABEL_43:
          if (v16 != 0.0)
          {
            v48 = self->_log;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v79 = *&v18;
              v80 = 2048;
              v81 = v16;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Increment budget %{public}@ by %10.2lf", buf, 0x16u);
            }

            [v18 incrementBy:v16];
          }

          goto LABEL_59;
        }

LABEL_47:
        [v18 balance];
        v50 = v49;
        [v18 capacity];
        if (v50 != v51)
        {
          lastModulatedDate = [v18 lastModulatedDate];
          if (!lastModulatedDate || (v53 = lastModulatedDate, [v18 lastModulatedDate], v54 = objc_claimAutoreleasedReturnValue(), objc_msgSend(dateCopy, "timeIntervalSinceDate:", v54), v56 = v55, v54, v53, v56 >= 86400.0))
          {
            v65 = self->_log;
            if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
            {
              v66 = v65;
              [v18 name];
              v67 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 138412546;
              v79 = v67;
              v80 = 2048;
              v81 = v16;
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "Set %@ balance to %10.2lf", buf, 0x16u);
            }

            [v18 capacity];
            v63 = v18;
            goto LABEL_58;
          }
        }

        v57 = self->_log;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v58 = v57;
          [v18 name];
          v59 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          lastModulatedDate2 = [v18 lastModulatedDate];
          v61 = [lastModulatedDate2 dateByAddingTimeInterval:86400.0];
          *buf = 138412546;
          v79 = v59;
          v80 = 2112;
          v81 = *&v61;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "%@ next refresh at %@", buf, 0x16u);

          v13 = v72;
        }

LABEL_59:
        v17 = v17 + 1;
      }

      while (v17 != v13);
      v13 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
    }

    while (v13);
  }
}

- (void)updateCapacity:(double)capacity forBudgetWithName:(id)name
{
  nameCopy = name;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_budgets;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        name = [v12 name];
        v14 = [name isEqualToString:nameCopy];

        if (v14)
        {
          [v12 setCapacity:capacity];
          goto LABEL_11;
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(_DASBudgetPersisting *)self->_persistence saveBudgets:self->_budgets];
}

- (int)computeSlotForDate:(id)date relativeToDate:(id)toDate
{
  [date timeIntervalSinceDate:toDate];
  if (v4 < 0.0)
  {
    v4 = v4 + ceil(v4 / -86400.0) * 86400.0;
  }

  return v4 / dword_10020AE10 % dword_10020AE14;
}

- (double)locked_budgetAllocationProportionAtDate:(id)date forWidgetBudgetID:(id)d
{
  dateCopy = date;
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(NSMutableDictionary *)self->_predictedBudgetsForWidgets objectForKeyedSubscript:dCopy];

  if (!v8)
  {
LABEL_6:
    lastStartOfADayPeriodForBudgetAllocation = self->_lastStartOfADayPeriodForBudgetAllocation;
    if (lastStartOfADayPeriodForBudgetAllocation)
    {
      v13 = lastStartOfADayPeriodForBudgetAllocation;
      [(NSDate *)v13 timeIntervalSinceDate:dateCopy];
      if (v14 >= -86400.0)
      {
        v9 = v13;
      }

      else
      {
        do
        {
          v9 = [(NSDate *)v13 dateByAddingTimeInterval:86400.0];

          [(NSDate *)v9 timeIntervalSinceDate:dateCopy];
          v13 = v9;
        }

        while (v15 < -86400.0);
      }

      v24 = [(NSMutableDictionary *)self->_lastPredictionUpdateForWidgets objectForKeyedSubscript:dCopy];

      if (v24)
      {
        [(NSMutableDictionary *)self->_lastPredictionUpdateForWidgets objectForKeyedSubscript:dCopy];
      }

      else
      {
        [(NSDate *)v9 dateByAddingTimeInterval:0.0];
      }
      v25 = ;
      [v25 timeIntervalSinceDate:dateCopy];
      if (-v26 <= (24 * dword_10020AE10))
      {
        v23 = v25;
      }

      else
      {
        do
        {
          v23 = [v25 dateByAddingTimeInterval:?];

          [v23 timeIntervalSinceDate:dateCopy];
          v25 = v23;
        }

        while (-v27 > (24 * dword_10020AE10));
      }

      while (1)
      {
        [v23 timeIntervalSinceDate:dateCopy];
        if (v29 <= 0.0)
        {
          break;
        }

        v28 = v23;
        v23 = [v23 dateByAddingTimeInterval:(-24 * dword_10020AE10)];
      }
    }

    else
    {
      v22 = +[NSDate now];
      v9 = [NSDate dateWithTimeInterval:v22 sinceDate:-5.0];

      v23 = [(NSDate *)v9 dateByAddingTimeInterval:0.0];
    }

    v30 = [(_DASBudgetModulator *)self usageTimelineForWidgetBudgetID:dCopy withEndDate:v9];
    v31 = v30;
    if (v30)
    {
      startDate = [v30 startDate];
      v33 = [v31 valueAtDate:startDate];
      [v33 doubleValue];
      v35 = v34;

      startDate2 = [v31 startDate];
      LODWORD(v37) = dword_10020AE10;
      v38 = [startDate2 dateByAddingTimeInterval:v37];

      endDate = [v31 endDate];
      [v38 timeIntervalSinceDate:endDate];
      v41 = v40;

      v70 = dCopy;
      if (v41 >= 0.0)
      {
        v45 = v38;
      }

      else
      {
        do
        {
          v42 = [v31 valueAtDate:v38];
          [v42 doubleValue];
          v35 = v35 + v43;

          LODWORD(v44) = dword_10020AE10;
          v45 = [v38 dateByAddingTimeInterval:v44];

          endDate2 = [v31 endDate];
          [v45 timeIntervalSinceDate:endDate2];
          v48 = v47;

          v38 = v45;
        }

        while (v48 < 0.0);
      }

      v51 = objc_alloc_init(NSMutableArray);
      for (i = 0; i != 24; ++i)
      {
        v53 = [v23 dateByAddingTimeInterval:(dword_10020AE10 * i)];
        [(_DASBudgetModulator *)self budgetProportionAtDate:v53 withTimeline:v31 withNormalizer:v35];
        v55 = v54;

        v56 = [NSNumber numberWithDouble:v55];
        [v51 addObject:v56];
      }

      dCopy = v70;
      [(NSMutableDictionary *)self->_predictedBudgetsForWidgets setObject:v51 forKeyedSubscript:v70];
      [(NSMutableDictionary *)self->_lastPredictionUpdateForWidgets setObject:v23 forKeyedSubscript:v70];
      objc_storeStrong(&self->_lastStartOfADayPeriodForBudgetAllocation, v9);
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        v58 = (24 * dword_10020AE10);
        v59 = log;
        v60 = [v23 dateByAddingTimeInterval:v58];
        *buf = 138413314;
        *v72 = v70;
        *&v72[8] = 2112;
        *&v72[10] = v23;
        *&v72[18] = 2112;
        *&v72[20] = v60;
        v73 = 2112;
        v74 = v9;
        v75 = 2112;
        v76 = v51;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "Computed fresh budget allocation predictions cache for widget %@, START: %@, END: %@, TIMELINE START: %@, PREDICTIONS: %@", buf, 0x34u);

        dCopy = v70;
      }

      v61 = [(_DASBudgetModulator *)self computeSlotForDate:dateCopy relativeToDate:v23];
      v62 = v61;
      if (v61 < 0x18)
      {
        v65 = [v51 objectAtIndexedSubscript:v61];
        [v65 doubleValue];
        v20 = v66;
      }

      else
      {
        v63 = self->_log;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          v68 = v63;
          v69 = [v51 count];
          *buf = 67109634;
          *v72 = v62;
          *&v72[4] = 2112;
          *&v72[6] = dateCopy;
          *&v72[14] = 2048;
          *&v72[16] = v69;
          _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "PLEASE FILE A RADAR - Requested out of bounds slot index - requestedSlot: %d, requestedDate: %@, size of predicted proportions array: %lu", buf, 0x1Cu);
        }

        LODWORD(v64) = dword_10020AE14;
        v20 = 1.0 / v64;
      }
    }

    else
    {
      v49 = self->_log;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v72 = dCopy;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "Budget allocation predictions unavailable for widget %@, returning even modulation", buf, 0xCu);
      }

      LODWORD(v50) = dword_10020AE14;
      v20 = 1.0 / v50;
    }

    goto LABEL_42;
  }

  v9 = [(NSMutableDictionary *)self->_lastPredictionUpdateForWidgets objectForKeyedSubscript:dCopy];
  v10 = [(_DASBudgetModulator *)self computeSlotForDate:dateCopy relativeToDate:v9];
  if (v10 > 23)
  {
    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v72 = dCopy;
      *&v72[8] = 2112;
      *&v72[10] = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Cached budget allocation prediction for widget %@ too old, start at %@", buf, 0x16u);
    }

    goto LABEL_6;
  }

  v16 = v10;
  v17 = [(NSMutableDictionary *)self->_predictedBudgetsForWidgets objectForKeyedSubscript:dCopy];
  v18 = [v17 objectAtIndex:v16];
  [v18 doubleValue];
  v20 = v19;

  v21 = self->_log;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    *v72 = dCopy;
    *&v72[8] = 2112;
    *&v72[10] = v9;
    *&v72[18] = 2048;
    *&v72[20] = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Cached budget allocation prediction for widget %@ available from %@ : budget proportion %f", buf, 0x20u);
  }

LABEL_42:

  return v20;
}

- (id)usageTimelineForWidgetBudgetID:(id)d withEndDate:(id)date
{
  dateCopy = date;
  dCopy = d;
  v7 = +[_DASPredictionManager sharedTimelinePredictor];
  v8 = [v7 widgetUsageLikelihoodForBudgetID:dCopy endDate:dateCopy];

  return v8;
}

- (double)budgetProportionAtDate:(id)date withTimeline:(id)timeline withNormalizer:(double)normalizer
{
  if (normalizer == 0.0)
  {
    return 0.0;
  }

  timelineCopy = timeline;
  dateCopy = date;
  [(_DASBudgetModulator *)self gaussianKDEatDate:dateCopy withTimeline:timelineCopy withNormalizer:normalizer];
  v13 = *&v12;
  LODWORD(v12) = dword_10020AE10;
  v14 = [dateCopy dateByAddingTimeInterval:v12];

  [(_DASBudgetModulator *)self gaussianKDEatDate:v14 withTimeline:timelineCopy withNormalizer:normalizer];
  v16 = v15;

  [(_DASBudgetModulator *)self areaUnderTrapeziodWithFirstValue:v13 andSecondValue:v16];
  return result;
}

- (double)gaussianKDEatDate:(id)date withTimeline:(id)timeline withNormalizer:(double)normalizer
{
  dateCopy = date;
  timelineCopy = timeline;
  startDate = [timelineCopy startDate];
  v11 = [(_DASBudgetModulator *)self computeSlotForDate:dateCopy relativeToDate:startDate];

  v12 = dword_10020AE14;
  v13 = 0.0;
  if (dword_10020AE14 >= 2)
  {
    v14 = -(dword_10020AE14 >> 1);
    v15 = 0.0;
    do
    {
      v16 = (v11 + v14) % v12;
      v17 = v11 + v12 + v14;
      if ((v11 + v14) >= 0)
      {
        v17 = v16;
      }

      v18 = (dword_10020AE10 * v17);
      startDate2 = [timelineCopy startDate];
      v20 = [NSDate dateWithTimeInterval:startDate2 sinceDate:v18];

      v21 = [timelineCopy valueAtDate:v20];
      [v21 doubleValue];
      v23 = v22 / normalizer;

      v15 = v15 + v23 * pow(0.980198673, (v14 * v14));
      ++v14;
      v12 = dword_10020AE14;
    }

    while (v14 < (dword_10020AE14 >> 1));
    v13 = v15 * 0.0797884561;
  }

  return v13;
}

- (double)areaUnderTrapeziodWithFirstValue:(double)value andSecondValue:(double)secondValue
{
  if (value >= secondValue)
  {
    valueCopy = secondValue;
  }

  else
  {
    valueCopy = value;
  }

  v5 = secondValue - value;
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  return valueCopy + v5 * 0.5;
}

@end