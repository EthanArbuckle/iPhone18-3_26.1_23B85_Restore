@interface NSError
- (id)fm_commaSeparatedString;
@end

@implementation NSError

- (id)fm_commaSeparatedString
{
  v3 = [(NSError *)self code];
  v4 = [(NSError *)self localizedDescription];
  v5 = [NSString stringWithFormat:@"%ld, %@", v3, v4];

  return v5;
}

@end