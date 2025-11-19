@interface NSData
+ (NSData)dataWithHexString:(id)a3;
- (id)hexStringRepresentation;
@end

@implementation NSData

+ (NSData)dataWithHexString:(id)a3
{
  v3 = a3;
  v10 = 0;
  if ([v3 length])
  {
    sub_1000C9D60();
LABEL_12:
    v4 = 0;
    goto LABEL_8;
  }

  v4 = malloc_type_malloc([v3 length] >> 1, 0x36DAEAFEuLL);
  if (v4)
  {
    if (![v3 length])
    {
LABEL_7:
      v4 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", v4, [v3 length] >> 1, 1);
      goto LABEL_8;
    }

    v5 = 0;
    v6 = v4;
    while (1)
    {
      __str[0] = [v3 characterAtIndex:v5];
      __str[1] = [v3 characterAtIndex:v5 + 1];
      v8 = 0;
      *v6 = strtol(__str, &v8, 16);
      if (v8 != &v10)
      {
        break;
      }

      ++v6;
      v5 += 2;
      if (v5 >= [v3 length])
      {
        goto LABEL_7;
      }
    }

    sub_1000C9E00();
    goto LABEL_12;
  }

  sub_1000C9EB8(v3);
LABEL_8:

  return v4;
}

- (id)hexStringRepresentation
{
  v3 = [(NSData *)self length];
  v4 = [NSMutableString stringWithCapacity:2 * v3];
  v5 = [(NSData *)self bytes];
  if (v3)
  {
    v6 = v5;
    do
    {
      v7 = *v6++;
      [v4 appendFormat:@"%02lx", v7];
      --v3;
    }

    while (v3);
  }

  return v4;
}

@end