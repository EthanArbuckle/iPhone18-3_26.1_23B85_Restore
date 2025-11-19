@interface NSData
- (id)hexString;
@end

@implementation NSData

- (id)hexString
{
  v3 = [(NSData *)self length];
  v4 = malloc_type_malloc(2 * v3, 0x38B1C265uLL);
  if (v4)
  {
    v5 = v4;
    if (v3)
    {
      v6 = 0;
      v7 = v4 + 1;
      do
      {
        v8 = *([(NSData *)self bytes]+ v6);
        if (v8 <= 0x9F)
        {
          v9 = 48;
        }

        else
        {
          v9 = 55;
        }

        *(v7 - 1) = v9 + (v8 >> 4);
        v10 = *([(NSData *)self bytes]+ v6) & 0xF;
        if (v10 <= 9)
        {
          v11 = 48;
        }

        else
        {
          v11 = 55;
        }

        *v7 = v11 + v10;
        v7 += 2;
        ++v6;
      }

      while (v3 != v6);
    }

    v12 = [[NSString alloc] initWithBytes:v5 length:2 * v3 encoding:1];
    free(v5);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end