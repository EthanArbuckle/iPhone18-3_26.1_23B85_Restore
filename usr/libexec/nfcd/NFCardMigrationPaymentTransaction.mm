@interface NFCardMigrationPaymentTransaction
- (NFCardMigrationPaymentTransaction)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFCardMigrationPaymentTransaction

- (void)encodeWithCoder:(id)a3
{
  appletIdentifier = self->_appletIdentifier;
  v5 = a3;
  [v5 encodeObject:appletIdentifier forKey:@"appletIdentifier"];
  [v5 encodeObject:self->_payload forKey:@"payload"];
}

- (NFCardMigrationPaymentTransaction)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NFCardMigrationPaymentTransaction;
  v5 = [(NFCardMigrationPaymentTransaction *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
    payload = v5->_payload;
    v5->_payload = v8;
  }

  return v5;
}

@end