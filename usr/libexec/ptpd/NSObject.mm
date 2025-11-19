@interface NSObject
- (int64_t)returnNSIntegerPrimitiveFromSelector:(SEL)a3;
@end

@implementation NSObject

- (int64_t)returnNSIntegerPrimitiveFromSelector:(SEL)a3
{
  v5 = 170;
  v9 = 170;
  if (objc_opt_respondsToSelector())
  {
    v6 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
    v7 = [NSInvocation invocationWithMethodSignature:v6];

    [v7 setSelector:a3];
    [v7 invokeWithTarget:self];
    [v7 getReturnValue:&v9];

    return v9;
  }

  return v5;
}

@end