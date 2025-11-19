@interface _UWBUsageRecord
- (BOOL)recordUsage:(int)a3;
- (_UWBUsageRecord)initWithDayNumber:(int)a3;
- (_UWBUsageRecord)initWithDictionary:(id)a3;
- (id)convertToDictionary;
- (id)description;
- (void)aggregateUsageWith:(id)a3;
@end

@implementation _UWBUsageRecord

- (_UWBUsageRecord)initWithDayNumber:(int)a3
{
  v5.receiver = self;
  v5.super_class = _UWBUsageRecord;
  result = [(_UWBUsageRecord *)&v5 init];
  if (result)
  {
    result->_dayNumber = a3;
    *&result->_anyUsage = 0;
    *&result->_usageByType[4] = 0;
  }

  return result;
}

- (_UWBUsageRecord)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14.receiver = self;
    v14.super_class = _UWBUsageRecord;
    v5 = [(_UWBUsageRecord *)&v14 init];
    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"DayNumber"];
      v5->_dayNumber = [v6 intValue];

      v7 = [v4 objectForKeyedSubscript:@"AnyUsage"];
      v5->_anyUsage = [v7 BOOLValue];

      v8 = [v4 objectForKeyedSubscript:@"AnyPrecisionFinding"];
      v5->_anyPrecisionFinding = [v8 BOOLValue];

      for (i = 0; i != 12; ++i)
      {
        v10 = sub_10029906C(i);
        v11 = [v4 objectForKeyedSubscript:v10];
        v5->_usageByType[i] = [v11 BOOLValue];
      }
    }

    self = v5;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)convertToDictionary
{
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:self->_dayNumber];
  [v3 setObject:v4 forKeyedSubscript:@"DayNumber"];

  v5 = [NSNumber numberWithBool:self->_anyUsage];
  [v3 setObject:v5 forKeyedSubscript:@"AnyUsage"];

  v6 = [NSNumber numberWithBool:self->_anyPrecisionFinding];
  [v3 setObject:v6 forKeyedSubscript:@"AnyPrecisionFinding"];

  v7 = 0;
  usageByType = self->_usageByType;
  do
  {
    v9 = [NSNumber numberWithBool:usageByType[v7]];
    v10 = sub_10029906C(v7);
    [v3 setObject:v9 forKeyedSubscript:v10];

    ++v7;
  }

  while (v7 != 12);

  return v3;
}

- (BOOL)recordUsage:(int)a3
{
  self->_anyUsage = 1;
  if ((a3 - 4) <= 6)
  {
    self->_anyPrecisionFinding = 1;
  }

  v3 = self->_usageByType[a3];
  if (!v3)
  {
    self->_usageByType[a3] = 1;
  }

  return !v3;
}

- (void)aggregateUsageWith:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (self->_anyUsage)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4[8];
    }

    self->_anyUsage = v5 & 1;
    if (self->_anyPrecisionFinding)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4[9];
    }

    v7 = 0;
    self->_anyPrecisionFinding = v6 & 1;
    usageByType = self->_usageByType;
    do
    {
      if (usageByType[v7])
      {
        v9 = 1;
      }

      else
      {
        v9 = v4[v7 + 10];
      }

      usageByType[v7++] = v9 & 1;
    }

    while (v7 != 12);
  }
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"Day %d:", self->_dayNumber];
  v4 = v3;
  if (self->_anyUsage)
  {
    for (i = 0; i != 12; ++i)
    {
      if (self->_usageByType[i])
      {
        v6 = sub_10029906C(i);
        [v4 appendFormat:@" %@", v6];
      }
    }
  }

  else
  {
    [v3 appendString:@" None"];
  }

  return v4;
}

@end