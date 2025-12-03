@interface NEFNVHash
+ (unsigned)hash:(id)hash;
+ (unsigned)hashWithString:(const char *)string;
@end

@implementation NEFNVHash

+ (unsigned)hash:(id)hash
{
  uTF8String = [hash UTF8String];

  return [NEFNVHash hashWithString:uTF8String];
}

+ (unsigned)hashWithString:(const char *)string
{
  result = -2128831035;
  v4 = *string;
  if (*string)
  {
    v5 = string + 1;
    do
    {
      result = 16777619 * (result ^ v4);
      v6 = *v5++;
      v4 = v6;
    }

    while (v6);
  }

  return result;
}

@end