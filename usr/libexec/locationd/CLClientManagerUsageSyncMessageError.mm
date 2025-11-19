@interface CLClientManagerUsageSyncMessageError
- (void)dealloc;
@end

@implementation CLClientManagerUsageSyncMessageError

- (void)dealloc
{
  self->_message = 0;

  self->_error = 0;
  v3.receiver = self;
  v3.super_class = CLClientManagerUsageSyncMessageError;
  [(CLClientManagerUsageSyncMessageError *)&v3 dealloc];
}

@end