@interface NFPeerPaymentRequest
- (NFPeerPaymentRequest)initWithCoder:(id)a3;
- (NFPeerPaymentRequest)initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFPeerPaymentRequest

- (NFPeerPaymentRequest)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NFPeerPaymentRequest;
  v5 = [(NFPeerPaymentRequest *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"topUpRequest"];
    topUpRequest = v5->_topUpRequest;
    v5->_topUpRequest = v6;

    v8 = [v4 objectForKeyedSubscript:@"transferRequest"];
    transferRequest = v5->_transferRequest;
    v5->_transferRequest = v8;
  }

  return v5;
}

- (NFPeerPaymentRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NFPeerPaymentRequest;
  v5 = [(NFPeerPaymentRequest *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topUpRequest"];
    topUpRequest = v5->_topUpRequest;
    v5->_topUpRequest = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferRequest"];
    transferRequest = v5->_transferRequest;
    v5->_transferRequest = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  topUpRequest = self->_topUpRequest;
  v5 = a3;
  [v5 encodeObject:topUpRequest forKey:@"topUpRequest"];
  [v5 encodeObject:self->_transferRequest forKey:@"transferRequest"];
}

@end