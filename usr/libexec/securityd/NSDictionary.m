@interface NSDictionary
- (id)compactDescription;
@end

@implementation NSDictionary

- (id)compactDescription
{
  +[NSMutableArray array];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100088B0C;
  v7 = v6[3] = &unk_100335D60;
  v3 = v7;
  [(NSDictionary *)self enumerateKeysAndObjectsUsingBlock:v6];
  v4 = [v3 componentsJoinedByString:@" "];

  return v4;
}

@end