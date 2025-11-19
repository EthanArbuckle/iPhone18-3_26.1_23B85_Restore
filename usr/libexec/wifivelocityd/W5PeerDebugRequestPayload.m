@interface W5PeerDebugRequestPayload
+ (id)payloadFromDictionary:(id)a3;
- (W5PeerDebugRequestPayload)initWithRequest:(id)a3;
- (id)encode;
@end

@implementation W5PeerDebugRequestPayload

+ (id)payloadFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:v3];

  return v4;
}

- (W5PeerDebugRequestPayload)initWithRequest:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = W5PeerDebugRequestPayload;
  v5 = [(W5PeerDebugRequestPayload *)&v19 init];
  if (!v5 || (v6 = [v4 objectForKey:@"version"], (v5->_version = v6) == 0) || (objc_msgSend(v4, "objectForKey:", @"type"), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    v13 = sub_100098A04();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_send_and_compose_impl();
    }

    v8 = 0;
    v9 = 0;
    v5 = 0;
    goto LABEL_9;
  }

  v8 = v7;
  v5->_requestType = [v7 integerValue];
  v9 = [v4 objectForKey:@"config"];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
    v18 = 0;
    v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v9 error:&v18];
    v13 = v18;
    configuration = v5->_configuration;
    v5->_configuration = v12;

    if (v13)
    {
      v15 = sub_100098A04();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138543362;
        v21 = v4;
        _os_log_send_and_compose_impl();
      }
    }

LABEL_9:
  }

  v16 = v5;

  return v16;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(W5PeerDebugRequestPayload *)self version];

  if (v4)
  {
    v5 = [(W5PeerDebugRequestPayload *)self version];
    [v3 setObject:v5 forKey:@"version"];

    if ([(W5PeerDebugRequestPayload *)self requestType])
    {
      v6 = [NSNumber numberWithUnsignedInteger:[(W5PeerDebugRequestPayload *)self requestType]];
      [v3 setObject:v6 forKey:@"type"];

      if ([(W5PeerDebugRequestPayload *)self requestType]== 2)
      {
        v7 = [(W5PeerDebugRequestPayload *)self configuration];

        if (v7)
        {
          v8 = [(W5PeerDebugRequestPayload *)self configuration];
          v18 = 0;
          v9 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v18];
          v10 = v18;

          if (v10 || !v9)
          {
            v11 = sub_100098A04();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v19 = 138543362;
              v20 = v10;
              LODWORD(v17) = 12;
              v16 = &v19;
              _os_log_send_and_compose_impl();
            }
          }

          else
          {
            [v3 setObject:v9 forKey:@"config"];
          }
        }
      }
    }
  }

  if (![v3 count])
  {
    v13 = [NSString stringWithFormat:@"%s: empty payload", "[W5PeerDebugRequestPayload encode]"];
    v14 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v13 userInfo:0];
    v15 = v14;

    objc_exception_throw(v14);
  }

  return v3;
}

@end