@interface OTAParamRC
- (BOOL)isEqual:(id)equal;
- (float)agingCoeffForR0AtIndex:(unint64_t)index;
- (float)agingCoeffForR0TemperatureCoeffAtIndex:(unint64_t)index;
- (float)agingCoeffForR1AtIndex:(unint64_t)index;
- (float)agingCoeffForR1TemperatureCoeffAtIndex:(unint64_t)index;
- (float)agingCoeffForR2AtIndex:(unint64_t)index;
- (float)agingCoeffForR2TemperatureCoeffAtIndex:(unint64_t)index;
- (float)agingCoeffForR3AtIndex:(unint64_t)index;
- (float)agingCoeffForR3TemperatureCoeffAtIndex:(unint64_t)index;
- (float)agingCoeffForRCFreq1AtIndex:(unint64_t)index;
- (float)agingCoeffForRCFreq1TemperatureCoeffAtIndex:(unint64_t)index;
- (float)agingCoeffForRCFreq2AtIndex:(unint64_t)index;
- (float)agingCoeffForRCFreq2TemperatureCoeffAtIndex:(unint64_t)index;
- (float)agingCoeffForRCFreq3AtIndex:(unint64_t)index;
- (float)agingCoeffForRCFreq3TemperatureCoeffAtIndex:(unint64_t)index;
- (float)agingCoeffForRCFreq4AtIndex:(unint64_t)index;
- (float)agingCoeffForRCFreq4TemperatureCoeffAtIndex:(unint64_t)index;
- (float)agingCoeffForRdcAtIndex:(unint64_t)index;
- (float)agingCoeffForRdcTemperatureCoeffAtIndex:(unint64_t)index;
- (float)baselineRdcAtIndex:(unint64_t)index;
- (float)coeffSOCAtIndex:(unint64_t)index;
- (float)coeffVAtIndex:(unint64_t)index;
- (float)gridOCVAtIndex:(unint64_t)index;
- (float)gridWRdcRatioAtIndex:(unint64_t)index;
- (float)qmaxAtIndex:(unint64_t)index;
- (float)slopeForR0ExtrapAtIndex:(unint64_t)index;
- (float)slopeForR1ExtrapAtIndex:(unint64_t)index;
- (float)slopeForR2ExtrapAtIndex:(unint64_t)index;
- (float)slopeForR3ExtrapAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMLBConfig:(id)config;
- (int)mLBConfig;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasMLBConfig:(BOOL)config;
- (void)setHasMaxRdcR25Ratio:(BOOL)ratio;
- (void)setHasMaxRdcRatio:(BOOL)ratio;
- (void)setHasMaxRdcRatioR2Extrap:(BOOL)extrap;
- (void)setHasWRdcRatioThresh:(BOOL)thresh;
- (void)writeTo:(id)to;
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

- (float)agingCoeffForR0AtIndex:(unint64_t)index
{
  p_agingCoeffForR0s = &self->_agingCoeffForR0s;
  count = self->_agingCoeffForR0s.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForR0s->list[index];
}

- (float)agingCoeffForR0TemperatureCoeffAtIndex:(unint64_t)index
{
  p_agingCoeffForR0TemperatureCoeffs = &self->_agingCoeffForR0TemperatureCoeffs;
  count = self->_agingCoeffForR0TemperatureCoeffs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForR0TemperatureCoeffs->list[index];
}

- (float)agingCoeffForR1AtIndex:(unint64_t)index
{
  p_agingCoeffForR1s = &self->_agingCoeffForR1s;
  count = self->_agingCoeffForR1s.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForR1s->list[index];
}

- (float)agingCoeffForR1TemperatureCoeffAtIndex:(unint64_t)index
{
  p_agingCoeffForR1TemperatureCoeffs = &self->_agingCoeffForR1TemperatureCoeffs;
  count = self->_agingCoeffForR1TemperatureCoeffs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForR1TemperatureCoeffs->list[index];
}

- (float)agingCoeffForR2AtIndex:(unint64_t)index
{
  p_agingCoeffForR2s = &self->_agingCoeffForR2s;
  count = self->_agingCoeffForR2s.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForR2s->list[index];
}

- (float)agingCoeffForR2TemperatureCoeffAtIndex:(unint64_t)index
{
  p_agingCoeffForR2TemperatureCoeffs = &self->_agingCoeffForR2TemperatureCoeffs;
  count = self->_agingCoeffForR2TemperatureCoeffs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForR2TemperatureCoeffs->list[index];
}

- (float)baselineRdcAtIndex:(unint64_t)index
{
  p_baselineRdcs = &self->_baselineRdcs;
  count = self->_baselineRdcs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_baselineRdcs->list[index];
}

- (float)gridOCVAtIndex:(unint64_t)index
{
  p_gridOCVs = &self->_gridOCVs;
  count = self->_gridOCVs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_gridOCVs->list[index];
}

