@interface _DASConditionScore
+ (BOOL)isPremiumClient:(id)a3;
+ (BOOL)shouldCacheMetadataForActivity:(id)a3;
+ (double)preOptimalRelaxationFactor:(unint64_t)a3;
+ (double)relaxationFactorForTimeSlot:(int64_t)a3 activityPriority:(unint64_t)a4;
+ (double)scoreForActivity:(id)a3 withState:(id)a4 response:(int64_t *)a5;
+ (double)thresholdScoreForActivity:(id)a3;
+ (id)getResponseStringForPolicy:(id)a3 response:(id)a4 appliesToActivity:(BOOL)a5 weightForActivity:(double)a6;
+ (id)lastDenialResponses:(id)a3;
+ (int64_t)getTimeSlotForActivity:(id)a3;
+ (void)computeOptimalScoreAndDateForActivity:(id)a3;
+ (void)setActivityShouldBypassPredictions:(id)a3;
@end

@implementation _DASConditionScore

+ (BOOL)isPremiumClient:(id)a3
{
  v3 = a3;
  v4 = [v3 schedulingPriority];
  if (v4 >= _DASSchedulingPriorityUserInitiated || +[_DASPhotosPolicy isiCPLActivity:](_DASPhotosPolicy, "isiCPLActivity:", v3) || ([v3 requiresSignificantUserInactivity] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v7 = [v3 fastPass];
    if (v7)
    {
      v5 = 1;
    }

    else
    {
      v8 = [v3 name];
      v5 = [v8 containsString:@"apple.backupd."];
    }
  }

  return v5;
}

+ (void)setActivityShouldBypassPredictions:(id)a3
{
  v8 = a3;
  v3 = [v8 schedulingPriority];
  if (v3 >= _DASSchedulingPriorityUserInitiated || +[_DASPhotosPolicy isiCPLActivity:](_DASPhotosPolicy, "isiCPLActivity:", v8) || +[_DASPhotosPolicy isAppLibraryActivity:](_DASPhotosPolicy, "isAppLibraryActivity:", v8) || ([v8 launchReason], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", _DASLaunchReasonBackgroundRemoteNotification), v4, (v5 & 1) != 0))
  {
    v6 = 1;
  }

  else
  {
    v7 = [v8 fastPass];

    v6 = v7 != 0;
  }

  [v8 setBypassesPredictions:v6];
}

+ (double)scoreForActivity:(id)a3 withState:(id)a4 response:(int64_t *)a5
{
  v6 = a3;
  v75 = a4;
  v70 = os_transaction_create();
  context = objc_autoreleasePoolPush();
  v7 = +[_DASPolicyManager allPoliciesForPlatform];
  v8 = v6;
  objc_sync_enter(v8);
  obj = v8;
  v9 = [v8 policyResponseMetadata];
  v73 = [v9 objectForKeyedSubscript:?];

  [obj setPolicyResponseMetadata:0];
  [obj setLastDenialValue:0];
  v10 = [obj policyResponseMetadata];
  [v10 removeAllObjects];

  objc_sync_exit(obj);
  v74 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
  v79 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v76 = v7;
  v78 = [v76 countByEnumeratingWithState:&v85 objects:v102 count:16];
  if (v78)
  {
    v11 = 0;
    v77 = *v86;
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v78; i = i + 1)
      {
        if (*v86 != v77)
        {
          objc_enumerationMutation(v76);
        }

        v15 = *(*(&v85 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        v17 = [v15 appliesToActivity:{obj, v70}];
        [v15 weightForActivity:obj];
        v19 = v18;
        if (v17)
        {
          v20 = objc_autoreleasePoolPush();
          v21 = [v15 responseForActivity:obj withState:v75];
          objc_autoreleasePoolPop(v20);
          v22 = [v21 policyDecision];
          if (v11 <= v22)
          {
            v11 = v22;
          }

          v23 = [v15 policyName];
          v24 = [_DASConditionScore getResponseStringForPolicy:v23 response:v21 appliesToActivity:1 weightForActivity:v19];

          if ([v21 policyDecision])
          {
            v25 = v79;
          }

          else
          {
            [v21 score];
            v13 = v13 + v19 * v26;
            v12 = v12 + v19;
            v25 = v74;
          }

          [v25 addObject:v24];
          [v21 score];
          if (v27 <= 0.0)
          {
            v28 = obj;
            objc_sync_enter(v28);
            v29 = [v15 policyName];
            [v28 setLastDenialValue:{objc_msgSend(v28, "lastDenialValue") | +[_DASPolicyManager bitmaskForPolicy:](_DASPolicyManager, "bitmaskForPolicy:", v29)}];

            objc_sync_exit(v28);
          }

          if ([_DASConditionScore shouldCacheMetadataForActivity:obj])
          {
            v30 = obj;
            objc_sync_enter(v30);
            v31 = [_DASInternalPolicyEvaluationMetadata alloc];
            [v21 score];
            v33 = v32;
            v34 = [v21 rationale];
            v35 = [v31 initWithScore:objc_msgSend(v34 reason:"responseOptions") decision:{objc_msgSend(v21, "policyDecision"), v33}];
            v36 = [v30 policyResponseMetadata];
            v37 = [v15 policyName];
            [v36 setObject:v35 forKeyedSubscript:v37];

            objc_sync_exit(v30);
          }
        }

        else
        {
          v21 = [v15 policyName];
          v24 = [_DASConditionScore getResponseStringForPolicy:v21 response:0 appliesToActivity:0 weightForActivity:v19];
          [v79 addObject:v24];
        }

        objc_autoreleasePoolPop(v16);
      }

      v78 = [v76 countByEnumeratingWithState:&v85 objects:v102 count:16];
    }

    while (v78);
  }

  else
  {
    v11 = 0;
    v12 = 0.0;
    v13 = 0.0;
  }

  v38 = +[NSDate date];
  [obj setLastScored:v38];

  if ([obj isEmergencySOSActivity])
  {
    v11 = 200;
  }

  else if ([obj isContinuedProcessingTask])
  {
    v39 = obj;
    objc_sync_enter(v39);
    v40 = [v39 policyResponseMetadata];
    v41 = +[_DASApplicationPolicy policyInstance];
    v42 = [v41 policyName];
    v43 = [v40 objectForKeyedSubscript:v42];

    v44 = [v39 policyResponseMetadata];
    v45 = +[_DASGroupSchedulingPolicy policyInstance];
    v46 = [v45 policyName];
    v47 = [v44 objectForKeyedSubscript:v46];

    if ([v47 reason])
    {
      v48 = +[_DASPolicyResponse isPolicyDecisionProceedable:](_DASPolicyResponse, "isPolicyDecisionProceedable:", [v47 decision]);
    }

    else
    {
      v48 = 1;
    }

    if (([v43 reason] & 0x10) != 0 && !((objc_msgSend(v43, "decision") != 200) | v48 & 1))
    {
      v49 = [_DASDaemonLogger logForCategory:@"scoring"];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Group Scheduling Policy is overriding the Application Policy", buf, 2u);
      }

      v11 = 100;
    }

    objc_sync_exit(v39);
  }

  if (a5)
  {
    *a5 = v11;
  }

  v50 = 0.0;
  if (v11 != 100 && v11 != 33)
  {
    if (v11 || v12 == 0.0)
    {
      v50 = 1.0;
    }

    else
    {
      v50 = v13 / v12;
    }
  }

  v51 = obj;
  objc_sync_enter(v51);
  v52 = [v51 policyResponseMetadata];
  [v52 setObject:v73 forKeyedSubscript:@"scoreWhenRun"];

  objc_sync_exit(v51);
  if (v11)
  {
    v53 = [v79 componentsJoinedByString:&stru_1001BA3C0];
    v54 = v53;
    v55 = [v53 UTF8String];

    v56 = [_DASDaemonLogger logForCategory:@"scoring"];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = [_DASPolicyResponse abbreviatedDecision:v11];
      *buf = 138543874;
      v90 = v51;
      v91 = 2082;
      v92 = v55;
      v93 = 2114;
      v94 = *&v57;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%{public}@:[\n%{public}s ], Decision: %{public}@}", buf, 0x20u);
    }

    goto LABEL_58;
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v58 = v74;
  v59 = [v58 countByEnumeratingWithState:&v81 objects:v101 count:16];
  if (v59)
  {
    v60 = *v82;
    do
    {
      for (j = 0; j != v59; j = j + 1)
      {
        if (*v82 != v60)
        {
          objc_enumerationMutation(v58);
        }

        [v79 addObject:{*(*(&v81 + 1) + 8 * j), v70}];
      }

      v59 = [v58 countByEnumeratingWithState:&v81 objects:v101 count:16];
    }

    while (v59);
  }

  v62 = [v79 componentsJoinedByString:&stru_1001BA3C0];
  v63 = v62;
  v64 = [v62 UTF8String];

  if (v12 == 0.0)
  {
    v66 = 0.0;
  }

  else
  {
    v65 = v13 / v12;
    v66 = v65;
    if (v65 != 0.0)
    {
      v56 = [_DASDaemonLogger logForCategory:@"scoring"];
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v67 = [_DASPolicyResponse abbreviatedDecision:0];
        *buf = 138543874;
        v90 = v51;
        v91 = 2114;
        v92 = v67;
        v93 = 2048;
        v94 = v66;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%{public}@, Decision: %{public}@ Score: %f}", buf, 0x20u);
      }

      goto LABEL_58;
    }
  }

  v56 = [_DASDaemonLogger logForCategory:@"scoring", v70];
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    v68 = [_DASPolicyResponse abbreviatedDecision:0];
    *buf = 138544642;
    v90 = v51;
    v91 = 2082;
    v92 = v64;
    v93 = 2048;
    v94 = v13;
    v95 = 2048;
    v96 = v12;
    v97 = 2114;
    v98 = v68;
    v99 = 2048;
    v100 = v66;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%{public}@:[\n%{public}s ], sumScores:%lf denominator:%f Decision: %{public}@ Score: %f}", buf, 0x3Eu);
  }

