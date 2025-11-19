@interface FMDRequestAckRegister
- (BOOL)canReplace:(id)a3;
- (FMDRequestAckRegister)initWithAccount:(id)a3 registerCommand:(id)a4 ackURL:(id)a5;
- (id)requestBody;
@end

@implementation FMDRequestAckRegister

- (FMDRequestAckRegister)initWithAccount:(id)a3 registerCommand:(id)a4 ackURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = FMDRequestAckRegister;
  v11 = [(FMDRequest *)&v14 initWithAccount:v8];
  v12 = v11;
  if (v11)
  {
    [(FMDRequestAckRegister *)v11 setAccount:v8];
    [(FMDRequestAckRegister *)v12 setRegisterCommand:v9];
    [(FMDRequestAckRegister *)v12 setAckURL:v10];
  }

  return v12;
}

- (id)requestBody
{
  v6.receiver = self;
  v6.super_class = FMDRequestAckRegister;
  v3 = [(FMDRequest *)&v6 requestBody];
  [v3 setObject:&off_1002E7A38 forKeyedSubscript:@"statusCode"];
  v4 = [(FMDRequestAckRegister *)self registerCommand];
  [v3 setObject:v4 forKeyedSubscript:@"cmdContext"];

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
      v6 = [(FMDRequestAckRegister *)self registerCommand];
      v7 = [v6 objectForKeyedSubscript:@"id"];
      v8 = [v5 registerCommand];
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