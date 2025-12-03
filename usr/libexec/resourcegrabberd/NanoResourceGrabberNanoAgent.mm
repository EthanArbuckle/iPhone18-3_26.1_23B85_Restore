@interface NanoResourceGrabberNanoAgent
- (NSXPCConnection)connection;
- (NanoResourceGrabberNanoAgent)initWithConnection:(id)connection;
@end

@implementation NanoResourceGrabberNanoAgent

- (NanoResourceGrabberNanoAgent)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = NanoResourceGrabberNanoAgent;
  v5 = [(NanoResourceGrabberNanoAgent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, connectionCopy);
  }

  return v6;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end