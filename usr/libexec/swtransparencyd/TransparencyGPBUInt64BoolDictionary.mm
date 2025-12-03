@interface TransparencyGPBUInt64BoolDictionary
- (BOOL)getBool:(BOOL *)bool forKey:(unint64_t)key;
- (BOOL)isEqual:(id)equal;
- (TransparencyGPBUInt64BoolDictionary)initWithBools:(const BOOL *)bools forKeys:(const unint64_t *)keys count:(unint64_t)count;
- (TransparencyGPBUInt64BoolDictionary)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndBoolsUsingBlock:(id)block;
- (void)removeBoolForKey:(unint64_t)key;
- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation TransparencyGPBUInt64BoolDictionary

- (TransparencyGPBUInt64BoolDictionary)initWithBools:(const BOOL *)bools forKeys:(const unint64_t *)keys count:(unint64_t)count
{
  v14.receiver = self;
  v14.super_class = TransparencyGPBUInt64BoolDictionary;
  v8 = [(TransparencyGPBUInt64BoolDictionary *)&v14 init];
  if (v8)
  {
    v8->_dictionary = objc_alloc_init(NSMutableDictionary);
    if (keys)
    {
      if (bools && count)
      {
        do
        {
          dictionary = v8->_dictionary;
          v10 = *bools++;
          v11 = [NSNumber numberWithBool:v10];
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

- (TransparencyGPBUInt64BoolDictionary)initWithDictionary:(id)dictionary
{
  v4 = [(TransparencyGPBUInt64BoolDictionary *)self initWithBools:0 forKeys:0 count:0];
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
  v3.super_class = TransparencyGPBUInt64BoolDictionary;
  [(TransparencyGPBUInt64BoolDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TransparencyGPBUInt64BoolDictionary allocWithZone:zone];

  return [(TransparencyGPBUInt64BoolDictionary *)v4 initWithDictionary:self];
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

- (void)enumerateKeysAndBoolsUsingBlock:(id)block
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

    (*(block + 2))(block, [nextObject unsignedLongLongValue], objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](dictionary, "objectForKeyedSubscript:", nextObject), "BOOLValue"), &v7);
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
        v13 = sub_1000C5E78([nextObject2 unsignedLongLongValue], 1, mapKeyDataType);
        [v12 BOOLValue];
        v14 = sub_1000C14A8(2) + v13;
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
      bOOLValue = [v13 BOOLValue];
      LODWORD(v13) = sub_1000C5E78(unsignedLongLongValue, 1, mapKeyDataType);
      [stream writeInt32NoTag:sub_1000C14A8(2) + v13];
      if (mapKeyDataType == 4)
      {
        [stream writeFixed64:1 value:unsignedLongLongValue];
      }

      else if (mapKeyDataType == 12)
      {
        [stream writeUInt64:1 value:unsignedLongLongValue];
      }

      [stream writeBool:2 value:bOOLValue];
      nextObject2 = [keyEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key
{
  dictionary = self->_dictionary;
  v6 = [NSNumber numberWithBool:value->var0];
  v7 = [NSNumber numberWithUnsignedLongLong:key->var2];

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:v7];
}

- (void)enumerateForTextFormat:(id)format
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000D14A0;
  v3[3] = &unk_100137580;
  v3[4] = format;
  [(TransparencyGPBUInt64BoolDictionary *)self enumerateKeysAndBoolsUsingBlock:v3];
}

- (BOOL)getBool:(BOOL *)bool forKey:(unint64_t)key
{
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:[NSNumber numberWithUnsignedLongLong:key]];
  v6 = v5;
  if (bool && v5)
  {
    *bool = [v5 BOOLValue];
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

- (void)removeBoolForKey:(unint64_t)key
{
  dictionary = self->_dictionary;
  v4 = [NSNumber numberWithUnsignedLongLong:key];

  [(NSMutableDictionary *)dictionary removeObjectForKey:v4];
}

@end