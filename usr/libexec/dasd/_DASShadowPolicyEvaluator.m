@interface _DASShadowPolicyEvaluator
+ (id)sharedShadowPolicyEvaluator;
- (BOOL)logPolicyForActivity:(id)a3 policy:(unint64_t)a4;
- (BOOL)reportShadowEvaluationForPolicy:(unint64_t)a3 forActivity:(id)a4 atDate:(id)a5;
@end

@implementation _DASShadowPolicyEvaluator

+ (id)sharedShadowPolicyEvaluator
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004F49C;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B180 != -1)
  {
    dispatch_once(&qword_10020B180, block);
  }

  v2 = qword_10020B188;

  return v2;
}

- (BOOL)reportShadowEvaluationForPolicy:(unint64_t)a3 forActivity:(id)a4 atDate:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 != 1)
  {
    goto LABEL_7;
  }

  v10 = [v8 startDate];

  if (v10)
  {
    v11 = [v8 startDate];
    [v9 timeIntervalSinceDate:v11];
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
      if (!proc_pid_rusage([v8 pid], 6, &v15) && vaddvq_f64(vdivq_f64(vcvtq_f64_s64(v16), vdupq_n_s64(0x412E848000000000uLL))) < 0.0)
      {
        LOBYTE(v10) = 1;
        [(_DASShadowPolicyEvaluator *)self logPolicyForActivity:v8 policy:1];
        goto LABEL_8;
      }
    }

LABEL_7:
    LOBYTE(v10) = 0;
  }

LABEL_8:

  return v10;
}

- (BOOL)logPolicyForActivity:(id)a3 policy:(unint64_t)a4
{
  v5 = a3;
  v6 = +[NSMutableDictionary dictionary];
  v7 = [v5 name];

  [v6 setObject:v7 forKeyedSubscript:@"TaskName"];
  v8 = [NSNumber numberWithUnsignedInteger:a4];
  [v6 setObject:v8 forKeyedSubscript:@"Policy"];

  v9 = +[_DASPPSDataManager sharedInstance];
  LOBYTE(v5) = [v9 sendDataToPPS:v6 subsystem:@"BackgroundProcessing" category:@"ShadowPolicyEvaluation"];

  return v5;
}

@end