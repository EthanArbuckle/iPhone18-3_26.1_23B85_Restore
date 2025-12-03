@interface NFPeerPaymentResponse
- (NFPeerPaymentResponse)initWithCoder:(id)coder;
- (NFPeerPaymentResponse)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFPeerPaymentResponse

- (NFPeerPaymentResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = NFPeerPaymentResponse;
  v5 = [(NFPeerPaymentResponse *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"transactionData"];
    transactionData = v5->_transactionData;
    v5->_transactionData = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"transactionIdentifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v10;
  }

  return v5;
}

- (NFPeerPaymentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NFPeerPaymentResponse;
  v5 = [(NFPeerPaymentResponse *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionData"];
    transactionData = v5->_transactionData;
    v5->_transactionData = v6;

    v8 = [NFNSCheckedDecoder coder:coderCopy decodeDictOfClass:objc_opt_class() forKey:@"certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_transactionData forKey:@"transactionData"];
  [coderCopy encodeObject:self->_certificates forKey:@"certificates"];
  transactionIdentifier = self->_transactionIdentifier;
  if (transactionIdentifier)
  {
    [coderCopy encodeObject:transactionIdentifier forKey:@"transactionIdentifier"];
  }
}

@end