@interface TransparencyGPBStringDoubleDictionary
- (BOOL)getDouble:(double *)double forKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (TransparencyGPBStringDoubleDictionary)initWithDictionary:(id)dictionary;
- (TransparencyGPBStringDoubleDictionary)initWithDoubles:(const double *)doubles forKeys:(id *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndDoublesUsingBlock:(id)block;
- (void)setDouble:(double)double forKey:(id)key;
- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation TransparencyGPBStringDoubleDictionary

- (TransparencyGPBStringDoubleDictionary)initWithDoubles:(const double *)doubles forKeys:(id *)keys count:(unint64_t)count
{
  v14.receiver = self;
  v14.super_class = TransparencyGPBStringDoubleDictionary;
  v8 = [(TransparencyGPBStringDoubleDictionary *)&v14 init];
  if (v8)
  {
    v8->_dictionary = objc_alloc_init(NSMutableDictionary);
    if (keys)
    {
      if (doubles && count)
      {
        do
        {
          if (!*keys)
          {
            [NSException raise:NSInvalidArgumentException format:@"Attempting to add nil key to a Dictionary"];
          }

          dictionary = v8->_dictionary;
          v10 = *doubles++;
          v11 = [NSNumber numberWithDouble:v10];
          v12 = *keys++;
          [(NSMutableDictionary *)dictionary setObject:v11 forKey:v12];
          --count;
        }

        while (count);
      }
    }
  }

  return v8;
}

- (TransparencyGPBStringDoubleDictionary)initWithDictionary:(id)dictionary
{
  v4 = [(TransparencyGPBStringDoubleDictionary *)self initWithDoubles:0 forKeys:0 count:0];
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
  v3.super_class = TransparencyGPBStringDoubleDictionary;
  [(TransparencyGPBStringDoubleDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TransparencyGPBStringDoubleDictionary allocWithZone:zone];

  return [(TransparencyGPBStringDoubleDictionary *)v4 initWithDictionary:self];
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
  v8 = 0;
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
    [-[NSMutableDictionary objectForKeyedSubscript:](dictionary objectForKeyedSubscript:{nextObject), "doubleValue"}];
    (*(block + 2))(block, v7, &v8);
  }

  while (v8 != 1);
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
        v12 = sub_10001B274(1, nextObject2);
        [v11 doubleValue];
        v13 = &v12[sub_10001B02C(2)];
        v10 += &v13[sub_100019594(v13)];
        nextObject2 = [keyEnumerator nextObject];
      }

      while (nextObject2);
    }

    else
    {
      v10 = 0;
    }

    return v10 + sub_10001B780(*(*(field + 1) + 16), 15) * v6;
  }

  return result;
}

- (void)writeToCodedOutputStream:(id)stream asField:(id)field
{
  [field mapKeyDataType];
  v7 = sub_100025184(*(*(field + 1) + 16), 2);
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
      [v12 doubleValue];
      v14 = v13;
      LODWORD(v12) = sub_10001B274(1, nextObject2);
      [stream writeInt32NoTag:sub_10001B02C(2) + v12];
      [stream writeString:1 value:nextObject2];
      [stream writeDouble:2 value:v14];
      nextObject2 = [keyEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key
{
  dictionary = self->_dictionary;
  v6 = [NSNumber numberWithDouble:value->var6];
  var2 = key->var2;

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:var2];
}

- (void)enumerateForTextFormat:(id)format
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100051D4C;
  v3[3] = &unk_1000968A0;
  v3[4] = format;
  [(TransparencyGPBStringDoubleDictionary *)self enumerateKeysAndDoublesUsingBlock:v3];
}

- (BOOL)getDouble:(double *)double forKey:(id)key
{
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:key];
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

      sub_10002B180(autocreator, self);
    }
  }
}

- (void)setDouble:(double)double forKey:(id)key
{
  if (!key)
  {
    [NSException raise:NSInvalidArgumentException format:@"Attempting to add nil key to a Dictionary"];
  }

  [(NSMutableDictionary *)self->_dictionary setObject:[NSNumber forKey:"numberWithDouble:" numberWithDouble:double], key];
  autocreator = self->_autocreator;
  if (autocreator)
  {

    sub_10002B180(autocreator, self);
  }
}

@end