@interface RSDLocalServiceSocketListener
- (void)cancel;
- (void)dealloc;
@end

@implementation RSDLocalServiceSocketListener

- (void)cancel
{
  [(RSDLocalServiceSocketListener *)self setCanceled:1];
  socket_source = [(RSDLocalServiceSocketListener *)self socket_source];
  dispatch_source_cancel(socket_source);

  v4.receiver = self;
  v4.super_class = RSDLocalServiceSocketListener;
  [(RSDLocalServiceListener *)&v4 cancel];
}

- (void)dealloc
{
  if (!self->_canceled)
  {
    sub_100001F64(&v3, v4);
  }

  v2.receiver = self;
  v2.super_class = RSDLocalServiceSocketListener;
  [(RSDLocalServiceListener *)&v2 dealloc];
}

@end