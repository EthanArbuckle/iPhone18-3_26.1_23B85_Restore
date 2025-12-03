@interface AntBlockPowerLimitPolicyClientGnssImd
- (AntBlockPowerLimitPolicyClientGnssImd)init;
- (void)addPolicy:(id)policy;
- (void)extractPolicy:(id)policy;
- (void)setParameter:(BOOL)parameter lqmThreshold:(unsigned int)threshold MitigationTimer:(unsigned int)timer ProtectGnssLowPriority:(BOOL)priority L5TunerLqmThreshod:(unsigned int)threshod;
@end

@implementation AntBlockPowerLimitPolicyClientGnssImd

- (AntBlockPowerLimitPolicyClientGnssImd)init
{
  v6.receiver = self;
  v6.super_class = AntBlockPowerLimitPolicyClientGnssImd;
  v2 = [(AntBlockPowerLimitPolicyClientGnssImd *)&v6 init];
  v2->_mDenyVoiceProtect = 0;
  v2->_mLqmThreshold = 0;
  v3 = objc_alloc_init(NSMutableArray);
  mPolicy = v2->_mPolicy;
  v2->_mPolicy = v3;

  v2->_mMitigationTimer_ms = 0;
  v2->_mProtectGnssLowPriority = 0;
  return v2;
}

- (void)setParameter:(BOOL)parameter lqmThreshold:(unsigned int)threshold MitigationTimer:(unsigned int)timer ProtectGnssLowPriority:(BOOL)priority L5TunerLqmThreshod:(unsigned int)threshod
{
  self->_mDenyVoiceProtect = parameter;
  self->_mL5TunerLqmThreshold = threshod;
  self->_mMitigationTimer_ms = timer;
  self->_mProtectGnssLowPriority = priority;
  self->_mLqmThreshold = threshold;
}

- (void)addPolicy:(id)policy
{
  if (policy)
  {
    mPolicy = self->_mPolicy;
    if (mPolicy)
    {
      [(NSMutableArray *)mPolicy addObject:?];
    }
  }
}

- (void)extractPolicy:(id)policy
{
  policyCopy = policy;
  v5 = policyCopy;
  if (policyCopy)
  {
    v6 = [policyCopy objectForKey:@"Deny_Voice_Protect"];
    bOOLValue = [v6 BOOLValue];
    v7 = [v5 objectForKey:@"LQM_Threshold"];
    integerValue = [v7 integerValue];
    v9 = [v5 objectForKey:@"Mitigation_Timer_ms"];
    integerValue2 = [v9 integerValue];
    v11 = [v5 objectForKey:@"Protect_GNSS_Low_Priority"];
    bOOLValue2 = [v11 BOOLValue];
    v13 = [v5 objectForKey:@"L5_Tuner_LQM_Threshold"];
    selfCopy = self;
    -[AntBlockPowerLimitPolicyClientGnssImd setParameter:lqmThreshold:MitigationTimer:ProtectGnssLowPriority:L5TunerLqmThreshod:](self, "setParameter:lqmThreshold:MitigationTimer:ProtectGnssLowPriority:L5TunerLqmThreshod:", bOOLValue, integerValue, integerValue2, bOOLValue2, [v13 integerValue]);

    v28 = v5;
    obj = [v5 objectForKey:@"Policy"];
    if (obj)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v32 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v32)
      {
        v30 = *v39;
        do
        {
          v14 = 0;
          do
          {
            if (*v39 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v38 + 1) + 8 * v14);
            v16 = objc_alloc_init(AntBlockPowerLimitGnssImdBasePolicy);
            v37 = [v15 objectForKey:@"Enable"];
            bOOLValue3 = [v37 BOOLValue];
            v35 = [v15 objectForKey:@"GNSS_IMD_Type"];
            integerValue3 = [v35 integerValue];
            v17 = [v15 objectForKey:@"GNSS_L5_Tuner_Allowed"];
            bOOLValue4 = [v17 BOOLValue];
            v19 = [v15 objectForKey:@"GNSS_IMD_Parallel_Mitigation_Allowed"];
            bOOLValue5 = [v19 BOOLValue];
            v21 = [v15 objectForKey:@"GNSS_Victim_Center_Frequency_KHz"];
            integerValue4 = [v21 integerValue];
            v23 = [v15 objectForKey:@"GNSS_Victim_Bandwidth_KHz"];
            -[AntBlockPowerLimitGnssImdBasePolicy setParameter:ImdType:GnssL5TunerAllowed:ParallelMitigationAllowed:GnssVictimFreq_KHz:GnssVictimBw_KHz:](v16, "setParameter:ImdType:GnssL5TunerAllowed:ParallelMitigationAllowed:GnssVictimFreq_KHz:GnssVictimBw_KHz:", bOOLValue3, integerValue3, bOOLValue4, bOOLValue5, integerValue4, [v23 integerValue]);

            v24 = [v15 objectForKey:@"Cell_Band_1"];
            v25 = [v15 objectForKey:@"Cell_Band_2"];
            v26 = objc_alloc_init(AntBlockPowerLimitGnssImdAggressorPolicy);
            v27 = objc_alloc_init(AntBlockPowerLimitGnssImdAggressorPolicy);
            [(AntBlockPowerLimitGnssImdAggressorPolicy *)v26 extractPolicy:v24];
            [(AntBlockPowerLimitGnssImdAggressorPolicy *)v27 extractPolicy:v25];
            [(AntBlockPowerLimitGnssImdBasePolicy *)v16 setCellAggressor1:v26];
            [(AntBlockPowerLimitGnssImdBasePolicy *)v16 setCellAggressor2:v27];
            [(AntBlockPowerLimitPolicyClientGnssImd *)selfCopy addPolicy:v16];

            v14 = v14 + 1;
          }

          while (v32 != v14);
          v32 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v32);
      }
    }

    v5 = v28;
  }
}

@end