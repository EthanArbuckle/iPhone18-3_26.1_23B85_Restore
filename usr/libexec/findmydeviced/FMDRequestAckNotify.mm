@interface FMDRequestAckNotify
- (BOOL)canReplace:(id)replace;
- (FMDRequestAckNotify)initWithAccount:(id)account messageCommand:(id)command cmdStatusCode:(int64_t)code ackURL:(id)l;
- (id)requestBody;
@end

@implementation FMDRequestAckNotify

- (FMDRequestAckNotify)initWithAccount:(id)account messageCommand:(id)command cmdStatusCode:(int64_t)code ackURL:(id)l
{
  accountCopy = account;
  commandCopy = command;
  lCopy = l;
  v16.receiver = self;
  v16.super_class = FMDRequestAckNotify;
  v13 = [(FMDRequest *)&v16 initWithAccount:accountCopy];
  v14 = v13;
  if (v13)
  {
    [(FMDRequestAckNotify *)v13 setAccount:accountCopy];
    [(FMDRequestAckNotify *)v14 setMessageCommand:commandCopy];
    [(FMDRequestAckNotify *)v14 setCmdStatusCode:code];
    [(FMDRequestAckNotify *)v14 setAckURL:lCopy];
  }

  return v14;
}

- (id)requestBody
{
  v7.receiver = self;
  v7.super_class = FMDRequestAckNotify;
  requestBody = [(FMDRequest *)&v7 requestBody];
  v4 = [NSNumber numberWithInteger:[(FMDRequestAckNotify *)self cmdStatusCode]];
  [requestBody setObject:v4 forKeyedSubscript:@"statusCode"];

  messageCommand = [(FMDRequestAckNotify *)self messageCommand];
  [requestBody setObject:messageCommand forKeyedSubscript:@"cmdContext"];

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
      messageCommand = [(FMDRequestAckNotify *)self messageCommand];
      v7 = [messageCommand objectForKeyedSubscript:@"id"];
      messageCommand2 = [v5 messageCommand];
      v9 = [messageCommand2 objectForKeyedSubscript:@"id"];
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