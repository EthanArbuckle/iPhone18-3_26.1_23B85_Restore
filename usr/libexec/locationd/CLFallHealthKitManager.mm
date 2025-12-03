@interface CLFallHealthKitManager
+ (void)recordFallEventInHealthKit:(const ImpactEvent *)kit;
@end

@implementation CLFallHealthKitManager

+ (void)recordFallEventInHealthKit:(const ImpactEvent *)kit
{
  if (!objc_opt_class())
  {
    return;
  }

  if (+[HKHealthStore isHealthDataAvailable])
  {
    v4 = 0;
    p_fHasMotionBeforeImpact = &kit->fImpact.fHasMotionBeforeImpact;
    fHasMotionBeforeImpact = kit->fImpact.fHasMotionBeforeImpact;
    v7 = 1;
    if (fHasMotionBeforeImpact > 4)
    {
      if (fHasMotionBeforeImpact - 6 < 7)
      {
        if (qword_1025D4330 != -1)
        {
          sub_1018AE900();
        }

        v8 = qword_1025D4338;
        if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_ERROR))
        {
          v9 = *p_fHasMotionBeforeImpact;
          *buf = 67109120;
          v22 = v9;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "event should not be logged in HK with response %i", buf, 8u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018AE9F8(p_fHasMotionBeforeImpact);
        }

        return;
      }

      v11 = 0;
      if (fHasMotionBeforeImpact != 5)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    if (kit->fImpact.fHasMotionBeforeImpact)
    {
      if (fHasMotionBeforeImpact != 1)
      {
        v11 = 0;
        if (fHasMotionBeforeImpact != 2)
        {
LABEL_25:
          if (qword_1025D4330 != -1)
          {
            sub_1018AE900();
          }

          v12 = qword_1025D4338;
          if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289539;
            v22 = 0;
            v23 = 2082;
            v24 = "";
            v25 = 1025;
            v26 = v11;
            v27 = 1025;
            v28 = v4;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Candidate fall event record, felt:%{private}hhd, actionRequested:%{private}hhd}", buf, 0x1Eu);
          }

          if ((v7 & 1) == 0)
          {
            v13 = objc_alloc_init(HKHealthStore);
            v14 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierNumberOfTimesFallen];
            v19 = @"_HKPrivateFallActionRequested";
            v20 = [NSNumber numberWithBool:v4];
            v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
            v16 = [NSDate dateWithTimeIntervalSinceReferenceDate:*&kit->fImpact.fOperatingMode];
            v18 = +[HKQuantitySample quantitySampleWithType:quantity:startDate:endDate:device:metadata:](HKQuantitySample, "quantitySampleWithType:quantity:startDate:endDate:device:metadata:", v14, +[HKQuantity quantityWithUnit:doubleValue:](HKQuantity, "quantityWithUnit:doubleValue:", +[HKUnit countUnit](HKUnit, "countUnit"), 1.0), v16, v16, +[HKDevice localDevice], v15);
            [v13 saveObjects:+[NSArray arrayWithObjects:count:](NSArray withCompletion:{"arrayWithObjects:count:", &v18, 1), &stru_10245B230}];
          }

          return;
        }

        v4 = 0;
        v7 = 0;
LABEL_24:
        v11 = 1;
        goto LABEL_25;
      }

LABEL_23:
      v7 = 0;
      v4 = 1;
      goto LABEL_24;
    }

    if (qword_1025D4330 != -1)
    {
      sub_1018AE900();
    }

    v17 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "event has not response", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AEB08();
    }
  }

  else
  {
    if (qword_1025D4330 != -1)
    {
      sub_1018AE900();
    }

    v10 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "HKHealthStore, health data not available", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AE914();
    }
  }
}

@end