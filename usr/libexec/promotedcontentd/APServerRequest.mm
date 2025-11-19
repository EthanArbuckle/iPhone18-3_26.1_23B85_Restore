@interface APServerRequest
- (APServerRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APServerRequest

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  if (self)
  {
    [v11 encodeObject:self->_requestId forKey:@"ri"];
    client = self->_client;
  }

  else
  {
    sub_10039443C(v11, v4);
    client = 0;
  }

  [v11 encodeObject:client forKey:@"c"];
  if (self)
  {
    [v11 encodeObject:self->_URL forKey:@"u"];
    headers = self->_headers;
  }

  else
  {
    sub_100394448(v11, v6);
    headers = 0;
  }

  [v11 encodeObject:headers forKey:@"h"];
  if (self)
  {
    [v11 encodeObject:self->_protoBuffer forKey:@"p"];
    responseClass = self->_responseClass;
  }

  else
  {
    sub_100394454(v11, v8);
    responseClass = 0;
  }

  v10 = NSStringFromClass(responseClass);
  [v11 encodeObject:v10 forKey:@"rc"];
}

- (APServerRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(APServerRequest *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ri"];
    requestId = v5->_requestId;
    v5->_requestId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"c"];
    client = v5->_client;
    v5->_client = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"u"];
    URL = v5->_URL;
    v5->_URL = v10;

    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"h"];
    headers = v5->_headers;
    v5->_headers = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"p"];
    protoBuffer = v5->_protoBuffer;
    v5->_protoBuffer = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rc"];
    v19 = NSClassFromString(v18);
    responseClass = v5->_responseClass;
    v5->_responseClass = v19;
  }

  return v5;
}

@end