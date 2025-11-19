@interface NFSecureXPCEventPublisher
- (void)dealloc;
@end

@implementation NFSecureXPCEventPublisher

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
  }

  v4.receiver = self;
  v4.super_class = NFSecureXPCEventPublisher;
  [(NFSecureXPCEventPublisher *)&v4 dealloc];
}

@end