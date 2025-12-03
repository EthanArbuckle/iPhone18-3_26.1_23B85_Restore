@interface TransparencyGPBStringInt64Dictionary
- (BOOL)getInt64:(int64_t *)int64 forKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (TransparencyGPBStringInt64Dictionary)initWithDictionary:(id)dictionary;
- (TransparencyGPBStringInt64Dictionary)initWithInt64s:(const int64_t *)int64s forKeys:(id *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndInt64sUsingBlock:(id)block;
- (void)setInt64:(int64_t)int64 forKey:(id)key;
- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation TransparencyGPBStringInt64Dictionary

- (TransparencyGPBStringInt64Dictionary)initWithInt64s:(const int64_t *)int64s forKeys:(id *)keys count:(unint64_t)count
{
  v14.receiver = self;
  v14.super_class = TransparencyGPBStringInt64Dictionary;
  v8 = [(TransparencyGPBStringInt64Dictionary *)&v14 init];
  if (v8)
  {
    v8->_dictionary = objc_alloc_init(NSMutableDictionary);
    if (keys)
    {
      if (int64s && count)
      {
        do
        {
          if (!*keys)
          {
            [NSException raise:NSInvalidArgumentException format:@"Attempting to add nil key to a Dictionary"];
          }

          dictionary = v8->_dictionary;
          v10 = *int64s++;
          v11 = [NSNumber numberWithLongLong:v10];
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

- (TransparencyGPBStringInt64Dictionary)initWithDictionary:(id)dictionary
{
  v4 = [(TransparencyGPBStringInt64Dictionary *)self initWithInt64s:0 forKeys:0 count:0];
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
  v3.super_class = TransparencyGPBStringInt64Dictionary;
  [(TransparencyGPBStringInt64Dictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TransparencyGPBStringInt64Dictionary allocWithZone:zone];

  return [(TransparencyGPBStringInt64Dictionary *)v4 initWithDictionary:self];
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

- (void)enumerateKeysAndInt64sUsingBlock:(id)block
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

    (*(block + 2))(block, nextObject, [-[NSMutableDictionary objectForKeyedSubscript:](dictionary objectForKeyedSubscript:{nextObject), "longLongValue"}], &v7);
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
    [field mapKeyDataType];
    keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
    nextObject = [keyEnumerator nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      v11 = 0;
      do
      {
        v12 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:nextObject2];
        v13 = sub_10001B274(1, nextObject2);
        v14 = &v13[sub_10003C1C4([v12 longLongValue], 2, v7)];
        v11 += &v14[sub_100019594(v14)];
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
  v7 = *(*(field + 1) + 30);
  [field mapKeyDataType];
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
      longLongValue = [v13 longLongValue];
      v15 = sub_10001B274(1, nextObject2);
      [stream writeInt32NoTag:{sub_10003C1C4(longLongValue, 2, v7) + v15}];
      [stream writeString:1 value:nextObject2];
      sub_10003C364(stream, longLongValue, 2, v7);
      nextObject2 = [keyEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (void)setTransparencyGPBGenericValue:(id *)value forTransparencyGPBGenericValueKey:(id *)key
{
  dictionary = self->_dictionary;
  v6 = [NSNumber numberWithLongLong:value->var2];
  var2 = key->var2;

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:var2];
}

- (void)enumerateForTextFormat:(id)format
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100050638;
  v3[3] = &unk_100096828;
  v3[4] = format;
  [(TransparencyGPBStringInt64Dictionary *)self enumerateKeysAndInt64sUsingBlock:v3];
}

- (BOOL)getInt64:(int64_t *)int64 forKey:(id)key
{
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:key];
  v6 = v5;
  if (int64 && v5)
  {
    *int64 = [v5 longLongValue];
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

- (void)setInt64:(int64_t)int64 forKey:(id)key
{
  if (!key)
  {
    [NSException raise:NSInvalidArgumentException format:@"Attempting to add nil key to a Dictionary"];
  }

  [(NSMutableDictionary *)self->_dictionary setObject:[NSNumber forKey:"numberWithLongLong:" numberWithLongLong:int64], key];
  autocreator = self->_autocreator;
  if (autocreator)
  {

    sub_10002B180(autocreator, self);
  }
}

@end