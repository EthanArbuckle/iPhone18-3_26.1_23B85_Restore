@interface NSData
+ (NSData)dataWithHexString:(id)string;
- (id)hexStringRepresentation;
@end

@implementation NSData

+ (NSData)dataWithHexString:(id)string
{
  stringCopy = string;
  v10 = 0;
  if ([stringCopy length])
  {
    sub_100024DE0();
LABEL_12:
    v4 = 0;
    goto LABEL_8;
  }

  v4 = malloc_type_malloc([stringCopy length] >> 1, 0x36DAEAFEuLL);
  if (v4)
  {
    if (![stringCopy length])
    {
LABEL_7:
      v4 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", v4, [stringCopy length] >> 1, 1);
      goto LABEL_8;
    }

    v5 = 0;
    v6 = v4;
    while (1)
    {
      __str[0] = [stringCopy characterAtIndex:v5];
      __str[1] = [stringCopy characterAtIndex:v5 + 1];
      v8 = 0;
      *v6 = strtol(__str, &v8, 16);
      if (v8 != &v10)
      {
        break;
      }

      ++v6;
      v5 += 2;
      if (v5 >= [stringCopy length])
      {
        goto LABEL_7;
      }
    }

    sub_100024E80();
    goto LABEL_12;
  }

  sub_100024F38(stringCopy);
LABEL_8:

  return v4;
}

- (id)hexStringRepresentation
{
  v3 = [(NSData *)self length];
  v4 = [NSMutableString stringWithCapacity:2 * v3];
  bytes = [(NSData *)self bytes];
  if (v3)
  {
    v6 = bytes;
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