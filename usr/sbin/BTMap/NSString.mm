@interface NSString
- (id)UTF8DataWithMaxLength:(unint64_t)length ellipsis:(BOOL)ellipsis isTruncated:(BOOL *)truncated;
- (id)UTF8StringWithMaxLength:(unint64_t)length;
- (id)substringWithValidUnicode;
@end

@implementation NSString

- (id)substringWithValidUnicode
{
  if ([(NSString *)self length])
  {
    if (([(NSString *)self characterAtIndex:[(NSString *)self length]- 1]& 0xFC00) == 0xD800)
    {
      selfCopy = [(NSString *)self substringToIndex:[(NSString *)self length]- 1];
    }

    else
    {
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = &stru_100008710;
  }

  return selfCopy;
}

- (id)UTF8DataWithMaxLength:(unint64_t)length ellipsis:(BOOL)ellipsis isTruncated:(BOOL *)truncated
{
  ellipsisCopy = ellipsis;
  v9 = [(NSString *)self lengthOfBytesUsingEncoding:4];
  if (v9 >= length)
  {
    lengthCopy = length;
  }

  else
  {
    lengthCopy = v9;
  }

  if (v9 <= length || !ellipsisCopy)
  {
    length = lengthCopy;
    if (lengthCopy)
    {
LABEL_15:
      v13 = 0;
      lengthCopy2 = length;
      goto LABEL_16;
    }

LABEL_22:
    v17 = objc_alloc_init(NSData);
    goto LABEL_23;
  }

  lengthCopy2 = length - 3;
  if (length < 3)
  {
    v14 = qword_10000CEC8;
    if (os_log_type_enabled(qword_10000CEC8, OS_LOG_TYPE_ERROR))
    {
      sub_10000452C(length, v14);
      if (length)
      {
        goto LABEL_15;
      }
    }

    else if (length)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  v13 = 1;
LABEL_16:
  __chkstk_darwin();
  bzero(&v19 - ((length + 15) & 0xFFFFFFFFFFFFFFF0), length);
  v20 = 0;
  v21 = 0;
  v19 = 0;
  [(NSString *)self getBytes:&v19 - ((length + 15) & 0xFFFFFFFFFFFFFFF0) maxLength:lengthCopy2 usedLength:&v19 encoding:4 options:1 range:0 remainingRange:[(NSString *)self length], &v20];
  if (v13)
  {
    v15 = v19;
    v16 = &v19 + v19 - ((length + 15) & 0xFFFFFFFFFFFFFFF0);
    *v16 = -32542;
    v16[2] = -90;
    v19 = v15 + 3;
  }

  if (truncated)
  {
    *truncated = v21 != 0;
  }

  v17 = [NSData dataWithBytes:&v19 - ((length + 15) & 0xFFFFFFFFFFFFFFF0) length:v19, v19];
LABEL_23:

  return v17;
}

- (id)UTF8StringWithMaxLength:(unint64_t)length
{
  v3 = [(NSString *)self UTF8DataWithMaxLength:length ellipsis:0 isTruncated:0];
  if ([v3 length])
  {
    v4 = [[NSString alloc] initWithBytes:objc_msgSend(v3 length:"bytes") encoding:{objc_msgSend(v3, "length"), 4}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end