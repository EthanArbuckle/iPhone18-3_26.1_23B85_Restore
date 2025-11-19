@interface W5PeerGenericRequestPayload
+ (id)payloadFromDictionary:(id)a3;
- (W5PeerGenericRequestPayload)initWithRequest:(id)a3;
- (id)__allowedClasses;
- (id)encode;
@end

@implementation W5PeerGenericRequestPayload

+ (id)payloadFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:v3];

  return v4;
}

- (id)__allowedClasses
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v4[8] = objc_opt_class();
  v4[9] = objc_opt_class();
  v4[10] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v4 count:11];

  return v2;
}

- (W5PeerGenericRequestPayload)initWithRequest:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = W5PeerGenericRequestPayload;
  v5 = [(W5PeerGenericRequestPayload *)&v16 init];
  if (!v5)
  {
    v10 = 0;
    v6 = 0;
LABEL_10:

    v14 = sub_100098A04();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315650;
      v18 = "[W5PeerGenericRequestPayload initWithRequest:]";
      v19 = 2080;
      v20 = "W5PeerGenericRequestPayload.m";
      v21 = 1024;
      v22 = 42;
      _os_log_send_and_compose_impl();
    }

    v5 = 0;
    goto LABEL_8;
  }

  v6 = [v4 objectForKey:@"payload"];
  if (!v6)
  {
    v10 = 0;
    goto LABEL_8;
  }

  v7 = [(W5PeerGenericRequestPayload *)v5 __allowedClasses];
  v8 = [NSSet setWithArray:v7];
  v15 = 0;
  v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v6 error:&v15];
  v10 = v15;
  info = v5->_info;
  v5->_info = v9;

  if (!v5->_info)
  {
    v12 = sub_100098A04();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315906;
      v18 = "[W5PeerGenericRequestPayload initWithRequest:]";
      v19 = 2080;
      v20 = "W5PeerGenericRequestPayload.m";
      v21 = 1024;
      v22 = 34;
      v23 = 2114;
      v24 = v10;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_10;
  }

LABEL_8:

  return v5;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(W5PeerGenericRequestPayload *)self info];

  if (v4)
  {
    v5 = [(W5PeerGenericRequestPayload *)self info];
    v14 = 0;
    v4 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v14];
    v6 = v14;

    if (v4)
    {
      [v3 setObject:v4 forKeyedSubscript:@"payload"];
    }

    else
    {
      v8 = sub_100098A04();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315906;
        v16 = "[W5PeerGenericRequestPayload encode]";
        v17 = 2080;
        v18 = "W5PeerGenericRequestPayload.m";
        v19 = 1024;
        v20 = 54;
        v21 = 2114;
        v22 = v6;
        LODWORD(v13) = 38;
        v12 = &v15;
        _os_log_send_and_compose_impl();
      }

      v4 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  if (![v3 count])
  {
    v9 = [NSString stringWithFormat:@"%s: empty payload", "[W5PeerGenericRequestPayload encode]"];
    v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
    v11 = v10;

    objc_exception_throw(v10);
  }

  return v3;
}

@end