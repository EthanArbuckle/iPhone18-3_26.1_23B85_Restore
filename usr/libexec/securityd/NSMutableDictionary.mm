@interface NSMutableDictionary
- (id)extractObjectForKey:(id)key;
@end

@implementation NSMutableDictionary

- (id)extractObjectForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self objectForKey:keyCopy];
  [(NSMutableDictionary *)self removeObjectForKey:keyCopy];

  return v5;
}

@end