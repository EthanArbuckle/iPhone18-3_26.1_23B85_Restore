@interface _DASShadowPolicyEvaluator
+ (id)sharedShadowPolicyEvaluator;
- (BOOL)logPolicyForActivity:(id)activity policy:(unint64_t)policy;
- (BOOL)reportShadowEvaluationForPolicy:(unint64_t)policy forActivity:(id)activity atDate:(id)date;
@end

@implementation _DASShadowPolicyEvaluator

+ (id)sharedShadowPolicyEvaluator
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004F49C;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B180 != -1)
  {
    dispatch_once(&qword_10020B180, block);
  }

  v2 = qword_10020B188;

  return v2;
}

- (BOOL)reportShadowEvaluationForPolicy:(unint64_t)policy forActivity:(id)activity atDate:(id)date
{
  activityCopy = activity;
  dateCopy = date;
  if (policy != 1)
  {
    goto LABEL_7;
  }

  startDate = [activityCopy startDate];

  if (startDate)
  {
    startDate2 = [activityCopy startDate];
    [dateCopy timeIntervalSinceDate:startDate2];
    v13 = v12;

    if (v13 >= 180.0)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      if (!proc_pid_rusage([activityCopy pid], 6, &v15) && vaddvq_f64(vdivq_f64(vcvtq_f64_s64(v16), vdupq_n_s64(0x412E848000000000uLL))) < 0.0)
      {
        LOBYTE(startDate) = 1;
        [(_DASShadowPolicyEvaluator *)self logPolicyForActivity:activityCopy policy:1];
        goto LABEL_8;
      }
    }

LABEL_7:
    LOBYTE(startDate) = 0;
  }

LABEL_8:

  return startDate;
}

- (BOOL)logPolicyForActivity:(id)activity policy:(unint64_t)policy
{
  activityCopy = activity;
  v6 = +[NSMutableDictionary dictionary];
  name = [activityCopy name];

  [v6 setObject:name forKeyedSubscript:@"TaskName"];
  v8 = [NSNumber numberWithUnsignedInteger:policy];
  [v6 setObject:v8 forKeyedSubscript:@"Policy"];

  v9 = +[_DASPPSDataManager sharedInstance];
  LOBYTE(activityCopy) = [v9 sendDataToPPS:v6 subsystem:@"BackgroundProcessing" category:@"ShadowPolicyEvaluation"];

  return activityCopy;
}

@end