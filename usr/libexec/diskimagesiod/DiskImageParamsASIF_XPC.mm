@interface DiskImageParamsASIF_XPC
- (BOOL)setBlockSize:(unint64_t)size error:(id *)error;
- (DiskImageParamsASIF_XPC)initWithBackendXPC:(id)c header:()unique_ptr<di_asif:(std::default_delete<di_asif::header>>)di_asif :header;
- (DiskImageParamsASIF_XPC)initWithCoder:(id)coder;
- (id)instanceID;
- (int)setSizeWithDiskImage:(void *)image newSize:(unint64_t)size;
- (unique_ptr<DiskImage,)createSinkDiskImage;
- (void)encodeWithCoder:(id)coder;
- (void)setHeader:()unique_ptr<di_asif:(std::default_delete<di_asif::header>>)di_asif :header;
@end

@implementation DiskImageParamsASIF_XPC

- (DiskImageParamsASIF_XPC)initWithBackendXPC:(id)c header:()unique_ptr<di_asif:(std::default_delete<di_asif::header>>)di_asif :header
{
  cCopy = c;
  v12.receiver = self;
  v12.super_class = DiskImageParamsASIF_XPC;
  v7 = [(DiskImageParamsXPC *)&v12 initWithBackendXPC:cCopy];
  v8 = v7;
  if (v7)
  {
    v9 = *di_asif.__ptr_;
    *di_asif.__ptr_ = 0;
    ptr = v7->_header.__ptr_;
    v8->_header.__ptr_ = v9;
    if (ptr)
    {
      operator delete();
    }

    if (v9)
    {
      [(DiskImageParamsXPC *)v8 setBlockSize:*(v9 + 68)];
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
    lpsrc[0] = 0;
    lpsrc[1] = 0;
  }

  v5 = lpsrc[1];
  if (lpsrc[1])
  {
    atomic_fetch_add_explicit(lpsrc[1] + 1, 1uLL, memory_order_relaxed);
  }

  while (1)
  {
    v6 = lpsrc[0];
    if (!lpsrc[0])
    {
      break;
    }

    v7 = **lpsrc[0];
    v9 = lpsrc[1];
    if (v8)
    {
      v13 = v8;
      if (lpsrc[1])
      {
        atomic_fetch_add_explicit(lpsrc[1] + 1, 1uLL, memory_order_relaxed);
      }

      *&v29 = 0x200000001;
      sub_1000B8F68("header_ignore_fields_t", 2, &v29, 2);
      v13[98] = 2;
      if (v9)
      {
        sub_10000E984(v9);
      }

LABEL_25:
      if (self->_header.__ptr_)
      {
        backendXPC2 = [(DiskImageParamsXPC *)self backendXPC];
        v15 = backendXPC2;
        if (backendXPC2)
        {
          [backendXPC2 backend];
        }

        else
        {
          v25 = 0;
          v26 = 0;
        }

        sub_100192CB4(&v25, &v28);
        sub_10000C844(&v28, &v29);
        if (*(&v28 + 1))
        {
          sub_10000E984(*(&v28 + 1));
        }

        if (v26)
        {
          sub_10000E984(v26);
        }

        v17 = v29;
        if (v29)
        {
          sub_1001519A8(*(v29 + 40));
          atomic_store(*(*(v17 + 40) + 16), (*(v17 + 40) + 64));
        }

        if (*(&v29 + 1))
        {
          sub_10000E984(*(&v29 + 1));
        }

        backendXPC3 = [(DiskImageParamsXPC *)self backendXPC];
        v19 = backendXPC3;
        if (backendXPC3)
        {
          [backendXPC3 backend];
          v20 = v29;
        }

        else
        {
          v20 = 0;
          v29 = 0uLL;
        }

        v21 = (*(*v20 + 40))(v20);
        if (*(&v29 + 1))
        {
          sub_10000E984(*(&v29 + 1));
        }

        if (v21)
        {
          backendXPC4 = [(DiskImageParamsXPC *)self backendXPC];
          if (backendXPC4)
          {
            [backendXPC4 backend];
          }

          else
          {
            v29 = 0uLL;
          }

          operator new();
        }

        backendXPC5 = [(DiskImageParamsXPC *)self backendXPC];
        if (backendXPC5)
        {
          [backendXPC5 backend];
        }

        else
        {
          v29 = 0uLL;
        }

        ptr = self->_header.__ptr_;
        operator new();
      }

      [(DiskImageParamsXPC *)self blockSize];
      [(DiskImageParamsXPC *)self blockSize];
      backendXPC6 = [(DiskImageParamsXPC *)self backendXPC];
      if (backendXPC6)
      {
        [backendXPC6 backend];
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

      operator new();
    }

    if (lpsrc[1])
    {
      goto LABEL_9;
    }

LABEL_10:
    if (v5)
    {
      sub_10000E984(v5);
    }

    sub_100192F44(lpsrc, &v29);
    v10 = v29;
    v29 = 0uLL;
    v11 = lpsrc[1];
    *lpsrc = v10;
    if (v11)
    {
      sub_10000E984(v11);
      v12 = lpsrc[0];
      if (*(&v29 + 1))
      {
        sub_10000E984(*(&v29 + 1));
      }

      v5 = v9;
      if (v12 == v6)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v5 = v9;
      if (v10 == v6)
      {
        goto LABEL_25;
      }
    }
  }

  v9 = lpsrc[1];
  if (!lpsrc[1])
  {
    goto LABEL_10;
  }

LABEL_9:
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  goto LABEL_10;
}

- (int)setSizeWithDiskImage:(void *)image newSize:(unint64_t)size
{
  v12[0].receiver = self;
  v12[0].super_class = DiskImageParamsASIF_XPC;
  v5 = [(objc_super *)v12 setSizeWithDiskImage:image newSize:size];
  if (!v5)
  {
    v6 = *(image + 36);
    v7 = *(image + 11);
    v8 = *(image + 4);
    v14 = *(image + 3);
    v15 = v8;
    *v16 = *(image + 5);
    *&v16[14] = *(image + 94);
    v12[1] = *(image + 104);
    v13 = *(image + 15);
    v9 = *(image + 34);
    v10 = *(image + 16);
    operator new();
  }

  return v5;
}

- (DiskImageParamsASIF_XPC)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = DiskImageParamsASIF_XPC;
  v5 = [(DiskImageParamsXPC *)&v10 initWithCoder:coderCopy];
  if (v5 && [coderCopy containsValueForKey:@"sparseHeader"])
  {
    v9 = 0;
    if ([coderCopy decodeBytesForKey:@"sparseHeader" returnedLength:&v9])
    {
      if (v9 == 108)
      {
        operator new();
      }
    }

    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v8);
    sub_100001FE8(v8, "Unexpected ASIF header length (", 31);
    std::ostream::operator<<();
    sub_100001FE8(v8, ")", 1);
    sub_10000EBDC(exception, v8, 0x9Au);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = DiskImageParamsASIF_XPC;
  [(DiskImageParamsXPC *)&v6 encodeWithCoder:coderCopy];
  ptr = self->_header.__ptr_;
  if (ptr)
  {
    [coderCopy encodeBytes:ptr length:108 forKey:@"sparseHeader"];
  }
}

- (id)instanceID
{
  if (self->_header.__ptr_)
  {
    bzero(v11, 0x210uLL);
    v8.receiver = self;
    v8.super_class = DiskImageParamsASIF_XPC;
    instanceID = [(DiskImageParamsXPC *)&v8 instanceID];
    [instanceID getUUIDBytes:v11];
    v4 = [NSUUID alloc];
    v10[0] = sub_1001959C4(v11, 528);
    v10[1] = v5;
    instanceID2 = [v4 initWithUUIDBytes:v10];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = DiskImageParamsASIF_XPC;
    instanceID2 = [(DiskImageParamsXPC *)&v9 instanceID];
  }

  return instanceID2;
}

- (BOOL)setBlockSize:(unint64_t)size error:(id *)error
{
  ptr = self->_header.__ptr_;
  if (ptr && *(ptr + 34) != size)
  {

    return [DIError failWithPOSIXCode:22 description:@"Invalid block size for image" error:error];
  }

  else
  {
    [(DiskImageParamsXPC *)self setBlockSize:size, error, v4, v5];
    return 1;
  }
}

- (void)setHeader:()unique_ptr<di_asif:(std::default_delete<di_asif::header>>)di_asif :header
{
  v3 = *di_asif.__ptr_;
  if (*di_asif.__ptr_)
  {
    *di_asif.__ptr_ = 0;
    ptr = self->_header.__ptr_;
    self->_header.__ptr_ = v3;
    if (ptr)
    {
      operator delete();
    }

    v6 = *(v3 + 68);

    [(DiskImageParamsXPC *)self setBlockSize:v6];
  }
}

@end