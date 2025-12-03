@interface NSURL
- (id)fileHash;
@end

@implementation NSURL

- (id)fileHash
{
  if ([(NSURL *)self isFileURL])
  {
    path = [(NSURL *)self path];
    v4 = [NSFileHandle fileHandleForReadingAtPath:path];
  }

  else
  {
    path = [(NSURL *)self absoluteString];
    stringByRemovingPercentEncoding = [path stringByRemovingPercentEncoding];
    v4 = [NSFileHandle fileHandleForReadingAtPath:stringByRemovingPercentEncoding];
  }

  memset(&c, 0, sizeof(c));
  if (v4)
  {
    fcntl([v4 fileDescriptor], 48, 1);
    CC_SHA1_Init(&c);
    while (1)
    {
      v6 = objc_autoreleasePoolPush();
      v13 = 0;
      v7 = [v4 readDataUpToLength:0x40000 error:&v13];
      v8 = v13;
      if (v8)
      {
        break;
      }

      if (![v7 length])
      {

        objc_autoreleasePoolPop(v6);
        CC_SHA1_Final(md, &c);
        v11 = [NSData dataWithBytes:md length:20];
        v9 = 0;
        goto LABEL_14;
      }

      CC_SHA1_Update(&c, [v7 bytes], objc_msgSend(v7, "length"));

      objc_autoreleasePoolPop(v6);
    }

    v9 = v8;

    objc_autoreleasePoolPop(v6);
    if (qword_1000B84A8[0] != -1)
    {
      sub_100056860();
    }

    v10 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100056888(v10, self, v9);
    }

    v11 = 0;
LABEL_14:
    [v4 closeFile];
  }

  else
  {
    sub_100056958(self, &v15, md);
    v11 = v15;
    v9 = *md;
  }

  return v11;
}

@end