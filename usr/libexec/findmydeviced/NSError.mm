@interface NSError
- (id)fm_commaSeparatedString;
@end

@implementation NSError

- (id)fm_commaSeparatedString
{
  code = [(NSError *)self code];
  localizedDescription = [(NSError *)self localizedDescription];
  v5 = [NSString stringWithFormat:@"%ld, %@", code, localizedDescription];

  return v5;
}

@end