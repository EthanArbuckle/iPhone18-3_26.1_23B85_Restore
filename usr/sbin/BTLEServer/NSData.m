@interface NSData
- (BOOL)isZeroValue;
@end

@implementation NSData

- (BOOL)isZeroValue
{
  v3 = [(NSData *)self bytes];
  if (![(NSData *)self length])
  {
    return 1;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = v3[v4] == 0;
    if (v3[v4])
    {
      break;
    }

    v4 = ++v5;
  }

  while ([(NSData *)self length]> v5);
  return v6;
}

@end