@interface _DASPolicyDataCollection
+ (id)sharedInstance;
- (BOOL)sendDataToPPS:(id)s subsystem:(id)subsystem category:(id)category;
- (BOOL)shouldReportBlockingReasonsForActivity:(id)activity;
- (_DASPolicyDataCollection)init;
- (id)dictForCAWithBitmap:(unint64_t)bitmap policyName:(id)name priority:(id)priority;
- (id)networkQualityDictForCAWithPriority:(id)priority blockingCriteria:(id)criteria responseDetails:(id)details;
- (unint64_t)timeInMinutesSinceLastEvaluation;
- (void)evaluateAndReportBlockingReasonsForAllCriteria;
- (void)noteEvaluationTime;
- (void)reportBlockingReason:(unint64_t)reason forActivity:(id)activity;
- (void)reportPolicyBlockingReasonsForIntensiveTasksToPPS;
- (void)reportPolicyBlockingReasonsForSpecificTasksToPPS;
- (void)scheduleTelemetry;
- (void)setCriteriaForActivity:(id)activity withCriteriaIndex:(int64_t)index;
@end

@implementation _DASPolicyDataCollection

+ (id)sharedInstance
{
  if (qword_10020AE70 != -1)
  {
    sub_1000099C4();
  }

  v3 = qword_10020AE68;

  return v3;
}

- (_DASPolicyDataCollection)init
{
  v27.receiver = self;
  v27.super_class = _DASPolicyDataCollection;
  v2 = [(_DASPolicyDataCollection *)&v27 init];
  if (v2)
  {
    v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler.policydatacollection"];
    policyDataCollectionDefaults = v2->_policyDataCollectionDefaults;
    v2->_policyDataCollectionDefaults = v3;

    v5 = [(NSUserDefaults *)v2->_policyDataCollectionDefaults objectForKey:@"LastEvaluationDate"];
    lastEval = v2->_lastEval;
    v2->_lastEval = v5;

    v7 = objc_opt_new();
    priorityToIntensiveBlockingPolicies = v2->_priorityToIntensiveBlockingPolicies;
    v2->_priorityToIntensiveBlockingPolicies = v7;

    v9 = v2->_priorityToIntensiveBlockingPolicies;
    v10 = [NSNumber numberWithUnsignedInteger:_DASSchedulingPriorityMaintenance];
    [(NSMutableDictionary *)v9 setObject:&off_1001C9700 forKeyedSubscript:v10];

    v11 = v2->_priorityToIntensiveBlockingPolicies;
    v12 = [NSNumber numberWithUnsignedInteger:_DASSchedulingPriorityUtility];
    [(NSMutableDictionary *)v11 setObject:&off_1001C9700 forKeyedSubscript:v12];

    v13 = [NSSet setWithArray:&off_1001CAD38];
    v14 = qword_10020AE78;
    qword_10020AE78 = v13;

    v15 = objc_opt_new();
    taskToBlockingPolicies = v2->_taskToBlockingPolicies;
    v2->_taskToBlockingPolicies = v15;

    v17 = +[NSDate date];
    v18 = v17;
    if (!v2->_lastEval || ([v17 timeIntervalSinceDate:?], v19 > 1800.0))
    {
      v20 = [NSDate dateWithTimeInterval:v18 sinceDate:-900.0];
      v21 = v2->_lastEval;
      v2->_lastEval = v20;
    }

    v22 = +[_DASDaemon sharedInstance];
    evaluationQueue = [v22 evaluationQueue];
    v24 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, evaluationQueue);
    policyDataCollectionTimer = v2->_policyDataCollectionTimer;
    v2->_policyDataCollectionTimer = v24;
  }

  return v2;
}

- (void)scheduleTelemetry
{
  policyDataCollectionTimer = self->_policyDataCollectionTimer;
  v4 = dispatch_walltime(0, 900000000000);
  dispatch_source_set_timer(policyDataCollectionTimer, v4, 0xD18C2E2800uLL, 0x3B9ACA00uLL);
  v5 = self->_policyDataCollectionTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001E4D8;
  handler[3] = &unk_1001B5668;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_activate(self->_policyDataCollectionTimer);
}

