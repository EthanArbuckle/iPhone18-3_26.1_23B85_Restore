@interface DataStreamPendingRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesResponseHeader:(id)header;
- (DataStreamPendingRequest)initWithIdentifier:(id)identifier protocol:(id)protocol topic:(id)topic payload:(id)payload callback:(id)callback;
- (unint64_t)hash;
@end

@implementation DataStreamPendingRequest

- (DataStreamPendingRequest)initWithIdentifier:(id)identifier protocol:(id)protocol topic:(id)topic payload:(id)payload callback:(id)callback
{
  identifierCopy = identifier;
  protocolCopy = protocol;
  topicCopy = topic;
  payloadCopy = payload;
  callbackCopy = callback;
  v23.receiver = self;
  v23.super_class = DataStreamPendingRequest;
  v17 = [(DataStreamPendingRequest *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_protocol, protocol);
    objc_storeStrong(&v18->_topic, topic);
    objc_storeStrong(&v18->_identifier, identifier);
    v19 = objc_retainBlock(callbackCopy);
    callback = v18->_callback;
    v18->_callback = v19;

    objc_storeStrong(&v18->_payload, payload);
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (self == v5)
    {
      v8 = 1;
    }

    else
    {
      identifier = [(DataStreamPendingRequest *)self identifier];
      identifier2 = [(DataStreamPendingRequest *)v5 identifier];
      v8 = [identifier isEqual:identifier2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)matchesResponseHeader:(id)header
{
  headerCopy = header;
  topic = [(DataStreamPendingRequest *)self topic];
  v6 = [headerCopy objectForKeyedSubscript:@"response"];
  if ([topic isEqual:v6])
  {
    identifier = [(DataStreamPendingRequest *)self identifier];
    v8 = [headerCopy objectForKeyedSubscript:@"id"];
    if ([identifier isEqual:v8])
    {
      protocol = [(DataStreamPendingRequest *)self protocol];
      v10 = [headerCopy objectForKeyedSubscript:@"protocol"];
      v11 = [protocol isEqual:v10];
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
  identifier = [(DataStreamPendingRequest *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end