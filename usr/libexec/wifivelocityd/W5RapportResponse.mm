@interface W5RapportResponse
+ (id)responseWithPayload:(id)payload options:(id)options error:(id)error;
- (W5RapportResponse)initWithPayload:(id)payload options:(id)options error:(id)error;
@end

@implementation W5RapportResponse

+ (id)responseWithPayload:(id)payload options:(id)options error:(id)error
{
  errorCopy = error;
  optionsCopy = options;
  payloadCopy = payload;
  v10 = [objc_alloc(objc_opt_class()) initWithPayload:payloadCopy options:optionsCopy error:errorCopy];

  return v10;
}

- (W5RapportResponse)initWithPayload:(id)payload options:(id)options error:(id)error
{
  payloadCopy = payload;
  optionsCopy = options;
  errorCopy = error;
  v16.receiver = self;
  v16.super_class = W5RapportResponse;
  v12 = [(W5RapportResponse *)&v16 init];
  v13 = v12;
  if (!v12)
  {
    v14 = sub_100098A04();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    v17 = 136315650;
    v18 = "[W5RapportResponse initWithPayload:options:error:]";
    v19 = 2080;
    v20 = "W5RapportResponse.m";
    v21 = 1024;
    v22 = 40;
    goto LABEL_4;
  }

  objc_storeStrong(&v12->_error, error);
  objc_storeStrong(&v13->_payload, payload);
  objc_storeStrong(&v13->_options, options);
  v14 = sub_100098A04();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136316418;
    v18 = "[W5RapportResponse initWithPayload:options:error:]";
    v19 = 2080;
    v20 = "W5RapportResponse.m";
    v21 = 1024;
    v22 = 34;
    v23 = 2114;
    v24 = payloadCopy;
    v25 = 2114;
    v26 = optionsCopy;
    v27 = 2114;
    v28 = errorCopy;
LABEL_4:
    _os_log_send_and_compose_impl();
  }

LABEL_5:

  return v13;
}

@end