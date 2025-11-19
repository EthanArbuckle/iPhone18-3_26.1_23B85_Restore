@interface RPClientProxyFactory
+ (id)clientProxyWithNewConnection:(id)a3 currentState:(id)a4;
@end

@implementation RPClientProxyFactory

+ (id)clientProxyWithNewConnection:(id)a3 currentState:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 valueForEntitlement:@"com.apple.private.replay-kit"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = +[RPMultipleClientProxy clientProxy];
    [(RPClientProxy *)v9 handleNewConnection:v6 currentState:v5];
  }

  else
  {
    v9 = [[RPClientProxy alloc] initWithConnection:v6];
  }

  return v9;
}

@end