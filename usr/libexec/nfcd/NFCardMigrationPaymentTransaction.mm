@interface NFCardMigrationPaymentTransaction
- (NFCardMigrationPaymentTransaction)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFCardMigrationPaymentTransaction

- (void)encodeWithCoder:(id)coder
{
  appletIdentifier = self->_appletIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:appletIdentifier forKey:@"appletIdentifier"];
  [coderCopy encodeObject:self->_payload forKey:@"payload"];
}

- (NFCardMigrationPaymentTransaction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NFCardMigrationPaymentTransaction;
  v5 = [(NFCardMigrationPaymentTransaction *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
    payload = v5->_payload;
    v5->_payload = v8;
  }

  return v5;
}

@end