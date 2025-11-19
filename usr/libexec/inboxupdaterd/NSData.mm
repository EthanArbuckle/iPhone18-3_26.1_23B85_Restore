@interface NSData
+ (NSData)dataWithHexString:(id)a3;
+ (id)adjustData:(id)a3 toLength:(unint64_t)a4;
+ (id)generateRandomBytesOfSize:(unint64_t)a3;
- (id)hexStringRepresentation;
@end

@implementation NSData

+ (id)generateRandomBytesOfSize:(unint64_t)a3
{
  v4 = [NSMutableData dataWithCapacity:?];
  if (a3 >= 4)
  {
    v5 = a3 >> 2;
    v6 = 1;
    do
    {
      v9 = arc4random();
      [v4 appendBytes:&v9 length:4];
    }

    while (v5 > v6++);
  }

  return v4;
}

+ (NSData)dataWithHexString:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = v4;
  if (v4 && (v4 & 1) == 0)
  {
    v6 = [[NSMutableData alloc] initWithLength:v4 >> 1];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 mutableBytes];
      v9 = [v3 UTF8String];
      __str[2] = 0;
      v10 = *v9;
      if (!*v9)
      {
LABEL_11:
        v13 = [v7 copy];
LABEL_22:

        goto LABEL_23;
      }

      v11 = v9 + 2;
      while (1)
      {
        __str[0] = v10;
        v12 = *(v11 - 1);
        __str[1] = *(v11 - 1);
        if ((v10 & 0x80) != 0)
        {
          break;
        }

        v13 = 0;
        if ((_DefaultRuneLocale.__runetype[v10] & 0x10000) == 0 || v12 < 0)
        {
          goto LABEL_22;
        }

        if ((_DefaultRuneLocale.__runetype[v12] & 0x10000) == 0)
        {
          break;
        }

        *v8++ = strtoul(__str, 0, 16);
        v10 = *v11;
        v11 += 2;
        if (!v10)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005F888();
      }

      v15 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_10005F89C(v15, v16, v17, v18, v19, v20, v21, v22);
      }
    }

    v13 = 0;
    goto LABEL_22;
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005F7EC();
  }

  v14 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    sub_10005F800(v3, v5, v14);
  }

  v13 = 0;
LABEL_23:

  return v13;
}

+ (id)adjustData:(id)a3 toLength:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 mutableCopy];
  v7 = [v6 length] - a4;
  if (v7 < 1)
  {
    if (v7 < 0)
    {
      v8 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v5 bytes], a4);
      v9 = [v8 mutableCopy];

      v6 = v9;
    }
  }

  else
  {
    [v6 increaseLengthBy:?];
  }

  v10 = [v6 copy];

  return v10;
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