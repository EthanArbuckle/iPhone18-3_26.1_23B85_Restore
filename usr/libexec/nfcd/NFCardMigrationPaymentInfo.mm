@interface NFCardMigrationPaymentInfo
- (NFCardMigrationPaymentInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFCardMigrationPaymentInfo

- (void)encodeWithCoder:(id)coder
{
  appletIdentifier = self->_appletIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:appletIdentifier forKey:@"appletIdentifiers"];
  [coderCopy encodeInt32:self->_merchantCapabilities forKey:@"merchantCapabilities"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeObject:self->_countryCode forKey:@"countryCode"];
}

- (NFCardMigrationPaymentInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NFCardMigrationPaymentInfo;
  v5 = [(NFCardMigrationPaymentInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifiers"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v6;

    v5->_merchantCapabilities = [coderCopy decodeInt32ForKey:@"merchantCapabilities"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v10;
  }

  return v5;
}

@end