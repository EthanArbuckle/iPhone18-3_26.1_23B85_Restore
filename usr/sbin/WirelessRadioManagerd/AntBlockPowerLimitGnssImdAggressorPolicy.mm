@interface AntBlockPowerLimitGnssImdAggressorPolicy
- (AntBlockPowerLimitGnssImdAggressorPolicy)init;
- (void)addPolicy:(id)policy;
- (void)extractPolicy:(id)policy;
- (void)setParameter:(unsigned int)parameter CellularBand:(unsigned int)band CellFreq:(unsigned int)freq CellBW:(unsigned int)w;
@end

@implementation AntBlockPowerLimitGnssImdAggressorPolicy

- (AntBlockPowerLimitGnssImdAggressorPolicy)init
{
  v6.receiver = self;
  v6.super_class = AntBlockPowerLimitGnssImdAggressorPolicy;
  v2 = [(AntBlockPowerLimitGnssImdAggressorPolicy *)&v6 init];
  *&v2->_mCellularCoexTech = 0;
  *&v2->_mCellularFrequencyKHz = 0;
  v3 = objc_alloc_init(NSMutableArray);
  mBandPolicy = v2->_mBandPolicy;
  v2->_mBandPolicy = v3;

  return v2;
}

- (void)setParameter:(unsigned int)parameter CellularBand:(unsigned int)band CellFreq:(unsigned int)freq CellBW:(unsigned int)w
{
  self->_mCellularCoexTech = parameter;
  self->_mCellularBand = band;
  self->_mCellularFrequencyKHz = freq;
  self->_mCellularBandwidthKHz = w;
}

- (void)extractPolicy:(id)policy
{
  policyCopy = policy;
  v5 = policyCopy;
  if (policyCopy)
  {
    v6 = [policyCopy objectForKey:@"Coex_Tech"];
    integerValue = [v6 integerValue];
    v8 = [v5 objectForKey:@"Cellular_Band"];
    integerValue2 = [v8 integerValue];
    v10 = [v5 objectForKey:@"Cellular_Center_Frequency_KHz"];
    integerValue3 = [v10 integerValue];
    v12 = [v5 objectForKey:@"Cellular_Bandwidth_KHz"];
    -[AntBlockPowerLimitGnssImdAggressorPolicy setParameter:CellularBand:CellFreq:CellBW:](self, "setParameter:CellularBand:CellFreq:CellBW:", integerValue, integerValue2, integerValue3, [v12 integerValue]);

    v28 = v5;
    obj = [v5 objectForKey:@"Band_Policy"];
    if (obj)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v13 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v13)
      {
        v14 = v13;
        v30 = *v32;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            selfCopy = self;
            if (*v32 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v31 + 1) + 8 * i);
            v18 = objc_alloc_init(AntBlockPowerLimitGnssImdBandPolicy);
            v19 = [v17 objectForKey:@"Cellular_TX_Power_Cap"];
            [v19 doubleValue];
            v21 = vcvtd_n_s64_f64(v20, 4uLL);

            if (v21 <= 1600)
            {
              v22 = v21;
            }

            else
            {
              v22 = 0x7FFFLL;
            }

            v23 = [v17 objectForKey:@"Enable"];
            bOOLValue = [v23 BOOLValue];
            v25 = [v17 objectForKey:@"Cellular_Ant_Bitmap"];
            integerValue4 = [v25 integerValue];
            v27 = [v17 objectForKey:@"Mitigation_Type"];
            -[AntBlockPowerLimitGnssImdBandPolicy setParameterEnable:CellularAntBitmap:MitigationType:CellularTxPowerCap:](v18, "setParameterEnable:CellularAntBitmap:MitigationType:CellularTxPowerCap:", bOOLValue, integerValue4, [v27 integerValue], v22);

            self = selfCopy;
            [(AntBlockPowerLimitGnssImdAggressorPolicy *)selfCopy addPolicy:v18];
          }

          v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v14);
      }
    }

    v5 = v28;
  }
}

- (void)addPolicy:(id)policy
{
  if (policy)
  {
    mBandPolicy = self->_mBandPolicy;
    if (mBandPolicy)
    {
      [(NSMutableArray *)mBandPolicy addObject:?];
    }
  }
}

@end