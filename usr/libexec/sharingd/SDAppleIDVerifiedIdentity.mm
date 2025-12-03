@interface SDAppleIDVerifiedIdentity
- (SDAppleIDVerifiedIdentity)initWithAccountIdentifier:(id)identifier emailOrPhone:(id)phone;
@end

@implementation SDAppleIDVerifiedIdentity

- (SDAppleIDVerifiedIdentity)initWithAccountIdentifier:(id)identifier emailOrPhone:(id)phone
{
  identifierCopy = identifier;
  phoneCopy = phone;
  v12.receiver = self;
  v12.super_class = SDAppleIDVerifiedIdentity;
  v9 = [(SDAppleIDVerifiedIdentity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountIdentifier, identifier);
    objc_storeStrong(&v10->_emailOrPhone, phone);
  }

  return v10;
}

@end