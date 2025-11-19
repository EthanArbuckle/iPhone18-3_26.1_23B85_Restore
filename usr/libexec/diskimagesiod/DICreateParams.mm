@interface DICreateParams
+ (BOOL)checkExistingFileWithURL:(id)a3 isDirectory:(BOOL)a4 error:(id *)a5;
+ (BOOL)eraseIfExistingWithURL:(id)a3 error:(id *)a4;
+ (BOOL)toHeaderEncryptionMode:(unint64_t)a3 headerEncMode:(void *)a4 error:(id *)a5;
- (BOOL)createDiskImageParamsWithError:(id *)a3;
- (BOOL)createEncryptionWithXPCHandler:(id)a3 error:(id *)a4;
- (BOOL)onErrorCleanup;
- (BOOL)resizeWithDiskImage:(void *)a3 numberOfBlocks:(unint64_t)a4 error:(id *)a5;
- (BOOL)resizeWithNumBlocks:(unint64_t)a3 error:(id *)a4;
- (BOOL)setPassphrase:(const char *)a3 encryptionMethod:(unint64_t)a4 error:(id *)a5;
- (DICreateParams)initWithCoder:(id)a3;
- (DICreateParams)initWithURL:(id)a3 numBlocks:(unint64_t)a4 error:(id *)a5;
- (id)createWithError:(id *)a3;
- (unique_ptr<DiskImage,)createInternalWithError:(id *)a3;
- (void)createDiskImageParamsXPC;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DICreateParams

- (DICreateParams)initWithURL:(id)a3 numBlocks:(unint64_t)a4 error:(id *)a5
{
  v7.receiver = self;
  v7.super_class = DICreateParams;
  result = [(DIBaseParams *)&v7 initWithURL:a3 error:a5];
  if (result)
  {
    result->_numBlocks = a4;
  }

  return result;
}

- (DICreateParams)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DICreateParams;
  v5 = [(DIBaseParams *)&v11 initWithCoder:v4];
  if (v5)
  {
    v5->_numBlocks = [v4 decodeInt64ForKey:@"numBlocks"];
    v5->_encryptionMethod = [v4 decodeIntegerForKey:@"encryptionMethod"];
    v5->_passphrase = [v4 decodeBoolForKey:@"passphrase"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"certificate"];
    certificate = v5->_certificate;
    v5->_certificate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = DICreateParams;
  [(DIBaseParams *)&v7 encodeWithCoder:v4];
  [v4 encodeInt64:-[DICreateParams numBlocks](self forKey:{"numBlocks"), @"numBlocks"}];
  [v4 encodeInteger:-[DICreateParams encryptionMethod](self forKey:{"encryptionMethod"), @"encryptionMethod"}];
  [v4 encodeBool:-[DICreateParams passphrase](self forKey:{"passphrase"), @"passphrase"}];
  v5 = [(DICreateParams *)self publicKey];
  [v4 encodeObject:v5 forKey:@"publicKey"];

  v6 = [(DICreateParams *)self certificate];
  [v4 encodeObject:v6 forKey:@"certificate"];
}

+ (BOOL)toHeaderEncryptionMode:(unint64_t)a3 headerEncMode:(void *)a4 error:(id *)a5
{
  if (a3 - 1 < 2)
  {
    v9 = 0x8000000100000005;
    v6 = 5;
    v7 = 5;
LABEL_5:
    sub_1000A56E0("encryption_mode", v7, &v9, 2);
    *a4 = v6;
    return 1;
  }

  if (a3 == 3)
  {
    v9 = 0x8000000100000005;
    v6 = -2147483647;
    v7 = -2147483647;
    goto LABEL_5;
  }

  return [DIError failWithPOSIXCode:22 verboseInfo:@"Invalid encryption method" error:a5];
}

