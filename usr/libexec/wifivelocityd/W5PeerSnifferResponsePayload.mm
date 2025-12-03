@interface W5PeerSnifferResponsePayload
+ (id)payloadFromDictionary:(id)dictionary;
- (W5PeerSnifferResponsePayload)initWithRequest:(id)request;
- (id)encode;
@end

@implementation W5PeerSnifferResponsePayload

+ (id)payloadFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:dictionaryCopy];

  return v4;
}

- (W5PeerSnifferResponsePayload)initWithRequest:(id)request
{
  requestCopy = request;
  v21.receiver = self;
  v21.super_class = W5PeerSnifferResponsePayload;
  v5 = [(W5PeerSnifferResponsePayload *)&v21 init];
  if (v5 && (v6 = [requestCopy objectForKey:@"version"], (v5->_version = v6) != 0) && (objc_msgSend(requestCopy, "objectForKey:", @"status"), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v5->_status = [v7 integerValue];
    v9 = [requestCopy objectForKey:@"paths"];
    if (v9)
    {
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = [NSSet setWithObjects:v10, v11, objc_opt_class(), 0];
      v20 = 0;
      v13 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v12 fromData:v9 error:&v20];
      v14 = v20;
      filePaths = v5->_filePaths;
      v5->_filePaths = v13;
    }

    else
    {
      v14 = 0;
    }

    v16 = [requestCopy objectForKey:@"uuid"];
    p_super = &v5->_uuid->super;
    v5->_uuid = v16;
  }

  else
  {

    p_super = sub_100098A04();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315906;
      v23 = "[W5PeerSnifferResponsePayload initWithRequest:]";
      v24 = 2080;
      v25 = "W5PeerSnifferResponsePayload.m";
      v26 = 1024;
      v27 = 55;
      v28 = 2114;
      v29 = 0;
      _os_log_send_and_compose_impl();
    }

    v9 = 0;
    v8 = 0;
    v14 = 0;
    v5 = 0;
  }

  v18 = v5;
  return v18;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  version = [(W5PeerSnifferResponsePayload *)self version];

  if (!version)
  {
    goto LABEL_18;
  }

  version2 = [(W5PeerSnifferResponsePayload *)self version];
  [v3 setObject:version2 forKey:@"version"];

  if (![(W5PeerSnifferResponsePayload *)self status])
  {
    version = 0;
LABEL_18:
    v8 = 0;
    goto LABEL_13;
  }

  v6 = [NSNumber numberWithInteger:[(W5PeerSnifferResponsePayload *)self status]];
  [v3 setObject:v6 forKey:@"status"];

  version = [(W5PeerSnifferResponsePayload *)self filePaths];

  if (version)
  {
    filePaths = [(W5PeerSnifferResponsePayload *)self filePaths];
    v18 = 0;
    version = [NSKeyedArchiver archivedDataWithRootObject:filePaths requiringSecureCoding:1 error:&v18];
    v8 = v18;

    if (!version || v8)
    {
      v9 = sub_100098A04();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315906;
        v20 = "[W5PeerSnifferResponsePayload encode]";
        v21 = 2080;
        v22 = "W5PeerSnifferResponsePayload.m";
        v23 = 1024;
        v24 = 82;
        v25 = 2114;
        v26 = v8;
        LODWORD(v17) = 38;
        v16 = &v19;
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      [v3 setObject:version forKey:@"paths"];
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = [(W5PeerSnifferResponsePayload *)self uuid:v16];

  if (v10)
  {
    uuid = [(W5PeerSnifferResponsePayload *)self uuid];
    [v3 setObject:uuid forKey:@"uuid"];
  }

LABEL_13:
  if (![v3 count])
  {
    v13 = [NSString stringWithFormat:@"%s: empty payload", "[W5PeerSnifferResponsePayload encode]"];
    v14 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v13 userInfo:0];
    v15 = v14;

    objc_exception_throw(v14);
  }

  return v3;
}

@end