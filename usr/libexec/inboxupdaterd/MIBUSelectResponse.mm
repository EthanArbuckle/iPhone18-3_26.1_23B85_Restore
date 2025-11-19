@interface MIBUSelectResponse
- (BOOL)_deserialize:(id)a3;
- (MIBUSelectResponse)init;
- (id)serialize;
@end

@implementation MIBUSelectResponse

- (MIBUSelectResponse)init
{
  v5.receiver = self;
  v5.super_class = MIBUSelectResponse;
  v2 = [(MIBUNFCResponse *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUSelectResponse *)v2 setProtocolVersion:0];
  }

  return v3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  if (![(MIBUNFCResponse *)self rejected])
  {
    v4 = [(MIBUSelectResponse *)self protocolVersion];
    v17 = v4;
    v5 = [NSArray arrayWithObjects:&v17 count:1];
    v6 = [v3 serialize:&off_1000A9C20 withValue:v5];

    if (v6)
    {
      v7 = [(MIBUNFCResponse *)self error];
      v8 = [v3 serializeResponseError:v7];

      if (v8)
      {
        v9 = [v3 serializedData];
        goto LABEL_5;
      }

      if (qword_1000B84A8[0] != -1)
      {
        dispatch_once(qword_1000B84A8, &stru_10009E048);
      }

      v12 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        v14 = [(MIBUNFCResponse *)self error];
        v15 = 138543362;
        v16 = v14;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to serialize response error: %{public}@", &v15, 0xCu);
      }
    }

    else
    {
      if (qword_1000B84A8[0] != -1)
      {
        dispatch_once(qword_1000B84A8, &stru_10009E028);
      }

      v11 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v15) = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to serialize protocol version", &v15, 2u);
      }
    }
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (BOOL)_deserialize:(id)a3
{
  v4 = a3;
  v5 = [[MIBUDeserializer alloc] initWithData:v4];

  v6 = [(MIBUDeserializer *)v5 deserialize];
  if (!v6)
  {
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009E068);
    }

    v14 = qword_1000B84A0;
    if (!os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v21 = 0;
    v15 = "Failed to deserialize payload for Select command";
    v16 = &v21;
    goto LABEL_24;
  }

  v20 = 0;
  v7 = [(MIBUDeserializer *)v5 deserializeResponseError:&v20];
  v8 = v20;
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009E088);
    }

    v17 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to deserialize response error", buf, 2u);
    }

    v11 = 0;
    goto LABEL_22;
  }

  if (v8)
  {
    v11 = 0;
    goto LABEL_6;
  }

  v10 = [v6 objectForKey:&off_1000A85F8];
  if (!v10)
  {
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009E0A8);
    }

    v14 = qword_1000B84A0;
    if (!os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    LOWORD(v18) = 0;
    v15 = "Failed to deserialize protocol version";
    v16 = &v18;
LABEL_24:
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v15, v16, 2u);
LABEL_21:
    v11 = 0;
    v9 = 0;
LABEL_22:
    v12 = 0;
    goto LABEL_7;
  }

  v11 = v10;
  [(MIBUSelectResponse *)self setProtocolVersion:v10];
  v9 = 0;
LABEL_6:
  v12 = 1;
LABEL_7:
  [(MIBUNFCResponse *)self setError:v9, v18];

  return v12;
}

@end