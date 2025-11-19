@interface DIAttachParams
+ (BOOL)copyWithURL:(id)a3 outURLStr:(char *)a4 maxLen:(unint64_t)a5 error:(id *)a6;
- (BOOL)isDeviceHighThroughputWithRegistryEntryID:(unint64_t)a3;
- (BOOL)isDeviceSolidStateWithRegistryEntryID:(unint64_t)a3;
- (BOOL)isDeviceWithProperty:(const char *)a3 registryEntryID:(unint64_t)a4 predicate:(function<BOOL)(iokit_utils::di_io_obj_t;
- (BOOL)reOpenIfWritableWithError:(id *)a3;
- (BOOL)shouldValidateShadows;
- (BOOL)updateStatFSWithError:(id *)a3;
- (DIAttachParams)initWithCoder:(id)a3;
- (DIAttachParams)initWithExistingParams:(id)a3 error:(id *)a4;
- (DIAttachParams)initWithURL:(id)a3 error:(id *)a4;
- (DIAttachParams)initWithURL:(id)a3 shadowURLs:(id)a4 error:(id *)a5;
- (id)newAttachWithError:(id *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setOnDiskCache:(BOOL)a3;
- (void)setupDefaults;
@end

@implementation DIAttachParams

- (DIAttachParams)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DIAttachParams;
  v5 = [(DIBaseParams *)&v11 initWithCoder:v4];
  if (v5)
  {
    v5->_autoMount = [v4 decodeBoolForKey:@"autoMount"];
    v5->_commandSize = [v4 decodeIntegerForKey:@"commandSize"];
    v5->_regEntryID = [v4 decodeInt64ForKey:@"regEntryID"];
    v5->_handleRefCount = [v4 decodeBoolForKey:@"handleRefCount"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputStatFS"];
    inputStatFS = v5->_inputStatFS;
    v5->_inputStatFS = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputMountedFrom"];
    inputMountedFrom = v5->_inputMountedFrom;
    v5->_inputMountedFrom = v8;

    v5->_fileMode = [v4 decodeIntegerForKey:@"fileMode"];
    v5->_onDiskCache = [v4 decodeBoolForKey:@"onDiskCache"];
    v5->_uniqueDevice = [v4 decodeBoolForKey:@"uniqueDevice"];
    v5->_emulateExternalDisk = [v4 decodeBoolForKey:@"emulateExternalDisk"];
    v5->_suppressSsdFlags = [v4 decodeBoolForKey:@"suppressSsdFlags"];
    v5->_singleInstanceDaemon = [v4 decodeBoolForKey:@"singleInstanceDaemon"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = DIAttachParams;
  [(DIBaseParams *)&v6 encodeWithCoder:v4];
  [v4 encodeBool:-[DIAttachParams autoMount](self forKey:{"autoMount"), @"autoMount"}];
  [v4 encodeInteger:-[DIAttachParams commandSize](self forKey:{"commandSize"), @"commandSize"}];
  [v4 encodeInt64:-[DIAttachParams regEntryID](self forKey:{"regEntryID"), @"regEntryID"}];
  [v4 encodeBool:-[DIAttachParams handleRefCount](self forKey:{"handleRefCount"), @"handleRefCount"}];
  v5 = [(DIAttachParams *)self inputStatFS];
  [v4 encodeObject:v5 forKey:@"inputStatFS"];

  [v4 encodeInteger:-[DIAttachParams fileMode](self forKey:{"fileMode"), @"fileMode"}];
  [v4 encodeBool:-[DIAttachParams onDiskCache](self forKey:{"onDiskCache"), @"onDiskCache"}];
  [v4 encodeBool:-[DIAttachParams uniqueDevice](self forKey:{"uniqueDevice"), @"uniqueDevice"}];
  [v4 encodeBool:-[DIAttachParams emulateExternalDisk](self forKey:{"emulateExternalDisk"), @"emulateExternalDisk"}];
  [v4 encodeBool:-[DIAttachParams suppressSsdFlags](self forKey:{"suppressSsdFlags"), @"suppressSsdFlags"}];
  [v4 encodeBool:-[DIAttachParams singleInstanceDaemon](self forKey:{"singleInstanceDaemon"), @"singleInstanceDaemon"}];
}

- (void)setupDefaults
{
  self->_fileMode = 1;
  self->_autoMount = ![(DIBaseParams *)self RAMdisk];
  self->_onDiskCache = 0;
  customCacheURL = self->_customCacheURL;
  self->_customCacheURL = 0;
}

- (void)setOnDiskCache:(BOOL)a3
{
  self->_onDiskCache = a3;
  if (!a3)
  {
    customCacheURL = self->_customCacheURL;
    self->_customCacheURL = 0;
    _objc_release_x1();
  }
}

- (DIAttachParams)initWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[NSArray array];
  v8 = [(DIAttachParams *)self initWithURL:v6 shadowURLs:v7 error:a4];

  return v8;
}

- (DIAttachParams)initWithURL:(id)a3 shadowURLs:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = DIAttachParams;
  v10 = [(DIBaseParams *)&v17 initWithURL:v8 error:a5];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_7;
  }

  if (![(DIBaseParams *)v10 openExistingImageWithFlags:0 error:a5])
  {
    goto LABEL_9;
  }

  [(DIAttachParams *)v11 setupDefaults];
  if (![v9 count])
  {
LABEL_7:
    v12 = v11;
    goto LABEL_8;
  }

  if (![(DIBaseParams *)v11 isPstack])
  {
    v13 = [(DIBaseParams *)v11 shadowChain];
    v14 = [v13 addShadowURLs:v9 error:a5];

    if (v14)
    {
      goto LABEL_7;
    }

LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v12 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Custom cache or shadow is not supported for pstack based images." error:a5];
LABEL_8:
  v15 = v12;
LABEL_10:

  return v15;
}

- (DIAttachParams)initWithExistingParams:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 inputURL];
  v19.receiver = self;
  v19.super_class = DIAttachParams;
  v8 = [(DIBaseParams *)&v19 initWithURL:v7 error:a4];

  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = [v6 diskImageParamsXPC];
  [(DIBaseParams *)v8 setDiskImageParamsXPC:v9];

  v10 = [(DIBaseParams *)v8 diskImageParamsXPC];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(DIBaseParams *)v8 backend];
    operator new();
  }

  [(DIAttachParams *)v8 setupDefaults];
  v12 = [(DIBaseParams *)v8 diskImageParamsXPC];
  -[DIBaseParams setBlockSize:](v8, "setBlockSize:", [v12 blockSize]);

  v13 = [(DIBaseParams *)v8 shadowChain];
  v14 = [v6 shadowChain];
  v15 = [v14 nodes];
  v16 = [v13 addShadowNodes:v15 error:a4];

  if ((v16 & 1) == 0)
  {
    v17 = 0;
  }

  else
  {
LABEL_5:
    v17 = v8;
  }

  return v17;
}

