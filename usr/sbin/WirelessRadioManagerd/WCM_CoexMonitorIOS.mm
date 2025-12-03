@interface WCM_CoexMonitorIOS
- (WCM_CoexMonitorIOS)init;
- (void)updateCoexCondition:(int)condition inBand:(int)band state:(BOOL)state;
- (void)updateCoexDurationCount:(double)count;
- (void)updateCoexErrorFor:(int)for inBand:(int)band;
@end

@implementation WCM_CoexMonitorIOS

- (WCM_CoexMonitorIOS)init
{
  if (ADClientIsEnabled())
  {
    v5.receiver = self;
    v5.super_class = WCM_CoexMonitorIOS;
    result = [(WCM_CoexMonitor *)&v5 init];
    for (i = 0; i != 4; ++i)
    {
      result->lteCoexStart[i] = 0;
      result->lteCoexConditionBand[i] = -1;
    }
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Aggd is not enabled"];
    return 0;
  }

  return result;
}

- (void)updateCoexCondition:(int)condition inBand:(int)band state:(BOOL)state
{
  if (condition < 4 || !state)
  {
    if (state)
    {
      if (!self->lteCoexStart[condition] || self->lteCoexConditionBand[condition] != band)
      {
        bandCopy = band;
        self->lteCoexStart[condition] = ADMonotonicTimeGetCurrent();
        ++self->lteCoexCount[condition];
        self->lteCoexConditionBand[condition] = bandCopy;
        v8 = off_10023F4F8[condition];
        ADClientAddValueForScalarKey();
        v9 = off_10023F518[bandCopy];

        ADClientAddValueForScalarKey();
      }
    }

    else
    {
      lteCoexStart = self->lteCoexStart;
      if (condition == 4)
      {
        for (i = 0; i != 4; ++i)
        {
          if (lteCoexStart[i])
          {
            v12 = off_10023F558[i];
            ADPushTimeIntervalForDistributionKeySinceStartTime();
            [(WCM_CoexMonitorIOS *)self updateCoexDurationCount:?];
            lteCoexStart[i] = 0;
            self->lteCoexConditionBand[i] = -1;
          }
        }
      }

      else if (lteCoexStart[condition])
      {
        v13 = off_10023F558[condition];
        ADPushTimeIntervalForDistributionKeySinceStartTime();
        [(WCM_CoexMonitorIOS *)self updateCoexDurationCount:?];
        lteCoexStart[condition] = 0;
        self->lteCoexConditionBand[condition] = -1;
      }
    }
  }
}

- (void)updateCoexDurationCount:(double)count
{
  if (count <= 5.0)
  {
    v3 = 0;
  }

  else if (count <= 30.0)
  {
    v3 = 1;
  }

  else if (count <= 120.0)
  {
    v3 = 2;
  }

  else if (count <= 300.0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
    if (count > 1800.0)
    {
      v3 = 5;
    }
  }

  ++self->lteCoexDurationsCount[v3];
  v4 = off_10023F578[v3];
  ADClientAddValueForScalarKey();
}

- (void)updateCoexErrorFor:(int)for inBand:(int)band
{
  if (for <= 4)
  {
    if (for != 4)
    {
      ++self->lteCoexConditionErrors[for];
      v7 = off_10023F5A8[for];
      ADClientAddValueForScalarKey();
    }

    ++self->lteCoexBandErrors[band];
    v8 = off_10023F5C8[band];

    ADClientAddValueForScalarKey();
  }
}

@end