@interface TransparencyGPBInt32FloatDictionary
- (BOOL)isEqual:(id)a3;
- (TransparencyGPBInt32FloatDictionary)initWithDictionary:(id)a3;
- (TransparencyGPBInt32FloatDictionary)initWithFloats:(const float *)a3 forKeys:(const int *)a4 count:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)computeSerializedSizeAsField:(id)a3;
- (void)addEntriesFromDictionary:(id)a3;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)a3;
- (void)enumerateKeysAndFloatsUsingBlock:(id)a3;
- (void)setTransparencyGPBGenericValue:(id *)a3 forTransparencyGPBGenericValueKey:(id *)a4;
- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4;
@end

@implementation TransparencyGPBInt32FloatDictionary

- (TransparencyGPBInt32FloatDictionary)initWithFloats:(const float *)a3 forKeys:(const int *)a4 count:(unint64_t)a5
{
  v15.receiver = self;
  v15.super_class = TransparencyGPBInt32FloatDictionary;
  v8 = [(TransparencyGPBInt32FloatDictionary *)&v15 init];
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
          v11 = *a3++;
          LODWORD(v9) = v11;
          v12 = [NSNumber numberWithFloat:v9];
          v13 = *a4++;
          [(NSMutableDictionary *)dictionary setObject:v12 forKey:[NSNumber numberWithInt:v13]];
          --a5;
        }

        while (a5);
      }
    }
  }

  return v8;
}

- (TransparencyGPBInt32FloatDictionary)initWithDictionary:(id)a3
{
  v4 = [(TransparencyGPBInt32FloatDictionary *)self initWithFloats:0 forKeys:0 count:0];
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
  v3.super_class = TransparencyGPBInt32FloatDictionary;
  [(TransparencyGPBInt32FloatDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TransparencyGPBInt32FloatDictionary allocWithZone:a3];

  return [(TransparencyGPBInt32FloatDictionary *)v4 initWithDictionary:self];
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

- (void)enumerateKeysAndFloatsUsingBlock:(id)a3
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
    v9 = [v7 intValue];
    [v8 floatValue];
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
        v13 = sub_1000C5560([v10 intValue], 1, v7);
        [v12 floatValue];
        v14 = sub_1000C1350(2) + v13;
        v11 += v14 + sub_1000BF820(v14);
        v10 = [v8 nextObject];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    return v11 + sub_1000C1A04(*(*(a3 + 1) + 16), 15) * v6;
  }

  return result;
}

- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4
{
  v7 = [a4 mapKeyDataType];
  v8 = sub_1000F1CD4(*(*(a4 + 1) + 16), 2);
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
      v14 = [v12 intValue];
      [v13 floatValue];
      v16 = v15;
      LODWORD(v13) = sub_1000C5560(v14, 1, v7);
      [a3 writeInt32NoTag:sub_1000C1350(2) + v13];
      sub_1000C5700(a3, v14, 1, v7);
      LODWORD(v17) = v16;
      [a3 writeFloat:2 value:v17];
      v12 = [v10 nextObject];
    }

    while (v12);
  }
}

- (void)setTransparencyGPBGenericValue:(id *)a3 forTransparencyGPBGenericValueKey:(id *)a4
{
  dictionary = self->_dictionary;
  LODWORD(v4) = a3->var1;
  v7 = [NSNumber numberWithFloat:v4];
  v8 = [NSNumber numberWithInt:a4->var3];

  [(NSMutableDictionary *)dictionary setObject:v7 forKey:v8];
}

- (void)enumerateForTextFormat:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000CCBD8;
  v3[3] = &unk_100137468;
  v3[4] = a3;
  [(TransparencyGPBInt32FloatDictionary *)self enumerateKeysAndFloatsUsingBlock:v3];
}

- (void)addEntriesFromDictionary:(id)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_dictionary addEntriesFromDictionary:*(a3 + 2)];
    autocreator = self->_autocreator;
    if (autocreator)
    {

      sub_1000E2C68(autocreator, self);
    }
  }
}

@end