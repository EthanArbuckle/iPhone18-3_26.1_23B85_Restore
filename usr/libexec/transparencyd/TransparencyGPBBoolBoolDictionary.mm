@interface TransparencyGPBBoolBoolDictionary
- (BOOL)getBool:(BOOL *)bool forKey:(BOOL)key;
- (BOOL)isEqual:(id)equal;
- (TransparencyGPBBoolBoolDictionary)initWithBools:(const BOOL *)bools forKeys:(const BOOL *)keys count:(unint64_t)count;
- (TransparencyGPBBoolBoolDictionary)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndBoolsUsingBlock:(id)block;
- (void)setBool:(BOOL)bool forKey:(BOOL)key;
- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation TransparencyGPBBoolBoolDictionary

- (TransparencyGPBBoolBoolDictionary)initWithBools:(const BOOL *)bools forKeys:(const BOOL *)keys count:(unint64_t)count
{
  v12.receiver = self;
  v12.super_class = TransparencyGPBBoolBoolDictionary;
  result = [(TransparencyGPBBoolBoolDictionary *)&v12 init];
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
      LOBYTE(v11) = *bools++;
      result->_values[v10] = v11;
      result->_valueSet[v10] = 1;
      --count;
    }

    while (count);
  }

  return result;
}

- (TransparencyGPBBoolBoolDictionary)initWithDictionary:(id)dictionary
{
  result = [(TransparencyGPBBoolBoolDictionary *)self initWithBools:0 forKeys:0 count:0];
  if (dictionary && result)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      if (*(dictionary + v5 + 18) == 1)
      {
        result->_values[v5] = *(dictionary + v5 + 16);
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
  v4 = [TransparencyGPBBoolBoolDictionary allocWithZone:zone];

  return [(TransparencyGPBBoolBoolDictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->_valueSet[0] == *(equal + 18) && self->_valueSet[1] == *(equal + 19) && (!self->_valueSet[0] || self->_values[0] == *(equal + 16)) && (!self->_valueSet[1] || self->_values[1] == *(equal + 17));
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p> {", objc_opt_class(), self];
  v4 = v3;
  if (self->_valueSet[0])
  {
    [(NSMutableString *)v3 appendFormat:@"NO: %d", self->_values[0]];
  }

  if (self->_valueSet[1])
  {
    [(NSMutableString *)v4 appendFormat:@"YES: %d", self->_values[1]];
  }

  [(NSMutableString *)v4 appendString:@" }"];
  return v4;
}

- (BOOL)getBool:(BOOL *)bool forKey:(BOOL)key
{
  v5 = self->_valueSet[key];
  if (bool && v5)
  {
    *bool = self->_values[key];
  }

  return v5;
}

- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key
{
  v4 = self + key->var0;
  v4[16] = value->var0;
  v4[18] = 1;
}

- (void)enumerateForTextFormat:(id)format
{
  if (self->_valueSet[0])
  {
    if (self->_values[0])
    {
      v5 = @"true";
    }

    else
    {
      v5 = @"false";
    }

    (*(format + 2))(format, @"false", v5);
  }

  if (self->_valueSet[1])
  {
    if (self->_values[1])
    {
      v6 = @"true";
    }

    else
    {
      v6 = @"false";
    }

    v7 = *(format + 2);

    v7(format, @"true", v6);
  }
}

- (void)enumerateKeysAndBoolsUsingBlock:(id)block
{
  v5 = 0;
  if (!self->_valueSet[0] || ((*(block + 2))(block, 0, self->_values[0], &v5), (v5 & 1) == 0))
  {
    if (self->_valueSet[1])
    {
      (*(block + 2))(block, 1, self->_values[1], &v5);
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
      v11 = sub_1001717D8(1);
      v12 = values[v3];
      v13 = sub_1001717D8(2) + v11;
      v5 += v13 + sub_10016FB50(v13);
    }

    v9 = 0;
    v3 = 1;
  }

  while ((v10 & 1) != 0);
  return v5 + sub_100171D34(*(v6 + 16), 15) * v4;
}

- (void)writeToCodedOutputStream:(id)stream asField:(id)field
{
  v6 = sub_1001A18B4(*(*(field + 1) + 16), 2);
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
      v13 = sub_1001717D8(1);
      v14 = values[v8];
      [stream writeInt32NoTag:sub_1001717D8(2) + v13];
      [stream writeBool:1 value:v7 & 1];
      [stream writeBool:2 value:values[v8]];
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
      if (*(dictionary + v4 + 18) == 1)
      {
        self->_valueSet[v4] = 1;
        self->_values[v4] = *(dictionary + v4 + 16);
      }

      v5 = 0;
      v4 = 1;
    }

    while ((v6 & 1) != 0);
    autocreator = self->_autocreator;
    if (autocreator)
    {
      sub_100192DE8(autocreator, self);
    }
  }
}

- (void)setBool:(BOOL)bool forKey:(BOOL)key
{
  v5 = self + key;
  v5[16] = bool;
  v5[18] = 1;
  autocreator = self->_autocreator;
  if (autocreator)
  {
    sub_100192DE8(autocreator, self);
  }
}

@end