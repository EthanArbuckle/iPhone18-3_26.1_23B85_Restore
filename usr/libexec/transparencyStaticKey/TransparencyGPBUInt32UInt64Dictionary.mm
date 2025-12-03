@interface TransparencyGPBUInt32UInt64Dictionary
- (BOOL)isEqual:(id)equal;
- (TransparencyGPBUInt32UInt64Dictionary)initWithDictionary:(id)dictionary;
- (TransparencyGPBUInt32UInt64Dictionary)initWithUInt64s:(const unint64_t *)int64s forKeys:(const unsigned int *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndUInt64sUsingBlock:(id)block;
- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation TransparencyGPBUInt32UInt64Dictionary

- (TransparencyGPBUInt32UInt64Dictionary)initWithUInt64s:(const unint64_t *)int64s forKeys:(const unsigned int *)keys count:(unint64_t)count
{
  v13.receiver = self;
  v13.super_class = TransparencyGPBUInt32UInt64Dictionary;
  v8 = [(TransparencyGPBUInt32UInt64Dictionary *)&v13 init];
  if (v8)
  {
    v8->_dictionary = objc_alloc_init(NSMutableDictionary);
    if (keys)
    {
      if (int64s && count)
      {
        do
        {
          dictionary = v8->_dictionary;
          v10 = *int64s++;
          v11 = [NSNumber numberWithUnsignedLongLong:v10];
          LODWORD(v10) = *keys++;
          [(NSMutableDictionary *)dictionary setObject:v11 forKey:[NSNumber numberWithUnsignedInt:v10]];
          --count;
        }

        while (count);
      }
    }
  }

  return v8;
}

- (TransparencyGPBUInt32UInt64Dictionary)initWithDictionary:(id)dictionary
{
  v4 = [(TransparencyGPBUInt32UInt64Dictionary *)self initWithUInt64s:0 forKeys:0 count:0];
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
  v3.super_class = TransparencyGPBUInt32UInt64Dictionary;
  [(TransparencyGPBUInt32UInt64Dictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TransparencyGPBUInt32UInt64Dictionary allocWithZone:zone];

  return [(TransparencyGPBUInt32UInt64Dictionary *)v4 initWithDictionary:self];
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

- (void)enumerateKeysAndUInt64sUsingBlock:(id)block
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

    (*(block + 2))(block, [nextObject unsignedIntValue], objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](dictionary, "objectForKeyedSubscript:", nextObject), "unsignedLongLongValue"), &v7);
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
        v14 = sub_10003A6C4([nextObject2 unsignedIntValue], 1, mapKeyDataType);
        v15 = sub_10003B8D4([v13 unsignedLongLongValue], 2, v7) + v14;
        v12 += v15 + sub_100019594(v15);
        nextObject2 = [keyEnumerator nextObject];
      }

      while (nextObject2);
    }

    else
    {
      v12 = 0;
    }

    return v12 + sub_10001B780(*(*(field + 1) + 16), 15) * v6;
  }

  return result;
}

- (void)writeToCodedOutputStream:(id)stream asField:(id)field
{
  v7 = *(*(field + 1) + 30);
  mapKeyDataType = [field mapKeyDataType];
  v9 = sub_100025184(*(*(field + 1) + 16), 2);
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
      unsignedIntValue = [nextObject2 unsignedIntValue];
      unsignedLongLongValue = [v14 unsignedLongLongValue];
      LODWORD(v14) = sub_10003A6C4(unsignedIntValue, 1, mapKeyDataType);
      [stream writeInt32NoTag:{sub_10003B8D4(unsignedLongLongValue, 2, v7) + v14}];
      if (mapKeyDataType == 1)
      {
        [stream writeFixed32:1 value:unsignedIntValue];
      }

      else if (mapKeyDataType == 11)
      {
        [stream writeUInt32:1 value:unsignedIntValue];
      }

      if (v7 == 4)
      {
        [stream writeFixed64:2 value:unsignedLongLongValue];
      }

      else if (v7 == 12)
      {
        [stream writeUInt64:2 value:unsignedLongLongValue];
      }

      nextObject2 = [keyEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key
{
  dictionary = self->_dictionary;
  v6 = [NSNumber numberWithUnsignedLongLong:value->var2];
  v7 = [NSNumber numberWithUnsignedInt:key->var3];

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:v7];
}

- (void)enumerateForTextFormat:(id)format
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003BB54;
  v3[3] = &unk_100096300;
  v3[4] = format;
  [(TransparencyGPBUInt32UInt64Dictionary *)self enumerateKeysAndUInt64sUsingBlock:v3];
}

- (void)addEntriesFromDictionary:(id)dictionary
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

@end