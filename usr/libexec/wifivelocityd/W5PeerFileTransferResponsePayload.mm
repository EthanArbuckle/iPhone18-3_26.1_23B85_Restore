@interface W5PeerFileTransferResponsePayload
+ (id)payloadFromDictionary:(id)dictionary;
- (W5PeerFileTransferResponsePayload)initWithRequest:(id)request;
- (id)encode;
@end

@implementation W5PeerFileTransferResponsePayload

+ (id)payloadFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:dictionaryCopy];

  return v4;
}

- (W5PeerFileTransferResponsePayload)initWithRequest:(id)request
{
  requestCopy = request;
  v5 = sub_100098A04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315906;
    v30 = "[W5PeerFileTransferResponsePayload initWithRequest:]";
    v31 = 2080;
    v32 = "W5PeerFileTransferResponsePayload.m";
    v33 = 1024;
    v34 = 30;
    v35 = 2114;
    v36 = requestCopy;
    LODWORD(v26) = 38;
    v25 = &v29;
    _os_log_send_and_compose_impl();
  }

  v28.receiver = self;
  v28.super_class = W5PeerFileTransferResponsePayload;
  v6 = [(W5PeerFileTransferResponsePayload *)&v28 init];
  if (v6 && (v7 = [(NSError *)requestCopy objectForKey:@"version"], (v6->_version = v7) != 0) && ([(NSError *)requestCopy objectForKey:@"status"], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v6->_status = [v8 integerValue];
    v10 = [(NSError *)requestCopy objectForKey:@"publicKey"];
    publicKey = v6->_publicKey;
    v6->_publicKey = v10;

    v12 = [(NSError *)requestCopy objectForKey:@"files"];
    if (v12)
    {
      v13 = objc_opt_class();
      v14 = [NSSet setWithObjects:v13, objc_opt_class(), 0];
      v27 = 0;
      v15 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v14 fromData:v12 error:&v27];
      v16 = v27;
      files = v6->_files;
      v6->_files = v15;
    }

    else
    {
      v16 = 0;
    }

    v18 = [(NSError *)requestCopy objectForKey:@"error", v25, v26];
    error = v6->_error;
    v6->_error = v18;

    v20 = v6->_error;
    if (!v20)
    {
      v21 = 0;
      goto LABEL_14;
    }

    v21 = v20;
    v22 = sub_100098A04();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315906;
      v30 = "[W5PeerFileTransferResponsePayload initWithRequest:]";
      v31 = 2080;
      v32 = "W5PeerFileTransferResponsePayload.m";
      v33 = 1024;
      v34 = 56;
      v35 = 2114;
      v36 = v21;
      _os_log_send_and_compose_impl();
    }
  }

  else
  {

    v22 = sub_100098A04();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315650;
      v30 = "[W5PeerFileTransferResponsePayload initWithRequest:]";
      v31 = 2080;
      v32 = "W5PeerFileTransferResponsePayload.m";
      v33 = 1024;
      v34 = 64;
      _os_log_send_and_compose_impl();
    }

    v12 = 0;
    v16 = 0;
    v9 = 0;
    v21 = 0;
    v6 = 0;
  }

LABEL_14:
  v23 = v6;

  return v23;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = sub_100098A04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    version = [(W5PeerFileTransferResponsePayload *)self version];
    status = [(W5PeerFileTransferResponsePayload *)self status];
    publicKey = [(W5PeerFileTransferResponsePayload *)self publicKey];
    error = [(W5PeerFileTransferResponsePayload *)self error];
    v28 = 136316674;
    v29 = "[W5PeerFileTransferResponsePayload encode]";
    v30 = 2080;
    v31 = "W5PeerFileTransferResponsePayload.m";
    v32 = 1024;
    v33 = 76;
    v34 = 2114;
    v35 = version;
    v36 = 2048;
    v37 = status;
    v38 = 2114;
    v39 = publicKey;
    v40 = 2114;
    v41 = error;
    LODWORD(v25) = 68;
    v23 = &v28;
    _os_log_send_and_compose_impl();
  }

  version2 = [(W5PeerFileTransferResponsePayload *)self version];

  if (version2)
  {
    version3 = [(W5PeerFileTransferResponsePayload *)self version];
    [v3 setObject:version3 forKey:@"version"];

    if ([(W5PeerFileTransferResponsePayload *)self status])
    {
      v11 = [NSNumber numberWithInteger:[(W5PeerFileTransferResponsePayload *)self status]];
      [v3 setObject:v11 forKey:@"status"];

      publicKey2 = [(W5PeerFileTransferResponsePayload *)self publicKey];

      if (publicKey2)
      {
        publicKey3 = [(W5PeerFileTransferResponsePayload *)self publicKey];
        [v3 setObject:publicKey3 forKey:@"publicKey"];
      }

      version2 = [(W5PeerFileTransferResponsePayload *)self files:v23];

      if (version2)
      {
        files = [(W5PeerFileTransferResponsePayload *)self files];
        v27 = 0;
        version2 = [NSKeyedArchiver archivedDataWithRootObject:files requiringSecureCoding:1 error:&v27];
        v15 = v27;

        if (!version2 || v15)
        {
          v16 = sub_100098A04();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v28 = 136315906;
            v29 = "[W5PeerFileTransferResponsePayload encode]";
            v30 = 2080;
            v31 = "W5PeerFileTransferResponsePayload.m";
            v32 = 1024;
            v33 = 96;
            v34 = 2114;
            v35 = v15;
            LODWORD(v26) = 38;
            v24 = &v28;
            _os_log_send_and_compose_impl();
          }
        }

        else
        {
          [v3 setObject:version2 forKey:@"files"];
        }
      }

      else
      {
        v15 = 0;
      }

      v17 = [(W5PeerFileTransferResponsePayload *)self error:v24];

      if (v17)
      {
        error2 = [(W5PeerFileTransferResponsePayload *)self error];
        [v3 setObject:error2 forKey:@"error"];
      }
    }

    else
    {
      v15 = 0;
      version2 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  if (![v3 count])
  {
    v20 = [NSString stringWithFormat:@"%s: empty payload", "[W5PeerFileTransferResponsePayload encode]"];
    v21 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v20 userInfo:0];
    v22 = v21;

    objc_exception_throw(v21);
  }

  return v3;
}

@end