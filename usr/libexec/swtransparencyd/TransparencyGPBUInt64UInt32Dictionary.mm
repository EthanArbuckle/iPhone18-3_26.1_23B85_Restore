@interface TransparencyGPBUInt64UInt32Dictionary
- (BOOL)getUInt32:(unsigned int *)int32 forKey:(unint64_t)key;
- (BOOL)isEqual:(id)equal;
- (TransparencyGPBUInt64UInt32Dictionary)initWithDictionary:(id)dictionary;
- (TransparencyGPBUInt64UInt32Dictionary)initWithUInt32s:(const unsigned int *)int32s forKeys:(const unint64_t *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndUInt32sUsingBlock:(id)block;
- (void)removeUInt32ForKey:(unint64_t)key;
- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation TransparencyGPBUInt64UInt32Dictionary

- (TransparencyGPBUInt64UInt32Dictionary)initWithUInt32s:(const unsigned int *)int32s forKeys:(const unint64_t *)keys count:(unint64_t)count
{
  v14.receiver = self;
  v14.super_class = TransparencyGPBUInt64UInt32Dictionary;
  v8 = [(TransparencyGPBUInt64UInt32Dictionary *)&v14 init];
  if (v8)
  {
    v8->_dictionary = objc_alloc_init(NSMutableDictionary);
    if (keys)
    {
      if (int32s && count)
      {
        do
        {
          dictionary = v8->_dictionary;
          v10 = *int32s++;
          v11 = [NSNumber numberWithUnsignedInt:v10];
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

- (TransparencyGPBUInt64UInt32Dictionary)initWithDictionary:(id)dictionary
{
  v4 = [(TransparencyGPBUInt64UInt32Dictionary *)self initWithUInt32s:0 forKeys:0 count:0];
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
  v3.super_class = TransparencyGPBUInt64UInt32Dictionary;
  [(TransparencyGPBUInt64UInt32Dictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TransparencyGPBUInt64UInt32Dictionary allocWithZone:zone];

  return [(TransparencyGPBUInt64UInt32Dictionary *)v4 initWithDictionary:self];
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

- (void)enumerateKeysAndUInt32sUsingBlock:(id)block
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

    (*(block + 2))(block, [nextObject unsignedLongLongValue], objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](dictionary, "objectForKeyedSubscript:", nextObject), "unsignedIntValue"), &v7);
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
    v7 = *(*(field + 1) + 30);
    mapKeyDataType = [field mapKeyDataType];
    keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
    nextObject = [keyEnumerator nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      v12 = 0;
      do
      {
        v13 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:nextObject2];
        v14 = sub_1000C5E78([nextObject2 unsignedLongLongValue], 1, mapKeyDataType);
        v15 = sub_1000C4C68([v13 unsignedIntValue], 2, v7) + v14;
        v12 += v15 + sub_1000BF820(v15);
        nextObject2 = [keyEnumerator nextObject];
      }

      while (nextObject2);
    }

    else
    {
      v12 = 0;
    }

    return v12 + sub_1000C1A04(*(*(field + 1) + 16), 15) * v6;
  }

  return result;
}

- (void)writeToCodedOutputStream:(id)stream asField:(id)field
{
  v7 = *(*(field + 1) + 30);
  mapKeyDataType = [field mapKeyDataType];
  v9 = sub_1000F1CD4(*(*(field + 1) + 16), 2);
  dictionary = self->_dictionary;
  keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v14 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:nextObject2];
      [stream writeInt32NoTag:v9];
      unsignedLongLongValue = [nextObject2 unsignedLongLongValue];
      unsignedIntValue = [v14 unsignedIntValue];
      LODWORD(v14) = sub_1000C5E78(unsignedLongLongValue, 1, mapKeyDataType);
      [stream writeInt32NoTag:{sub_1000C4C68(unsignedIntValue, 2, v7) + v14}];
      if (mapKeyDataType == 4)
      {
        [stream writeFixed64:1 value:unsignedLongLongValue];
      }

      else if (mapKeyDataType == 12)
      {
        [stream writeUInt64:1 value:unsignedLongLongValue];
      }

      if (v7 == 1)
      {
        [stream writeFixed32:2 value:unsignedIntValue];
      }

      else if (v7 == 11)
      {
        [stream writeUInt32:2 value:unsignedIntValue];
      }

      nextObject2 = [keyEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key
{
  dictionary = self->_dictionary;
  v6 = [NSNumber numberWithUnsignedInt:value->var3];
  v7 = [NSNumber numberWithUnsignedLongLong:key->var2];

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:v7];
}

- (void)enumerateForTextFormat:(id)format
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000CF238;
  v3[3] = &unk_1001374E0;
  v3[4] = format;
  [(TransparencyGPBUInt64UInt32Dictionary *)self enumerateKeysAndUInt32sUsingBlock:v3];
}

- (BOOL)getUInt32:(unsigned int *)int32 forKey:(unint64_t)key
{
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:[NSNumber numberWithUnsignedLongLong:key]];
  v6 = v5;
  if (int32 && v5)
  {
    *int32 = [v5 unsignedIntValue];
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

- (void)removeUInt32ForKey:(unint64_t)key
{
  dictionary = self->_dictionary;
  v4 = [NSNumber numberWithUnsignedLongLong:key];

  [(NSMutableDictionary *)dictionary removeObjectForKey:v4];
}

@end