@interface NFECommercePaymentRequest
- (NFECommercePaymentRequest)initWithCardMigrationRequest:(id)a3;
- (NFECommercePaymentRequest)initWithCoder:(id)a3;
- (NFECommercePaymentRequest)initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFECommercePaymentRequest

- (NFECommercePaymentRequest)initWithDictionary:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = NFECommercePaymentRequest;
  v5 = [(NFECommercePaymentRequest *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v6;

    v8 = [v4 objectForKeyedSubscript:@"merchantData"];
    merchantData = v5->_merchantData;
    v5->_merchantData = v8;

    v10 = [v4 objectForKeyedSubscript:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v10;

    v12 = [v4 objectForKeyedSubscript:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v12;

    v14 = [v4 objectForKeyedSubscript:@"transactionAmount"];
    transactionAmount = v5->_transactionAmount;
    v5->_transactionAmount = v14;

    v16 = [v4 objectForKeyedSubscript:@"transactionDate"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v16;

    v18 = [v4 objectForKeyedSubscript:@"merchantCapabilities"];
    v5->_merchantCapabilities = [v18 unsignedIntValue];

    v19 = [v4 objectForKeyedSubscript:@"unpredictableNumber"];
    v5->_unpredictableNumber = [v19 unsignedIntValue];

    v20 = [v4 objectForKeyedSubscript:@"merchantIdentifier"];
    networkMerchantIdentifier = v5->_networkMerchantIdentifier;
    v5->_networkMerchantIdentifier = v20;
  }

  return v5;
}

- (NFECommercePaymentRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = NFECommercePaymentRequest;
  v5 = [(NFECommercePaymentRequest *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantData"];
    merchantData = v5->_merchantData;
    v5->_merchantData = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionAmount"];
    transactionAmount = v5->_transactionAmount;
    v5->_transactionAmount = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionDate"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v16;

    v5->_merchantCapabilities = [v4 decodeInt32ForKey:@"merchantCapabilities"];
    v5->_unpredictableNumber = [v4 decodeInt32ForKey:@"unpredictableNumber"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantIdentifier"];
    networkMerchantIdentifier = v5->_networkMerchantIdentifier;
    v5->_networkMerchantIdentifier = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_appletIdentifier forKey:@"appletIdentifier"];
  [v5 encodeObject:self->_merchantData forKey:@"merchantData"];
  [v5 encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [v5 encodeObject:self->_countryCode forKey:@"countryCode"];
  [v5 encodeObject:self->_transactionAmount forKey:@"transactionAmount"];
  [v5 encodeObject:self->_transactionDate forKey:@"transactionDate"];
  [v5 encodeInt32:self->_merchantCapabilities forKey:@"merchantCapabilities"];
  [v5 encodeInt32:self->_unpredictableNumber forKey:@"unpredictableNumber"];
  networkMerchantIdentifier = self->_networkMerchantIdentifier;
  if (networkMerchantIdentifier)
  {
    [v5 encodeObject:networkMerchantIdentifier forKey:@"merchantIdentifier"];
  }
}

- (NFECommercePaymentRequest)initWithCardMigrationRequest:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NFECommercePaymentRequest;
  v5 = [(NFECommercePaymentRequest *)&v19 init];
  if (v5)
  {
    v6 = [v4 currencyCode];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v6;

    v8 = [v4 countryCode];
    countryCode = v5->_countryCode;
    v5->_countryCode = v8;

    v10 = [v4 merchantData];
    merchantData = v5->_merchantData;
    v5->_merchantData = v10;

    v12 = [v4 networkMerchantIdentifier];
    networkMerchantIdentifier = v5->_networkMerchantIdentifier;
    v5->_networkMerchantIdentifier = v12;

    v14 = [v4 transactionDate];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v14;

    v16 = +[NSDecimalNumber zero];
    transactionAmount = v5->_transactionAmount;
    v5->_transactionAmount = v16;

    v5->_unpredictableNumber = [v4 unpredictableNumber];
  }

  return v5;
}

@end