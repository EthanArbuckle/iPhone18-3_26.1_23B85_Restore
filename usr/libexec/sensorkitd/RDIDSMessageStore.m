@interface RDIDSMessageStore
- (void)dealloc;
@end

@implementation RDIDSMessageStore

- (void)dealloc
{
  self->_context = 0;
  v3.receiver = self;
  v3.super_class = RDIDSMessageStore;
  [(RDIDSMessageStore *)&v3 dealloc];
}

@end