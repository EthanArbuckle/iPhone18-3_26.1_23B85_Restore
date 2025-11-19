@interface NSData
- (id)hexString;
@end

@implementation NSData

- (id)hexString
{
  [NSMutableString stringWithCapacity:2 * [(NSData *)self length]];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100029360;
  v7 = v6[3] = &unk_10005E508;
  v3 = v7;
  [(NSData *)self enumerateByteRangesUsingBlock:v6];
  v4 = [NSString stringWithString:v3];

  return v4;
}

@end