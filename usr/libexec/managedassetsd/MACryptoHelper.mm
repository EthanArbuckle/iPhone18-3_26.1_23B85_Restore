@interface MACryptoHelper
+ (id)randomDataInHex:(int)a3;
@end

@implementation MACryptoHelper

+ (id)randomDataInHex:(int)a3
{
  v4 = a3;
  v5 = &v10 - ((a3 + 15) & 0x1FFFFFFF0);
  if (SecRandomCopyBytes(kSecRandomDefault, a3, v5))
  {
    v6 = 0;
  }

  else
  {
    v7 = [NSMutableString stringWithCapacity:2 * a3];
    if (a3 >= 1)
    {
      do
      {
        v8 = *v5++;
        [v7 appendFormat:@"%02x", v8];
        --v4;
      }

      while (v4);
    }

    v6 = [v7 copy];
  }

  return v6;
}

@end