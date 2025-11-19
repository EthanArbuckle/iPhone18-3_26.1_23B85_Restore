@interface NSData
- (id)cl_hexadecimalString;
@end

@implementation NSData

- (id)cl_hexadecimalString
{
  v3 = +[NSMutableString string];
  v4 = [(NSData *)self length];
  v5 = [(NSData *)self bytes];
  if (v4 >= 1)
  {
    v6 = v5;
    do
    {
      v7 = *v6++;
      [v3 appendFormat:@"%02X", v7];
      --v4;
    }

    while (v4);
  }

  return v3;
}

@end