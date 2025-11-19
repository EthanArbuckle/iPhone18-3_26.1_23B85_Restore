@interface TransparencyGPBUInt32ObjectDictionary
- (BOOL)isEqual:(id)a3;
- (BOOL)isInitialized;
- (TransparencyGPBUInt32ObjectDictionary)initWithDictionary:(id)a3;
- (TransparencyGPBUInt32ObjectDictionary)initWithObjects:(const void *)a3 forKeys:(const unsigned int *)a4 count:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deepCopyWithZone:(_NSZone *)a3;
- (unint64_t)computeSerializedSizeAsField:(id)a3;
- (void)addEntriesFromDictionary:(id)a3;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)a3;
- (void)enumerateKeysAndObjectsUsingBlock:(id)a3;
- (void)setTransparencyGPBGenericValue:(id *)a3 forTransparencyGPBGenericValueKey:(id *)a4;
- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4;
@end

@implementation TransparencyGPBUInt32ObjectDictionary

- (TransparencyGPBUInt32ObjectDictionary)initWithObjects:(const void *)a3 forKeys:(const unsigned int *)a4 count:(unint64_t)a5
{
  v12.receiver = self;
  v12.super_class = TransparencyGPBUInt32ObjectDictionary;
  v8 = [(TransparencyGPBUInt32ObjectDictionary *)&v12 init];
  if (v8)
  {
    v8->_dictionary = objc_alloc_init(NSMutableDictionary);
    if (a4)
    {
      if (a3 && a5)
      {
        do
        {
          v9 = *a3;
          if (!*a3)
          {
            [NSException raise:NSInvalidArgumentException format:@"Attempting to add nil object to a Dictionary"];
            v9 = *a3;
          }

          v10 = *a4++;
          [(NSMutableDictionary *)v8->_dictionary setObject:v9 forKey:[NSNumber numberWithUnsignedInt:v10]];
          ++a3;
          --a5;
        }

        while (a5);
      }
    }
  }

  return v8;
}

- (TransparencyGPBUInt32ObjectDictionary)initWithDictionary:(id)a3
{
  v4 = [(TransparencyGPBUInt32ObjectDictionary *)self initWithObjects:0 forKeys:0 count:0];
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
  v3.super_class = TransparencyGPBUInt32ObjectDictionary;
  [(TransparencyGPBUInt32ObjectDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TransparencyGPBUInt32ObjectDictionary allocWithZone:a3];

  return [(TransparencyGPBUInt32ObjectDictionary *)v4 initWithDictionary:self];
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

- (void)enumerateKeysAndObjectsUsingBlock:(id)a3
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

    (*(a3 + 2))(a3, [v6 unsignedIntValue], -[NSMutableDictionary objectForKeyedSubscript:](dictionary, "objectForKeyedSubscript:", v6), &v7);
  }

  while (v7 != 1);
}

- (BOOL)isInitialized
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(NSMutableDictionary *)self->_dictionary objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [*(*(&v9 + 1) + 8 * v6) isInitialized];
      if (!v7)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (id)deepCopyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(TransparencyGPBUInt32ObjectDictionary);
  v6 = [(NSMutableDictionary *)self->_dictionary keyEnumerator];
  dictionary = v5->_dictionary;
  v8 = [v6 nextObject];
  if (v8)
  {
    v9 = v8;
    do
    {
      v10 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_dictionary objectForKeyedSubscript:{v9), "copyWithZone:", a3}];
      [(NSMutableDictionary *)dictionary setObject:v10 forKey:v9];

      v9 = [v6 nextObject];
    }

    while (v9);
  }

  return v5;
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
        v15 = &sub_100174454(v13, v7)[v14];
        v12 += &v15[sub_10016FB50(v15)];
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
      v16 = sub_100174F08(v15, 1, v8);
      [a3 writeInt32NoTag:{sub_100174454(v14, v7) + v16}];
      if (v8 == 1)
      {
        [a3 writeFixed32:1 value:v15];
      }

      else if (v8 == 11)
      {
        [a3 writeUInt32:1 value:v15];
      }

      sub_100174588(a3, v14, v7);
      v13 = [v11 nextObject];
    }

    while (v13);
  }
}

- (void)setTransparencyGPBGenericValue:(id *)a3 forTransparencyGPBGenericValueKey:(id *)a4
{
  dictionary = self->_dictionary;
  var2 = a3->var2;
  v6 = [NSNumber numberWithUnsignedInt:a4->var3];

  [(NSMutableDictionary *)dictionary setObject:var2 forKey:v6];
}

- (void)enumerateForTextFormat:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100179BE0;
  v3[3] = &unk_100325180;
  v3[4] = a3;
  [(TransparencyGPBUInt32ObjectDictionary *)self enumerateKeysAndObjectsUsingBlock:v3];
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