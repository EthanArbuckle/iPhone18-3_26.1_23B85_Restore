@interface FMDRequestAckLocate
- (BOOL)canReplace:(id)a3;
- (FMDRequestAckLocate)initWithAccount:(id)a3 locateCommand:(id)a4 ackURL:(id)a5 cmdStatusCode:(int64_t)a6 cmdStatusMessage:(id)a7;
- (id)requestBody;
@end

@implementation FMDRequestAckLocate

- (FMDRequestAckLocate)initWithAccount:(id)a3 locateCommand:(id)a4 ackURL:(id)a5 cmdStatusCode:(int64_t)a6 cmdStatusMessage:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = FMDRequestAckLocate;
  v16 = [(FMDRequest *)&v19 initWithAccount:v12];
  v17 = v16;
  if (v16)
  {
    [(FMDRequestAckLocate *)v16 setAccount:v12];
    [(FMDRequestAckLocate *)v17 setLocateCommand:v13];
    [(FMDRequestAckLocate *)v17 setAckURL:v14];
    [(FMDRequestAckLocate *)v17 setCmdStatusCode:a6];
    [(FMDRequestAckLocate *)v17 setCmdStatusMsg:v15];
  }

  return v17;
}

- (id)requestBody
{
  v19.receiver = self;
  v19.super_class = FMDRequestAckLocate;
  v3 = [(FMDRequest *)&v19 requestBody];
  v4 = [NSNumber numberWithInteger:[(FMDRequestAckLocate *)self cmdStatusCode]];
  [v3 setObject:v4 forKeyedSubscript:@"statusCode"];

  v5 = [(FMDRequestAckLocate *)self cmdStatusMsg];

  if (v5)
  {
    v6 = [(FMDRequestAckLocate *)self cmdStatusMsg];
    [v3 setObject:v6 forKeyedSubscript:@"statusMessage"];
  }

  v7 = +[NSMutableDictionary dictionary];
  v8 = [(FMDRequestAckLocate *)self locateCommand];
  v9 = [v8 objectForKeyedSubscript:@"id"];
  [v7 fm_safelyMapKey:@"id" toObject:v9];

  v10 = [(FMDRequestAckLocate *)self locateCommand];
  v11 = [v10 objectForKeyedSubscript:@"enqueueTimestamp"];
  [v7 fm_safelyMapKey:@"enqueueTimestamp" toObject:v11];

  v12 = [(FMDRequestAckLocate *)self locateCommand];
  v13 = [v12 objectForKeyedSubscript:@"responseTimeStamp"];
  [v7 fm_safelyMapKey:@"responseTimeStamp" toObject:v13];

  v14 = [(FMDRequestAckLocate *)self locateCommand];
  v15 = [v14 objectForKeyedSubscript:@"cmd"];
  [v7 fm_safelyMapKey:@"cmd" toObject:v15];

  v16 = [(FMDRequestAckLocate *)self locateCommand];
  v17 = [v16 objectForKeyedSubscript:@"desiredAccuracy"];
  [v7 fm_safelyMapKey:@"desiredAccuracy" toObject:v17];

  [v3 setObject:v7 forKeyedSubscript:@"cmdContext"];

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
      v6 = [(FMDRequestAckLocate *)self locateCommand];
      v7 = [v6 objectForKeyedSubscript:@"id"];
      v8 = [v5 locateCommand];
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