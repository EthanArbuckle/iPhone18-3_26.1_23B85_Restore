@interface DiskImageParamsXPC
+ (BOOL)getAEAKeyFromSAKSWithMetadata:(id)a3 key:(char *)a4 error:(id *)a5;
+ (BOOL)getAEAKeyWithHelper:(void *)a3 keyBuffer:(char *)a4 bufferSize:(unint64_t)a5 error:(id *)a6;
+ (BOOL)validateSupportedFormatWithBackendXPC:(id)a3 error:(id *)a4;
+ (id)newAEABackendThrowsWithBackendXPC:(id)a3 error:(id *)a4;
+ (id)newWithUnlockedBackendXPC:(id)a3 blockSize:(unint64_t)a4 error:(id *)a5;
+ (id)newWithUnlockedBackendXPC:(id)a3 error:(id *)a4;
- (BOOL)allowOnDiskCacheWithSinkDiskImage:(const void *)a3;
- (BOOL)lockBackendsWithWritableOnly:(BOOL)a3 error:(id *)a4;
- (BOOL)mountedOnAPFS;
- (DiskImageParamsXPC)initWithBackendXPC:(id)a3;
- (DiskImageParamsXPC)initWithBackendXPC:(id)a3 blockSize:(unint64_t)a4;
- (DiskImageParamsXPC)initWithCoder:(id)a3;
- (NSURL)cacheURL;
- (NSUUID)instanceID;
- (id)description;
- (shared_ptr<DiskImage>)createShadowDiskImageWithBackend:(shared_ptr<Backend>)a3 numBlocks:(unint64_t)a4 sinkDiskImage:(const void *)a5 cache_only:(BOOL)a6 stack_size:(unint64_t)a7;
- (unique_ptr<DiskImage,)createDiskImageWithCache:(BOOL)a3 shadowValidation:(BOOL)a4;
- (unique_ptr<const)getImageInfoWithExtra:(BOOL)a3 error:(id *)a4;
- (vector<std::shared_ptr<LockableResource>,)lockableResources;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DiskImageParamsXPC

+ (BOOL)validateSupportedFormatWithBackendXPC:(id)a3 error:(id *)a4
{
  v4 = a3;
  if (v4)
  {
    [v4 backend];
  }

  operator new();
}

+ (BOOL)getAEAKeyFromSAKSWithMetadata:(id)a3 key:(char *)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [DIKeyRetriever decryptKeyWithData:v7 destKey:v11 destKeySize:88 error:a5];
  if (v8)
  {
    v9 = strnlen(v11, 0x58uLL);
    CC_SHA256(v11, v9, a4);
  }

  return v8;
}

