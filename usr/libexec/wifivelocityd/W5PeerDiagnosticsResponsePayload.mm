@interface W5PeerDiagnosticsResponsePayload
+ (id)payloadFromDictionary:(id)a3;
- (W5PeerDiagnosticsResponsePayload)initWithRequest:(id)a3;
- (id)encode;
@end

@implementation W5PeerDiagnosticsResponsePayload

+ (id)payloadFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:v3];

  return v4;
}

- (W5PeerDiagnosticsResponsePayload)initWithRequest:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = W5PeerDiagnosticsResponsePayload;
  v5 = [(W5PeerDiagnosticsResponsePayload *)&v19 init];
  if (!v5 || (v6 = [v4 objectForKey:@"version"], (v5->_version = v6) == 0))
  {

    v15 = sub_100098A04();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315906;
      v21 = "[W5PeerDiagnosticsResponsePayload initWithRequest:]";
      v22 = 2080;
      v23 = "W5PeerDiagnosticsResponsePayload.m";
      v24 = 1024;
      v25 = 56;
      v26 = 2114;
      v27 = 0;
      _os_log_send_and_compose_impl();
    }

    v9 = 0;
    v8 = 0;
    v13 = 0;
    v5 = 0;
    goto LABEL_8;
  }

  v7 = [v4 objectForKey:@"status"];
  v8 = v7;
  if (v7)
  {
    v5->_status = [v7 integerValue];
  }

  v9 = [v4 objectForKey:@"testResults"];
  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
  v18 = 0;
  v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v9 error:&v18];
  v13 = v18;
  results = v5->_results;
  v5->_results = v12;

  if (!v5->_results)
  {
    v15 = [v4 objectForKey:@"testError"];
    if (v15)
    {
      objc_storeStrong(&v5->_error, v15);
    }

LABEL_8:
  }

  v16 = v5;

  return v16;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = sub_100098A04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(W5PeerDiagnosticsResponsePayload *)self version];
    v6 = [(W5PeerDiagnosticsResponsePayload *)self status];
    v7 = [(W5PeerDiagnosticsResponsePayload *)self results];
    v8 = [(W5PeerDiagnosticsResponsePayload *)self error];
    v23 = 136316674;
    v24 = "[W5PeerDiagnosticsResponsePayload encode]";
    v25 = 2080;
    v26 = "W5PeerDiagnosticsResponsePayload.m";
    v27 = 1024;
    v28 = 66;
    v29 = 2114;
    v30 = v5;
    v31 = 2048;
    v32 = v6;
    v33 = 2114;
    v34 = v7;
    v35 = 2114;
    v36 = v8;
    LODWORD(v21) = 68;
    v20 = &v23;
    _os_log_send_and_compose_impl();
  }

  v9 = [(W5PeerDiagnosticsResponsePayload *)self version];

  if (v9)
  {
    v10 = [(W5PeerDiagnosticsResponsePayload *)self version];
    [v3 setObject:v10 forKey:@"version"];

    if (![(W5PeerDiagnosticsResponsePayload *)self status])
    {
LABEL_9:
      v14 = 0;
      v9 = 0;
      goto LABEL_11;
    }

    v11 = [NSNumber numberWithInteger:[(W5PeerDiagnosticsResponsePayload *)self status]];
    [v3 setObject:v11 forKey:@"status"];

    v12 = [(W5PeerDiagnosticsResponsePayload *)self results];

    if (v12)
    {
      v13 = [(W5PeerDiagnosticsResponsePayload *)self results];
      v22 = 0;
      v14 = [NSKeyedArchiver archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v22];
      v9 = v22;

      [v3 setObject:v14 forKey:@"testResults"];
      goto LABEL_11;
    }

    v9 = [(W5PeerDiagnosticsResponsePayload *)self error];

    if (v9)
    {
      v15 = [(W5PeerDiagnosticsResponsePayload *)self error];
      [v3 setObject:v15 forKey:@"testError"];

      goto LABEL_9;
    }
  }

  v14 = 0;
LABEL_11:
  if (![v3 count])
  {
    v17 = [NSString stringWithFormat:@"%s: empty payload", "[W5PeerDiagnosticsResponsePayload encode]"];
    v18 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v17 userInfo:0];
    v19 = v18;

    objc_exception_throw(v18);
  }

  return v3;
}

@end