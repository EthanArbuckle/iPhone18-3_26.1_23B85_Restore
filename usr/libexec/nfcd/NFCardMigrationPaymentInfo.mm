@interface NFCardMigrationPaymentInfo
- (NFCardMigrationPaymentInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFCardMigrationPaymentInfo

- (void)encodeWithCoder:(id)a3
{
  appletIdentifier = self->_appletIdentifier;
  v5 = a3;
  [v5 encodeObject:appletIdentifier forKey:@"appletIdentifiers"];
  [v5 encodeInt32:self->_merchantCapabilities forKey:@"merchantCapabilities"];
  [v5 encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [v5 encodeObject:self->_countryCode forKey:@"countryCode"];
}

- (NFCardMigrationPaymentInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NFCardMigrationPaymentInfo;
  v5 = [(NFCardMigrationPaymentInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifiers"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v6;

    v5->_merchantCapabilities = [v4 decodeInt32ForKey:@"merchantCapabilities"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v10;
  }

  return v5;
}

@end