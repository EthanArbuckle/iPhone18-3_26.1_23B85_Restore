@interface ComponentControl
- (BOOL)shouldDoCPMSActions;
- (__CFString)copyFieldCurrentValueForIndex:(int)index;
- (__CFString)copyHeaderForIndex:(int)index;
- (unsigned)computePowerTarget;
- (void)defaultAction;
- (void)defaultCPMSAction;
- (void)refreshCPMSTGraphTelemetry;
- (void)resetCPMSMitigationState;
- (void)setCPMSMitigationState:(BOOL)state;
- (void)setMaxLoadingIndex:(unsigned int)index releaseIndex:(unsigned int)releaseIndex;
- (void)testLoadingIndexLevel;
- (void)updatePowerParameters:(__CFDictionary *)parameters;
@end

@implementation ComponentControl

- (void)testLoadingIndexLevel
{
  if (sub_100005130())
  {
    [(ComponentControl *)self refreshTGraphTelemetry];
    if ((byte_1000AB2F9 & 1) == 0)
    {
      [(ComponentControl *)self refreshCPMSTGraphTelemetry];
    }
  }

  [(ComponentControl *)self refreshFunctionalTelemetry];
  [(ComponentControl *)self updateSensorExchangeTelemetry];
  if (byte_1000A22A0 == 1 && (byte_1000AB2F9 & 1) == 0)
  {
    if ([(ComponentControl *)self shouldDoCPMSActions])
    {

      [(ComponentControl *)self defaultCPMSAction];
    }

    else
    {

      [(ComponentControl *)self defaultAction];
    }
  }
}

- (void)defaultAction
{
  v2 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100053AB8(v2);
  }
}

- (void)defaultCPMSAction
{
  computePowerTarget = [(ComponentControl *)self computePowerTarget];
  if (self->initialCPMSBudgetSent)
  {
    if (self->previousValue != self->maxLoadingIndex)
    {
      if (computePowerTarget != [(ComponentControl *)self powerTarget])
      {
        [(ComponentControl *)self setPowerTarget:computePowerTarget];
        if (byte_1000AB2F8 == 1)
        {
          v4 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            v6 = 138412802;
            nameofComponent = [(PidComponent *)self nameofComponent];
            v8 = 1024;
            powerTarget = [(ComponentControl *)self powerTarget];
            v10 = 2048;
            mitigationDetails = [(ComponentControl *)self mitigationDetails];
            _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Notice> DefaultCPMSAction for %@, set powerTarget:%u with details: %llu", &v6, 0x1Cu);
          }
        }

        [+[CPMSHelper sharedInstance](CPMSHelper addToCPMSMitigationArray:"addToCPMSMitigationArray:withDetails:forComponent:" withDetails:[(ComponentControl *)self powerTarget] forComponent:[(ComponentControl *)self mitigationDetails], [(PidComponent *)self mitigationType]];
      }

      self->maxLoadingIndex = self->previousValue;
    }
  }

  else
  {
    if (byte_1000AB2F8 == 1)
    {
      v5 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412802;
        nameofComponent = [(PidComponent *)self nameofComponent];
        v8 = 1024;
        powerTarget = computePowerTarget;
        v10 = 2048;
        mitigationDetails = [(ComponentControl *)self mitigationDetails];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> Initial CPMS budget sent for %@, set powerTarget:%u with details: %llu", &v6, 0x1Cu);
      }
    }

    [+[CPMSHelper sharedInstance](CPMSHelper addToCPMSMitigationArray:"addToCPMSMitigationArray:withDetails:forComponent:" withDetails:computePowerTarget forComponent:[(ComponentControl *)self mitigationDetails], [(PidComponent *)self mitigationType]];
    self->initialCPMSBudgetSent = 1;
  }
}

- (unsigned)computePowerTarget
{
  result = self->releaseRate;
  maxPower = self->_maxPower;
  v5 = self->_nominalPowerTarget - maxPower;
  if (v5 >= 1)
  {
    previousValue = self->previousValue;
    if (previousValue <= 0x64)
    {
      return previousValue * v5 / 0x64 + maxPower;
    }
  }

  return result;
}

- (void)refreshCPMSTGraphTelemetry
{
  if ([(ComponentControl *)self shouldDoCPMSActions])
  {
    v3 = +[CPMSHelper sharedInstance];
    mitigationType = [(PidComponent *)self mitigationType];

    [(CPMSHelper *)v3 requestCurrentPowerCallbackForComponent:mitigationType];
  }
}

- (void)setMaxLoadingIndex:(unsigned int)index releaseIndex:(unsigned int)releaseIndex
{
  if ((*(&self->super.controlEffort + 1) & 1) == 0)
  {
    self->currentLoadingIndex = index;
    self->previousValue = releaseIndex;
  }
}

- (BOOL)shouldDoCPMSActions
{
  isCPMSControlEnabled = [(ComponentControl *)self isCPMSControlEnabled];
  if (isCPMSControlEnabled)
  {

    LOBYTE(isCPMSControlEnabled) = [(ComponentControl *)self isCPMSControlActive];
  }

  return isCPMSControlEnabled;
}

