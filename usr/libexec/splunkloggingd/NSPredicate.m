@interface NSPredicate
- (NSPredicate)initWithFormat:(id)a3 error:(id *)a4;
@end

@implementation NSPredicate

- (NSPredicate)initWithFormat:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [NSPredicate predicateWithFormat:v5];

  return v6;
}

@end