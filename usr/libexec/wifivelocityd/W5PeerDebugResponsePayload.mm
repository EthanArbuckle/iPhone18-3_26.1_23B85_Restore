@interface W5PeerDebugResponsePayload
+ (id)payloadFromDictionary:(id)a3;
- (W5PeerDebugResponsePayload)initWithRequest:(id)a3;
- (id)encode;
@end

@implementation W5PeerDebugResponsePayload

+ (id)payloadFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:v3];

  return v4;
}

- (W5PeerDebugResponsePayload)initWithRequest:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = W5PeerDebugResponsePayload;
  v5 = [(W5PeerDebugResponsePayload *)&v27 init];
  if (!v5 || (v6 = [v4 objectForKey:@"version"], (v5->_version = v6) == 0))
  {
    v8 = 0;
    goto LABEL_13;
  }

  v7 = [v4 objectForKey:@"status"];
  v8 = v7;
  if (!v7)
  {
LABEL_13:
    v13 = 0;
    v9 = 0;
    goto LABEL_15;
  }

  v5->_status = [v7 integerValue];
  v9 = [v4 objectForKey:@"config"];
  if (!v9)
  {
    v13 = 0;
    goto LABEL_15;
  }

  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
  v26 = 0;
  v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v9 error:&v26];
  v13 = v26;
  configuration = v5->_configuration;
  v5->_configuration = v12;

  v15 = v5->_configuration;
  if (!v15)
  {
LABEL_15:

    v22 = sub_100098A04();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136315906;
      v29 = "[W5PeerDebugResponsePayload initWithRequest:]";
      v30 = 2080;
      v31 = "W5PeerDebugResponsePayload.m";
      v32 = 1024;
      v33 = 63;
      v34 = 2114;
      v35 = v13;
      _os_log_send_and_compose_impl();
    }

    v5 = 0;
    goto LABEL_10;
  }

  v16 = [(W5DebugConfiguration *)v15 diagnosticsMode];
  if (v16)
  {
    v17 = v16;
    v18 = [(W5DebugConfiguration *)v5->_configuration diagnosticsMode];
    v19 = [v18 uuid];

    if (!v19)
    {
      v20 = +[NSUUID UUID];
      v21 = [(W5DebugConfiguration *)v5->_configuration diagnosticsMode];
      [v21 setUuid:v20];

      v22 = sub_100098A04();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [(W5PeerDebugResponsePayload *)v5 configuration];
        v24 = [v23 diagnosticsMode];
        v28 = 136315906;
        v29 = "[W5PeerDebugResponsePayload initWithRequest:]";
        v30 = 2080;
        v31 = "W5PeerDebugResponsePayload.m";
        v32 = 1024;
        v33 = 56;
        v34 = 2114;
        v35 = v24;
        _os_log_send_and_compose_impl();
      }

LABEL_10:
    }
  }

  return v5;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(W5PeerDebugResponsePayload *)self version];

  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = [(W5PeerDebugResponsePayload *)self version];
  [v3 setObject:v5 forKey:@"version"];

  if (![(W5PeerDebugResponsePayload *)self status])
  {
    v8 = 0;
    goto LABEL_7;
  }

  v6 = [NSNumber numberWithInteger:[(W5PeerDebugResponsePayload *)self status]];
  [v3 setObject:v6 forKey:@"status"];

  v4 = [(W5PeerDebugResponsePayload *)self configuration];

  if (v4)
  {
    v7 = [(W5PeerDebugResponsePayload *)self configuration];
    v18 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v18];
    v4 = v18;

    if (!v4 && v8)
    {
      [v3 setObject:v8 forKey:@"config"];
LABEL_7:
      v4 = 0;
      goto LABEL_11;
    }

    v9 = sub_100098A04();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315906;
      v20 = "[W5PeerDebugResponsePayload encode]";
      v21 = 2080;
      v22 = "W5PeerDebugResponsePayload.m";
      v23 = 1024;
      v24 = 87;
      v25 = 2114;
      v26 = v4;
      LODWORD(v17) = 38;
      v16 = &v19;
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
LABEL_16:
    v8 = 0;
  }

LABEL_11:
  if (![v3 count])
  {
    v13 = [NSString stringWithFormat:@"%s: empty payload", "[W5PeerDebugResponsePayload encode]"];
    v14 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v13 userInfo:0];
    v15 = v14;

    objc_exception_throw(v14);
  }

  if ([v3 count])
  {
    v10 = v3;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

@end