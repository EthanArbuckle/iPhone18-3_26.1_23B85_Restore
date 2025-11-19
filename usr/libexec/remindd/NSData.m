@interface NSData
- (id)ic_stringValue;
@end

@implementation NSData

- (id)ic_stringValue
{
  v2 = [[NSString alloc] initWithData:self encoding:4];

  return v2;
}

@end