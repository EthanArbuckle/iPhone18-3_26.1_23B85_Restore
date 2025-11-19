@interface NanoResourceGrabberNanoAgent
- (NSXPCConnection)connection;
- (NanoResourceGrabberNanoAgent)initWithConnection:(id)a3;
@end

@implementation NanoResourceGrabberNanoAgent

- (NanoResourceGrabberNanoAgent)initWithConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NanoResourceGrabberNanoAgent;
  v5 = [(NanoResourceGrabberNanoAgent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, v4);
  }

  return v6;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end