@interface NSData
+ (NSData)dataWithHexString:(id)string;
+ (NSData)dataWithMACAddressString:(id)string;
- (id)defaultCipherWithError:(id *)error;
- (id)hexString;
- (id)randomBytesWithLength:(unint64_t)length error:(id *)error;
- (void)decryptWithCipher:(id)cipher completion:(id)completion;
- (void)encryptWithcompletion:(id)withcompletion;
@end

@implementation NSData

+ (NSData)dataWithHexString:(id)string
{
  v3 = [NSString sanitizedHexString:string];
  if ([v3 length])
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_10022811C(v3, v9);
    }

    v5 = 0;
  }

  else
  {
    v12 = 0;
    lowercaseString = [v3 lowercaseString];

    v5 = objc_opt_new();
    v6 = [lowercaseString length];
    if (v6 >= 2)
    {
      v7 = 0;
      v8 = v6 - 1;
      do
      {
        __str[0] = [lowercaseString characterAtIndex:v7];
        __str[1] = [lowercaseString characterAtIndex:v7 + 1];
        HIBYTE(v12) = strtol(__str, 0, 16);
        [v5 appendBytes:&v12 + 1 length:1];
        v7 += 2;
      }

      while (v8 > v7);
    }

    v3 = lowercaseString;
  }

  return v5;
}

+ (NSData)dataWithMACAddressString:(id)string
{
  v3 = [NSString sanitizedHexString:string];
  if ([v3 length] == 12)
  {
    v4 = [NSData dataWithHexString:v3];
  }

  else
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100228194(v3, v5);
    }

    v4 = 0;
  }

  return v4;
}

- (id)hexString
{
  [NSMutableString stringWithCapacity:2 * [(NSData *)self length]];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100154E2C;
  v7 = v6[3] = &unk_1002CE718;
  v3 = v7;
  [(NSData *)self enumerateByteRangesUsingBlock:v6];
  v4 = [NSString stringWithString:v3];

  return v4;
}

- (void)encryptWithcompletion:(id)withcompletion
{
  withcompletionCopy = withcompletion;
  v29 = 0;
  v5 = [(NSData *)self defaultCipherWithError:&v29];
  v6 = v29;
  v7 = v6;
  v8 = 0;
  if (v5 && !v6)
  {
    initializationVector = [v5 initializationVector];
    [initializationVector length];

    initializationVector2 = [v5 initializationVector];
    v11 = [v5 key];
    [v11 length];

    v12 = [v5 key];
    v13 = [(NSData *)self length];
    selfCopy = self;
    v8 = [NSMutableData dataWithLength:v13];
    v15 = qword_100312C40;
    v16 = [NSMutableData dataWithLength:qword_100312C40];
    v28 = v12;
    [v12 bytes];
    [initializationVector2 bytes];
    [(NSData *)selfCopy bytes];

    mutableBytes = [v8 mutableBytes];
    mutableBytes2 = [v16 mutableBytes];
    v18 = CCCryptorGCMOneshotEncrypt();
    if (v18)
    {
      v19 = v18;
      v7 = [NSError errorWithDomain:@"kFMDEncryptableErrorDomain" code:2 userInfo:0, v13, mutableBytes, mutableBytes2, v15];
      v20 = sub_100002880();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100228AE8(v19, v20, v21, v22, v23, v24, v25, v26);
      }
    }

    else
    {
      [v5 setTag:{v16, v13, mutableBytes, mutableBytes2, v15}];
      v7 = 0;
    }
  }

  if (withcompletionCopy)
  {
    withcompletionCopy[2](withcompletionCopy, v8, v5, v7);
  }
}

- (void)decryptWithCipher:(id)cipher completion:(id)completion
{
  cipherCopy = cipher;
  completionCopy = completion;
  initializationVector = [cipherCopy initializationVector];
  [initializationVector length];

  initializationVector2 = [cipherCopy initializationVector];
  v9 = [cipherCopy key];
  [v9 length];

  v10 = [cipherCopy key];
  v11 = [(NSData *)self length];
  selfCopy = self;
  v13 = [cipherCopy tag];
  v14 = [v13 length];

  v15 = [cipherCopy tag];
  v16 = [NSMutableData dataWithLength:v11];
  [v10 bytes];
  [initializationVector2 bytes];
  [(NSData *)selfCopy bytes];

  mutableBytes = [v16 mutableBytes];
  bytes = [v15 bytes];
  v28 = mutableBytes;
  v18 = CCCryptorGCMOneshotDecrypt();
  if (v18)
  {
    v19 = v18;
    v20 = sub_100002880();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100228B54(v19, v20, v21, v22, v23, v24, v25, v26);
    }

    v27 = [NSError errorWithDomain:@"kFMDEncryptableErrorDomain" code:3 userInfo:0, v11, v28, bytes, v14];
  }

  else
  {
    v27 = 0;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v16, cipherCopy, v27);
  }
}

- (id)defaultCipherWithError:(id *)error
{
  v5 = objc_alloc_init(FMDOneShotCipher);
  v13 = 0;
  v6 = [(NSData *)self randomBytesWithLength:qword_100312C48 error:&v13];
  v7 = v13;
  [(FMDOneShotCipher *)v5 setInitializationVector:v6];

  if (v7)
  {
    if (error)
    {
LABEL_3:
      v8 = v7;
      v9 = 0;
      *error = v7;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v12 = 0;
  v10 = [(NSData *)self randomBytesWithLength:qword_100312C50 error:&v12];
  v7 = v12;
  [(FMDOneShotCipher *)v5 setKey:v10];

  if (v7)
  {
    if (error)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_8;
  }

  v9 = v5;
LABEL_8:

  return v9;
}

- (id)randomBytesWithLength:(unint64_t)length error:(id *)error
{
  v6 = [NSMutableData dataWithLength:?];
  Bytes = CCRandomGenerateBytes([v6 mutableBytes], length);
  if (Bytes)
  {
    v8 = Bytes;
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100228BC0(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    v16 = [NSError errorWithDomain:@"kFMDEncryptableErrorDomain" code:1 userInfo:0];
    if (error)
    {
      v16 = v16;
      *error = v16;
    }

    v17 = 0;
  }

  else
  {
    v17 = v6;
  }

  return v17;
}

@end