- (void)setHasMaxRdcRatio:(BOOL)ratio
{
  if (ratio)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMaxRdcRatioR2Extrap:(BOOL)extrap
{
  if (extrap)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (float)slopeForR0ExtrapAtIndex:(unint64_t)index
{
  p_slopeForR0Extraps = &self->_slopeForR0Extraps;
  count = self->_slopeForR0Extraps.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_slopeForR0Extraps->list[index];
}

- (float)slopeForR1ExtrapAtIndex:(unint64_t)index
{
  p_slopeForR1Extraps = &self->_slopeForR1Extraps;
  count = self->_slopeForR1Extraps.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_slopeForR1Extraps->list[index];
}

- (float)slopeForR2ExtrapAtIndex:(unint64_t)index
{
  p_slopeForR2Extraps = &self->_slopeForR2Extraps;
  count = self->_slopeForR2Extraps.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_slopeForR2Extraps->list[index];
}

- (float)slopeForR3ExtrapAtIndex:(unint64_t)index
{
  p_slopeForR3Extraps = &self->_slopeForR3Extraps;
  count = self->_slopeForR3Extraps.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_slopeForR3Extraps->list[index];
}

- (float)agingCoeffForR3AtIndex:(unint64_t)index
{
  p_agingCoeffForR3s = &self->_agingCoeffForR3s;
  count = self->_agingCoeffForR3s.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForR3s->list[index];
}

- (float)agingCoeffForR3TemperatureCoeffAtIndex:(unint64_t)index
{
  p_agingCoeffForR3TemperatureCoeffs = &self->_agingCoeffForR3TemperatureCoeffs;
  count = self->_agingCoeffForR3TemperatureCoeffs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForR3TemperatureCoeffs->list[index];
}

- (float)agingCoeffForRCFreq1AtIndex:(unint64_t)index
{
  p_agingCoeffForRCFreq1s = &self->_agingCoeffForRCFreq1s;
  count = self->_agingCoeffForRCFreq1s.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForRCFreq1s->list[index];
}

- (float)agingCoeffForRCFreq2AtIndex:(unint64_t)index
{
  p_agingCoeffForRCFreq2s = &self->_agingCoeffForRCFreq2s;
  count = self->_agingCoeffForRCFreq2s.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForRCFreq2s->list[index];
}

- (float)agingCoeffForRCFreq3AtIndex:(unint64_t)index
{
  p_agingCoeffForRCFreq3s = &self->_agingCoeffForRCFreq3s;
  count = self->_agingCoeffForRCFreq3s.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForRCFreq3s->list[index];
}

- (float)agingCoeffForRCFreq4AtIndex:(unint64_t)index
{
  p_agingCoeffForRCFreq4s = &self->_agingCoeffForRCFreq4s;
  count = self->_agingCoeffForRCFreq4s.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForRCFreq4s->list[index];
}

- (float)agingCoeffForRCFreq1TemperatureCoeffAtIndex:(unint64_t)index
{
  p_agingCoeffForRCFreq1TemperatureCoeffs = &self->_agingCoeffForRCFreq1TemperatureCoeffs;
  count = self->_agingCoeffForRCFreq1TemperatureCoeffs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForRCFreq1TemperatureCoeffs->list[index];
}

- (float)agingCoeffForRCFreq2TemperatureCoeffAtIndex:(unint64_t)index
{
  p_agingCoeffForRCFreq2TemperatureCoeffs = &self->_agingCoeffForRCFreq2TemperatureCoeffs;
  count = self->_agingCoeffForRCFreq2TemperatureCoeffs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForRCFreq2TemperatureCoeffs->list[index];
}

- (float)agingCoeffForRCFreq3TemperatureCoeffAtIndex:(unint64_t)index
{
  p_agingCoeffForRCFreq3TemperatureCoeffs = &self->_agingCoeffForRCFreq3TemperatureCoeffs;
  count = self->_agingCoeffForRCFreq3TemperatureCoeffs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForRCFreq3TemperatureCoeffs->list[index];
}

- (float)agingCoeffForRCFreq4TemperatureCoeffAtIndex:(unint64_t)index
{
  p_agingCoeffForRCFreq4TemperatureCoeffs = &self->_agingCoeffForRCFreq4TemperatureCoeffs;
  count = self->_agingCoeffForRCFreq4TemperatureCoeffs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForRCFreq4TemperatureCoeffs->list[index];
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

- (void)setHasMLBConfig:(BOOL)config
{
  if (config)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsMLBConfig:(id)config
{
  configCopy = config;
  if ([configCopy isEqualToString:@"kPPMRegularMLB"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [configCopy isEqualToString:@"kPPMNorthSouthSplitMLB"];
  }

  return v4;
}

- (void)setHasWRdcRatioThresh:(BOOL)thresh
{
  if (thresh)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (float)gridWRdcRatioAtIndex:(unint64_t)index
{
  p_gridWRdcRatios = &self->_gridWRdcRatios;
  count = self->_gridWRdcRatios.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_gridWRdcRatios->list[index];
}

- (float)coeffSOCAtIndex:(unint64_t)index
{
  p_coeffSOCs = &self->_coeffSOCs;
  count = self->_coeffSOCs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_coeffSOCs->list[index];
}

- (float)coeffVAtIndex:(unint64_t)index
{
  p_coeffVs = &self->_coeffVs;
  count = self->_coeffVs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_coeffVs->list[index];
}

- (float)agingCoeffForRdcAtIndex:(unint64_t)index
{
  p_agingCoeffForRdcs = &self->_agingCoeffForRdcs;
  count = self->_agingCoeffForRdcs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForRdcs->list[index];
}

- (float)agingCoeffForRdcTemperatureCoeffAtIndex:(unint64_t)index
{
  p_agingCoeffForRdcTemperatureCoeffs = &self->_agingCoeffForRdcTemperatureCoeffs;
  count = self->_agingCoeffForRdcTemperatureCoeffs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_agingCoeffForRdcTemperatureCoeffs->list[index];
}

- (float)qmaxAtIndex:(unint64_t)index
{
  p_qmaxs = &self->_qmaxs;
  count = self->_qmaxs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_qmaxs->list[index];
}

- (void)setHasMaxRdcR25Ratio:(BOOL)ratio
{
  if (ratio)
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
  dictionaryRepresentation = [(OTAParamRC *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  r0 = self->_r0;
  if (r0)
  {
    dictionaryRepresentation = [(OTAResistanceData *)r0 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"R0"];
  }

  r1 = self->_r1;
  if (r1)
  {
    dictionaryRepresentation2 = [(OTAResistanceData *)r1 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"R1"];
  }

  baselineR1 = self->_baselineR1;
  if (baselineR1)
  {
    dictionaryRepresentation3 = [(OTAResistanceData *)baselineR1 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"baselineR1"];
  }

  r2 = self->_r2;
  if (r2)
  {
    dictionaryRepresentation4 = [(OTAResistanceData *)r2 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation4 forKey:@"R2"];
  }

  baselineR2 = self->_baselineR2;
  if (baselineR2)
  {
    dictionaryRepresentation5 = [(OTAResistanceData *)baselineR2 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation5 forKey:@"baselineR2"];
  }

  rCFreq1 = self->_rCFreq1;
  if (rCFreq1)
  {
    dictionaryRepresentation6 = [(OTAResistanceData *)rCFreq1 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation6 forKey:@"RCFreq1"];
  }

  rCFreq2 = self->_rCFreq2;
  if (rCFreq2)
  {
    dictionaryRepresentation7 = [(OTAResistanceData *)rCFreq2 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation7 forKey:@"RCFreq2"];
  }

  rCFreq3 = self->_rCFreq3;
  if (rCFreq3)
  {
    dictionaryRepresentation8 = [(OTAResistanceData *)rCFreq3 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation8 forKey:@"RCFreq3"];
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
    dictionaryRepresentation9 = [(OTAResistanceData *)baselineR0 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation9 forKey:@"baselineR0"];
  }

  bmuResistance = self->_bmuResistance;
  if (bmuResistance)
  {
    dictionaryRepresentation10 = [(OTABMUResistance *)bmuResistance dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation10 forKey:@"bmuResistance"];
  }

  v31 = [NSNumber numberWithUnsignedInt:self->_chemID];
  [v3 setObject:v31 forKey:@"chemID"];

  v32 = PBRepeatedFloatNSArray();
  [v3 setObject:v32 forKey:@"gridOCV"];

  baselineR3 = self->_baselineR3;
  if (baselineR3)
  {
    dictionaryRepresentation11 = [(OTAResistanceData *)baselineR3 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation11 forKey:@"baselineR3"];
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
    dictionaryRepresentation12 = [(OTAResistanceData *)r3 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation12 forKey:@"R3"];
  }

  rCFreq4 = self->_rCFreq4;
  if (rCFreq4)
  {
    dictionaryRepresentation13 = [(OTAResistanceData *)rCFreq4 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation13 forKey:@"RCFreq4"];
  }

  baselineR4 = self->_baselineR4;
  if (baselineR4)
  {
    dictionaryRepresentation14 = [(OTAResistanceData *)baselineR4 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation14 forKey:@"baselineR4"];
  }

  baselineRCFreq1 = self->_baselineRCFreq1;
  if (baselineRCFreq1)
  {
    dictionaryRepresentation15 = [(OTAResistanceData *)baselineRCFreq1 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation15 forKey:@"baselineRCFreq1"];
  }

  baselineRCFreq2 = self->_baselineRCFreq2;
  if (baselineRCFreq2)
  {
    dictionaryRepresentation16 = [(OTAResistanceData *)baselineRCFreq2 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation16 forKey:@"baselineRCFreq2"];
  }

  baselineRCFreq3 = self->_baselineRCFreq3;
  if (baselineRCFreq3)
  {
    dictionaryRepresentation17 = [(OTAResistanceData *)baselineRCFreq3 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation17 forKey:@"baselineRCFreq3"];
  }

  baselineRCFreq4 = self->_baselineRCFreq4;
  if (baselineRCFreq4)
  {
    dictionaryRepresentation18 = [(OTAResistanceData *)baselineRCFreq4 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation18 forKey:@"baselineRCFreq4"];
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
    dictionaryRepresentation19 = [(OTAResistanceData *)rdc dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation19 forKey:@"Rdc"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
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
  v22 = toCopy;
  if ((has & 8) != 0)
  {
    maxRdcRatio = self->_maxRdcRatio;
    PBDataWriterWriteFloatField();
    v22 = toCopy;
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
  v22 = toCopy;
  if (*&self->_has)
  {
LABEL_50:
    baselineWRdc = self->_baselineWRdc;
    PBDataWriterWriteFloatField();
    v22 = toCopy;
  }

LABEL_51:
  if (self->_slopeForR0Extraps.count)
  {
    v24 = 0;
    do
    {
      v25 = self->_slopeForR0Extraps.list[v24];
      PBDataWriterWriteFloatField();
      v22 = toCopy;
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
      v22 = toCopy;
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
      v22 = toCopy;
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
      v22 = toCopy;
      ++v30;
    }

    while (v30 < self->_slopeForR3Extraps.count);
  }

  if (self->_r3)
  {
    PBDataWriterWriteSubmessage();
    v22 = toCopy;
  }

  if (self->_rCFreq4)
  {
    PBDataWriterWriteSubmessage();
    v22 = toCopy;
  }

  if (self->_baselineR4)
  {
    PBDataWriterWriteSubmessage();
    v22 = toCopy;
  }

  if (self->_baselineRCFreq1)
  {
    PBDataWriterWriteSubmessage();
    v22 = toCopy;
  }

  if (self->_baselineRCFreq2)
  {
    PBDataWriterWriteSubmessage();
    v22 = toCopy;
  }

  if (self->_baselineRCFreq3)
  {
    PBDataWriterWriteSubmessage();
    v22 = toCopy;
  }

  if (self->_baselineRCFreq4)
  {
    PBDataWriterWriteSubmessage();
    v22 = toCopy;
  }

  if (self->_agingCoeffForR3s.count)
  {
    v32 = 0;
    do
    {
      v33 = self->_agingCoeffForR3s.list[v32];
      PBDataWriterWriteFloatField();
      v22 = toCopy;
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
      v22 = toCopy;
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
      v22 = toCopy;
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
      v22 = toCopy;
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
      v22 = toCopy;
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
      v22 = toCopy;
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
      v22 = toCopy;
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
      v22 = toCopy;
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
      v22 = toCopy;
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
      v22 = toCopy;
      ++v50;
    }

    while (v50 < self->_agingCoeffForRCFreq4TemperatureCoeffs.count);
  }

  v52 = self->_has;
  if ((v52 & 2) != 0)
  {
    mLBConfig = self->_mLBConfig;
    PBDataWriterWriteInt32Field();
    v22 = toCopy;
    v52 = self->_has;
  }

  if ((v52 & 0x20) != 0)
  {
    wRdcRatioThresh = self->_wRdcRatioThresh;
    PBDataWriterWriteFloatField();
    v22 = toCopy;
  }

  if (self->_gridWRdcRatios.count)
  {
    v55 = 0;
    do
    {
      v56 = self->_gridWRdcRatios.list[v55];
      PBDataWriterWriteFloatField();
      v22 = toCopy;
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
      v22 = toCopy;
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
      v22 = toCopy;
      ++v59;
    }

    while (v59 < self->_coeffVs.count);
  }

  if (self->_rdc)
  {
    PBDataWriterWriteSubmessage();
    v22 = toCopy;
  }

  if (self->_agingCoeffForRdcs.count)
  {
    v61 = 0;
    do
    {
      v62 = self->_agingCoeffForRdcs.list[v61];
      PBDataWriterWriteFloatField();
      v22 = toCopy;
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
      v22 = toCopy;
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
      v22 = toCopy;
      ++v65;
    }

    while (v65 < self->_qmaxs.count);
  }

  if ((*&self->_has & 4) != 0)
  {
    maxRdcR25Ratio = self->_maxRdcR25Ratio;
    PBDataWriterWriteFloatField();
    v22 = toCopy;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_r0)
  {
    [toCopy setR0:?];
  }

  if (self->_r1)
  {
    [toCopy setR1:?];
  }

  if (self->_baselineR1)
  {
    [toCopy setBaselineR1:?];
  }

  if (self->_r2)
  {
    [toCopy setR2:?];
  }

  if (self->_baselineR2)
  {
    [toCopy setBaselineR2:?];
  }

  if (self->_rCFreq1)
  {
    [toCopy setRCFreq1:?];
  }

  if (self->_rCFreq2)
  {
    [toCopy setRCFreq2:?];
  }

  if (self->_rCFreq3)
  {
    [toCopy setRCFreq3:?];
  }

  if ([(OTAParamRC *)self agingCoeffForR0sCount])
  {
    [toCopy clearAgingCoeffForR0s];
    agingCoeffForR0sCount = [(OTAParamRC *)self agingCoeffForR0sCount];
    if (agingCoeffForR0sCount)
    {
      v5 = agingCoeffForR0sCount;
      for (i = 0; i != v5; ++i)
      {
        [(OTAParamRC *)self agingCoeffForR0AtIndex:i];
        [toCopy addAgingCoeffForR0:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForR0TemperatureCoeffsCount])
  {
    [toCopy clearAgingCoeffForR0TemperatureCoeffs];
    agingCoeffForR0TemperatureCoeffsCount = [(OTAParamRC *)self agingCoeffForR0TemperatureCoeffsCount];
    if (agingCoeffForR0TemperatureCoeffsCount)
    {
      v8 = agingCoeffForR0TemperatureCoeffsCount;
      for (j = 0; j != v8; ++j)
      {
        [(OTAParamRC *)self agingCoeffForR0TemperatureCoeffAtIndex:j];
        [toCopy addAgingCoeffForR0TemperatureCoeff:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForR1sCount])
  {
    [toCopy clearAgingCoeffForR1s];
    agingCoeffForR1sCount = [(OTAParamRC *)self agingCoeffForR1sCount];
    if (agingCoeffForR1sCount)
    {
      v11 = agingCoeffForR1sCount;
      for (k = 0; k != v11; ++k)
      {
        [(OTAParamRC *)self agingCoeffForR1AtIndex:k];
        [toCopy addAgingCoeffForR1:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForR1TemperatureCoeffsCount])
  {
    [toCopy clearAgingCoeffForR1TemperatureCoeffs];
    agingCoeffForR1TemperatureCoeffsCount = [(OTAParamRC *)self agingCoeffForR1TemperatureCoeffsCount];
    if (agingCoeffForR1TemperatureCoeffsCount)
    {
      v14 = agingCoeffForR1TemperatureCoeffsCount;
      for (m = 0; m != v14; ++m)
      {
        [(OTAParamRC *)self agingCoeffForR1TemperatureCoeffAtIndex:m];
        [toCopy addAgingCoeffForR1TemperatureCoeff:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForR2sCount])
  {
    [toCopy clearAgingCoeffForR2s];
    agingCoeffForR2sCount = [(OTAParamRC *)self agingCoeffForR2sCount];
    if (agingCoeffForR2sCount)
    {
      v17 = agingCoeffForR2sCount;
      for (n = 0; n != v17; ++n)
      {
        [(OTAParamRC *)self agingCoeffForR2AtIndex:n];
        [toCopy addAgingCoeffForR2:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForR2TemperatureCoeffsCount])
  {
    [toCopy clearAgingCoeffForR2TemperatureCoeffs];
    agingCoeffForR2TemperatureCoeffsCount = [(OTAParamRC *)self agingCoeffForR2TemperatureCoeffsCount];
    if (agingCoeffForR2TemperatureCoeffsCount)
    {
      v20 = agingCoeffForR2TemperatureCoeffsCount;
      for (ii = 0; ii != v20; ++ii)
      {
        [(OTAParamRC *)self agingCoeffForR2TemperatureCoeffAtIndex:ii];
        [toCopy addAgingCoeffForR2TemperatureCoeff:?];
      }
    }
  }

  if ([(OTAParamRC *)self baselineRdcsCount])
  {
    [toCopy clearBaselineRdcs];
    baselineRdcsCount = [(OTAParamRC *)self baselineRdcsCount];
    if (baselineRdcsCount)
    {
      v23 = baselineRdcsCount;
      for (jj = 0; jj != v23; ++jj)
      {
        [(OTAParamRC *)self baselineRdcAtIndex:jj];
        [toCopy addBaselineRdc:?];
      }
    }
  }

  if (self->_baselineR0)
  {
    [toCopy setBaselineR0:?];
  }

  v25 = toCopy;
  if (self->_bmuResistance)
  {
    [toCopy setBmuResistance:?];
    v25 = toCopy;
  }

  v25[192] = self->_chemID;
  if ([(OTAParamRC *)self gridOCVsCount])
  {
    [toCopy clearGridOCVs];
    gridOCVsCount = [(OTAParamRC *)self gridOCVsCount];
    if (gridOCVsCount)
    {
      v27 = gridOCVsCount;
      for (kk = 0; kk != v27; ++kk)
      {
        [(OTAParamRC *)self gridOCVAtIndex:kk];
        [toCopy addGridOCV:?];
      }
    }
  }

  if (self->_baselineR3)
  {
    [toCopy setBaselineR3:?];
  }

  has = self->_has;
  if ((has & 8) == 0)
  {
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_57;
    }

LABEL_165:
    *(toCopy + 196) = LODWORD(self->_maxRdcRatioR2Extrap);
    *(toCopy + 868) |= 0x10u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  *(toCopy + 195) = LODWORD(self->_maxRdcRatio);
  *(toCopy + 868) |= 8u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_165;
  }

LABEL_57:
  if (has)
  {
LABEL_58:
    *(toCopy + 188) = LODWORD(self->_baselineWRdc);
    *(toCopy + 868) |= 1u;
  }

LABEL_59:
  if ([(OTAParamRC *)self slopeForR0ExtrapsCount])
  {
    [toCopy clearSlopeForR0Extraps];
    slopeForR0ExtrapsCount = [(OTAParamRC *)self slopeForR0ExtrapsCount];
    if (slopeForR0ExtrapsCount)
    {
      v31 = slopeForR0ExtrapsCount;
      for (mm = 0; mm != v31; ++mm)
      {
        [(OTAParamRC *)self slopeForR0ExtrapAtIndex:mm];
        [toCopy addSlopeForR0Extrap:?];
      }
    }
  }

  if ([(OTAParamRC *)self slopeForR1ExtrapsCount])
  {
    [toCopy clearSlopeForR1Extraps];
    slopeForR1ExtrapsCount = [(OTAParamRC *)self slopeForR1ExtrapsCount];
    if (slopeForR1ExtrapsCount)
    {
      v34 = slopeForR1ExtrapsCount;
      for (nn = 0; nn != v34; ++nn)
      {
        [(OTAParamRC *)self slopeForR1ExtrapAtIndex:nn];
        [toCopy addSlopeForR1Extrap:?];
      }
    }
  }

  if ([(OTAParamRC *)self slopeForR2ExtrapsCount])
  {
    [toCopy clearSlopeForR2Extraps];
    slopeForR2ExtrapsCount = [(OTAParamRC *)self slopeForR2ExtrapsCount];
    if (slopeForR2ExtrapsCount)
    {
      v37 = slopeForR2ExtrapsCount;
      for (i1 = 0; i1 != v37; ++i1)
      {
        [(OTAParamRC *)self slopeForR2ExtrapAtIndex:i1];
        [toCopy addSlopeForR2Extrap:?];
      }
    }
  }

  if ([(OTAParamRC *)self slopeForR3ExtrapsCount])
  {
    [toCopy clearSlopeForR3Extraps];
    slopeForR3ExtrapsCount = [(OTAParamRC *)self slopeForR3ExtrapsCount];
    if (slopeForR3ExtrapsCount)
    {
      v40 = slopeForR3ExtrapsCount;
      for (i2 = 0; i2 != v40; ++i2)
      {
        [(OTAParamRC *)self slopeForR3ExtrapAtIndex:i2];
        [toCopy addSlopeForR3Extrap:?];
      }
    }
  }

  if (self->_r3)
  {
    [toCopy setR3:?];
  }

  if (self->_rCFreq4)
  {
    [toCopy setRCFreq4:?];
  }

  if (self->_baselineR4)
  {
    [toCopy setBaselineR4:?];
  }

  if (self->_baselineRCFreq1)
  {
    [toCopy setBaselineRCFreq1:?];
  }

  if (self->_baselineRCFreq2)
  {
    [toCopy setBaselineRCFreq2:?];
  }

  if (self->_baselineRCFreq3)
  {
    [toCopy setBaselineRCFreq3:?];
  }

  if (self->_baselineRCFreq4)
  {
    [toCopy setBaselineRCFreq4:?];
  }

  if ([(OTAParamRC *)self agingCoeffForR3sCount])
  {
    [toCopy clearAgingCoeffForR3s];
    agingCoeffForR3sCount = [(OTAParamRC *)self agingCoeffForR3sCount];
    if (agingCoeffForR3sCount)
    {
      v43 = agingCoeffForR3sCount;
      for (i3 = 0; i3 != v43; ++i3)
      {
        [(OTAParamRC *)self agingCoeffForR3AtIndex:i3];
        [toCopy addAgingCoeffForR3:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForR3TemperatureCoeffsCount])
  {
    [toCopy clearAgingCoeffForR3TemperatureCoeffs];
    agingCoeffForR3TemperatureCoeffsCount = [(OTAParamRC *)self agingCoeffForR3TemperatureCoeffsCount];
    if (agingCoeffForR3TemperatureCoeffsCount)
    {
      v46 = agingCoeffForR3TemperatureCoeffsCount;
      for (i4 = 0; i4 != v46; ++i4)
      {
        [(OTAParamRC *)self agingCoeffForR3TemperatureCoeffAtIndex:i4];
        [toCopy addAgingCoeffForR3TemperatureCoeff:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForRCFreq1sCount])
  {
    [toCopy clearAgingCoeffForRCFreq1s];
    agingCoeffForRCFreq1sCount = [(OTAParamRC *)self agingCoeffForRCFreq1sCount];
    if (agingCoeffForRCFreq1sCount)
    {
      v49 = agingCoeffForRCFreq1sCount;
      for (i5 = 0; i5 != v49; ++i5)
      {
        [(OTAParamRC *)self agingCoeffForRCFreq1AtIndex:i5];
        [toCopy addAgingCoeffForRCFreq1:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForRCFreq2sCount])
  {
    [toCopy clearAgingCoeffForRCFreq2s];
    agingCoeffForRCFreq2sCount = [(OTAParamRC *)self agingCoeffForRCFreq2sCount];
    if (agingCoeffForRCFreq2sCount)
    {
      v52 = agingCoeffForRCFreq2sCount;
      for (i6 = 0; i6 != v52; ++i6)
      {
        [(OTAParamRC *)self agingCoeffForRCFreq2AtIndex:i6];
        [toCopy addAgingCoeffForRCFreq2:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForRCFreq3sCount])
  {
    [toCopy clearAgingCoeffForRCFreq3s];
    agingCoeffForRCFreq3sCount = [(OTAParamRC *)self agingCoeffForRCFreq3sCount];
    if (agingCoeffForRCFreq3sCount)
    {
      v55 = agingCoeffForRCFreq3sCount;
      for (i7 = 0; i7 != v55; ++i7)
      {
        [(OTAParamRC *)self agingCoeffForRCFreq3AtIndex:i7];
        [toCopy addAgingCoeffForRCFreq3:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForRCFreq4sCount])
  {
    [toCopy clearAgingCoeffForRCFreq4s];
    agingCoeffForRCFreq4sCount = [(OTAParamRC *)self agingCoeffForRCFreq4sCount];
    if (agingCoeffForRCFreq4sCount)
    {
      v58 = agingCoeffForRCFreq4sCount;
      for (i8 = 0; i8 != v58; ++i8)
      {
        [(OTAParamRC *)self agingCoeffForRCFreq4AtIndex:i8];
        [toCopy addAgingCoeffForRCFreq4:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForRCFreq1TemperatureCoeffsCount])
  {
    [toCopy clearAgingCoeffForRCFreq1TemperatureCoeffs];
    agingCoeffForRCFreq1TemperatureCoeffsCount = [(OTAParamRC *)self agingCoeffForRCFreq1TemperatureCoeffsCount];
    if (agingCoeffForRCFreq1TemperatureCoeffsCount)
    {
      v61 = agingCoeffForRCFreq1TemperatureCoeffsCount;
      for (i9 = 0; i9 != v61; ++i9)
      {
        [(OTAParamRC *)self agingCoeffForRCFreq1TemperatureCoeffAtIndex:i9];
        [toCopy addAgingCoeffForRCFreq1TemperatureCoeff:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForRCFreq2TemperatureCoeffsCount])
  {
    [toCopy clearAgingCoeffForRCFreq2TemperatureCoeffs];
    agingCoeffForRCFreq2TemperatureCoeffsCount = [(OTAParamRC *)self agingCoeffForRCFreq2TemperatureCoeffsCount];
    if (agingCoeffForRCFreq2TemperatureCoeffsCount)
    {
      v64 = agingCoeffForRCFreq2TemperatureCoeffsCount;
      for (i10 = 0; i10 != v64; ++i10)
      {
        [(OTAParamRC *)self agingCoeffForRCFreq2TemperatureCoeffAtIndex:i10];
        [toCopy addAgingCoeffForRCFreq2TemperatureCoeff:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForRCFreq3TemperatureCoeffsCount])
  {
    [toCopy clearAgingCoeffForRCFreq3TemperatureCoeffs];
    agingCoeffForRCFreq3TemperatureCoeffsCount = [(OTAParamRC *)self agingCoeffForRCFreq3TemperatureCoeffsCount];
    if (agingCoeffForRCFreq3TemperatureCoeffsCount)
    {
      v67 = agingCoeffForRCFreq3TemperatureCoeffsCount;
      for (i11 = 0; i11 != v67; ++i11)
      {
        [(OTAParamRC *)self agingCoeffForRCFreq3TemperatureCoeffAtIndex:i11];
        [toCopy addAgingCoeffForRCFreq3TemperatureCoeff:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForRCFreq4TemperatureCoeffsCount])
  {
    [toCopy clearAgingCoeffForRCFreq4TemperatureCoeffs];
    agingCoeffForRCFreq4TemperatureCoeffsCount = [(OTAParamRC *)self agingCoeffForRCFreq4TemperatureCoeffsCount];
    if (agingCoeffForRCFreq4TemperatureCoeffsCount)
    {
      v70 = agingCoeffForRCFreq4TemperatureCoeffsCount;
      for (i12 = 0; i12 != v70; ++i12)
      {
        [(OTAParamRC *)self agingCoeffForRCFreq4TemperatureCoeffAtIndex:i12];
        [toCopy addAgingCoeffForRCFreq4TemperatureCoeff:?];
      }
    }
  }

  v72 = self->_has;
  if ((v72 & 2) != 0)
  {
    *(toCopy + 193) = self->_mLBConfig;
    *(toCopy + 868) |= 2u;
    v72 = self->_has;
  }

  if ((v72 & 0x20) != 0)
  {
    *(toCopy + 216) = LODWORD(self->_wRdcRatioThresh);
    *(toCopy + 868) |= 0x20u;
  }

  if ([(OTAParamRC *)self gridWRdcRatiosCount])
  {
    [toCopy clearGridWRdcRatios];
    gridWRdcRatiosCount = [(OTAParamRC *)self gridWRdcRatiosCount];
    if (gridWRdcRatiosCount)
    {
      v74 = gridWRdcRatiosCount;
      for (i13 = 0; i13 != v74; ++i13)
      {
        [(OTAParamRC *)self gridWRdcRatioAtIndex:i13];
        [toCopy addGridWRdcRatio:?];
      }
    }
  }

  if ([(OTAParamRC *)self coeffSOCsCount])
  {
    [toCopy clearCoeffSOCs];
    coeffSOCsCount = [(OTAParamRC *)self coeffSOCsCount];
    if (coeffSOCsCount)
    {
      v77 = coeffSOCsCount;
      for (i14 = 0; i14 != v77; ++i14)
      {
        [(OTAParamRC *)self coeffSOCAtIndex:i14];
        [toCopy addCoeffSOC:?];
      }
    }
  }

  if ([(OTAParamRC *)self coeffVsCount])
  {
    [toCopy clearCoeffVs];
    coeffVsCount = [(OTAParamRC *)self coeffVsCount];
    if (coeffVsCount)
    {
      v80 = coeffVsCount;
      for (i15 = 0; i15 != v80; ++i15)
      {
        [(OTAParamRC *)self coeffVAtIndex:i15];
        [toCopy addCoeffV:?];
      }
    }
  }

  if (self->_rdc)
  {
    [toCopy setRdc:?];
  }

  if ([(OTAParamRC *)self agingCoeffForRdcsCount])
  {
    [toCopy clearAgingCoeffForRdcs];
    agingCoeffForRdcsCount = [(OTAParamRC *)self agingCoeffForRdcsCount];
    if (agingCoeffForRdcsCount)
    {
      v83 = agingCoeffForRdcsCount;
      for (i16 = 0; i16 != v83; ++i16)
      {
        [(OTAParamRC *)self agingCoeffForRdcAtIndex:i16];
        [toCopy addAgingCoeffForRdc:?];
      }
    }
  }

  if ([(OTAParamRC *)self agingCoeffForRdcTemperatureCoeffsCount])
  {
    [toCopy clearAgingCoeffForRdcTemperatureCoeffs];
    agingCoeffForRdcTemperatureCoeffsCount = [(OTAParamRC *)self agingCoeffForRdcTemperatureCoeffsCount];
    if (agingCoeffForRdcTemperatureCoeffsCount)
    {
      v86 = agingCoeffForRdcTemperatureCoeffsCount;
      for (i17 = 0; i17 != v86; ++i17)
      {
        [(OTAParamRC *)self agingCoeffForRdcTemperatureCoeffAtIndex:i17];
        [toCopy addAgingCoeffForRdcTemperatureCoeff:?];
      }
    }
  }

  if ([(OTAParamRC *)self qmaxsCount])
  {
    [toCopy clearQmaxs];
    qmaxsCount = [(OTAParamRC *)self qmaxsCount];
    if (qmaxsCount)
    {
      v89 = qmaxsCount;
      for (i18 = 0; i18 != v89; ++i18)
      {
        [(OTAParamRC *)self qmaxAtIndex:i18];
        [toCopy addQmax:?];
      }
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 194) = LODWORD(self->_maxRdcR25Ratio);
    *(toCopy + 868) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(OTAResistanceData *)self->_r0 copyWithZone:zone];
  v7 = v5[99];
  v5[99] = v6;

  v8 = [(OTAResistanceData *)self->_r1 copyWithZone:zone];
  v9 = v5[100];
  v5[100] = v8;

  v10 = [(OTAResistanceData *)self->_baselineR1 copyWithZone:zone];
  v11 = v5[86];
  v5[86] = v10;

  v12 = [(OTAResistanceData *)self->_r2 copyWithZone:zone];
  v13 = v5[101];
  v5[101] = v12;

  v14 = [(OTAResistanceData *)self->_baselineR2 copyWithZone:zone];
  v15 = v5[87];
  v5[87] = v14;

  v16 = [(OTAResistanceData *)self->_rCFreq1 copyWithZone:zone];
  v17 = v5[103];
  v5[103] = v16;

  v18 = [(OTAResistanceData *)self->_rCFreq2 copyWithZone:zone];
  v19 = v5[104];
  v5[104] = v18;

  v20 = [(OTAResistanceData *)self->_rCFreq3 copyWithZone:zone];
  v21 = v5[105];
  v5[105] = v20;

  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  v22 = [(OTAResistanceData *)self->_baselineR0 copyWithZone:zone];
  v23 = v5[85];
  v5[85] = v22;

  v24 = [(OTABMUResistance *)self->_bmuResistance copyWithZone:zone];
  v25 = v5[95];
  v5[95] = v24;

  *(v5 + 192) = self->_chemID;
  PBRepeatedFloatCopy();
  v26 = [(OTAResistanceData *)self->_baselineR3 copyWithZone:zone];
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
  v29 = [(OTAResistanceData *)self->_r3 copyWithZone:zone];
  v30 = v5[102];
  v5[102] = v29;

  v31 = [(OTAResistanceData *)self->_rCFreq4 copyWithZone:zone];
  v32 = v5[106];
  v5[106] = v31;

  v33 = [(OTAResistanceData *)self->_baselineR4 copyWithZone:zone];
  v34 = v5[89];
  v5[89] = v33;

  v35 = [(OTAResistanceData *)self->_baselineRCFreq1 copyWithZone:zone];
  v36 = v5[90];
  v5[90] = v35;

  v37 = [(OTAResistanceData *)self->_baselineRCFreq2 copyWithZone:zone];
  v38 = v5[91];
  v5[91] = v37;

  v39 = [(OTAResistanceData *)self->_baselineRCFreq3 copyWithZone:zone];
  v40 = v5[92];
  v5[92] = v39;

  v41 = [(OTAResistanceData *)self->_baselineRCFreq4 copyWithZone:zone];
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
  v44 = [(OTAResistanceData *)self->_rdc copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_99;
  }

  r0 = self->_r0;
  if (r0 | *(equalCopy + 99))
  {
    if (![(OTAResistanceData *)r0 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  r1 = self->_r1;
  if (r1 | *(equalCopy + 100))
  {
    if (![(OTAResistanceData *)r1 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  baselineR1 = self->_baselineR1;
  if (baselineR1 | *(equalCopy + 86))
  {
    if (![(OTAResistanceData *)baselineR1 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  r2 = self->_r2;
  if (r2 | *(equalCopy + 101))
  {
    if (![(OTAResistanceData *)r2 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  baselineR2 = self->_baselineR2;
  if (baselineR2 | *(equalCopy + 87))
  {
    if (![(OTAResistanceData *)baselineR2 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  rCFreq1 = self->_rCFreq1;
  if (rCFreq1 | *(equalCopy + 103))
  {
    if (![(OTAResistanceData *)rCFreq1 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  rCFreq2 = self->_rCFreq2;
  if (rCFreq2 | *(equalCopy + 104))
  {
    if (![(OTAResistanceData *)rCFreq2 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  rCFreq3 = self->_rCFreq3;
  if (rCFreq3 | *(equalCopy + 105))
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
  if (baselineR0 | *(equalCopy + 85))
  {
    if (![(OTAResistanceData *)baselineR0 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  bmuResistance = self->_bmuResistance;
  if (bmuResistance | *(equalCopy + 95))
  {
    if (![(OTABMUResistance *)bmuResistance isEqual:?])
    {
      goto LABEL_99;
    }
  }

  if (self->_chemID != *(equalCopy + 192))
  {
    goto LABEL_99;
  }

  if (!PBRepeatedFloatIsEqual())
  {
    goto LABEL_99;
  }

  baselineR3 = self->_baselineR3;
  if (baselineR3 | *(equalCopy + 88))
  {
    if (![(OTAResistanceData *)baselineR3 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  v16 = *(equalCopy + 868);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 868) & 8) == 0 || self->_maxRdcRatio != *(equalCopy + 195))
    {
      goto LABEL_99;
    }
  }

  else if ((*(equalCopy + 868) & 8) != 0)
  {
LABEL_99:
    v26 = 0;
    goto LABEL_100;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 868) & 0x10) == 0 || self->_maxRdcRatioR2Extrap != *(equalCopy + 196))
    {
      goto LABEL_99;
    }
  }

  else if ((*(equalCopy + 868) & 0x10) != 0)
  {
    goto LABEL_99;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 868) & 1) == 0 || self->_baselineWRdc != *(equalCopy + 188))
    {
      goto LABEL_99;
    }
  }

  else if (*(equalCopy + 868))
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
  if (r3 | *(equalCopy + 102))
  {
    if (![(OTAResistanceData *)r3 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  rCFreq4 = self->_rCFreq4;
  if (rCFreq4 | *(equalCopy + 106))
  {
    if (![(OTAResistanceData *)rCFreq4 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  baselineR4 = self->_baselineR4;
  if (baselineR4 | *(equalCopy + 89))
  {
    if (![(OTAResistanceData *)baselineR4 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  baselineRCFreq1 = self->_baselineRCFreq1;
  if (baselineRCFreq1 | *(equalCopy + 90))
  {
    if (![(OTAResistanceData *)baselineRCFreq1 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  baselineRCFreq2 = self->_baselineRCFreq2;
  if (baselineRCFreq2 | *(equalCopy + 91))
  {
    if (![(OTAResistanceData *)baselineRCFreq2 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  baselineRCFreq3 = self->_baselineRCFreq3;
  if (baselineRCFreq3 | *(equalCopy + 92))
  {
    if (![(OTAResistanceData *)baselineRCFreq3 isEqual:?])
    {
      goto LABEL_99;
    }
  }

  baselineRCFreq4 = self->_baselineRCFreq4;
  if (baselineRCFreq4 | *(equalCopy + 93))
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

  v24 = *(equalCopy + 868);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 868) & 2) == 0 || self->_mLBConfig != *(equalCopy + 193))
    {
      goto LABEL_99;
    }
  }

  else if ((*(equalCopy + 868) & 2) != 0)
  {
    goto LABEL_99;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 868) & 0x20) == 0 || self->_wRdcRatioThresh != *(equalCopy + 216))
    {
      goto LABEL_99;
    }
  }

  else if ((*(equalCopy + 868) & 0x20) != 0)
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
  if (rdc | *(equalCopy + 107))
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
    if ((*(equalCopy + 868) & 4) == 0 || self->_maxRdcR25Ratio != *(equalCopy + 194))
    {
      goto LABEL_99;
    }

    v26 = 1;
  }

  else
  {
    v26 = (*(equalCopy + 868) & 4) == 0;
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  r0 = self->_r0;
  v6 = fromCopy[99];
  v133 = fromCopy;
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

  fromCopy = v133;
LABEL_7:
  r1 = self->_r1;
  v8 = fromCopy[100];
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

  fromCopy = v133;
LABEL_13:
  baselineR1 = self->_baselineR1;
  v10 = fromCopy[86];
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

  fromCopy = v133;
LABEL_19:
  r2 = self->_r2;
  v12 = fromCopy[101];
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

  fromCopy = v133;
LABEL_25:
  baselineR2 = self->_baselineR2;
  v14 = fromCopy[87];
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

  fromCopy = v133;
LABEL_31:
  rCFreq1 = self->_rCFreq1;
  v16 = fromCopy[103];
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

  fromCopy = v133;
LABEL_37:
  rCFreq2 = self->_rCFreq2;
  v18 = fromCopy[104];
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

  fromCopy = v133;
LABEL_43:
  rCFreq3 = self->_rCFreq3;
  v20 = fromCopy[105];
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

  fromCopy = v133;
LABEL_49:
  agingCoeffForR0sCount = [fromCopy agingCoeffForR0sCount];
  if (agingCoeffForR0sCount)
  {
    v22 = agingCoeffForR0sCount;
    for (i = 0; i != v22; ++i)
    {
      [v133 agingCoeffForR0AtIndex:i];
      [(OTAParamRC *)self addAgingCoeffForR0:?];
    }
  }

  agingCoeffForR0TemperatureCoeffsCount = [v133 agingCoeffForR0TemperatureCoeffsCount];
  if (agingCoeffForR0TemperatureCoeffsCount)
  {
    v25 = agingCoeffForR0TemperatureCoeffsCount;
    for (j = 0; j != v25; ++j)
    {
      [v133 agingCoeffForR0TemperatureCoeffAtIndex:j];
      [(OTAParamRC *)self addAgingCoeffForR0TemperatureCoeff:?];
    }
  }

  agingCoeffForR1sCount = [v133 agingCoeffForR1sCount];
  if (agingCoeffForR1sCount)
  {
    v28 = agingCoeffForR1sCount;
    for (k = 0; k != v28; ++k)
    {
      [v133 agingCoeffForR1AtIndex:k];
      [(OTAParamRC *)self addAgingCoeffForR1:?];
    }
  }

  agingCoeffForR1TemperatureCoeffsCount = [v133 agingCoeffForR1TemperatureCoeffsCount];
  if (agingCoeffForR1TemperatureCoeffsCount)
  {
    v31 = agingCoeffForR1TemperatureCoeffsCount;
    for (m = 0; m != v31; ++m)
    {
      [v133 agingCoeffForR1TemperatureCoeffAtIndex:m];
      [(OTAParamRC *)self addAgingCoeffForR1TemperatureCoeff:?];
    }
  }

  agingCoeffForR2sCount = [v133 agingCoeffForR2sCount];
  if (agingCoeffForR2sCount)
  {
    v34 = agingCoeffForR2sCount;
    for (n = 0; n != v34; ++n)
    {
      [v133 agingCoeffForR2AtIndex:n];
      [(OTAParamRC *)self addAgingCoeffForR2:?];
    }
  }

  agingCoeffForR2TemperatureCoeffsCount = [v133 agingCoeffForR2TemperatureCoeffsCount];
  if (agingCoeffForR2TemperatureCoeffsCount)
  {
    v37 = agingCoeffForR2TemperatureCoeffsCount;
    for (ii = 0; ii != v37; ++ii)
    {
      [v133 agingCoeffForR2TemperatureCoeffAtIndex:ii];
      [(OTAParamRC *)self addAgingCoeffForR2TemperatureCoeff:?];
    }
  }

  baselineRdcsCount = [v133 baselineRdcsCount];
  if (baselineRdcsCount)
  {
    v40 = baselineRdcsCount;
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
  gridOCVsCount = [v43 gridOCVsCount];
  if (gridOCVsCount)
  {
    v48 = gridOCVsCount;
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
  slopeForR0ExtrapsCount = [v51 slopeForR0ExtrapsCount];
  if (slopeForR0ExtrapsCount)
  {
    v55 = slopeForR0ExtrapsCount;
    for (mm = 0; mm != v55; ++mm)
    {
      [v133 slopeForR0ExtrapAtIndex:mm];
      [(OTAParamRC *)self addSlopeForR0Extrap:?];
    }
  }

  slopeForR1ExtrapsCount = [v133 slopeForR1ExtrapsCount];
  if (slopeForR1ExtrapsCount)
  {
    v58 = slopeForR1ExtrapsCount;
    for (nn = 0; nn != v58; ++nn)
    {
      [v133 slopeForR1ExtrapAtIndex:nn];
      [(OTAParamRC *)self addSlopeForR1Extrap:?];
    }
  }

  slopeForR2ExtrapsCount = [v133 slopeForR2ExtrapsCount];
  if (slopeForR2ExtrapsCount)
  {
    v61 = slopeForR2ExtrapsCount;
    for (i1 = 0; i1 != v61; ++i1)
    {
      [v133 slopeForR2ExtrapAtIndex:i1];
      [(OTAParamRC *)self addSlopeForR2Extrap:?];
    }
  }

  slopeForR3ExtrapsCount = [v133 slopeForR3ExtrapsCount];
  if (slopeForR3ExtrapsCount)
  {
    v64 = slopeForR3ExtrapsCount;
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
  agingCoeffForR3sCount = [v67 agingCoeffForR3sCount];
  if (agingCoeffForR3sCount)
  {
    v82 = agingCoeffForR3sCount;
    for (i3 = 0; i3 != v82; ++i3)
    {
      [v133 agingCoeffForR3AtIndex:i3];
      [(OTAParamRC *)self addAgingCoeffForR3:?];
    }
  }

  agingCoeffForR3TemperatureCoeffsCount = [v133 agingCoeffForR3TemperatureCoeffsCount];
  if (agingCoeffForR3TemperatureCoeffsCount)
  {
    v85 = agingCoeffForR3TemperatureCoeffsCount;
    for (i4 = 0; i4 != v85; ++i4)
    {
      [v133 agingCoeffForR3TemperatureCoeffAtIndex:i4];
      [(OTAParamRC *)self addAgingCoeffForR3TemperatureCoeff:?];
    }
  }

  agingCoeffForRCFreq1sCount = [v133 agingCoeffForRCFreq1sCount];
  if (agingCoeffForRCFreq1sCount)
  {
    v88 = agingCoeffForRCFreq1sCount;
    for (i5 = 0; i5 != v88; ++i5)
    {
      [v133 agingCoeffForRCFreq1AtIndex:i5];
      [(OTAParamRC *)self addAgingCoeffForRCFreq1:?];
    }
  }

  agingCoeffForRCFreq2sCount = [v133 agingCoeffForRCFreq2sCount];
  if (agingCoeffForRCFreq2sCount)
  {
    v91 = agingCoeffForRCFreq2sCount;
    for (i6 = 0; i6 != v91; ++i6)
    {
      [v133 agingCoeffForRCFreq2AtIndex:i6];
      [(OTAParamRC *)self addAgingCoeffForRCFreq2:?];
    }
  }

  agingCoeffForRCFreq3sCount = [v133 agingCoeffForRCFreq3sCount];
  if (agingCoeffForRCFreq3sCount)
  {
    v94 = agingCoeffForRCFreq3sCount;
    for (i7 = 0; i7 != v94; ++i7)
    {
      [v133 agingCoeffForRCFreq3AtIndex:i7];
      [(OTAParamRC *)self addAgingCoeffForRCFreq3:?];
    }
  }

  agingCoeffForRCFreq4sCount = [v133 agingCoeffForRCFreq4sCount];
  if (agingCoeffForRCFreq4sCount)
  {
    v97 = agingCoeffForRCFreq4sCount;
    for (i8 = 0; i8 != v97; ++i8)
    {
      [v133 agingCoeffForRCFreq4AtIndex:i8];
      [(OTAParamRC *)self addAgingCoeffForRCFreq4:?];
    }
  }

  agingCoeffForRCFreq1TemperatureCoeffsCount = [v133 agingCoeffForRCFreq1TemperatureCoeffsCount];
  if (agingCoeffForRCFreq1TemperatureCoeffsCount)
  {
    v100 = agingCoeffForRCFreq1TemperatureCoeffsCount;
    for (i9 = 0; i9 != v100; ++i9)
    {
      [v133 agingCoeffForRCFreq1TemperatureCoeffAtIndex:i9];
      [(OTAParamRC *)self addAgingCoeffForRCFreq1TemperatureCoeff:?];
    }
  }

  agingCoeffForRCFreq2TemperatureCoeffsCount = [v133 agingCoeffForRCFreq2TemperatureCoeffsCount];
  if (agingCoeffForRCFreq2TemperatureCoeffsCount)
  {
    v103 = agingCoeffForRCFreq2TemperatureCoeffsCount;
    for (i10 = 0; i10 != v103; ++i10)
    {
      [v133 agingCoeffForRCFreq2TemperatureCoeffAtIndex:i10];
      [(OTAParamRC *)self addAgingCoeffForRCFreq2TemperatureCoeff:?];
    }
  }

  agingCoeffForRCFreq3TemperatureCoeffsCount = [v133 agingCoeffForRCFreq3TemperatureCoeffsCount];
  if (agingCoeffForRCFreq3TemperatureCoeffsCount)
  {
    v106 = agingCoeffForRCFreq3TemperatureCoeffsCount;
    for (i11 = 0; i11 != v106; ++i11)
    {
      [v133 agingCoeffForRCFreq3TemperatureCoeffAtIndex:i11];
      [(OTAParamRC *)self addAgingCoeffForRCFreq3TemperatureCoeff:?];
    }
  }

  agingCoeffForRCFreq4TemperatureCoeffsCount = [v133 agingCoeffForRCFreq4TemperatureCoeffsCount];
  if (agingCoeffForRCFreq4TemperatureCoeffsCount)
  {
    v109 = agingCoeffForRCFreq4TemperatureCoeffsCount;
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

  gridWRdcRatiosCount = [v133 gridWRdcRatiosCount];
  if (gridWRdcRatiosCount)
  {
    v113 = gridWRdcRatiosCount;
    for (i13 = 0; i13 != v113; ++i13)
    {
      [v133 gridWRdcRatioAtIndex:i13];
      [(OTAParamRC *)self addGridWRdcRatio:?];
    }
  }

  coeffSOCsCount = [v133 coeffSOCsCount];
  if (coeffSOCsCount)
  {
    v116 = coeffSOCsCount;
    for (i14 = 0; i14 != v116; ++i14)
    {
      [v133 coeffSOCAtIndex:i14];
      [(OTAParamRC *)self addCoeffSOC:?];
    }
  }

  coeffVsCount = [v133 coeffVsCount];
  if (coeffVsCount)
  {
    v119 = coeffVsCount;
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
  agingCoeffForRdcsCount = [v122 agingCoeffForRdcsCount];
  if (agingCoeffForRdcsCount)
  {
    v125 = agingCoeffForRdcsCount;
    for (i16 = 0; i16 != v125; ++i16)
    {
      [v133 agingCoeffForRdcAtIndex:i16];
      [(OTAParamRC *)self addAgingCoeffForRdc:?];
    }
  }

  agingCoeffForRdcTemperatureCoeffsCount = [v133 agingCoeffForRdcTemperatureCoeffsCount];
  if (agingCoeffForRdcTemperatureCoeffsCount)
  {
    v128 = agingCoeffForRdcTemperatureCoeffsCount;
    for (i17 = 0; i17 != v128; ++i17)
    {
      [v133 agingCoeffForRdcTemperatureCoeffAtIndex:i17];
      [(OTAParamRC *)self addAgingCoeffForRdcTemperatureCoeff:?];
    }
  }

  qmaxsCount = [v133 qmaxsCount];
  if (qmaxsCount)
  {
    v131 = qmaxsCount;
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