- (void)evaluateAndReportBlockingReasonsForAllCriteria
{
  v2 = +[_DASPolicyManager allPoliciesForPlatform];
  v3 = [NSNumber numberWithUnsignedInteger:_DASSchedulingPriorityMaintenance];
  v138[0] = v3;
  v4 = [NSNumber numberWithUnsignedInteger:_DASSchedulingPriorityUtility];
  v138[1] = v4;
  v63 = [NSArray arrayWithObjects:v138 count:2];

  v5 = objc_opt_new();
  v6 = [NSNumber numberWithUnsignedInteger:_DASSchedulingPriorityMaintenance];
  [v5 setObject:&off_1001C9700 forKey:v6];

  v7 = [NSNumber numberWithUnsignedInteger:_DASSchedulingPriorityUtility];
  v68 = v5;
  [v5 setObject:&off_1001C9700 forKey:v7];

  v60 = objc_opt_new();
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  obj = v2;
  v64 = [obj countByEnumeratingWithState:&v130 objects:v137 count:16];
  if (!v64)
  {
    v72 = 0;
    goto LABEL_45;
  }

  v72 = 0;
  v62 = *v131;
  do
  {
    for (i = 0; i != v64; i = v38 + 1)
    {
      if (*v131 != v62)
      {
        objc_enumerationMutation(obj);
      }

      v66 = i;
      v9 = *(*(&v130 + 1) + 8 * i);
      v10 = objc_opt_new();
      v11 = objc_opt_class();
      v65 = NSStringFromClass(v11);
      [v65 stringByReplacingOccurrencesOfString:@"_DAS" withString:&stru_1001BA3C0];
      v69 = v71 = v10;
      [v10 setObject:? forKeyedSubscript:?];
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v12 = v63;
      v76 = [v12 countByEnumeratingWithState:&v126 objects:v136 count:16];
      if (!v76)
      {

LABEL_40:
        v38 = v66;
        goto LABEL_41;
      }

      v67 = 0;
      v70 = 0;
      v73 = 0;
      v74 = *v127;
      v75 = v12;
      do
      {
        v13 = 0;
        do
        {
          if (*v127 != v74)
          {
            objc_enumerationMutation(v12);
          }

          v77 = v13;
          v14 = *(*(&v126 + 1) + 8 * v13);
          v79 = +[NSMutableDictionary dictionary];
          v15 = 0;
          for (j = 0; j != 13; ++j)
          {
            v17 = objc_autoreleasePoolPush();
            unsignedLongValue = [v14 unsignedLongValue];
            v19 = _DASActivityDurationShort;
            v20 = +[NSDate now];
            v21 = +[NSDate now];
            v22 = [_DASActivity activityWithName:@"com.apple.dasd.PolicyDataCollectionActivity" priority:unsignedLongValue duration:v19 startingAfter:v20 startingBefore:v21];

            [(_DASPolicyDataCollection *)self setCriteriaForActivity:v22 withCriteriaIndex:j];
            if ([v9 appliesToActivity:v22])
            {
              v23 = +[_DASDaemon sharedInstance];
              context = [v23 context];
              v25 = [v9 responseForActivity:v22 withState:context];

              rationale = [v25 rationale];
              objc_opt_class();
              LOBYTE(context) = objc_opt_isKindOfClass();

              if (context)
              {
                rationale2 = [v25 rationale];
                detailsAsDictionary = [rationale2 detailsAsDictionary];
                if (detailsAsDictionary)
                {
                  v29 = [NSNumber numberWithInteger:j];
                  [v79 setObject:detailsAsDictionary forKeyedSubscript:v29];
                }
              }

              if ([v25 policyDecision] == 33 || objc_msgSend(v25, "policyDecision") == 100)
              {
                if (!j)
                {

                  objc_autoreleasePoolPop(v17);
                  v15 = 0x1FFFLL;
                  goto LABEL_26;
                }

                v15 |= (1 << j);
              }
            }

            objc_autoreleasePoolPop(v17);
          }

          if (!v15)
          {
            goto LABEL_34;
          }

LABEL_26:
          v30 = [NSNumber numberWithUnsignedLongLong:v15];
          [v71 setObject:v30 forKey:v14];

          v31 = v15 & 0x11B7;
          if ((v15 & 0x11B7) != 0)
          {
            v73 |= v31;
            v32 = [v68 objectForKeyedSubscript:v14];
            v33 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v32 unsignedLongValue] | v31);
            [v68 setObject:v33 forKeyedSubscript:v14];

            v72 |= v31;
            v118 = _NSConcreteStackBlock;
            v119 = 3221225472;
            v120 = sub_10001F0A0;
            v121 = &unk_1001B5930;
            selfCopy = self;
            v125 = v15 & 0x11B7;
            v123 = v69;
            v124 = v14;
            AnalyticsSendEventLazy();

            v67 = 1;
          }

          if ((v15 & 0xC) != 0)
          {
            for (k = 0; k != 13; ++k)
            {
              if ((v31 & (1 << k)) != 0)
              {
                v35 = [NSNumber numberWithInteger:k];
                v36 = [v79 objectForKeyedSubscript:v35];

                v110 = _NSConcreteStackBlock;
                v111 = 3221225472;
                v112 = sub_10001F0B0;
                v113 = &unk_1001B5930;
                selfCopy2 = self;
                v115 = v14;
                v117 = k;
                v116 = v36;
                v37 = v36;
                AnalyticsSendEventLazy();
              }
            }
          }

          v70 = 1;
LABEL_34:

          v13 = v77 + 1;
          v12 = v75;
        }

        while ((v77 + 1) != v76);
        v76 = [v75 countByEnumeratingWithState:&v126 objects:v136 count:16];
      }

      while (v76);

      if ((v70 & 1) == 0)
      {
        goto LABEL_40;
      }

      [v60 addObject:v71];
      v38 = v66;
      if (v67)
      {
        v103 = _NSConcreteStackBlock;
        v104 = 3221225472;
        v105 = sub_10001F128;
        v106 = &unk_1001B5958;
        selfCopy3 = self;
        v109 = v73;
        v108 = v69;
        AnalyticsSendEventLazy();
      }

LABEL_41:
    }

    v64 = [obj countByEnumeratingWithState:&v130 objects:v137 count:16];
  }

  while (v64);