- (BOOL)createEncryptionWithXPCHandler:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(DICreateParams *)self encryptionMethod])
  {
    v7 = [(DIBaseParams *)self diskImageParamsXPC];
    v8 = [v7 backendXPC];
    v9 = v8;
    if (v8)
    {
      [v8 getCryptoHeaderBackend];
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    if (v16)
    {
      if ([(DICreateParams *)self encryptionMethod]== 2)
      {
        v11 = 256;
      }

      else
      {
        v11 = 128;
      }

      v17 = 0x10000000080;
      sub_1000A56E0("encryption_key_bits_size_t", v11, &v17, 2);
      v13 = 0;
      if ([DICreateParams toHeaderEncryptionMode:[(DICreateParams *)self encryptionMethod] headerEncMode:&v13 error:a4])
      {
        [(DIBaseParams *)self blockSize];
        operator new();
      }

      v10 = 0;
    }

    else
    {
      v10 = [DIError failWithUnexpected:v14 verboseInfo:v15 error:@"Failed to open crypto header", a4];
    }

    if (v16 == 1 && v15)
    {
      sub_10000E984(v15);
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)createDiskImageParamsXPC
{
  exception = __cxa_allocate_exception(0x40uLL);
  v3 = sub_100001940(exception, "Invalid argument, please use one of the DICreateParams derived classes instead", 0x16u);
}

- (BOOL)createDiskImageParamsWithError:(id *)a3
{
  v5 = [(DIBaseParams *)self inputURL];
  v6 = [v5 isFileURL];

  if (v6)
  {
    v7 = *__error();
    if (sub_1000E95F0())
    {
      v8 = sub_1000E957C();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      [(DIBaseParams *)self inputURL];
      *buf = 68158211;
      v18 = 49;
      v19 = 2080;
      v20 = "[DICreateParams createDiskImageParamsWithError:]";
      v22 = v21 = 2113;
      v9 = _os_log_send_and_compose_impl();

      if (v9)
      {
        fprintf(__stderrp, "%s\n", v9);
        free(v9);
      }
    }

    else
    {
      v11 = sub_1000E957C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(DIBaseParams *)self inputURL];
        *buf = 68158211;
        v18 = 49;
        v19 = 2080;
        v20 = "[DICreateParams createDiskImageParamsWithError:]";
        v21 = 2113;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%.*s: entry with %{private}@", buf, 0x1Cu);
      }
    }

    *__error() = v7;
    v13 = objc_opt_class();
    v14 = [(DIBaseParams *)self inputURL];
    LOBYTE(v13) = [v13 eraseIfExistingWithURL:v14 error:a3];

    if ((v13 & 1) == 0)
    {
      return 0;
    }

    [(DICreateParams *)self createDiskImageParamsXPC];
    v15 = [(DIBaseParams *)self diskImageParamsXPC];
    v16 = [v15 setBlockSize:-[DIBaseParams blockSize](self error:{"blockSize"), a3}];

    return v16;
  }

  else
  {

    return [DIError failWithPOSIXCode:22 verboseInfo:@"URL must have a file scheme" error:a3];
  }
}

- (unique_ptr<DiskImage,)createInternalWithError:(id *)a3
{
  v6 = v3;
  if (![(DICreateParams *)self encryptionMethod])
  {
LABEL_5:
    temporaryPassphrase = self->_temporaryPassphrase;
    self->_temporaryPassphrase = 0;

    v8 = [(DIBaseParams *)self diskImageParamsXPC];
    v9 = [(DIBaseParams *)self shadowChain];
    v10 = [v9 shouldValidate];
    if (v8)
    {
      [v8 createDiskImageWithCache:0 shadowValidation:v10];
      v11 = v14;
    }

    else
    {
      v11 = 0;
    }

    v12.var0 = [(DICreateParams *)self resizeWithDiskImage:v11 numberOfBlocks:[(DICreateParams *)self numBlocks] error:a3];
    if (LODWORD(v12.var0))
    {
      *v6 = v11;
    }

    else
    {
      *v6 = 0;
      if (v11)
      {
        return (*(*v11 + 16))(v11);
      }
    }

    return v12;
  }

  v13 = objc_alloc_init(DIClient2Controller_XPCHandler);
  if ([(DIClient2Controller_XPCHandler *)v13 connectWithError:a3]&& [(DICreateParams *)self createEncryptionWithXPCHandler:v13 error:a3])
  {

    goto LABEL_5;
  }

  *v6 = 0;

  return v12;
}

