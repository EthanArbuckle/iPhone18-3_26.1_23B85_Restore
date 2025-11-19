@interface MCNewCertificatePayloadHandler
- (void)accessibility;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCNewCertificatePayloadHandler

- (void)setAside
{
  v5 = [(MCNewPayloadHandler *)self payload];
  v3 = [v5 certificatePersistentID];
  v4 = [v5 UUID];
  [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v3 andUUID:v4];

  self->_isSetAside = 1;
}

- (void)unsetAside
{
  v5 = [(MCNewPayloadHandler *)self payload];
  v3 = [v5 certificatePersistentID];
  v4 = [v5 UUID];
  [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v3 andUUID:v4];

  self->_isSetAside = 0;
}

- (void)remove
{
  if (!self->_isSetAside)
  {
    v6 = [(MCNewPayloadHandler *)self payload];
    v4 = [v6 certificatePersistentID];
    v5 = [v6 UUID];
    [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v4 andUUID:v5];
  }
}

- (void)accessibility
{
  v2 = [(MCNewPayloadHandler *)self payload];
  if ([v2 isIdentity] && !objc_msgSend(v2, "isMDMClientIdentity"))
  {
    v3 = &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  }

  else
  {
    v3 = &kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
  }

  v4 = *v3;

  return v4;
}

@end