- (BOOL)shouldValidateShadows
{
  v2 = [(DIBaseParams *)self shadowChain];
  v3 = [v2 shouldValidate];

  return v3;
}

- (BOOL)reOpenIfWritableWithError:(id *)a3
{
  v5 = [(DIBaseParams *)self inputURL];
  if ([v5 isFileURL])
  {
  }

  else
  {
    v6 = [(DIBaseParams *)self diskImageParamsXPC];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return 1;
    }
  }

  v8 = [(DIBaseParams *)self shadowChain];
  v9 = [v8 activeShadowURL];

  if (!v9)
  {
    [(DIBaseParams *)self backend];
    v10 = (*(**buf + 48))(*buf);
    if (*v43)
    {
      sub_10000E984(*v43);
    }

    if ((v10 & 1) == 0)
    {
      v13 = [(DIBaseParams *)self diskImageParamsXPC];
      v14 = [v13 isWritableFormat];

      v15 = *__error();
      if (sub_1000E95F0())
      {
        v16 = sub_1000E957C();
        os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        v17 = "NO";
        *buf = 68158210;
        *&buf[4] = 44;
        *&v43[2] = "[DIAttachParams reOpenIfWritableWithError:]";
        *v43 = 2080;
        if (v14)
        {
          v17 = "YES";
        }

        v44 = 2080;
        v45 = v17;
        LODWORD(v41) = 28;
        v40 = buf;
        v18 = _os_log_send_and_compose_impl();

        if (v18)
        {
          fprintf(__stderrp, "%s\n", v18);
          free(v18);
        }
      }

      else
      {
        v19 = sub_1000E957C();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = "NO";
          *buf = 68158210;
          *&buf[4] = 44;
          *&v43[2] = "[DIAttachParams reOpenIfWritableWithError:]";
          *v43 = 2080;
          if (v14)
          {
            v20 = "YES";
          }

          v44 = 2080;
          v45 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%.*s: isWritableFormat: %s", buf, 0x1Cu);
        }
      }

      *__error() = v15;
      v21 = [(DIAttachParams *)self fileMode];
      if (v14)
      {
        if (v21 != 2)
        {
          v22 = [(DIBaseParams *)self diskImageParamsXPC];
          objc_opt_class();
          v23 = objc_opt_isKindOfClass();

          if (v23)
          {
            v24 = [PluginBackendXPC alloc];
            v25 = [(DIBaseParams *)self inputURL];
            v26 = [(PluginBackendXPC *)v24 initWithURL:v25 openMode:2];

            v27 = v26;
          }

          else
          {
            v28 = [(DIBaseParams *)self inputURL];
            v29 = [BackendXPC newFileBackendWithURL:v28 fileOpenFlags:2 error:a3];

            v27 = v29;
            if (!v29)
            {
              return 0;
            }
          }

          v30 = *__error();
          if (sub_1000E95F0())
          {
            v31 = sub_1000E957C();
            os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
            v32 = [(DIBaseParams *)self inputURL:v40];
            v33 = [v32 path];
            *buf = 68158211;
            *&buf[4] = 44;
            *v43 = 2080;
            *&v43[2] = "[DIAttachParams reOpenIfWritableWithError:]";
            v44 = 2113;
            v45 = v33;
            v34 = _os_log_send_and_compose_impl();

            if (v34)
            {
              fprintf(__stderrp, "%s\n", v34);
              free(v34);
            }
          }

          else
          {
            v35 = sub_1000E957C();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = [(DIBaseParams *)self inputURL];
              v37 = [v36 path];
              *buf = 68158211;
              *&buf[4] = 44;
              *v43 = 2080;
              *&v43[2] = "[DIAttachParams reOpenIfWritableWithError:]";
              v44 = 2113;
              v45 = v37;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%.*s: Image %{private}@ re-opened with RW permissions", buf, 0x1Cu);
            }
          }

          *__error() = v30;
          v38 = [(DIBaseParams *)self diskImageParamsXPC];
          v39 = [v38 backendXPC];
          [v39 replaceWithBackendXPC:v27];
        }
      }

      else if (v21 == 4)
      {
        return [DIError failWithPOSIXCode:22 verboseInfo:@"Image has a read-only format error:attach failed due to force RW flag", a3];
      }
    }
  }

  return 1;
}