LABEL_45:

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v39 = v63;
  v40 = [v39 countByEnumeratingWithState:&v99 objects:v135 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v100;
    do
    {
      for (m = 0; m != v41; m = m + 1)
      {
        if (*v100 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v99 + 1) + 8 * m);
        v45 = [v68 objectForKeyedSubscript:v44];
        unsignedLongValue2 = [v45 unsignedLongValue];

        if (unsignedLongValue2)
        {
          v92 = _NSConcreteStackBlock;
          v93 = 3221225472;
          v94 = sub_10001F13C;
          v95 = &unk_1001B5958;
          v97 = v44;
          v98 = unsignedLongValue2;
          selfCopy4 = self;
          AnalyticsSendEventLazy();
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v99 objects:v135 count:16];
    }

    while (v41);
  }

  if (v72)
  {
    v86 = _NSConcreteStackBlock;
    v87 = 3221225472;
    v88 = sub_10001F150;
    v89 = &unk_1001B5980;
    selfCopy5 = self;
    v91 = v72;
    AnalyticsSendEventLazy();
  }

  v78 = v39;
  v47 = [_DASDaemonLogger logForCategory:@"powerlog"];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    sub_10011CB24(v60, v47);
  }

  [NSDictionary dictionaryWithObject:v60 forKey:@"Evaluations"];
  PLLogRegisteredEvent();
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = v60;
  v48 = [v80 countByEnumeratingWithState:&v82 objects:v134 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v83;
    do
    {
      for (n = 0; n != v49; n = n + 1)
      {
        if (*v83 != v50)
        {
          objc_enumerationMutation(v80);
        }

        v52 = *(*(&v82 + 1) + 8 * n);
        v53 = +[NSMutableDictionary dictionary];
        v54 = [NSNumber numberWithUnsignedInteger:_DASSchedulingPriorityMaintenance];
        v55 = [v52 objectForKeyedSubscript:v54];
        [v53 setObject:v55 forKeyedSubscript:@"Maintenance"];

        v56 = [NSNumber numberWithUnsignedInteger:_DASSchedulingPriorityUtility];
        v57 = [v52 objectForKeyedSubscript:v56];
        [v53 setObject:v57 forKeyedSubscript:@"Utility"];

        v58 = [v52 objectForKeyedSubscript:@"Policy"];
        [v53 setObject:v58 forKeyedSubscript:@"Policy"];

        v59 = +[_DASPPSDataManager sharedInstance];
        [v59 sendDataToPPS:v53 subsystem:@"BackgroundProcessing" category:@"DASPoliciesBlockingCriteria"];
      }

      v49 = [v80 countByEnumeratingWithState:&v82 objects:v134 count:16];
    }

    while (v49);
  }

  [(_DASPolicyDataCollection *)self noteEvaluationTime];
}

