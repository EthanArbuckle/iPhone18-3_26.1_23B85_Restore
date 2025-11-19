@interface TLSMessageClass
- (BOOL)encodeBool:(BOOL)a3 buffer:(id)a4;
- (BOOL)encodeByte:(unsigned __int8)a3 buffer:(id)a4;
- (BOOL)encodeByteArray:(id)a3 minLength:(unint64_t)a4 maxLength:(unint64_t)a5 buffer:(id)a6;
- (BOOL)encodeExtensions:(id)a3 buffer:(id)a4;
- (BOOL)encodeUint64:(unint64_t)a3 buffer:(id)a4;
- (const)parseBool:(const char *)a3 end:(const char *)a4 result:(BOOL *)a5;
- (const)parseByte:(const char *)a3 end:(const char *)a4 result:(char *)a5;
- (const)parseByteArray:(const char *)a3 end:(const char *)a4 minLength:(unint64_t)a5 maxLength:(unint64_t)a6 result:(id *)a7;
- (const)parseExtensions:(const char *)a3 end:(const char *)a4 result:(id *)a5;
- (const)parseUint64:(const char *)a3 end:(const char *)a4 result:(unint64_t *)a5;
@end

@implementation TLSMessageClass

- (const)parseBool:(const char *)a3 end:(const char *)a4 result:(BOOL *)a5
{
  result = 0;
  if (a3 && a4 > a3)
  {
    v6 = *a3;
    if (v6 == 255)
    {
      LOBYTE(v6) = 1;
    }

    else if (*a3)
    {
      return 0;
    }

    if (a5)
    {
      *a5 = v6;
    }

    return a3 + 1;
  }

  return result;
}

- (const)parseByte:(const char *)a3 end:(const char *)a4 result:(char *)a5
{
  result = 0;
  if (a3 && a4 > a3)
  {
    if (a5)
    {
      *a5 = *a3;
    }

    return a3 + 1;
  }

  return result;
}

- (const)parseUint64:(const char *)a3 end:(const char *)a4 result:(unint64_t *)a5
{
  result = 0;
  if (a4 >= a3 && a3 && a4 && (a4 - a3) >= 8)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v7 = a3[v6++] | (v7 << 8);
    }

    while (v6 != 8);
    if (a5)
    {
      *a5 = v7;
    }

    return a3 + 8;
  }

  return result;
}

- (const)parseByteArray:(const char *)a3 end:(const char *)a4 minLength:(unint64_t)a5 maxLength:(unint64_t)a6 result:(id *)a7
{
  v7 = 0;
  if (a3 && a4)
  {
    v13 = +[NSMutableData data];
    v14 = v13;
    v15 = 0;
    if (a6)
    {
      do
      {
        ++v15;
        v16 = a6 > 0xFF;
        a6 >>= 8;
      }

      while (v16);
      v7 = 0;
      if (a4 < a3 || a4 - a3 <= (v15 - 1))
      {
        goto LABEL_14;
      }

      a6 = 0;
      v17 = a3;
      v18 = v15;
      do
      {
        v19 = *v17++;
        a6 = v19 | (a6 << 8);
        --v18;
      }

      while (v18);
    }

    else if (a4 < a3)
    {
LABEL_13:
      v7 = 0;
LABEL_14:

      return v7;
    }

    if (!a5 || a6)
    {
      v21 = &a3[v15];
      if (a6 | a5)
      {
        v7 = 0;
        if (v21 <= a4 && &a4[-v21] >= a6)
        {
          [v13 appendBytes:v21 length:a6];
          if (a7)
          {
            *a7 = [NSData dataWithData:v14];
          }

          v7 = (v21 + a6);
        }
      }

      else
      {
        if (a7)
        {
          *a7 = 0;
        }

        v7 = v21;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return v7;
}

- (const)parseExtensions:(const char *)a3 end:(const char *)a4 result:(id *)a5
{
  v19 = 0;
  v6 = [(TLSMessageClass *)self parseByteArray:a3 end:a4 minLength:0 maxLength:0xFFFFLL result:&v19];
  v7 = v19;
  if (v6)
  {
    v17 = a5;
    v8 = +[NSMutableArray array];
    if ([v7 length])
    {
      while (1)
      {
        v18 = 0;
        v9 = [TLSExtension parseFromData:v7 error:&v18];
        v10 = v18;
        if (!v9)
        {
          break;
        }

        [v8 addObject:v9];
        v11 = [v7 bytes];
        v12 = [v9 parsedLength];
        v13 = [v7 length];
        v14 = [v9 parsedLength];
        if (v13 < v14)
        {

          break;
        }

        v15 = [NSData dataWithBytes:&v12[v11] length:v13 - v14];

        v7 = v15;
        if (![v15 length])
        {
          goto LABEL_8;
        }
      }

      v6 = 0;
    }

    else
    {
      v15 = v7;
LABEL_8:
      if (v17 && [v8 count])
      {
        *v17 = [NSArray arrayWithArray:v8];
      }

      v7 = v15;
    }
  }

  return v6;
}

- (BOOL)encodeBool:(BOOL)a3 buffer:(id)a4
{
  v4 = a3;
  v5 = a4;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = -1;
    v9 = 0;
    if (v4)
    {
      v6 = &v10;
    }

    else
    {
      v6 = &v9;
    }

    v7 = 1;
    [v5 appendBytes:v6 length:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)encodeByte:(unsigned __int8)a3 buffer:(id)a4
{
  v7 = a3;
  v4 = a4;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = 1;
    [v4 appendBytes:&v7 length:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)encodeUint64:(unint64_t)a3 buffer:(id)a4
{
  v5 = a4;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    for (i = 56; i != -8; i -= 8)
    {
      v9 = a3 >> i;
      v7 = 1;
      [v5 appendBytes:&v9 length:1];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)encodeByteArray:(id)a3 minLength:(unint64_t)a4 maxLength:(unint64_t)a5 buffer:(id)a6
{
  v9 = a3;
  v10 = a6;
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v9 length] >= a4)
  {
    if (a5)
    {
      v13 = -8;
      do
      {
        v13 += 8;
        v14 = a5 > 0xFF;
        a5 >>= 8;
      }

      while (v14);
      v15 = v13 - 8;
      do
      {
        v16 = [v9 length] >> v13;
        [v10 appendBytes:&v16 length:1];
        v15 -= 8;
        LOBYTE(v13) = v13 - 8;
      }

      while (v15 != -16);
    }

    [v10 appendData:v9];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)encodeExtensions:(id)a3 buffer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = +[NSMutableData data];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v18 + 1) + 8 * i) data];
          if (!v14)
          {

            v16 = 0;
            goto LABEL_14;
          }

          v15 = v14;
          [v8 appendData:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v8 = +[NSData data];
  }

  v16 = [(TLSMessageClass *)self encodeByteArray:v8 minLength:0 maxLength:0xFFFFLL buffer:v7, v18];
LABEL_14:

  return v16;
}

@end