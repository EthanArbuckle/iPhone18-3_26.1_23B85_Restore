@interface AntBlockPowerLimitGnssImdAggressorPolicy
- (AntBlockPowerLimitGnssImdAggressorPolicy)init;
- (void)addPolicy:(id)a3;
- (void)extractPolicy:(id)a3;
- (void)setParameter:(unsigned int)a3 CellularBand:(unsigned int)a4 CellFreq:(unsigned int)a5 CellBW:(unsigned int)a6;
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

- (void)setParameter:(unsigned int)a3 CellularBand:(unsigned int)a4 CellFreq:(unsigned int)a5 CellBW:(unsigned int)a6
{
  self->_mCellularCoexTech = a3;
  self->_mCellularBand = a4;
  self->_mCellularFrequencyKHz = a5;
  self->_mCellularBandwidthKHz = a6;
}

- (void)extractPolicy:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"Coex_Tech"];
    v7 = [v6 integerValue];
    v8 = [v5 objectForKey:@"Cellular_Band"];
    v9 = [v8 integerValue];
    v10 = [v5 objectForKey:@"Cellular_Center_Frequency_KHz"];
    v11 = [v10 integerValue];
    v12 = [v5 objectForKey:@"Cellular_Bandwidth_KHz"];
    -[AntBlockPowerLimitGnssImdAggressorPolicy setParameter:CellularBand:CellFreq:CellBW:](self, "setParameter:CellularBand:CellFreq:CellBW:", v7, v9, v11, [v12 integerValue]);

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
            v16 = self;
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
            v24 = [v23 BOOLValue];
            v25 = [v17 objectForKey:@"Cellular_Ant_Bitmap"];
            v26 = [v25 integerValue];
            v27 = [v17 objectForKey:@"Mitigation_Type"];
            -[AntBlockPowerLimitGnssImdBandPolicy setParameterEnable:CellularAntBitmap:MitigationType:CellularTxPowerCap:](v18, "setParameterEnable:CellularAntBitmap:MitigationType:CellularTxPowerCap:", v24, v26, [v27 integerValue], v22);

            self = v16;
            [(AntBlockPowerLimitGnssImdAggressorPolicy *)v16 addPolicy:v18];
          }

          v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v14);
      }
    }

    v5 = v28;
  }
}

- (void)addPolicy:(id)a3
{
  if (a3)
  {
    mBandPolicy = self->_mBandPolicy;
    if (mBandPolicy)
    {
      [(NSMutableArray *)mBandPolicy addObject:?];
    }
  }
}

@end