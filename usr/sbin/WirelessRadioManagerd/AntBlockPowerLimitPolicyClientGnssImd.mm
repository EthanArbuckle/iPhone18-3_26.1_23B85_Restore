@interface AntBlockPowerLimitPolicyClientGnssImd
- (AntBlockPowerLimitPolicyClientGnssImd)init;
- (void)addPolicy:(id)a3;
- (void)extractPolicy:(id)a3;
- (void)setParameter:(BOOL)a3 lqmThreshold:(unsigned int)a4 MitigationTimer:(unsigned int)a5 ProtectGnssLowPriority:(BOOL)a6 L5TunerLqmThreshod:(unsigned int)a7;
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

- (void)setParameter:(BOOL)a3 lqmThreshold:(unsigned int)a4 MitigationTimer:(unsigned int)a5 ProtectGnssLowPriority:(BOOL)a6 L5TunerLqmThreshod:(unsigned int)a7
{
  self->_mDenyVoiceProtect = a3;
  self->_mL5TunerLqmThreshold = a7;
  self->_mMitigationTimer_ms = a5;
  self->_mProtectGnssLowPriority = a6;
  self->_mLqmThreshold = a4;
}

- (void)addPolicy:(id)a3
{
  if (a3)
  {
    mPolicy = self->_mPolicy;
    if (mPolicy)
    {
      [(NSMutableArray *)mPolicy addObject:?];
    }
  }
}

- (void)extractPolicy:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"Deny_Voice_Protect"];
    v36 = [v6 BOOLValue];
    v7 = [v5 objectForKey:@"LQM_Threshold"];
    v8 = [v7 integerValue];
    v9 = [v5 objectForKey:@"Mitigation_Timer_ms"];
    v10 = [v9 integerValue];
    v11 = [v5 objectForKey:@"Protect_GNSS_Low_Priority"];
    v12 = [v11 BOOLValue];
    v13 = [v5 objectForKey:@"L5_Tuner_LQM_Threshold"];
    v31 = self;
    -[AntBlockPowerLimitPolicyClientGnssImd setParameter:lqmThreshold:MitigationTimer:ProtectGnssLowPriority:L5TunerLqmThreshod:](self, "setParameter:lqmThreshold:MitigationTimer:ProtectGnssLowPriority:L5TunerLqmThreshod:", v36, v8, v10, v12, [v13 integerValue]);

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
            v34 = [v37 BOOLValue];
            v35 = [v15 objectForKey:@"GNSS_IMD_Type"];
            v33 = [v35 integerValue];
            v17 = [v15 objectForKey:@"GNSS_L5_Tuner_Allowed"];
            v18 = [v17 BOOLValue];
            v19 = [v15 objectForKey:@"GNSS_IMD_Parallel_Mitigation_Allowed"];
            v20 = [v19 BOOLValue];
            v21 = [v15 objectForKey:@"GNSS_Victim_Center_Frequency_KHz"];
            v22 = [v21 integerValue];
            v23 = [v15 objectForKey:@"GNSS_Victim_Bandwidth_KHz"];
            -[AntBlockPowerLimitGnssImdBasePolicy setParameter:ImdType:GnssL5TunerAllowed:ParallelMitigationAllowed:GnssVictimFreq_KHz:GnssVictimBw_KHz:](v16, "setParameter:ImdType:GnssL5TunerAllowed:ParallelMitigationAllowed:GnssVictimFreq_KHz:GnssVictimBw_KHz:", v34, v33, v18, v20, v22, [v23 integerValue]);

            v24 = [v15 objectForKey:@"Cell_Band_1"];
            v25 = [v15 objectForKey:@"Cell_Band_2"];
            v26 = objc_alloc_init(AntBlockPowerLimitGnssImdAggressorPolicy);
            v27 = objc_alloc_init(AntBlockPowerLimitGnssImdAggressorPolicy);
            [(AntBlockPowerLimitGnssImdAggressorPolicy *)v26 extractPolicy:v24];
            [(AntBlockPowerLimitGnssImdAggressorPolicy *)v27 extractPolicy:v25];
            [(AntBlockPowerLimitGnssImdBasePolicy *)v16 setCellAggressor1:v26];
            [(AntBlockPowerLimitGnssImdBasePolicy *)v16 setCellAggressor2:v27];
            [(AntBlockPowerLimitPolicyClientGnssImd *)v31 addPolicy:v16];

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