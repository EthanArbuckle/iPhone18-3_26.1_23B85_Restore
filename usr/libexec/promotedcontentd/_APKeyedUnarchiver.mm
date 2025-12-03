@interface _APKeyedUnarchiver
- (BOOL)containsValueForKey:(id)key;
@end

@implementation _APKeyedUnarchiver

- (BOOL)containsValueForKey:(id)key
{
  keyCopy = key;
  ignoreKeys = [(_APKeyedUnarchiver *)self ignoreKeys];
  v6 = [ignoreKeys containsObject:keyCopy];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _APKeyedUnarchiver;
    v7 = [(_APKeyedUnarchiver *)&v9 containsValueForKey:keyCopy];
  }

  return v7;
}

@end