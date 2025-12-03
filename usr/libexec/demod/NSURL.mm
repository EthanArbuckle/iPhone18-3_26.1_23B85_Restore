@interface NSURL
+ (id)fileURLWithString:(id)string;
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
        goto LABEL_12;
      }

      CC_SHA1_Update(&c, [v7 bytes], objc_msgSend(v7, "length"));

      objc_autoreleasePoolPop(v6);
    }

    v9 = v8;

    objc_autoreleasePoolPop(v6);
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000D477C(self, v9, v10);
    }

    v11 = 0;
LABEL_12:
    [v4 closeFile];
  }

  else
  {
    sub_1000D483C(self);
    v11 = 0;
    v9 = 0;
  }

  return v11;
}

+ (id)fileURLWithString:(id)string
{
  stringCopy = string;
  if ([stringCopy hasPrefix:@"file://"])
  {
    v4 = [stringCopy substringFromIndex:{objc_msgSend(@"file://", "length")}];
    v5 = [NSURL fileURLWithPath:v4];
  }

  else
  {
    v5 = [NSURL fileURLWithPath:stringCopy];
  }

  return v5;
}

@end