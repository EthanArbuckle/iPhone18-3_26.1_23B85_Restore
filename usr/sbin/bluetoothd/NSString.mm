@interface NSString
- (id)normalized;
@end

@implementation NSString

- (id)normalized
{
  v2 = [(NSString *)self stringByReplacingOccurrencesOfString:@":" withString:&stru_100B0F9E0];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"-" withString:&stru_100B0F9E0];
  uppercaseString = [v3 uppercaseString];

  return uppercaseString;
}

@end