@interface SignpostReporterObjectFilter
- (BOOL)_objectPassesStringFilter:(id)filter;
- (BOOL)shouldReportSignpostObject:(id)object classificationOut:(unint64_t *)out;
- (SignpostReporterObjectFilter)init;
- (SignpostReporterObjectFilter)initWithPlatform:(unint64_t)platform;
- (id)_init;
- (void)incrementTotalForObject:(id)object classification:(unint64_t)classification;
@end

@implementation SignpostReporterObjectFilter

- (BOOL)_objectPassesStringFilter:(id)filter
{
  filterCopy = filter;
  if ([(SignpostReporterObjectFilter *)self platform]!= 1)
  {
    goto LABEL_5;
  }

  subsystem = [filterCopy subsystem];
  category = [filterCopy category];
  name = [filterCopy name];
  v8 = IsPerfLoggingInterval();

  if (v8)
  {
    string1Value = [filterCopy string1Value];
    string2Value = [filterCopy string2Value];
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

  string1Name = [filterCopy string1Name];

  if (string1Name)
  {
    v14 = v12;
  }

  else
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0 && (sub_10000325C(filterCopy, [(SignpostReporterObjectFilter *)self platform]) & 1) == 0)
  {
    string1Value2 = [filterCopy string1Value];
    [(SignpostReporterObjectFilter *)self platform];
    v16 = StringPassesSignpostReporterStringAllowlist();

    if (!v16)
    {
LABEL_21:
      LOBYTE(v20) = 0;
      goto LABEL_20;
    }
  }

  string2Name = [filterCopy string2Name];

  if (string2Name)
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

  if (sub_1000035F0(filterCopy))
  {
    goto LABEL_19;
  }

  string2Value2 = [filterCopy string2Value];
  [(SignpostReporterObjectFilter *)self platform];
  v20 = StringPassesSignpostReporterStringAllowlist();

  if (v20)
  {
    goto LABEL_19;
  }

LABEL_20:

  return v20;
}

- (BOOL)shouldReportSignpostObject:(id)object classificationOut:(unint64_t *)out
{
  objectCopy = object;
  if ([objectCopy canGenerateCoreAnalyticsPayload])
  {
    if ([objectCopy telemetryEnabled])
    {
      [objectCopy durationSeconds];
      if (v7 >= 0.0)
      {
        if ([(SignpostReporterObjectFilter *)self _objectPassesStringFilter:objectCopy])
        {
          scnFilter = [(SignpostReporterObjectFilter *)self scnFilter];
          if (scnFilter)
          {
            v12 = scnFilter;
            scnFilter2 = [(SignpostReporterObjectFilter *)self scnFilter];
            v8 = [scnFilter2 shouldReportObject:objectCopy];

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

  if (out)
  {
    *out = v9;
  }

  [(SignpostReporterObjectFilter *)self incrementTotalForObject:objectCopy classification:v9];

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
  _init = [(SignpostReporterObjectFilter *)self _init];
  if (_init)
  {
    _init->_platform = sub_100001DD0();
    v3 = sub_100002450([(SignpostReporterObjectFilter *)_init platform]);
    scnFilter = _init->_scnFilter;
    _init->_scnFilter = v3;
  }

  return _init;
}

- (SignpostReporterObjectFilter)initWithPlatform:(unint64_t)platform
{
  if (platform)
  {
    _init = [(SignpostReporterObjectFilter *)self _init];
    v5 = _init;
    if (_init)
    {
      _init[1] = platform;
      v6 = sub_100002450([_init platform]);
      v7 = v5[16];
      v5[16] = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)incrementTotalForObject:(id)object classification:(unint64_t)classification
{
  objectCopy = object;
  subsystem = [objectCopy subsystem];
  category = [objectCopy category];
  allInspectedSignpostObjectsAggregation = [(SignpostReporterObjectFilter *)self allInspectedSignpostObjectsAggregation];
  [allInspectedSignpostObjectsAggregation incrementSubsystem:subsystem category:category];

  v9 = 0;
  if (classification > 2)
  {
    switch(classification)
    {
      case 3uLL:
        telemetryNotReportedDurationThresholdAggregation = [(SignpostReporterObjectFilter *)self telemetryNotReportedDurationThresholdAggregation];
        break;
      case 4uLL:
        telemetryNotReportedDurationThresholdAggregation = [(SignpostReporterObjectFilter *)self telemetryNotReportedFailedSCFilterAggregation];
        break;
      case 5uLL:
        telemetryNotReportedDurationThresholdAggregation = [(SignpostReporterObjectFilter *)self telemetryNotReportedClassNotSupportedAggregation];
        break;
      default:
        goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (!classification)
  {
    telemetryNotReportedDurationThresholdAggregation = [(SignpostReporterObjectFilter *)self telemetryDisabledAggregation];
LABEL_14:
    telemetryReportedAggregation = telemetryNotReportedDurationThresholdAggregation;
    v9 = 0;
    goto LABEL_15;
  }

  if (classification != 1)
  {
    if (classification != 2)
    {
      goto LABEL_16;
    }

    telemetryNotReportedDurationThresholdAggregation = [(SignpostReporterObjectFilter *)self telemetryNotReportedFailedStringAllowlistAggregation];
    goto LABEL_14;
  }

  telemetryReportedAggregation = [(SignpostReporterObjectFilter *)self telemetryReportedAggregation];
  v9 = 1;
LABEL_15:
  [telemetryReportedAggregation incrementSubsystem:subsystem category:category];

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
          telemetryReportedEventsAggregation = [(SignpostReporterObjectFilter *)self telemetryReportedEventsAggregation];
          [telemetryReportedEventsAggregation incrementSubsystem:subsystem category:category];
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