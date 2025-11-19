@interface _MSDExpireCacheEntry
- (_MSDExpireCacheEntry)initWithValue:(id)a3;
@end

@implementation _MSDExpireCacheEntry

- (_MSDExpireCacheEntry)initWithValue:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = _MSDExpireCacheEntry;
  v6 = [(_MSDExpireCacheEntry *)&v8 init];
  if (v6)
  {
    v6->_creationTime = CFAbsoluteTimeGetCurrent();
    objc_storeStrong(&v6->_value, a3);
  }

  return v6;
}

@end