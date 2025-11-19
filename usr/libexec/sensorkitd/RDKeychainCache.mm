@interface RDKeychainCache
- (BOOL)addToKeychainKey:(id)a3 withName:(id)a4 sensor:(id)a5;
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

- (BOOL)addToKeychainKey:(id)a3 withName:(id)a4 sensor:(id)a5
{
  if (self)
  {
    v6 = self;
    [(NSCache *)self->_cache setObject:a3 forKey:a4, a5];
    LOBYTE(self) = [(NSCache *)v6->_cache objectForKey:a4]!= 0;
  }

  return self;
}

@end