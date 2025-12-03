@interface SKDiskNotificationWaiter
- (SKDiskNotificationWaiter)initWithDiskIdentifier:(id)identifier;
@end

@implementation SKDiskNotificationWaiter

- (SKDiskNotificationWaiter)initWithDiskIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = SKDiskNotificationWaiter;
  v6 = [(SKDiskNotificationWaiter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_expectedDiskIdentifier, identifier);
    v8 = dispatch_semaphore_create(0);
    semaphore = v7->_semaphore;
    v7->_semaphore = v8;
  }

  return v7;
}

@end