@interface W5PeerStatusResponsePayload
+ (id)payloadFromDictionary:(id)dictionary;
- (W5PeerStatusResponsePayload)initWithRequest:(id)request;
- (id)encode;
@end

@implementation W5PeerStatusResponsePayload

+ (id)payloadFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:dictionaryCopy];

  return v4;
}

- (W5PeerStatusResponsePayload)initWithRequest:(id)request
{
  requestCopy = request;
  v27.receiver = self;
  v27.super_class = W5PeerStatusResponsePayload;
  v5 = [(W5PeerStatusResponsePayload *)&v27 init];
  if (v5 && (v6 = [requestCopy objectForKey:@"version"], (v5->_version = v6) != 0))
  {
    v7 = [requestCopy objectForKey:@"status"];
    v8 = v7;
    if (v7)
    {
      v5->_status = [v7 integerValue];
    }

    v24 = v8;
    v9 = [requestCopy objectForKey:@"peerStatus"];
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

  v15 = [requestCopy objectForKey:&off_1000EFAD0];

  if (v15)
  {
    v16 = [requestCopy objectForKey:&off_1000EFAD0];

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
    version = [(W5PeerStatusResponsePayload *)self version];
    status = [(W5PeerStatusResponsePayload *)self status];
    peerStatus = [(W5PeerStatusResponsePayload *)self peerStatus];
    v21 = 136316418;
    v22 = "[W5PeerStatusResponsePayload encode]";
    v23 = 2080;
    v24 = "W5PeerStatusResponsePayload.m";
    v25 = 1024;
    v26 = 77;
    v27 = 2114;
    v28 = version;
    v29 = 2048;
    v30 = status;
    v31 = 2114;
    v32 = peerStatus;
    LODWORD(v19) = 58;
    v18 = &v21;
    _os_log_send_and_compose_impl();
  }

  version2 = [(W5PeerStatusResponsePayload *)self version];

  if (!version2)
  {
    goto LABEL_17;
  }

  version3 = [(W5PeerStatusResponsePayload *)self version];
  [v3 setObject:version3 forKey:@"version"];

  if (![(W5PeerStatusResponsePayload *)self status])
  {
    version2 = 0;
    goto LABEL_17;
  }

  v10 = [NSNumber numberWithInteger:[(W5PeerStatusResponsePayload *)self status]];
  [v3 setObject:v10 forKey:@"status"];

  version2 = [(W5PeerStatusResponsePayload *)self peerStatus];

  if (!version2)
  {
LABEL_17:
    v12 = 0;
    goto LABEL_12;
  }

  peerStatus2 = [(W5PeerStatusResponsePayload *)self peerStatus];
  v20 = 0;
  version2 = [NSKeyedArchiver archivedDataWithRootObject:peerStatus2 requiringSecureCoding:1 error:&v20];
  v12 = v20;

  if (!version2 || v12)
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
    [v3 setObject:version2 forKey:@"peerStatus"];
    [v3 setObject:version2 forKey:self->_version];
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