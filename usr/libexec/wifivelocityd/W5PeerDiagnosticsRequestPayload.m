@interface W5PeerDiagnosticsRequestPayload
+ (id)payloadFromDictionary:(id)a3;
- (W5PeerDiagnosticsRequestPayload)initWithRequest:(id)a3;
- (id)encode;
@end

@implementation W5PeerDiagnosticsRequestPayload

+ (id)payloadFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:v3];

  return v4;
}

- (W5PeerDiagnosticsRequestPayload)initWithRequest:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = W5PeerDiagnosticsRequestPayload;
  v5 = [(W5PeerDiagnosticsRequestPayload *)&v26 init];
  if (v5 && (v6 = [v4 objectForKey:@"version"], (v5->_version = v6) != 0))
  {
    v7 = [v4 objectForKey:@"configuration"];
    v8 = [NSSet setWithObjects:objc_opt_class(), 0];
    v25 = 0;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v7 error:&v25];
    v10 = v25;
    configuration = v5->_configuration;
    v5->_configuration = v9;

    v12 = [v4 objectForKey:@"tests"];
    v13 = objc_opt_class();
    v14 = [NSSet setWithObjects:v13, objc_opt_class(), 0];
    v24 = v10;
    v15 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v14 fromData:v12 error:&v24];
    v16 = v24;

    tests = v5->_tests;
    v5->_tests = v15;

    v18 = [v4 objectForKey:@"uuid"];
    if (v18)
    {
      v19 = v18;
      v20 = [[NSUUID alloc] initWithUUIDString:v18];
      p_super = &v5->_uuid->super;
      v5->_uuid = v20;
      goto LABEL_5;
    }
  }

  else
  {
    v16 = 0;
    v7 = 0;
    v12 = 0;
  }

  p_super = sub_100098A04();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315906;
    v28 = "[W5PeerDiagnosticsRequestPayload initWithRequest:]";
    v29 = 2080;
    v30 = "W5PeerDiagnosticsRequestPayload.m";
    v31 = 1024;
    v32 = 54;
    v33 = 2114;
    v34 = v16;
    _os_log_send_and_compose_impl();
  }

  v19 = 0;
  v5 = 0;
LABEL_5:

  v22 = v5;
  return v22;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(W5PeerDiagnosticsRequestPayload *)self version];

  if (v4)
  {
    v5 = [(W5PeerDiagnosticsRequestPayload *)self version];
    [v3 setObject:v5 forKey:@"version"];

    v6 = [(W5PeerDiagnosticsRequestPayload *)self configuration];

    if (v6)
    {
      v7 = [(W5PeerDiagnosticsRequestPayload *)self configuration];
      v27 = 0;
      v4 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v27];
      v8 = v27;

      if (!v4)
      {
        v9 = sub_100098A04();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 136315906;
          v29 = "[W5PeerDiagnosticsRequestPayload encode]";
          v30 = 2080;
          v31 = "W5PeerDiagnosticsRequestPayload.m";
          v32 = 1024;
          v33 = 72;
          v34 = 2114;
          v35 = v8;
          LODWORD(v23) = 38;
          v22 = &v28;
LABEL_23:
          _os_log_send_and_compose_impl();
          goto LABEL_24;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v10 = +[NSNull null];
      v26 = 0;
      v4 = [NSKeyedArchiver archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v26];
      v8 = v26;

      if (!v4)
      {
        v9 = sub_100098A04();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 136315906;
          v29 = "[W5PeerDiagnosticsRequestPayload encode]";
          v30 = 2080;
          v31 = "W5PeerDiagnosticsRequestPayload.m";
          v32 = 1024;
          v33 = 77;
          v34 = 2114;
          v35 = v8;
          LODWORD(v23) = 38;
          v22 = &v28;
          goto LABEL_23;
        }

LABEL_24:
        v13 = 0;
        v4 = 0;
        goto LABEL_15;
      }
    }

    [v3 setObject:v4 forKey:@"configuration"];
    v11 = [(W5PeerDiagnosticsRequestPayload *)self tests];

    if (v11)
    {
      v12 = [(W5PeerDiagnosticsRequestPayload *)self tests];
      v25 = v8;
      v13 = [NSKeyedArchiver archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v25];
      v14 = v25;

      if (!v13)
      {
        v9 = sub_100098A04();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 136315906;
          v29 = "[W5PeerDiagnosticsRequestPayload encode]";
          v30 = 2080;
          v31 = "W5PeerDiagnosticsRequestPayload.m";
          v32 = 1024;
          v33 = 85;
          v34 = 2114;
          v35 = v14;
          LODWORD(v23) = 38;
          v22 = &v28;
LABEL_27:
          _os_log_send_and_compose_impl();
          goto LABEL_28;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v15 = +[NSNull null];
      v24 = v8;
      v13 = [NSKeyedArchiver archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v24];
      v14 = v24;

      if (!v13)
      {
        v9 = sub_100098A04();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 136315906;
          v29 = "[W5PeerDiagnosticsRequestPayload encode]";
          v30 = 2080;
          v31 = "W5PeerDiagnosticsRequestPayload.m";
          v32 = 1024;
          v33 = 90;
          v34 = 2114;
          v35 = v14;
          LODWORD(v23) = 38;
          v22 = &v28;
          goto LABEL_27;
        }

LABEL_28:
        v13 = 0;
LABEL_14:
        v8 = v14;
LABEL_15:

        v14 = v8;
        goto LABEL_16;
      }
    }

    [v3 setObject:v13 forKey:@"tests"];
    v16 = [(W5PeerDiagnosticsRequestPayload *)self uuid];

    if (!v16)
    {
      goto LABEL_16;
    }

    v9 = [(W5PeerDiagnosticsRequestPayload *)self uuid];
    v17 = [v9 UUIDString];
    [v3 setObject:v17 forKey:@"uuid"];

    goto LABEL_14;
  }

  v13 = 0;
  v14 = 0;
LABEL_16:
  if (![v3 count])
  {
    v19 = [NSString stringWithFormat:@"%s: empty payload", "[W5PeerDiagnosticsRequestPayload encode]"];
    v20 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v19 userInfo:0];
    v21 = v20;

    objc_exception_throw(v20);
  }

  return v3;
}

@end