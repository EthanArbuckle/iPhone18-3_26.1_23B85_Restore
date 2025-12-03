@interface MCNewCertificatePayloadHandler
- (void)accessibility;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCNewCertificatePayloadHandler

- (void)setAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  certificatePersistentID = [payload certificatePersistentID];
  uUID = [payload UUID];
  [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:certificatePersistentID andUUID:uUID];

  self->_isSetAside = 1;
}

- (void)unsetAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  certificatePersistentID = [payload certificatePersistentID];
  uUID = [payload UUID];
  [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:certificatePersistentID andUUID:uUID];

  self->_isSetAside = 0;
}

- (void)remove
{
  if (!self->_isSetAside)
  {
    payload = [(MCNewPayloadHandler *)self payload];
    certificatePersistentID = [payload certificatePersistentID];
    uUID = [payload UUID];
    [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:certificatePersistentID andUUID:uUID];
  }
}

- (void)accessibility
{
  payload = [(MCNewPayloadHandler *)self payload];
  if ([payload isIdentity] && !objc_msgSend(payload, "isMDMClientIdentity"))
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