@interface TransparencyGPBAutocreatedArray
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)addObject:(id)a3;
- (void)dealloc;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
@end

@implementation TransparencyGPBAutocreatedArray

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TransparencyGPBAutocreatedArray;
  [(TransparencyGPBAutocreatedArray *)&v3 dealloc];
}

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  array = self->_array;
  if (!array)
  {
    array = objc_alloc_init(NSMutableArray);
    self->_array = array;
  }

  [(NSMutableArray *)array insertObject:a3 atIndex:a4];
  autocreator = self->_autocreator;
  if (autocreator)
  {

    sub_1000E2AFC(autocreator, self);
  }
}

- (void)addObject:(id)a3
{
  array = self->_array;
  if (!array)
  {
    array = objc_alloc_init(NSMutableArray);
    self->_array = array;
  }

  [(NSMutableArray *)array addObject:a3];
  autocreator = self->_autocreator;
  if (autocreator)
  {

    sub_1000E2AFC(autocreator, self);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  array = self->_array;
  if (array)
  {

    return [(NSMutableArray *)array copyWithZone:a3];
  }

  else
  {
    v7 = [NSMutableArray allocWithZone:a3, v3];

    return [(NSMutableArray *)v7 init];
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  array = self->_array;
  if (array)
  {

    return [(NSMutableArray *)array mutableCopyWithZone:a3];
  }

  else
  {
    v7 = [NSMutableArray allocWithZone:a3, v3];

    return [(NSMutableArray *)v7 init];
  }
}

@end