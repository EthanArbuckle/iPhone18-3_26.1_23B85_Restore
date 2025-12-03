@interface NFPeerPaymentTransferRequest
- (NFPeerPaymentTransferRequest)initWithCoder:(id)coder;
- (NFPeerPaymentTransferRequest)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFPeerPaymentTransferRequest

- (NFPeerPaymentTransferRequest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = NFPeerPaymentTransferRequest;
  v5 = [(NFPeerPaymentTransferRequest *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"transferAmount"];
    transactionAmount = v5->_transactionAmount;
    v5->_transactionAmount = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"transferAppleTransactionHash"];
    appleTransactionHash = v5->_appleTransactionHash;
    v5->_appleTransactionHash = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"transferPublicTransactionHash"];
    publicTransactionHash = v5->_publicTransactionHash;
    v5->_publicTransactionHash = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"transferDate"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"transferCurrency"];
    transactionCurrency = v5->_transactionCurrency;
    v5->_transactionCurrency = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"transferCountry"];
    transactionCountry = v5->_transactionCountry;
    v5->_transactionCountry = v16;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"transferNonce"];
    nonce = v5->_nonce;
    v5->_nonce = v18;
  }

  return v5;
}

- (NFPeerPaymentTransferRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = NFPeerPaymentTransferRequest;
  v5 = [(NFPeerPaymentTransferRequest *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferAmount"];
    transactionAmount = v5->_transactionAmount;
    v5->_transactionAmount = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferAppleTransactionHash"];
    appleTransactionHash = v5->_appleTransactionHash;
    v5->_appleTransactionHash = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferPublicTransactionHash"];
    publicTransactionHash = v5->_publicTransactionHash;
    v5->_publicTransactionHash = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferDate"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferCurrency"];
    transactionCurrency = v5->_transactionCurrency;
    v5->_transactionCurrency = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferCountry"];
    transactionCountry = v5->_transactionCountry;
    v5->_transactionCountry = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferNonce"];
    nonce = v5->_nonce;
    v5->_nonce = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  transactionAmount = self->_transactionAmount;
  coderCopy = coder;
  [coderCopy encodeObject:transactionAmount forKey:@"transferAmount"];
  [coderCopy encodeObject:self->_appleTransactionHash forKey:@"transferAppleTransactionHash"];
  [coderCopy encodeObject:self->_publicTransactionHash forKey:@"transferPublicTransactionHash"];
  [coderCopy encodeObject:self->_transactionDate forKey:@"transferDate"];
  [coderCopy encodeObject:self->_transactionCurrency forKey:@"transferCurrency"];
  [coderCopy encodeObject:self->_transactionCountry forKey:@"transferCountry"];
  [coderCopy encodeObject:self->_nonce forKey:@"transferNonce"];
}

@end