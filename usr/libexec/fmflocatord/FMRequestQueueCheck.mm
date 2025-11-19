@interface FMRequestQueueCheck
- (BOOL)canReplace:(id)a3;
- (FMRequestQueueCheck)initWithProvider:(id)a3 andServerContext:(id)a4;
- (id)requestBody;
- (id)requestUrl;
- (void)deinitializeRequest;
@end

@implementation FMRequestQueueCheck

- (void)deinitializeRequest
{
  v3.receiver = self;
  v3.super_class = FMRequestQueueCheck;
  [(FMRequest *)&v3 deinitializeRequest];
  [(FMRequestQueueCheck *)self setServerContext:0];
}

- (FMRequestQueueCheck)initWithProvider:(id)a3 andServerContext:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = FMRequestQueueCheck;
  v7 = [(FMRequest *)&v10 initWithProvider:a3];
  v8 = v7;
  if (v7)
  {
    [(FMRequestQueueCheck *)v7 setServerContext:v6];
  }

  return v8;
}

- (id)requestUrl
{
  v2 = [(FMRequest *)self provider];
  v3 = [v2 formattedURLForTemplate:@"${scheme}://${hostname}/fmipservice/${service}/${dsid}/${udid}/qc"];

  return v3;
}

- (id)requestBody
{
  v11.receiver = self;
  v11.super_class = FMRequestQueueCheck;
  v3 = [(FMRequest *)&v11 requestBody];
  v4 = [(FMRequest *)self provider];
  v5 = [v4 standardDeviceContext];
  [v3 setObject:v5 forKeyedSubscript:@"deviceContext"];

  v6 = [(FMRequest *)self provider];
  v7 = [v6 fullDeviceInfo];

  [v3 setObject:v7 forKeyedSubscript:@"deviceInfo"];
  v8 = [(FMRequestQueueCheck *)self serverContext];

  if (v8)
  {
    v9 = [(FMRequestQueueCheck *)self serverContext];
    [v3 setObject:v9 forKeyedSubscript:@"serverContext"];
  }

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
      v8 = v6 == v7;
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