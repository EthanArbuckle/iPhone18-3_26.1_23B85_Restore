@interface W5PeerStatusResponsePayload
+ (id)payloadFromDictionary:(id)a3;
- (W5PeerStatusResponsePayload)initWithRequest:(id)a3;
- (id)encode;
@end

@implementation W5PeerStatusResponsePayload

+ (id)payloadFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:v3];

  return v4;
}

- (W5PeerStatusResponsePayload)initWithRequest:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = W5PeerStatusResponsePayload;
  v5 = [(W5PeerStatusResponsePayload *)&v27 init];
  if (v5 && (v6 = [v4 objectForKey:@"version"], (v5->_version = v6) != 0))
  {
    v7 = [v4 objectForKey:@"status"];
    v8 = v7;
    if (v7)
    {
      v5->_status = [v7 integerValue];
    }

    v24 = v8;
    v9 = [v4 objectForKey:@"peerStatus"];
    v10 = [NSSet setWithObjects:objc_opt_class(), 0];
    v26 = 0;
    v11 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v10 fromData:v9 error:&v26];
    v12 = v26;
    peerStatus = v5->_peerStatus;
    v5->_peerStatus = v11;

    v14 = v5->_peerStatus != 0;
  }

  else
  {
    v12 = 0;
    v24 = 0;
    v9 = 0;
    v14 = 0;
  }

  v15 = [v4 objectForKey:&off_1000EFAD0];

  if (v15)
  {
    v16 = [v4 objectForKey:&off_1000EFAD0];

    v17 = [NSSet setWithObjects:objc_opt_class(), 0];
    v25 = v12;
    v18 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v17 fromData:v16 error:&v25];
    v19 = v25;

    v20 = v5->_peerStatus;
    v5->_peerStatus = v18;

    if (v5->_peerStatus)
    {
      v5->_version = &off_1000EFAD0;
      v5->_status = 1;
      v21 = v24;
      goto LABEL_14;
    }
  }

  else
  {
    v19 = v12;
    v16 = v9;
  }

  v21 = v24;
  if (!v14)
  {

    v22 = sub_100098A04();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136315906;
      v29 = "[W5PeerStatusResponsePayload initWithRequest:]";
      v30 = 2080;
      v31 = "W5PeerStatusResponsePayload.m";
      v32 = 1024;
      v33 = 66;
      v34 = 2114;
      v35 = v19;
      _os_log_send_and_compose_impl();
    }

    v5 = 0;
  }

LABEL_14:

  return v5;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = sub_100098A04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(W5PeerStatusResponsePayload *)self version];
    v6 = [(W5PeerStatusResponsePayload *)self status];
    v7 = [(W5PeerStatusResponsePayload *)self peerStatus];
    v21 = 136316418;
    v22 = "[W5PeerStatusResponsePayload encode]";
    v23 = 2080;
    v24 = "W5PeerStatusResponsePayload.m";
    v25 = 1024;
    v26 = 77;
    v27 = 2114;
    v28 = v5;
    v29 = 2048;
    v30 = v6;
    v31 = 2114;
    v32 = v7;
    LODWORD(v19) = 58;
    v18 = &v21;
    _os_log_send_and_compose_impl();
  }

  v8 = [(W5PeerStatusResponsePayload *)self version];

  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = [(W5PeerStatusResponsePayload *)self version];
  [v3 setObject:v9 forKey:@"version"];

  if (![(W5PeerStatusResponsePayload *)self status])
  {
    v8 = 0;
    goto LABEL_17;
  }

  v10 = [NSNumber numberWithInteger:[(W5PeerStatusResponsePayload *)self status]];
  [v3 setObject:v10 forKey:@"status"];

  v8 = [(W5PeerStatusResponsePayload *)self peerStatus];

  if (!v8)
  {
LABEL_17:
    v12 = 0;
    goto LABEL_12;
  }

  v11 = [(W5PeerStatusResponsePayload *)self peerStatus];
  v20 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v20];
  v12 = v20;

  if (!v8 || v12)
  {
    v13 = sub_100098A04();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315906;
      v22 = "[W5PeerStatusResponsePayload encode]";
      v23 = 2080;
      v24 = "W5PeerStatusResponsePayload.m";
      v25 = 1024;
      v26 = 94;
      v27 = 2114;
      v28 = v12;
      LODWORD(v19) = 38;
      v18 = &v21;
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    [v3 setObject:v8 forKey:@"peerStatus"];
    [v3 setObject:v8 forKey:self->_version];
  }

LABEL_12:
  if (![v3 count])
  {
    v15 = [NSString stringWithFormat:@"%s: empty payload", "[W5PeerStatusResponsePayload encode]"];
    v16 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v15 userInfo:0];
    v17 = v16;

    objc_exception_throw(v16);
  }

  return v3;
}

@end