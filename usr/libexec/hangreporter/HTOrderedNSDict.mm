@interface HTOrderedNSDict
- (HTOrderedNSDict)init;
- (HTOrderedNSDict)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (id)objectForKey:(id)key;
- (void)print:(id)print;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation HTOrderedNSDict

- (HTOrderedNSDict)init
{
  v8.receiver = self;
  v8.super_class = HTOrderedNSDict;
  v2 = [(HTOrderedNSDict *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    values = v2->_values;
    v2->_values = v3;

    v5 = objc_opt_new();
    keys = v2->_keys;
    v2->_keys = v5;
  }

  return v2;
}

- (id)objectForKey:(id)key
{
  v4 = [(NSMutableArray *)self->_keys indexOfObject:key];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_values objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v7 = [(NSMutableArray *)self->_keys indexOfObject:keyCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_keys addObject:keyCopy];
    [(NSMutableArray *)self->_values addObject:objectCopy];
  }

  else
  {
    [(NSMutableArray *)self->_values setObject:objectCopy atIndexedSubscript:v7];
  }
}

- (void)print:(id)print
{
  keys = self->_keys;
  printCopy = print;
  v6 = [(NSMutableArray *)self->_values objectAtIndexedSubscript:[(NSMutableArray *)keys indexOfObject:printCopy]];
  NSLog(@" key = %@, value  = %@", printCopy, v6);
}

- (void)removeObjectForKey:(id)key
{
  v4 = [(NSMutableArray *)self->_keys indexOfObject:key];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    [(NSMutableArray *)self->_values removeObjectAtIndex:v4];
    keys = self->_keys;

    [(NSMutableArray *)keys removeObjectAtIndex:v5];
  }
}

- (HTOrderedNSDict)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  v19.receiver = self;
  v19.super_class = HTOrderedNSDict;
  v8 = [(HTOrderedNSDict *)&v19 init];
  if (v8)
  {
    v9 = objc_opt_new();
    values = v8->_values;
    v8->_values = v9;

    v11 = objc_opt_new();
    keys = v8->_keys;
    v8->_keys = v11;
  }

  for (; count; --count)
  {
    v13 = *keys;
    v14 = *objects;
    if (v13)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      objc_exception_throw(NSInvalidArgumentException);
    }

    v16 = v14;
    v17 = [(NSMutableArray *)v8->_keys indexOfObject:v13];
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)v8->_keys addObject:v13];
      [(NSMutableArray *)v8->_values addObject:v16];
    }

    else
    {
      [(NSMutableArray *)v8->_values setObject:v16 atIndexedSubscript:v17];
    }

    ++objects;
    ++keys;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HTOrderedNSDict allocWithZone:zone];
  values = self->_values;
  keys = self->_keys;

  return [(HTOrderedNSDict *)v4 initWithObjects:values forKeys:keys];
}

@end