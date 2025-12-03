@interface TransparencyGPBBoolDoubleDictionary
- (BOOL)getDouble:(double *)double forKey:(BOOL)key;
- (BOOL)isEqual:(id)equal;
- (TransparencyGPBBoolDoubleDictionary)initWithDictionary:(id)dictionary;
- (TransparencyGPBBoolDoubleDictionary)initWithDoubles:(const double *)doubles forKeys:(const BOOL *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndDoublesUsingBlock:(id)block;
- (void)setDouble:(double)double forKey:(BOOL)key;
- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation TransparencyGPBBoolDoubleDictionary

- (TransparencyGPBBoolDoubleDictionary)initWithDoubles:(const double *)doubles forKeys:(const BOOL *)keys count:(unint64_t)count
{
  v13.receiver = self;
  v13.super_class = TransparencyGPBBoolDoubleDictionary;
  result = [(TransparencyGPBBoolDoubleDictionary *)&v13 init];
  if (result)
  {
    v9 = count == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    do
    {
      v11 = *keys++;
      v10 = v11;
      v12 = *doubles++;
      result->_values[v10] = v12;
      result->_valueSet[v10] = 1;
      --count;
    }

    while (count);
  }

  return result;
}

- (TransparencyGPBBoolDoubleDictionary)initWithDictionary:(id)dictionary
{
  result = [(TransparencyGPBBoolDoubleDictionary *)self initWithDoubles:0 forKeys:0 count:0];
  if (dictionary && result)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      if (*(dictionary + v5 + 32) == 1)
      {
        result->_values[v5] = *(dictionary + v5 + 2);
        result->_valueSet[v5] = 1;
      }

      v6 = 0;
      v5 = 1;
    }

    while ((v7 & 1) != 0);
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TransparencyGPBBoolDoubleDictionary allocWithZone:zone];

  return [(TransparencyGPBBoolDoubleDictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->_valueSet[0] == *(equal + 32) && self->_valueSet[1] == *(equal + 33) && (!self->_valueSet[0] || self->_values[0] == *(equal + 2)) && (!self->_valueSet[1] || self->_values[1] == *(equal + 3));
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p> {", objc_opt_class(), self];
  v4 = v3;
  if (self->_valueSet[0])
  {
    [(NSMutableString *)v3 appendFormat:@"NO: %lf", *&self->_values[0]];
  }

  if (self->_valueSet[1])
  {
    [(NSMutableString *)v4 appendFormat:@"YES: %lf", *&self->_values[1]];
  }

  [(NSMutableString *)v4 appendString:@" }"];
  return v4;
}

- (BOOL)getDouble:(double *)double forKey:(BOOL)key
{
  v5 = self->_valueSet[key];
  if (double && v5)
  {
    *double = self->_values[key];
  }

  return v5;
}

- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key
{
  var0 = key->var0;
  self->_values[var0] = value->var6;
  self->_valueSet[var0] = 1;
}

- (void)enumerateForTextFormat:(id)format
{
  if (self->_valueSet[0])
  {
    (*(format + 2))(format, @"false", [NSString stringWithFormat:@"%.*lg", 15, *&self->_values[0]]);
  }

  if (self->_valueSet[1])
  {
    v5 = [NSString stringWithFormat:@"%.*lg", 15, *&self->_values[1]];
    v6 = *(format + 2);

    v6(format, @"true", v5);
  }
}

- (void)enumerateKeysAndDoublesUsingBlock:(id)block
{
  v5 = 0;
  if (!self->_valueSet[0] || ((*(block + 2))(block, 0, &v5, self->_values[0]), (v5 & 1) == 0))
  {
    if (self->_valueSet[1])
    {
      (*(block + 2))(block, 1, &v5, self->_values[1]);
    }
  }
}

- (unint64_t)computeSerializedSizeAsField:(id)field
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = *(field + 1);
  valueSet = self->_valueSet;
  values = self->_values;
  v9 = 1;
  do
  {
    v10 = v9;
    if (valueSet[v3])
    {
      ++v4;
      v11 = sub_1000C14A8(1);
      v12 = values[v3];
      v13 = sub_1000C12B0(2) + v11;
      v5 += v13 + sub_1000BF820(v13);
    }

    v9 = 0;
    v3 = 1;
  }

  while ((v10 & 1) != 0);
  return v5 + sub_1000C1A04(*(v6 + 16), 15) * v4;
}

- (void)writeToCodedOutputStream:(id)stream asField:(id)field
{
  v6 = sub_1000F1CD4(*(*(field + 1) + 16), 2);
  v7 = 0;
  v8 = 0;
  valueSet = self->_valueSet;
  values = self->_values;
  v11 = 1;
  do
  {
    v12 = v11;
    if (valueSet[v8])
    {
      [stream writeInt32NoTag:v6];
      v13 = sub_1000C14A8(1);
      v14 = values[v8];
      [stream writeInt32NoTag:sub_1000C12B0(2) + v13];
      [stream writeBool:1 value:v7 & 1];
      [stream writeDouble:2 value:values[v8]];
    }

    v11 = 0;
    v7 = 1;
    v8 = 1;
  }

  while ((v12 & 1) != 0);
}

- (void)addEntriesFromDictionary:(id)dictionary
{
  if (dictionary)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = v5;
      if (*(dictionary + v4 + 32) == 1)
      {
        self->_valueSet[v4] = 1;
        self->_values[v4] = *(dictionary + v4 + 2);
      }

      v5 = 0;
      v4 = 1;
    }

    while ((v6 & 1) != 0);
    autocreator = self->_autocreator;
    if (autocreator)
    {
      sub_1000E2C68(autocreator, self);
    }
  }
}

- (void)setDouble:(double)double forKey:(BOOL)key
{
  self->_values[key] = double;
  self->_valueSet[key] = 1;
  autocreator = self->_autocreator;
  if (autocreator)
  {
    sub_1000E2C68(autocreator, self);
  }
}

@end