@interface OTAParamRC
- (BOOL)isEqual:(id)a3;
- (float)agingCoeffForR0AtIndex:(unint64_t)a3;
- (float)agingCoeffForR0TemperatureCoeffAtIndex:(unint64_t)a3;
- (float)agingCoeffForR1AtIndex:(unint64_t)a3;
- (float)agingCoeffForR1TemperatureCoeffAtIndex:(unint64_t)a3;
- (float)agingCoeffForR2AtIndex:(unint64_t)a3;
- (float)agingCoeffForR2TemperatureCoeffAtIndex:(unint64_t)a3;
- (float)agingCoeffForR3AtIndex:(unint64_t)a3;
- (float)agingCoeffForR3TemperatureCoeffAtIndex:(unint64_t)a3;
- (float)agingCoeffForRCFreq1AtIndex:(unint64_t)a3;
- (float)agingCoeffForRCFreq1TemperatureCoeffAtIndex:(unint64_t)a3;
- (float)agingCoeffForRCFreq2AtIndex:(unint64_t)a3;
- (float)agingCoeffForRCFreq2TemperatureCoeffAtIndex:(unint64_t)a3;
- (float)agingCoeffForRCFreq3AtIndex:(unint64_t)a3;
- (float)agingCoeffForRCFreq3TemperatureCoeffAtIndex:(unint64_t)a3;
- (float)agingCoeffForRCFreq4AtIndex:(unint64_t)a3;
- (float)agingCoeffForRCFreq4TemperatureCoeffAtIndex:(unint64_t)a3;
- (float)agingCoeffForRdcAtIndex:(unint64_t)a3;
- (float)agingCoeffForRdcTemperatureCoeffAtIndex:(unint64_t)a3;
- (float)baselineRdcAtIndex:(unint64_t)a3;
- (float)coeffSOCAtIndex:(unint64_t)a3;
- (float)coeffVAtIndex:(unint64_t)a3;
- (float)gridOCVAtIndex:(unint64_t)a3;
- (float)gridWRdcRatioAtIndex:(unint64_t)a3;
- (float)qmaxAtIndex:(unint64_t)a3;
- (float)slopeForR0ExtrapAtIndex:(unint64_t)a3;
- (float)slopeForR1ExtrapAtIndex:(unint64_t)a3;
- (float)slopeForR2ExtrapAtIndex:(unint64_t)a3;
- (float)slopeForR3ExtrapAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMLBConfig:(id)a3;
- (int)mLBConfig;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasMLBConfig:(BOOL)a3;
- (void)setHasMaxRdcR25Ratio:(BOOL)a3;
- (void)setHasMaxRdcRatio:(BOOL)a3;
- (void)setHasMaxRdcRatioR2Extrap:(BOOL)a3;
- (void)setHasWRdcRatioThresh:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation OTAParamRC

- (void)dealloc
{
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = OTAParamRC;
  [(OTAParamRC *)&v3 dealloc];
}

- (float)agingCoeffForR0AtIndex:(unint64_t)a3
{
  p_agingCoeffForR0s = &self->_agingCoeffForR0s;
  count = self->_agingCoeffForR0s.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForR0s->list[a3];
}

- (float)agingCoeffForR0TemperatureCoeffAtIndex:(unint64_t)a3
{
  p_agingCoeffForR0TemperatureCoeffs = &self->_agingCoeffForR0TemperatureCoeffs;
  count = self->_agingCoeffForR0TemperatureCoeffs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForR0TemperatureCoeffs->list[a3];
}

- (float)agingCoeffForR1AtIndex:(unint64_t)a3
{
  p_agingCoeffForR1s = &self->_agingCoeffForR1s;
  count = self->_agingCoeffForR1s.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForR1s->list[a3];
}

- (float)agingCoeffForR1TemperatureCoeffAtIndex:(unint64_t)a3
{
  p_agingCoeffForR1TemperatureCoeffs = &self->_agingCoeffForR1TemperatureCoeffs;
  count = self->_agingCoeffForR1TemperatureCoeffs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForR1TemperatureCoeffs->list[a3];
}

- (float)agingCoeffForR2AtIndex:(unint64_t)a3
{
  p_agingCoeffForR2s = &self->_agingCoeffForR2s;
  count = self->_agingCoeffForR2s.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForR2s->list[a3];
}

- (float)agingCoeffForR2TemperatureCoeffAtIndex:(unint64_t)a3
{
  p_agingCoeffForR2TemperatureCoeffs = &self->_agingCoeffForR2TemperatureCoeffs;
  count = self->_agingCoeffForR2TemperatureCoeffs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForR2TemperatureCoeffs->list[a3];
}

- (float)baselineRdcAtIndex:(unint64_t)a3
{
  p_baselineRdcs = &self->_baselineRdcs;
  count = self->_baselineRdcs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_baselineRdcs->list[a3];
}

- (float)gridOCVAtIndex:(unint64_t)a3
{
  p_gridOCVs = &self->_gridOCVs;
  count = self->_gridOCVs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_gridOCVs->list[a3];
}

- (void)setHasMaxRdcRatio:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMaxRdcRatioR2Extrap:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (float)slopeForR0ExtrapAtIndex:(unint64_t)a3
{
  p_slopeForR0Extraps = &self->_slopeForR0Extraps;
  count = self->_slopeForR0Extraps.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_slopeForR0Extraps->list[a3];
}

- (float)slopeForR1ExtrapAtIndex:(unint64_t)a3
{
  p_slopeForR1Extraps = &self->_slopeForR1Extraps;
  count = self->_slopeForR1Extraps.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_slopeForR1Extraps->list[a3];
}

- (float)slopeForR2ExtrapAtIndex:(unint64_t)a3
{
  p_slopeForR2Extraps = &self->_slopeForR2Extraps;
  count = self->_slopeForR2Extraps.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_slopeForR2Extraps->list[a3];
}

- (float)slopeForR3ExtrapAtIndex:(unint64_t)a3
{
  p_slopeForR3Extraps = &self->_slopeForR3Extraps;
  count = self->_slopeForR3Extraps.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_slopeForR3Extraps->list[a3];
}

- (float)agingCoeffForR3AtIndex:(unint64_t)a3
{
  p_agingCoeffForR3s = &self->_agingCoeffForR3s;
  count = self->_agingCoeffForR3s.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForR3s->list[a3];
}

- (float)agingCoeffForR3TemperatureCoeffAtIndex:(unint64_t)a3
{
  p_agingCoeffForR3TemperatureCoeffs = &self->_agingCoeffForR3TemperatureCoeffs;
  count = self->_agingCoeffForR3TemperatureCoeffs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForR3TemperatureCoeffs->list[a3];
}

- (float)agingCoeffForRCFreq1AtIndex:(unint64_t)a3
{
  p_agingCoeffForRCFreq1s = &self->_agingCoeffForRCFreq1s;
  count = self->_agingCoeffForRCFreq1s.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForRCFreq1s->list[a3];
}

- (float)agingCoeffForRCFreq2AtIndex:(unint64_t)a3
{
  p_agingCoeffForRCFreq2s = &self->_agingCoeffForRCFreq2s;
  count = self->_agingCoeffForRCFreq2s.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForRCFreq2s->list[a3];
}

- (float)agingCoeffForRCFreq3AtIndex:(unint64_t)a3
{
  p_agingCoeffForRCFreq3s = &self->_agingCoeffForRCFreq3s;
  count = self->_agingCoeffForRCFreq3s.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForRCFreq3s->list[a3];
}

- (float)agingCoeffForRCFreq4AtIndex:(unint64_t)a3
{
  p_agingCoeffForRCFreq4s = &self->_agingCoeffForRCFreq4s;
  count = self->_agingCoeffForRCFreq4s.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForRCFreq4s->list[a3];
}

- (float)agingCoeffForRCFreq1TemperatureCoeffAtIndex:(unint64_t)a3
{
  p_agingCoeffForRCFreq1TemperatureCoeffs = &self->_agingCoeffForRCFreq1TemperatureCoeffs;
  count = self->_agingCoeffForRCFreq1TemperatureCoeffs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForRCFreq1TemperatureCoeffs->list[a3];
}

- (float)agingCoeffForRCFreq2TemperatureCoeffAtIndex:(unint64_t)a3
{
  p_agingCoeffForRCFreq2TemperatureCoeffs = &self->_agingCoeffForRCFreq2TemperatureCoeffs;
  count = self->_agingCoeffForRCFreq2TemperatureCoeffs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForRCFreq2TemperatureCoeffs->list[a3];
}

- (float)agingCoeffForRCFreq3TemperatureCoeffAtIndex:(unint64_t)a3
{
  p_agingCoeffForRCFreq3TemperatureCoeffs = &self->_agingCoeffForRCFreq3TemperatureCoeffs;
  count = self->_agingCoeffForRCFreq3TemperatureCoeffs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForRCFreq3TemperatureCoeffs->list[a3];
}

- (float)agingCoeffForRCFreq4TemperatureCoeffAtIndex:(unint64_t)a3
{
  p_agingCoeffForRCFreq4TemperatureCoeffs = &self->_agingCoeffForRCFreq4TemperatureCoeffs;
  count = self->_agingCoeffForRCFreq4TemperatureCoeffs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForRCFreq4TemperatureCoeffs->list[a3];
}

- (int)mLBConfig
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_mLBConfig;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMLBConfig:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsMLBConfig:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"kPPMRegularMLB"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"kPPMNorthSouthSplitMLB"];
  }

  return v4;
}

- (void)setHasWRdcRatioThresh:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (float)gridWRdcRatioAtIndex:(unint64_t)a3
{
  p_gridWRdcRatios = &self->_gridWRdcRatios;
  count = self->_gridWRdcRatios.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_gridWRdcRatios->list[a3];
}

- (float)coeffSOCAtIndex:(unint64_t)a3
{
  p_coeffSOCs = &self->_coeffSOCs;
  count = self->_coeffSOCs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_coeffSOCs->list[a3];
}

- (float)coeffVAtIndex:(unint64_t)a3
{
  p_coeffVs = &self->_coeffVs;
  count = self->_coeffVs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_coeffVs->list[a3];
}

- (float)agingCoeffForRdcAtIndex:(unint64_t)a3
{
  p_agingCoeffForRdcs = &self->_agingCoeffForRdcs;
  count = self->_agingCoeffForRdcs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForRdcs->list[a3];
}

