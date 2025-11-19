@interface TransparencyGPBUInt32BoolDictionary
- (BOOL)isEqual:(id)a3;
- (TransparencyGPBUInt32BoolDictionary)initWithBools:(const BOOL *)a3 forKeys:(const unsigned int *)a4 count:(unint64_t)a5;
- (TransparencyGPBUInt32BoolDictionary)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)computeSerializedSizeAsField:(id)a3;
- (void)addEntriesFromDictionary:(id)a3;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)a3;
- (void)enumerateKeysAndBoolsUsingBlock:(id)a3;
- (void)setTransparencyGPBGenericValue:(id *)a3 forTransparencyGPBGenericValueKey:(id *)a4;
- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4;
@end

@implementation TransparencyGPBUInt32BoolDictionary

- (TransparencyGPBUInt32BoolDictionary)initWithBools:(const BOOL *)a3 forKeys:(const unsigned int *)a4 count:(unint64_t)a5
{
  v14.receiver = self;
  v14.super_class = TransparencyGPBUInt32BoolDictionary;
  v8 = [(TransparencyGPBUInt32BoolDictionary *)&v14 init];
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
          v11 = [NSNumber numberWithBool:v10];
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

- (TransparencyGPBUInt32BoolDictionary)initWithDictionary:(id)a3
{
  v4 = [(TransparencyGPBUInt32BoolDictionary *)self initWithBools:0 forKeys:0 count:0];
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
  v3.super_class = TransparencyGPBUInt32BoolDictionary;
  [(TransparencyGPBUInt32BoolDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TransparencyGPBUInt32BoolDictionary allocWithZone:a3];

  return [(TransparencyGPBUInt32BoolDictionary *)v4 initWithDictionary:self];
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

- (void)enumerateKeysAndBoolsUsingBlock:(id)a3
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

    (*(a3 + 2))(a3, [v6 unsignedIntValue], objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](dictionary, "objectForKeyedSubscript:", v6), "BOOLValue"), &v7);
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
        v13 = sub_1000C4C68([v10 unsignedIntValue], 1, v7);
        [v12 BOOLValue];
        v14 = sub_1000C14A8(2) + v13;
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
      v14 = [v12 unsignedIntValue];
      v15 = [v13 BOOLValue];
      LODWORD(v13) = sub_1000C4C68(v14, 1, v7);
      [a3 writeInt32NoTag:sub_1000C14A8(2) + v13];
      if (v7 == 1)
      {
        [a3 writeFixed32:1 value:v14];
      }

      else if (v7 == 11)
      {
        [a3 writeUInt32:1 value:v14];
      }

      [a3 writeBool:2 value:v15];
      v12 = [v10 nextObject];
    }

    while (v12);
  }
}

- (void)setTransparencyGPBGenericValue:(id *)a3 forTransparencyGPBGenericValueKey:(id *)a4
{
  dictionary = self->_dictionary;
  v6 = [NSNumber numberWithBool:a3->var0];
  v7 = [NSNumber numberWithUnsignedInt:a4->var3];

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:v7];
}

- (void)enumerateForTextFormat:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C727C;
  v3[3] = &unk_100137300;
  v3[4] = a3;
  [(TransparencyGPBUInt32BoolDictionary *)self enumerateKeysAndBoolsUsingBlock:v3];
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