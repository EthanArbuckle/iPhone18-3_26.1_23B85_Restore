@interface TransparencyGPBUInt64DoubleDictionary
- (BOOL)getDouble:(double *)a3 forKey:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (TransparencyGPBUInt64DoubleDictionary)initWithDictionary:(id)a3;
- (TransparencyGPBUInt64DoubleDictionary)initWithDoubles:(const double *)a3 forKeys:(const unint64_t *)a4 count:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)computeSerializedSizeAsField:(id)a3;
- (void)addEntriesFromDictionary:(id)a3;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)a3;
- (void)enumerateKeysAndDoublesUsingBlock:(id)a3;
- (void)removeDoubleForKey:(unint64_t)a3;
- (void)setDouble:(double)a3 forKey:(unint64_t)a4;
- (void)setTransparencyGPBGenericValue:(id *)a3 forTransparencyGPBGenericValueKey:(id *)a4;
- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4;
@end

@implementation TransparencyGPBUInt64DoubleDictionary

- (TransparencyGPBUInt64DoubleDictionary)initWithDoubles:(const double *)a3 forKeys:(const unint64_t *)a4 count:(unint64_t)a5
{
  v14.receiver = self;
  v14.super_class = TransparencyGPBUInt64DoubleDictionary;
  v8 = [(TransparencyGPBUInt64DoubleDictionary *)&v14 init];
  if (v8)
  {
    v8->_dictionary = objc_alloc_init(NSMutableDictionary);
    if (a4)
    {
      if (a3 && a5)
      {
        do
        {
          dictionary = v8->_dictionary;
          v10 = *a3++;
          v11 = [NSNumber numberWithDouble:v10];
          v12 = *a4++;
          [(NSMutableDictionary *)dictionary setObject:v11 forKey:[NSNumber numberWithUnsignedLongLong:v12]];
          --a5;
        }

        while (a5);
      }
    }
  }

  return v8;
}

- (TransparencyGPBUInt64DoubleDictionary)initWithDictionary:(id)a3
{
  v4 = [(TransparencyGPBUInt64DoubleDictionary *)self initWithDoubles:0 forKeys:0 count:0];
  v5 = v4;
  if (a3 && v4)
  {
    [(NSMutableDictionary *)v4->_dictionary addEntriesFromDictionary:*(a3 + 2)];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TransparencyGPBUInt64DoubleDictionary;
  [(TransparencyGPBUInt64DoubleDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TransparencyGPBUInt64DoubleDictionary allocWithZone:a3];

  return [(TransparencyGPBUInt64DoubleDictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  dictionary = self->_dictionary;
  v6 = *(a3 + 2);

  return [(NSMutableDictionary *)dictionary isEqual:v6];
}

- (void)enumerateKeysAndDoublesUsingBlock:(id)a3
{
  v10 = 0;
  dictionary = self->_dictionary;
  v5 = [(NSMutableDictionary *)dictionary keyEnumerator];
  do
  {
    v6 = [v5 nextObject];
    if (!v6)
    {
      break;
    }

    v7 = v6;
    v8 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:v6];
    v9 = [v7 unsignedLongLongValue];
    [v8 doubleValue];
    (*(a3 + 2))(a3, v9, &v10);
  }

  while (v10 != 1);
}

- (unint64_t)computeSerializedSizeAsField:(id)a3
{
  dictionary = self->_dictionary;
  result = [(NSMutableDictionary *)dictionary count];
  if (result)
  {
    v6 = result;
    v7 = [a3 mapKeyDataType];
    v8 = [(NSMutableDictionary *)dictionary keyEnumerator];
    v9 = [v8 nextObject];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      do
      {
        v12 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:v10];
        v13 = sub_100176118([v10 unsignedLongLongValue], 1, v7);
        [v12 doubleValue];
        v14 = sub_1001715E0(2) + v13;
        v11 += v14 + sub_10016FB50(v14);
        v10 = [v8 nextObject];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    return v11 + sub_100171D34(*(*(a3 + 1) + 16), 15) * v6;
  }

  return result;
}

- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4
{
  v7 = [a4 mapKeyDataType];
  v8 = sub_1001A18B4(*(*(a4 + 1) + 16), 2);
  dictionary = self->_dictionary;
  v10 = [(NSMutableDictionary *)dictionary keyEnumerator];
  v11 = [v10 nextObject];
  if (v11)
  {
    v12 = v11;
    do
    {
      v13 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:v12];
      [a3 writeInt32NoTag:v8];
      v14 = [v12 unsignedLongLongValue];
      [v13 doubleValue];
      v16 = v15;
      LODWORD(v13) = sub_100176118(v14, 1, v7);
      [a3 writeInt32NoTag:sub_1001715E0(2) + v13];
      if (v7 == 4)
      {
        [a3 writeFixed64:1 value:v14];
      }

      else if (v7 == 12)
      {
        [a3 writeUInt64:1 value:v14];
      }

      [a3 writeDouble:2 value:v16];
      v12 = [v10 nextObject];
    }

    while (v12);
  }
}

- (void)setTransparencyGPBGenericValue:(id *)a3 forTransparencyGPBGenericValueKey:(id *)a4
{
  dictionary = self->_dictionary;
  v6 = [NSNumber numberWithDouble:a3->var6];
  v7 = [NSNumber numberWithUnsignedLongLong:a4->var2];

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:v7];
}

- (void)enumerateForTextFormat:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100182820;
  v3[3] = &unk_1003253D8;
  v3[4] = a3;
  [(TransparencyGPBUInt64DoubleDictionary *)self enumerateKeysAndDoublesUsingBlock:v3];
}

- (BOOL)getDouble:(double *)a3 forKey:(unint64_t)a4
{
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:[NSNumber numberWithUnsignedLongLong:a4]];
  v6 = v5;
  if (a3 && v5)
  {
    [v5 doubleValue];
    *a3 = v7;
  }

  return v6 != 0;
}

- (void)addEntriesFromDictionary:(id)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_dictionary addEntriesFromDictionary:*(a3 + 2)];
    autocreator = self->_autocreator;
    if (autocreator)
    {

      sub_100192DE8(autocreator, self);
    }
  }
}

- (void)setDouble:(double)a3 forKey:(unint64_t)a4
{
  [(NSMutableDictionary *)self->_dictionary setObject:[NSNumber forKey:"numberWithDouble:" numberWithDouble:a3], [NSNumber numberWithUnsignedLongLong:a4]];
  autocreator = self->_autocreator;
  if (autocreator)
  {

    sub_100192DE8(autocreator, self);
  }
}

- (void)removeDoubleForKey:(unint64_t)a3
{
  dictionary = self->_dictionary;
  v4 = [NSNumber numberWithUnsignedLongLong:a3];

  [(NSMutableDictionary *)dictionary removeObjectForKey:v4];
}

@end