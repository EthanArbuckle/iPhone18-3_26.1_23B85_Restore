@interface APMetricHTTPDeliveryRequest
- (APMetricHTTPDeliveryRequest)initWithCoder:(id)a3;
- (id)buildSignatureUsingSigning:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APMetricHTTPDeliveryRequest

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(APMetricHTTPDeliveryRequest *)self data];
  [v4 encodeObject:v5 forKey:@"data"];

  v6 = [(APMetricHTTPDeliveryRequest *)self billing];
  [v4 encodeObject:v6 forKey:@"billing"];

  v7 = [(APMetricHTTPDeliveryRequest *)self headers];
  [v4 encodeObject:v7 forKey:@"headers"];

  v8 = [(APMetricHTTPDeliveryRequest *)self destination];
  v9 = [v8 value];
  [v4 encodeObject:v9 forKey:@"destination"];

  v10 = [(APMetricHTTPDeliveryRequest *)self signature];
  [v4 encodeObject:v10 forKey:@"signature"];
}

- (APMetricHTTPDeliveryRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(APMetricHTTPDeliveryRequest *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"billing"];
    billing = v5->_billing;
    v5->_billing = v8;

    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v10, v11, objc_opt_class(), 0];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"headers"];
    headers = v5->_headers;
    v5->_headers = v13;

    v15 = [APDestination alloc];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destination"];
    v17 = [(APDestination *)v15 initWithString:v16];
    destination = v5->_destination;
    v5->_destination = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v19;
  }

  return v5;
}

- (id)buildSignatureUsingSigning:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(APMetricHTTPDeliveryRequest *)self data];
  v8 = [v6 signatureForData:v7 error:a4];

  v9 = [v8 base64EncodedStringWithOptions:32];
  [(APMetricHTTPDeliveryRequest *)self setSignature:v9];

  v10 = [(APMetricHTTPDeliveryRequest *)self signature];

  return v10;
}

@end