@interface RDKeychainCache
- (BOOL)addToKeychainKey:(id)key withName:(id)name sensor:(id)sensor;
- (RDKeychainCache)init;
@end

@implementation RDKeychainCache

- (RDKeychainCache)init
{
  v5.receiver = self;
  v5.super_class = RDKeychainCache;
  result = [(RDKeychainCache *)&v5 init];
  if (result)
  {
    v3 = result;
    v4 = objc_alloc_init(NSCache);
    result = v3;
    v3->_cache = v4;
  }

  return result;
}

- (BOOL)addToKeychainKey:(id)key withName:(id)name sensor:(id)sensor
{
  if (self)
  {
    selfCopy = self;
    [(NSCache *)self->_cache setObject:key forKey:name, sensor];
    LOBYTE(self) = [(NSCache *)selfCopy->_cache objectForKey:name]!= 0;
  }

  return self;
}

@end