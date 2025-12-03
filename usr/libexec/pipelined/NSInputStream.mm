@interface NSInputStream
+ (pair<NSInputStream)ps_inputStreamWithData:(id)data;
+ (pair<NSInputStream)ps_inputStreamWithFileAtPath:(const void *)path;
+ (pair<NSInputStream)ps_inputStreamWithString:(id)string;
+ (pair<NSInputStream)ps_inputStreamWithString:(id)string usingEncoding:(unint64_t)encoding;
@end

@implementation NSInputStream

+ (pair<NSInputStream)ps_inputStreamWithFileAtPath:(const void *)path
{
  v5 = v3;
  sub_100002F5C(path, 0, &v13);
  if (LODWORD(v13.__r_.__value_.__l.__data_) != 2)
  {
    sub_100014A08(v11, "");
    sub_1001D0C58("Can't create an input stream for something not a file @ ", &v13);
    if (*(path + 23) < 0)
    {
      sub_100003228(&v14, *path, *(path + 1));
    }

    else
    {
      v14 = *path;
      v15 = *(path + 2);
    }

    sub_1000E661C(v11, &v13, 2);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14);
      if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_8:
        if ((v12 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

LABEL_12:
        operator delete(v11[0]);
LABEL_9:
        sub_1000BC6D8(&__p);
      }
    }

    else if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    operator delete(v13.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v6 = sub_1000199C0(path, 0);
  v7 = [NSString ps_stringWithSTL:path];
  *v5 = [NSInputStream inputStreamWithFileAtPath:v7];
  v5[1] = v6;

  result.second = v9;
  result.first = v8;
  return result;
}

+ (pair<NSInputStream)ps_inputStreamWithString:(id)string
{
  v3 = [NSInputStream ps_inputStreamWithString:string usingEncoding:4];
  result.second = v4;
  result.first = v3;
  return result;
}

+ (pair<NSInputStream)ps_inputStreamWithString:(id)string usingEncoding:(unint64_t)encoding
{
  v6 = v4;
  stringCopy = string;
  v7 = [stringCopy dataUsingEncoding:encoding];
  v8 = [NSInputStream inputStreamWithData:v7];
  v9 = [v7 length];
  *v6 = v8;
  v6[1] = v9;

  result.second = v11;
  result.first = v10;
  return result;
}

+ (pair<NSInputStream)ps_inputStreamWithData:(id)data
{
  v4 = v3;
  dataCopy = data;
  v5 = [NSInputStream inputStreamWithData:?];
  v6 = [dataCopy length];
  *v4 = v5;
  v4[1] = v6;

  result.second = v8;
  result.first = v7;
  return result;
}

@end