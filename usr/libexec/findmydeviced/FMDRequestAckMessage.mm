@interface FMDRequestAckMessage
- (BOOL)canReplace:(id)a3;
- (FMDRequestAckMessage)initWithAccount:(id)a3 messageCommand:(id)a4 cmdStatusCode:(int64_t)a5 ackURL:(id)a6;
- (id)requestBody;
- (id)requestHeaders;
@end

@implementation FMDRequestAckMessage

- (FMDRequestAckMessage)initWithAccount:(id)a3 messageCommand:(id)a4 cmdStatusCode:(int64_t)a5 ackURL:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = FMDRequestAckMessage;
  v13 = [(FMDRequest *)&v16 initWithAccount:v10];
  v14 = v13;
  if (v13)
  {
    [(FMDRequestAckMessage *)v13 setAccount:v10];
    [(FMDRequestAckMessage *)v14 setMessageCommand:v11];
    [(FMDRequestAckMessage *)v14 setCmdStatusCode:a5];
    [(FMDRequestAckMessage *)v14 setAckURL:v12];
  }

  return v14;
}

- (id)requestHeaders
{
  v7.receiver = self;
  v7.super_class = FMDRequestAckMessage;
  v3 = [(FMDRequest *)&v7 requestHeaders];
  v4 = +[FMSystemInfo sharedInstance];
  if ([v4 isInternalBuild])
  {
    v5 = [(FMDRequestAckMessage *)self timeoutError];

    if (v5)
    {
      [v3 setObject:@"Timeout Error" forKeyedSubscript:@"X-Apple-Timeout-Error"];
    }
  }

  else
  {
  }

  return v3;
}

- (id)requestBody
{
  v8.receiver = self;
  v8.super_class = FMDRequestAckMessage;
  v3 = [(FMDRequest *)&v8 requestBody];
  v4 = [NSNumber numberWithInteger:[(FMDRequestAckMessage *)self cmdStatusCode]];
  [v3 setObject:v4 forKeyedSubscript:@"statusCode"];

  v5 = [(FMDRequestAckMessage *)self messageCommand];
  [v3 setObject:v5 forKeyedSubscript:@"cmdContext"];

  v6 = [(FMDRequestAckMessage *)self safetyAlertType];
  [v3 setObject:v6 forKeyedSubscript:@"safetyAlertType"];

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
      v6 = [(FMDRequestAckMessage *)self messageCommand];
      v7 = [v6 objectForKeyedSubscript:@"id"];
      v8 = [v5 messageCommand];
      v9 = [v8 objectForKeyedSubscript:@"id"];
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