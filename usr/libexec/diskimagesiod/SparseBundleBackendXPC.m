@interface SparseBundleBackendXPC
+ (BOOL)isSparseBundleWithURL:(id)a3;
- (BOOL)isUnlocked;
- (SparseBundleBackendXPC)initWithCoder:(id)a3;
- (SparseBundleBackendXPC)initWithURL:(id)a3 fileOpenFlags:(int)a4;
- (SparseBundleBackendXPC)initWithURL:(id)a3 fileOpenFlags:(int)a4 bandSize:(unint64_t)a5;
- (id)newWithCryptoFormat:(const void *)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)replaceWithBackendXPC:(id)a3;
@end

@implementation SparseBundleBackendXPC

- (SparseBundleBackendXPC)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SparseBundleBackendXPC;
  v5 = [(BackendXPC *)&v13 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundle_handle"];
    v6 = [objc_claimAutoreleasedReturnValue() fileDescriptor];
    v12 = dup(v6);
    v11 = [v4 decodeBoolForKey:@"is_writable"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lock_backend"];
    v10 = 0uLL;
    if (v7)
    {
      [v7 backend];
      v10 = v9;
    }

    [(BackendXPC *)v5 cryptoHeader];
    sub_1000E2F04(v4, &v9);
    sub_1000E7970();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(BackendXPC *)self backend];
  v6 = v16;
  v5 = v17;
  v15.receiver = self;
  v15.super_class = SparseBundleBackendXPC;
  [(BackendXPC *)&v15 encodeWithCoder:v4];
  v7 = [[NSFileHandle alloc] initWithFileDescriptor:(**(v6 + 24))()];
  [v4 encodeObject:v7 forKey:@"bundle_handle"];
  [v4 encodeBool:(*(*v6 + 48))(v6) forKey:@"is_writable"];
  v8 = *(v6 + 88);
  if (v8)
  {
    sub_1000E3290(v4, v8);
  }

  if ((*(*v6 + 208))(v6))
  {
    v9 = objc_alloc_init(FileLocalXPC);
    v10 = v9;
    v12 = *(v6 + 104);
    v11 = *(v6 + 112);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = v12;
    v14 = v11;
    [(BackendXPC *)v9 setBackend:&v13];
    if (v14)
    {
      sub_10000E984(v14);
    }

    [v4 encodeObject:v10 forKey:@"lock_backend"];
  }

  if (v5)
  {
    sub_10000E984(v5);
  }
}

- (SparseBundleBackendXPC)initWithURL:(id)a3 fileOpenFlags:(int)a4 bandSize:(unint64_t)a5
{
  v8 = a3;
  v12 = a4;
  v11 = a5;
  v10.receiver = self;
  v10.super_class = SparseBundleBackendXPC;
  if ([(SparseBundleBackendXPC *)&v10 init])
  {
    [v8 fileSystemRepresentation];
    sub_1000E7B14();
  }

  return 0;
}

- (SparseBundleBackendXPC)initWithURL:(id)a3 fileOpenFlags:(int)a4
{
  v6 = a3;
  v9 = a4;
  v8.receiver = self;
  v8.super_class = SparseBundleBackendXPC;
  if ([(SparseBundleBackendXPC *)&v8 init])
  {
    [v6 fileSystemRepresentation];
    sub_1000E7CDC();
  }

  return 0;
}

- (void)replaceWithBackendXPC:(id)a3
{
  v4 = a3;
  [(BackendXPC *)self backend];
  v5 = v13;
  v7 = *(v12 + 88);
  v6 = *(v12 + 96);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11.receiver = self;
  v11.super_class = SparseBundleBackendXPC;
  [(BackendXPC *)&v11 replaceWithBackendXPC:v4];
  [(BackendXPC *)self backend];
  v8 = v12;
  v9 = v13;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(v8 + 96);
  *(v8 + 88) = v7;
  *(v8 + 96) = v6;
  if (v10)
  {
    sub_10000E984(v10);
  }

  if (v9)
  {
    sub_10000E984(v9);
  }

  if (v6)
  {
    sub_10000E984(v6);
  }

  if (v5)
  {
    sub_10000E984(v5);
  }
}

- (BOOL)isUnlocked
{
  [(BackendXPC *)self backend];
  v2 = *(v4 + 88);
  if (v5)
  {
    sub_10000E984(v5);
  }

  return v2 != 0;
}

- (id)newWithCryptoFormat:(const void *)a3 error:(id *)a4
{
  v6 = objc_alloc_init(SparseBundleBackendXPC);
  [(BackendXPC *)self backend];
  v8 = v19;
  v7 = v20;
  v10 = *a3;
  v9 = *(a3 + 1);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(v19 + 96);
  *(v19 + 88) = v10;
  *(v8 + 96) = v9;
  if (v11)
  {
    sub_10000E984(v11);
  }

  v17 = v8;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(BackendXPC *)v6 setBackend:&v17];
  if (v18)
  {
    sub_10000E984(v18);
  }

  v13 = **a3;
  v12 = *(*a3 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = [(BackendXPC *)v6 cryptoHeader];
  v15 = v14[1];
  *v14 = v13;
  v14[1] = v12;
  if (v15)
  {
    sub_10000E984(v15);
  }

  if (v7)
  {
    sub_10000E984(v7);
  }

  return v6;
}

+ (BOOL)isSparseBundleWithURL:(id)a3
{
  v3 = a3;
  v4 = [NSURL fileURLWithPath:@"Info.plist" relativeToURL:v3];
  v5 = [NSURL fileURLWithPath:@"token" relativeToURL:v3];
  v6 = +[NSFileManager defaultManager];
  v7 = [v4 path];
  if ([v6 fileExistsAtPath:v7])
  {
    v8 = +[NSFileManager defaultManager];
    v9 = [v5 path];
    v10 = [v8 fileExistsAtPath:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end