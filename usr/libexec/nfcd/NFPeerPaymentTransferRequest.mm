@interface NFPeerPaymentTransferRequest
- (NFPeerPaymentTransferRequest)initWithCoder:(id)a3;
- (NFPeerPaymentTransferRequest)initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFPeerPaymentTransferRequest

- (NFPeerPaymentTransferRequest)initWithDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = NFPeerPaymentTransferRequest;
  v5 = [(NFPeerPaymentTransferRequest *)&v21 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"transferAmount"];
    transactionAmount = v5->_transactionAmount;
    v5->_transactionAmount = v6;

    v8 = [v4 objectForKeyedSubscript:@"transferAppleTransactionHash"];
    appleTransactionHash = v5->_appleTransactionHash;
    v5->_appleTransactionHash = v8;

    v10 = [v4 objectForKeyedSubscript:@"transferPublicTransactionHash"];
    publicTransactionHash = v5->_publicTransactionHash;
    v5->_publicTransactionHash = v10;

    v12 = [v4 objectForKeyedSubscript:@"transferDate"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v12;

    v14 = [v4 objectForKeyedSubscript:@"transferCurrency"];
    transactionCurrency = v5->_transactionCurrency;
    v5->_transactionCurrency = v14;

    v16 = [v4 objectForKeyedSubscript:@"transferCountry"];
    transactionCountry = v5->_transactionCountry;
    v5->_transactionCountry = v16;

    v18 = [v4 objectForKeyedSubscript:@"transferNonce"];
    nonce = v5->_nonce;
    v5->_nonce = v18;
  }

  return v5;
}

- (NFPeerPaymentTransferRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = NFPeerPaymentTransferRequest;
  v5 = [(NFPeerPaymentTransferRequest *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferAmount"];
    transactionAmount = v5->_transactionAmount;
    v5->_transactionAmount = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferAppleTransactionHash"];
    appleTransactionHash = v5->_appleTransactionHash;
    v5->_appleTransactionHash = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferPublicTransactionHash"];
    publicTransactionHash = v5->_publicTransactionHash;
    v5->_publicTransactionHash = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferDate"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferCurrency"];
    transactionCurrency = v5->_transactionCurrency;
    v5->_transactionCurrency = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferCountry"];
    transactionCountry = v5->_transactionCountry;
    v5->_transactionCountry = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferNonce"];
    nonce = v5->_nonce;
    v5->_nonce = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  transactionAmount = self->_transactionAmount;
  v5 = a3;
  [v5 encodeObject:transactionAmount forKey:@"transferAmount"];
  [v5 encodeObject:self->_appleTransactionHash forKey:@"transferAppleTransactionHash"];
  [v5 encodeObject:self->_publicTransactionHash forKey:@"transferPublicTransactionHash"];
  [v5 encodeObject:self->_transactionDate forKey:@"transferDate"];
  [v5 encodeObject:self->_transactionCurrency forKey:@"transferCurrency"];
  [v5 encodeObject:self->_transactionCountry forKey:@"transferCountry"];
  [v5 encodeObject:self->_nonce forKey:@"transferNonce"];
}

@end