LABEL_58:

  [v51 setLastComputedScore:v50];
  objc_autoreleasePoolPop(context);

  return v50;
}

+ (BOOL)shouldCacheMetadataForActivity:(id)a3
{
  v3 = a3;
  v4 = +[_DASDaemon sharedInstance];
  v5 = [v4 testModeParameters];

  if (v5 || [_DASPhotosPolicy isPhotosSyncActivity:v3])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v3 isContinuedProcessingTask];
  }

  return v6;
}

+ (void)computeOptimalScoreAndDateForActivity:(id)a3
{
  v3 = a3;
  v4 = os_transaction_create();
  if (qword_10020B4E8 != -1)
  {
    sub_100121F74();
  }

  v5 = objc_autoreleasePoolPush();
  if ([v3 bypassesPredictions])
  {
    v6 = [_DASDaemonLogger logForCategory:@"scoring"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100121F88(v3, v6);
    }

    v7 = [v3 startAfter];
    [v3 setPredictedOptimalStartDate:v7];

    [v3 setPredictedOptimalScore:0.01];
    goto LABEL_61;
  }

  v8 = [v3 startAfter];
  v9 = +[NSDate date];
  [v8 timeIntervalSinceDate:v9];
  if (v10 > 75600.0)
  {
    v11 = [v3 startAfter];
    [v3 setPredictedOptimalStartDate:v11];

    [v3 setPredictedOptimalScore:0.01];
    v12 = [_DASDaemonLogger logForCategory:@"scoring"];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v75 = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ start beyond the 21 hour interval", buf, 0xCu);
    }

    goto LABEL_60;
  }

  v64 = v8;
  v61 = v4;
  v62 = v9;
  v60 = v5;
  v13 = +[_DASPolicyManager allPoliciesForPlatform];
  v14 = +[_DASPolicyManager allPoliciesForPlatform];
  v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v14 count]);

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v12 = v13;
  v16 = [v12 countByEnumeratingWithState:&v70 objects:v83 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v71;
    v19 = 0.0;
    v20 = 0.0;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v71 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v22 = *(*(&v70 + 1) + 8 * i);
        if ([v22 appliesToActivity:v3])
        {
          if ([v22 conformsToProtocol:&OBJC_PROTOCOL____DASActivityPolicyPredicting])
          {
            [v15 addObject:v22];
          }

          else
          {
            [v22 weightForActivity:v3];
            v24 = v23;
            if (objc_opt_respondsToSelector())
            {
              [v22 baselineScoreForActivity:v3];
              v20 = v20 + v24 * v25;
            }

            else
            {
              v20 = v20 + v24;
            }

            v19 = v19 + v24;
          }
        }
      }

      v17 = [v12 countByEnumeratingWithState:&v70 objects:v83 count:16];
    }

    while (v17);
  }

  else
  {
    v19 = 0.0;
    v20 = 0.0;
  }

  v9 = v62;
  [v64 timeIntervalSinceDate:v62];
  if (v26 <= 0.0)
  {
    v27 = v62;
  }

  else
  {
    v27 = v64;
  }

  v8 = v27;

  if (![v15 count])
  {
    [v3 setPredictedOptimalStartDate:v8];
    v33 = v20 / v19;
    if (v19 < 0.001)
    {
      v33 = 0.01;
    }

    [v3 setPredictedOptimalScore:v33];
    v34 = [_DASDaemonLogger logForCategory:@"scoring"];
    v4 = v61;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      [v3 predictedOptimalScore];
      v36 = v35;
      v37 = [qword_10020B4F0 stringFromDate:v8];
      *buf = 138412802;
      v75 = v3;
      v76 = 2048;
      v77 = v36;
      v78 = 2112;
      v79 = v37;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "WARNING NO POLICIES APPLY TO Activity %@: Optimal Score %.4f at %@", buf, 0x20u);
    }

    goto LABEL_59;
  }

  v28 = [v3 startBefore];
  [v28 timeIntervalSinceDate:v8];
  v30 = v29;

  v31 = fmax(fmin(v30, 86400.0), 0.0);
  v32 = 900.0;
  if (v31 <= 900.0)
  {
    v32 = 300.0;
  }

  else if (v31 > 14400.0)
  {
    if ([v3 requestsApplicationLaunch])
    {
      v32 = 900.0;
    }

    else
    {
      v32 = 1800.0;
    }
  }

  v38 = v8;
  v39 = 0.01;
  v59 = v31;
  v63 = v38;
  while (1)
  {
    v40 = objc_autoreleasePoolPush();
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v41 = v15;
    v42 = [v41 countByEnumeratingWithState:&v66 objects:v82 count:16];
    if (!v42)
    {

      goto LABEL_55;
    }

    v43 = v42;
    v65 = v40;
    v44 = *v67;
    v45 = 0.0;
    v46 = 0.0;
    do
    {
      for (j = 0; j != v43; j = j + 1)
      {
        if (*v67 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v48 = *(*(&v66 + 1) + 8 * j);
        v49 = objc_autoreleasePoolPush();
        [v48 weightForActivity:v3];
        v51 = v50;
        [v48 predictedScoreForActivity:v3 atDate:v38];
        v45 = v45 + v51 * v52;
        v46 = v46 + v51;
        objc_autoreleasePoolPop(v49);
      }

      v43 = [v41 countByEnumeratingWithState:&v66 objects:v82 count:16];
    }

    while (v43);

    if (v46 == 0.0)
    {
      v40 = v65;
      goto LABEL_55;
    }

    v53 = (v20 + v45) / (v19 + v46);
    v40 = v65;
    if (v39 < v53)
    {
      break;
    }

LABEL_55:
    v8 = [v38 dateByAddingTimeInterval:v32];

    v31 = v31 - v32;
    objc_autoreleasePoolPop(v40);
    v38 = v8;
    if (v31 < 0.0)
    {
      goto LABEL_56;
    }
  }

  v8 = v38;

  if (v53 <= 0.9)
  {
    v63 = v8;
    v39 = v53;
    goto LABEL_55;
  }

  objc_autoreleasePoolPop(v65);
  v63 = v8;
  v39 = v53;
LABEL_56:
  [v3 setPredictedOptimalScore:v39];
  [v3 setPredictedOptimalStartDate:v63];
  v54 = [v3 startAfter];
  v55 = [NSDate dateWithTimeInterval:v54 sinceDate:v59];

  v56 = [_DASDaemonLogger logForCategory:@"scoring"];
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    v57 = [qword_10020B4F0 stringFromDate:v63];
    v58 = [qword_10020B4F0 stringFromDate:v55];
    *buf = 138413058;
    v75 = v3;
    v76 = 2048;
    v77 = v39;
    v78 = 2112;
    v79 = v57;
    v80 = 2112;
    v81 = v58;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%@: Optimal Score %.4f at %@ (Valid Until: %@)", buf, 0x2Au);
  }

  v5 = v60;
  v4 = v61;
  v9 = v62;
  v34 = v63;
