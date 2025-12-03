@interface APServerRequest
- (APServerRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APServerRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self)
  {
    [coderCopy encodeObject:self->_requestId forKey:@"ri"];
    client = self->_client;
  }

  else
  {
    sub_10039443C(coderCopy, v4);
    client = 0;
  }

  [coderCopy encodeObject:client forKey:@"c"];
  if (self)
  {
    [coderCopy encodeObject:self->_URL forKey:@"u"];
    headers = self->_headers;
  }

  else
  {
    sub_100394448(coderCopy, v6);
    headers = 0;
  }

  [coderCopy encodeObject:headers forKey:@"h"];
  if (self)
  {
    [coderCopy encodeObject:self->_protoBuffer forKey:@"p"];
    responseClass = self->_responseClass;
  }

  else
  {
    sub_100394454(coderCopy, v8);
    responseClass = 0;
  }

  v10 = NSStringFromClass(responseClass);
  [coderCopy encodeObject:v10 forKey:@"rc"];
}

- (APServerRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(APServerRequest *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ri"];
    requestId = v5->_requestId;
    v5->_requestId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"c"];
    client = v5->_client;
    v5->_client = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"u"];
    URL = v5->_URL;
    v5->_URL = v10;

    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"h"];
    headers = v5->_headers;
    v5->_headers = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"p"];
    protoBuffer = v5->_protoBuffer;
    v5->_protoBuffer = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rc"];
    v19 = NSClassFromString(v18);
    responseClass = v5->_responseClass;
    v5->_responseClass = v19;
  }

  return v5;
}

@end