- (BOOL)updateStatFSWithError:(id *)a3
{
  v5 = [(DIBaseParams *)self inputURL];
  v6 = [v5 isFileURL];

  if (v6)
  {
    [(DIBaseParams *)self backend];
    sub_100192CB4(&v17, &v19);
    v7 = sub_100157F90(&v19);
    if (v20)
    {
      sub_10000E984(v20);
    }

    if (v18)
    {
      sub_10000E984(v18);
    }

    if ((v7 & 0x80000000) != 0)
    {
      return [DIError failWithEnumValue:150 verboseInfo:@"Unexpected backend type for file" error:a3];
    }

    v8 = [[DIStatFS alloc] initWithFileDescriptor:v7 error:a3];
    [(DIAttachParams *)self setInputStatFS:v8];

    v9 = [(DIAttachParams *)self inputStatFS];

    if (!v9)
    {
      return 0;
    }

    v10 = [(DIAttachParams *)self inputStatFS];
    [v10 logWithHeader:@"Input underlying FS"];
  }

  v11 = [(DIBaseParams *)self shadowChain];
  v12 = [v11 isEmpty];

  if (v12)
  {
    return 1;
  }

  v14 = [(DIBaseParams *)self shadowChain];
  v15 = [v14 statWithError:a3];
  v13 = v15 != 0;

  return v13;
}