LABEL_59:

LABEL_60:
LABEL_61:
  objc_autoreleasePoolPop(v5);
}

+ (double)thresholdScoreForActivity:(id)a3
{
  v3 = a3;
  if ([v3 bypassesPredictions])
  {
    v4 = 0.01;
  }

  else
  {
    v5 = [_DASConditionScore getTimeSlotForActivity:v3];
    v6 = [v3 schedulingPriority];
    [v3 predictedOptimalScore];
    [_DASConditionScore getScoreForTimeSlot:v5 activityPriority:v6 activityScore:?];
    v4 = v7;
  }

  return v4;
}

+ (int64_t)getTimeSlotForActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 predictedOptimalStartDate];
  v5 = [v3 startBefore];

  [v5 timeIntervalSinceDate:v4];
  v7 = v6;

  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:v4];
  v10 = v9;

  if (v7 >= 0.01)
  {
    v11 = (v10 / (v7 / 10.0) + 1.0);
  }

  else
  {
    v11 = 10;
  }

  v12 = v11 & ~(v11 >> 63);
  if (v12 >= 10)
  {
    v13 = 10;
  }

  else
  {
    v13 = v12;
  }

  return v13;
}

+ (double)relaxationFactorForTimeSlot:(int64_t)a3 activityPriority:(unint64_t)a4
{
  [_DASConditionScore preOptimalRelaxationFactor:a4];
  v7 = v6;
  if (a3)
  {
    if (_DASSchedulingPriorityUserInitiated <= a4)
    {
      v8 = 100.0;
      v9 = 1.0;
    }

    else if (_DASSchedulingPriorityUtility == a4)
    {
      v8 = 110.0;
      v9 = 1.35;
    }

    else if (_DASSchedulingPriorityDefault == a4)
    {
      v8 = 105.0;
      v9 = 1.2;
    }

    else if (_DASSchedulingPriorityBackground == a4)
    {
      v9 = 1.5;
      v8 = 120.0;
    }

    else
    {
      v9 = 1.0;
      if (_DASSchedulingPriorityMaintenance == a4)
      {
        v9 = 1.7;
      }

      v8 = 100.0;
      if (_DASSchedulingPriorityMaintenance == a4)
      {
        v8 = 130.0;
      }
    }

    return v7 * (1.0 - pow((10 * a3) / v8, v9));
  }

  return v7;
}

