@interface DataStreamPendingRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesResponseHeader:(id)a3;
- (DataStreamPendingRequest)initWithIdentifier:(id)a3 protocol:(id)a4 topic:(id)a5 payload:(id)a6 callback:(id)a7;
- (unint64_t)hash;
@end

@implementation DataStreamPendingRequest

- (DataStreamPendingRequest)initWithIdentifier:(id)a3 protocol:(id)a4 topic:(id)a5 payload:(id)a6 callback:(id)a7
{
  v22 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = DataStreamPendingRequest;
  v17 = [(DataStreamPendingRequest *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_protocol, a4);
    objc_storeStrong(&v18->_topic, a5);
    objc_storeStrong(&v18->_identifier, a3);
    v19 = objc_retainBlock(v16);
    callback = v18->_callback;
    v18->_callback = v19;

    objc_storeStrong(&v18->_payload, a6);
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (self == v5)
    {
      v8 = 1;
    }

    else
    {
      v6 = [(DataStreamPendingRequest *)self identifier];
      v7 = [(DataStreamPendingRequest *)v5 identifier];
      v8 = [v6 isEqual:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)matchesResponseHeader:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamPendingRequest *)self topic];
  v6 = [v4 objectForKeyedSubscript:@"response"];
  if ([v5 isEqual:v6])
  {
    v7 = [(DataStreamPendingRequest *)self identifier];
    v8 = [v4 objectForKeyedSubscript:@"id"];
    if ([v7 isEqual:v8])
    {
      v9 = [(DataStreamPendingRequest *)self protocol];
      v10 = [v4 objectForKeyedSubscript:@"protocol"];
      v11 = [v9 isEqual:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v2 = [(DataStreamPendingRequest *)self identifier];
  v3 = [v2 hash];

  return v3;
}

@end