- (id)newAttachWithError:(id *)a3
{
  if (![(DIBaseParams *)self isPstack])
  {
    v5 = [(DIBaseParams *)self shadowChain];
    v6 = [v5 hasBaseImageCache];

    if (v6)
    {
      v7 = [(DIBaseParams *)self shadowChain];
      v8 = [v7 nodes];
      [v8 removeObjectAtIndex:0];
    }
  }

  if (![(DIBaseParams *)self isPstack]|| ![(DIAttachParams *)self onDiskCache])
  {
    v10 = [(DIAttachParams *)self customCacheURL];

    if (v10)
    {
      v11 = [DIShadowNode alloc];
      v12 = [(DIAttachParams *)self customCacheURL];
      v13 = [(DIShadowNode *)v11 initWithURL:v12 isCache:1];

      v14 = [(DIBaseParams *)self shadowChain];
      v47 = v13;
      v15 = [NSArray arrayWithObjects:&v47 count:1];
      v16 = [v14 verifyNodes:v15 error:a3];

      if ((v16 & 1) == 0)
      {

        return 0;
      }

      v17 = [(DIBaseParams *)self shadowChain];
      v18 = [v17 nodes];
      [v18 insertObject:v13 atIndex:0];
    }

    v19 = [(DIBaseParams *)self diskImageParamsXPC];
    v20 = [v19 setBlockSize:-[DIBaseParams blockSize](self error:{"blockSize"), a3}];

    if (v20)
    {
      v21 = objc_alloc_init(DIClient2Controller_XPCHandler);
      v22 = *__error();
      if (sub_1000E95F0())
      {
        v40 = 0;
        v23 = sub_1000E957C();
        os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        *buf = 68158210;
        v42 = 37;
        v43 = 2080;
        v44 = "[DIAttachParams newAttachWithError:]";
        v45 = 2114;
        v46 = self;
        LODWORD(v37) = 28;
        v36 = buf;
        v24 = _os_log_send_and_compose_impl();

        if (v24)
        {
          fprintf(__stderrp, "%s\n", v24);
          free(v24);
        }
      }

      else
      {
        v25 = sub_1000E957C();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68158210;
          v42 = 37;
          v43 = 2080;
          v44 = "[DIAttachParams newAttachWithError:]";
          v45 = 2114;
          v46 = self;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
        }
      }

      *__error() = v22;
      if ([(DIBaseParams *)self RAMdisk]&& [(DIAttachParams *)self fileMode]== 2)
      {
        v26 = @"Cannot attach RAM disk as a read-only device";
      }

      else
      {
        if (!-[DIBaseParams RAMdisk](self, "RAMdisk", v36, v37) || (-[DIBaseParams shadowChain](self, "shadowChain"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 isEmpty], v27, (v28 & 1) != 0))
        {
          if (![(DIBaseParams *)self requiresRootDaemon])
          {
            if ([(DIClient2Controller_XPCHandler *)v21 connectWithError:a3]&& [(DIBaseParams *)self prepareImageWithXpcHandler:v21 fileMode:[(DIAttachParams *)self fileMode] error:a3]&& [(DIAttachParams *)self reOpenIfWritableWithError:a3]&& [(DIAttachParams *)self updateStatFSWithError:a3])
            {
              v30 = [QuarantineFileHandler alloc];
              [(DIBaseParams *)self backend];
              v31 = [(QuarantineFileHandler *)v30 initWithBackend:v38 error:a3];
              if (v39)
              {
                sub_10000E984(v39);
              }

              if (v31)
              {
                if ([(DIAttachParams *)self handleRefCount]&& [(DIAttachParams *)self uniqueDevice])
                {
                  v32 = +[NSUUID UUID];
                  v33 = [(DIBaseParams *)self diskImageParamsXPC];
                  [v33 setInstanceID:v32];
                }

                v9 = [(DIClient2Controller_XPCHandler *)v21 newAttachWithParams:self error:a3];
                if (v9 && [(QuarantineFileHandler *)v31 isQuarantined])
                {
                  v34 = [v9 BSDName];
                  [(QuarantineFileHandler *)v31 applyMountPointsWithBSDName:v34 error:0];
                }
              }

              else
              {
                v9 = 0;
              }
            }

            else
            {
              v9 = 0;
            }

            goto LABEL_43;
          }

          v29 = [DIError nilWithPOSIXCode:45 verboseInfo:@"Sparsebundles on SMB mounts are not supported on this system" error:a3];
LABEL_42:
          v9 = v29;
LABEL_43:

          return v9;
        }

        v26 = @"Cannot attach RAM disk with a shadow or a cache file";
      }

      v29 = [DIError nilWithPOSIXCode:22 description:v26 error:a3, v36];
      goto LABEL_42;
    }

    return 0;
  }

  [DIError nilWithPOSIXCode:22 description:@"Cache is not supported when using pstack." error:a3];
  return objc_claimAutoreleasedReturnValue();
}

