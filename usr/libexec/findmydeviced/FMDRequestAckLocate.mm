@interface FMDRequestAckLocate
- (BOOL)canReplace:(id)replace;
- (FMDRequestAckLocate)initWithAccount:(id)account locateCommand:(id)command ackURL:(id)l cmdStatusCode:(int64_t)code cmdStatusMessage:(id)message;
- (id)requestBody;
@end

@implementation FMDRequestAckLocate

- (FMDRequestAckLocate)initWithAccount:(id)account locateCommand:(id)command ackURL:(id)l cmdStatusCode:(int64_t)code cmdStatusMessage:(id)message
{
  accountCopy = account;
  commandCopy = command;
  lCopy = l;
  messageCopy = message;
  v19.receiver = self;
  v19.super_class = FMDRequestAckLocate;
  v16 = [(FMDRequest *)&v19 initWithAccount:accountCopy];
  v17 = v16;
  if (v16)
  {
    [(FMDRequestAckLocate *)v16 setAccount:accountCopy];
    [(FMDRequestAckLocate *)v17 setLocateCommand:commandCopy];
    [(FMDRequestAckLocate *)v17 setAckURL:lCopy];
    [(FMDRequestAckLocate *)v17 setCmdStatusCode:code];
    [(FMDRequestAckLocate *)v17 setCmdStatusMsg:messageCopy];
  }

  return v17;
}

- (id)requestBody
{
  v19.receiver = self;
  v19.super_class = FMDRequestAckLocate;
  requestBody = [(FMDRequest *)&v19 requestBody];
  v4 = [NSNumber numberWithInteger:[(FMDRequestAckLocate *)self cmdStatusCode]];
  [requestBody setObject:v4 forKeyedSubscript:@"statusCode"];

  cmdStatusMsg = [(FMDRequestAckLocate *)self cmdStatusMsg];

  if (cmdStatusMsg)
  {
    cmdStatusMsg2 = [(FMDRequestAckLocate *)self cmdStatusMsg];
    [requestBody setObject:cmdStatusMsg2 forKeyedSubscript:@"statusMessage"];
  }

  v7 = +[NSMutableDictionary dictionary];
  locateCommand = [(FMDRequestAckLocate *)self locateCommand];
  v9 = [locateCommand objectForKeyedSubscript:@"id"];
  [v7 fm_safelyMapKey:@"id" toObject:v9];

  locateCommand2 = [(FMDRequestAckLocate *)self locateCommand];
  v11 = [locateCommand2 objectForKeyedSubscript:@"enqueueTimestamp"];
  [v7 fm_safelyMapKey:@"enqueueTimestamp" toObject:v11];

  locateCommand3 = [(FMDRequestAckLocate *)self locateCommand];
  v13 = [locateCommand3 objectForKeyedSubscript:@"responseTimeStamp"];
  [v7 fm_safelyMapKey:@"responseTimeStamp" toObject:v13];

  locateCommand4 = [(FMDRequestAckLocate *)self locateCommand];
  v15 = [locateCommand4 objectForKeyedSubscript:@"cmd"];
  [v7 fm_safelyMapKey:@"cmd" toObject:v15];

  locateCommand5 = [(FMDRequestAckLocate *)self locateCommand];
  v17 = [locateCommand5 objectForKeyedSubscript:@"desiredAccuracy"];
  [v7 fm_safelyMapKey:@"desiredAccuracy" toObject:v17];

  [requestBody setObject:v7 forKeyedSubscript:@"cmdContext"];

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
      locateCommand = [(FMDRequestAckLocate *)self locateCommand];
      v7 = [locateCommand objectForKeyedSubscript:@"id"];
      locateCommand2 = [v5 locateCommand];
      v9 = [locateCommand2 objectForKeyedSubscript:@"id"];
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