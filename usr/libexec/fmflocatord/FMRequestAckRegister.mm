@interface FMRequestAckRegister
- (BOOL)canReplace:(id)a3;
- (FMRequestAckRegister)initWithProvider:(id)a3 registerCommand:(id)a4 ackURL:(id)a5;
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

- (FMRequestAckRegister)initWithProvider:(id)a3 registerCommand:(id)a4 ackURL:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = FMRequestAckRegister;
  v10 = [(FMRequest *)&v13 initWithProvider:a3];
  v11 = v10;
  if (v10)
  {
    [(FMRequestAckRegister *)v10 setRegisterCommand:v8];
    [(FMRequestAckRegister *)v11 setAckURL:v9];
  }

  return v11;
}

- (id)requestBody
{
  v10.receiver = self;
  v10.super_class = FMRequestAckRegister;
  v3 = [(FMRequest *)&v10 requestBody];
  v4 = [(FMRequest *)self provider];
  v5 = [v4 standardDeviceContext];
  [v3 setObject:v5 forKeyedSubscript:@"deviceContext"];

  v6 = [(FMRequest *)self provider];
  v7 = [v6 fullDeviceInfo];
  [v3 setObject:v7 forKeyedSubscript:@"deviceInfo"];

  [v3 setObject:&off_100062FD0 forKeyedSubscript:@"statusCode"];
  v8 = [(FMRequestAckRegister *)self registerCommand];
  [v3 setObject:v8 forKeyedSubscript:@"cmdContext"];

  return v3;
}

- (BOOL)canReplace:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(FMRequest *)self delegate];
      v7 = [v5 delegate];
      if (v6 == v7)
      {
        v9 = [(FMRequestAckRegister *)self registerCommand];
        v10 = [v9 objectForKeyedSubscript:@"id"];
        v11 = [v5 registerCommand];
        v12 = [v11 objectForKeyedSubscript:@"id"];
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