@interface RPClientProxyFactory
+ (id)clientProxyWithNewConnection:(id)connection currentState:(id)state;
@end

@implementation RPClientProxyFactory

+ (id)clientProxyWithNewConnection:(id)connection currentState:(id)state
{
  stateCopy = state;
  connectionCopy = connection;
  v7 = [connectionCopy valueForEntitlement:@"com.apple.private.replay-kit"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = +[RPMultipleClientProxy clientProxy];
    [(RPClientProxy *)v9 handleNewConnection:connectionCopy currentState:stateCopy];
  }

  else
  {
    v9 = [[RPClientProxy alloc] initWithConnection:connectionCopy];
  }

  return v9;
}

@end