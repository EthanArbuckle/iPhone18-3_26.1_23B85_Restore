@interface TransparencyGPBUInt32Int32Dictionary
- (BOOL)isEqual:(id)a3;
- (TransparencyGPBUInt32Int32Dictionary)initWithDictionary:(id)a3;
- (TransparencyGPBUInt32Int32Dictionary)initWithInt32s:(const int *)a3 forKeys:(const unsigned int *)a4 count:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)computeSerializedSizeAsField:(id)a3;
- (void)addEntriesFromDictionary:(id)a3;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)a3;
- (void)enumerateKeysAndInt32sUsingBlock:(id)a3;
- (void)setTransparencyGPBGenericValue:(id *)a3 forTransparencyGPBGenericValueKey:(id *)a4;
- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4;
@end

@implementation TransparencyGPBUInt32Int32Dictionary

- (TransparencyGPBUInt32Int32Dictionary)initWithInt32s:(const int *)a3 forKeys:(const unsigned int *)a4 count:(unint64_t)a5
{
  v14.receiver = self;
  v14.super_class = TransparencyGPBUInt32Int32Dictionary;
  v8 = [(TransparencyGPBUInt32Int32Dictionary *)&v14 init];
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
          v11 = [NSNumber numberWithInt:v10];
          v12 = *a4++;
          [(NSMutableDictionary *)dictionary setObject:v11 forKey:[NSNumber numberWithUnsignedInt:v12]];
          --a5;
        }

        while (a5);
      }
    }
  }

  return v8;
}

- (TransparencyGPBUInt32Int32Dictionary)initWithDictionary:(id)a3
{
  v4 = [(TransparencyGPBUInt32Int32Dictionary *)self initWithInt32s:0 forKeys:0 count:0];
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
  v3.super_class = TransparencyGPBUInt32Int32Dictionary;
  [(TransparencyGPBUInt32Int32Dictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TransparencyGPBUInt32Int32Dictionary allocWithZone:a3];

  return [(TransparencyGPBUInt32Int32Dictionary *)v4 initWithDictionary:self];
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

- (void)enumerateKeysAndInt32sUsingBlock:(id)a3
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

    (*(a3 + 2))(a3, [v6 unsignedIntValue], objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](dictionary, "objectForKeyedSubscript:", v6), "intValue"), &v7);
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
        v14 = sub_100174F08([v11 unsignedIntValue], 1, v8);
        v15 = sub_100175800([v13 intValue], 2, v7) + v14;
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
      v15 = [v13 unsignedIntValue];
      v16 = [v14 intValue];
      LODWORD(v14) = sub_100174F08(v15, 1, v8);
      [a3 writeInt32NoTag:{sub_100175800(v16, 2, v7) + v14}];
      if (v8 == 1)
      {
        [a3 writeFixed32:1 value:v15];
      }

      else if (v8 == 11)
      {
        [a3 writeUInt32:1 value:v15];
      }

      sub_1001759A0(a3, v16, 2, v7);
      v13 = [v11 nextObject];
    }

    while (v13);
  }
}

- (void)setTransparencyGPBGenericValue:(id *)a3 forTransparencyGPBGenericValueKey:(id *)a4
{
  dictionary = self->_dictionary;
  v6 = [NSNumber numberWithInt:a3->var3];
  v7 = [NSNumber numberWithUnsignedInt:a4->var3];

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:v7];
}

- (void)enumerateForTextFormat:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100175AA8;
  v3[3] = &unk_100325090;
  v3[4] = a3;
  [(TransparencyGPBUInt32Int32Dictionary *)self enumerateKeysAndInt32sUsingBlock:v3];
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