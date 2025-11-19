@interface SignpostReporterObjectFilter
- (BOOL)_objectPassesStringFilter:(id)a3;
- (BOOL)shouldReportSignpostObject:(id)a3 classificationOut:(unint64_t *)a4;
- (SignpostReporterObjectFilter)init;
- (SignpostReporterObjectFilter)initWithPlatform:(unint64_t)a3;
- (id)_init;
- (void)incrementTotalForObject:(id)a3 classification:(unint64_t)a4;
@end

@implementation SignpostReporterObjectFilter

- (BOOL)_objectPassesStringFilter:(id)a3
{
  v4 = a3;
  if ([(SignpostReporterObjectFilter *)self platform]!= 1)
  {
    goto LABEL_5;
  }

  v5 = [v4 subsystem];
  v6 = [v4 category];
  v7 = [v4 name];
  v8 = IsPerfLoggingInterval();

  if (v8)
  {
    v9 = [v4 string1Value];
    v10 = [v4 string2Value];
    v11 = PassesPerfLoggingAllowlist();

    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = 1;
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  if (!SignpostReporterShouldUseAllowlist())
  {
LABEL_19:
    LOBYTE(v20) = 1;
    goto LABEL_20;
  }

  v13 = [v4 string1Name];

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0 && (sub_10000325C(v4, [(SignpostReporterObjectFilter *)self platform]) & 1) == 0)
  {
    v15 = [v4 string1Value];
    [(SignpostReporterObjectFilter *)self platform];
    v16 = StringPassesSignpostReporterStringAllowlist();

    if (!v16)
    {
LABEL_21:
      LOBYTE(v20) = 0;
      goto LABEL_20;
    }
  }

  v17 = [v4 string2Name];

  if (v17)
  {
    v18 = v12;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    goto LABEL_19;
  }

  if (sub_1000035F0(v4))
  {
    goto LABEL_19;
  }

  v19 = [v4 string2Value];
  [(SignpostReporterObjectFilter *)self platform];
  v20 = StringPassesSignpostReporterStringAllowlist();

  if (v20)
  {
    goto LABEL_19;
  }

LABEL_20:

  return v20;
}