+ (BOOL)copyWithURL:(id)a3 outURLStr:(char *)a4 maxLen:(unint64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [v9 description];
  v11 = [v10 UTF8String];

  if (!v11 || !*v11)
  {
    v13 = [DIError failWithPOSIXCode:22 verboseInfo:@"Failed converting URL to UTF8" error:a6];
LABEL_7:
    v12 = v13;
    goto LABEL_8;
  }

  if (strlcpy(a4, v11, a5) >= a5)
  {
    v13 = [DIError failWithPOSIXCode:22 description:@"Disk image URL is too long" error:a6];
    goto LABEL_7;
  }

  v12 = 1;
LABEL_8:

  return v12;
}

- (BOOL)isDeviceWithProperty:(const char *)a3 registryEntryID:(unint64_t)a4 predicate:(function<BOOL)(iokit_utils::di_io_obj_t
{
  v20 = a4;
  if ([(DIBaseParams *)self RAMdisk])
  {
    return 1;
  }

  if (a4)
  {
    sub_100053194(&v20, v21);
    sub_10005320C(v21, "device not found in registry", &v19);
    sub_10014E0C4(v18, 3, &v19);
    sub_10014E0D0(v18, &v16);
    sub_10014E288(v18, &v15);
    sub_100053760(v26, a5);
    sub_100053290(&v16, &v15, v26, &v17);
    sub_1000537F8(v26);
    IOObjectRelease(HIDWORD(v15));
    IOObjectRelease(v15);
    IOObjectRelease(HIDWORD(v16));
    IOObjectRelease(v16);
    sub_10014E288(v18, &v14);
    v8 = sub_10014E068(&v17, &v14);
    IOObjectRelease(HIDWORD(v14));
    IOObjectRelease(v14);
    IOObjectRelease(HIDWORD(v17));
    IOObjectRelease(v17);
    IOObjectRelease(v19);
    if (BYTE6(v23) == 1)
    {
      IOObjectRelease(v21[0]);
    }
  }

  else
  {
    v9 = *__error();
    if (sub_1000E95F0())
    {
      *v18 = 0;
      v10 = sub_1000E957C();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      v21[0] = 68158210;
      v21[1] = 65;
      v22 = 2080;
      v23 = "[DIAttachParams isDeviceWithProperty:registryEntryID:predicate:]";
      v24 = 2080;
      v25 = a3;
      v11 = _os_log_send_and_compose_impl();

      if (v11)
      {
        fprintf(__stderrp, "%s\n", v11);
        free(v11);
      }
    }

    else
    {
      v12 = sub_1000E957C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0x4104100302;
        v22 = 2080;
        v23 = "[DIAttachParams isDeviceWithProperty:registryEntryID:predicate:]";
        v24 = 2080;
        v25 = a3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Registry entry ID is 0, can't check %s property", v21, 0x1Cu);
      }
    }

    v8 = 0;
    *__error() = v9;
  }

  return v8;
}

- (BOOL)isDeviceSolidStateWithRegistryEntryID:(unint64_t)a3
{
  v5[0] = off_1001FCA40;
  v5[3] = v5;
  v3 = [(DIAttachParams *)self isDeviceWithProperty:"solid state" registryEntryID:a3 predicate:v5];
  sub_1000537F8(v5);
  return v3;
}

- (BOOL)isDeviceHighThroughputWithRegistryEntryID:(unint64_t)a3
{
  v5[0] = off_1001FCAD0;
  v5[3] = v5;
  v3 = [(DIAttachParams *)self isDeviceWithProperty:"high throughput" registryEntryID:a3 predicate:v5];
  sub_1000537F8(v5);
  return v3;
}

@end