- (id)dictForCAWithBitmap:(unint64_t)bitmap policyName:(id)name priority:(id)priority
{
  nameCopy = name;
  priorityCopy = priority;
  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = v10;
  if (nameCopy)
  {
    [v10 setObject:nameCopy forKeyedSubscript:@"PolicyName"];
  }

  if (priorityCopy)
  {
    v12 = +[_DASActivity prettySchedulingPriorityDescription:](_DASActivity, "prettySchedulingPriorityDescription:", [priorityCopy unsignedIntValue]);
    [v11 setObject:v12 forKeyedSubscript:@"Priority"];
  }

  if (bitmap)
  {
    v13 = [NSNumber numberWithInt:bitmap & 1];
    [v11 setObject:v13 forKeyedSubscript:@"NoCriteria"];

    v14 = [NSNumber numberWithInt:(bitmap >> 1) & 1];
    [v11 setObject:v14 forKeyedSubscript:@"RequiresPlugin"];

    v15 = [NSNumber numberWithInt:(bitmap >> 2) & 1];
    [v11 setObject:v15 forKeyedSubscript:@"RequiresNetwork"];

    v16 = [NSNumber numberWithInt:(bitmap >> 4) & 1];
    [v11 setObject:v16 forKeyedSubscript:@"RequiresDeviceInactivity"];

    v17 = [NSNumber numberWithInt:(bitmap >> 5) & 1];
    [v11 setObject:v17 forKeyedSubscript:@"RequiresSignificantUserInactivity"];

    v18 = [NSNumber numberWithInt:(bitmap >> 7) & 1];
    [v11 setObject:v18 forKeyedSubscript:@"IsIntensive"];

    v19 = [NSNumber numberWithInt:(bitmap >> 8) & 1];
    [v11 setObject:v19 forKeyedSubscript:@"RequiresFileProtectionComplete"];

    v20 = [NSNumber numberWithInt:(bitmap >> 12) & 1];
    [v11 setObject:v20 forKeyedSubscript:@"RequiresWidgetBudget"];
  }

  v21 = +[_DASTrialManager sharedInstance];
  experimentID = [v21 experimentID];

  if (experimentID)
  {
    experimentID2 = [v21 experimentID];
    [v11 setObject:experimentID2 forKeyedSubscript:@"trialExperimentId"];

    treatmentID = [v21 treatmentID];
    [v11 setObject:treatmentID forKeyedSubscript:@"trialTreatmentId"];

    v25 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v21 deploymentID]);
    stringValue = [v25 stringValue];
    [v11 setObject:stringValue forKeyedSubscript:@"trialDeploymentId"];
  }

  v27 = [NSNumber numberWithUnsignedInteger:[(_DASPolicyDataCollection *)self timeInMinutesSinceLastEvaluation]];
  [v11 setObject:v27 forKeyedSubscript:@"DurationMinutes"];

  return v11;
}