+ (BOOL)getAEAKeyWithHelper:(void *)a3 keyBuffer:(char *)a4 bufferSize:(unint64_t)a5 error:(id *)a6
{
  if (*(a3 + 16) == 1)
  {
    *&v25 = "AEAHelper::key_params_t::run(function &&) [function = di_utils::overloaded<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:185:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:189:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:193:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:197:8)> &]";
    *(&v25 + 1) = 390;
    v26 = 0;
    sub_1000B6E10(__p, &v25);
    sub_100001FE8(v29, "attempting to authenticate with aea key", 39);
    std::ostream::~ostream();
    sub_1000B731C(__p);
    std::ios::~ios();
    if (*(a3 + 16))
    {
      memcpy(a4, *(a3 + 1), a5);
      return 1;
    }

LABEL_29:
    sub_1000B7AC4();
  }

  if (*(a3 + 48) == 1)
  {
    *&v25 = "AEAHelper::key_params_t::run(function &&) [function = di_utils::overloaded<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:185:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:189:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:193:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:197:8)> &]";
    *(&v25 + 1) = 390;
    v26 = 0;
    sub_1000B6F7C(__p, &v25);
    sub_100001FE8(v29, "attempting to authenticate with kms", 35);
    std::ostream::~ostream();
    sub_1000B7BD8(__p);
    std::ios::~ios();
    if ((*(a3 + 48) & 1) == 0)
    {
      goto LABEL_29;
    }

    if (*(a3 + 47) >= 0)
    {
      v12 = a3 + 24;
    }

    else
    {
      v12 = *(a3 + 3);
    }

    v13 = [NSString stringWithCString:v12 encoding:4];
    v14 = [NSURL URLWithString:v13];

    LOBYTE(v13) = [DIKeyRetriever KKMSKeyWithURL:v14 destKey:a4 destKeySize:a5 error:a6];
    if (v13)
    {
      return 1;
    }
  }

  if (*(a3 + 120) == 1)
  {
    *&v25 = "AEAHelper::key_params_t::run(function &&) [function = di_utils::overloaded<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:185:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:189:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:193:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:197:8)> &]";
    *(&v25 + 1) = 390;
    v26 = 0;
    sub_1000A8C98(__p, &v25);
    sub_100001FE8(v29, "attempting to authenticate with wkms fcs", 40);
    std::ostream::~ostream();
    sub_1000A8ECC(__p);
    std::ios::~ios();
    if ((*(a3 + 120) & 1) == 0)
    {
      goto LABEL_29;
    }

    if (*(a3 + 111) >= 0)
    {
      v15 = a3 + 88;
    }

    else
    {
      v15 = *(a3 + 11);
    }

    v16 = [NSString stringWithCString:v15 encoding:1];
    v17 = [NSURL URLWithString:v16];

    v18 = [DIKeyRetriever WKMSKeyWithURL:v17 authData:*(a3 + 14) destKey:a4 destKeySize:a5 error:a6];
    if (v18)
    {
      return 1;
    }
  }

  if (*(a3 + 80) == 1)
  {
    *&v25 = "AEAHelper::key_params_t::run(function &&) [function = di_utils::overloaded<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:185:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:189:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:193:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:197:8)> &]";
    *(&v25 + 1) = 390;
    v26 = 0;
    sub_1000B70E8(__p, &v25);
    sub_100001FE8(v29, "attempting to authenticate with saks", 36);
    std::ostream::~ostream();
    sub_1000B8448(__p);
    std::ios::~ios();
    if ((*(a3 + 80) & 1) == 0)
    {
      goto LABEL_29;
    }

    if (*(a3 + 79) < 0)
    {
      sub_100050108(__p, *(a3 + 7), *(a3 + 8));
    }

    else
    {
      *__p = *(a3 + 56);
      v28 = *(a3 + 9);
    }

    v19 = SHIBYTE(v28);
    v20 = __p[0];
    v21 = +[NSString defaultCStringEncoding];
    if (v19 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = v20;
    }

    v23 = [NSString stringWithCString:v22 encoding:v21];
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }

    v24 = [a1 getAEAKeyFromSAKSWithMetadata:v23 key:a4 error:a6];

    if (v24)
    {
      return 1;
    }
  }

  return 0;
}

+ (id)newAEABackendThrowsWithBackendXPC:(id)a3 error:(id *)a4
{
  v4 = a3;
  if (v4)
  {
    [v4 backend];
    v5 = v7;
  }

  else
  {
    v5 = 0uLL;
  }

  v8 = v5;
  sub_10012D9AC(&v7, &v8);
  operator new[]();
}

+ (id)newWithUnlockedBackendXPC:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(DiskImageParamsXPC *)[DiskImageParamsSparseBundle_XPC alloc] initWithBackendXPC:v6];
  }

  else
  {
    if (v6)
    {
      [v6 backend];
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    sub_10000C844(&v18, &v16);
    if (v19)
    {
      sub_10000E984(v19);
    }

    v8 = v16;
    if (!v16 || (*(*v16 + 5))(v16) < 4)
    {
      goto LABEL_17;
    }

    v9 = *(sub_100195B38() + 1);
    v18 = &v15;
    v19 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = xmmword_1001C0170;
    v21 = 4;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v10 = (*(*v8 + 16))(v8, &v18);
    if (v19)
    {
      sub_10000E984(v19);
    }

    if (v10 != 4)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &off_1002260F0;
      v14 = std::generic_category();
      exception[1] = 22;
      exception[2] = v14;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "is_aea: Error reading magic.";
    }

    if (v15 != 826361153 || (v11 = [a1 newAEABackendThrowsWithBackendXPC:v6 error:a4], v6, (v6 = v11) != 0))
    {
LABEL_17:
      LOBYTE(v11) = 1;
    }

    if (v17)
    {
      sub_10000E984(v17);
    }

    if (v11)
    {
      if (v6)
      {
        [v6 backend];
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      operator new();
    }

    v7 = 0;
  }

  return v7;
}

