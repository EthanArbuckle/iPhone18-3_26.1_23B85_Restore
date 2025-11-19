@interface W5PeerSimpleResponsePayload
+ (id)payloadFromDictionary:(id)a3;
- (W5PeerSimpleResponsePayload)initWithRequest:(id)a3;
@end

@implementation W5PeerSimpleResponsePayload

+ (id)payloadFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:v3];

  return v4;
}

- (W5PeerSimpleResponsePayload)initWithRequest:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = W5PeerSimpleResponsePayload;
  v5 = [(W5PeerSimpleResponsePayload *)&v9 init];
  if (v5)
  {
    v6 = v4;
    p_super = &v5->_dictionary->super;
    v5->_dictionary = v6;
  }

  else
  {
    p_super = sub_100098A04();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = "[W5PeerSimpleResponsePayload initWithRequest:]";
      v12 = 2080;
      v13 = "W5PeerSimpleResponsePayload.m";
      v14 = 1024;
      v15 = 33;
      v16 = 2114;
      v17 = 0;
      _os_log_send_and_compose_impl();
    }
  }

  return v5;
}

@end