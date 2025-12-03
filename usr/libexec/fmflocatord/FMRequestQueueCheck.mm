@interface FMRequestQueueCheck
- (BOOL)canReplace:(id)replace;
- (FMRequestQueueCheck)initWithProvider:(id)provider andServerContext:(id)context;
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

- (FMRequestQueueCheck)initWithProvider:(id)provider andServerContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = FMRequestQueueCheck;
  v7 = [(FMRequest *)&v10 initWithProvider:provider];
  v8 = v7;
  if (v7)
  {
    [(FMRequestQueueCheck *)v7 setServerContext:contextCopy];
  }

  return v8;
}

- (id)requestUrl
{
  provider = [(FMRequest *)self provider];
  v3 = [provider formattedURLForTemplate:@"${scheme}://${hostname}/fmipservice/${service}/${dsid}/${udid}/qc"];

  return v3;
}

- (id)requestBody
{
  v11.receiver = self;
  v11.super_class = FMRequestQueueCheck;
  requestBody = [(FMRequest *)&v11 requestBody];
  provider = [(FMRequest *)self provider];
  standardDeviceContext = [provider standardDeviceContext];
  [requestBody setObject:standardDeviceContext forKeyedSubscript:@"deviceContext"];

  provider2 = [(FMRequest *)self provider];
  fullDeviceInfo = [provider2 fullDeviceInfo];

  [requestBody setObject:fullDeviceInfo forKeyedSubscript:@"deviceInfo"];
  serverContext = [(FMRequestQueueCheck *)self serverContext];

  if (serverContext)
  {
    serverContext2 = [(FMRequestQueueCheck *)self serverContext];
    [requestBody setObject:serverContext2 forKeyedSubscript:@"serverContext"];
  }

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
      v8 = delegate == delegate2;
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