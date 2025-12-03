@interface APMetricHTTPDeliveryRequest
- (APMetricHTTPDeliveryRequest)initWithCoder:(id)coder;
- (id)buildSignatureUsingSigning:(id)signing error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APMetricHTTPDeliveryRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(APMetricHTTPDeliveryRequest *)self data];
  [coderCopy encodeObject:data forKey:@"data"];

  billing = [(APMetricHTTPDeliveryRequest *)self billing];
  [coderCopy encodeObject:billing forKey:@"billing"];

  headers = [(APMetricHTTPDeliveryRequest *)self headers];
  [coderCopy encodeObject:headers forKey:@"headers"];

  destination = [(APMetricHTTPDeliveryRequest *)self destination];
  value = [destination value];
  [coderCopy encodeObject:value forKey:@"destination"];

  signature = [(APMetricHTTPDeliveryRequest *)self signature];
  [coderCopy encodeObject:signature forKey:@"signature"];
}

- (APMetricHTTPDeliveryRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(APMetricHTTPDeliveryRequest *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"billing"];
    billing = v5->_billing;
    v5->_billing = v8;

    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v10, v11, objc_opt_class(), 0];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"headers"];
    headers = v5->_headers;
    v5->_headers = v13;

    v15 = [APDestination alloc];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destination"];
    v17 = [(APDestination *)v15 initWithString:v16];
    destination = v5->_destination;
    v5->_destination = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v19;
  }

  return v5;
}

- (id)buildSignatureUsingSigning:(id)signing error:(id *)error
{
  signingCopy = signing;
  data = [(APMetricHTTPDeliveryRequest *)self data];
  v8 = [signingCopy signatureForData:data error:error];

  v9 = [v8 base64EncodedStringWithOptions:32];
  [(APMetricHTTPDeliveryRequest *)self setSignature:v9];

  signature = [(APMetricHTTPDeliveryRequest *)self signature];

  return signature;
}

@end