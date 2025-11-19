@interface W5PeerFileTransferRequestPayload
+ (id)payloadFromDictionary:(id)a3;
- (W5PeerFileTransferRequestPayload)initWithRequest:(id)a3;
- (id)encode;
@end

@implementation W5PeerFileTransferRequestPayload

+ (id)payloadFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:v3];

  return v4;
}

- (W5PeerFileTransferRequestPayload)initWithRequest:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = W5PeerFileTransferRequestPayload;
  v5 = [(W5PeerFileTransferRequestPayload *)&v22 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [v4 objectForKey:@"version"];
  v5->_version = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = [NSURL alloc];
  v8 = [v4 objectForKey:@"url"];
  v9 = [v7 initWithString:v8];
  remotePath = v5->_remotePath;
  v5->_remotePath = v9;

  if (!v5->_remotePath)
  {
LABEL_11:
    v14 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  v11 = [v4 objectForKey:@"type"];
  v12 = [NSSet setWithObjects:objc_opt_class(), 0];
  v21 = 0;
  v13 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v12 fromData:v11 error:&v21];
  v14 = v21;
  v5->_type = [v13 integerValue];

  type = v5->_type;
  if (type == 1)
  {
    v16 = [v4 objectForKey:@"targetID"];
    targetID = v5->_targetID;
    v5->_targetID = v16;

    if (v5->_targetID)
    {
      v18 = [v4 objectForKey:@"publicKey"];
      p_super = &v5->_publicKey->super;
      v5->_publicKey = v18;
LABEL_9:

      goto LABEL_10;
    }

LABEL_12:

    p_super = sub_100098A04();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315650;
      v24 = "[W5PeerFileTransferRequestPayload initWithRequest:]";
      v25 = 2080;
      v26 = "W5PeerFileTransferRequestPayload.m";
      v27 = 1024;
      v28 = 53;
      _os_log_send_and_compose_impl();
    }

    v5 = 0;
    goto LABEL_9;
  }

  if (!type)
  {
    goto LABEL_12;
  }

LABEL_10:

  return v5;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(W5PeerFileTransferRequestPayload *)self version];

  if (v4 && (-[W5PeerFileTransferRequestPayload version](self, "version"), v5 = objc_claimAutoreleasedReturnValue(), [v3 setObject:v5 forKey:@"version"], v5, -[W5PeerFileTransferRequestPayload remotePath](self, "remotePath"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v6 = [(W5PeerFileTransferRequestPayload *)self remotePath];
    v7 = [v6 absoluteString];
    [v3 setObject:v7 forKey:@"url"];

    if ([(W5PeerFileTransferRequestPayload *)self type])
    {
      v8 = [[NSNumber alloc] initWithInteger:{-[W5PeerFileTransferRequestPayload type](self, "type")}];
      v21 = 0;
      v4 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v21];
      v9 = v21;

      [v3 setObject:v4 forKey:@"type"];
      if ([(W5PeerFileTransferRequestPayload *)self type]== 1)
      {
        v10 = [(W5PeerFileTransferRequestPayload *)self targetID];

        if (!v10)
        {
          goto LABEL_12;
        }

        v11 = [(W5PeerFileTransferRequestPayload *)self targetID];
        [v3 setObject:v11 forKey:@"targetID"];
      }

      v12 = [(W5PeerFileTransferRequestPayload *)self publicKey];

      if (v12)
      {
        v13 = [(W5PeerFileTransferRequestPayload *)self publicKey];
        [v3 setObject:v13 forKey:@"publicKey"];
      }

      v14 = sub_100098A04();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315906;
        v23 = "[W5PeerFileTransferRequestPayload encode]";
        v24 = 2080;
        v25 = "W5PeerFileTransferRequestPayload.m";
        v26 = 1024;
        v27 = 85;
        v28 = 2114;
        v29 = v3;
        LODWORD(v20) = 38;
        v19 = &v22;
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      v9 = 0;
      v4 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_12:
  if (![v3 count])
  {
    v16 = [NSString stringWithFormat:@"%s: empty payload", "[W5PeerFileTransferRequestPayload encode]"];
    v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
    v18 = v17;

    objc_exception_throw(v17);
  }

  return v3;
}

@end