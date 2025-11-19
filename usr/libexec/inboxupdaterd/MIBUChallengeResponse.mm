@interface MIBUChallengeResponse
- (BOOL)_deserialize:(id)a3;
- (MIBUChallengeResponse)init;
- (id)serialize;
@end

@implementation MIBUChallengeResponse

- (MIBUChallengeResponse)init
{
  v5.receiver = self;
  v5.super_class = MIBUChallengeResponse;
  v2 = [(MIBUNFCResponse *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUChallengeResponse *)v2 setSignatureBlob:0];
    [(MIBUChallengeResponse *)v3 setCertChainBlob:0];
  }

  return v3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  v4 = [(MIBUChallengeResponse *)self signatureBlob];
  v5 = v4;
  if (!v4)
  {
    v5 = objc_opt_new();
  }

  v14[0] = v5;
  v6 = [(MIBUChallengeResponse *)self certChainBlob];
  v7 = v6;
  if (!v6)
  {
    v7 = objc_opt_new();
  }

  v14[1] = v7;
  v8 = [NSArray arrayWithObjects:v14 count:2];
  if (!v6)
  {
  }

  if (!v4)
  {
  }

  if ([v3 serialize:&off_1000A9EA8 withValue:v8])
  {
    v9 = [(MIBUNFCResponse *)self error];
    v10 = [v3 serializeResponseError:v9];

    if (v10)
    {
      v11 = [v3 serializedData];
      goto LABEL_12;
    }

    sub_100064D2C(self, &v13);
  }

  else
  {
    sub_100064C94(&v13);
  }

  v11 = v13;
LABEL_12:

  return v11;
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
      dispatch_once(qword_1000B84A8, &stru_10009F018);
    }

    v16 = qword_1000B84A0;
    if (!os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *v24 = 0;
    v18 = "Failed to deserialize payload for Challenge command";
    goto LABEL_31;
  }

  v23 = 0;
  v7 = [(MIBUDeserializer *)v5 deserializeResponseError:&v23];
  v8 = v23;
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009F038);
    }

    v19 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      sub_100040548(&_mh_execute_header, v19, v20, "Failed to deserialize response error", v24);
    }

    v13 = 0;
    v11 = 0;
    goto LABEL_29;
  }

  if (v8)
  {
    v13 = 0;
    v11 = 0;
    goto LABEL_7;
  }

  v10 = [v6 objectForKey:&off_1000A90C0];
  if (!v10)
  {
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009F058);
    }

    v16 = qword_1000B84A0;
    if (!os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *v24 = 0;
    v18 = "Failed to deserialize signature blob";
LABEL_31:
    sub_100040548(&_mh_execute_header, v16, v17, v18, v24);
LABEL_22:
    v13 = 0;
    v11 = 0;
LABEL_28:
    v9 = 0;
LABEL_29:
    v14 = 0;
    goto LABEL_8;
  }

  v11 = v10;
  [(MIBUChallengeResponse *)self setSignatureBlob:v10];
  v12 = [v6 objectForKey:&off_1000A90D8];
  if (!v12)
  {
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009F078);
    }

    v21 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      sub_100040548(&_mh_execute_header, v21, v22, "Failed to deserialize cert chain blob", v24);
    }

    v13 = 0;
    goto LABEL_28;
  }

  v13 = v12;
  [(MIBUChallengeResponse *)self setCertChainBlob:v12];
  v9 = 0;
LABEL_7:
  v14 = 1;
LABEL_8:
  [(MIBUNFCResponse *)self setError:v9];

  return v14;
}

@end