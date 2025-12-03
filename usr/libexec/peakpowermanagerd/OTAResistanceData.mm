@interface OTAResistanceData
- (BOOL)isEqual:(id)equal;
- (float)resistance25CAtIndex:(unint64_t)index;
- (float)temperatureCoeffAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (float)resistance25CAtIndex:(unint64_t)index
{
  p_resistance25Cs = &self->_resistance25Cs;
  count = self->_resistance25Cs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_resistance25Cs->list[index];
}

- (float)temperatureCoeffAtIndex:(unint64_t)index
{
  p_temperatureCoeffs = &self->_temperatureCoeffs;
  count = self->_temperatureCoeffs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_temperatureCoeffs->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = OTAResistanceData;
  v3 = [(OTAResistanceData *)&v7 description];
  dictionaryRepresentation = [(OTAResistanceData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_resistance25Cs.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_resistance25Cs.list[v5];
      PBDataWriterWriteFloatField();
      toCopy = v10;
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
      toCopy = v10;
      ++v8;
    }

    while (v8 < p_temperatureCoeffs->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(OTAResistanceData *)self resistance25CsCount])
  {
    [toCopy clearResistance25Cs];
    resistance25CsCount = [(OTAResistanceData *)self resistance25CsCount];
    if (resistance25CsCount)
    {
      v5 = resistance25CsCount;
      for (i = 0; i != v5; ++i)
      {
        [(OTAResistanceData *)self resistance25CAtIndex:i];
        [toCopy addResistance25C:?];
      }
    }
  }

  if ([(OTAResistanceData *)self temperatureCoeffsCount])
  {
    [toCopy clearTemperatureCoeffs];
    temperatureCoeffsCount = [(OTAResistanceData *)self temperatureCoeffsCount];
    if (temperatureCoeffsCount)
    {
      v8 = temperatureCoeffsCount;
      for (j = 0; j != v8; ++j)
      {
        [(OTAResistanceData *)self temperatureCoeffAtIndex:j];
        [toCopy addTemperatureCoeff:?];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && PBRepeatedFloatIsEqual())
  {
    IsEqual = PBRepeatedFloatIsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  resistance25CsCount = [fromCopy resistance25CsCount];
  if (resistance25CsCount)
  {
    v5 = resistance25CsCount;
    for (i = 0; i != v5; ++i)
    {
      [fromCopy resistance25CAtIndex:i];
      [(OTAResistanceData *)self addResistance25C:?];
    }
  }

  temperatureCoeffsCount = [fromCopy temperatureCoeffsCount];
  if (temperatureCoeffsCount)
  {
    v8 = temperatureCoeffsCount;
    for (j = 0; j != v8; ++j)
    {
      [fromCopy temperatureCoeffAtIndex:j];
      [(OTAResistanceData *)self addTemperatureCoeff:?];
    }
  }
}

@end