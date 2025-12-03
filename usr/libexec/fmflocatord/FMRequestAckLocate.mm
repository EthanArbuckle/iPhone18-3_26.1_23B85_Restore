@interface FMRequestAckLocate
- (BOOL)canReplace:(id)replace;
- (FMRequestAckLocate)initWithProvider:(id)provider locateCommand:(id)command ackURL:(id)l cmdStatusCode:(int64_t)code cmdStatusMessage:(id)message;
- (id)requestBody;
- (void)deinitializeRequest;
@end

@implementation FMRequestAckLocate

- (void)deinitializeRequest
{
  v3.receiver = self;
  v3.super_class = FMRequestAckLocate;
  [(FMRequest *)&v3 deinitializeRequest];
  [(FMRequestAckLocate *)self setLocateCommand:0];
  [(FMRequestAckLocate *)self setAckURL:0];
  [(FMRequestAckLocate *)self setCmdStatusMsg:0];
}

- (FMRequestAckLocate)initWithProvider:(id)provider locateCommand:(id)command ackURL:(id)l cmdStatusCode:(int64_t)code cmdStatusMessage:(id)message
{
  commandCopy = command;
  lCopy = l;
  messageCopy = message;
  v18.receiver = self;
  v18.super_class = FMRequestAckLocate;
  v15 = [(FMRequest *)&v18 initWithProvider:provider];
  v16 = v15;
  if (v15)
  {
    [(FMRequestAckLocate *)v15 setLocateCommand:commandCopy];
    [(FMRequestAckLocate *)v16 setAckURL:lCopy];
    [(FMRequestAckLocate *)v16 setCmdStatusCode:code];
    [(FMRequestAckLocate *)v16 setCmdStatusMsg:messageCopy];
  }

  return v16;
}

- (id)requestBody
{
  v25.receiver = self;
  v25.super_class = FMRequestAckLocate;
  requestBody = [(FMRequest *)&v25 requestBody];
  provider = [(FMRequest *)self provider];
  standardDeviceContext = [provider standardDeviceContext];

  locateCommand = [(FMRequestAckLocate *)self locateCommand];
  v7 = [locateCommand objectForKeyedSubscript:@"id"];
  [standardDeviceContext fm_safelyMapKey:@"cmdId" toObject:v7];

  if (standardDeviceContext)
  {
    [requestBody setObject:standardDeviceContext forKeyedSubscript:@"deviceContext"];
  }

  provider2 = [(FMRequest *)self provider];
  locationDeviceInfo = [provider2 locationDeviceInfo];
  [requestBody setObject:locationDeviceInfo forKeyedSubscript:@"deviceInfo"];

  v10 = [NSNumber numberWithInteger:[(FMRequestAckLocate *)self cmdStatusCode]];
  [requestBody setObject:v10 forKeyedSubscript:@"statusCode"];

  cmdStatusMsg = [(FMRequestAckLocate *)self cmdStatusMsg];

  if (cmdStatusMsg)
  {
    cmdStatusMsg2 = [(FMRequestAckLocate *)self cmdStatusMsg];
    [requestBody setObject:cmdStatusMsg2 forKeyedSubscript:@"statusMessage"];
  }

  v13 = +[NSMutableDictionary dictionary];
  locateCommand2 = [(FMRequestAckLocate *)self locateCommand];
  v15 = [locateCommand2 objectForKeyedSubscript:@"id"];
  [v13 fm_safelyMapKey:@"id" toObject:v15];

  locateCommand3 = [(FMRequestAckLocate *)self locateCommand];
  v17 = [locateCommand3 objectForKeyedSubscript:@"enqueueTimestamp"];
  [v13 fm_safelyMapKey:@"enqueueTimestamp" toObject:v17];

  locateCommand4 = [(FMRequestAckLocate *)self locateCommand];
  v19 = [locateCommand4 objectForKeyedSubscript:@"responseTimeStamp"];
  [v13 fm_safelyMapKey:@"responseTimeStamp" toObject:v19];

  locateCommand5 = [(FMRequestAckLocate *)self locateCommand];
  v21 = [locateCommand5 objectForKeyedSubscript:@"cmd"];
  [v13 fm_safelyMapKey:@"cmd" toObject:v21];

  locateCommand6 = [(FMRequestAckLocate *)self locateCommand];
  v23 = [locateCommand6 objectForKeyedSubscript:@"desiredAccuracy"];
  [v13 fm_safelyMapKey:@"desiredAccuracy" toObject:v23];

  [requestBody setObject:v13 forKeyedSubscript:@"cmdContext"];

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
        locateCommand = [(FMRequestAckLocate *)self locateCommand];
        v10 = [locateCommand objectForKeyedSubscript:@"id"];
        locateCommand2 = [v5 locateCommand];
        v12 = [locateCommand2 objectForKeyedSubscript:@"id"];
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