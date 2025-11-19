@interface TransparencyGPBInt64EnumDictionary
- (BOOL)getEnum:(int *)a3 forKey:(int64_t)a4;
- (BOOL)getRawValue:(int *)a3 forKey:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (TransparencyGPBInt64EnumDictionary)initWithDictionary:(id)a3;
- (TransparencyGPBInt64EnumDictionary)initWithValidationFunction:(void *)a3 rawValues:(const int *)a4 forKeys:(const int64_t *)a5 count:(unint64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)computeSerializedSizeAsField:(id)a3;
- (void)addRawEntriesFromDictionary:(id)a3;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)a3;
- (void)enumerateKeysAndEnumsUsingBlock:(id)a3;
- (void)enumerateKeysAndRawValuesUsingBlock:(id)a3;
- (void)removeEnumForKey:(int64_t)a3;
- (void)setTransparencyGPBGenericValue:(id *)a3 forTransparencyGPBGenericValueKey:(id *)a4;
- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4;
@end

@implementation TransparencyGPBInt64EnumDictionary

- (TransparencyGPBInt64EnumDictionary)initWithValidationFunction:(void *)a3 rawValues:(const int *)a4 forKeys:(const int64_t *)a5 count:(unint64_t)a6
{
  v18.receiver = self;
  v18.super_class = TransparencyGPBInt64EnumDictionary;
  v10 = [(TransparencyGPBInt64EnumDictionary *)&v18 init];
  if (v10)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = sub_10003E0EC;
    }

    v10->_dictionary = v11;
    v10->_validationFunc = v12;
    if (a5 && a4 && a6)
    {
      do
      {
        dictionary = v10->_dictionary;
        v14 = *a4++;
        v15 = [NSNumber numberWithInt:v14];
        v16 = *a5++;
        [(NSMutableDictionary *)dictionary setObject:v15 forKey:[NSNumber numberWithLongLong:v16]];
        --a6;
      }

      while (a6);
    }
  }

  return v10;
}

- (TransparencyGPBInt64EnumDictionary)initWithDictionary:(id)a3
{
  v4 = -[TransparencyGPBInt64EnumDictionary initWithValidationFunction:rawValues:forKeys:count:](self, "initWithValidationFunction:rawValues:forKeys:count:", [a3 validationFunc], 0, 0, 0);
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
  v3.super_class = TransparencyGPBInt64EnumDictionary;
  [(TransparencyGPBInt64EnumDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TransparencyGPBInt64EnumDictionary allocWithZone:a3];

  return [(TransparencyGPBInt64EnumDictionary *)v4 initWithDictionary:self];
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

- (void)enumerateKeysAndRawValuesUsingBlock:(id)a3
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

    (*(a3 + 2))(a3, [v6 longLongValue], objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](dictionary, "objectForKeyedSubscript:", v6), "intValue"), &v7);
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
        v13 = sub_10003C1C4([v10 longLongValue], 1, v7);
        v14 = sub_10001B184(2, [v12 intValue]) + v13;
        v11 += v14 + sub_100019594(v14);
        v10 = [v8 nextObject];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    return v11 + sub_10001B780(*(*(a3 + 1) + 16), 15) * v6;
  }

  return result;
}

- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4
{
  v7 = [a4 mapKeyDataType];
  v8 = sub_100025184(*(*(a4 + 1) + 16), 2);
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
      v14 = [v12 longLongValue];
      v15 = [v13 intValue];
      v16 = sub_10003C1C4(v14, 1, v7);
      [a3 writeInt32NoTag:{sub_10001B184(2, v15) + v16}];
      sub_10003C364(a3, v14, 1, v7);
      [a3 writeEnum:2 value:v15];
      v12 = [v10 nextObject];
    }

    while (v12);
  }
}

- (void)setTransparencyGPBGenericValue:(id *)a3 forTransparencyGPBGenericValueKey:(id *)a4
{
  dictionary = self->_dictionary;
  v6 = [NSNumber numberWithInt:a3->var3];
  v7 = [NSNumber numberWithLongLong:a4->var2];

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:v7];
}

- (void)enumerateForTextFormat:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004D9F0;
  v3[3] = &unk_100096698;
  v3[4] = a3;
  [(TransparencyGPBInt64EnumDictionary *)self enumerateKeysAndRawValuesUsingBlock:v3];
}

- (BOOL)getEnum:(int *)a3 forKey:(int64_t)a4
{
  v6 = [(NSMutableDictionary *)self->_dictionary objectForKey:[NSNumber numberWithLongLong:a4]];
  v7 = v6;
  if (a3 && v6)
  {
    v8 = [v6 intValue];
    if ((self->_validationFunc)())
    {
      v9 = v8;
    }

    else
    {
      v9 = -72499473;
    }

    *a3 = v9;
  }

  return v7 != 0;
}

- (BOOL)getRawValue:(int *)a3 forKey:(int64_t)a4
{
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:[NSNumber numberWithLongLong:a4]];
  v6 = v5;
  if (a3 && v5)
  {
    *a3 = [v5 intValue];
  }

  return v6 != 0;
}

- (void)enumerateKeysAndEnumsUsingBlock:(id)a3
{
  v10 = 0;
  validationFunc = self->_validationFunc;
  v6 = [(NSMutableDictionary *)self->_dictionary keyEnumerator];
  do
  {
    v7 = [v6 nextObject];
    if (!v7)
    {
      break;
    }

    v8 = v7;
    LODWORD(v9) = [-[NSMutableDictionary objectForKeyedSubscript:](self->_dictionary objectForKeyedSubscript:{v7), "intValue"}];
    v9 = validationFunc() ? v9 : 4222467823;
    (*(a3 + 2))(a3, [v8 longLongValue], v9, &v10);
  }

  while (v10 != 1);
}

- (void)addRawEntriesFromDictionary:(id)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_dictionary addEntriesFromDictionary:*(a3 + 2)];
    autocreator = self->_autocreator;
    if (autocreator)
    {

      sub_10002B180(autocreator, self);
    }
  }
}

- (void)removeEnumForKey:(int64_t)a3
{
  dictionary = self->_dictionary;
  v4 = [NSNumber numberWithLongLong:a3];

  [(NSMutableDictionary *)dictionary removeObjectForKey:v4];
}

@end