+ (double)preOptimalRelaxationFactor:(unint64_t)a3
{
  result = 0.75;
  if (_DASSchedulingPriorityUserInitiated > a3)
  {
    if (_DASSchedulingPriorityUtility == a3)
    {
      return 0.925;
    }

    else if (_DASSchedulingPriorityDefault == a3)
    {
      return 0.9;
    }

    else if (_DASSchedulingPriorityBackground == a3)
    {
      return 0.95;
    }

    else
    {
      result = 0.975;
      if (_DASSchedulingPriorityMaintenance != a3)
      {
        return 0.75;
      }
    }
  }

  return result;
}

+ (id)lastDenialResponses:(id)a3
{
  v3 = a3;
  if ([v3 lastDenialValue])
  {
    v4 = +[NSMutableArray array];
    v5 = [v3 lastDenialValue];
    for (i = 0; i != 64; ++i)
    {
      if (v5)
      {
        v7 = [_DASPolicyManager policyForBitIndex:i];
        if (v7)
        {
          [v4 addObject:v7];
        }
      }

      v5 >>= 1;
    }
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

+ (id)getResponseStringForPolicy:(id)a3 response:(id)a4 appliesToActivity:(BOOL)a5 weightForActivity:(double)a6
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v10 && ([v10 policyDecision] || (objc_msgSend(v11, "score"), v12 < 0.9)))
  {
    v13 = objc_opt_new();
    [(__CFString *)v13 appendFormat:@"\t{name: %@, ", v9];
    if (a5)
    {
      v14 = [v11 description];
      [(__CFString *)v13 appendFormat:@"policyWeight: %2.3lf, response: %@}\n", *&a6, v14];
    }

    else
    {
      [(__CFString *)v13 appendString:@"response: N/A}\n"];
    }
  }

  else
  {
    v13 = &stru_1001BA3C0;
  }

  return v13;
}

@end