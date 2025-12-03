@interface GTServiceProviderReplyStream
- (GTServiceProviderReplyStream)initWithObserver:(id)observer;
- (void)notifyServiceListChanged_:(id)changed_ replyConnection:(id)connection;
@end

@implementation GTServiceProviderReplyStream

- (GTServiceProviderReplyStream)initWithObserver:(id)observer
{
  observerCopy = observer;
  v6 = [GTServiceProperties protocolMethods:&OBJC_PROTOCOL___GTServiceProviderObserver];
  v9.receiver = self;
  v9.super_class = GTServiceProviderReplyStream;
  v7 = [(GTXPCDispatcher *)&v9 initWithProtocolMethods:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_observer, observer);
  }

  return v7;
}

- (void)notifyServiceListChanged_:(id)changed_ replyConnection:(id)connection
{
  changed_Copy = changed_;
  v6 = objc_opt_class();
  nsarray = xpc_dictionary_get_nsarray(changed_Copy, "serviceList", v6);

  [(GTServiceProviderObserver *)self->_observer notifyServiceListChanged:nsarray];
}

@end