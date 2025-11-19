@interface NSValue
+ (id)nrValueWithCGSize:(CGSize)a3;
@end

@implementation NSValue

+ (id)nrValueWithCGSize:(CGSize)a3
{
  v5 = a3;
  v3 = [NSValue valueWithBytes:&v5 objCType:"{CGSize=dd}"];

  return v3;
}

@end