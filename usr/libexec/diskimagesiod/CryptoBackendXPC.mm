@interface CryptoBackendXPC
- (CryptoBackendXPC)initWithCoder:(id)coder;
- (CryptoBackendXPC)initWithFormat:(const void *)format baseBackendXPC:(id)c;
- (void)encodeWithCoder:(id)coder;
- (void)replaceWithBackendXPC:(id)c;
@end

@implementation CryptoBackendXPC

- (CryptoBackendXPC)initWithFormat:(const void *)format baseBackendXPC:(id)c
{
  cCopy = c;
  v16.receiver = self;
  v16.super_class = CryptoBackendXPC;
  v8 = [(CryptoBackendXPC *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_baseBackendXPC, c);
    v11 = **format;
    v10 = *(*format + 8);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    cryptoHeader = [(BackendXPC *)v9 cryptoHeader];
    v13 = cryptoHeader[1];
    *cryptoHeader = v11;
    cryptoHeader[1] = v10;
    if (v13)
    {
      sub_10000E984(v13);
    }

    baseBackendXPC = v9->_baseBackendXPC;
    if (baseBackendXPC)
    {
      [baseBackendXPC backend];
    }

    sub_1000E85CC();
  }

  return 0;
}

- (CryptoBackendXPC)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CryptoBackendXPC;
  v5 = [(BackendXPC *)&v18 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(BackendXPC *)v5 cryptoHeader];
    sub_1000E2F04(coderCopy, &v17);
    if (v17)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseBackend"];
      baseBackendXPC = v6->_baseBackendXPC;
      v6->_baseBackendXPC = v7;

      v10 = *v17;
      v9 = v17[1];
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      cryptoHeader = [(BackendXPC *)v6 cryptoHeader];
      v12 = cryptoHeader[1];
      *cryptoHeader = v10;
      cryptoHeader[1] = v9;
      if (v12)
      {
        sub_10000E984(v12);
      }

      v13 = v6->_baseBackendXPC;
      if (v13)
      {
        [(BackendXPC *)v13 backend];
      }

      sub_1000E86C4();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_1002260F0;
    v16 = std::generic_category();
    exception[1] = 154;
    exception[2] = v16;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Failed to deserialize crypto format";
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CryptoBackendXPC;
  [(BackendXPC *)&v9 encodeWithCoder:coderCopy];
  [(BackendXPC *)self backend];
  v5 = v8;
  sub_1000E3290(coderCopy, *(v7 + 48));
  baseBackendXPC = [(CryptoBackendXPC *)self baseBackendXPC];
  [coderCopy encodeObject:baseBackendXPC forKey:@"baseBackend"];

  if (v5)
  {
    sub_10000E984(v5);
  }
}

- (void)replaceWithBackendXPC:(id)c
{
  cCopy = c;
  [(BackendXPC *)self backend];
  if (cCopy)
  {
    [cCopy backend];
    v6 = v9;
  }

  else
  {
    v6 = 0uLL;
  }

  v8 = *(v10 + 24);
  v7 = *(v10 + 32);
  *(v10 + 24) = v6;
  if (v7)
  {
    sub_10000E984(v7);
  }

  objc_storeStrong(&self->_baseBackendXPC, c);
  if (v11)
  {
    sub_10000E984(v11);
  }
}

@end