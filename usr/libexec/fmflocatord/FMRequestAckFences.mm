@interface FMRequestAckFences
- (BOOL)canReplace:(id)replace;
- (FMRequestAckFences)initWithProvider:(id)provider fencesCommand:(id)command ackURL:(id)l;
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

- (FMRequestAckFences)initWithProvider:(id)provider fencesCommand:(id)command ackURL:(id)l
{
  commandCopy = command;
  lCopy = l;
  v13.receiver = self;
  v13.super_class = FMRequestAckFences;
  v10 = [(FMRequest *)&v13 initWithProvider:provider];
  v11 = v10;
  if (v10)
  {
    [(FMRequestAckFences *)v10 setFencesCommand:commandCopy];
    [(FMRequestAckFences *)v11 setAckURL:lCopy];
  }

  return v11;
}

- (id)requestBody
{
  v10.receiver = self;
  v10.super_class = FMRequestAckFences;
  requestBody = [(FMRequest *)&v10 requestBody];
  provider = [(FMRequest *)self provider];
  standardDeviceContext = [provider standardDeviceContext];
  [requestBody setObject:standardDeviceContext forKeyedSubscript:@"deviceContext"];

  provider2 = [(FMRequest *)self provider];
  fullDeviceInfo = [provider2 fullDeviceInfo];
  [requestBody setObject:fullDeviceInfo forKeyedSubscript:@"deviceInfo"];

  [requestBody setObject:@"OK" forKeyedSubscript:@"statusMessage"];
  [requestBody setObject:&off_100062F88 forKeyedSubscript:@"statusCode"];
  fencesCommand = [(FMRequestAckFences *)self fencesCommand];
  [requestBody setObject:fencesCommand forKeyedSubscript:@"cmdContext"];

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
      if (delegate == delegate2)
      {
        fencesCommand = [(FMRequestAckFences *)self fencesCommand];
        v10 = [fencesCommand objectForKeyedSubscript:@"id"];
        fencesCommand2 = [v5 fencesCommand];
        v12 = [fencesCommand2 objectForKeyedSubscript:@"id"];
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