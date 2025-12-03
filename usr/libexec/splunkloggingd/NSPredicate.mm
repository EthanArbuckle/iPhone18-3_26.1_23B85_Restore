@interface NSPredicate
- (NSPredicate)initWithFormat:(id)format error:(id *)error;
@end

@implementation NSPredicate

- (NSPredicate)initWithFormat:(id)format error:(id *)error
{
  formatCopy = format;
  v6 = [NSPredicate predicateWithFormat:formatCopy];

  return v6;
}

@end