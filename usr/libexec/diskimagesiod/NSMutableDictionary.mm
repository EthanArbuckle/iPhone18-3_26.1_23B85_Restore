@interface NSMutableDictionary
- (BOOL)validateObjWithKey:(id)key className:(Class)name isOptional:(BOOL)isKindOfClass error:(id *)error;
- (id)popObjectForKey:(id)key;
@end

@implementation NSMutableDictionary

- (id)popObjectForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self objectForKey:keyCopy];
  [(NSMutableDictionary *)self removeObjectForKey:keyCopy];

  return v5;
}

- (BOOL)validateObjWithKey:(id)key className:(Class)name isOptional:(BOOL)isKindOfClass error:(id *)error
{
  keyCopy = key;
  v10 = [(NSMutableDictionary *)self objectForKey:keyCopy];
  if (v10)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (error && !isKindOfClass)
  {
    keyCopy = [NSString stringWithFormat:@"Validation failed for dictionary key %@.", keyCopy];
    *error = [DIError errorWithPOSIXCode:22 verboseInfo:keyCopy];
  }

  return isKindOfClass;
}

@end