@interface HRCClassifier
+ (void)classifyArbitratedHeartRate:(id)a3 publisherBlock:(id)a4 clientBlock:(id)a5;
+ (void)classifyUnarbitratedHeartRate:(id)a3 algorithmsInputBlock:(id)a4 publisherBlock:(id)a5 clientBlock:(id)a6;
@end

@implementation HRCClassifier

+ (void)classifyUnarbitratedHeartRate:(id)a3 algorithmsInputBlock:(id)a4 publisherBlock:(id)a5 clientBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 sourceType];
  if (v13 - 1 < 2)
  {
    if (([v9 hrContext] != 2 || objc_msgSend(v9, "arbitrationStatus")) && (objc_msgSend(v9, "hrContext") == 2 || !objc_msgSend(v9, "arbitrationStatus")))
    {
      if ([v9 hrContext] == 2 && objc_msgSend(v9, "arbitrationStatus") == 1)
      {
        v16 = sub_10000132C();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v21 = [v9 uuid];
          v28 = 138543618;
          v29 = v21;
          v30 = 1026;
          v31 = [v9 sourceType];
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "classifier sending hr to algs :: uuid : %{public}@ , sourceType : %{public}d", &v28, 0x12u);
        }

        v22 = v10;
        goto LABEL_30;
      }

      if ([v9 confidenceLevel] == 2 && objc_msgSend(v9, "streamingThrottleStatus") != 2)
      {
        v24 = sub_10000132C();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [v9 uuid];
          v28 = 138543618;
          v29 = v25;
          v30 = 1026;
          v31 = [v9 sourceType];
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "classifier sending hr to publisher :: uuid : %{public}@ , sourceType : %{public}d", &v28, 0x12u);
        }

        v11[2](v11, v9);
      }

      v16 = sub_10000132C();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
LABEL_29:
        v22 = v12;
LABEL_30:

        v22[2](v22, v9);
        goto LABEL_31;
      }

LABEL_28:
      v26 = [v9 uuid];
      v27 = [v9 sourceType];
      v28 = 138543618;
      v29 = v26;
      v30 = 1026;
      v31 = v27;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "classifier sending hr to clients :: uuid : %{public}@ , sourceType : %{public}d", &v28, 0x12u);

      goto LABEL_29;
    }

    v17 = sub_10000132C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = [v9 hrContext];
      v19 = [v9 arbitrationStatus];
      v20 = [v9 uuid];
      v28 = 134218498;
      v29 = v18;
      v30 = 1024;
      v31 = v19;
      v32 = 2114;
      v33 = v20;
      _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "ignoring hr in classifier with context : %ld and arbitration status : %d with uuid : %{public}@", &v28, 0x1Cu);
    }

    goto LABEL_21;
  }

  if (!v13)
  {
    v17 = sub_10000132C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v23 = [v9 uuid];
      sub_1000118E4(v23, &v28, v17);
    }

LABEL_21:

    goto LABEL_31;
  }

  if (v13 == 3)
  {
    v14 = sub_10000132C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v9 uuid];
      v28 = 138543618;
      v29 = v15;
      v30 = 1026;
      v31 = [v9 sourceType];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "classifier sending hr to publisher :: uuid : %{public}@ , sourceType : %{public}d", &v28, 0x12u);
    }

    v11[2](v11, v9);
    v16 = sub_10000132C();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_31:
}

+ (void)classifyArbitratedHeartRate:(id)a3 publisherBlock:(id)a4 clientBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 hrContext] != 2 || objc_msgSend(v7, "arbitrationStatus") != 2)
  {
    v10 = sub_10000132C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v17 = [v7 uuid];
      v18 = 138543874;
      v19 = v17;
      v20 = 2050;
      v21 = [v7 hrContext];
      v22 = 1026;
      v23 = [v7 arbitrationStatus];
      _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "unexpected hr received with uuid : %{public}@ , context : %{public}ld , arbitrationStatus : %{public}d", &v18, 0x1Cu);
    }
  }

  if ([v7 confidenceLevel] == 2 && objc_msgSend(v7, "streamingThrottleStatus") != 2)
  {
    v11 = sub_10000132C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v7 uuid];
      v13 = [v7 sourceType];
      v18 = 138543618;
      v19 = v12;
      v20 = 1026;
      LODWORD(v21) = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "classifier sending hr to publisher :: uuid : %{public}@ , sourceType : %{public}d", &v18, 0x12u);
    }

    v8[2](v8, v7);
  }

  v14 = sub_10000132C();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v7 uuid];
    v16 = [v7 sourceType];
    v18 = 138543618;
    v19 = v15;
    v20 = 1026;
    LODWORD(v21) = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "classifier sending hr to clients :: uuid : %{public}@ , sourceType : %{public}d", &v18, 0x12u);
  }

  v9[2](v9, v7);
}

@end