- (void)setCPMSMitigationState:(BOOL)state
{
  if (!state)
  {
    [(ComponentControl *)self setIsCPMSControlEnabled:?];
LABEL_6:
    [(ComponentControl *)self resetCPMSMitigationState];
    return;
  }

  [(ComponentControl *)self setIsCPMSControlEnabled:1];
  [+[CPMSHelper sharedInstance](CPMSHelper updateCPMSClientState:"updateCPMSClientState:", [(PidComponent *)self mitigationType]];
  if (![+[CPMSHelper isCPMSSupportedClient:"isCPMSSupportedClient:"]
  {
    if (byte_1000AB2F8 == 1)
    {
      v5 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 67109120;
        mitigationType = [(PidComponent *)self mitigationType];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> mitigationType:%u is not a supported cpms client!", &v9, 8u);
      }
    }

    goto LABEL_6;
  }

  if (LOBYTE(self->_minPower) == 1)
  {
    nominalPowerTarget = self->_nominalPowerTarget;
  }

  else
  {
    self->_nominalPowerTarget = [+[CPMSHelper sharedInstance](CPMSHelper getMaxPowerForComponent:"getMaxPowerForComponent:", [(PidComponent *)self mitigationType]];
    self->_maxPower = [+[CPMSHelper sharedInstance](CPMSHelper getMinPowerForComponent:"getMinPowerForComponent:", [(PidComponent *)self mitigationType]];
    nominalPowerTarget = self->_nominalPowerTarget;
    self->releaseRate = nominalPowerTarget;
  }

  maxPower = self->_maxPower;
  if (!nominalPowerTarget || nominalPowerTarget < maxPower)
  {
    v8 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      v9 = 67109632;
      mitigationType = nominalPowerTarget;
      v11 = 1024;
      v12 = maxPower;
      v13 = 1024;
      mitigationType2 = [(PidComponent *)self mitigationType];
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "<Error> Invalid power range (max:%d min%d) for mitigationType:%u", &v9, 0x14u);
    }

    goto LABEL_6;
  }

  if (byte_1000AB2F8 == 1)
  {
    v7 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 67109120;
      mitigationType = [(PidComponent *)self mitigationType];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> Setting CPMS control Active for mitigationType:%u", &v9, 8u);
    }
  }

  [(ComponentControl *)self setIsCPMSControlActive:1];
}

- (void)updatePowerParameters:(__CFDictionary *)parameters
{
  if (parameters)
  {
    if (CFDictionaryContainsKey(parameters, @"maxThermalPower"))
    {
      LOBYTE(self->_minPower) = 1;
      sub_100002A20(parameters, @"maxPower", kCFNumberIntType, &self->releaseRate);
      sub_100002A20(parameters, @"maxThermalPower", kCFNumberIntType, &self->_nominalPowerTarget);
      sub_100002A20(parameters, @"minThermalPower", kCFNumberIntType, &self->_maxPower);
      if (byte_1000AB2F8 == 1)
      {
        v5 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          nameofComponent = [(PidComponent *)self nameofComponent];
          releaseRate = self->releaseRate;
          nominalPowerTarget = self->_nominalPowerTarget;
          maxPower = self->_maxPower;
          v10 = 138413058;
          v11 = nameofComponent;
          v12 = 1024;
          v13 = releaseRate;
          v14 = 1024;
          v15 = nominalPowerTarget;
          v16 = 1024;
          v17 = maxPower;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> Updated %@ power params with nominal:%d max: %d min: %d", &v10, 0x1Eu);
        }
      }
    }
  }
}

- (void)resetCPMSMitigationState
{
  if ((self->_minPower & 1) == 0)
  {
    self->_maxPower = 0;
    self->_nominalPowerTarget = 0;
  }

  [(ComponentControl *)self setInitialCPMSBudgetSent:0];

  [(ComponentControl *)self setIsCPMSControlActive:0];
}

- (__CFString)copyHeaderForIndex:(int)index
{
  if (index > 5)
  {
    return 0;
  }

  else
  {
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, off_100085CB8[index], self->super.nameofComponent);
  }
}

- (__CFString)copyFieldCurrentValueForIndex:(int)index
{
  if (index <= 2)
  {
    switch(index)
    {
      case 0:
        v3 = kCFAllocatorDefault;
        v4 = 72;
        goto LABEL_15;
      case 1:
        v3 = kCFAllocatorDefault;
        v4 = 76;
        goto LABEL_15;
      case 2:
        v3 = kCFAllocatorDefault;
        v4 = 84;
LABEL_15:
        isCPMSControlActive = *(&self->super.super.isa + v4);
        return CFStringCreateWithFormat(v3, 0, @"%d", isCPMSControlActive);
    }

    return 0;
  }

  if (index != 3)
  {
    if (index == 4)
    {
      v3 = kCFAllocatorDefault;
      v4 = 132;
      goto LABEL_15;
    }

    if (index == 5)
    {
      v3 = kCFAllocatorDefault;
      v4 = 136;
      goto LABEL_15;
    }

    return 0;
  }

  v3 = kCFAllocatorDefault;
  isCPMSControlActive = self->isCPMSControlActive;
  return CFStringCreateWithFormat(v3, 0, @"%d", isCPMSControlActive);
}

@end