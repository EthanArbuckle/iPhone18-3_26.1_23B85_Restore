@interface DiskImageParamsUDIF_XPC
- (DiskImageParamsUDIF_XPC)initWithBackendXPC:(id)c header:()unique_ptr<udif:(std::default_delete<udif::header>>)udif :header;
- (DiskImageParamsUDIF_XPC)initWithCoder:(id)coder;
- (id)instanceID;
- (unique_ptr<DiskImage,)createSinkDiskImage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DiskImageParamsUDIF_XPC

- (DiskImageParamsUDIF_XPC)initWithBackendXPC:(id)c header:()unique_ptr<udif:(std::default_delete<udif::header>>)udif :header
{
  cCopy = c;
  v13.receiver = self;
  v13.super_class = DiskImageParamsUDIF_XPC;
  v7 = [(DiskImageParamsXPC *)&v13 initWithBackendXPC:cCopy];
  v8 = v7;
  if (v7)
  {
    v9 = *udif.__ptr_;
    *udif.__ptr_ = 0;
    ptr = v7->_header.__ptr_;
    v8->_header.__ptr_ = v9;
    if (ptr)
    {
      operator delete();
    }

    if (!*(v9 + 492))
    {
      [(DiskImageParamsUDIF_XPC *)v8 createSinkDiskImage];
      *(v8->_header.__ptr_ + 492) = (*(*v12 + 32))();
      if (v12)
      {
        (*(*v12 + 16))();
      }
    }
  }

  return v8;
}

- (unique_ptr<DiskImage,)createSinkDiskImage
{
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  v4 = backendXPC;
  if (backendXPC)
  {
    [backendXPC backend];
  }

  else
  {
    v8 = 0uLL;
  }

  if ((*(*v8 + 48))(v8))
  {
    backendXPC2 = [(DiskImageParamsXPC *)self backendXPC];
    isUnlocked = [backendXPC2 isUnlocked];

    if (isUnlocked)
    {
      [(DiskImageParamsUDIF_XPC *)self blockSize];
      sub_1000B9D98();
    }
  }

  ptr = self->_header.__ptr_;
  operator new();
}

- (DiskImageParamsUDIF_XPC)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = DiskImageParamsUDIF_XPC;
  if ([(DiskImageParamsXPC *)&v9 initWithCoder:coderCopy])
  {
    v8 = 0;
    if ([coderCopy decodeBytesForKey:@"udifHeader" returnedLength:&v8])
    {
      if (v8 == 500)
      {
        operator new();
      }
    }

    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v7);
    sub_100001FE8(v7, "Unexpected UDIF header length (", 31);
    std::ostream::operator<<();
    sub_100001FE8(v7, ")", 1);
    sub_10000EBDC(exception, v7, 0x9Au);
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = DiskImageParamsUDIF_XPC;
  [(DiskImageParamsXPC *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBytes:self->_header.__ptr_ length:500 forKey:@"udifHeader"];
}

- (id)instanceID
{
  bzero(v10, 0x210uLL);
  v8.receiver = self;
  v8.super_class = DiskImageParamsUDIF_XPC;
  instanceID = [(DiskImageParamsXPC *)&v8 instanceID];
  [instanceID getUUIDBytes:v10];
  sub_100138690(self->_header.__ptr_, &v11);
  v4 = [NSUUID alloc];
  v9[0] = sub_1001959C4(v10, 528);
  v9[1] = v5;
  v6 = [v4 initWithUUIDBytes:v9];

  return v6;
}

@end