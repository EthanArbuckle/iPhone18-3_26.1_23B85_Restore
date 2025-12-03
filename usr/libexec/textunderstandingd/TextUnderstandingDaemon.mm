@interface TextUnderstandingDaemon
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation TextUnderstandingDaemon

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100001A84(selfCopy, connectionCopy);

  return v9 & 1;
}

@end