+ (id)newWithUnlockedBackendXPC:(id)a3 blockSize:(unint64_t)a4 error:(id *)a5
{
  v7 = [DiskImageParamsXPC newWithUnlockedBackendXPC:a3 error:a5];
  v8 = v7;
  if (!v7 || ([v7 setBlockSize:a4 error:a5] & 1) == 0)
  {

    return 0;
  }

  return v8;
}

- (NSURL)cacheURL
{
  v3 = [(DiskImageParamsXPC *)self shadowChain];
  v4 = [v3 hasBaseImageCache];

  if (v4)
  {
    v5 = [(DiskImageParamsXPC *)self shadowChain];
    v6 = [v5 nodes];
    v7 = [v6 firstObject];
    v8 = [v7 URL];
    cacheURL = self->_cacheURL;
    self->_cacheURL = v8;
  }

  v10 = self->_cacheURL;

  return v10;
}

- (DiskImageParamsXPC)initWithBackendXPC:(id)a3 blockSize:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = DiskImageParamsXPC;
  v8 = [(DiskImageParamsXPC *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_backendXPC, a3);
    v9->_blockSize = a4;
  }

  return v9;
}

- (DiskImageParamsXPC)initWithBackendXPC:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 backend];
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  sub_10000C844(&v10, &v12);
  if (v11)
  {
    sub_10000E984(v11);
  }

  if (v12 && (v6 = v12[5], *(v6 + 7)))
  {
    v7 = *(v6 + 6);
  }

  else
  {
    v7 = 512;
  }

  v8 = [(DiskImageParamsXPC *)self initWithBackendXPC:v5 blockSize:v7, v10];
  if (v13)
  {
    sub_10000E984(v13);
  }

  return v8;
}

- (shared_ptr<DiskImage>)createShadowDiskImageWithBackend:(shared_ptr<Backend>)a3 numBlocks:(unint64_t)a4 sinkDiskImage:(const void *)a5 cache_only:(BOOL)a6 stack_size:(unint64_t)a7
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v10 = *(sub_100043DBC() + 8);
  if ((*(**ptr + 40))())
  {
    sub_100101694(v17, *ptr);
    sub_1000B97DC();
  }

  v11 = 0x10000000000000uLL / (*(*a4 + 24))(a4);
  v16 = v11;
  if (!cntrl)
  {
    cntrl = (*(*a4 + 32))(a4);
    v11 = v16;
  }

  if (cntrl <= v11)
  {
    v17[0] = sub_100195AE4();
    v17[1] = v12;
    v17[34] = sub_100075664(a4);
    v17[35] = v13;
    (*(*a4 + 24))(a4);
    sub_1000B9990();
  }

  exception = __cxa_allocate_exception(0x40uLL);
  *exception = &off_1002260F0;
  v15 = std::generic_category();
  exception[1] = 22;
  exception[2] = v15;
  *(exception + 24) = 0;
  *(exception + 48) = 0;
  exception[7] = "Size cannot exceed max ASIF size";
}

- (BOOL)allowOnDiskCacheWithSinkDiskImage:(const void *)a3
{
  v3 = [(DiskImageParamsXPC *)self shadowChain];
  v4 = [v3 hasBaseImageCache];

  if ((v4 & 1) == 0)
  {
    v5 = *__error();
    if (sub_1000E95F0())
    {
      v6 = sub_1000E957C();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v11 = 56;
      v12 = 2080;
      v13 = "[DiskImageParamsXPC allowOnDiskCacheWithSinkDiskImage:]";
      v7 = _os_log_send_and_compose_impl();

      if (v7)
      {
        fprintf(__stderrp, "%s\n", v7);
        free(v7);
      }
    }

    else
    {
      v8 = sub_1000E957C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v11 = 56;
        v12 = 2080;
        v13 = "[DiskImageParamsXPC allowOnDiskCacheWithSinkDiskImage:]";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%.*s: On disk cache is not supported on embedded systems", buf, 0x12u);
      }
    }

    *__error() = v5;
  }

  return 0;
}

- (unique_ptr<const)getImageInfoWithExtra:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v4;
  [(DiskImageParamsXPC *)self createDiskImageWithCache:0 shadowValidation:0];
  v7 = v11;
  v8 = *v11 + 56;
  if (v5)
  {
    v9 = 7;
  }

  else
  {
    v9 = 0;
  }

  (*(*v11 + 56))(&v11, v11, v9);
  *v6 = v11;
  return (*(*v7 + 16))(v7);
}

