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
  service = [(RSDLocalServiceListener *)self service];
  copyServiceDescription = [service copyServiceDescription];

  if (!copyServiceDescription)
  {
    sub_100038D18(&v6, v7);
  }

  xpc_dictionary_set_string(copyServiceDescription, "Port", [(RSDLocalServiceListener *)self port]);
  return copyServiceDescription;
}

- (RSDRemoteDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

@end