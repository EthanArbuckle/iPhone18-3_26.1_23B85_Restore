@interface RSDComputeControllerDeviceEndpoint
- (RSDComputeControllerDeviceEndpoint)initWithAddress:(const char *)a3;
- (void)dealloc;
@end

@implementation RSDComputeControllerDeviceEndpoint

- (RSDComputeControllerDeviceEndpoint)initWithAddress:(const char *)a3
{
  v9.receiver = self;
  v9.super_class = RSDComputeControllerDeviceEndpoint;
  v4 = [(RSDComputeControllerDeviceEndpoint *)&v9 init];
  if (v4)
  {
    if (_dispatch_is_multithreaded())
    {
      while (1)
      {
        v5 = strdup(a3);
        if (v5)
        {
          break;
        }

        __os_temporary_resource_shortage();
      }
    }

    else
    {
      v5 = strdup(a3);
      if (!v5)
      {
        sub_10003DA8C(a3, &v10, v11);
      }
    }

    [(RSDComputeControllerDeviceEndpoint *)v4 setAddress:v5];
    v6 = os_transaction_create();
    [(RSDComputeControllerDeviceEndpoint *)v4 setEndpoint_tx:v6];

    v7 = v4;
  }

  return v4;
}

- (void)dealloc
{
  free([(RSDComputeControllerDeviceEndpoint *)self address]);
  [(RSDComputeControllerDeviceEndpoint *)self setAddress:0];
  v3.receiver = self;
  v3.super_class = RSDComputeControllerDeviceEndpoint;
  [(RSDComputeControllerDeviceEndpoint *)&v3 dealloc];
}

@end