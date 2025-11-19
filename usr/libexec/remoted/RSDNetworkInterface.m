@interface RSDNetworkInterface
- (RSDNetworkInterface)initWithName:(const char *)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation RSDNetworkInterface

- (RSDNetworkInterface)initWithName:(const char *)a3 error:(id *)a4
{
  *v24.__u6_addr8 = 0xAAAAAAAAAAAAAAAALL;
  *&v24.__u6_addr32[2] = 0xAAAAAAAAAAAAAAAALL;
  v23.receiver = self;
  v23.super_class = RSDNetworkInterface;
  v6 = [(RSDNetworkInterface *)&v23 init];
  if (!v6)
  {
    v11 = 0;
    v15 = 0;
LABEL_10:
    v19 = 0;
    goto LABEL_18;
  }

  v7 = if_nametoindex(a3);
  v6->_index = v7;
  if (v7)
  {
    v8 = sub_1000244F8(a3, &v24, 0);
    if (!v8)
    {
      if (_dispatch_is_multithreaded())
      {
        while (1)
        {
          v20 = strdup(a3);
          if (v20)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }
      }

      else
      {
        v20 = strdup(a3);
        if (!v20)
        {
          sub_100041274(a3, &v25, v30);
        }
      }

      v6->_name = v20;
      v21 = malloc_type_calloc(1uLL, 0x10uLL, 0x8709206FuLL);
      if (!v21)
      {
        sub_10004135C(&v25, v30);
      }

      v11 = 0;
      v6->_local_address = v21;
      *v21 = v24;
      goto LABEL_17;
    }

    v9 = v8;
    v26 = NSLocalizedDescriptionKey;
    v10 = [NSString stringWithFormat:@"network_copy_interface_address_in6: %s", strerror(v8)];
    v27 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    v12 = [NSError alloc];
    v13 = NSPOSIXErrorDomain;
    v14 = v9;
  }

  else
  {
    v28 = NSLocalizedDescriptionKey;
    v16 = [NSString stringWithFormat:@"failed to find interface index for name %s", a3];
    v29 = v16;
    v11 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];

    v12 = [NSError alloc];
    v13 = NSPOSIXErrorDomain;
    v14 = 22;
  }

  v17 = [v12 initWithDomain:v13 code:v14 userInfo:v11];
  v15 = v17;
  if (!v17)
  {
LABEL_17:
    v19 = v6;
    v15 = 0;
    goto LABEL_18;
  }

  if (!a4)
  {
    goto LABEL_10;
  }

  v18 = v17;
  v19 = 0;
  *a4 = v15;
LABEL_18:

  return v19;
}

- (void)dealloc
{
  free(self->_name);
  self->_name = 0;
  free(self->_local_address);
  self->_local_address = 0;
  v3.receiver = self;
  v3.super_class = RSDNetworkInterface;
  [(RSDNetworkInterface *)&v3 dealloc];
}

@end