@interface NSString
- (id)UTF8DataWithMaxLength:(unint64_t)a3 ellipsis:(BOOL)a4 isTruncated:(BOOL *)a5;
- (id)UTF8StringWithMaxLength:(unint64_t)a3;
- (id)substringWithValidUnicode;
@end

@implementation NSString

- (id)substringWithValidUnicode
{
  if ([(NSString *)self length])
  {
    if (([(NSString *)self characterAtIndex:[(NSString *)self length]- 1]& 0xFC00) == 0xD800)
    {
      v3 = [(NSString *)self substringToIndex:[(NSString *)self length]- 1];
    }

    else
    {
      v3 = self;
    }
  }

  else
  {
    v3 = &stru_100008710;
  }

  return v3;
}

- (id)UTF8DataWithMaxLength:(unint64_t)a3 ellipsis:(BOOL)a4 isTruncated:(BOOL *)a5
{
  v6 = a4;
  v9 = [(NSString *)self lengthOfBytesUsingEncoding:4];
  if (v9 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v9;
  }

  if (v9 <= a3 || !v6)
  {
    a3 = v10;
    if (v10)
    {
LABEL_15:
      v13 = 0;
      v12 = a3;
      goto LABEL_16;
    }

LABEL_22:
    v17 = objc_alloc_init(NSData);
    goto LABEL_23;
  }

  v12 = a3 - 3;
  if (a3 < 3)
  {
    v14 = qword_10000CEC8;
    if (os_log_type_enabled(qword_10000CEC8, OS_LOG_TYPE_ERROR))
    {
      sub_10000452C(a3, v14);
      if (a3)
      {
        goto LABEL_15;
      }
    }

    else if (a3)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  v13 = 1;
LABEL_16:
  __chkstk_darwin();
  bzero(&v19 - ((a3 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v20 = 0;
  v21 = 0;
  v19 = 0;
  [(NSString *)self getBytes:&v19 - ((a3 + 15) & 0xFFFFFFFFFFFFFFF0) maxLength:v12 usedLength:&v19 encoding:4 options:1 range:0 remainingRange:[(NSString *)self length], &v20];
  if (v13)
  {
    v15 = v19;
    v16 = &v19 + v19 - ((a3 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v16 = -32542;
    v16[2] = -90;
    v19 = v15 + 3;
  }

  if (a5)
  {
    *a5 = v21 != 0;
  }

  v17 = [NSData dataWithBytes:&v19 - ((a3 + 15) & 0xFFFFFFFFFFFFFFF0) length:v19, v19];
LABEL_23:

  return v17;
}

- (id)UTF8StringWithMaxLength:(unint64_t)a3
{
  v3 = [(NSString *)self UTF8DataWithMaxLength:a3 ellipsis:0 isTruncated:0];
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