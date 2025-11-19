@interface _APKeyedUnarchiver
- (BOOL)containsValueForKey:(id)a3;
@end

@implementation _APKeyedUnarchiver

- (BOOL)containsValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(_APKeyedUnarchiver *)self ignoreKeys];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _APKeyedUnarchiver;
    v7 = [(_APKeyedUnarchiver *)&v9 containsValueForKey:v4];
  }

  return v7;
}

@end