@interface OTAResistanceData
- (BOOL)isEqual:(id)a3;
- (float)resistance25CAtIndex:(unint64_t)a3;
- (float)temperatureCoeffAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation OTAResistanceData

- (void)dealloc
{
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = OTAResistanceData;
  [(OTAResistanceData *)&v3 dealloc];
}

- (float)resistance25CAtIndex:(unint64_t)a3
{
  p_resistance25Cs = &self->_resistance25Cs;
  count = self->_resistance25Cs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_resistance25Cs->list[a3];
}

- (float)temperatureCoeffAtIndex:(unint64_t)a3
{
  p_temperatureCoeffs = &self->_temperatureCoeffs;
  count = self->_temperatureCoeffs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_temperatureCoeffs->list[a3];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = OTAResistanceData;
  v3 = [(OTAResistanceData *)&v7 description];
  v4 = [(OTAResistanceData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = PBRepeatedFloatNSArray();
  [v2 setObject:v3 forKey:@"resistance25C"];

  v4 = PBRepeatedFloatNSArray();
  [v2 setObject:v4 forKey:@"temperatureCoeff"];

  return v2;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_resistance25Cs.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_resistance25Cs.list[v5];
      PBDataWriterWriteFloatField();
      v4 = v10;
      ++v5;
    }

    while (v5 < self->_resistance25Cs.count);
  }

  p_temperatureCoeffs = &self->_temperatureCoeffs;
  if (p_temperatureCoeffs->count)
  {
    v8 = 0;
    do
    {
      v9 = p_temperatureCoeffs->list[v8];
      PBDataWriterWriteFloatField();
      v4 = v10;
      ++v8;
    }

    while (v8 < p_temperatureCoeffs->count);
  }
}

- (void)copyTo:(id)a3
{
  v10 = a3;
  if ([(OTAResistanceData *)self resistance25CsCount])
  {
    [v10 clearResistance25Cs];
    v4 = [(OTAResistanceData *)self resistance25CsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [(OTAResistanceData *)self resistance25CAtIndex:i];
        [v10 addResistance25C:?];
      }
    }
  }

  if ([(OTAResistanceData *)self temperatureCoeffsCount])
  {
    [v10 clearTemperatureCoeffs];
    v7 = [(OTAResistanceData *)self temperatureCoeffsCount];
    if (v7)
    {
      v8 = v7;
      for (j = 0; j != v8; ++j)
      {
        [(OTAResistanceData *)self temperatureCoeffAtIndex:j];
        [v10 addTemperatureCoeff:?];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()] && PBRepeatedFloatIsEqual())
  {
    IsEqual = PBRepeatedFloatIsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (void)mergeFrom:(id)a3
{
  v10 = a3;
  v4 = [v10 resistance25CsCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      [v10 resistance25CAtIndex:i];
      [(OTAResistanceData *)self addResistance25C:?];
    }
  }

  v7 = [v10 temperatureCoeffsCount];
  if (v7)
  {
    v8 = v7;
    for (j = 0; j != v8; ++j)
    {
      [v10 temperatureCoeffAtIndex:j];
      [(OTAResistanceData *)self addTemperatureCoeff:?];
    }
  }
}

@end