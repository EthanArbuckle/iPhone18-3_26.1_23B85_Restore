@interface NFCardMigrationPaymentRequest
- (NFCardMigrationPaymentRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFCardMigrationPaymentRequest

- (void)encodeWithCoder:(id)coder
{
  token = self->_token;
  coderCopy = coder;
  [coderCopy encodeObject:token forKey:@"token"];
  [coderCopy encodeObject:self->_passInfos forKey:@"passInfos"];
  [coderCopy encodeObject:self->_merchantData forKey:@"merchantData"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeObject:self->_countryCode forKey:@"countryCode"];
  [coderCopy encodeObject:self->_transactionDate forKey:@"transactionDate"];
  [coderCopy encodeInt32:self->_unpredictableNumber forKey:@"unpredictableNumber"];
  [coderCopy encodeObject:self->_networkMerchantIdentifier forKey:@"merchantIdentifier"];
}

- (NFCardMigrationPaymentRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = NFCardMigrationPaymentRequest;
  v5 = [(NFCardMigrationPaymentRequest *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    token = v5->_token;
    v5->_token = v6;

    v8 = [NFNSCheckedDecoder coder:coderCopy decodeArrayOfClass:objc_opt_class() forKey:@"passInfos"];
    passInfos = v5->_passInfos;
    v5->_passInfos = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantData"];
    merchantData = v5->_merchantData;
    v5->_merchantData = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionDate"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v16;

    v5->_unpredictableNumber = [coderCopy decodeInt32ForKey:@"unpredictableNumber"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantIdentifier"];
    networkMerchantIdentifier = v5->_networkMerchantIdentifier;
    v5->_networkMerchantIdentifier = v18;
  }

  return v5;
}

@end