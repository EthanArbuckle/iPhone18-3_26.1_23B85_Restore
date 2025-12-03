@interface SESUIServiceConnection
- (BOOL)isConnected;
- (id)launchRemote;
- (void)invalidate;
@end

@implementation SESUIServiceConnection

- (id)launchRemote
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = selfCopy->_connection;
  v4 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v5];

  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)isConnected
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_connection != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  [(BSServiceConnectionClient *)obj->_connection invalidate];
  connection = obj->_connection;
  obj->_connection = 0;

  objc_sync_exit(obj);
}

@end