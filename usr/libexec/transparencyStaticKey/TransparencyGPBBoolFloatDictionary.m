@interface TransparencyGPBBoolFloatDictionary
- (BOOL)getFloat:(float *)a3 forKey:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (TransparencyGPBBoolFloatDictionary)initWithDictionary:(id)a3;
- (TransparencyGPBBoolFloatDictionary)initWithFloats:(const float *)a3 forKeys:(const BOOL *)a4 count:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)computeSerializedSizeAsField:(id)a3;
- (void)addEntriesFromDictionary:(id)a3;
- (void)enumerateForTextFormat:(id)a3;
- (void)enumerateKeysAndFloatsUsingBlock:(id)a3;
- (void)setFloat:(float)a3 forKey:(BOOL)a4;
- (void)setTransparencyGPBGenericValue:(id *)a3 forTransparencyGPBGenericValueKey:(id *)a4;
- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4;
@end

@implementation TransparencyGPBBoolFloatDictionary

- (TransparencyGPBBoolFloatDictionary)initWithFloats:(const float *)a3 forKeys:(const BOOL *)a4 count:(unint64_t)a5
{
  v13.receiver = self;
  v13.super_class = TransparencyGPBBoolFloatDictionary;
  result = [(TransparencyGPBBoolFloatDictionary *)&v13 init];
  if (result)
  {
    v9 = a5 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    do
    {
      v11 = *a4++;
      v10 = v11;
      v12 = *a3++;
      result->_values[v10] = v12;
      result->_valueSet[v10] = 1;
      --a5;
    }

    while (a5);
  }

  return result;
}

- (TransparencyGPBBoolFloatDictionary)initWithDictionary:(id)a3
{
  result = [(TransparencyGPBBoolFloatDictionary *)self initWithFloats:0 forKeys:0 count:0];
  if (a3 && result)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      if (*(a3 + v5 + 24) == 1)
      {
        result->_values[v5] = *(a3 + v5 + 4);
        result->_valueSet[v5] = 1;
      }

      v6 = 0;
      v5 = 1;
    }

    while ((v7 & 1) != 0);
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TransparencyGPBBoolFloatDictionary allocWithZone:a3];

  return [(TransparencyGPBBoolFloatDictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->_valueSet[0] == *(a3 + 24) && self->_valueSet[1] == *(a3 + 25) && (!self->_valueSet[0] || self->_values[0] == *(a3 + 4)) && (!self->_valueSet[1] || self->_values[1] == *(a3 + 5));
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p> {", objc_opt_class(), self];
  v4 = v3;
  if (self->_valueSet[0])
  {
    [(NSMutableString *)v3 appendFormat:@"NO: %f", self->_values[0]];
  }

  if (self->_valueSet[1])
  {
    [(NSMutableString *)v4 appendFormat:@"YES: %f", self->_values[1]];
  }

  [(NSMutableString *)v4 appendString:@" }"];
  return v4;
}

- (BOOL)getFloat:(float *)a3 forKey:(BOOL)a4
{
  v5 = self->_valueSet[a4];
  if (a3 && v5)
  {
    *a3 = self->_values[a4];
  }

  return v5;
}

- (void)setTransparencyGPBGenericValue:(id *)a3 forTransparencyGPBGenericValueKey:(id *)a4
{
  var0 = a4->var0;
  LODWORD(self->_values[var0]) = a3->var1;
  self->_valueSet[var0] = 1;
}

- (void)enumerateForTextFormat:(id)a3
{
  if (self->_valueSet[0])
  {
    (*(a3 + 2))(a3, @"false", [NSString stringWithFormat:@"%.*g", 6, self->_values[0]]);
  }

  if (self->_valueSet[1])
  {
    v5 = [NSString stringWithFormat:@"%.*g", 6, self->_values[1]];
    v6 = *(a3 + 2);

    v6(a3, @"true", v5);
  }
}

- (void)enumerateKeysAndFloatsUsingBlock:(id)a3
{
  v5 = 0;
  if (!self->_valueSet[0] || ((*(a3 + 2))(a3, 0, &v5, self->_values[0]), (v5 & 1) == 0))
  {
    if (self->_valueSet[1])
    {
      (*(a3 + 2))(a3, 1, &v5, self->_values[1]);
    }
  }
}

- (unint64_t)computeSerializedSizeAsField:(id)a3
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = *(a3 + 1);
  valueSet = self->_valueSet;
  values = self->_values;
  v9 = 1;
  do
  {
    v10 = v9;
    if (valueSet[v3])
    {
      ++v4;
      v11 = sub_10001B224(1);
      v12 = values[v3];
      v13 = sub_10001B0CC(2) + v11;
      v5 += v13 + sub_100019594(v13);
    }

    v9 = 0;
    v3 = 1;
  }

  while ((v10 & 1) != 0);
  return v5 + sub_10001B780(*(v6 + 16), 15) * v4;
}

- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4
{
  v6 = sub_100025184(*(*(a4 + 1) + 16), 2);
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
      [a3 writeInt32NoTag:v6];
      v13 = sub_10001B224(1);
      v14 = values[v8];
      [a3 writeInt32NoTag:sub_10001B0CC(2) + v13];
      [a3 writeBool:1 value:v7 & 1];
      *&v15 = values[v8];
      [a3 writeFloat:2 value:v15];
    }

    v11 = 0;
    v7 = 1;
    v8 = 1;
  }

  while ((v12 & 1) != 0);
}

- (void)addEntriesFromDictionary:(id)a3
{
  if (a3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = v5;
      if (*(a3 + v4 + 24) == 1)
      {
        self->_valueSet[v4] = 1;
        self->_values[v4] = *(a3 + v4 + 4);
      }

      v5 = 0;
      v4 = 1;
    }

    while ((v6 & 1) != 0);
    autocreator = self->_autocreator;
    if (autocreator)
    {
      sub_10002B180(autocreator, self);
    }
  }
}

- (void)setFloat:(float)a3 forKey:(BOOL)a4
{
  self->_values[a4] = a3;
  self->_valueSet[a4] = 1;
  autocreator = self->_autocreator;
  if (autocreator)
  {
    sub_10002B180(autocreator, self);
  }
}

@end