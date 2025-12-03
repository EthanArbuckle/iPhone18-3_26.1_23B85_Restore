@interface TransparencyGPBUInt64EnumDictionary
- (BOOL)getEnum:(int *)enum forKey:(unint64_t)key;
- (BOOL)getRawValue:(int *)value forKey:(unint64_t)key;
- (BOOL)isEqual:(id)equal;
- (TransparencyGPBUInt64EnumDictionary)initWithDictionary:(id)dictionary;
- (TransparencyGPBUInt64EnumDictionary)initWithValidationFunction:(void *)function rawValues:(const int *)values forKeys:(const unint64_t *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addRawEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndEnumsUsingBlock:(id)block;
- (void)enumerateKeysAndRawValuesUsingBlock:(id)block;
- (void)removeEnumForKey:(unint64_t)key;
- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation TransparencyGPBUInt64EnumDictionary

- (TransparencyGPBUInt64EnumDictionary)initWithValidationFunction:(void *)function rawValues:(const int *)values forKeys:(const unint64_t *)keys count:(unint64_t)count
{
  v18.receiver = self;
  v18.super_class = TransparencyGPBUInt64EnumDictionary;
  v10 = [(TransparencyGPBUInt64EnumDictionary *)&v18 init];
  if (v10)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    if (function)
    {
      functionCopy = function;
    }

    else
    {
      functionCopy = sub_10003E0EC;
    }

    v10->_dictionary = v11;
    v10->_validationFunc = functionCopy;
    if (keys && values && count)
    {
      do
      {
        dictionary = v10->_dictionary;
        v14 = *values++;
        v15 = [NSNumber numberWithInt:v14];
        v16 = *keys++;
        [(NSMutableDictionary *)dictionary setObject:v15 forKey:[NSNumber numberWithUnsignedLongLong:v16]];
        --count;
      }

      while (count);
    }
  }

  return v10;
}

- (TransparencyGPBUInt64EnumDictionary)initWithDictionary:(id)dictionary
{
  v4 = -[TransparencyGPBUInt64EnumDictionary initWithValidationFunction:rawValues:forKeys:count:](self, "initWithValidationFunction:rawValues:forKeys:count:", [dictionary validationFunc], 0, 0, 0);
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
  v3.super_class = TransparencyGPBUInt64EnumDictionary;
  [(TransparencyGPBUInt64EnumDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TransparencyGPBUInt64EnumDictionary allocWithZone:zone];

  return [(TransparencyGPBUInt64EnumDictionary *)v4 initWithDictionary:self];
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

    (*(block + 2))(block, [nextObject unsignedLongLongValue], objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](dictionary, "objectForKeyedSubscript:", nextObject), "intValue"), &v7);
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
    mapKeyDataType = [field mapKeyDataType];
    keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
    nextObject = [keyEnumerator nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      v11 = 0;
      do
      {
        v12 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:nextObject2];
        v13 = sub_10003B8D4([nextObject2 unsignedLongLongValue], 1, mapKeyDataType);
        v14 = sub_10001B184(2, [v12 intValue]) + v13;
        v11 += v14 + sub_100019594(v14);
        nextObject2 = [keyEnumerator nextObject];
      }

      while (nextObject2);
    }

    else
    {
      v11 = 0;
    }

    return v11 + sub_10001B780(*(*(field + 1) + 16), 15) * v6;
  }

  return result;
}

- (void)writeToCodedOutputStream:(id)stream asField:(id)field
{
  mapKeyDataType = [field mapKeyDataType];
  v8 = sub_100025184(*(*(field + 1) + 16), 2);
  dictionary = self->_dictionary;
  keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v13 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:nextObject2];
      [stream writeInt32NoTag:v8];
      unsignedLongLongValue = [nextObject2 unsignedLongLongValue];
      intValue = [v13 intValue];
      LODWORD(v13) = sub_10003B8D4(unsignedLongLongValue, 1, mapKeyDataType);
      [stream writeInt32NoTag:{sub_10001B184(2, intValue) + v13}];
      if (mapKeyDataType == 4)
      {
        [stream writeFixed64:1 value:unsignedLongLongValue];
      }

      else if (mapKeyDataType == 12)
      {
        [stream writeUInt64:1 value:unsignedLongLongValue];
      }

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
  v7 = [NSNumber numberWithUnsignedLongLong:key->var2];

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:v7];
}

- (void)enumerateForTextFormat:(id)format
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100048968;
  v3[3] = &unk_100096558;
  v3[4] = format;
  [(TransparencyGPBUInt64EnumDictionary *)self enumerateKeysAndRawValuesUsingBlock:v3];
}

- (BOOL)getEnum:(int *)enum forKey:(unint64_t)key
{
  v6 = [(NSMutableDictionary *)self->_dictionary objectForKey:[NSNumber numberWithUnsignedLongLong:key]];
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

- (BOOL)getRawValue:(int *)value forKey:(unint64_t)key
{
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:[NSNumber numberWithUnsignedLongLong:key]];
  v6 = v5;
  if (value && v5)
  {
    *value = [v5 intValue];
  }

  return v6 != 0;
}

- (void)enumerateKeysAndEnumsUsingBlock:(id)block
{
  v10 = 0;
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
    LODWORD(v9) = [-[NSMutableDictionary objectForKeyedSubscript:](self->_dictionary objectForKeyedSubscript:{nextObject), "intValue"}];
    v9 = validationFunc() ? v9 : 4222467823;
    (*(block + 2))(block, [v8 unsignedLongLongValue], v9, &v10);
  }

  while (v10 != 1);
}

- (void)addRawEntriesFromDictionary:(id)dictionary
{
  if (dictionary)
  {
    [(NSMutableDictionary *)self->_dictionary addEntriesFromDictionary:*(dictionary + 2)];
    autocreator = self->_autocreator;
    if (autocreator)
    {

      sub_10002B180(autocreator, self);
    }
  }
}

- (void)removeEnumForKey:(unint64_t)key
{
  dictionary = self->_dictionary;
  v4 = [NSNumber numberWithUnsignedLongLong:key];

  [(NSMutableDictionary *)dictionary removeObjectForKey:v4];
}

@end