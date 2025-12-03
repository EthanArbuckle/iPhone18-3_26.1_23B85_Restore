@interface FMDRequestAckRegister
- (BOOL)canReplace:(id)replace;
- (FMDRequestAckRegister)initWithAccount:(id)account registerCommand:(id)command ackURL:(id)l;
- (id)requestBody;
@end

@implementation FMDRequestAckRegister

- (FMDRequestAckRegister)initWithAccount:(id)account registerCommand:(id)command ackURL:(id)l
{
  accountCopy = account;
  commandCopy = command;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = FMDRequestAckRegister;
  v11 = [(FMDRequest *)&v14 initWithAccount:accountCopy];
  v12 = v11;
  if (v11)
  {
    [(FMDRequestAckRegister *)v11 setAccount:accountCopy];
    [(FMDRequestAckRegister *)v12 setRegisterCommand:commandCopy];
    [(FMDRequestAckRegister *)v12 setAckURL:lCopy];
  }

  return v12;
}

- (id)requestBody
{
  v6.receiver = self;
  v6.super_class = FMDRequestAckRegister;
  requestBody = [(FMDRequest *)&v6 requestBody];
  [requestBody setObject:&off_1002E7A38 forKeyedSubscript:@"statusCode"];
  registerCommand = [(FMDRequestAckRegister *)self registerCommand];
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
      registerCommand = [(FMDRequestAckRegister *)self registerCommand];
      v7 = [registerCommand objectForKeyedSubscript:@"id"];
      registerCommand2 = [v5 registerCommand];
      v9 = [registerCommand2 objectForKeyedSubscript:@"id"];
      v10 = [v7 isEqualToString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end