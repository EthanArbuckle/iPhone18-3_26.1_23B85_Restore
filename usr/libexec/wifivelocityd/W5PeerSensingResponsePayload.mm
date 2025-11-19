@interface W5PeerSensingResponsePayload
+ (id)payloadFromDictionary:(id)a3;
- (W5PeerSensingResponsePayload)initWithRequest:(id)a3;
- (id)encode;
@end

@implementation W5PeerSensingResponsePayload

+ (id)payloadFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:v3];

  return v4;
}

- (W5PeerSensingResponsePayload)initWithRequest:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = W5PeerSensingResponsePayload;
  v5 = [(W5PeerSensingResponsePayload *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"result"];
    v5->_result = [v6 BOOLValue];

    v7 = [v4 objectForKeyedSubscript:@"error"];
    errorStr = v5->_errorStr;
    v5->_errorStr = v7;
  }

  else
  {
    errorStr = sub_100098A04();
    if (os_log_type_enabled(errorStr, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = "[W5PeerSensingResponsePayload initWithRequest:]";
      v13 = 2080;
      v14 = "W5PeerSensingResponsePayload.m";
      v15 = 1024;
      v16 = 34;
      v17 = 2114;
      v18 = 0;
      _os_log_send_and_compose_impl();
    }
  }

  return v5;
}

- (id)encode
{
  v3 = [(W5PeerSensingResponsePayload *)self errorStr];
  if (!v3)
  {
    if ([(W5PeerSensingResponsePayload *)self result])
    {
      v3 = 0;
    }

    else
    {
      v3 = @"unknown error";
    }
  }

  v7[0] = @"result";
  v4 = [NSNumber numberWithBool:[(W5PeerSensingResponsePayload *)self result]];
  v7[1] = @"error";
  v8[0] = v4;
  v8[1] = v3;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

@end