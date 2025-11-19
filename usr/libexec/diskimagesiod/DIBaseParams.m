@interface DIBaseParams
- (BOOL)RAMdisk;
- (BOOL)hasUnlockedBackend;
- (BOOL)prepareImageWithXpcHandler:(id)a3 fileMode:(int64_t)a4 error:(id *)a5;
- (BOOL)requiresRootDaemon;
- (BOOL)tryResolvePstackChain:(id *)a3;
- (BOOL)unlockWithPassphrase:(const char *)a3 error:(id *)a4;
- (BOOL)validateDeserializationWithError:(id *)a3;
- (DIBaseParams)initWithCoder:(id)a3;
- (DIBaseParams)initWithURL:(id)a3 error:(id *)a4;
- (NSUUID)encryptionUUID;
- (NSUUID)instanceID;
- (id)description;
- (shared_ptr<Backend>)backend;
- (void)cryptoHeader;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setSymmetricKey:(id)a3;
@end

@implementation DIBaseParams

- (BOOL)RAMdisk
{
  v2 = [(DIBaseParams *)self diskImageParamsXPC];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (DIBaseParams)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = DIBaseParams;
  v5 = [(DIBaseParams *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeBoolForKey:@"debugLogsEnabled"];
    v7 = [v4 decodeBoolForKey:@"forwardLogs"];
    sub_1000E95FC(v6);
    v8 = +[NSProcessInfo processInfo];
    v9 = [v8 processName];
    v10 = [v9 isEqualToString:@"diskimagesiod"];

    if ((v10 & 1) == 0)
    {
      sub_1000E95E4(v7);
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputURL"];
    inputURL = v5->_inputURL;
    v5->_inputURL = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shadowChain"];
    shadowChain = v5->_shadowChain;
    v5->_shadowChain = v13;

    v5->_readPassphraseFlags = [v4 decodeIntegerForKey:@"readPassphraseFlags"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"diskImageParams"];
    diskImageParamsXPC = v5->_diskImageParamsXPC;
    v5->_diskImageParamsXPC = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deserializationError"];
    deserializationError = v5->_deserializationError;
    v5->_deserializationError = v17;

    v5->_blockSize = [v4 decodeIntegerForKey:@"blockSize"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeBool:sub_1000E9608() forKey:@"debugLogsEnabled"];
  [v8 encodeBool:sub_1000E95F0() forKey:@"forwardLogs"];
  v4 = [(DIBaseParams *)self diskImageParamsXPC];
  [v8 encodeObject:v4 forKey:@"diskImageParams"];

  v5 = [(DIBaseParams *)self inputURL];
  [v8 encodeObject:v5 forKey:@"inputURL"];

  v6 = [(DIBaseParams *)self shadowChain];
  [v8 encodeObject:v6 forKey:@"shadowChain"];

  [v8 encodeInteger:-[DIBaseParams readPassphraseFlags](self forKey:{"readPassphraseFlags"), @"readPassphraseFlags"}];
  v7 = [(DIBaseParams *)self deserializationError];
  [v8 encodeObject:v7 forKey:@"deserializationError"];

  [v8 encodeInteger:-[DIBaseParams blockSize](self forKey:{"blockSize"), @"blockSize"}];
}

- (DIBaseParams)initWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = DIBaseParams;
  v7 = [(DIBaseParams *)&v17 init];
  if (v7)
  {
    v8 = [DIURL newDIURLWithNSURL:v6];
    inputURL = v7->_inputURL;
    v7->_inputURL = v8;

    v7->_readPassphraseFlags = 7;
    v10 = objc_alloc_init(DIShadowChain);
    shadowChain = v7->_shadowChain;
    v7->_shadowChain = v10;

    v7->_blockSize = 512;
    v12 = [(DIURL *)v7->_inputURL path];
    if (!v12 || ([NSURLComponents componentsWithURL:v6 resolvingAgainstBaseURL:1], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, !v13))
    {
      v14 = [DIError nilWithPOSIXCode:22 description:@"Malformed URL format" error:a4];
      goto LABEL_9;
    }

    if (![(DIBaseParams *)v7 tryResolvePstackChain:a4])
    {
      v15 = 0;
      goto LABEL_10;
    }

    if ([(DIBaseParams *)v7 isPstack]&& ![(DIBaseParams *)v7 supportsPstack])
    {
      v14 = [DIError nilWithPOSIXCode:22 verboseInfo:@"This operation doesn't support pstack files" error:a4];
      goto LABEL_9;
    }
  }

  v14 = v7;
LABEL_9:
  v15 = v14;
LABEL_10:

  return v15;
}

- (BOOL)tryResolvePstackChain:(id *)a3
{
  v5 = [SerializedDiskImageGraph alloc];
  v6 = [(DIBaseParams *)self inputURL];
  v28 = 0;
  v7 = [(SerializedDiskImageGraph *)v5 initWithPstackURL:v6 error:&v28];
  v8 = v28;

  if (v7)
  {
    self->_isPstack = 1;
    v9 = v7;
    v10 = +[NSMutableArray array];
    v11 = [(DiskImageGraph *)v9 activeNode];
    if (v11)
    {
      do
      {
        v12 = [v11 toDIShadowNode];
        [v10 addObject:v12];

        v13 = [v11 parent];

        v11 = v13;
      }

      while (v13);
    }

    v14 = [v10 lastObject];
    [v10 removeLastObject];
    v15 = [v10 reverseObjectEnumerator];
    v16 = [v15 allObjects];

    v17 = [(DIBaseParams *)self shadowChain];
    v18 = [v17 addShadowNodes:v16 error:a3];

    if (v18)
    {
      v19 = [v14 URL];
      inputURL = self->_inputURL;
      self->_inputURL = v19;
    }

    goto LABEL_20;
  }

  v21 = [v8 domain];
  if (![v21 isEqualToString:@"com.apple.DiskImages2.ErrorDomain"])
  {

    goto LABEL_14;
  }

  v22 = [v8 code] == 167;

  if (!v22)
  {
LABEL_14:
    v18 = [DIError failWithInError:v8 outError:a3];
    goto LABEL_20;
  }

  if (sub_1000E9608())
  {
    v23 = *__error();
    if (sub_1000E95F0())
    {
      v24 = sub_1000E957C();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
      *buf = 68157954;
      v30 = 38;
      v31 = 2080;
      v32 = "[DIBaseParams tryResolvePstackChain:]";
      v25 = _os_log_send_and_compose_impl();

      if (v25)
      {
        fprintf(__stderrp, "%s\n", v25);
        free(v25);
      }
    }

    else
    {
      v26 = sub_1000E957C();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68157954;
        v30 = 38;
        v31 = 2080;
        v32 = "[DIBaseParams tryResolvePstackChain:]";
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%.*s: Not a pstack", buf, 0x12u);
      }
    }

    *__error() = v23;
  }

  v18 = 1;
LABEL_20:

  return v18;
}

