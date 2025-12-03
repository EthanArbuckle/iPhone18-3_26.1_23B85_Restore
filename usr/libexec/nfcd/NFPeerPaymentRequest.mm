@interface NFPeerPaymentRequest
- (NFPeerPaymentRequest)initWithCoder:(id)coder;
- (NFPeerPaymentRequest)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFPeerPaymentRequest

- (NFPeerPaymentRequest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = NFPeerPaymentRequest;
  v5 = [(NFPeerPaymentRequest *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"topUpRequest"];
    topUpRequest = v5->_topUpRequest;
    v5->_topUpRequest = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"transferRequest"];
    transferRequest = v5->_transferRequest;
    v5->_transferRequest = v8;
  }

  return v5;
}

- (NFPeerPaymentRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NFPeerPaymentRequest;
  v5 = [(NFPeerPaymentRequest *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topUpRequest"];
    topUpRequest = v5->_topUpRequest;
    v5->_topUpRequest = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferRequest"];
    transferRequest = v5->_transferRequest;
    v5->_transferRequest = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  topUpRequest = self->_topUpRequest;
  coderCopy = coder;
  [coderCopy encodeObject:topUpRequest forKey:@"topUpRequest"];
  [coderCopy encodeObject:self->_transferRequest forKey:@"transferRequest"];
}

@end