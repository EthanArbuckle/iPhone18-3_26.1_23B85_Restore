@interface NSValue
+ (id)nrValueWithCGSize:(CGSize)size;
@end

@implementation NSValue

+ (id)nrValueWithCGSize:(CGSize)size
{
  sizeCopy = size;
  v3 = [NSValue valueWithBytes:&sizeCopy objCType:"{CGSize=dd}"];

  return v3;
}

@end