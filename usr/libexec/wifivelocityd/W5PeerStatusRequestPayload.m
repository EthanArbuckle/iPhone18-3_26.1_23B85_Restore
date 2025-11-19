@interface W5PeerStatusRequestPayload
+ (id)payloadFromDictionary:(id)a3;
- (W5PeerStatusRequestPayload)initWithRequest:(id)a3;
- (id)encode;
@end

@implementation W5PeerStatusRequestPayload

+ (id)payloadFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:v3];

  return v4;
}

- (W5PeerStatusRequestPayload)initWithRequest:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = W5PeerStatusRequestPayload;
  v5 = [(W5PeerStatusRequestPayload *)&v9 init];
  if (!v5 || (v6 = [v4 objectForKey:@"version"], (v5->_version = v6) == 0))
  {

    v7 = sub_100098A04();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = "[W5PeerStatusRequestPayload initWithRequest:]";
      v12 = 2080;
      v13 = "W5PeerStatusRequestPayload.m";
      v14 = 1024;
      v15 = 37;
      v16 = 2114;
      v17 = 0;
      _os_log_send_and_compose_impl();
    }

    v5 = 0;
  }

  return v5;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  if (self->_version)
  {
    v4 = [(W5PeerStatusRequestPayload *)self version];
    [v3 setObject:v4 forKey:@"version"];
  }

  if (![v3 count])
  {
    v6 = [NSString stringWithFormat:@"%s: empty payload", "[W5PeerStatusRequestPayload encode]"];
    v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
    v8 = v7;

    objc_exception_throw(v7);
  }

  return v3;
}

@end