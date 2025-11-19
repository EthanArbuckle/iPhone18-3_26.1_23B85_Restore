@interface FMRequestAckFences
- (BOOL)canReplace:(id)a3;
- (FMRequestAckFences)initWithProvider:(id)a3 fencesCommand:(id)a4 ackURL:(id)a5;
- (id)requestBody;
- (void)deinitializeRequest;
@end

@implementation FMRequestAckFences

- (void)deinitializeRequest
{
  v3.receiver = self;
  v3.super_class = FMRequestAckFences;
  [(FMRequest *)&v3 deinitializeRequest];
  [(FMRequestAckFences *)self setFencesCommand:0];
  [(FMRequestAckFences *)self setAckURL:0];
}

- (FMRequestAckFences)initWithProvider:(id)a3 fencesCommand:(id)a4 ackURL:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = FMRequestAckFences;
  v10 = [(FMRequest *)&v13 initWithProvider:a3];
  v11 = v10;
  if (v10)
  {
    [(FMRequestAckFences *)v10 setFencesCommand:v8];
    [(FMRequestAckFences *)v11 setAckURL:v9];
  }

  return v11;
}

- (id)requestBody
{
  v10.receiver = self;
  v10.super_class = FMRequestAckFences;
  v3 = [(FMRequest *)&v10 requestBody];
  v4 = [(FMRequest *)self provider];
  v5 = [v4 standardDeviceContext];
  [v3 setObject:v5 forKeyedSubscript:@"deviceContext"];

  v6 = [(FMRequest *)self provider];
  v7 = [v6 fullDeviceInfo];
  [v3 setObject:v7 forKeyedSubscript:@"deviceInfo"];

  [v3 setObject:@"OK" forKeyedSubscript:@"statusMessage"];
  [v3 setObject:&off_100062F88 forKeyedSubscript:@"statusCode"];
  v8 = [(FMRequestAckFences *)self fencesCommand];
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
        v9 = [(FMRequestAckFences *)self fencesCommand];
        v10 = [v9 objectForKeyedSubscript:@"id"];
        v11 = [v5 fencesCommand];
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