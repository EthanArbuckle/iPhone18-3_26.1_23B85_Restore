@interface TransparencyGPBAutocreatedArray
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)addObject:(id)object;
- (void)dealloc;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
@end

@implementation TransparencyGPBAutocreatedArray

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TransparencyGPBAutocreatedArray;
  [(TransparencyGPBAutocreatedArray *)&v3 dealloc];
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  array = self->_array;
  if (!array)
  {
    array = objc_alloc_init(NSMutableArray);
    self->_array = array;
  }

  [(NSMutableArray *)array insertObject:object atIndex:index];
  autocreator = self->_autocreator;
  if (autocreator)
  {

    sub_10002B014(autocreator, self);
  }
}

- (void)addObject:(id)object
{
  array = self->_array;
  if (!array)
  {
    array = objc_alloc_init(NSMutableArray);
    self->_array = array;
  }

  [(NSMutableArray *)array addObject:object];
  autocreator = self->_autocreator;
  if (autocreator)
  {

    sub_10002B014(autocreator, self);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  array = self->_array;
  if (array)
  {

    return [(NSMutableArray *)array copyWithZone:zone];
  }

  else
  {
    v7 = [NSMutableArray allocWithZone:zone, v3];

    return [(NSMutableArray *)v7 init];
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  array = self->_array;
  if (array)
  {

    return [(NSMutableArray *)array mutableCopyWithZone:zone];
  }

  else
  {
    v7 = [NSMutableArray allocWithZone:zone, v3];

    return [(NSMutableArray *)v7 init];
  }
}

@end