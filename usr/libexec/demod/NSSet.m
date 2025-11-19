@interface NSSet
- (id)_lowercaseSet;
@end

@implementation NSSet

- (id)_lowercaseSet
{
  [NSMutableSet setWithCapacity:[(NSSet *)self count]];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000865B0;
  v7 = v6[3] = &unk_10016B9B0;
  v3 = v7;
  [(NSSet *)self enumerateObjectsUsingBlock:v6];
  v4 = [v3 copy];

  return v4;
}

@end