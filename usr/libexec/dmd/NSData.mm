@interface NSData
+ (id)dmd_dataWithMappedContentsOfFileHandle:(id)handle error:(id *)error;
- (NSData)dmd_sha1Hash;
@end

@implementation NSData

+ (id)dmd_dataWithMappedContentsOfFileHandle:(id)handle error:(id *)error
{
  fileDescriptor = [handle fileDescriptor];
  memset(&v12, 0, sizeof(v12));
  if (fstat(fileDescriptor, &v12) != -1)
  {
    st_size = v12.st_size;
    v7 = mmap(0, v12.st_size, 1, 2, fileDescriptor, 0);
    if (v7 != -1)
    {
      v8 = dispatch_data_create(v7, st_size, 0, _dispatch_data_destructor_munmap);
      goto LABEL_10;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100087FE4();
      if (!error)
      {
        goto LABEL_9;
      }
    }

    else if (!error)
    {
      goto LABEL_9;
    }

LABEL_6:
    v9 = DMFErrorWithCodeAndUserInfo();
    v10 = v9;
    v8 = 0;
    *error = v9;
    goto LABEL_10;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10008802C();
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (error)
  {
    goto LABEL_6;
  }

LABEL_9:
  v8 = 0;
LABEL_10:

  return v8;
}

- (NSData)dmd_sha1Hash
{
  memset(&v5, 0, sizeof(v5));
  CC_SHA1_Init(&v5);
  CC_SHA1_Update(&v5, [(NSData *)self bytes], [(NSData *)self length]);
  CC_SHA1_Final(md, &v5);
  v3 = [NSData dataWithBytes:md length:20];

  return v3;
}

@end