- (id)createWithError:(id *)a3
{
  if ([(DICreateParams *)self validateBlockSizeSupport])
  {
    if ([(DICreateParams *)self createDiskImageParamsWithError:a3])
    {
      [(DICreateParams *)self createInternalWithError:a3];
      if (v8)
      {
        sub_100059338();
      }

      [(DICreateParams *)self onErrorCleanup];
      v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [DIError nilWithPOSIXCode:22 description:@"Unsupported block size for image format" error:a3];
  }

  temporaryPassphrase = self->_temporaryPassphrase;
  self->_temporaryPassphrase = 0;

  return v5;
}

- (BOOL)resizeWithDiskImage:(void *)a3 numberOfBlocks:(unint64_t)a4 error:(id *)a5
{
  [(DICreateParams *)self setNumBlocks:a4];
  v9 = (*(*a3 + 24))(a3);
  v10 = [(DIBaseParams *)self diskImageParamsXPC];
  v11 = [v10 setSizeWithDiskImage:a3 newSize:v9 * a4];

  if (!v11)
  {
    [(DICreateParams *)self setNumBlocks:(*(*a3 + 32))(a3)];
    v13 = [(DICreateParams *)self numBlocks];
    v14 = (*(*a3 + 24))(a3) * v13;
    v15 = *__error();
    if (sub_1000E95F0())
    {
      v16 = sub_1000E957C();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      *buf = 0x3B04100302;
      v23 = 2080;
      v24 = "[DICreateParams resizeWithDiskImage:numberOfBlocks:error:]";
      v25 = 2048;
      v26 = v14;
      v17 = _os_log_send_and_compose_impl();

      if (v17)
      {
        fprintf(__stderrp, "%s\n", v17);
        free(v17);
      }
    }

    else
    {
      v18 = sub_1000E957C();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0x3B04100302;
        v23 = 2080;
        v24 = "[DICreateParams resizeWithDiskImage:numberOfBlocks:error:]";
        v25 = 2048;
        v26 = v14;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%.*s: Disk image resized to %llu bytes", buf, 0x1Cu);
      }
    }

    *__error() = v15;
    v19 = (*(*a3 + 144))(a3);
    v20 = sub_10000FC18(v19);
    if (v20)
    {
      v21 = [DIError failWithPOSIXCode:v20 error:a5];
      if (!v19)
      {
        return v21;
      }
    }

    else
    {
      v21 = 1;
      if (!v19)
      {
        return v21;
      }
    }

    (*(*v19 + 40))(v19);
    return v21;
  }

  return [DIError failWithPOSIXCode:v11 verboseInfo:@"Failed to resize the image" error:a5];
}

- (BOOL)resizeWithNumBlocks:(unint64_t)a3 error:(id *)a4
{
  v7 = [(DIBaseParams *)self diskImageParamsXPC];
  v8 = [(DIBaseParams *)self shadowChain];
  v9 = [v8 shouldValidate];
  if (v7)
  {
    [v7 createDiskImageWithCache:0 shadowValidation:v9];
    v10 = v13;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(DICreateParams *)self resizeWithDiskImage:v10 numberOfBlocks:a3 error:a4];
  if (v10)
  {
    (*(*v10 + 16))(v10);
  }

  return v11;
}

+ (BOOL)checkExistingFileWithURL:(id)a3 isDirectory:(BOOL)a4 error:(id *)a5
{
  if (a4)
  {
    return [DIError failWithPOSIXCode:21 verboseInfo:@"The requested URL is an existing folder" error:a5];
  }

  else
  {
    return 1;
  }
}

