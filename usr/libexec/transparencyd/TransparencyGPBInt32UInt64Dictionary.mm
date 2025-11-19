@interface TransparencyGPBInt32UInt64Dictionary
- (BOOL)isEqual:(id)a3;
- (TransparencyGPBInt32UInt64Dictionary)initWithDictionary:(id)a3;
- (TransparencyGPBInt32UInt64Dictionary)initWithUInt64s:(const unint64_t *)a3 forKeys:(const int *)a4 count:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)computeSerializedSizeAsField:(id)a3;
- (void)addEntriesFromDictionary:(id)a3;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)a3;
- (void)enumerateKeysAndUInt64sUsingBlock:(id)a3;
- (void)setTransparencyGPBGenericValue:(id *)a3 forTransparencyGPBGenericValueKey:(id *)a4;
- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4;
@end

@implementation TransparencyGPBInt32UInt64Dictionary

- (TransparencyGPBInt32UInt64Dictionary)initWithUInt64s:(const unint64_t *)a3 forKeys:(const int *)a4 count:(unint64_t)a5
{
  v13.receiver = self;
  v13.super_class = TransparencyGPBInt32UInt64Dictionary;
  v8 = [(TransparencyGPBInt32UInt64Dictionary *)&v13 init];
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
          v11 = [NSNumber numberWithUnsignedLongLong:v10];
          LODWORD(v10) = *a4++;
          [(NSMutableDictionary *)dictionary setObject:v11 forKey:[NSNumber numberWithInt:v10]];
          --a5;
        }

        while (a5);
      }
    }
  }

  return v8;
}

- (TransparencyGPBInt32UInt64Dictionary)initWithDictionary:(id)a3
{
  v4 = [(TransparencyGPBInt32UInt64Dictionary *)self initWithUInt64s:0 forKeys:0 count:0];
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
  v3.super_class = TransparencyGPBInt32UInt64Dictionary;
  [(TransparencyGPBInt32UInt64Dictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TransparencyGPBInt32UInt64Dictionary allocWithZone:a3];

  return [(TransparencyGPBInt32UInt64Dictionary *)v4 initWithDictionary:self];
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

- (void)enumerateKeysAndUInt64sUsingBlock:(id)a3
{
  v7 = 0;
  dictionary = self->_dictionary;
  v5 = [(NSMutableDictionary *)dictionary keyEnumerator];
  do
  {
    v6 = [v5 nextObject];
    if (!v6)
    {
      break;
    }

    (*(a3 + 2))(a3, [v6 intValue], objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](dictionary, "objectForKeyedSubscript:", v6), "unsignedLongLongValue"), &v7);
  }

  while (v7 != 1);
}

- (unint64_t)computeSerializedSizeAsField:(id)a3
{
  dictionary = self->_dictionary;
  result = [(NSMutableDictionary *)dictionary count];
  if (result)
  {
    v6 = result;
    v7 = *(*(a3 + 1) + 30);
    v8 = [a3 mapKeyDataType];
    v9 = [(NSMutableDictionary *)dictionary keyEnumerator];
    v10 = [v9 nextObject];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      do
      {
        v13 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:v11];
        v14 = sub_100175800([v11 intValue], 1, v8);
        v15 = sub_100176118([v13 unsignedLongLongValue], 2, v7) + v14;
        v12 += v15 + sub_10016FB50(v15);
        v11 = [v9 nextObject];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    return v12 + sub_100171D34(*(*(a3 + 1) + 16), 15) * v6;
  }

  return result;
}

- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4
{
  v7 = *(*(a4 + 1) + 30);
  v8 = [a4 mapKeyDataType];
  v9 = sub_1001A18B4(*(*(a4 + 1) + 16), 2);
  dictionary = self->_dictionary;
  v11 = [(NSMutableDictionary *)dictionary keyEnumerator];
  v12 = [v11 nextObject];
  if (v12)
  {
    v13 = v12;
    do
    {
      v14 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:v13];
      [a3 writeInt32NoTag:v9];
      v15 = [v13 intValue];
      v16 = [v14 unsignedLongLongValue];
      LODWORD(v14) = sub_100175800(v15, 1, v8);
      [a3 writeInt32NoTag:{sub_100176118(v16, 2, v7) + v14}];
      sub_1001759A0(a3, v15, 1, v8);
      if (v7 == 4)
      {
        [a3 writeFixed64:2 value:v16];
      }

      else if (v7 == 12)
      {
        [a3 writeUInt64:2 value:v16];
      }

      v13 = [v11 nextObject];
    }

    while (v13);
  }
}

- (void)setTransparencyGPBGenericValue:(id *)a3 forTransparencyGPBGenericValueKey:(id *)a4
{
  dictionary = self->_dictionary;
  v6 = [NSNumber numberWithUnsignedLongLong:a3->var2];
  v7 = [NSNumber numberWithInt:a4->var3];

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:v7];
}

- (void)enumerateForTextFormat:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10017B570;
  v3[3] = &unk_1003251F8;
  v3[4] = a3;
  [(TransparencyGPBInt32UInt64Dictionary *)self enumerateKeysAndUInt64sUsingBlock:v3];
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

@end