- (unique_ptr<DiskImage,)createDiskImageWithCache:(BOOL)a3 shadowValidation:(BOOL)a4
{
  v5 = a3;
  v56 = v4;
  [(DiskImageParamsXPC *)self createSinkDiskImage];
  if (v5)
  {
    v57 = [(DiskImageParamsXPC *)self allowOnDiskCacheWithSinkDiskImage:&v67];
  }

  else
  {
    v57 = 0;
  }

  v6 = [(DiskImageParamsXPC *)self shadowChain];
  v7 = v6;
  if (v6)
  {
    v8 = [(DiskImageParamsXPC *)self shadowChain];
    v9 = [v8 isEmpty];

    if (v57 & 1 | ((v9 & 1) == 0))
    {
      goto LABEL_6;
    }
  }

  else if (v57)
  {
LABEL_6:
    __src = 0;
    v71 = 0;
    v72 = 0;
    if (v67)
    {
      operator new();
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v10 = [(DiskImageParamsXPC *)self shadowChain];
    obj = [v10 nodes];

    v11 = [obj countByEnumeratingWithState:&v63 objects:v77 count:16];
    if (v11)
    {
      v12 = *v64;
      v13 = 0;
      v59 = 0;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v64 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v63 + 1) + 8 * i);
          v16 = [v15 fileBackend];
          v17 = v16;
          if (v16)
          {
            [v16 backend];
          }

          else
          {
            v61 = 0;
            v62 = 0;
          }

          v18 = [v15 numBlocks];
          v19 = [v15 isCache];
          v20 = [(DiskImageParamsXPC *)self shadowChain];
          v21 = [v20 nodes];
          -[DiskImageParamsXPC createShadowDiskImageWithBackend:numBlocks:sinkDiskImage:cache_only:stack_size:](self, "createShadowDiskImageWithBackend:numBlocks:sinkDiskImage:cache_only:stack_size:", &v61, v18, v13, v19, [v21 count] + 1);

          if (v62)
          {
            sub_10000E984(v62);
          }

          v22 = [v15 isCache];
          v23 = *buf;
          if (v22)
          {
            v24 = 2;
          }

          else
          {
            v25 = (*(**buf + 40))(*buf);
            v13 = *buf;
            v26 = *v79;
            if (*v79)
            {
              atomic_fetch_add_explicit((*v79 + 8), 1uLL, memory_order_relaxed);
            }

            v24 = v25 ^ 1;
            if (v59)
            {
              sub_10000E984(v59);
              v23 = *buf;
            }

            else
            {
              v23 = v13;
            }

            v59 = v26;
          }

          v73.n128_u64[0] = v23;
          v73.n128_u64[1] = *v79;
          *buf = 0;
          *v79 = 0;
          LODWORD(v74) = v24;
          sub_1000B3780(&__src, __src, &v73);
          if (v73.n128_u64[1])
          {
            sub_10000E984(v73.n128_u64[1]);
          }

          if (*v79)
          {
            sub_10000E984(*v79);
          }
        }

        v11 = [obj countByEnumeratingWithState:&v63 objects:v77 count:16];
      }

      while (v11);
    }

    if (v57)
    {
      if (confstr(65538, &v73, 0x400uLL))
      {
        v68 = 0;
        v69 = 0;
        v68 = sub_100075664(0);
        v69 = v27;
        *buf = 0;
        *v79 = 0;
        if (v68 | v27)
        {
          v28 = [[NSUUID alloc] initWithUUIDBytes:&v68];
        }

        else
        {
          v28 = [(DiskImageParamsXPC *)self instanceID];
        }

        v29 = [v28 UUIDString];

        v30 = [NSString stringWithFormat:@"%@%@.%@", @"diskimage_", v29, @"cache"];
        [NSURL fileURLWithFileSystemRepresentation:&v73 isDirectory:1 relativeToURL:0];
        v31 = [objc_claimAutoreleasedReturnValue() URLByAppendingPathComponent:v30];
        [(DiskImageParamsXPC *)self setCacheURL:v31];

        v32 = *__error();
        if (sub_1000E95F0())
        {
          v33 = sub_1000E957C();
          os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
          v34 = [(DiskImageParamsXPC *)self cacheURL];
          v35 = [v34 path];
          *buf = 0x4004100302;
          *v79 = 2080;
          *&v79[2] = "[DiskImageParamsXPC createDiskImageWithCache:shadowValidation:]";
          v80 = 2114;
          v81 = v35;
          v36 = _os_log_send_and_compose_impl();

          if (v36)
          {
            fprintf(__stderrp, "%s\n", v36);
            free(v36);
          }
        }

        else
        {
          v37 = sub_1000E957C();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = [(DiskImageParamsXPC *)self cacheURL];
            v39 = [v38 path];
            *buf = 0x4004100302;
            *v79 = 2080;
            *&v79[2] = "[DiskImageParamsXPC createDiskImageWithCache:shadowValidation:]";
            v80 = 2114;
            v81 = v39;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%.*s: On disk cache path: %{public}@", buf, 0x1Cu);
          }
        }

        *__error() = v32;
        v40 = [(DiskImageParamsXPC *)self cacheURL];
        v41 = v40;
        *buf = [v40 fileSystemRepresentation];
        sub_1000B9B10();
      }

      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &off_1002260F0;
      v55 = std::generic_category();
      exception[1] = 2;
      exception[2] = v55;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Could not determine cache dir";
    }

    v42 = (*(MEMORY[0] + 40))(0);
    v43 = __src;
    v44 = v71;
    v45 = __src != v71 || (v42 & 1) == 0;
    atomic_fetch_add_explicit(8, 1uLL, memory_order_relaxed);
    if (v44 >= v72)
    {
      v47 = v44 - v43;
      v48 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v43) >> 3);
      v49 = v48 + 1;
      if (v48 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_100015B70();
      }

      if (0x5555555555555556 * ((v72 - v43) >> 3) > v49)
      {
        v49 = 0x5555555555555556 * ((v72 - v43) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v72 - v43) >> 3) >= 0x555555555555555)
      {
        v49 = 0xAAAAAAAAAAAAAAALL;
      }

      p_src = &__src;
      if (v49)
      {
        sub_100065684(&__src, v49);
      }

      v50 = 24 * v48;
      *v50 = 0;
      *(v50 + 8) = 0;
      *(v50 + 16) = v45;
      v46 = 24 * v48 + 24;
      v51 = (v50 - v47);
      memcpy((v50 - v47), v43, v47);
      v52 = __src;
      v53 = v72;
      __src = v51;
      v71 = v46;
      v72 = 0;
      v74 = v52;
      v75 = v53;
      v73.n128_u64[0] = v52;
      v73.n128_u64[1] = v52;
      sub_1000656DC(&v73);
    }

    else
    {
      *v44 = 0;
      *(v44 + 1) = 0;
      v46 = (v44 + 24);
      *(v44 + 4) = v45;
    }

    v71 = v46;
    operator new();
  }

  *v56 = v67;
  return v6;
}

