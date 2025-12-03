@interface NRDLDKeychainItemData
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NRDLDKeychainItemData

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = NRDLDKeychainItemData;
  v4 = [(NRDLDKeychainItem *)&v9 copyWithZone:zone];
  if (self)
  {
    secretData = self->_secretData;
  }

  else
  {
    secretData = 0;
  }

  v6 = secretData;
  v7 = [(NSData *)v6 copy];
  if (v4)
  {
    objc_storeStrong(v4 + 2, v7);
  }

  return v4;
}

@end