@interface W5RapportResponse
+ (id)responseWithPayload:(id)a3 options:(id)a4 error:(id)a5;
- (W5RapportResponse)initWithPayload:(id)a3 options:(id)a4 error:(id)a5;
@end

@implementation W5RapportResponse

+ (id)responseWithPayload:(id)a3 options:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithPayload:v9 options:v8 error:v7];

  return v10;
}

- (W5RapportResponse)initWithPayload:(id)a3 options:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
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

  objc_storeStrong(&v12->_error, a5);
  objc_storeStrong(&v13->_payload, a3);
  objc_storeStrong(&v13->_options, a4);
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
    v24 = v9;
    v25 = 2114;
    v26 = v10;
    v27 = 2114;
    v28 = v11;
LABEL_4:
    _os_log_send_and_compose_impl();
  }

LABEL_5:

  return v13;
}

@end