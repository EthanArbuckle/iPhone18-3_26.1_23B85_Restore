@interface KeychainItem
- (KeychainItem)initWithAccessGroup:(id)a3;
@end

@implementation KeychainItem

- (KeychainItem)initWithAccessGroup:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KeychainItem;
  v6 = [(KeychainItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessGroup, a3);
  }

  return v7;
}

@end