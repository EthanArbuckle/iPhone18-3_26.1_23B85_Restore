@interface _APKeyedArchiver
- (id)encodedData;
- (void)encodeBytes:(const char *)bytes length:(unint64_t)length forKey:(id)key;
- (void)encodeObject:(id)object forKey:(id)key;
@end

@implementation _APKeyedArchiver

- (void)encodeObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (objectCopy)
  {
    self->_memorySize += malloc_size(objectCopy);
  }

  v8.receiver = self;
  v8.super_class = _APKeyedArchiver;
  [(_APKeyedArchiver *)&v8 encodeObject:objectCopy forKey:keyCopy];
}

- (void)encodeBytes:(const char *)bytes length:(unint64_t)length forKey:(id)key
{
  self->_memorySize += length;
  v5.receiver = self;
  v5.super_class = _APKeyedArchiver;
  [_APKeyedArchiver encodeBytes:"encodeBytes:length:forKey:" length:bytes forKey:?];
}

- (id)encodedData
{
  v6.receiver = self;
  v6.super_class = _APKeyedArchiver;
  encodedData = [(_APKeyedArchiver *)&v6 encodedData];
  v4 = [NSNumber numberWithUnsignedInteger:self->_memorySize];
  objc_setAssociatedObject(encodedData, "_memorySize", v4, 1);

  return encodedData;
}

@end