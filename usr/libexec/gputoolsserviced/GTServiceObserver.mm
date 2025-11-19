@interface GTServiceObserver
- (GTServiceObserver)initWithMessage:(id)a3 notifyConnection:(id)a4;
@end

@implementation GTServiceObserver

- (GTServiceObserver)initWithMessage:(id)a3 notifyConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = GTServiceObserver;
  v8 = [(GTServiceObserver *)&v12 init];
  if (v8)
  {
    v8->_replyStream = xpc_dictionary_get_uint64(v6, "_replyStreamId");
    v9 = xpc_dictionary_get_array(v6, "_pathHistory");
    replyPath = v8->_replyPath;
    v8->_replyPath = v9;

    objc_storeStrong(&v8->_connection, a4);
  }

  return v8;
}

@end