- (id)networkQualityDictForCAWithPriority:(id)priority blockingCriteria:(id)criteria responseDetails:(id)details
{
  priorityCopy = priority;
  criteriaCopy = criteria;
  detailsCopy = details;
  v11 = objc_alloc_init(NSMutableDictionary);
  if (priorityCopy)
  {
    v12 = +[_DASActivity prettySchedulingPriorityDescription:](_DASActivity, "prettySchedulingPriorityDescription:", [priorityCopy unsignedIntValue]);
    [v11 setObject:v12 forKeyedSubscript:@"Priority"];
  }

  if (criteriaCopy)
  {
    v13 = [criteriaCopy copy];
    [v11 setObject:v13 forKeyedSubscript:@"BlockingCriteria"];
  }

  if (detailsCopy)
  {
    [v11 addEntriesFromDictionary:detailsCopy];
  }

  v14 = [NSNumber numberWithUnsignedInteger:[(_DASPolicyDataCollection *)self timeInMinutesSinceLastEvaluation]];
  [v11 setObject:v14 forKeyedSubscript:@"DurationMinutes"];

  v15 = [v11 copy];

  return v15;
}

- (void)setCriteriaForActivity:(id)activity withCriteriaIndex:(int64_t)index
{
  activityCopy = activity;
  v7 = activityCopy;
  if (index > 6)
  {
    if (index > 9)
    {
      switch(index)
      {
        case 10:
          [activityCopy setBudgeted:1];
          break;
        case 11:
          [activityCopy setDataBudgeted:1];
          break;
        case 12:
          [activityCopy setRemoteDevice:@"test"];
          [v7 setWidgetID:@"widgetID"];
          break;
        default:
          goto LABEL_28;
      }
    }

    else if (index == 7)
    {
      [activityCopy setCpuIntensive:1];
      [v7 setMemoryIntensive:1];
      [v7 setDiskIntensive:1];
      [v7 setAneIntensive:1];
      [v7 setGpuIntensive:1];
    }

    else
    {
      if (index == 8)
      {
        +[_DASFileProtection complete];
      }

      else
      {
        +[_DASFileProtection completeUnlessOpen];
      }
      v6 = ;
      [v7 setFileProtection:v6];
    }
  }

  else if (index > 3)
  {
    if (index == 4)
    {
      [activityCopy setRequiresDeviceInactivity:1];
    }

    else if (index == 5)
    {
      [activityCopy setRequiresSignificantUserInactivity:1];
    }

    else
    {
      [activityCopy setTriggersRestart:1];
    }
  }

  else if (index == 1)
  {
    [activityCopy setRequiresPlugin:1];
  }

  else
  {
    if (index != 2)
    {
      if (index != 3)
      {
        goto LABEL_28;
      }

      [activityCopy setRequiresInexpensiveNetworking:1];
    }

    [v7 setRequiresNetwork:1];
  }

  activityCopy = v7;
LABEL_28:
}

- (unint64_t)timeInMinutesSinceLastEvaluation
{
  v3 = +[NSDate date];
  v4 = v3;
  if (!self->_lastEval || ([v3 timeIntervalSinceDate:?], v5 > 1800.0))
  {
    v6 = [NSDate dateWithTimeInterval:v4 sinceDate:-900.0];
    lastEval = self->_lastEval;
    self->_lastEval = v6;
  }

  [v4 timeIntervalSinceDate:self->_lastEval];
  v9 = (v8 / 60.0);

  return v9;
}

- (void)noteEvaluationTime
{
  v3 = +[NSDate date];
  lastEval = self->_lastEval;
  self->_lastEval = v3;

  policyDataCollectionDefaults = self->_policyDataCollectionDefaults;
  v6 = self->_lastEval;

  [(NSUserDefaults *)policyDataCollectionDefaults setObject:v6 forKey:@"LastEvaluationDate"];
}

- (BOOL)shouldReportBlockingReasonsForActivity:(id)activity
{
  activityCopy = activity;
  if ([activityCopy isIntensive])
  {
    v4 = 1;
  }

  else
  {
    fastPass = [activityCopy fastPass];
    if (fastPass || ([activityCopy isSoftwareUpdateActivity] & 1) != 0)
    {
      v4 = 1;
    }

    else
    {
      v7 = qword_10020AE78;
      name = [activityCopy name];
      v4 = [v7 containsObject:name];
    }
  }

  return v4;
}