- (BOOL)lockBackendsWithWritableOnly:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  if ((-[DiskImageParamsXPC isWritableFormat](self, "isWritableFormat") || !v5) && (-[DiskImageParamsXPC backendXPC](self, "backendXPC"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 lock], v7, v8))
  {

    return [DIError failWithPOSIXCode:v8 verboseInfo:@"Failed locking the image" error:a4];
  }

  else
  {
    v10 = [(DiskImageParamsXPC *)self shadowChain];

    if (v10)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = [(DiskImageParamsXPC *)self shadowChain];
      v12 = [v11 nodes];

      v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        v14 = *v20;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = [*(*(&v19 + 1) + 8 * i) fileBackend];
            v17 = [v16 lock];

            if (v17)
            {
              v18 = [DIError failWithPOSIXCode:v17 verboseInfo:@"Failed locking the shadow file" error:a4];

              return v18;
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }
    }

    return 1;
  }
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DiskImageParamsXPC *)self backendXPC];
  v6 = [v5 description];
  v7 = [NSString stringWithFormat:@"%@[%@]", v4, v6];

  return v7;
}

- (DiskImageParamsXPC)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backend"];
  backendXPC = self->_backendXPC;
  self->_backendXPC = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shadowChain"];
  shadowChain = self->_shadowChain;
  self->_shadowChain = v7;

  self->_blockSize = [v4 decodeIntegerForKey:@"blockSize"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"instanceID"];
  instanceID = self->_instanceID;
  self->_instanceID = v9;

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(DiskImageParamsXPC *)self backendXPC];
  [v7 encodeObject:v4 forKey:@"backend"];

  v5 = [(DiskImageParamsXPC *)self shadowChain];
  [v7 encodeObject:v5 forKey:@"shadowChain"];

  [v7 encodeInteger:-[DiskImageParamsXPC blockSize](self forKey:{"blockSize"), @"blockSize"}];
  v6 = [(DiskImageParamsXPC *)self instanceID];
  [v7 encodeObject:v6 forKey:@"instanceID"];
}

