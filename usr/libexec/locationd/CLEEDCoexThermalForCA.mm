@interface CLEEDCoexThermalForCA
- (CLEEDCoexThermalForCA)initWithCoexMetricDict:(id)a3;
@end

@implementation CLEEDCoexThermalForCA

- (CLEEDCoexThermalForCA)initWithCoexMetricDict:(id)a3
{
  v14.receiver = self;
  v14.super_class = CLEEDCoexThermalForCA;
  v4 = [(CLEEDCoexThermalForCA *)&v14 init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      [objc_msgSend(a3 valueForKey:{@"thermalNominalDuration", "doubleValue"}];
      v5->_thermalNominalDuration = v6;
      [objc_msgSend(a3 valueForKey:{@"thermalLightDuration", "doubleValue"}];
      v5->_thermalLightDuration = v7;
      [objc_msgSend(a3 valueForKey:{@"thermalModerateDuration", "doubleValue"}];
      v5->_thermalModerateDuration = v8;
      [objc_msgSend(a3 valueForKey:{@"thermalHeavyDuration", "doubleValue"}];
      v5->_thermalHeavyDuration = v9;
      [objc_msgSend(a3 valueForKey:{@"thermalTrappingDuration", "doubleValue"}];
      v5->_thermalTrappingDuration = v10;
      [objc_msgSend(a3 valueForKey:{@"thermalSleepingDuration", "doubleValue"}];
      v5->_thermalSleepingDuration = v11;
      v5->_thermalLevelAtStartOfCall = [objc_msgSend(a3 valueForKey:{@"thermalLevelAtStartOfCall", "intValue"}];
      v5->_maxThermalLevelInCall = [objc_msgSend(a3 valueForKey:{@"maxThermalLevelInCall", "intValue"}];
      v5->_thermalLevelAtEndOfCall = [objc_msgSend(a3 valueForKey:{@"thermalLevelAtEndOfCall", "intValue"}];
      [objc_msgSend(a3 valueForKey:{@"currentThermalLevelStartTime", "doubleValue"}];
      v5->_currentThermalLevelStartTime = v12;
    }

    else
    {
      *(v4 + 1) = 0;
      *(v4 + 4) = 0;
      *(v4 + 24) = 0u;
      *(v4 + 40) = 0u;
      *(v4 + 56) = 0u;
      *(v4 + 9) = 0;
    }
  }

  return v5;
}

@end