@interface NFCardMigrationPaymentResponse
- (NFCardMigrationPaymentResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFCardMigrationPaymentResponse

- (void)encodeWithCoder:(id)a3
{
  token = self->_token;
  v5 = a3;
  [v5 encodeObject:token forKey:@"token"];
  [v5 encodeObject:self->_transactions forKey:@"transactions"];
  [v5 encodeObject:self->_certs forKey:@"certs"];
}

- (NFCardMigrationPaymentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NFCardMigrationPaymentResponse;
  v5 = [(NFCardMigrationPaymentResponse *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    token = v5->_token;
    v5->_token = v6;

    v8 = [NFNSCheckedDecoder coder:v4 decodeArrayOfClass:objc_opt_class() forKey:@"transactions"];
    transactions = v5->_transactions;
    v5->_transactions = v8;

    v10 = [NFNSCheckedDecoder coder:v4 decodeDictOfClass:objc_opt_class() forKey:@"certs"];
    certs = v5->_certs;
    v5->_certs = v10;
  }

  return v5;
}

@end