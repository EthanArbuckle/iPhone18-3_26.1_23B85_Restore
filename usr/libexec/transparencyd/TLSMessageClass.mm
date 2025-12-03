@interface TLSMessageClass
- (BOOL)encodeBool:(BOOL)bool buffer:(id)buffer;
- (BOOL)encodeByte:(unsigned __int8)byte buffer:(id)buffer;
- (BOOL)encodeByteArray:(id)array minLength:(unint64_t)length maxLength:(unint64_t)maxLength buffer:(id)buffer;
- (BOOL)encodeExtensions:(id)extensions buffer:(id)buffer;
- (BOOL)encodeUint64:(unint64_t)uint64 buffer:(id)buffer;
- (const)parseBool:(const char *)bool end:(const char *)end result:(BOOL *)result;
- (const)parseByte:(const char *)byte end:(const char *)end result:(char *)result;
- (const)parseByteArray:(const char *)array end:(const char *)end minLength:(unint64_t)length maxLength:(unint64_t)maxLength result:(id *)result;
- (const)parseExtensions:(const char *)extensions end:(const char *)end result:(id *)result;
- (const)parseUint64:(const char *)uint64 end:(const char *)end result:(unint64_t *)result;
@end

@implementation TLSMessageClass

- (const)parseBool:(const char *)bool end:(const char *)end result:(BOOL *)result
{
  result = 0;
  if (bool && end > bool)
  {
    v6 = *bool;
    if (v6 == 255)
    {
      LOBYTE(v6) = 1;
    }

    else if (*bool)
    {
      return 0;
    }

    if (result)
    {
      *result = v6;
    }

    return bool + 1;
  }

  return result;
}

- (const)parseByte:(const char *)byte end:(const char *)end result:(char *)result
{
  result = 0;
  if (byte && end > byte)
  {
    if (result)
    {
      *result = *byte;
    }

    return byte + 1;
  }

  return result;
}

- (const)parseUint64:(const char *)uint64 end:(const char *)end result:(unint64_t *)result
{
  result = 0;
  if (end >= uint64 && uint64 && end && (end - uint64) >= 8)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v7 = uint64[v6++] | (v7 << 8);
    }

    while (v6 != 8);
    if (result)
    {
      *result = v7;
    }

    return uint64 + 8;
  }

  return result;
}

- (const)parseByteArray:(const char *)array end:(const char *)end minLength:(unint64_t)length maxLength:(unint64_t)maxLength result:(id *)result
{
  v7 = 0;
  if (array && end)
  {
    v13 = +[NSMutableData data];
    v14 = v13;
    v15 = 0;
    if (maxLength)
    {
      do
      {
        ++v15;
        v16 = maxLength > 0xFF;
        maxLength >>= 8;
      }

      while (v16);
      v7 = 0;
      if (end < array || end - array <= (v15 - 1))
      {
        goto LABEL_14;
      }

      maxLength = 0;
      arrayCopy = array;
      v18 = v15;
      do
      {
        v19 = *arrayCopy++;
        maxLength = v19 | (maxLength << 8);
        --v18;
      }

      while (v18);
    }

    else if (end < array)
    {
LABEL_13:
      v7 = 0;
LABEL_14:

      return v7;
    }

    if (!length || maxLength)
    {
      v21 = &array[v15];
      if (maxLength | length)
      {
        v7 = 0;
        if (v21 <= end && &end[-v21] >= maxLength)
        {
          [v13 appendBytes:v21 length:maxLength];
          if (result)
          {
            *result = [NSData dataWithData:v14];
          }

          v7 = (v21 + maxLength);
        }
      }

      else
      {
        if (result)
        {
          *result = 0;
        }

        v7 = v21;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return v7;
}

- (const)parseExtensions:(const char *)extensions end:(const char *)end result:(id *)result
{
  v19 = 0;
  v6 = [(TLSMessageClass *)self parseByteArray:extensions end:end minLength:0 maxLength:0xFFFFLL result:&v19];
  v7 = v19;
  if (v6)
  {
    resultCopy = result;
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
        bytes = [v7 bytes];
        parsedLength = [v9 parsedLength];
        v13 = [v7 length];
        parsedLength2 = [v9 parsedLength];
        if (v13 < parsedLength2)
        {

          break;
        }

        v15 = [NSData dataWithBytes:&parsedLength[bytes] length:v13 - parsedLength2];

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
      if (resultCopy && [v8 count])
      {
        *resultCopy = [NSArray arrayWithArray:v8];
      }

      v7 = v15;
    }
  }

  return v6;
}

- (BOOL)encodeBool:(BOOL)bool buffer:(id)buffer
{
  boolCopy = bool;
  bufferCopy = buffer;
  if (bufferCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = -1;
    v9 = 0;
    if (boolCopy)
    {
      v6 = &v10;
    }

    else
    {
      v6 = &v9;
    }

    v7 = 1;
    [bufferCopy appendBytes:v6 length:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)encodeByte:(unsigned __int8)byte buffer:(id)buffer
{
  byteCopy = byte;
  bufferCopy = buffer;
  if (bufferCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = 1;
    [bufferCopy appendBytes:&byteCopy length:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)encodeUint64:(unint64_t)uint64 buffer:(id)buffer
{
  bufferCopy = buffer;
  if (bufferCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    for (i = 56; i != -8; i -= 8)
    {
      v9 = uint64 >> i;
      v7 = 1;
      [bufferCopy appendBytes:&v9 length:1];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)encodeByteArray:(id)array minLength:(unint64_t)length maxLength:(unint64_t)maxLength buffer:(id)buffer
{
  arrayCopy = array;
  bufferCopy = buffer;
  if (bufferCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [arrayCopy length] >= length)
  {
    if (maxLength)
    {
      v13 = -8;
      do
      {
        v13 += 8;
        v14 = maxLength > 0xFF;
        maxLength >>= 8;
      }

      while (v14);
      v15 = v13 - 8;
      do
      {
        v16 = [arrayCopy length] >> v13;
        [bufferCopy appendBytes:&v16 length:1];
        v15 -= 8;
        LOBYTE(v13) = v13 - 8;
      }

      while (v15 != -16);
    }

    [bufferCopy appendData:arrayCopy];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)encodeExtensions:(id)extensions buffer:(id)buffer
{
  extensionsCopy = extensions;
  bufferCopy = buffer;
  if ([extensionsCopy count])
  {
    v8 = +[NSMutableData data];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = extensionsCopy;
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

          data = [*(*(&v18 + 1) + 8 * i) data];
          if (!data)
          {

            v16 = 0;
            goto LABEL_14;
          }

          v15 = data;
          [v8 appendData:data];
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

  v16 = [(TLSMessageClass *)self encodeByteArray:v8 minLength:0 maxLength:0xFFFFLL buffer:bufferCopy, v18];
LABEL_14:

  return v16;
}

@end