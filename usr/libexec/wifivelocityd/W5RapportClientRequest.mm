@interface W5RapportClientRequest
- (NSString)description;
- (W5RapportClientRequest)initWithPayload:(id)payload options:(id)options handler:(id)handler;
@end

@implementation W5RapportClientRequest

- (W5RapportClientRequest)initWithPayload:(id)payload options:(id)options handler:(id)handler
{
  payloadCopy = payload;
  optionsCopy = options;
  handlerCopy = handler;
  v12 = sub_100098A04();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136316418;
    v22 = "[W5RapportClientRequest initWithPayload:options:handler:]";
    v23 = 2080;
    v24 = "W5RapportClientRequest.m";
    v25 = 1024;
    v26 = 18;
    v27 = 2114;
    v28 = optionsCopy;
    v29 = 2114;
    v30 = payloadCopy;
    v31 = 2114;
    v32 = objc_retainBlock(handlerCopy);
    _os_log_send_and_compose_impl();
  }

  v20.receiver = self;
  v20.super_class = W5RapportClientRequest;
  v13 = [(W5RapportClientRequest *)&v20 init];
  v14 = v13;
  if (v13 && (objc_storeStrong(&v13->_payload, payload), v15 = objc_retainBlock(handlerCopy), handler = v14->_handler, v14->_handler = v15, handler, v14->_handler))
  {
    v17 = optionsCopy;
    p_super = &v14->_options->super;
    v14->_options = v17;
  }

  else
  {

    p_super = sub_100098A04();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315650;
      v22 = "[W5RapportClientRequest initWithPayload:options:handler:]";
      v23 = 2080;
      v24 = "W5RapportClientRequest.m";
      v25 = 1024;
      v26 = 34;
      _os_log_send_and_compose_impl();
    }

    v14 = 0;
  }

  return v14;
}

- (NSString)description
{
  v3 = [NSMutableString stringWithCapacity:0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ : %p", v5, self];

  payload = [(W5RapportClientRequest *)self payload];
  [v3 appendFormat:@" payload='%@'", payload];

  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

@end