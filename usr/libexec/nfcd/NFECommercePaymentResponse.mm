@interface NFECommercePaymentResponse
- (NFECommercePaymentResponse)initWithCoder:(id)a3;
- (NFECommercePaymentResponse)initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setConfirmationBlobHash:(id)a3 withSignature:(id)a4 version:(unint64_t)a5;
@end

@implementation NFECommercePaymentResponse

- (NFECommercePaymentResponse)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = NFECommercePaymentResponse;
  v5 = [(NFECommercePaymentResponse *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"transactionIdentifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v6;

    v8 = [v4 objectForKeyedSubscript:@"transactionData"];
    transactionData = v5->_transactionData;
    v5->_transactionData = v8;

    v10 = [v4 objectForKeyedSubscript:@"confirmationBlobHash"];
    confirmationBlobHash = v5->_confirmationBlobHash;
    v5->_confirmationBlobHash = v10;

    v12 = [v4 objectForKeyedSubscript:@"confirmationBlobHashSignature"];
    confirmationBlobSignature = v5->_confirmationBlobSignature;
    v5->_confirmationBlobSignature = v12;

    v14 = [v4 objectForKeyedSubscript:@"confirmationBlobVersion"];
    v5->_confirmationBlobVersion = [v14 integerValue];
  }

  return v5;
}

- (NFECommercePaymentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = NFECommercePaymentResponse;
  v5 = [(NFECommercePaymentResponse *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionData"];
    transactionData = v5->_transactionData;
    v5->_transactionData = v8;

    v10 = [NFNSCheckedDecoder coder:v4 decodeDictOfClass:objc_opt_class() forKey:@"certs"];
    certs = v5->_certs;
    v5->_certs = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confirmationBlobHash"];
    confirmationBlobHash = v5->_confirmationBlobHash;
    v5->_confirmationBlobHash = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confirmationBlobHashSignature"];
    confirmationBlobSignature = v5->_confirmationBlobSignature;
    v5->_confirmationBlobSignature = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confirmationBlobVersion"];
    v5->_confirmationBlobVersion = [v16 integerValue];

    v17 = [NFNSCheckedDecoder coder:v4 decodeArrayOfClass:objc_opt_class() forKey:@"sepCerts"];
    SEPcerts = v5->_SEPcerts;
    v5->_SEPcerts = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeObject:self->_transactionIdentifier forKey:@"transactionIdentifier"];
  [v8 encodeObject:self->_transactionData forKey:@"transactionData"];
  [v8 encodeObject:self->_certs forKey:@"certs"];
  confirmationBlobHash = self->_confirmationBlobHash;
  if (confirmationBlobHash)
  {
    [v8 encodeObject:confirmationBlobHash forKey:@"confirmationBlobHash"];
  }

  confirmationBlobSignature = self->_confirmationBlobSignature;
  if (confirmationBlobSignature)
  {
    [v8 encodeObject:confirmationBlobSignature forKey:@"confirmationBlobHashSignature"];
  }

  v6 = [NSNumber numberWithInteger:self->_confirmationBlobVersion];
  [v8 encodeObject:v6 forKey:@"confirmationBlobVersion"];

  SEPcerts = self->_SEPcerts;
  if (SEPcerts)
  {
    [v8 encodeObject:SEPcerts forKey:@"sepCerts"];
  }
}

- (void)setConfirmationBlobHash:(id)a3 withSignature:(id)a4 version:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  confirmationBlobHash = self->_confirmationBlobHash;
  self->_confirmationBlobHash = v8;
  v11 = v8;

  confirmationBlobSignature = self->_confirmationBlobSignature;
  self->_confirmationBlobSignature = v9;

  self->_confirmationBlobVersion = a5;
}

@end