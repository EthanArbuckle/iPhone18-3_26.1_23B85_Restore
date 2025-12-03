@interface TransparencyGPBInt32FloatDictionary
- (BOOL)isEqual:(id)equal;
- (TransparencyGPBInt32FloatDictionary)initWithDictionary:(id)dictionary;
- (TransparencyGPBInt32FloatDictionary)initWithFloats:(const float *)floats forKeys:(const int *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndFloatsUsingBlock:(id)block;
- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation TransparencyGPBInt32FloatDictionary

- (TransparencyGPBInt32FloatDictionary)initWithFloats:(const float *)floats forKeys:(const int *)keys count:(unint64_t)count
{
  v15.receiver = self;
  v15.super_class = TransparencyGPBInt32FloatDictionary;
  v8 = [(TransparencyGPBInt32FloatDictionary *)&v15 init];
  if (v8)
  {
    v8->_dictionary = objc_alloc_init(NSMutableDictionary);
    if (keys)
    {
      if (floats && count)
      {
        do
        {
          dictionary = v8->_dictionary;
          v11 = *floats++;
          LODWORD(v9) = v11;
          v12 = [NSNumber numberWithFloat:v9];
          v13 = *keys++;
          [(NSMutableDictionary *)dictionary setObject:v12 forKey:[NSNumber numberWithInt:v13]];
          --count;
        }

        while (count);
      }
    }
  }

  return v8;
}

- (TransparencyGPBInt32FloatDictionary)initWithDictionary:(id)dictionary
{
  v4 = [(TransparencyGPBInt32FloatDictionary *)self initWithFloats:0 forKeys:0 count:0];
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
  v3.super_class = TransparencyGPBInt32FloatDictionary;
  [(TransparencyGPBInt32FloatDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TransparencyGPBInt32FloatDictionary allocWithZone:zone];

  return [(TransparencyGPBInt32FloatDictionary *)v4 initWithDictionary:self];
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

- (void)enumerateKeysAndFloatsUsingBlock:(id)block
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
    intValue = [v7 intValue];
    [v8 floatValue];
    (*(block + 2))(block, intValue, &v10);
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
        v13 = sub_100175800([nextObject2 intValue], 1, mapKeyDataType);
        [v12 floatValue];
        v14 = sub_100171680(2) + v13;
        v11 += v14 + sub_10016FB50(v14);
        nextObject2 = [keyEnumerator nextObject];
      }

      while (nextObject2);
    }

    else
    {
      v11 = 0;
    }

    return v11 + sub_100171D34(*(*(field + 1) + 16), 15) * v6;
  }

  return result;
}

- (void)writeToCodedOutputStream:(id)stream asField:(id)field
{
  mapKeyDataType = [field mapKeyDataType];
  v8 = sub_1001A18B4(*(*(field + 1) + 16), 2);
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
      intValue = [nextObject2 intValue];
      [v13 floatValue];
      v16 = v15;
      LODWORD(v13) = sub_100175800(intValue, 1, mapKeyDataType);
      [stream writeInt32NoTag:sub_100171680(2) + v13];
      sub_1001759A0(stream, intValue, 1, mapKeyDataType);
      LODWORD(v17) = v16;
      [stream writeFloat:2 value:v17];
      nextObject2 = [keyEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key
{
  dictionary = self->_dictionary;
  LODWORD(v4) = value->var1;
  v7 = [NSNumber numberWithFloat:v4];
  v8 = [NSNumber numberWithInt:key->var3];

  [(NSMutableDictionary *)dictionary setObject:v7 forKey:v8];
}

- (void)enumerateForTextFormat:(id)format
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10017CE78;
  v3[3] = &unk_100325270;
  v3[4] = format;
  [(TransparencyGPBInt32FloatDictionary *)self enumerateKeysAndFloatsUsingBlock:v3];
}

- (void)addEntriesFromDictionary:(id)dictionary
{
  if (dictionary)
  {
    [(NSMutableDictionary *)self->_dictionary addEntriesFromDictionary:*(dictionary + 2)];
    autocreator = self->_autocreator;
    if (autocreator)
    {

      sub_100192DE8(autocreator, self);
    }
  }
}

@end