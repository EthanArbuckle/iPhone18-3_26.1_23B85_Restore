@interface DIAttachParams
+ (BOOL)copyWithURL:(id)l outURLStr:(char *)str maxLen:(unint64_t)len error:(id *)error;
- (BOOL)isDeviceHighThroughputWithRegistryEntryID:(unint64_t)d;
- (BOOL)isDeviceSolidStateWithRegistryEntryID:(unint64_t)d;
- (BOOL)isDeviceWithProperty:(const char *)property registryEntryID:(unint64_t)d predicate:(function<BOOL)(iokit_utils::di_io_obj_t;
- (BOOL)reOpenIfWritableWithError:(id *)error;
- (BOOL)shouldValidateShadows;
- (BOOL)updateStatFSWithError:(id *)error;
- (DIAttachParams)initWithCoder:(id)coder;
- (DIAttachParams)initWithExistingParams:(id)params error:(id *)error;
- (DIAttachParams)initWithURL:(id)l error:(id *)error;
- (DIAttachParams)initWithURL:(id)l shadowURLs:(id)ls error:(id *)error;
- (id)newAttachWithError:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)setOnDiskCache:(BOOL)cache;
- (void)setupDefaults;
@end

@implementation DIAttachParams

- (DIAttachParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DIAttachParams;
  v5 = [(DIBaseParams *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_autoMount = [coderCopy decodeBoolForKey:@"autoMount"];
    v5->_commandSize = [coderCopy decodeIntegerForKey:@"commandSize"];
    v5->_regEntryID = [coderCopy decodeInt64ForKey:@"regEntryID"];
    v5->_handleRefCount = [coderCopy decodeBoolForKey:@"handleRefCount"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputStatFS"];
    inputStatFS = v5->_inputStatFS;
    v5->_inputStatFS = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputMountedFrom"];
    inputMountedFrom = v5->_inputMountedFrom;
    v5->_inputMountedFrom = v8;

    v5->_fileMode = [coderCopy decodeIntegerForKey:@"fileMode"];
    v5->_onDiskCache = [coderCopy decodeBoolForKey:@"onDiskCache"];
    v5->_uniqueDevice = [coderCopy decodeBoolForKey:@"uniqueDevice"];
    v5->_emulateExternalDisk = [coderCopy decodeBoolForKey:@"emulateExternalDisk"];
    v5->_suppressSsdFlags = [coderCopy decodeBoolForKey:@"suppressSsdFlags"];
    v5->_singleInstanceDaemon = [coderCopy decodeBoolForKey:@"singleInstanceDaemon"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = DIAttachParams;
  [(DIBaseParams *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[DIAttachParams autoMount](self forKey:{"autoMount"), @"autoMount"}];
  [coderCopy encodeInteger:-[DIAttachParams commandSize](self forKey:{"commandSize"), @"commandSize"}];
  [coderCopy encodeInt64:-[DIAttachParams regEntryID](self forKey:{"regEntryID"), @"regEntryID"}];
  [coderCopy encodeBool:-[DIAttachParams handleRefCount](self forKey:{"handleRefCount"), @"handleRefCount"}];
  inputStatFS = [(DIAttachParams *)self inputStatFS];
  [coderCopy encodeObject:inputStatFS forKey:@"inputStatFS"];

  [coderCopy encodeInteger:-[DIAttachParams fileMode](self forKey:{"fileMode"), @"fileMode"}];
  [coderCopy encodeBool:-[DIAttachParams onDiskCache](self forKey:{"onDiskCache"), @"onDiskCache"}];
  [coderCopy encodeBool:-[DIAttachParams uniqueDevice](self forKey:{"uniqueDevice"), @"uniqueDevice"}];
  [coderCopy encodeBool:-[DIAttachParams emulateExternalDisk](self forKey:{"emulateExternalDisk"), @"emulateExternalDisk"}];
  [coderCopy encodeBool:-[DIAttachParams suppressSsdFlags](self forKey:{"suppressSsdFlags"), @"suppressSsdFlags"}];
  [coderCopy encodeBool:-[DIAttachParams singleInstanceDaemon](self forKey:{"singleInstanceDaemon"), @"singleInstanceDaemon"}];
}

- (void)setupDefaults
{
  self->_fileMode = 1;
  self->_autoMount = ![(DIBaseParams *)self RAMdisk];
  self->_onDiskCache = 0;
  customCacheURL = self->_customCacheURL;
  self->_customCacheURL = 0;
}

- (void)setOnDiskCache:(BOOL)cache
{
  self->_onDiskCache = cache;
  if (!cache)
  {
    customCacheURL = self->_customCacheURL;
    self->_customCacheURL = 0;
    _objc_release_x1();
  }
}

- (DIAttachParams)initWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = +[NSArray array];
  v8 = [(DIAttachParams *)self initWithURL:lCopy shadowURLs:v7 error:error];

  return v8;
}

- (DIAttachParams)initWithURL:(id)l shadowURLs:(id)ls error:(id *)error
{
  lCopy = l;
  lsCopy = ls;
  v17.receiver = self;
  v17.super_class = DIAttachParams;
  v10 = [(DIBaseParams *)&v17 initWithURL:lCopy error:error];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_7;
  }

  if (![(DIBaseParams *)v10 openExistingImageWithFlags:0 error:error])
  {
    goto LABEL_9;
  }

  [(DIAttachParams *)v11 setupDefaults];
  if (![lsCopy count])
  {
LABEL_7:
    v12 = v11;
    goto LABEL_8;
  }

  if (![(DIBaseParams *)v11 isPstack])
  {
    shadowChain = [(DIBaseParams *)v11 shadowChain];
    v14 = [shadowChain addShadowURLs:lsCopy error:error];

    if (v14)
    {
      goto LABEL_7;
    }

LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v12 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Custom cache or shadow is not supported for pstack based images." error:error];
LABEL_8:
  v15 = v12;
LABEL_10:

  return v15;
}

- (DIAttachParams)initWithExistingParams:(id)params error:(id *)error
{
  paramsCopy = params;
  inputURL = [paramsCopy inputURL];
  v19.receiver = self;
  v19.super_class = DIAttachParams;
  v8 = [(DIBaseParams *)&v19 initWithURL:inputURL error:error];

  if (!v8)
  {
    goto LABEL_5;
  }

  diskImageParamsXPC = [paramsCopy diskImageParamsXPC];
  [(DIBaseParams *)v8 setDiskImageParamsXPC:diskImageParamsXPC];

  diskImageParamsXPC2 = [(DIBaseParams *)v8 diskImageParamsXPC];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(DIBaseParams *)v8 backend];
    operator new();
  }

  [(DIAttachParams *)v8 setupDefaults];
  diskImageParamsXPC3 = [(DIBaseParams *)v8 diskImageParamsXPC];
  -[DIBaseParams setBlockSize:](v8, "setBlockSize:", [diskImageParamsXPC3 blockSize]);

  shadowChain = [(DIBaseParams *)v8 shadowChain];
  shadowChain2 = [paramsCopy shadowChain];
  nodes = [shadowChain2 nodes];
  v16 = [shadowChain addShadowNodes:nodes error:error];

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
  shadowChain = [(DIBaseParams *)self shadowChain];
  shouldValidate = [shadowChain shouldValidate];

  return shouldValidate;
}

- (BOOL)reOpenIfWritableWithError:(id *)error
{
  inputURL = [(DIBaseParams *)self inputURL];
  if ([inputURL isFileURL])
  {
  }

  else
  {
    diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return 1;
    }
  }

  shadowChain = [(DIBaseParams *)self shadowChain];
  activeShadowURL = [shadowChain activeShadowURL];

  if (!activeShadowURL)
  {
    [(DIBaseParams *)self backend];
    v10 = (*(**buf + 48))(*buf);
    if (*v43)
    {
      sub_10000E984(*v43);
    }

    if ((v10 & 1) == 0)
    {
      diskImageParamsXPC2 = [(DIBaseParams *)self diskImageParamsXPC];
      isWritableFormat = [diskImageParamsXPC2 isWritableFormat];

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
        if (isWritableFormat)
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
          if (isWritableFormat)
          {
            v20 = "YES";
          }

          v44 = 2080;
          v45 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%.*s: isWritableFormat: %s", buf, 0x1Cu);
        }
      }

      *__error() = v15;
      fileMode = [(DIAttachParams *)self fileMode];
      if (isWritableFormat)
      {
        if (fileMode != 2)
        {
          diskImageParamsXPC3 = [(DIBaseParams *)self diskImageParamsXPC];
          objc_opt_class();
          v23 = objc_opt_isKindOfClass();

          if (v23)
          {
            v24 = [PluginBackendXPC alloc];
            inputURL2 = [(DIBaseParams *)self inputURL];
            v26 = [(PluginBackendXPC *)v24 initWithURL:inputURL2 openMode:2];

            v27 = v26;
          }

          else
          {
            inputURL3 = [(DIBaseParams *)self inputURL];
            v29 = [BackendXPC newFileBackendWithURL:inputURL3 fileOpenFlags:2 error:error];

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
            path = [v32 path];
            *buf = 68158211;
            *&buf[4] = 44;
            *v43 = 2080;
            *&v43[2] = "[DIAttachParams reOpenIfWritableWithError:]";
            v44 = 2113;
            v45 = path;
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
              inputURL4 = [(DIBaseParams *)self inputURL];
              path2 = [inputURL4 path];
              *buf = 68158211;
              *&buf[4] = 44;
              *v43 = 2080;
              *&v43[2] = "[DIAttachParams reOpenIfWritableWithError:]";
              v44 = 2113;
              v45 = path2;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%.*s: Image %{private}@ re-opened with RW permissions", buf, 0x1Cu);
            }
          }

          *__error() = v30;
          diskImageParamsXPC4 = [(DIBaseParams *)self diskImageParamsXPC];
          backendXPC = [diskImageParamsXPC4 backendXPC];
          [backendXPC replaceWithBackendXPC:v27];
        }
      }

      else if (fileMode == 4)
      {
        return [DIError failWithPOSIXCode:22 verboseInfo:@"Image has a read-only format error:attach failed due to force RW flag", error];
      }
    }
  }

  return 1;
}

