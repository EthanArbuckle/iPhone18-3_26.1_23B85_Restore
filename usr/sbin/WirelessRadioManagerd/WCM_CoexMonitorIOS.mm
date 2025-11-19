@interface WCM_CoexMonitorIOS
- (WCM_CoexMonitorIOS)init;
- (void)updateCoexCondition:(int)a3 inBand:(int)a4 state:(BOOL)a5;
- (void)updateCoexDurationCount:(double)a3;
- (void)updateCoexErrorFor:(int)a3 inBand:(int)a4;
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

- (void)updateCoexCondition:(int)a3 inBand:(int)a4 state:(BOOL)a5
{
  if (a3 < 4 || !a5)
  {
    if (a5)
    {
      if (!self->lteCoexStart[a3] || self->lteCoexConditionBand[a3] != a4)
      {
        v7 = a4;
        self->lteCoexStart[a3] = ADMonotonicTimeGetCurrent();
        ++self->lteCoexCount[a3];
        self->lteCoexConditionBand[a3] = v7;
        v8 = off_10023F4F8[a3];
        ADClientAddValueForScalarKey();
        v9 = off_10023F518[v7];

        ADClientAddValueForScalarKey();
      }
    }

    else
    {
      lteCoexStart = self->lteCoexStart;
      if (a3 == 4)
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

      else if (lteCoexStart[a3])
      {
        v13 = off_10023F558[a3];
        ADPushTimeIntervalForDistributionKeySinceStartTime();
        [(WCM_CoexMonitorIOS *)self updateCoexDurationCount:?];
        lteCoexStart[a3] = 0;
        self->lteCoexConditionBand[a3] = -1;
      }
    }
  }
}

- (void)updateCoexDurationCount:(double)a3
{
  if (a3 <= 5.0)
  {
    v3 = 0;
  }

  else if (a3 <= 30.0)
  {
    v3 = 1;
  }

  else if (a3 <= 120.0)
  {
    v3 = 2;
  }

  else if (a3 <= 300.0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
    if (a3 > 1800.0)
    {
      v3 = 5;
    }
  }

  ++self->lteCoexDurationsCount[v3];
  v4 = off_10023F578[v3];
  ADClientAddValueForScalarKey();
}

- (void)updateCoexErrorFor:(int)a3 inBand:(int)a4
{
  if (a3 <= 4)
  {
    if (a3 != 4)
    {
      ++self->lteCoexConditionErrors[a3];
      v7 = off_10023F5A8[a3];
      ADClientAddValueForScalarKey();
    }

    ++self->lteCoexBandErrors[a4];
    v8 = off_10023F5C8[a4];

    ADClientAddValueForScalarKey();
  }
}

@end