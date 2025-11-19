@interface SDAppleIDVerifiedIdentity
- (SDAppleIDVerifiedIdentity)initWithAccountIdentifier:(id)a3 emailOrPhone:(id)a4;
@end

@implementation SDAppleIDVerifiedIdentity

- (SDAppleIDVerifiedIdentity)initWithAccountIdentifier:(id)a3 emailOrPhone:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SDAppleIDVerifiedIdentity;
  v9 = [(SDAppleIDVerifiedIdentity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountIdentifier, a3);
    objc_storeStrong(&v10->_emailOrPhone, a4);
  }

  return v10;
}

@end