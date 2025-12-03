@interface TransparencyGPBUInt64DoubleDictionary
- (BOOL)getDouble:(double *)double forKey:(unint64_t)key;
- (BOOL)isEqual:(id)equal;
- (TransparencyGPBUInt64DoubleDictionary)initWithDictionary:(id)dictionary;
- (TransparencyGPBUInt64DoubleDictionary)initWithDoubles:(const double *)doubles forKeys:(const unint64_t *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndDoublesUsingBlock:(id)block;
- (void)removeDoubleForKey:(unint64_t)key;
- (void)setDouble:(double)double forKey:(unint64_t)key;
- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation TransparencyGPBUInt64DoubleDictionary

- (TransparencyGPBUInt64DoubleDictionary)initWithDoubles:(const double *)doubles forKeys:(const unint64_t *)keys count:(unint64_t)count
{
  v14.receiver = self;
  v14.super_class = TransparencyGPBUInt64DoubleDictionary;
  v8 = [(TransparencyGPBUInt64DoubleDictionary *)&v14 init];
  if (v8)
  {
    v8->_dictionary = objc_alloc_init(NSMutableDictionary);
    if (keys)
    {
      if (doubles && count)
      {
        do
        {
          dictionary = v8->_dictionary;
          v10 = *doubles++;
          v11 = [NSNumber numberWithDouble:v10];
          v12 = *keys++;
          [(NSMutableDictionary *)dictionary setObject:v11 forKey:[NSNumber numberWithUnsignedLongLong:v12]];
          --count;
        }

        while (count);
      }
    }
  }

  return v8;
}

- (TransparencyGPBUInt64DoubleDictionary)initWithDictionary:(id)dictionary
{
  v4 = [(TransparencyGPBUInt64DoubleDictionary *)self initWithDoubles:0 forKeys:0 count:0];
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
  v3.super_class = TransparencyGPBUInt64DoubleDictionary;
  [(TransparencyGPBUInt64DoubleDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TransparencyGPBUInt64DoubleDictionary allocWithZone:zone];

  return [(TransparencyGPBUInt64DoubleDictionary *)v4 initWithDictionary:self];
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

- (void)enumerateKeysAndDoublesUsingBlock:(id)block
{
  v10 = 0;
  dictionary = self->_dictionary;
  keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
  do
  {
    nextObject = [keyEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    v7 = nextObject;
    v8 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:nextObject];
    unsignedLongLongValue = [v7 unsignedLongLongValue];
    [v8 doubleValue];
    (*(block + 2))(block, unsignedLongLongValue, &v10);
  }

  while (v10 != 1);
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
        v13 = sub_1000C5E78([nextObject2 unsignedLongLongValue], 1, mapKeyDataType);
        [v12 doubleValue];
        v14 = sub_1000C12B0(2) + v13;
        v11 += v14 + sub_1000BF820(v14);
        nextObject2 = [keyEnumerator nextObject];
      }

      while (nextObject2);
    }

    else
    {
      v11 = 0;
    }

    return v11 + sub_1000C1A04(*(*(field + 1) + 16), 15) * v6;
  }

  return result;
}

- (void)writeToCodedOutputStream:(id)stream asField:(id)field
{
  mapKeyDataType = [field mapKeyDataType];
  v8 = sub_1000F1CD4(*(*(field + 1) + 16), 2);
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
      [v13 doubleValue];
      v16 = v15;
      LODWORD(v13) = sub_1000C5E78(unsignedLongLongValue, 1, mapKeyDataType);
      [stream writeInt32NoTag:sub_1000C12B0(2) + v13];
      if (mapKeyDataType == 4)
      {
        [stream writeFixed64:1 value:unsignedLongLongValue];
      }

      else if (mapKeyDataType == 12)
      {
        [stream writeUInt64:1 value:unsignedLongLongValue];
      }

      [stream writeDouble:2 value:v16];
      nextObject2 = [keyEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key
{
  dictionary = self->_dictionary;
  v6 = [NSNumber numberWithDouble:value->var6];
  v7 = [NSNumber numberWithUnsignedLongLong:key->var2];

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:v7];
}

- (void)enumerateForTextFormat:(id)format
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000D2580;
  v3[3] = &unk_1001375D0;
  v3[4] = format;
  [(TransparencyGPBUInt64DoubleDictionary *)self enumerateKeysAndDoublesUsingBlock:v3];
}

- (BOOL)getDouble:(double *)double forKey:(unint64_t)key
{
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:[NSNumber numberWithUnsignedLongLong:key]];
  v6 = v5;
  if (double && v5)
  {
    [v5 doubleValue];
    *double = v7;
  }

  return v6 != 0;
}

- (void)addEntriesFromDictionary:(id)dictionary
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

- (void)setDouble:(double)double forKey:(unint64_t)key
{
  [(NSMutableDictionary *)self->_dictionary setObject:[NSNumber forKey:"numberWithDouble:" numberWithDouble:double], [NSNumber numberWithUnsignedLongLong:key]];
  autocreator = self->_autocreator;
  if (autocreator)
  {

    sub_1000E2C68(autocreator, self);
  }
}

- (void)removeDoubleForKey:(unint64_t)key
{
  dictionary = self->_dictionary;
  v4 = [NSNumber numberWithUnsignedLongLong:key];

  [(NSMutableDictionary *)dictionary removeObjectForKey:v4];
}

@end