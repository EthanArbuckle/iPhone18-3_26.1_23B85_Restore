@interface NFCardMigrationPaymentRequest
- (NFCardMigrationPaymentRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFCardMigrationPaymentRequest

- (void)encodeWithCoder:(id)a3
{
  token = self->_token;
  v5 = a3;
  [v5 encodeObject:token forKey:@"token"];
  [v5 encodeObject:self->_passInfos forKey:@"passInfos"];
  [v5 encodeObject:self->_merchantData forKey:@"merchantData"];
  [v5 encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [v5 encodeObject:self->_countryCode forKey:@"countryCode"];
  [v5 encodeObject:self->_transactionDate forKey:@"transactionDate"];
  [v5 encodeInt32:self->_unpredictableNumber forKey:@"unpredictableNumber"];
  [v5 encodeObject:self->_networkMerchantIdentifier forKey:@"merchantIdentifier"];
}

- (NFCardMigrationPaymentRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = NFCardMigrationPaymentRequest;
  v5 = [(NFCardMigrationPaymentRequest *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    token = v5->_token;
    v5->_token = v6;

    v8 = [NFNSCheckedDecoder coder:v4 decodeArrayOfClass:objc_opt_class() forKey:@"passInfos"];
    passInfos = v5->_passInfos;
    v5->_passInfos = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantData"];
    merchantData = v5->_merchantData;
    v5->_merchantData = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionDate"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v16;

    v5->_unpredictableNumber = [v4 decodeInt32ForKey:@"unpredictableNumber"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantIdentifier"];
    networkMerchantIdentifier = v5->_networkMerchantIdentifier;
    v5->_networkMerchantIdentifier = v18;
  }

  return v5;
}

@end