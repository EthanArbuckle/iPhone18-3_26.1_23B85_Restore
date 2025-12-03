@interface NFECommercePaymentResponse
- (NFECommercePaymentResponse)initWithCoder:(id)coder;
- (NFECommercePaymentResponse)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
- (void)setConfirmationBlobHash:(id)hash withSignature:(id)signature version:(unint64_t)version;
@end

@implementation NFECommercePaymentResponse

- (NFECommercePaymentResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = NFECommercePaymentResponse;
  v5 = [(NFECommercePaymentResponse *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"transactionIdentifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"transactionData"];
    transactionData = v5->_transactionData;
    v5->_transactionData = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"confirmationBlobHash"];
    confirmationBlobHash = v5->_confirmationBlobHash;
    v5->_confirmationBlobHash = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"confirmationBlobHashSignature"];
    confirmationBlobSignature = v5->_confirmationBlobSignature;
    v5->_confirmationBlobSignature = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"confirmationBlobVersion"];
    v5->_confirmationBlobVersion = [v14 integerValue];
  }

  return v5;
}

- (NFECommercePaymentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = NFECommercePaymentResponse;
  v5 = [(NFECommercePaymentResponse *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionData"];
    transactionData = v5->_transactionData;
    v5->_transactionData = v8;

    v10 = [NFNSCheckedDecoder coder:coderCopy decodeDictOfClass:objc_opt_class() forKey:@"certs"];
    certs = v5->_certs;
    v5->_certs = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confirmationBlobHash"];
    confirmationBlobHash = v5->_confirmationBlobHash;
    v5->_confirmationBlobHash = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confirmationBlobHashSignature"];
    confirmationBlobSignature = v5->_confirmationBlobSignature;
    v5->_confirmationBlobSignature = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confirmationBlobVersion"];
    v5->_confirmationBlobVersion = [v16 integerValue];

    v17 = [NFNSCheckedDecoder coder:coderCopy decodeArrayOfClass:objc_opt_class() forKey:@"sepCerts"];
    SEPcerts = v5->_SEPcerts;
    v5->_SEPcerts = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_transactionIdentifier forKey:@"transactionIdentifier"];
  [coderCopy encodeObject:self->_transactionData forKey:@"transactionData"];
  [coderCopy encodeObject:self->_certs forKey:@"certs"];
  confirmationBlobHash = self->_confirmationBlobHash;
  if (confirmationBlobHash)
  {
    [coderCopy encodeObject:confirmationBlobHash forKey:@"confirmationBlobHash"];
  }

  confirmationBlobSignature = self->_confirmationBlobSignature;
  if (confirmationBlobSignature)
  {
    [coderCopy encodeObject:confirmationBlobSignature forKey:@"confirmationBlobHashSignature"];
  }

  v6 = [NSNumber numberWithInteger:self->_confirmationBlobVersion];
  [coderCopy encodeObject:v6 forKey:@"confirmationBlobVersion"];

  SEPcerts = self->_SEPcerts;
  if (SEPcerts)
  {
    [coderCopy encodeObject:SEPcerts forKey:@"sepCerts"];
  }
}

- (void)setConfirmationBlobHash:(id)hash withSignature:(id)signature version:(unint64_t)version
{
  hashCopy = hash;
  signatureCopy = signature;
  confirmationBlobHash = self->_confirmationBlobHash;
  self->_confirmationBlobHash = hashCopy;
  v11 = hashCopy;

  confirmationBlobSignature = self->_confirmationBlobSignature;
  self->_confirmationBlobSignature = signatureCopy;

  self->_confirmationBlobVersion = version;
}

@end