- (NSUUID)encryptionUUID
{
  if (*[(DIBaseParams *)self cryptoHeader])
  {
    v3 = [[NSUUID alloc] initWithUUIDBytes:{*-[DIBaseParams cryptoHeader](self, "cryptoHeader") + 36}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DIBaseParams *)self diskImageParamsXPC];
  v6 = [NSString stringWithFormat:@"%@[%@]", v4, v5];

  return v6;
}

- (BOOL)prepareImageWithXpcHandler:(id)a3 fileMode:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  if ([(DIBaseParams *)self hasUnlockedBackend]|| !*[(DIBaseParams *)self cryptoHeader]|| (v9 = [(DIEncryptionFrontend *)[DIEncryptionUnlocker alloc] initWithParams:self], v10 = [(DIEncryptionFrontend *)v9 unlockWithXpcHandler:v8 error:a5], v9, v10))
  {
    v11 = [(DIBaseParams *)self shadowChain];
    v12 = [v11 isEmpty];

    if (v12)
    {
      v13 = [(DIBaseParams *)self shadowChain];
      v14 = [(DIBaseParams *)self diskImageParamsXPC];
      [v14 setShadowChain:v13];
    }

    else
    {
      if (a4 != 2)
      {
        v15 = [(DIBaseParams *)self shadowChain];
        [v15 openWritable:1 createNonExisting:a4 != 3];

        v16 = [(DIBaseParams *)self shadowChain];
        v17 = [(DIBaseParams *)self diskImageParamsXPC];
        [v17 setShadowChain:v16];
      }

      v18 = [(DIBaseParams *)self diskImageParamsXPC];
      v19 = [v18 shadowChain];
      v20 = v19 == 0;

      if (v20)
      {
        v21 = [(DIBaseParams *)self shadowChain];
        [v21 openWritable:0 createNonExisting:0];

        v22 = [(DIBaseParams *)self shadowChain];
        v23 = [(DIBaseParams *)self diskImageParamsXPC];
        [v23 setShadowChain:v22];
      }
    }

    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)hasUnlockedBackend
{
  v2 = [(DIBaseParams *)self diskImageParamsXPC];
  v3 = [v2 backendXPC];
  v4 = [v3 isUnlocked];

  return v4;
}