- (NSUUID)instanceID
{
  instanceID = self->_instanceID;
  if (instanceID)
  {
    goto LABEL_2;
  }

  v5 = [(DiskImageParamsXPC *)self backendXPC];
  v6 = [v5 instanceID];

  v7 = [(DiskImageParamsXPC *)self shadowChain];
  if (v7)
  {
    v8 = [(DiskImageParamsXPC *)self shadowChain];
    v9 = [v8 nonCacheNodes];

    if (v9 && [v9 count])
    {
      v25 = &v25;
      v10 = 16 * [v9 count];
      v11 = &v26[-1] - ((v10 + 31) & 0xFFFFFFFFFFFFFFF0);
      [(NSUUID *)v6 getUUIDBytes:v11];
      v12 = 0;
      v13 = v11 + 16;
      while ([v9 count] > v12)
      {
        v14 = [v9 objectAtIndexedSubscript:v12];
        v15 = [v14 fileBackend];
        v16 = [v15 instanceID];

        [v16 getUUIDBytes:v13];
        v13 += 16;
        ++v12;
      }

      v20 = [NSUUID alloc];
      v26[0] = sub_1001959C4(v11, v10 + 16);
      v26[1] = v21;
      v22 = [v20 initWithUUIDBytes:v26];
      v24 = self->_instanceID;
      p_instanceID = &self->_instanceID;
      *p_instanceID = v22;

      instanceID = *p_instanceID;
LABEL_2:
      v3 = instanceID;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
  }

  v17 = self->_instanceID;
  self->_instanceID = v6;
  v18 = v6;

  v3 = self->_instanceID;
LABEL_11:

  return v3;
}

- (BOOL)mountedOnAPFS
{
  v2 = [(DiskImageParamsXPC *)self backendXPC];
  v3 = v2;
  if (v2)
  {
    [v2 backend];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_100192CB4(&v6, &v8);
  sub_10000C844(&v8, &v10);
  if (v9)
  {
    sub_10000E984(v9);
  }

  if (v7)
  {
    sub_10000E984(v7);
  }

  if (v10)
  {
    v4 = sub_1000B9004(v10[5]);
  }

  else
  {
    v4 = 0;
  }

  if (v11)
  {
    sub_10000E984(v11);
  }

  return v4;
}

- (vector<std::shared_ptr<LockableResource>,)lockableResources
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v5 = [(DiskImageParamsXPC *)self backendXPC];
  v6 = v5;
  if (v5)
  {
    [v5 backend];
  }

  else
  {
    v24 = 0uLL;
  }

  sub_100192CB4(&v24, &lpsrc);
  if (*(&v24 + 1))
  {
    sub_10000E984(*(&v24 + 1));
  }

  {
    *&v24 = v8;
    *(&v24 + 1) = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__end_, 1uLL, memory_order_relaxed);
    }

    sub_1000B45C0(&retstr->__begin_, &v24);
  }

  else
  {
    v24 = 0uLL;
  }

  if (*(&v24 + 1))
  {
    sub_10000E984(*(&v24 + 1));
  }

  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [(DiskImageParamsXPC *)self shadowChain];
  v10 = [v9 nodes];

  v11 = [v10 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v11)
  {
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v20 + 1) + 8 * i) fileBackend];
        v15 = v14;
        if (v14)
        {
          [v14 backend];
        }

        else
        {
          v19 = 0uLL;
        }

        sub_100192CB4(&v19, &v24);
        if (*(&v19 + 1))
        {
          sub_10000E984(*(&v19 + 1));
        }

        {
          *&v19 = v17;
          *(&v19 + 1) = *(&v24 + 1);
          if (*(&v24 + 1))
          {
            atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          sub_1000B45C0(&retstr->__begin_, &v19);
        }

        else
        {
          v19 = 0uLL;
        }

        if (*(&v19 + 1))
        {
          sub_10000E984(*(&v19 + 1));
        }

        if (*(&v24 + 1))
        {
          sub_10000E984(*(&v24 + 1));
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v11);
  }

  result = v26;
  if (v26)
  {
    sub_10000E984(v26);
  }

  return result;
}

@end