- (float)agingCoeffForRdcTemperatureCoeffAtIndex:(unint64_t)a3
{
  p_agingCoeffForRdcTemperatureCoeffs = &self->_agingCoeffForRdcTemperatureCoeffs;
  count = self->_agingCoeffForRdcTemperatureCoeffs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForRdcTemperatureCoeffs->list[a3];
}

- (float)qmaxAtIndex:(unint64_t)a3
{
  p_qmaxs = &self->_qmaxs;
  count = self->_qmaxs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_qmaxs->list[a3];
}

- (void)setHasMaxRdcR25Ratio:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = OTAParamRC;
  v3 = [(OTAParamRC *)&v7 description];
  v4 = [(OTAParamRC *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  r0 = self->_r0;
  if (r0)
  {
    v5 = [(OTAResistanceData *)r0 dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"R0"];
  }

  r1 = self->_r1;
  if (r1)
  {
    v7 = [(OTAResistanceData *)r1 dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"R1"];
  }

  baselineR1 = self->_baselineR1;
  if (baselineR1)
  {
    v9 = [(OTAResistanceData *)baselineR1 dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"baselineR1"];
  }

  r2 = self->_r2;
  if (r2)
  {
    v11 = [(OTAResistanceData *)r2 dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"R2"];
  }

  baselineR2 = self->_baselineR2;
  if (baselineR2)
  {
    v13 = [(OTAResistanceData *)baselineR2 dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"baselineR2"];
  }

  rCFreq1 = self->_rCFreq1;
  if (rCFreq1)
  {
    v15 = [(OTAResistanceData *)rCFreq1 dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"RCFreq1"];
  }

  rCFreq2 = self->_rCFreq2;
  if (rCFreq2)
  {
    v17 = [(OTAResistanceData *)rCFreq2 dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"RCFreq2"];
  }

  rCFreq3 = self->_rCFreq3;
  if (rCFreq3)
  {
    v19 = [(OTAResistanceData *)rCFreq3 dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"RCFreq3"];
  }

  v20 = PBRepeatedFloatNSArray();
  [v3 setObject:v20 forKey:@"agingCoeffForR0"];

  v21 = PBRepeatedFloatNSArray();
  [v3 setObject:v21 forKey:@"agingCoeffForR0TemperatureCoeff"];

  v22 = PBRepeatedFloatNSArray();
  [v3 setObject:v22 forKey:@"agingCoeffForR1"];

  v23 = PBRepeatedFloatNSArray();
  [v3 setObject:v23 forKey:@"agingCoeffForR1TemperatureCoeff"];

  v24 = PBRepeatedFloatNSArray();
  [v3 setObject:v24 forKey:@"agingCoeffForR2"];

  v25 = PBRepeatedFloatNSArray();
  [v3 setObject:v25 forKey:@"agingCoeffForR2TemperatureCoeff"];

  v26 = PBRepeatedFloatNSArray();
  [v3 setObject:v26 forKey:@"baselineRdc"];

  baselineR0 = self->_baselineR0;
  if (baselineR0)
  {
    v28 = [(OTAResistanceData *)baselineR0 dictionaryRepresentation];
    [v3 setObject:v28 forKey:@"baselineR0"];
  }

  bmuResistance = self->_bmuResistance;
  if (bmuResistance)
  {
    v30 = [(OTABMUResistance *)bmuResistance dictionaryRepresentation];
    [v3 setObject:v30 forKey:@"bmuResistance"];
  }

  v31 = [NSNumber numberWithUnsignedInt:self->_chemID];
  [v3 setObject:v31 forKey:@"chemID"];

  v32 = PBRepeatedFloatNSArray();
  [v3 setObject:v32 forKey:@"gridOCV"];

  baselineR3 = self->_baselineR3;
  if (baselineR3)
  {
    v35 = [(OTAResistanceData *)baselineR3 dictionaryRepresentation];
    [v3 setObject:v35 forKey:@"baselineR3"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *&v33 = self->_maxRdcRatio;
    v70 = [NSNumber numberWithFloat:v33];
    [v3 setObject:v70 forKey:@"maxRdcRatio"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_25:
      if ((has & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_25;
  }

  *&v33 = self->_maxRdcRatioR2Extrap;
  v71 = [NSNumber numberWithFloat:v33];
  [v3 setObject:v71 forKey:@"maxRdcRatioR2Extrap"];

  if (*&self->_has)
  {
LABEL_26:
    *&v33 = self->_baselineWRdc;
    v37 = [NSNumber numberWithFloat:v33];
    [v3 setObject:v37 forKey:@"baselineWRdc"];
  }

LABEL_27:
  v38 = PBRepeatedFloatNSArray();
  [v3 setObject:v38 forKey:@"slopeForR0Extrap"];

  v39 = PBRepeatedFloatNSArray();
  [v3 setObject:v39 forKey:@"slopeForR1Extrap"];

  v40 = PBRepeatedFloatNSArray();
  [v3 setObject:v40 forKey:@"slopeForR2Extrap"];

  v41 = PBRepeatedFloatNSArray();
  [v3 setObject:v41 forKey:@"slopeForR3Extrap"];

  r3 = self->_r3;
  if (r3)
  {
    v43 = [(OTAResistanceData *)r3 dictionaryRepresentation];
    [v3 setObject:v43 forKey:@"R3"];
  }

  rCFreq4 = self->_rCFreq4;
  if (rCFreq4)
  {
    v45 = [(OTAResistanceData *)rCFreq4 dictionaryRepresentation];
    [v3 setObject:v45 forKey:@"RCFreq4"];
  }

  baselineR4 = self->_baselineR4;
  if (baselineR4)
  {
    v47 = [(OTAResistanceData *)baselineR4 dictionaryRepresentation];
    [v3 setObject:v47 forKey:@"baselineR4"];
  }

  baselineRCFreq1 = self->_baselineRCFreq1;
  if (baselineRCFreq1)
  {
    v49 = [(OTAResistanceData *)baselineRCFreq1 dictionaryRepresentation];
    [v3 setObject:v49 forKey:@"baselineRCFreq1"];
  }

  baselineRCFreq2 = self->_baselineRCFreq2;
  if (baselineRCFreq2)
  {
    v51 = [(OTAResistanceData *)baselineRCFreq2 dictionaryRepresentation];
    [v3 setObject:v51 forKey:@"baselineRCFreq2"];
  }

  baselineRCFreq3 = self->_baselineRCFreq3;
  if (baselineRCFreq3)
  {
    v53 = [(OTAResistanceData *)baselineRCFreq3 dictionaryRepresentation];
    [v3 setObject:v53 forKey:@"baselineRCFreq3"];
  }

  baselineRCFreq4 = self->_baselineRCFreq4;
  if (baselineRCFreq4)
  {
    v55 = [(OTAResistanceData *)baselineRCFreq4 dictionaryRepresentation];
    [v3 setObject:v55 forKey:@"baselineRCFreq4"];
  }

  v56 = PBRepeatedFloatNSArray();
  [v3 setObject:v56 forKey:@"agingCoeffForR3"];

  v57 = PBRepeatedFloatNSArray();
  [v3 setObject:v57 forKey:@"agingCoeffForR3TemperatureCoeff"];

  v58 = PBRepeatedFloatNSArray();
  [v3 setObject:v58 forKey:@"agingCoeffForRCFreq1"];

  v59 = PBRepeatedFloatNSArray();
  [v3 setObject:v59 forKey:@"agingCoeffForRCFreq2"];

  v60 = PBRepeatedFloatNSArray();
  [v3 setObject:v60 forKey:@"agingCoeffForRCFreq3"];

  v61 = PBRepeatedFloatNSArray();
  [v3 setObject:v61 forKey:@"agingCoeffForRCFreq4"];

  v62 = PBRepeatedFloatNSArray();
  [v3 setObject:v62 forKey:@"agingCoeffForRCFreq1TemperatureCoeff"];

  v63 = PBRepeatedFloatNSArray();
  [v3 setObject:v63 forKey:@"agingCoeffForRCFreq2TemperatureCoeff"];

  v64 = PBRepeatedFloatNSArray();
  [v3 setObject:v64 forKey:@"agingCoeffForRCFreq3TemperatureCoeff"];

  v65 = PBRepeatedFloatNSArray();
  [v3 setObject:v65 forKey:@"agingCoeffForRCFreq4TemperatureCoeff"];

  v67 = self->_has;
  if ((v67 & 2) != 0)
  {
    mLBConfig = self->_mLBConfig;
    if (mLBConfig)
    {
      if (mLBConfig == 1)
      {
        v69 = @"kPPMNorthSouthSplitMLB";
      }

      else
      {
        v69 = [NSString stringWithFormat:@"(unknown: %i)", self->_mLBConfig];
      }
    }

    else
    {
      v69 = @"kPPMRegularMLB";
    }

    [v3 setObject:v69 forKey:@"MLBConfig"];

    v67 = self->_has;
  }

  if ((v67 & 0x20) != 0)
  {
    *&v66 = self->_wRdcRatioThresh;
    v72 = [NSNumber numberWithFloat:v66];
    [v3 setObject:v72 forKey:@"wRdcRatioThresh"];
  }

  v73 = PBRepeatedFloatNSArray();
  [v3 setObject:v73 forKey:@"gridWRdcRatio"];

  v74 = PBRepeatedFloatNSArray();
  [v3 setObject:v74 forKey:@"coeffSOC"];

  v75 = PBRepeatedFloatNSArray();
  [v3 setObject:v75 forKey:@"coeffV"];

  rdc = self->_rdc;
  if (rdc)
  {
    v77 = [(OTAResistanceData *)rdc dictionaryRepresentation];
    [v3 setObject:v77 forKey:@"Rdc"];
  }

  v78 = PBRepeatedFloatNSArray();
  [v3 setObject:v78 forKey:@"agingCoeffForRdc"];

  v79 = PBRepeatedFloatNSArray();
  [v3 setObject:v79 forKey:@"agingCoeffForRdcTemperatureCoeff"];

  v80 = PBRepeatedFloatNSArray();
  [v3 setObject:v80 forKey:@"Qmax"];

  if ((*&self->_has & 4) != 0)
  {
    *&v81 = self->_maxRdcR25Ratio;
    v82 = [NSNumber numberWithFloat:v81];
    [v3 setObject:v82 forKey:@"maxRdcR25Ratio"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v70 = a3;
  if (self->_r0)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_r1)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_baselineR1)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_r2)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_baselineR2)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_rCFreq1)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_rCFreq2)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_rCFreq3)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_agingCoeffForR0s.count)
  {
    v4 = 0;
    do
    {
      v5 = self->_agingCoeffForR0s.list[v4];
      PBDataWriterWriteFloatField();
      ++v4;
    }

    while (v4 < self->_agingCoeffForR0s.count);
  }

  if (self->_agingCoeffForR0TemperatureCoeffs.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_agingCoeffForR0TemperatureCoeffs.list[v6];
      PBDataWriterWriteFloatField();
      ++v6;
    }

    while (v6 < self->_agingCoeffForR0TemperatureCoeffs.count);
  }

  if (self->_agingCoeffForR1s.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_agingCoeffForR1s.list[v8];
      PBDataWriterWriteFloatField();
      ++v8;
    }

    while (v8 < self->_agingCoeffForR1s.count);
  }

  if (self->_agingCoeffForR1TemperatureCoeffs.count)
  {
    v10 = 0;
    do
    {
      v11 = self->_agingCoeffForR1TemperatureCoeffs.list[v10];
      PBDataWriterWriteFloatField();
      ++v10;
    }

    while (v10 < self->_agingCoeffForR1TemperatureCoeffs.count);
  }

  if (self->_agingCoeffForR2s.count)
  {
    v12 = 0;
    do
    {
      v13 = self->_agingCoeffForR2s.list[v12];
      PBDataWriterWriteFloatField();
      ++v12;
    }

    while (v12 < self->_agingCoeffForR2s.count);
  }

  if (self->_agingCoeffForR2TemperatureCoeffs.count)
  {
    v14 = 0;
    do
    {
      v15 = self->_agingCoeffForR2TemperatureCoeffs.list[v14];
      PBDataWriterWriteFloatField();
      ++v14;
    }

    while (v14 < self->_agingCoeffForR2TemperatureCoeffs.count);
  }

  if (self->_baselineRdcs.count)
  {
    v16 = 0;
    do
    {
      v17 = self->_baselineRdcs.list[v16];
      PBDataWriterWriteFloatField();
      ++v16;
    }

    while (v16 < self->_baselineRdcs.count);
  }

  if (self->_baselineR0)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_bmuResistance)
  {
    PBDataWriterWriteSubmessage();
  }

  chemID = self->_chemID;
  PBDataWriterWriteUint32Field();
  if (self->_gridOCVs.count)
  {
    v19 = 0;
    do
    {
      v20 = self->_gridOCVs.list[v19];
      PBDataWriterWriteFloatField();
      ++v19;
    }

    while (v19 < self->_gridOCVs.count);
  }

  if (self->_baselineR3)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  v22 = v70;
  if ((has & 8) != 0)
  {
    maxRdcRatio = self->_maxRdcRatio;
    PBDataWriterWriteFloatField();
    v22 = v70;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_49:
      if ((has & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_49;
  }

  maxRdcRatioR2Extrap = self->_maxRdcRatioR2Extrap;
  PBDataWriterWriteFloatField();
  v22 = v70;
  if (*&self->_has)
  {
LABEL_50:
    baselineWRdc = self->_baselineWRdc;
    PBDataWriterWriteFloatField();
    v22 = v70;
  }

LABEL_51:
  if (self->_slopeForR0Extraps.count)
  {
    v24 = 0;
    do
    {
      v25 = self->_slopeForR0Extraps.list[v24];
      PBDataWriterWriteFloatField();
      v22 = v70;
      ++v24;
    }

    while (v24 < self->_slopeForR0Extraps.count);
  }

  if (self->_slopeForR1Extraps.count)
  {
    v26 = 0;
    do
    {
      v27 = self->_slopeForR1Extraps.list[v26];
      PBDataWriterWriteFloatField();
      v22 = v70;
      ++v26;
    }

    while (v26 < self->_slopeForR1Extraps.count);
  }

  if (self->_slopeForR2Extraps.count)
  {
    v28 = 0;
    do
    {
      v29 = self->_slopeForR2Extraps.list[v28];
      PBDataWriterWriteFloatField();
      v22 = v70;
      ++v28;
    }

    while (v28 < self->_slopeForR2Extraps.count);
  }

  if (self->_slopeForR3Extraps.count)
  {
    v30 = 0;
    do
    {
      v31 = self->_slopeForR3Extraps.list[v30];
      PBDataWriterWriteFloatField();
      v22 = v70;
      ++v30;
    }

    while (v30 < self->_slopeForR3Extraps.count);
  }

  if (self->_r3)
  {
    PBDataWriterWriteSubmessage();
    v22 = v70;
  }

  if (self->_rCFreq4)
  {
    PBDataWriterWriteSubmessage();
    v22 = v70;
  }

  if (self->_baselineR4)
  {
    PBDataWriterWriteSubmessage();
    v22 = v70;
  }

  if (self->_baselineRCFreq1)
  {
    PBDataWriterWriteSubmessage();
    v22 = v70;
  }

  if (self->_baselineRCFreq2)
  {
    PBDataWriterWriteSubmessage();
    v22 = v70;
  }

  if (self->_baselineRCFreq3)
  {
    PBDataWriterWriteSubmessage();
    v22 = v70;
  }

  if (self->_baselineRCFreq4)
  {
    PBDataWriterWriteSubmessage();
    v22 = v70;
  }

  if (self->_agingCoeffForR3s.count)
  {
    v32 = 0;
    do
    {
      v33 = self->_agingCoeffForR3s.list[v32];
      PBDataWriterWriteFloatField();
      v22 = v70;
      ++v32;
    }

    while (v32 < self->_agingCoeffForR3s.count);
  }

  if (self->_agingCoeffForR3TemperatureCoeffs.count)
  {
    v34 = 0;
    do
    {
      v35 = self->_agingCoeffForR3TemperatureCoeffs.list[v34];
      PBDataWriterWriteFloatField();
      v22 = v70;
      ++v34;
    }

    while (v34 < self->_agingCoeffForR3TemperatureCoeffs.count);
  }

  if (self->_agingCoeffForRCFreq1s.count)
  {
    v36 = 0;
    do
    {
      v37 = self->_agingCoeffForRCFreq1s.list[v36];
      PBDataWriterWriteFloatField();
      v22 = v70;
      ++v36;
    }

    while (v36 < self->_agingCoeffForRCFreq1s.count);
  }

  if (self->_agingCoeffForRCFreq2s.count)
  {
    v38 = 0;
    do
    {
      v39 = self->_agingCoeffForRCFreq2s.list[v38];
      PBDataWriterWriteFloatField();
      v22 = v70;
      ++v38;
    }

    while (v38 < self->_agingCoeffForRCFreq2s.count);
  }

  if (self->_agingCoeffForRCFreq3s.count)
  {
    v40 = 0;
    do
    {
      v41 = self->_agingCoeffForRCFreq3s.list[v40];
      PBDataWriterWriteFloatField();
      v22 = v70;
      ++v40;
    }

    while (v40 < self->_agingCoeffForRCFreq3s.count);
  }

  if (self->_agingCoeffForRCFreq4s.count)
  {
    v42 = 0;
    do
    {
      v43 = self->_agingCoeffForRCFreq4s.list[v42];
      PBDataWriterWriteFloatField();
      v22 = v70;
      ++v42;
    }

    while (v42 < self->_agingCoeffForRCFreq4s.count);
  }

  if (self->_agingCoeffForRCFreq1TemperatureCoeffs.count)
  {
    v44 = 0;
    do
    {
      v45 = self->_agingCoeffForRCFreq1TemperatureCoeffs.list[v44];
      PBDataWriterWriteFloatField();
      v22 = v70;
      ++v44;
    }

    while (v44 < self->_agingCoeffForRCFreq1TemperatureCoeffs.count);
  }

  if (self->_agingCoeffForRCFreq2TemperatureCoeffs.count)
  {
    v46 = 0;
    do
    {
      v47 = self->_agingCoeffForRCFreq2TemperatureCoeffs.list[v46];
      PBDataWriterWriteFloatField();
      v22 = v70;
      ++v46;
    }

    while (v46 < self->_agingCoeffForRCFreq2TemperatureCoeffs.count);
  }

  if (self->_agingCoeffForRCFreq3TemperatureCoeffs.count)
  {
    v48 = 0;
    do
    {
      v49 = self->_agingCoeffForRCFreq3TemperatureCoeffs.list[v48];
      PBDataWriterWriteFloatField();
      v22 = v70;
      ++v48;
    }

    while (v48 < self->_agingCoeffForRCFreq3TemperatureCoeffs.count);
  }

  if (self->_agingCoeffForRCFreq4TemperatureCoeffs.count)
  {
    v50 = 0;
    do
    {
      v51 = self->_agingCoeffForRCFreq4TemperatureCoeffs.list[v50];
      PBDataWriterWriteFloatField();
      v22 = v70;
      ++v50;
    }

    while (v50 < self->_agingCoeffForRCFreq4TemperatureCoeffs.count);
  }

  v52 = self->_has;
  if ((v52 & 2) != 0)
  {
    mLBConfig = self->_mLBConfig;
    PBDataWriterWriteInt32Field();
    v22 = v70;
    v52 = self->_has;
  }

  if ((v52 & 0x20) != 0)
  {
    wRdcRatioThresh = self->_wRdcRatioThresh;
    PBDataWriterWriteFloatField();
    v22 = v70;
  }

  if (self->_gridWRdcRatios.count)
  {
    v55 = 0;
    do
    {
      v56 = self->_gridWRdcRatios.list[v55];
      PBDataWriterWriteFloatField();
      v22 = v70;
      ++v55;
    }

    while (v55 < self->_gridWRdcRatios.count);
  }

  if (self->_coeffSOCs.count)
  {
    v57 = 0;
    do
    {
      v58 = self->_coeffSOCs.list[v57];
      PBDataWriterWriteFloatField();
      v22 = v70;
      ++v57;
    }

    while (v57 < self->_coeffSOCs.count);
  }

  if (self->_coeffVs.count)
  {
    v59 = 0;
    do
    {
      v60 = self->_coeffVs.list[v59];
      PBDataWriterWriteFloatField();
      v22 = v70;
      ++v59;
    }

    while (v59 < self->_coeffVs.count);
  }

  if (self->_rdc)
  {
    PBDataWriterWriteSubmessage();
    v22 = v70;
  }

  if (self->_agingCoeffForRdcs.count)
  {
    v61 = 0;
    do
    {
      v62 = self->_agingCoeffForRdcs.list[v61];
      PBDataWriterWriteFloatField();
      v22 = v70;
      ++v61;
    }

    while (v61 < self->_agingCoeffForRdcs.count);
  }

  if (self->_agingCoeffForRdcTemperatureCoeffs.count)
  {
    v63 = 0;
    do
    {
      v64 = self->_agingCoeffForRdcTemperatureCoeffs.list[v63];
      PBDataWriterWriteFloatField();
      v22 = v70;
      ++v63;
    }

    while (v63 < self->_agingCoeffForRdcTemperatureCoeffs.count);
  }

  if (self->_qmaxs.count)
  {
    v65 = 0;
    do
    {
      v66 = self->_qmaxs.list[v65];
      PBDataWriterWriteFloatField();
      v22 = v70;
      ++v65;
    }

    while (v65 < self->_qmaxs.count);
  }

  if ((*&self->_has & 4) != 0)
  {
    maxRdcR25Ratio = self->_maxRdcR25Ratio;
    PBDataWriterWriteFloatField();
    v22 = v70;
  }
}

- (void)copyTo:(id)a3
{
  v91 = a3;
  if (self->_r0)
  {
    [v91 setR0:?];
  }

  if (self->_r1)
  {
    [v91 setR1:?];
  }

  if (self->_baselineR1)
  {
    [v91 setBaselineR1:?];
  }

  if (self->_r2)
  {
    [v91 setR2:?];
  }

  if (self->_baselineR2)
  {
    [v91 setBaselineR2:?];
  }

  if (self->_rCFreq1)
  {
    [v91 setRCFreq1:?];
  }

  if (self->_rCFreq2)
  {
    [v91 setRCFreq2:?];
  }

  if (self->_rCFreq3)
  {
    [v91 setRCFreq3:?];
  }

  if ([(OTAParamRC *)self agingCoeffForR0sCount])
  {
    [v91 clearAgingCoeffForR0s];
    v4 = [(OTAParamRC *)self agingCoeffForR0sCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [(OTAParamRC *)self agingCoeffForR0AtIndex:i];
        [v91 addAgingCoeffForR0:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForR0TemperatureCoeffsCount])
  {
    [v91 clearAgingCoeffForR0TemperatureCoeffs];
    v7 = [(OTAParamRC *)self agingCoeffForR0TemperatureCoeffsCount];
    if (v7)
    {
      v8 = v7;
      for (j = 0; j != v8; ++j)
      {
        [(OTAParamRC *)self agingCoeffForR0TemperatureCoeffAtIndex:j];
        [v91 addAgingCoeffForR0TemperatureCoeff:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForR1sCount])
  {
    [v91 clearAgingCoeffForR1s];
    v10 = [(OTAParamRC *)self agingCoeffForR1sCount];
    if (v10)
    {
      v11 = v10;
      for (k = 0; k != v11; ++k)
      {
        [(OTAParamRC *)self agingCoeffForR1AtIndex:k];
        [v91 addAgingCoeffForR1:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForR1TemperatureCoeffsCount])
  {
    [v91 clearAgingCoeffForR1TemperatureCoeffs];
    v13 = [(OTAParamRC *)self agingCoeffForR1TemperatureCoeffsCount];
    if (v13)
    {
      v14 = v13;
      for (m = 0; m != v14; ++m)
      {
        [(OTAParamRC *)self agingCoeffForR1TemperatureCoeffAtIndex:m];
        [v91 addAgingCoeffForR1TemperatureCoeff:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForR2sCount])
  {
    [v91 clearAgingCoeffForR2s];
    v16 = [(OTAParamRC *)self agingCoeffForR2sCount];
    if (v16)
    {
      v17 = v16;
      for (n = 0; n != v17; ++n)
      {
        [(OTAParamRC *)self agingCoeffForR2AtIndex:n];
        [v91 addAgingCoeffForR2:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForR2TemperatureCoeffsCount])
  {
    [v91 clearAgingCoeffForR2TemperatureCoeffs];
    v19 = [(OTAParamRC *)self agingCoeffForR2TemperatureCoeffsCount];
    if (v19)
    {
      v20 = v19;
      for (ii = 0; ii != v20; ++ii)
      {
        [(OTAParamRC *)self agingCoeffForR2TemperatureCoeffAtIndex:ii];
        [v91 addAgingCoeffForR2TemperatureCoeff:?];
      }
    }
  }

  if ([(OTAParamRC *)self baselineRdcsCount])
  {
    [v91 clearBaselineRdcs];
    v22 = [(OTAParamRC *)self baselineRdcsCount];
    if (v22)
    {
      v23 = v22;
      for (jj = 0; jj != v23; ++jj)
      {
        [(OTAParamRC *)self baselineRdcAtIndex:jj];
        [v91 addBaselineRdc:?];
      }
    }
  }

  if (self->_baselineR0)
  {
    [v91 setBaselineR0:?];
  }

  v25 = v91;
  if (self->_bmuResistance)
  {
    [v91 setBmuResistance:?];
    v25 = v91;
  }

  v25[192] = self->_chemID;
  if ([(OTAParamRC *)self gridOCVsCount])
  {
    [v91 clearGridOCVs];
    v26 = [(OTAParamRC *)self gridOCVsCount];
    if (v26)
    {
      v27 = v26;
      for (kk = 0; kk != v27; ++kk)
      {
        [(OTAParamRC *)self gridOCVAtIndex:kk];
        [v91 addGridOCV:?];
      }
    }
  }

  if (self->_baselineR3)
  {
    [v91 setBaselineR3:?];
  }

  has = self->_has;
  if ((has & 8) == 0)
  {
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_57;
    }

LABEL_165:
    *(v91 + 196) = LODWORD(self->_maxRdcRatioR2Extrap);
    *(v91 + 868) |= 0x10u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  *(v91 + 195) = LODWORD(self->_maxRdcRatio);
  *(v91 + 868) |= 8u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_165;
  }

LABEL_57:
  if (has)
  {
LABEL_58:
    *(v91 + 188) = LODWORD(self->_baselineWRdc);
    *(v91 + 868) |= 1u;
  }

LABEL_59:
  if ([(OTAParamRC *)self slopeForR0ExtrapsCount])
  {
    [v91 clearSlopeForR0Extraps];
    v30 = [(OTAParamRC *)self slopeForR0ExtrapsCount];
    if (v30)
    {
      v31 = v30;
      for (mm = 0; mm != v31; ++mm)
      {
        [(OTAParamRC *)self slopeForR0ExtrapAtIndex:mm];
        [v91 addSlopeForR0Extrap:?];
      }
    }
  }

  if ([(OTAParamRC *)self slopeForR1ExtrapsCount])
  {
    [v91 clearSlopeForR1Extraps];
    v33 = [(OTAParamRC *)self slopeForR1ExtrapsCount];
    if (v33)
    {
      v34 = v33;
      for (nn = 0; nn != v34; ++nn)
      {
        [(OTAParamRC *)self slopeForR1ExtrapAtIndex:nn];
        [v91 addSlopeForR1Extrap:?];
      }
    }
  }

  if ([(OTAParamRC *)self slopeForR2ExtrapsCount])
  {
    [v91 clearSlopeForR2Extraps];
    v36 = [(OTAParamRC *)self slopeForR2ExtrapsCount];
    if (v36)
    {
      v37 = v36;
      for (i1 = 0; i1 != v37; ++i1)
      {
        [(OTAParamRC *)self slopeForR2ExtrapAtIndex:i1];
        [v91 addSlopeForR2Extrap:?];
      }
    }
  }

  if ([(OTAParamRC *)self slopeForR3ExtrapsCount])
  {
    [v91 clearSlopeForR3Extraps];
    v39 = [(OTAParamRC *)self slopeForR3ExtrapsCount];
    if (v39)
    {
      v40 = v39;
      for (i2 = 0; i2 != v40; ++i2)
      {
        [(OTAParamRC *)self slopeForR3ExtrapAtIndex:i2];
        [v91 addSlopeForR3Extrap:?];
      }
    }
  }

  if (self->_r3)
  {
    [v91 setR3:?];
  }

  if (self->_rCFreq4)
  {
    [v91 setRCFreq4:?];
  }

  if (self->_baselineR4)
  {
    [v91 setBaselineR4:?];
  }

  if (self->_baselineRCFreq1)
  {
    [v91 setBaselineRCFreq1:?];
  }

  if (self->_baselineRCFreq2)
  {
    [v91 setBaselineRCFreq2:?];
  }

  if (self->_baselineRCFreq3)
  {
    [v91 setBaselineRCFreq3:?];
  }

  if (self->_baselineRCFreq4)
  {
    [v91 setBaselineRCFreq4:?];
  }

  if ([(OTAParamRC *)self agingCoeffForR3sCount])
  {
    [v91 clearAgingCoeffForR3s];
    v42 = [(OTAParamRC *)self agingCoeffForR3sCount];
    if (v42)
    {
      v43 = v42;
      for (i3 = 0; i3 != v43; ++i3)
      {
        [(OTAParamRC *)self agingCoeffForR3AtIndex:i3];
        [v91 addAgingCoeffForR3:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForR3TemperatureCoeffsCount])
  {
    [v91 clearAgingCoeffForR3TemperatureCoeffs];
    v45 = [(OTAParamRC *)self agingCoeffForR3TemperatureCoeffsCount];
    if (v45)
    {
      v46 = v45;
      for (i4 = 0; i4 != v46; ++i4)
      {
        [(OTAParamRC *)self agingCoeffForR3TemperatureCoeffAtIndex:i4];
        [v91 addAgingCoeffForR3TemperatureCoeff:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForRCFreq1sCount])
  {
    [v91 clearAgingCoeffForRCFreq1s];
    v48 = [(OTAParamRC *)self agingCoeffForRCFreq1sCount];
    if (v48)
    {
      v49 = v48;
      for (i5 = 0; i5 != v49; ++i5)
      {
        [(OTAParamRC *)self agingCoeffForRCFreq1AtIndex:i5];
        [v91 addAgingCoeffForRCFreq1:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForRCFreq2sCount])
  {
    [v91 clearAgingCoeffForRCFreq2s];
    v51 = [(OTAParamRC *)self agingCoeffForRCFreq2sCount];
    if (v51)
    {
      v52 = v51;
      for (i6 = 0; i6 != v52; ++i6)
      {
        [(OTAParamRC *)self agingCoeffForRCFreq2AtIndex:i6];
        [v91 addAgingCoeffForRCFreq2:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForRCFreq3sCount])
  {
    [v91 clearAgingCoeffForRCFreq3s];
    v54 = [(OTAParamRC *)self agingCoeffForRCFreq3sCount];
    if (v54)
    {
      v55 = v54;
      for (i7 = 0; i7 != v55; ++i7)
      {
        [(OTAParamRC *)self agingCoeffForRCFreq3AtIndex:i7];
        [v91 addAgingCoeffForRCFreq3:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForRCFreq4sCount])
  {
    [v91 clearAgingCoeffForRCFreq4s];
    v57 = [(OTAParamRC *)self agingCoeffForRCFreq4sCount];
    if (v57)
    {
      v58 = v57;
      for (i8 = 0; i8 != v58; ++i8)
      {
        [(OTAParamRC *)self agingCoeffForRCFreq4AtIndex:i8];
        [v91 addAgingCoeffForRCFreq4:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForRCFreq1TemperatureCoeffsCount])
  {
    [v91 clearAgingCoeffForRCFreq1TemperatureCoeffs];
    v60 = [(OTAParamRC *)self agingCoeffForRCFreq1TemperatureCoeffsCount];
    if (v60)
    {
      v61 = v60;
      for (i9 = 0; i9 != v61; ++i9)
      {
        [(OTAParamRC *)self agingCoeffForRCFreq1TemperatureCoeffAtIndex:i9];
        [v91 addAgingCoeffForRCFreq1TemperatureCoeff:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForRCFreq2TemperatureCoeffsCount])
  {
    [v91 clearAgingCoeffForRCFreq2TemperatureCoeffs];
    v63 = [(OTAParamRC *)self agingCoeffForRCFreq2TemperatureCoeffsCount];
    if (v63)
    {
      v64 = v63;
      for (i10 = 0; i10 != v64; ++i10)
      {
        [(OTAParamRC *)self agingCoeffForRCFreq2TemperatureCoeffAtIndex:i10];
        [v91 addAgingCoeffForRCFreq2TemperatureCoeff:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForRCFreq3TemperatureCoeffsCount])
  {
    [v91 clearAgingCoeffForRCFreq3TemperatureCoeffs];
    v66 = [(OTAParamRC *)self agingCoeffForRCFreq3TemperatureCoeffsCount];
    if (v66)
    {
      v67 = v66;
      for (i11 = 0; i11 != v67; ++i11)
      {
        [(OTAParamRC *)self agingCoeffForRCFreq3TemperatureCoeffAtIndex:i11];
        [v91 addAgingCoeffForRCFreq3TemperatureCoeff:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForRCFreq4TemperatureCoeffsCount])
  {
    [v91 clearAgingCoeffForRCFreq4TemperatureCoeffs];
    v69 = [(OTAParamRC *)self agingCoeffForRCFreq4TemperatureCoeffsCount];
    if (v69)
    {
      v70 = v69;
      for (i12 = 0; i12 != v70; ++i12)
      {
        [(OTAParamRC *)self agingCoeffForRCFreq4TemperatureCoeffAtIndex:i12];
        [v91 addAgingCoeffForRCFreq4TemperatureCoeff:?];
      }
    }
  }

  v72 = self->_has;
  if ((v72 & 2) != 0)
  {
    *(v91 + 193) = self->_mLBConfig;
    *(v91 + 868) |= 2u;
    v72 = self->_has;
  }

  if ((v72 & 0x20) != 0)
  {
    *(v91 + 216) = LODWORD(self->_wRdcRatioThresh);
    *(v91 + 868) |= 0x20u;
  }

  if ([(OTAParamRC *)self gridWRdcRatiosCount])
  {
    [v91 clearGridWRdcRatios];
    v73 = [(OTAParamRC *)self gridWRdcRatiosCount];
    if (v73)
    {
      v74 = v73;
      for (i13 = 0; i13 != v74; ++i13)
      {
        [(OTAParamRC *)self gridWRdcRatioAtIndex:i13];
        [v91 addGridWRdcRatio:?];
      }
    }
  }

  if ([(OTAParamRC *)self coeffSOCsCount])
  {
    [v91 clearCoeffSOCs];
    v76 = [(OTAParamRC *)self coeffSOCsCount];
    if (v76)
    {
      v77 = v76;
      for (i14 = 0; i14 != v77; ++i14)
      {
        [(OTAParamRC *)self coeffSOCAtIndex:i14];
        [v91 addCoeffSOC:?];
      }
    }
  }

  if ([(OTAParamRC *)self coeffVsCount])
  {
    [v91 clearCoeffVs];
    v79 = [(OTAParamRC *)self coeffVsCount];
    if (v79)
    {
      v80 = v79;
      for (i15 = 0; i15 != v80; ++i15)
      {
        [(OTAParamRC *)self coeffVAtIndex:i15];
        [v91 addCoeffV:?];
      }
    }
  }

  if (self->_rdc)
  {
    [v91 setRdc:?];
  }

  if ([(OTAParamRC *)self agingCoeffForRdcsCount])
  {
    [v91 clearAgingCoeffForRdcs];
    v82 = [(OTAParamRC *)self agingCoeffForRdcsCount];
    if (v82)
    {
      v83 = v82;
      for (i16 = 0; i16 != v83; ++i16)
      {
        [(OTAParamRC *)self agingCoeffForRdcAtIndex:i16];
        [v91 addAgingCoeffForRdc:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForRdcTemperatureCoeffsCount])
  {
    [v91 clearAgingCoeffForRdcTemperatureCoeffs];
    v85 = [(OTAParamRC *)self agingCoeffForRdcTemperatureCoeffsCount];
    if (v85)
    {
      v86 = v85;
      for (i17 = 0; i17 != v86; ++i17)
      {
        [(OTAParamRC *)self agingCoeffForRdcTemperatureCoeffAtIndex:i17];
        [v91 addAgingCoeffForRdcTemperatureCoeff:?];
      }
    }
  }

  if ([(OTAParamRC *)self qmaxsCount])
  {
    [v91 clearQmaxs];
    v88 = [(OTAParamRC *)self qmaxsCount];
    if (v88)
    {
      v89 = v88;
      for (i18 = 0; i18 != v89; ++i18)
      {
        [(OTAParamRC *)self qmaxAtIndex:i18];
        [v91 addQmax:?];
      }
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v91 + 194) = LODWORD(self->_maxRdcR25Ratio);
    *(v91 + 868) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(OTAResistanceData *)self->_r0 copyWithZone:a3];
  v7 = v5[99];
  v5[99] = v6;

  v8 = [(OTAResistanceData *)self->_r1 copyWithZone:a3];
  v9 = v5[100];
  v5[100] = v8;

  v10 = [(OTAResistanceData *)self->_baselineR1 copyWithZone:a3];
  v11 = v5[86];
  v5[86] = v10;

  v12 = [(OTAResistanceData *)self->_r2 copyWithZone:a3];
  v13 = v5[101];
  v5[101] = v12;

  v14 = [(OTAResistanceData *)self->_baselineR2 copyWithZone:a3];
  v15 = v5[87];
  v5[87] = v14;

  v16 = [(OTAResistanceData *)self->_rCFreq1 copyWithZone:a3];
  v17 = v5[103];
  v5[103] = v16;

  v18 = [(OTAResistanceData *)self->_rCFreq2 copyWithZone:a3];
  v19 = v5[104];
  v5[104] = v18;

  v20 = [(OTAResistanceData *)self->_rCFreq3 copyWithZone:a3];
  v21 = v5[105];
  v5[105] = v20;

  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  v22 = [(OTAResistanceData *)self->_baselineR0 copyWithZone:a3];
  v23 = v5[85];
  v5[85] = v22;

  v24 = [(OTABMUResistance *)self->_bmuResistance copyWithZone:a3];
  v25 = v5[95];
  v5[95] = v24;

  *(v5 + 192) = self->_chemID;
  PBRepeatedFloatCopy();
  v26 = [(OTAResistanceData *)self->_baselineR3 copyWithZone:a3];
  v27 = v5[88];
  v5[88] = v26;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 195) = LODWORD(self->_maxRdcRatio);
    *(v5 + 868) |= 8u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 196) = LODWORD(self->_maxRdcRatioR2Extrap);
  *(v5 + 868) |= 0x10u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 188) = LODWORD(self->_baselineWRdc);
    *(v5 + 868) |= 1u;
  }

LABEL_5:
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  v29 = [(OTAResistanceData *)self->_r3 copyWithZone:a3];
  v30 = v5[102];
  v5[102] = v29;

  v31 = [(OTAResistanceData *)self->_rCFreq4 copyWithZone:a3];
  v32 = v5[106];
  v5[106] = v31;

  v33 = [(OTAResistanceData *)self->_baselineR4 copyWithZone:a3];
  v34 = v5[89];
  v5[89] = v33;

  v35 = [(OTAResistanceData *)self->_baselineRCFreq1 copyWithZone:a3];
  v36 = v5[90];
  v5[90] = v35;

  v37 = [(OTAResistanceData *)self->_baselineRCFreq2 copyWithZone:a3];
  v38 = v5[91];
  v5[91] = v37;

  v39 = [(OTAResistanceData *)self->_baselineRCFreq3 copyWithZone:a3];
  v40 = v5[92];
  v5[92] = v39;

  v41 = [(OTAResistanceData *)self->_baselineRCFreq4 copyWithZone:a3];
  v42 = v5[93];
  v5[93] = v41;

  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  v43 = self->_has;
  if ((v43 & 2) != 0)
  {
    *(v5 + 193) = self->_mLBConfig;
    *(v5 + 868) |= 2u;
    v43 = self->_has;
  }

  if ((v43 & 0x20) != 0)
  {
    *(v5 + 216) = LODWORD(self->_wRdcRatioThresh);
    *(v5 + 868) |= 0x20u;
  }

  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  v44 = [(OTAResistanceData *)self->_rdc copyWithZone:a3];
  v45 = v5[107];
  v5[107] = v44;

  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 194) = LODWORD(self->_maxRdcR25Ratio);
    *(v5 + 868) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_99;
  }

  r0 = self->_r0;
  if (r0 | *(v4 + 99))
  {
    if (![(OTAResistanceData *)r0 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  r1 = self->_r1;
  if (r1 | *(v4 + 100))
  {
    if (![(OTAResistanceData *)r1 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  baselineR1 = self->_baselineR1;
  if (baselineR1 | *(v4 + 86))
  {
    if (![(OTAResistanceData *)baselineR1 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  r2 = self->_r2;
  if (r2 | *(v4 + 101))
  {
    if (![(OTAResistanceData *)r2 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  baselineR2 = self->_baselineR2;
  if (baselineR2 | *(v4 + 87))
  {
    if (![(OTAResistanceData *)baselineR2 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  rCFreq1 = self->_rCFreq1;
  if (rCFreq1 | *(v4 + 103))
  {
    if (![(OTAResistanceData *)rCFreq1 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  rCFreq2 = self->_rCFreq2;
  if (rCFreq2 | *(v4 + 104))
  {
    if (![(OTAResistanceData *)rCFreq2 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  rCFreq3 = self->_rCFreq3;
  if (rCFreq3 | *(v4 + 105))
  {
    if (![(OTAResistanceData *)rCFreq3 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  if (!PBRepeatedFloatIsEqual())
  {
    goto LABEL_99;
  }

  if (!PBRepeatedFloatIsEqual())
  {
    goto LABEL_99;
  }

  if (!PBRepeatedFloatIsEqual())
  {
    goto LABEL_99;
  }

  if (!PBRepeatedFloatIsEqual())
  {
    goto LABEL_99;
  }

  if (!PBRepeatedFloatIsEqual())
  {
    goto LABEL_99;
  }

  if (!PBRepeatedFloatIsEqual())
  {
    goto LABEL_99;
  }

  if (!PBRepeatedFloatIsEqual())
  {
    goto LABEL_99;
  }

  baselineR0 = self->_baselineR0;
  if (baselineR0 | *(v4 + 85))
  {
    if (![(OTAResistanceData *)baselineR0 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  bmuResistance = self->_bmuResistance;
  if (bmuResistance | *(v4 + 95))
  {
    if (![(OTABMUResistance *)bmuResistance isEqual:?])
    {
      goto LABEL_99;
    }
  }

  if (self->_chemID != *(v4 + 192))
  {
    goto LABEL_99;
  }

  if (!PBRepeatedFloatIsEqual())
  {
    goto LABEL_99;
  }

  baselineR3 = self->_baselineR3;
  if (baselineR3 | *(v4 + 88))
  {
    if (![(OTAResistanceData *)baselineR3 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  v16 = *(v4 + 868);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 868) & 8) == 0 || self->_maxRdcRatio != *(v4 + 195))
    {
      goto LABEL_99;
    }
  }

  else if ((*(v4 + 868) & 8) != 0)
  {
LABEL_99:
    v26 = 0;
    goto LABEL_100;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 868) & 0x10) == 0 || self->_maxRdcRatioR2Extrap != *(v4 + 196))
    {
      goto LABEL_99;
    }
  }

  else if ((*(v4 + 868) & 0x10) != 0)
  {
    goto LABEL_99;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 868) & 1) == 0 || self->_baselineWRdc != *(v4 + 188))
    {
      goto LABEL_99;
    }
  }

  else if (*(v4 + 868))
  {
    goto LABEL_99;
  }

  if (!PBRepeatedFloatIsEqual())
  {
    goto LABEL_99;
  }

  if (!PBRepeatedFloatIsEqual())
  {
    goto LABEL_99;
  }

  if (!PBRepeatedFloatIsEqual())
  {
    goto LABEL_99;
  }

  if (!PBRepeatedFloatIsEqual())
  {
    goto LABEL_99;
  }

  r3 = self->_r3;
  if (r3 | *(v4 + 102))
  {
    if (![(OTAResistanceData *)r3 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  rCFreq4 = self->_rCFreq4;
  if (rCFreq4 | *(v4 + 106))
  {
    if (![(OTAResistanceData *)rCFreq4 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  baselineR4 = self->_baselineR4;
  if (baselineR4 | *(v4 + 89))
  {
    if (![(OTAResistanceData *)baselineR4 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  baselineRCFreq1 = self->_baselineRCFreq1;
  if (baselineRCFreq1 | *(v4 + 90))
  {
    if (![(OTAResistanceData *)baselineRCFreq1 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  baselineRCFreq2 = self->_baselineRCFreq2;
  if (baselineRCFreq2 | *(v4 + 91))
  {
    if (![(OTAResistanceData *)baselineRCFreq2 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  baselineRCFreq3 = self->_baselineRCFreq3;
  if (baselineRCFreq3 | *(v4 + 92))
  {
    if (![(OTAResistanceData *)baselineRCFreq3 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  baselineRCFreq4 = self->_baselineRCFreq4;
  if (baselineRCFreq4 | *(v4 + 93))
  {
    if (![(OTAResistanceData *)baselineRCFreq4 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  if (!PBRepeatedFloatIsEqual() || !PBRepeatedFloatIsEqual() || !PBRepeatedFloatIsEqual() || !PBRepeatedFloatIsEqual() || !PBRepeatedFloatIsEqual() || !PBRepeatedFloatIsEqual() || !PBRepeatedFloatIsEqual() || !PBRepeatedFloatIsEqual() || !PBRepeatedFloatIsEqual() || !PBRepeatedFloatIsEqual())
  {
    goto LABEL_99;
  }

  v24 = *(v4 + 868);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 868) & 2) == 0 || self->_mLBConfig != *(v4 + 193))
    {
      goto LABEL_99;
    }
  }

  else if ((*(v4 + 868) & 2) != 0)
  {
    goto LABEL_99;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 868) & 0x20) == 0 || self->_wRdcRatioThresh != *(v4 + 216))
    {
      goto LABEL_99;
    }
  }

  else if ((*(v4 + 868) & 0x20) != 0)
  {
    goto LABEL_99;
  }

  if (!PBRepeatedFloatIsEqual())
  {
    goto LABEL_99;
  }

  if (!PBRepeatedFloatIsEqual())
  {
    goto LABEL_99;
  }

  if (!PBRepeatedFloatIsEqual())
  {
    goto LABEL_99;
  }

  rdc = self->_rdc;
  if (rdc | *(v4 + 107))
  {
    if (![(OTAResistanceData *)rdc isEqual:?])
    {
      goto LABEL_99;
    }
  }

  if (!PBRepeatedFloatIsEqual() || !PBRepeatedFloatIsEqual() || !PBRepeatedFloatIsEqual())
  {
    goto LABEL_99;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 868) & 4) == 0 || self->_maxRdcR25Ratio != *(v4 + 194))
    {
      goto LABEL_99;
    }

    v26 = 1;
  }

  else
  {
    v26 = (*(v4 + 868) & 4) == 0;
  }

LABEL_100:

  return v26;
}

- (unint64_t)hash
{
  v81 = [(OTAResistanceData *)self->_r0 hash];
  v80 = [(OTAResistanceData *)self->_r1 hash];
  v79 = [(OTAResistanceData *)self->_baselineR1 hash];
  v78 = [(OTAResistanceData *)self->_r2 hash];
  v77 = [(OTAResistanceData *)self->_baselineR2 hash];
  v76 = [(OTAResistanceData *)self->_rCFreq1 hash];
  v75 = [(OTAResistanceData *)self->_rCFreq2 hash];
  v74 = [(OTAResistanceData *)self->_rCFreq3 hash];
  v73 = PBRepeatedFloatHash();
  v72 = PBRepeatedFloatHash();
  v71 = PBRepeatedFloatHash();
  v70 = PBRepeatedFloatHash();
  v69 = PBRepeatedFloatHash();
  v68 = PBRepeatedFloatHash();
  v67 = PBRepeatedFloatHash();
  v66 = [(OTAResistanceData *)self->_baselineR0 hash];
  v65 = [(OTABMUResistance *)self->_bmuResistance hash];
  chemID = self->_chemID;
  v64 = PBRepeatedFloatHash();
  v63 = [(OTAResistanceData *)self->_baselineR3 hash];
  if ((*&self->_has & 8) != 0)
  {
    maxRdcRatio = self->_maxRdcRatio;
    if (maxRdcRatio < 0.0)
    {
      maxRdcRatio = -maxRdcRatio;
    }

    *v3.i32 = floorf(maxRdcRatio + 0.5);
    v7 = (maxRdcRatio - *v3.i32) * 1.8447e19;
    *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
    v8.i64[0] = 0x8000000080000000;
    v8.i64[1] = 0x8000000080000000;
    v3 = vbslq_s8(v8, v4, v3);
    v5 = 2654435761u * *v3.i32;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabsf(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    maxRdcRatioR2Extrap = self->_maxRdcRatioR2Extrap;
    if (maxRdcRatioR2Extrap < 0.0)
    {
      maxRdcRatioR2Extrap = -maxRdcRatioR2Extrap;
    }

    *v3.i32 = floorf(maxRdcRatioR2Extrap + 0.5);
    v11 = (maxRdcRatioR2Extrap - *v3.i32) * 1.8447e19;
    *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    v3 = vbslq_s8(v12, v4, v3);
    v9 = 2654435761u * *v3.i32;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabsf(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  v60 = v9;
  v61 = v5;
  if (*&self->_has)
  {
    baselineWRdc = self->_baselineWRdc;
    if (baselineWRdc < 0.0)
    {
      baselineWRdc = -baselineWRdc;
    }

    *v3.i32 = floorf(baselineWRdc + 0.5);
    v15 = (baselineWRdc - *v3.i32) * 1.8447e19;
    *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
    v16.i64[0] = 0x8000000080000000;
    v16.i64[1] = 0x8000000080000000;
    v13 = 2654435761u * *vbslq_s8(v16, v4, v3).i32;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabsf(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  v59 = v13;
  v58 = PBRepeatedFloatHash();
  v57 = PBRepeatedFloatHash();
  v56 = PBRepeatedFloatHash();
  v55 = PBRepeatedFloatHash();
  v54 = [(OTAResistanceData *)self->_r3 hash];
  v53 = [(OTAResistanceData *)self->_rCFreq4 hash];
  v52 = [(OTAResistanceData *)self->_baselineR4 hash];
  v51 = [(OTAResistanceData *)self->_baselineRCFreq1 hash];
  v50 = [(OTAResistanceData *)self->_baselineRCFreq2 hash];
  v49 = [(OTAResistanceData *)self->_baselineRCFreq3 hash];
  v48 = [(OTAResistanceData *)self->_baselineRCFreq4 hash];
  v47 = PBRepeatedFloatHash();
  v46 = PBRepeatedFloatHash();
  v45 = PBRepeatedFloatHash();
  v44 = PBRepeatedFloatHash();
  v43 = PBRepeatedFloatHash();
  v42 = PBRepeatedFloatHash();
  v41 = PBRepeatedFloatHash();
  v40 = PBRepeatedFloatHash();
  v39 = PBRepeatedFloatHash();
  v38 = PBRepeatedFloatHash();
  if ((*&self->_has & 2) != 0)
  {
    v37 = 2654435761 * self->_mLBConfig;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_27;
    }

LABEL_32:
    v22 = 0;
    goto LABEL_33;
  }

  v37 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_32;
  }

LABEL_27:
  wRdcRatioThresh = self->_wRdcRatioThresh;
  if (wRdcRatioThresh < 0.0)
  {
    wRdcRatioThresh = -wRdcRatioThresh;
  }

  *v17.i32 = floorf(wRdcRatioThresh + 0.5);
  v20 = (wRdcRatioThresh - *v17.i32) * 1.8447e19;
  *v18.i32 = *v17.i32 - (truncf(*v17.i32 * 5.421e-20) * 1.8447e19);
  v21.i64[0] = 0x8000000080000000;
  v21.i64[1] = 0x8000000080000000;
  v22 = 2654435761u * *vbslq_s8(v21, v18, v17).i32;
  if (v20 >= 0.0)
  {
    if (v20 > 0.0)
    {
      v22 += v20;
    }
  }

  else
  {
    v22 -= fabsf(v20);
  }

LABEL_33:
  v23 = PBRepeatedFloatHash();
  v24 = PBRepeatedFloatHash();
  v25 = PBRepeatedFloatHash();
  v26 = [(OTAResistanceData *)self->_rdc hash];
  v27 = PBRepeatedFloatHash();
  v28 = PBRepeatedFloatHash();
  v29 = PBRepeatedFloatHash();
  if ((*&self->_has & 4) != 0)
  {
    maxRdcR25Ratio = self->_maxRdcR25Ratio;
    if (maxRdcR25Ratio < 0.0)
    {
      maxRdcR25Ratio = -maxRdcR25Ratio;
    }

    *v30.i32 = floorf(maxRdcR25Ratio + 0.5);
    v34 = (maxRdcR25Ratio - *v30.i32) * 1.8447e19;
    *v31.i32 = *v30.i32 - (truncf(*v30.i32 * 5.421e-20) * 1.8447e19);
    v35.i64[0] = 0x8000000080000000;
    v35.i64[1] = 0x8000000080000000;
    v32 = 2654435761u * *vbslq_s8(v35, v31, v30).i32;
    if (v34 >= 0.0)
    {
      if (v34 > 0.0)
      {
        v32 += v34;
      }
    }

    else
    {
      v32 -= fabsf(v34);
    }
  }

  else
  {
    v32 = 0;
  }

  return v80 ^ v81 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ (2654435761 * chemID) ^ v64 ^ v63 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v32;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  r0 = self->_r0;
  v6 = v4[99];
  v133 = v4;
  if (r0)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(OTAResistanceData *)r0 mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(OTAParamRC *)self setR0:?];
  }

  v4 = v133;
LABEL_7:
  r1 = self->_r1;
  v8 = v4[100];
  if (r1)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(OTAResistanceData *)r1 mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(OTAParamRC *)self setR1:?];
  }

  v4 = v133;
LABEL_13:
  baselineR1 = self->_baselineR1;
  v10 = v4[86];
  if (baselineR1)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(OTAResistanceData *)baselineR1 mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(OTAParamRC *)self setBaselineR1:?];
  }

  v4 = v133;
LABEL_19:
  r2 = self->_r2;
  v12 = v4[101];
  if (r2)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    [(OTAResistanceData *)r2 mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    [(OTAParamRC *)self setR2:?];
  }

  v4 = v133;
LABEL_25:
  baselineR2 = self->_baselineR2;
  v14 = v4[87];
  if (baselineR2)
  {
    if (!v14)
    {
      goto LABEL_31;
    }

    [(OTAResistanceData *)baselineR2 mergeFrom:?];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_31;
    }

    [(OTAParamRC *)self setBaselineR2:?];
  }

  v4 = v133;
LABEL_31:
  rCFreq1 = self->_rCFreq1;
  v16 = v4[103];
  if (rCFreq1)
  {
    if (!v16)
    {
      goto LABEL_37;
    }

    [(OTAResistanceData *)rCFreq1 mergeFrom:?];
  }

  else
  {
    if (!v16)
    {
      goto LABEL_37;
    }

    [(OTAParamRC *)self setRCFreq1:?];
  }

  v4 = v133;
LABEL_37:
  rCFreq2 = self->_rCFreq2;
  v18 = v4[104];
  if (rCFreq2)
  {
    if (!v18)
    {
      goto LABEL_43;
    }

    [(OTAResistanceData *)rCFreq2 mergeFrom:?];
  }

  else
  {
    if (!v18)
    {
      goto LABEL_43;
    }

    [(OTAParamRC *)self setRCFreq2:?];
  }

  v4 = v133;
LABEL_43:
  rCFreq3 = self->_rCFreq3;
  v20 = v4[105];
  if (rCFreq3)
  {
    if (!v20)
    {
      goto LABEL_49;
    }

    [(OTAResistanceData *)rCFreq3 mergeFrom:?];
  }

  else
  {
    if (!v20)
    {
      goto LABEL_49;
    }

    [(OTAParamRC *)self setRCFreq3:?];
  }

  v4 = v133;
LABEL_49:
  v21 = [v4 agingCoeffForR0sCount];
  if (v21)
  {
    v22 = v21;
    for (i = 0; i != v22; ++i)
    {
      [v133 agingCoeffForR0AtIndex:i];
      [(OTAParamRC *)self addAgingCoeffForR0:?];
    }
  }

  v24 = [v133 agingCoeffForR0TemperatureCoeffsCount];
  if (v24)
  {
    v25 = v24;
    for (j = 0; j != v25; ++j)
    {
      [v133 agingCoeffForR0TemperatureCoeffAtIndex:j];
      [(OTAParamRC *)self addAgingCoeffForR0TemperatureCoeff:?];
    }
  }

  v27 = [v133 agingCoeffForR1sCount];
  if (v27)
  {
    v28 = v27;
    for (k = 0; k != v28; ++k)
    {
      [v133 agingCoeffForR1AtIndex:k];
      [(OTAParamRC *)self addAgingCoeffForR1:?];
    }
  }

  v30 = [v133 agingCoeffForR1TemperatureCoeffsCount];
  if (v30)
  {
    v31 = v30;
    for (m = 0; m != v31; ++m)
    {
      [v133 agingCoeffForR1TemperatureCoeffAtIndex:m];
      [(OTAParamRC *)self addAgingCoeffForR1TemperatureCoeff:?];
    }
  }

  v33 = [v133 agingCoeffForR2sCount];
  if (v33)
  {
    v34 = v33;
    for (n = 0; n != v34; ++n)
    {
      [v133 agingCoeffForR2AtIndex:n];
      [(OTAParamRC *)self addAgingCoeffForR2:?];
    }
  }

  v36 = [v133 agingCoeffForR2TemperatureCoeffsCount];
  if (v36)
  {
    v37 = v36;
    for (ii = 0; ii != v37; ++ii)
    {
      [v133 agingCoeffForR2TemperatureCoeffAtIndex:ii];
      [(OTAParamRC *)self addAgingCoeffForR2TemperatureCoeff:?];
    }
  }

  v39 = [v133 baselineRdcsCount];
  if (v39)
  {
    v40 = v39;
    for (jj = 0; jj != v40; ++jj)
    {
      [v133 baselineRdcAtIndex:jj];
      [(OTAParamRC *)self addBaselineRdc:?];
    }
  }

  baselineR0 = self->_baselineR0;
  v43 = v133;
  v44 = *(v133 + 85);
  if (baselineR0)
  {
    if (!v44)
    {
      goto LABEL_76;
    }

    [(OTAResistanceData *)baselineR0 mergeFrom:?];
  }

  else
  {
    if (!v44)
    {
      goto LABEL_76;
    }

    [(OTAParamRC *)self setBaselineR0:?];
  }

  v43 = v133;
LABEL_76:
  bmuResistance = self->_bmuResistance;
  v46 = *(v43 + 95);
  if (bmuResistance)
  {
    if (!v46)
    {
      goto LABEL_82;
    }

    [(OTABMUResistance *)bmuResistance mergeFrom:?];
  }

  else
  {
    if (!v46)
    {
      goto LABEL_82;
    }

    [(OTAParamRC *)self setBmuResistance:?];
  }

  v43 = v133;
LABEL_82:
  self->_chemID = *(v43 + 192);
  v47 = [v43 gridOCVsCount];
  if (v47)
  {
    v48 = v47;
    for (kk = 0; kk != v48; ++kk)
    {
      [v133 gridOCVAtIndex:kk];
      [(OTAParamRC *)self addGridOCV:?];
    }
  }

  baselineR3 = self->_baselineR3;
  v51 = v133;
  v52 = *(v133 + 88);
  if (baselineR3)
  {
    if (!v52)
    {
      goto LABEL_91;
    }

    [(OTAResistanceData *)baselineR3 mergeFrom:?];
  }

  else
  {
    if (!v52)
    {
      goto LABEL_91;
    }

    [(OTAParamRC *)self setBaselineR3:?];
  }

  v51 = v133;
LABEL_91:
  v53 = *(v51 + 868);
  if ((v53 & 8) != 0)
  {
    self->_maxRdcRatio = *(v51 + 195);
    *&self->_has |= 8u;
    v53 = *(v51 + 868);
    if ((v53 & 0x10) == 0)
    {
LABEL_93:
      if ((v53 & 1) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_94;
    }
  }

  else if ((*(v51 + 868) & 0x10) == 0)
  {
    goto LABEL_93;
  }

  self->_maxRdcRatioR2Extrap = *(v51 + 196);
  *&self->_has |= 0x10u;
  if (*(v51 + 868))
  {
LABEL_94:
    self->_baselineWRdc = *(v51 + 188);
    *&self->_has |= 1u;
  }

LABEL_95:
  v54 = [v51 slopeForR0ExtrapsCount];
  if (v54)
  {
    v55 = v54;
    for (mm = 0; mm != v55; ++mm)
    {
      [v133 slopeForR0ExtrapAtIndex:mm];
      [(OTAParamRC *)self addSlopeForR0Extrap:?];
    }
  }

  v57 = [v133 slopeForR1ExtrapsCount];
  if (v57)
  {
    v58 = v57;
    for (nn = 0; nn != v58; ++nn)
    {
      [v133 slopeForR1ExtrapAtIndex:nn];
      [(OTAParamRC *)self addSlopeForR1Extrap:?];
    }
  }

  v60 = [v133 slopeForR2ExtrapsCount];
  if (v60)
  {
    v61 = v60;
    for (i1 = 0; i1 != v61; ++i1)
    {
      [v133 slopeForR2ExtrapAtIndex:i1];
      [(OTAParamRC *)self addSlopeForR2Extrap:?];
    }
  }

  v63 = [v133 slopeForR3ExtrapsCount];
  if (v63)
  {
    v64 = v63;
    for (i2 = 0; i2 != v64; ++i2)
    {
      [v133 slopeForR3ExtrapAtIndex:i2];
      [(OTAParamRC *)self addSlopeForR3Extrap:?];
    }
  }

  r3 = self->_r3;
  v67 = v133;
  v68 = *(v133 + 102);
  if (r3)
  {
    if (!v68)
    {
      goto LABEL_116;
    }

    [(OTAResistanceData *)r3 mergeFrom:?];
  }

  else
  {
    if (!v68)
    {
      goto LABEL_116;
    }

    [(OTAParamRC *)self setR3:?];
  }

  v67 = v133;
LABEL_116:
  rCFreq4 = self->_rCFreq4;
  v70 = v67[106];
  if (rCFreq4)
  {
    if (!v70)
    {
      goto LABEL_122;
    }

    [(OTAResistanceData *)rCFreq4 mergeFrom:?];
  }

  else
  {
    if (!v70)
    {
      goto LABEL_122;
    }

    [(OTAParamRC *)self setRCFreq4:?];
  }

  v67 = v133;
LABEL_122:
  baselineR4 = self->_baselineR4;
  v72 = v67[89];
  if (baselineR4)
  {
    if (!v72)
    {
      goto LABEL_128;
    }

    [(OTAResistanceData *)baselineR4 mergeFrom:?];
  }

  else
  {
    if (!v72)
    {
      goto LABEL_128;
    }

    [(OTAParamRC *)self setBaselineR4:?];
  }

  v67 = v133;
LABEL_128:
  baselineRCFreq1 = self->_baselineRCFreq1;
  v74 = v67[90];
  if (baselineRCFreq1)
  {
    if (!v74)
    {
      goto LABEL_134;
    }

    [(OTAResistanceData *)baselineRCFreq1 mergeFrom:?];
  }

  else
  {
    if (!v74)
    {
      goto LABEL_134;
    }

    [(OTAParamRC *)self setBaselineRCFreq1:?];
  }

  v67 = v133;
LABEL_134:
  baselineRCFreq2 = self->_baselineRCFreq2;
  v76 = v67[91];
  if (baselineRCFreq2)
  {
    if (!v76)
    {
      goto LABEL_140;
    }

    [(OTAResistanceData *)baselineRCFreq2 mergeFrom:?];
  }

  else
  {
    if (!v76)
    {
      goto LABEL_140;
    }

    [(OTAParamRC *)self setBaselineRCFreq2:?];
  }

  v67 = v133;
LABEL_140:
  baselineRCFreq3 = self->_baselineRCFreq3;
  v78 = v67[92];
  if (baselineRCFreq3)
  {
    if (!v78)
    {
      goto LABEL_146;
    }

    [(OTAResistanceData *)baselineRCFreq3 mergeFrom:?];
  }

  else
  {
    if (!v78)
    {
      goto LABEL_146;
    }

    [(OTAParamRC *)self setBaselineRCFreq3:?];
  }

  v67 = v133;
LABEL_146:
  baselineRCFreq4 = self->_baselineRCFreq4;
  v80 = v67[93];
  if (baselineRCFreq4)
  {
    if (!v80)
    {
      goto LABEL_152;
    }

    [(OTAResistanceData *)baselineRCFreq4 mergeFrom:?];
  }

  else
  {
    if (!v80)
    {
      goto LABEL_152;
    }

    [(OTAParamRC *)self setBaselineRCFreq4:?];
  }

  v67 = v133;
LABEL_152:
  v81 = [v67 agingCoeffForR3sCount];
  if (v81)
  {
    v82 = v81;
    for (i3 = 0; i3 != v82; ++i3)
    {
      [v133 agingCoeffForR3AtIndex:i3];
      [(OTAParamRC *)self addAgingCoeffForR3:?];
    }
  }

  v84 = [v133 agingCoeffForR3TemperatureCoeffsCount];
  if (v84)
  {
    v85 = v84;
    for (i4 = 0; i4 != v85; ++i4)
    {
      [v133 agingCoeffForR3TemperatureCoeffAtIndex:i4];
      [(OTAParamRC *)self addAgingCoeffForR3TemperatureCoeff:?];
    }
  }

  v87 = [v133 agingCoeffForRCFreq1sCount];
  if (v87)
  {
    v88 = v87;
    for (i5 = 0; i5 != v88; ++i5)
    {
      [v133 agingCoeffForRCFreq1AtIndex:i5];
      [(OTAParamRC *)self addAgingCoeffForRCFreq1:?];
    }
  }

  v90 = [v133 agingCoeffForRCFreq2sCount];
  if (v90)
  {
    v91 = v90;
    for (i6 = 0; i6 != v91; ++i6)
    {
      [v133 agingCoeffForRCFreq2AtIndex:i6];
      [(OTAParamRC *)self addAgingCoeffForRCFreq2:?];
    }
  }

  v93 = [v133 agingCoeffForRCFreq3sCount];
  if (v93)
  {
    v94 = v93;
    for (i7 = 0; i7 != v94; ++i7)
    {
      [v133 agingCoeffForRCFreq3AtIndex:i7];
      [(OTAParamRC *)self addAgingCoeffForRCFreq3:?];
    }
  }

  v96 = [v133 agingCoeffForRCFreq4sCount];
  if (v96)
  {
    v97 = v96;
    for (i8 = 0; i8 != v97; ++i8)
    {
      [v133 agingCoeffForRCFreq4AtIndex:i8];
      [(OTAParamRC *)self addAgingCoeffForRCFreq4:?];
    }
  }

  v99 = [v133 agingCoeffForRCFreq1TemperatureCoeffsCount];
  if (v99)
  {
    v100 = v99;
    for (i9 = 0; i9 != v100; ++i9)
    {
      [v133 agingCoeffForRCFreq1TemperatureCoeffAtIndex:i9];
      [(OTAParamRC *)self addAgingCoeffForRCFreq1TemperatureCoeff:?];
    }
  }

  v102 = [v133 agingCoeffForRCFreq2TemperatureCoeffsCount];
  if (v102)
  {
    v103 = v102;
    for (i10 = 0; i10 != v103; ++i10)
    {
      [v133 agingCoeffForRCFreq2TemperatureCoeffAtIndex:i10];
      [(OTAParamRC *)self addAgingCoeffForRCFreq2TemperatureCoeff:?];
    }
  }

  v105 = [v133 agingCoeffForRCFreq3TemperatureCoeffsCount];
  if (v105)
  {
    v106 = v105;
    for (i11 = 0; i11 != v106; ++i11)
    {
      [v133 agingCoeffForRCFreq3TemperatureCoeffAtIndex:i11];
      [(OTAParamRC *)self addAgingCoeffForRCFreq3TemperatureCoeff:?];
    }
  }

  v108 = [v133 agingCoeffForRCFreq4TemperatureCoeffsCount];
  if (v108)
  {
    v109 = v108;
    for (i12 = 0; i12 != v109; ++i12)
    {
      [v133 agingCoeffForRCFreq4TemperatureCoeffAtIndex:i12];
      [(OTAParamRC *)self addAgingCoeffForRCFreq4TemperatureCoeff:?];
    }
  }

  v111 = *(v133 + 868);
  if ((v111 & 2) != 0)
  {
    self->_mLBConfig = *(v133 + 193);
    *&self->_has |= 2u;
    v111 = *(v133 + 868);
  }

  if ((v111 & 0x20) != 0)
  {
    self->_wRdcRatioThresh = *(v133 + 216);
    *&self->_has |= 0x20u;
  }

  v112 = [v133 gridWRdcRatiosCount];
  if (v112)
  {
    v113 = v112;
    for (i13 = 0; i13 != v113; ++i13)
    {
      [v133 gridWRdcRatioAtIndex:i13];
      [(OTAParamRC *)self addGridWRdcRatio:?];
    }
  }

  v115 = [v133 coeffSOCsCount];
  if (v115)
  {
    v116 = v115;
    for (i14 = 0; i14 != v116; ++i14)
    {
      [v133 coeffSOCAtIndex:i14];
      [(OTAParamRC *)self addCoeffSOC:?];
    }
  }

  v118 = [v133 coeffVsCount];
  if (v118)
  {
    v119 = v118;
    for (i15 = 0; i15 != v119; ++i15)
    {
      [v133 coeffVAtIndex:i15];
      [(OTAParamRC *)self addCoeffV:?];
    }
  }

  rdc = self->_rdc;
  v122 = v133;
  v123 = *(v133 + 107);
  if (rdc)
  {
    if (!v123)
    {
      goto LABEL_201;
    }

    [(OTAResistanceData *)rdc mergeFrom:?];
  }

  else
  {
    if (!v123)
    {
      goto LABEL_201;
    }

    [(OTAParamRC *)self setRdc:?];
  }

  v122 = v133;
LABEL_201:
  v124 = [v122 agingCoeffForRdcsCount];
  if (v124)
  {
    v125 = v124;
    for (i16 = 0; i16 != v125; ++i16)
    {
      [v133 agingCoeffForRdcAtIndex:i16];
      [(OTAParamRC *)self addAgingCoeffForRdc:?];
    }
  }

  v127 = [v133 agingCoeffForRdcTemperatureCoeffsCount];
  if (v127)
  {
    v128 = v127;
    for (i17 = 0; i17 != v128; ++i17)
    {
      [v133 agingCoeffForRdcTemperatureCoeffAtIndex:i17];
      [(OTAParamRC *)self addAgingCoeffForRdcTemperatureCoeff:?];
    }
  }

  v130 = [v133 qmaxsCount];
  if (v130)
  {
    v131 = v130;
    for (i18 = 0; i18 != v131; ++i18)
    {
      [v133 qmaxAtIndex:i18];
      [(OTAParamRC *)self addQmax:?];
    }
  }

  if ((*(v133 + 868) & 4) != 0)
  {
    self->_maxRdcR25Ratio = *(v133 + 194);
    *&self->_has |= 4u;
  }
}

@end