+ (BOOL)eraseIfExistingWithURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v25 = 0;
  v6 = +[NSFileManager defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7 isDirectory:&v25];

  if (v8)
  {
    v9 = +[NSFileManager defaultManager];
    v10 = [v5 path];
    v11 = [v9 isWritableFileAtPath:v10];

    if (v11)
    {
      if ([objc_opt_class() checkExistingFileWithURL:v5 isDirectory:v25 error:a4])
      {
        v12 = +[NSFileManager defaultManager];
        v13 = [v5 path];
        v14 = [v12 attributesOfItemAtPath:v13 error:0];

        if ((v25 & 1) == 0 && v14)
        {
          v15 = [v14 objectForKeyedSubscript:NSFileSize];
          v16 = v15;
          if (v15 && ![v15 longLongValue])
          {
            v21 = 1;
LABEL_19:

            goto LABEL_20;
          }
        }

        v17 = *__error();
        if (sub_1000E95F0())
        {
          v18 = sub_1000E957C();
          os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          v19 = [v5 path];
          *buf = 68158211;
          v27 = 47;
          v28 = 2080;
          v29 = "+[DICreateParams eraseIfExistingWithURL:error:]";
          v30 = 2113;
          v31 = v19;
          v20 = _os_log_send_and_compose_impl();

          if (v20)
          {
            fprintf(__stderrp, "%s\n", v20);
            free(v20);
          }
        }

        else
        {
          v22 = sub_1000E957C();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v5 path];
            *buf = 68158211;
            v27 = 47;
            v28 = 2080;
            v29 = "+[DICreateParams eraseIfExistingWithURL:error:]";
            v30 = 2113;
            v31 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%.*s: Erasing %{private}@", buf, 0x1Cu);
          }
        }

        *__error() = v17;
        v16 = +[NSFileManager defaultManager];
        v21 = [v16 removeItemAtURL:v5 error:a4];
        goto LABEL_19;
      }

      v21 = 0;
    }

    else
    {
      v21 = [DIError failWithPOSIXCode:13 verboseInfo:@"Image does not have write permissions" error:a4];
    }
  }

  else
  {
    v21 = 1;
  }

LABEL_20:

  return v21;
}

- (BOOL)onErrorCleanup
{
  [(DIBaseParams *)self setDiskImageParamsXPC:0];
  v3 = *__error();
  if (sub_1000E95F0())
  {
    v4 = sub_1000E957C();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    v5 = [(DIBaseParams *)self inputURL];
    [v5 path];
    *buf = 68158211;
    v15 = 32;
    v16 = 2080;
    v17 = "[DICreateParams onErrorCleanup]";
    v19 = v18 = 2113;
    v6 = _os_log_send_and_compose_impl();

    if (v6)
    {
      fprintf(__stderrp, "%s\n", v6);
      free(v6);
    }
  }

  else
  {
    v7 = sub_1000E957C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(DIBaseParams *)self inputURL];
      v9 = [v8 path];
      *buf = 68158211;
      v15 = 32;
      v16 = 2080;
      v17 = "[DICreateParams onErrorCleanup]";
      v18 = 2113;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%.*s: Creation failed, erasing %{private}@", buf, 0x1Cu);
    }
  }

  *__error() = v3;
  v10 = +[NSFileManager defaultManager];
  v11 = [(DIBaseParams *)self inputURL];
  v12 = [v10 removeItemAtURL:v11 error:0];

  return v12;
}

- (BOOL)setPassphrase:(const char *)a3 encryptionMethod:(unint64_t)a4 error:(id *)a5
{
  if (a3)
  {
    v8 = [[DITemporaryPassphrase alloc] initWithPassphrase:a3];
    temporaryPassphrase = self->_temporaryPassphrase;
    self->_temporaryPassphrase = v8;

    self->_encryptionMethod = a4;
    return 1;
  }

  else
  {

    return [DIError failWithPOSIXCode:22 error:a5];
  }
}

@end