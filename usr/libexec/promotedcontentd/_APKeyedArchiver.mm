@interface _APKeyedArchiver
- (id)encodedData;
- (void)encodeBytes:(const char *)a3 length:(unint64_t)a4 forKey:(id)a5;
- (void)encodeObject:(id)a3 forKey:(id)a4;
@end

@implementation _APKeyedArchiver

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    self->_memorySize += malloc_size(v6);
  }

  v8.receiver = self;
  v8.super_class = _APKeyedArchiver;
  [(_APKeyedArchiver *)&v8 encodeObject:v6 forKey:v7];
}

- (void)encodeBytes:(const char *)a3 length:(unint64_t)a4 forKey:(id)a5
{
  self->_memorySize += a4;
  v5.receiver = self;
  v5.super_class = _APKeyedArchiver;
  [_APKeyedArchiver encodeBytes:"encodeBytes:length:forKey:" length:a3 forKey:?];
}

- (id)encodedData
{
  v6.receiver = self;
  v6.super_class = _APKeyedArchiver;
  v3 = [(_APKeyedArchiver *)&v6 encodedData];
  v4 = [NSNumber numberWithUnsignedInteger:self->_memorySize];
  objc_setAssociatedObject(v3, "_memorySize", v4, 1);

  return v3;
}

@end