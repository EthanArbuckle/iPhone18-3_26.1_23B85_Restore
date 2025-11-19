@interface NSMutableDictionary
- (void)cr_setSafeObject:(id)a3 forKey:(id)a4;
@end

@implementation NSMutableDictionary

- (void)cr_setSafeObject:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    [(NSMutableDictionary *)self setObject:a3 forKey:a4];
  }
}

@end