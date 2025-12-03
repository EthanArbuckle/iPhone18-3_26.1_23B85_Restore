@interface GTServiceObserver
- (GTServiceObserver)initWithMessage:(id)message notifyConnection:(id)connection;
@end

@implementation GTServiceObserver

- (GTServiceObserver)initWithMessage:(id)message notifyConnection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = GTServiceObserver;
  v8 = [(GTServiceObserver *)&v12 init];
  if (v8)
  {
    v8->_replyStream = xpc_dictionary_get_uint64(messageCopy, "_replyStreamId");
    v9 = xpc_dictionary_get_array(messageCopy, "_pathHistory");
    replyPath = v8->_replyPath;
    v8->_replyPath = v9;

    objc_storeStrong(&v8->_connection, connection);
  }

  return v8;
}

@end