- (BOOL)updateStatFSWithError:(id *)error
{
  inputURL = [(DIBaseParams *)self inputURL];
  isFileURL = [inputURL isFileURL];

  if (isFileURL)
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
      return [DIError failWithEnumValue:150 verboseInfo:@"Unexpected backend type for file" error:error];
    }

    v8 = [[DIStatFS alloc] initWithFileDescriptor:v7 error:error];
    [(DIAttachParams *)self setInputStatFS:v8];

    inputStatFS = [(DIAttachParams *)self inputStatFS];

    if (!inputStatFS)
    {
      return 0;
    }

    inputStatFS2 = [(DIAttachParams *)self inputStatFS];
    [inputStatFS2 logWithHeader:@"Input underlying FS"];
  }

  shadowChain = [(DIBaseParams *)self shadowChain];
  isEmpty = [shadowChain isEmpty];

  if (isEmpty)
  {
    return 1;
  }

  shadowChain2 = [(DIBaseParams *)self shadowChain];
  v15 = [shadowChain2 statWithError:error];
  v13 = v15 != 0;

  return v13;
}

- (id)newAttachWithError:(id *)error
{
  if (![(DIBaseParams *)self isPstack])
  {
    shadowChain = [(DIBaseParams *)self shadowChain];
    hasBaseImageCache = [shadowChain hasBaseImageCache];

    if (hasBaseImageCache)
    {
      shadowChain2 = [(DIBaseParams *)self shadowChain];
      nodes = [shadowChain2 nodes];
      [nodes removeObjectAtIndex:0];
    }
  }

  if (![(DIBaseParams *)self isPstack]|| ![(DIAttachParams *)self onDiskCache])
  {
    customCacheURL = [(DIAttachParams *)self customCacheURL];

    if (customCacheURL)
    {
      v11 = [DIShadowNode alloc];
      customCacheURL2 = [(DIAttachParams *)self customCacheURL];
      v13 = [(DIShadowNode *)v11 initWithURL:customCacheURL2 isCache:1];

      shadowChain3 = [(DIBaseParams *)self shadowChain];
      v47 = v13;
      v15 = [NSArray arrayWithObjects:&v47 count:1];
      v16 = [shadowChain3 verifyNodes:v15 error:error];

      if ((v16 & 1) == 0)
      {

        return 0;
      }

      shadowChain4 = [(DIBaseParams *)self shadowChain];
      nodes2 = [shadowChain4 nodes];
      [nodes2 insertObject:v13 atIndex:0];
    }

    diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
    v20 = [diskImageParamsXPC setBlockSize:-[DIBaseParams blockSize](self error:{"blockSize"), error}];

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
        selfCopy2 = self;
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
          selfCopy2 = self;
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
            if ([(DIClient2Controller_XPCHandler *)v21 connectWithError:error]&& [(DIBaseParams *)self prepareImageWithXpcHandler:v21 fileMode:[(DIAttachParams *)self fileMode] error:error]&& [(DIAttachParams *)self reOpenIfWritableWithError:error]&& [(DIAttachParams *)self updateStatFSWithError:error])
            {
              v30 = [QuarantineFileHandler alloc];
              [(DIBaseParams *)self backend];
              v31 = [(QuarantineFileHandler *)v30 initWithBackend:v38 error:error];
              if (v39)
              {
                sub_10000E984(v39);
              }

              if (v31)
              {
                if ([(DIAttachParams *)self handleRefCount]&& [(DIAttachParams *)self uniqueDevice])
                {
                  v32 = +[NSUUID UUID];
                  diskImageParamsXPC2 = [(DIBaseParams *)self diskImageParamsXPC];
                  [diskImageParamsXPC2 setInstanceID:v32];
                }

                v9 = [(DIClient2Controller_XPCHandler *)v21 newAttachWithParams:self error:error];
                if (v9 && [(QuarantineFileHandler *)v31 isQuarantined])
                {
                  bSDName = [v9 BSDName];
                  [(QuarantineFileHandler *)v31 applyMountPointsWithBSDName:bSDName error:0];
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

          v29 = [DIError nilWithPOSIXCode:45 verboseInfo:@"Sparsebundles on SMB mounts are not supported on this system" error:error];
LABEL_42:
          v9 = v29;
LABEL_43:

          return v9;
        }

        v26 = @"Cannot attach RAM disk with a shadow or a cache file";
      }

      v29 = [DIError nilWithPOSIXCode:22 description:v26 error:error, v36];
      goto LABEL_42;
    }

    return 0;
  }

  [DIError nilWithPOSIXCode:22 description:@"Cache is not supported when using pstack." error:error];
  return objc_claimAutoreleasedReturnValue();
}