- (BOOL)shouldReportSignpostObject:(id)a3 classificationOut:(unint64_t *)a4
{
  v6 = a3;
  if ([v6 canGenerateCoreAnalyticsPayload])
  {
    if ([v6 telemetryEnabled])
    {
      [v6 durationSeconds];
      if (v7 >= 0.0)
      {
        if ([(SignpostReporterObjectFilter *)self _objectPassesStringFilter:v6])
        {
          v11 = [(SignpostReporterObjectFilter *)self scnFilter];
          if (v11)
          {
            v12 = v11;
            v13 = [(SignpostReporterObjectFilter *)self scnFilter];
            v8 = [v13 shouldReportObject:v6];

            if (v8)
            {
              v9 = 1;
            }

            else
            {
              v9 = 4;
            }
          }

          else
          {
            v8 = 1;
            v9 = 1;
          }
        }

        else
        {
          v8 = 0;
          v9 = 2;
        }
      }

      else
      {
        v8 = 0;
        v9 = 3;
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 5;
  }

  if (a4)
  {
    *a4 = v9;
  }

  [(SignpostReporterObjectFilter *)self incrementTotalForObject:v6 classification:v9];

  return v8 & 1;
}

- (id)_init
{
  v20.receiver = self;
  v20.super_class = SignpostReporterObjectFilter;
  v2 = [(SignpostReporterObjectFilter *)&v20 init];
  if (v2)
  {
    v3 = objc_alloc_init(SignpostReporterAggregation);
    allInspectedSignpostObjectsAggregation = v2->_allInspectedSignpostObjectsAggregation;
    v2->_allInspectedSignpostObjectsAggregation = v3;

    v5 = objc_alloc_init(SignpostReporterAggregation);
    telemetryReportedAggregation = v2->_telemetryReportedAggregation;
    v2->_telemetryReportedAggregation = v5;

    v7 = objc_alloc_init(SignpostReporterAggregation);
    telemetryDisabledAggregation = v2->_telemetryDisabledAggregation;
    v2->_telemetryDisabledAggregation = v7;

    v9 = objc_alloc_init(SignpostReporterAggregation);
    telemetryNotReportedFailedStringAllowlistAggregation = v2->_telemetryNotReportedFailedStringAllowlistAggregation;
    v2->_telemetryNotReportedFailedStringAllowlistAggregation = v9;

    v11 = objc_alloc_init(SignpostReporterAggregation);
    telemetryNotReportedFailedSCFilterAggregation = v2->_telemetryNotReportedFailedSCFilterAggregation;
    v2->_telemetryNotReportedFailedSCFilterAggregation = v11;

    v13 = objc_alloc_init(SignpostReporterAggregation);
    telemetryNotReportedDurationThresholdAggregation = v2->_telemetryNotReportedDurationThresholdAggregation;
    v2->_telemetryNotReportedDurationThresholdAggregation = v13;

    v15 = objc_alloc_init(SignpostReporterAggregation);
    telemetryNotReportedClassNotSupportedAggregation = v2->_telemetryNotReportedClassNotSupportedAggregation;
    v2->_telemetryNotReportedClassNotSupportedAggregation = v15;

    v17 = objc_alloc_init(SignpostReporterAggregation);
    telemetryReportedEventsAggregation = v2->_telemetryReportedEventsAggregation;
    v2->_telemetryReportedEventsAggregation = v17;
  }

  return v2;
}

- (SignpostReporterObjectFilter)init
{
  v2 = [(SignpostReporterObjectFilter *)self _init];
  if (v2)
  {
    v2->_platform = sub_100001DD0();
    v3 = sub_100002450([(SignpostReporterObjectFilter *)v2 platform]);
    scnFilter = v2->_scnFilter;
    v2->_scnFilter = v3;
  }

  return v2;
}

- (SignpostReporterObjectFilter)initWithPlatform:(unint64_t)a3
{
  if (a3)
  {
    v4 = [(SignpostReporterObjectFilter *)self _init];
    v5 = v4;
    if (v4)
    {
      v4[1] = a3;
      v6 = sub_100002450([v4 platform]);
      v7 = v5[16];
      v5[16] = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)incrementTotalForObject:(id)a3 classification:(unint64_t)a4
{
  v13 = a3;
  v6 = [v13 subsystem];
  v7 = [v13 category];
  v8 = [(SignpostReporterObjectFilter *)self allInspectedSignpostObjectsAggregation];
  [v8 incrementSubsystem:v6 category:v7];

  v9 = 0;
  if (a4 > 2)
  {
    switch(a4)
    {
      case 3uLL:
        v10 = [(SignpostReporterObjectFilter *)self telemetryNotReportedDurationThresholdAggregation];
        break;
      case 4uLL:
        v10 = [(SignpostReporterObjectFilter *)self telemetryNotReportedFailedSCFilterAggregation];
        break;
      case 5uLL:
        v10 = [(SignpostReporterObjectFilter *)self telemetryNotReportedClassNotSupportedAggregation];
        break;
      default:
        goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (!a4)
  {
    v10 = [(SignpostReporterObjectFilter *)self telemetryDisabledAggregation];
LABEL_14:
    v11 = v10;
    v9 = 0;
    goto LABEL_15;
  }

  if (a4 != 1)
  {
    if (a4 != 2)
    {
      goto LABEL_16;
    }

    v10 = [(SignpostReporterObjectFilter *)self telemetryNotReportedFailedStringAllowlistAggregation];
    goto LABEL_14;
  }

  v11 = [(SignpostReporterObjectFilter *)self telemetryReportedAggregation];
  v9 = 1;
LABEL_15:
  [v11 incrementSubsystem:v6 category:v7];

LABEL_16:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v9)
    {
      ++self->_totalReportedAnimationCount;
    }

    else
    {
      ++self->_totalUnreportedAnimationCount;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v9)
      {
        ++self->_totalReportedIntervalCount;
      }

      else
      {
        ++self->_totalUnreportedIntervalCount;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v9)
        {
          ++self->_totalReportedEventCount;
          v12 = [(SignpostReporterObjectFilter *)self telemetryReportedEventsAggregation];
          [v12 incrementSubsystem:v6 category:v7];
        }

        else
        {
          ++self->_totalUnreportedEventCount;
        }
      }
    }
  }
}

@end