@interface NFECommercePaymentRequest
- (NFECommercePaymentRequest)initWithCardMigrationRequest:(id)request;
- (NFECommercePaymentRequest)initWithCoder:(id)coder;
- (NFECommercePaymentRequest)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFECommercePaymentRequest

- (NFECommercePaymentRequest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = NFECommercePaymentRequest;
  v5 = [(NFECommercePaymentRequest *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"merchantData"];
    merchantData = v5->_merchantData;
    v5->_merchantData = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"transactionAmount"];
    transactionAmount = v5->_transactionAmount;
    v5->_transactionAmount = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"transactionDate"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v16;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"merchantCapabilities"];
    v5->_merchantCapabilities = [v18 unsignedIntValue];

    v19 = [dictionaryCopy objectForKeyedSubscript:@"unpredictableNumber"];
    v5->_unpredictableNumber = [v19 unsignedIntValue];

    v20 = [dictionaryCopy objectForKeyedSubscript:@"merchantIdentifier"];
    networkMerchantIdentifier = v5->_networkMerchantIdentifier;
    v5->_networkMerchantIdentifier = v20;
  }

  return v5;
}

- (NFECommercePaymentRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = NFECommercePaymentRequest;
  v5 = [(NFECommercePaymentRequest *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantData"];
    merchantData = v5->_merchantData;
    v5->_merchantData = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionAmount"];
    transactionAmount = v5->_transactionAmount;
    v5->_transactionAmount = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionDate"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v16;

    v5->_merchantCapabilities = [coderCopy decodeInt32ForKey:@"merchantCapabilities"];
    v5->_unpredictableNumber = [coderCopy decodeInt32ForKey:@"unpredictableNumber"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantIdentifier"];
    networkMerchantIdentifier = v5->_networkMerchantIdentifier;
    v5->_networkMerchantIdentifier = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_appletIdentifier forKey:@"appletIdentifier"];
  [coderCopy encodeObject:self->_merchantData forKey:@"merchantData"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeObject:self->_countryCode forKey:@"countryCode"];
  [coderCopy encodeObject:self->_transactionAmount forKey:@"transactionAmount"];
  [coderCopy encodeObject:self->_transactionDate forKey:@"transactionDate"];
  [coderCopy encodeInt32:self->_merchantCapabilities forKey:@"merchantCapabilities"];
  [coderCopy encodeInt32:self->_unpredictableNumber forKey:@"unpredictableNumber"];
  networkMerchantIdentifier = self->_networkMerchantIdentifier;
  if (networkMerchantIdentifier)
  {
    [coderCopy encodeObject:networkMerchantIdentifier forKey:@"merchantIdentifier"];
  }
}

- (NFECommercePaymentRequest)initWithCardMigrationRequest:(id)request
{
  requestCopy = request;
  v19.receiver = self;
  v19.super_class = NFECommercePaymentRequest;
  v5 = [(NFECommercePaymentRequest *)&v19 init];
  if (v5)
  {
    currencyCode = [requestCopy currencyCode];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = currencyCode;

    countryCode = [requestCopy countryCode];
    countryCode = v5->_countryCode;
    v5->_countryCode = countryCode;

    merchantData = [requestCopy merchantData];
    merchantData = v5->_merchantData;
    v5->_merchantData = merchantData;

    networkMerchantIdentifier = [requestCopy networkMerchantIdentifier];
    networkMerchantIdentifier = v5->_networkMerchantIdentifier;
    v5->_networkMerchantIdentifier = networkMerchantIdentifier;

    transactionDate = [requestCopy transactionDate];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = transactionDate;

    v16 = +[NSDecimalNumber zero];
    transactionAmount = v5->_transactionAmount;
    v5->_transactionAmount = v16;

    v5->_unpredictableNumber = [requestCopy unpredictableNumber];
  }

  return v5;
}

@end