- (void)reportBlockingReason:(unint64_t)reason forActivity:(id)activity
{
  activityCopy = activity;
  if ([activityCopy isIntensive])
  {
    priorityToIntensiveBlockingPolicies = self->_priorityToIntensiveBlockingPolicies;
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [activityCopy schedulingPriority]);
    v8 = [(NSMutableDictionary *)priorityToIntensiveBlockingPolicies objectForKeyedSubscript:v7];
    v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 unsignedLongLongValue] | reason);
    v10 = self->_priorityToIntensiveBlockingPolicies;
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [activityCopy schedulingPriority]);
    [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:v11];
  }

  fastPass = [activityCopy fastPass];
  if (fastPass)
  {
  }

  else
  {
    v13 = qword_10020AE78;
    name = [activityCopy name];
    LODWORD(v13) = [v13 containsObject:name];

    if (!v13)
    {
      goto LABEL_9;
    }
  }

  taskToBlockingPolicies = self->_taskToBlockingPolicies;
  name2 = [activityCopy name];
  v17 = [(NSMutableDictionary *)taskToBlockingPolicies objectForKey:name2];

  if (!v17)
  {
    v18 = self->_taskToBlockingPolicies;
    name3 = [activityCopy name];
    [(NSMutableDictionary *)v18 setObject:&off_1001C9700 forKeyedSubscript:name3];
  }

  v20 = self->_taskToBlockingPolicies;
  name4 = [activityCopy name];
  v22 = [(NSMutableDictionary *)v20 objectForKeyedSubscript:name4];
  v23 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 unsignedLongLongValue] | reason);
  v24 = self->_taskToBlockingPolicies;
  name5 = [activityCopy name];
  [(NSMutableDictionary *)v24 setObject:v23 forKeyedSubscript:name5];

LABEL_9:
}

- (void)reportPolicyBlockingReasonsForIntensiveTasksToPPS
{
  v3 = [NSNumber numberWithUnsignedInteger:_DASSchedulingPriorityMaintenance];
  v30[0] = v3;
  v4 = [NSNumber numberWithUnsignedInteger:_DASSchedulingPriorityUtility];
  v30[1] = v4;
  v5 = [NSArray arrayWithObjects:v30 count:2];

  v6 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_priorityToIntensiveBlockingPolicies objectForKeyedSubscript:v12];
        v14 = +[_DASActivity prettySchedulingPriorityDescription:](_DASActivity, "prettySchedulingPriorityDescription:", [v12 unsignedIntValue]);
        [v6 setObject:v13 forKeyedSubscript:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  [(_DASPolicyDataCollection *)self sendDataToPPS:v6 subsystem:@"BackgroundProcessing" category:@"IntensiveTasksBlockingPolicies"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(NSMutableDictionary *)self->_priorityToIntensiveBlockingPolicies setObject:&off_1001C9700 forKeyedSubscript:*(*(&v20 + 1) + 8 * j), v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v17);
  }
}

- (void)reportPolicyBlockingReasonsForSpecificTasksToPPS
{
  allKeys = [(NSMutableDictionary *)self->_taskToBlockingPolicies allKeys];
  if ([allKeys count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = allKeys;
    obj = allKeys;
    v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        v7 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v13 + 1) + 8 * v7);
          v9 = objc_opt_new();
          [v9 setObject:v8 forKeyedSubscript:@"TaskName"];
          v10 = [(NSMutableDictionary *)self->_taskToBlockingPolicies objectForKeyedSubscript:v8];
          [v9 setObject:v10 forKeyedSubscript:@"BlockingPolicies"];

          [(_DASPolicyDataCollection *)self sendDataToPPS:v9 subsystem:@"BackgroundProcessing" category:@"TaskBlockingPolicies"];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    [(NSMutableDictionary *)self->_taskToBlockingPolicies removeAllObjects];
    allKeys = v11;
  }
}

- (BOOL)sendDataToPPS:(id)s subsystem:(id)subsystem category:(id)category
{
  categoryCopy = category;
  subsystemCopy = subsystem;
  sCopy = s;
  v10 = +[_DASPPSDataManager sharedInstance];
  v11 = [v10 sendDataToPPS:sCopy subsystem:subsystemCopy category:categoryCopy];

  return v11;
}

@end