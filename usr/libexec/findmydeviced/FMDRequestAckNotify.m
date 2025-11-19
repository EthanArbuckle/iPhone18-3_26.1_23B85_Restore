@interface FMDRequestAckNotify
- (BOOL)canReplace:(id)a3;
- (FMDRequestAckNotify)initWithAccount:(id)a3 messageCommand:(id)a4 cmdStatusCode:(int64_t)a5 ackURL:(id)a6;
- (id)requestBody;
@end

@implementation FMDRequestAckNotify

- (FMDRequestAckNotify)initWithAccount:(id)a3 messageCommand:(id)a4 cmdStatusCode:(int64_t)a5 ackURL:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = FMDRequestAckNotify;
  v13 = [(FMDRequest *)&v16 initWithAccount:v10];
  v14 = v13;
  if (v13)
  {
    [(FMDRequestAckNotify *)v13 setAccount:v10];
    [(FMDRequestAckNotify *)v14 setMessageCommand:v11];
    [(FMDRequestAckNotify *)v14 setCmdStatusCode:a5];
    [(FMDRequestAckNotify *)v14 setAckURL:v12];
  }

  return v14;
}

- (id)requestBody
{
  v7.receiver = self;
  v7.super_class = FMDRequestAckNotify;
  v3 = [(FMDRequest *)&v7 requestBody];
  v4 = [NSNumber numberWithInteger:[(FMDRequestAckNotify *)self cmdStatusCode]];
  [v3 setObject:v4 forKeyedSubscript:@"statusCode"];

  v5 = [(FMDRequestAckNotify *)self messageCommand];
  [v3 setObject:v5 forKeyedSubscript:@"cmdContext"];

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
      v6 = [(FMDRequestAckNotify *)self messageCommand];
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