+ (BOOL)copyWithURL:(id)l outURLStr:(char *)str maxLen:(unint64_t)len error:(id *)error
{
  lCopy = l;
  v10 = [lCopy description];
  uTF8String = [v10 UTF8String];

  if (!uTF8String || !*uTF8String)
  {
    v13 = [DIError failWithPOSIXCode:22 verboseInfo:@"Failed converting URL to UTF8" error:error];
LABEL_7:
    v12 = v13;
    goto LABEL_8;
  }

  if (strlcpy(str, uTF8String, len) >= len)
  {
    v13 = [DIError failWithPOSIXCode:22 description:@"Disk image URL is too long" error:error];
    goto LABEL_7;
  }

  v12 = 1;
LABEL_8:

  return v12;
}

- (BOOL)isDeviceWithProperty:(const char *)property registryEntryID:(unint64_t)d predicate:(function<BOOL)(iokit_utils::di_io_obj_t
{
  dCopy = d;
  if ([(DIBaseParams *)self RAMdisk])
  {
    return 1;
  }

  if (d)
  {
    sub_100053194(&dCopy, v21);
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
      propertyCopy2 = property;
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
        propertyCopy2 = property;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Registry entry ID is 0, can't check %s property", v21, 0x1Cu);
      }
    }

    v8 = 0;
    *__error() = v9;
  }

  return v8;
}

- (BOOL)isDeviceSolidStateWithRegistryEntryID:(unint64_t)d
{
  v5[0] = off_1001FCA40;
  v5[3] = v5;
  v3 = [(DIAttachParams *)self isDeviceWithProperty:"solid state" registryEntryID:d predicate:v5];
  sub_1000537F8(v5);
  return v3;
}

- (BOOL)isDeviceHighThroughputWithRegistryEntryID:(unint64_t)d
{
  v5[0] = off_1001FCAD0;
  v5[3] = v5;
  v3 = [(DIAttachParams *)self isDeviceWithProperty:"high throughput" registryEntryID:d predicate:v5];
  sub_1000537F8(v5);
  return v3;
}

@end