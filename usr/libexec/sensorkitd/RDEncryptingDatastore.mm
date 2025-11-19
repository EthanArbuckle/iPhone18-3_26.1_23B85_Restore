@interface RDEncryptingDatastore
- (void)dealloc;
@end

@implementation RDEncryptingDatastore

- (void)dealloc
{
  self->_context = 0;

  self->_keychain = 0;
  v3.receiver = self;
  v3.super_class = RDEncryptingDatastore;
  [(RDEncryptingDatastore *)&v3 dealloc];
}

@end