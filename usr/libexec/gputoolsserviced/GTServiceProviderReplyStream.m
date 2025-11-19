@interface GTServiceProviderReplyStream
- (GTServiceProviderReplyStream)initWithObserver:(id)a3;
- (void)notifyServiceListChanged_:(id)a3 replyConnection:(id)a4;
@end

@implementation GTServiceProviderReplyStream

- (GTServiceProviderReplyStream)initWithObserver:(id)a3
{
  v5 = a3;
  v6 = [GTServiceProperties protocolMethods:&OBJC_PROTOCOL___GTServiceProviderObserver];
  v9.receiver = self;
  v9.super_class = GTServiceProviderReplyStream;
  v7 = [(GTXPCDispatcher *)&v9 initWithProtocolMethods:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_observer, a3);
  }

  return v7;
}

- (void)notifyServiceListChanged_:(id)a3 replyConnection:(id)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  nsarray = xpc_dictionary_get_nsarray(v5, "serviceList", v6);

  [(GTServiceProviderObserver *)self->_observer notifyServiceListChanged:nsarray];
}

@end