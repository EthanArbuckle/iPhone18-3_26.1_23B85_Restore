@interface NFCardMigrationPaymentResponse
- (NFCardMigrationPaymentResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFCardMigrationPaymentResponse

- (void)encodeWithCoder:(id)coder
{
  token = self->_token;
  coderCopy = coder;
  [coderCopy encodeObject:token forKey:@"token"];
  [coderCopy encodeObject:self->_transactions forKey:@"transactions"];
  [coderCopy encodeObject:self->_certs forKey:@"certs"];
}

- (NFCardMigrationPaymentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NFCardMigrationPaymentResponse;
  v5 = [(NFCardMigrationPaymentResponse *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    token = v5->_token;
    v5->_token = v6;

    v8 = [NFNSCheckedDecoder coder:coderCopy decodeArrayOfClass:objc_opt_class() forKey:@"transactions"];
    transactions = v5->_transactions;
    v5->_transactions = v8;

    v10 = [NFNSCheckedDecoder coder:coderCopy decodeDictOfClass:objc_opt_class() forKey:@"certs"];
    certs = v5->_certs;
    v5->_certs = v10;
  }

  return v5;
}

@end