@interface TransparencyGPBBoolUInt32Dictionary
- (BOOL)getUInt32:(unsigned int *)int32 forKey:(BOOL)key;
- (BOOL)isEqual:(id)equal;
- (TransparencyGPBBoolUInt32Dictionary)initWithDictionary:(id)dictionary;
- (TransparencyGPBBoolUInt32Dictionary)initWithUInt32s:(const unsigned int *)int32s forKeys:(const BOOL *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndUInt32sUsingBlock:(id)block;
- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key;
- (void)setUInt32:(unsigned int)int32 forKey:(BOOL)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation TransparencyGPBBoolUInt32Dictionary

- (TransparencyGPBBoolUInt32Dictionary)initWithUInt32s:(const unsigned int *)int32s forKeys:(const BOOL *)keys count:(unint64_t)count
{
  v13.receiver = self;
  v13.super_class = TransparencyGPBBoolUInt32Dictionary;
  result = [(TransparencyGPBBoolUInt32Dictionary *)&v13 init];
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
      v12 = *int32s++;
      result->_values[v10] = v12;
      result->_valueSet[v10] = 1;
      --count;
    }

    while (count);
  }

  return result;
}

- (TransparencyGPBBoolUInt32Dictionary)initWithDictionary:(id)dictionary
{
  result = [(TransparencyGPBBoolUInt32Dictionary *)self initWithUInt32s:0 forKeys:0 count:0];
  if (dictionary && result)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      if (*(dictionary + v5 + 24) == 1)
      {
        result->_values[v5] = *(dictionary + v5 + 4);
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
  v4 = [TransparencyGPBBoolUInt32Dictionary allocWithZone:zone];

  return [(TransparencyGPBBoolUInt32Dictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->_valueSet[0] == *(equal + 24) && self->_valueSet[1] == *(equal + 25) && (!self->_valueSet[0] || self->_values[0] == *(equal + 4)) && (!self->_valueSet[1] || self->_values[1] == *(equal + 5));
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p> {", objc_opt_class(), self];
  v4 = v3;
  if (self->_valueSet[0])
  {
    [(NSMutableString *)v3 appendFormat:@"NO: %u", self->_values[0]];
  }

  if (self->_valueSet[1])
  {
    [(NSMutableString *)v4 appendFormat:@"YES: %u", self->_values[1]];
  }

  [(NSMutableString *)v4 appendString:@" }"];
  return v4;
}

- (BOOL)getUInt32:(unsigned int *)int32 forKey:(BOOL)key
{
  v5 = self->_valueSet[key];
  if (int32 && v5)
  {
    *int32 = self->_values[key];
  }

  return v5;
}

- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key
{
  var0 = key->var0;
  self->_values[var0] = value->var1;
  self->_valueSet[var0] = 1;
}

- (void)enumerateForTextFormat:(id)format
{
  if (self->_valueSet[0])
  {
    (*(format + 2))(format, @"false", [NSString stringWithFormat:@"%u", self->_values[0]]);
  }

  if (self->_valueSet[1])
  {
    v5 = [NSString stringWithFormat:@"%u", self->_values[1]];
    v6 = *(format + 2);

    v6(format, @"true", v5);
  }
}

- (void)enumerateKeysAndUInt32sUsingBlock:(id)block
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
  v7 = *(v6 + 30);
  valueSet = self->_valueSet;
  values = self->_values;
  v10 = 1;
  do
  {
    v11 = v10;
    if (valueSet[v3])
    {
      ++v4;
      v12 = sub_1001717D8(1);
      v13 = sub_100174F08(values[v3], 2, v7) + v12;
      v5 += v13 + sub_10016FB50(v13);
    }

    v10 = 0;
    v3 = 1;
  }

  while ((v11 & 1) != 0);
  return v5 + sub_100171D34(*(v6 + 16), 15) * v4;
}

- (void)writeToCodedOutputStream:(id)stream asField:(id)field
{
  v6 = *(field + 1);
  v7 = *(v6 + 30);
  v8 = sub_1001A18B4(*(v6 + 16), 2);
  v9 = 0;
  v10 = 0;
  valueSet = self->_valueSet;
  values = self->_values;
  v13 = 1;
  do
  {
    v14 = v13;
    if (valueSet[v10])
    {
      [stream writeInt32NoTag:v8];
      v15 = sub_1001717D8(1);
      [stream writeInt32NoTag:{sub_100174F08(values[v10], 2, v7) + v15}];
      [stream writeBool:1 value:v9 & 1];
      v16 = values[v10];
      if (v7 == 1)
      {
        [stream writeFixed32:2 value:v16];
      }

      else if (v7 == 11)
      {
        [stream writeUInt32:2 value:v16];
      }
    }

    v13 = 0;
    v9 = 1;
    v10 = 1;
  }

  while ((v14 & 1) != 0);
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
      if (*(dictionary + v4 + 24) == 1)
      {
        self->_valueSet[v4] = 1;
        self->_values[v4] = *(dictionary + v4 + 4);
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

- (void)setUInt32:(unsigned int)int32 forKey:(BOOL)key
{
  self->_values[key] = int32;
  self->_valueSet[key] = 1;
  autocreator = self->_autocreator;
  if (autocreator)
  {
    sub_100192DE8(autocreator, self);
  }
}

@end