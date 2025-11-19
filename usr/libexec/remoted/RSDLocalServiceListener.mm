@interface RSDLocalServiceListener
- (RSDRemoteDevice)device;
- (id)copyServiceDescription;
- (void)dealloc;
@end

@implementation RSDLocalServiceListener

- (void)dealloc
{
  free(self->_port);
  v3.receiver = self;
  v3.super_class = RSDLocalServiceListener;
  [(RSDLocalServiceListener *)&v3 dealloc];
}

- (id)copyServiceDescription
{
  v3 = [(RSDLocalServiceListener *)self service];
  v4 = [v3 copyServiceDescription];

  if (!v4)
  {
    sub_100038D18(&v6, v7);
  }

  xpc_dictionary_set_string(v4, "Port", [(RSDLocalServiceListener *)self port]);
  return v4;
}

- (RSDRemoteDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

@end