@interface NFCardMigrationPaymentToken
- (NFCardMigrationPaymentToken)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFCardMigrationPaymentToken

- (void)encodeWithCoder:(id)a3
{
  token = self->_token;
  v5 = a3;
  [v5 encodeObject:token forKey:@"token"];
  [v5 encodeObject:self->_signature forKey:@"signature"];
  [v5 encodeObject:self->_certificate forKey:@"certificate"];
}

- (NFCardMigrationPaymentToken)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NFCardMigrationPaymentToken;
  v5 = [(NFCardMigrationPaymentToken *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    token = v5->_token;
    v5->_token = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"certificate"];
    certificate = v5->_certificate;
    v5->_certificate = v10;
  }

  return v5;
}

@end