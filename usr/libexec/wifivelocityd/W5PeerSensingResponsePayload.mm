@interface W5PeerSensingResponsePayload
+ (id)payloadFromDictionary:(id)dictionary;
- (W5PeerSensingResponsePayload)initWithRequest:(id)request;
- (id)encode;
@end

@implementation W5PeerSensingResponsePayload

+ (id)payloadFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:dictionaryCopy];

  return v4;
}

- (W5PeerSensingResponsePayload)initWithRequest:(id)request
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = W5PeerSensingResponsePayload;
  v5 = [(W5PeerSensingResponsePayload *)&v10 init];
  if (v5)
  {
    v6 = [requestCopy objectForKeyedSubscript:@"result"];
    v5->_result = [v6 BOOLValue];

    v7 = [requestCopy objectForKeyedSubscript:@"error"];
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
  errorStr = [(W5PeerSensingResponsePayload *)self errorStr];
  if (!errorStr)
  {
    if ([(W5PeerSensingResponsePayload *)self result])
    {
      errorStr = 0;
    }

    else
    {
      errorStr = @"unknown error";
    }
  }

  v7[0] = @"result";
  v4 = [NSNumber numberWithBool:[(W5PeerSensingResponsePayload *)self result]];
  v7[1] = @"error";
  v8[0] = v4;
  v8[1] = errorStr;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

@end