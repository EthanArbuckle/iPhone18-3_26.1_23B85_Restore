@interface FMRequestAckLocate
- (BOOL)canReplace:(id)a3;
- (FMRequestAckLocate)initWithProvider:(id)a3 locateCommand:(id)a4 ackURL:(id)a5 cmdStatusCode:(int64_t)a6 cmdStatusMessage:(id)a7;
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

- (FMRequestAckLocate)initWithProvider:(id)a3 locateCommand:(id)a4 ackURL:(id)a5 cmdStatusCode:(int64_t)a6 cmdStatusMessage:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = FMRequestAckLocate;
  v15 = [(FMRequest *)&v18 initWithProvider:a3];
  v16 = v15;
  if (v15)
  {
    [(FMRequestAckLocate *)v15 setLocateCommand:v12];
    [(FMRequestAckLocate *)v16 setAckURL:v13];
    [(FMRequestAckLocate *)v16 setCmdStatusCode:a6];
    [(FMRequestAckLocate *)v16 setCmdStatusMsg:v14];
  }

  return v16;
}

- (id)requestBody
{
  v25.receiver = self;
  v25.super_class = FMRequestAckLocate;
  v3 = [(FMRequest *)&v25 requestBody];
  v4 = [(FMRequest *)self provider];
  v5 = [v4 standardDeviceContext];

  v6 = [(FMRequestAckLocate *)self locateCommand];
  v7 = [v6 objectForKeyedSubscript:@"id"];
  [v5 fm_safelyMapKey:@"cmdId" toObject:v7];

  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"deviceContext"];
  }

  v8 = [(FMRequest *)self provider];
  v9 = [v8 locationDeviceInfo];
  [v3 setObject:v9 forKeyedSubscript:@"deviceInfo"];

  v10 = [NSNumber numberWithInteger:[(FMRequestAckLocate *)self cmdStatusCode]];
  [v3 setObject:v10 forKeyedSubscript:@"statusCode"];

  v11 = [(FMRequestAckLocate *)self cmdStatusMsg];

  if (v11)
  {
    v12 = [(FMRequestAckLocate *)self cmdStatusMsg];
    [v3 setObject:v12 forKeyedSubscript:@"statusMessage"];
  }

  v13 = +[NSMutableDictionary dictionary];
  v14 = [(FMRequestAckLocate *)self locateCommand];
  v15 = [v14 objectForKeyedSubscript:@"id"];
  [v13 fm_safelyMapKey:@"id" toObject:v15];

  v16 = [(FMRequestAckLocate *)self locateCommand];
  v17 = [v16 objectForKeyedSubscript:@"enqueueTimestamp"];
  [v13 fm_safelyMapKey:@"enqueueTimestamp" toObject:v17];

  v18 = [(FMRequestAckLocate *)self locateCommand];
  v19 = [v18 objectForKeyedSubscript:@"responseTimeStamp"];
  [v13 fm_safelyMapKey:@"responseTimeStamp" toObject:v19];

  v20 = [(FMRequestAckLocate *)self locateCommand];
  v21 = [v20 objectForKeyedSubscript:@"cmd"];
  [v13 fm_safelyMapKey:@"cmd" toObject:v21];

  v22 = [(FMRequestAckLocate *)self locateCommand];
  v23 = [v22 objectForKeyedSubscript:@"desiredAccuracy"];
  [v13 fm_safelyMapKey:@"desiredAccuracy" toObject:v23];

  [v3 setObject:v13 forKeyedSubscript:@"cmdContext"];

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
        v9 = [(FMRequestAckLocate *)self locateCommand];
        v10 = [v9 objectForKeyedSubscript:@"id"];
        v11 = [v5 locateCommand];
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