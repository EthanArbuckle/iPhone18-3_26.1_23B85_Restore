@interface MACryptoHelper
+ (id)randomDataInHex:(int)hex;
@end

@implementation MACryptoHelper

+ (id)randomDataInHex:(int)hex
{
  hexCopy = hex;
  v5 = &v10 - ((hex + 15) & 0x1FFFFFFF0);
  if (SecRandomCopyBytes(kSecRandomDefault, hex, v5))
  {
    v6 = 0;
  }

  else
  {
    v7 = [NSMutableString stringWithCapacity:2 * hex];
    if (hex >= 1)
    {
      do
      {
        v8 = *v5++;
        [v7 appendFormat:@"%02x", v8];
        --hexCopy;
      }

      while (hexCopy);
    }

    v6 = [v7 copy];
  }

  return v6;
}

@end