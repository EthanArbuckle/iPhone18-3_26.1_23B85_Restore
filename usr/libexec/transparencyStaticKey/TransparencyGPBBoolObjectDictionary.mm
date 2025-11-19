@interface TransparencyGPBBoolObjectDictionary
- (BOOL)isEqual:(id)a3;
- (BOOL)isInitialized;
- (TransparencyGPBBoolObjectDictionary)initWithDictionary:(id)a3;
- (TransparencyGPBBoolObjectDictionary)initWithObjects:(const void *)a3 forKeys:(const BOOL *)a4 count:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deepCopyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)computeSerializedSizeAsField:(id)a3;
- (unint64_t)count;
- (unint64_t)hash;
- (void)addEntriesFromDictionary:(id)a3;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)a3;
- (void)enumerateKeysAndObjectsUsingBlock:(id)a3;
- (void)removeAll;
- (void)removeObjectForKey:(BOOL)a3;
- (void)setObject:(id)a3 forKey:(BOOL)a4;
- (void)setTransparencyGPBGenericValue:(id *)a3 forTransparencyGPBGenericValueKey:(id *)a4;
- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4;
@end

@implementation TransparencyGPBBoolObjectDictionary

- (TransparencyGPBBoolObjectDictionary)initWithObjects:(const void *)a3 forKeys:(const BOOL *)a4 count:(unint64_t)a5
{
  v16.receiver = self;
  v16.super_class = TransparencyGPBBoolObjectDictionary;
  v8 = [(TransparencyGPBBoolObjectDictionary *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v10 = a5 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    values = v8->_values;
    do
    {
      if (!*a3)
      {
        [NSException raise:NSInvalidArgumentException format:@"Attempting to add nil object to a Dictionary"];
      }

      v13 = *a4++;
      v12 = v13;

      v14 = *a3++;
      values[v12] = v14;
      --a5;
    }

    while (a5);
  }

  return v9;
}

- (TransparencyGPBBoolObjectDictionary)initWithDictionary:(id)a3
{
  v4 = [(TransparencyGPBBoolObjectDictionary *)self initWithObjects:0 forKeys:0 count:0];
  v5 = v4;
  if (a3 && v4)
  {
    v4->_values[0] = *(a3 + 2);
    v5->_values[1] = *(a3 + 3);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TransparencyGPBBoolObjectDictionary;
  [(TransparencyGPBBoolObjectDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TransparencyGPBBoolObjectDictionary allocWithZone:a3];

  return [(TransparencyGPBBoolObjectDictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v5 = self->_values[0], (v5 != 0) == (*(a3 + 2) == 0)) || (v6 = self->_values[1], (v6 != 0) == (*(a3 + 3) == 0)))
    {
      LOBYTE(v7) = 0;
      return v7;
    }

    if (v5)
    {
      v7 = [self->_values[0] isEqual:?];
      if (!v7)
      {
        return v7;
      }

      v6 = self->_values[1];
    }

    if (!v6 || (v7 = [v6 isEqual:*(a3 + 3)]) != 0)
    {
      LOBYTE(v7) = 1;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  if (self->_values[0])
  {
    return (self->_values[1] != 0) + 1;
  }

  else
  {
    return self->_values[1] != 0;
  }
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p> {", objc_opt_class(), self];
  v4 = v3;
  if (self->_values[0])
  {
    [(NSMutableString *)v3 appendFormat:@"NO: %@", self->_values[0]];
  }

  if (self->_values[1])
  {
    [(NSMutableString *)v4 appendFormat:@"YES: %@", self->_values[1]];
  }

  [(NSMutableString *)v4 appendString:@" }"];
  return v4;
}

- (unint64_t)count
{
  if (self->_values[0])
  {
    return (self->_values[1] != 0) + 1;
  }

  else
  {
    return self->_values[1] != 0;
  }
}

- (void)setTransparencyGPBGenericValue:(id *)a3 forTransparencyGPBGenericValueKey:(id *)a4
{
  v5 = (&self->super.isa + a4->var0);

  v5[2] = a3->var7;
}

- (void)enumerateForTextFormat:(id)a3
{
  if (self->_values[0])
  {
    (*(a3 + 2))(a3, @"false");
  }

  if (self->_values[1])
  {
    v5 = *(a3 + 2);

    v5(a3, @"true");
  }
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)a3
{
  v7 = 0;
  v5 = self->_values[0];
  if (!v5 || ((*(a3 + 2))(a3, 0, v5, &v7), (v7 & 1) == 0))
  {
    v6 = self->_values[1];
    if (v6)
    {
      (*(a3 + 2))(a3, 1, v6, &v7);
    }
  }
}

- (BOOL)isInitialized
{
  v3 = self->_values[0];
  if (!v3 || (v4 = [v3 isInitialized]) != 0)
  {
    v5 = self->_values[1];
    if (!v5 || (v4 = [v5 isInitialized]) != 0)
    {
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (id)deepCopyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(TransparencyGPBBoolObjectDictionary);
  v6 = 0;
  values = self->_values;
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = values[v6];
    if (v10)
    {
      v5->_values[v6] = [v10 copyWithZone:a3];
    }

    v8 = 0;
    v6 = 1;
  }

  while ((v9 & 1) != 0);
  return v5;
}

- (unint64_t)computeSerializedSizeAsField:(id)a3
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = *(a3 + 1);
  v7 = *(v6 + 30);
  values = self->_values;
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = values[v3];
    if (v11)
    {
      ++v4;
      v12 = sub_10001B224(1);
      v13 = sub_100039BC8(v11, v7);
      v5 += &v13[v12 + sub_100019594(v13 + v12)];
    }

    v9 = 0;
    v3 = 1;
  }

  while ((v10 & 1) != 0);
  return v5 + sub_10001B780(*(v6 + 16), 15) * v4;
}

- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4
{
  v6 = *(a4 + 1);
  v7 = *(v6 + 30);
  v8 = sub_100025184(*(v6 + 16), 2);
  v9 = 0;
  v10 = 0;
  values = self->_values;
  v12 = 1;
  do
  {
    v13 = v12;
    if (values[v10])
    {
      [a3 writeInt32NoTag:v8];
      v14 = sub_10001B224(1);
      [a3 writeInt32NoTag:{sub_100039BC8(values[v10], v7) + v14}];
      [a3 writeBool:1 value:v9 & 1];
      sub_100039CFC(a3, values[v10], v7);
    }

    v12 = 0;
    v9 = 1;
    v10 = 1;
  }

  while ((v13 & 1) != 0);
}

- (void)addEntriesFromDictionary:(id)a3
{
  if (a3)
  {
    v4 = 0;
    v5 = a3 + 16;
    values = self->_values;
    v7 = 1;
    do
    {
      v8 = v7;
      if (*&v5[8 * v4])
      {

        values[v4] = *&v5[8 * v4];
      }

      v7 = 0;
      v4 = 1;
    }

    while ((v8 & 1) != 0);
    autocreator = self->_autocreator;
    if (autocreator)
    {

      sub_10002B180(autocreator, self);
    }
  }
}

- (void)setObject:(id)a3 forKey:(BOOL)a4
{
  v4 = a4;
  if (!a3)
  {
    [NSException raise:NSInvalidArgumentException format:@"Attempting to add nil object to a Dictionary"];
  }

  v7 = (&self->super.isa + v4);

  v7[2] = a3;
  autocreator = self->_autocreator;
  if (autocreator)
  {

    sub_10002B180(autocreator, self);
  }
}

- (void)removeObjectForKey:(BOOL)a3
{
  v3 = (&self->super.isa + a3);

  v3[2] = 0;
}

- (void)removeAll
{
  self->_values[0] = 0;

  self->_values[1] = 0;
}

@end