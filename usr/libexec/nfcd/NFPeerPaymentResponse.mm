@interface NFPeerPaymentResponse
- (NFPeerPaymentResponse)initWithCoder:(id)a3;
- (NFPeerPaymentResponse)initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFPeerPaymentResponse

- (NFPeerPaymentResponse)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NFPeerPaymentResponse;
  v5 = [(NFPeerPaymentResponse *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"transactionData"];
    transactionData = v5->_transactionData;
    v5->_transactionData = v6;

    v8 = [v4 objectForKeyedSubscript:@"certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v8;

    v10 = [v4 objectForKeyedSubscript:@"transactionIdentifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v10;
  }

  return v5;
}

- (NFPeerPaymentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NFPeerPaymentResponse;
  v5 = [(NFPeerPaymentResponse *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionData"];
    transactionData = v5->_transactionData;
    v5->_transactionData = v6;

    v8 = [NFNSCheckedDecoder coder:v4 decodeDictOfClass:objc_opt_class() forKey:@"certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_transactionData forKey:@"transactionData"];
  [v5 encodeObject:self->_certificates forKey:@"certificates"];
  transactionIdentifier = self->_transactionIdentifier;
  if (transactionIdentifier)
  {
    [v5 encodeObject:transactionIdentifier forKey:@"transactionIdentifier"];
  }
}

@end