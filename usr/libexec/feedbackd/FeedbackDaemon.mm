@interface FeedbackDaemon
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation FeedbackDaemon

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10006205C(connectionCopy);

  return v9 & 1;
}

@end