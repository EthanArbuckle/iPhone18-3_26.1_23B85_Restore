@interface TransparencyGPBStringEnumDictionary
- (BOOL)getEnum:(int *)enum forKey:(id)key;
- (BOOL)getRawValue:(int *)value forKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (TransparencyGPBStringEnumDictionary)initWithDictionary:(id)dictionary;
- (TransparencyGPBStringEnumDictionary)initWithValidationFunction:(void *)function rawValues:(const int *)values forKeys:(id *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addRawEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndEnumsUsingBlock:(id)block;
- (void)enumerateKeysAndRawValuesUsingBlock:(id)block;
- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation TransparencyGPBStringEnumDictionary

- (TransparencyGPBStringEnumDictionary)initWithValidationFunction:(void *)function rawValues:(const int *)values forKeys:(id *)keys count:(unint64_t)count
{
  v18.receiver = self;
  v18.super_class = TransparencyGPBStringEnumDictionary;
  v10 = [(TransparencyGPBStringEnumDictionary *)&v18 init];
  if (v10)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    v12 = function ? function : sub_1000C8690;
    v10->_dictionary = v11;
    v10->_validationFunc = v12;
    if (keys)
    {
      if (values && count)
      {
        do
        {
          if (!*keys)
          {
            [NSException raise:NSInvalidArgumentException format:@"Attempting to add nil key to a Dictionary"];
          }

          dictionary = v10->_dictionary;
          v14 = *values++;
          v15 = [NSNumber numberWithInt:v14];
          v16 = *keys++;
          [(NSMutableDictionary *)dictionary setObject:v15 forKey:v16];
          --count;
        }

        while (count);
      }
    }
  }

  return v10;
}

- (TransparencyGPBStringEnumDictionary)initWithDictionary:(id)dictionary
{
  v4 = -[TransparencyGPBStringEnumDictionary initWithValidationFunction:rawValues:forKeys:count:](self, "initWithValidationFunction:rawValues:forKeys:count:", [dictionary validationFunc], 0, 0, 0);
  v5 = v4;
  if (dictionary && v4)
  {
    [(NSMutableDictionary *)v4->_dictionary addEntriesFromDictionary:*(dictionary + 2)];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TransparencyGPBStringEnumDictionary;
  [(TransparencyGPBStringEnumDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TransparencyGPBStringEnumDictionary allocWithZone:zone];

  return [(TransparencyGPBStringEnumDictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  dictionary = self->_dictionary;
  v6 = *(equal + 2);

  return [(NSMutableDictionary *)dictionary isEqual:v6];
}

- (void)enumerateKeysAndRawValuesUsingBlock:(id)block
{
  v7 = 0;
  dictionary = self->_dictionary;
  keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
  do
  {
    nextObject = [keyEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    (*(block + 2))(block, nextObject, [-[NSMutableDictionary objectForKeyedSubscript:](dictionary objectForKeyedSubscript:{nextObject), "intValue"}], &v7);
  }

  while (v7 != 1);
}

- (unint64_t)computeSerializedSizeAsField:(id)field
{
  dictionary = self->_dictionary;
  result = [(NSMutableDictionary *)dictionary count];
  if (result)
  {
    v6 = result;
    [field mapKeyDataType];
    keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
    nextObject = [keyEnumerator nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      v10 = 0;
      do
      {
        v11 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:nextObject2];
        v12 = sub_1000C14F8(1, nextObject2);
        v13 = &v12[sub_1000C1408(2, [v11 intValue])];
        v10 += &v13[sub_1000BF820(v13)];
        nextObject2 = [keyEnumerator nextObject];
      }

      while (nextObject2);
    }

    else
    {
      v10 = 0;
    }

    return v10 + sub_1000C1A04(*(*(field + 1) + 16), 15) * v6;
  }

  return result;
}

- (void)writeToCodedOutputStream:(id)stream asField:(id)field
{
  [field mapKeyDataType];
  v7 = sub_1000F1CD4(*(*(field + 1) + 16), 2);
  dictionary = self->_dictionary;
  keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v12 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:nextObject2];
      [stream writeInt32NoTag:v7];
      intValue = [v12 intValue];
      v14 = sub_1000C14F8(1, nextObject2);
      [stream writeInt32NoTag:{sub_1000C1408(2, intValue) + v14}];
      [stream writeString:1 value:nextObject2];
      [stream writeEnum:2 value:intValue];
      nextObject2 = [keyEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key
{
  dictionary = self->_dictionary;
  v6 = [NSNumber numberWithInt:value->var3];
  var2 = key->var2;

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:var2];
}

- (void)enumerateForTextFormat:(id)format
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000DCBA4;
  v3[3] = &unk_100137788;
  v3[4] = format;
  [(TransparencyGPBStringEnumDictionary *)self enumerateKeysAndRawValuesUsingBlock:v3];
}

- (BOOL)getEnum:(int *)enum forKey:(id)key
{
  v6 = [(NSMutableDictionary *)self->_dictionary objectForKey:key];
  v7 = v6;
  if (enum && v6)
  {
    intValue = [v6 intValue];
    if ((self->_validationFunc)())
    {
      v9 = intValue;
    }

    else
    {
      v9 = -72499473;
    }

    *enum = v9;
  }

  return v7 != 0;
}

- (BOOL)getRawValue:(int *)value forKey:(id)key
{
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:key];
  v6 = v5;
  if (value && v5)
  {
    *value = [v5 intValue];
  }

  return v6 != 0;
}

- (void)enumerateKeysAndEnumsUsingBlock:(id)block
{
  v11 = 0;
  validationFunc = self->_validationFunc;
  keyEnumerator = [(NSMutableDictionary *)self->_dictionary keyEnumerator];
  do
  {
    nextObject = [keyEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    v8 = nextObject;
    v9 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_dictionary objectForKeyedSubscript:{nextObject), "intValue"}];
    v10 = validationFunc() ? v9 : 4222467823;
    (*(block + 2))(block, v8, v10, &v11);
  }

  while (v11 != 1);
}

- (void)addRawEntriesFromDictionary:(id)dictionary
{
  if (dictionary)
  {
    [(NSMutableDictionary *)self->_dictionary addEntriesFromDictionary:*(dictionary + 2)];
    autocreator = self->_autocreator;
    if (autocreator)
    {

      sub_1000E2C68(autocreator, self);
    }
  }
}

@end