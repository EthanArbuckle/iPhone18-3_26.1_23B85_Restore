@interface KeychainItem
- (KeychainItem)initWithAccessGroup:(id)group;
@end

@implementation KeychainItem

- (KeychainItem)initWithAccessGroup:(id)group
{
  groupCopy = group;
  v9.receiver = self;
  v9.super_class = KeychainItem;
  v6 = [(KeychainItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessGroup, group);
  }

  return v7;
}

@end