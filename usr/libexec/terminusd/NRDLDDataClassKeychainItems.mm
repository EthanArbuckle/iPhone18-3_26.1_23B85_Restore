@interface NRDLDDataClassKeychainItems
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NRDLDDataClassKeychainItems

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (self)
  {
    remotePublicKey = self->_remotePublicKey;
  }

  else
  {
    remotePublicKey = 0;
  }

  v6 = remotePublicKey;
  v7 = [(NRDLDKeychainItemSecKey *)v6 copy];
  if (v4)
  {
    objc_storeStrong(v4 + 1, v7);
  }

  if (self)
  {
    localPrivateKey = self->_localPrivateKey;
  }

  else
  {
    localPrivateKey = 0;
  }

  v9 = localPrivateKey;
  v10 = [(NRDLDKeychainItemSecKey *)v9 copy];
  if (v4)
  {
    objc_storeStrong(v4 + 2, v10);
  }

  if (self)
  {
    dhLocalPrivateKey = self->_dhLocalPrivateKey;
  }

  else
  {
    dhLocalPrivateKey = 0;
  }

  v12 = dhLocalPrivateKey;
  v13 = [(NRDLDKeychainItemSecKey *)v12 copy];
  if (v4)
  {
    objc_storeStrong(v4 + 4, v13);
  }

  if (self)
  {
    sharedSecret = self->_sharedSecret;
  }

  else
  {
    sharedSecret = 0;
  }

  v15 = sharedSecret;
  v16 = [(NRDLDKeychainItemData *)v15 copy];
  if (v4)
  {
    objc_storeStrong(v4 + 3, v16);
  }

  return v4;
}

@end