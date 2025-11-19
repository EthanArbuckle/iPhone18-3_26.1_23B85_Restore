@interface RDSensorStreamEnumerator
- (id)nextObject;
- (void)dealloc;
@end

@implementation RDSensorStreamEnumerator

- (void)dealloc
{
  self->_dirEnumerator = 0;
  v3.receiver = self;
  v3.super_class = RDSensorStreamEnumerator;
  [(RDSensorStreamEnumerator *)&v3 dealloc];
}

- (id)nextObject
{
  for (i = [(NSDirectoryEnumerator *)self->_dirEnumerator nextObject]; i; i = [(NSDirectoryEnumerator *)self->_dirEnumerator nextObject])
  {
    v5 = 0;
    [i getResourceValue:&v5 forKey:NSURLIsDirectoryKey error:0];
    if ([v5 BOOLValue])
    {
      i = [i lastPathComponent];
      if (![i hasSuffix:@".tombstones"] || self->_includeTombstones)
      {
        if ([i hasPrefix:@"com.apple."])
        {
          break;
        }
      }
    }
  }

  return i;
}

@end