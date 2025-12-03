@interface FMDRequestAckMessage
- (BOOL)canReplace:(id)replace;
- (FMDRequestAckMessage)initWithAccount:(id)account messageCommand:(id)command cmdStatusCode:(int64_t)code ackURL:(id)l;
- (id)requestBody;
- (id)requestHeaders;
@end

@implementation FMDRequestAckMessage

- (FMDRequestAckMessage)initWithAccount:(id)account messageCommand:(id)command cmdStatusCode:(int64_t)code ackURL:(id)l
{
  accountCopy = account;
  commandCopy = command;
  lCopy = l;
  v16.receiver = self;
  v16.super_class = FMDRequestAckMessage;
  v13 = [(FMDRequest *)&v16 initWithAccount:accountCopy];
  v14 = v13;
  if (v13)
  {
    [(FMDRequestAckMessage *)v13 setAccount:accountCopy];
    [(FMDRequestAckMessage *)v14 setMessageCommand:commandCopy];
    [(FMDRequestAckMessage *)v14 setCmdStatusCode:code];
    [(FMDRequestAckMessage *)v14 setAckURL:lCopy];
  }

  return v14;
}

- (id)requestHeaders
{
  v7.receiver = self;
  v7.super_class = FMDRequestAckMessage;
  requestHeaders = [(FMDRequest *)&v7 requestHeaders];
  v4 = +[FMSystemInfo sharedInstance];
  if ([v4 isInternalBuild])
  {
    timeoutError = [(FMDRequestAckMessage *)self timeoutError];

    if (timeoutError)
    {
      [requestHeaders setObject:@"Timeout Error" forKeyedSubscript:@"X-Apple-Timeout-Error"];
    }
  }

  else
  {
  }

  return requestHeaders;
}

- (id)requestBody
{
  v8.receiver = self;
  v8.super_class = FMDRequestAckMessage;
  requestBody = [(FMDRequest *)&v8 requestBody];
  v4 = [NSNumber numberWithInteger:[(FMDRequestAckMessage *)self cmdStatusCode]];
  [requestBody setObject:v4 forKeyedSubscript:@"statusCode"];

  messageCommand = [(FMDRequestAckMessage *)self messageCommand];
  [requestBody setObject:messageCommand forKeyedSubscript:@"cmdContext"];

  safetyAlertType = [(FMDRequestAckMessage *)self safetyAlertType];
  [requestBody setObject:safetyAlertType forKeyedSubscript:@"safetyAlertType"];

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
      messageCommand = [(FMDRequestAckMessage *)self messageCommand];
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