- (BOOL)validateDeserializationWithError:(id *)a3
{
  v5 = [(DIBaseParams *)self deserializationError];

  if (!v5)
  {
    return 1;
  }

  v6 = [(DIBaseParams *)self deserializationError];
  v7 = [DIError failWithInError:v6 outError:a3];

  return v7;
}

- (NSUUID)instanceID
{
  v2 = [(DIBaseParams *)self diskImageParamsXPC];
  v3 = [v2 instanceID];

  return v3;
}

- (BOOL)requiresRootDaemon
{
  [(DIBaseParams *)self backend];
  sub_100192CB4(&v12, &lpsrc);
  if (v13)
  {
    sub_10000E984(v13);
  }

  v2 = lpsrc;
  if (!lpsrc)
  {
    goto LABEL_14;
  }

  v3 = *lpsrc;
  v4 = **lpsrc;
  if (!v5)
  {
    v8 = *v3;
    if (v9)
    {
      v6 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = sub_100057078(v9 + 24);
      goto LABEL_12;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  v6 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = sub_100057078(v5[5]);
LABEL_12:
  v10 = v7;
  if (v6)
  {
    sub_10000E984(v6);
  }

LABEL_15:
  if (v15)
  {
    sub_10000E984(v15);
  }

  return v10;
}

- (void)setSymmetricKey:(id)a3
{
  v8 = a3;
  mutableSymmetricKey = self->_mutableSymmetricKey;
  if (mutableSymmetricKey)
  {
    bzero([(NSMutableData *)mutableSymmetricKey mutableBytes], [(NSMutableData *)self->_mutableSymmetricKey length]);
    v5 = self->_mutableSymmetricKey;
    self->_mutableSymmetricKey = 0;
  }

  if (v8)
  {
    v6 = [[NSMutableData alloc] initWithData:v8];
    v7 = self->_mutableSymmetricKey;
    self->_mutableSymmetricKey = v6;
  }
}

- (BOOL)unlockWithPassphrase:(const char *)a3 error:(id *)a4
{
  v7 = [(DIBaseParams *)self diskImageParamsXPC];
  if (v7)
  {
  }

  else if (![(DIBaseParams *)self openExistingImageWithError:a4])
  {
    return 0;
  }

  if ([(DIBaseParams *)self hasUnlockedBackend]|| !*[(DIBaseParams *)self cryptoHeader])
  {
    return 1;
  }

  v8 = [(DIEncryptionFrontend *)[DIEncryptionUnlocker alloc] initWithParams:self];
  v9 = [(DIEncryptionFrontend *)v8 unlockWithPassphrase:a3 error:a4];

  return v9;
}

- (void)dealloc
{
  [(DIBaseParams *)self setSymmetricKey:0];
  v3.receiver = self;
  v3.super_class = DIBaseParams;
  [(DIBaseParams *)&v3 dealloc];
}

- (shared_ptr<Backend>)backend
{
  v3 = v2;
  v8 = [(DIBaseParams *)self diskImageParamsXPC];
  v4 = [v8 backendXPC];
  v5 = v4;
  if (v4)
  {
    [v4 backend];
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
  }

  result.__cntrl_ = v7;
  result.__ptr_ = v6;
  return result;
}

- (void)cryptoHeader
{
  v2 = [(DIBaseParams *)self diskImageParamsXPC];
  v3 = [v2 backendXPC];
  v4 = [v3 cryptoHeader];

  return v4;
}

@end