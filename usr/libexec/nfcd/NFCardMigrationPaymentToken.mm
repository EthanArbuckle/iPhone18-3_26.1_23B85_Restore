@interface NFCardMigrationPaymentToken
- (NFCardMigrationPaymentToken)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFCardMigrationPaymentToken

- (void)encodeWithCoder:(id)coder
{
  token = self->_token;
  coderCopy = coder;
  [coderCopy encodeObject:token forKey:@"token"];
  [coderCopy encodeObject:self->_signature forKey:@"signature"];
  [coderCopy encodeObject:self->_certificate forKey:@"certificate"];
}

- (NFCardMigrationPaymentToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NFCardMigrationPaymentToken;
  v5 = [(NFCardMigrationPaymentToken *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    token = v5->_token;
    v5->_token = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"certificate"];
    certificate = v5->_certificate;
    v5->_certificate = v10;
  }

  return v5;
}

@end