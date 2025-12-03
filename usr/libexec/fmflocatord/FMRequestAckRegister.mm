@interface FMRequestAckRegister
- (BOOL)canReplace:(id)replace;
- (FMRequestAckRegister)initWithProvider:(id)provider registerCommand:(id)command ackURL:(id)l;
- (id)requestBody;
- (void)deinitializeRequest;
@end

@implementation FMRequestAckRegister

- (void)deinitializeRequest
{
  v3.receiver = self;
  v3.super_class = FMRequestAckRegister;
  [(FMRequest *)&v3 deinitializeRequest];
  [(FMRequestAckRegister *)self setRegisterCommand:0];
  [(FMRequestAckRegister *)self setAckURL:0];
}

- (FMRequestAckRegister)initWithProvider:(id)provider registerCommand:(id)command ackURL:(id)l
{
  commandCopy = command;
  lCopy = l;
  v13.receiver = self;
  v13.super_class = FMRequestAckRegister;
  v10 = [(FMRequest *)&v13 initWithProvider:provider];
  v11 = v10;
  if (v10)
  {
    [(FMRequestAckRegister *)v10 setRegisterCommand:commandCopy];
    [(FMRequestAckRegister *)v11 setAckURL:lCopy];
  }

  return v11;
}

- (id)requestBody
{
  v10.receiver = self;
  v10.super_class = FMRequestAckRegister;
  requestBody = [(FMRequest *)&v10 requestBody];
  provider = [(FMRequest *)self provider];
  standardDeviceContext = [provider standardDeviceContext];
  [requestBody setObject:standardDeviceContext forKeyedSubscript:@"deviceContext"];

  provider2 = [(FMRequest *)self provider];
  fullDeviceInfo = [provider2 fullDeviceInfo];
  [requestBody setObject:fullDeviceInfo forKeyedSubscript:@"deviceInfo"];

  [requestBody setObject:&off_100062FD0 forKeyedSubscript:@"statusCode"];
  registerCommand = [(FMRequestAckRegister *)self registerCommand];
  [requestBody setObject:registerCommand forKeyedSubscript:@"cmdContext"];

  return requestBody;
}

- (BOOL)canReplace:(id)replace
{
  replaceCopy = replace;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = replaceCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      delegate = [(FMRequest *)self delegate];
      delegate2 = [v5 delegate];
      if (delegate == delegate2)
      {
        registerCommand = [(FMRequestAckRegister *)self registerCommand];
        v10 = [registerCommand objectForKeyedSubscript:@"id"];
        registerCommand2 = [v5 registerCommand];
        v12 = [registerCommand2 objectForKeyedSubscript:@"id"];
        v8 = [v10 isEqualToString:v12];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end