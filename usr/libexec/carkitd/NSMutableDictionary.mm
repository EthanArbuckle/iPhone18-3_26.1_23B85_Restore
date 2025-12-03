@interface NSMutableDictionary
- (void)cr_setSafeObject:(id)object forKey:(id)key;
@end

@implementation NSMutableDictionary

- (void)cr_setSafeObject:(id)object forKey:(id)key
{
  if (object)
  {
    [(NSMutableDictionary *)self setObject:object forKey:key];
  }
}

@end