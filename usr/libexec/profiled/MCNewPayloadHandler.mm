@interface MCNewPayloadHandler
- (MCNewPayloadHandler)initWithPayload:(id)payload profileHandler:(id)handler;
- (MCProfileHandler)profileHandler;
- (id)_temporaryPersistentIDForIdentityUUID:(id)d outError:(id *)error;
- (void)_touchDependencyBetweenPersistentID:(id)d andUUID:(id)iD;
- (void)_touchDependencyBetweenPersistentID:(id)d andUUID:(id)iD personaID:(id)personaID;
@end

@implementation MCNewPayloadHandler

- (MCNewPayloadHandler)initWithPayload:(id)payload profileHandler:(id)handler
{
  payloadCopy = payload;
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = MCNewPayloadHandler;
  v9 = [(MCNewPayloadHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_payload, payload);
    objc_storeWeak(&v10->_profileHandler, handlerCopy);
  }

  return v10;
}

- (void)_touchDependencyBetweenPersistentID:(id)d andUUID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:dCopy andUUID:iDCopy];
  [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:dCopy andUUID:iDCopy];
}

- (void)_touchDependencyBetweenPersistentID:(id)d andUUID:(id)iD personaID:(id)personaID
{
  personaIDCopy = personaID;
  iDCopy = iD;
  dCopy = d;
  [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:dCopy andUUID:iDCopy forSystem:1 user:0 personaID:personaIDCopy];
  [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:dCopy andUUID:iDCopy forSystem:1 user:0 personaID:personaIDCopy];
}

- (id)_temporaryPersistentIDForIdentityUUID:(id)d outError:(id *)error
{
  dCopy = d;
  if (!dCopy || (-[MCNewPayloadHandler profileHandler](self, "profileHandler"), v7 = objc_claimAutoreleasedReturnValue(), [v7 payloadHandlerWithUUID:dCopy], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    certificatePersistentID = 0;
LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  payload = [v8 payload];
  certificatePersistentID = [payload certificatePersistentID];
  if (certificatePersistentID)
  {
LABEL_14:
    payload2 = [(MCNewPayloadHandler *)self payload];
    uUID = [payload2 UUID];
    [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:certificatePersistentID andUUID:uUID];

    goto LABEL_15;
  }

  v26 = 0;
  v11 = [v8 copyIdentityImmediatelyWithInteractionClient:0 outError:&v26];
  v12 = v26;
  v13 = v12;
  if (!v12 && v11)
  {
    v25 = v11;
    accessibility = [v8 accessibility];
    v15 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v28 = accessibility;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Getting temporary persistent ID for identity, storing with accessibility %@", buf, 0xCu);
    }

    payload3 = [(MCNewPayloadHandler *)self payload];
    uUID2 = [payload3 UUID];
    v17 = kMCAppleIdentitiesKeychainGroup;
    profileHandler = [(MCNewPayloadHandler *)self profileHandler];
    profile = [profileHandler profile];
    certificatePersistentID = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", v25, uUID2, v17, [profile isInstalledForSystem], accessibility);

    CFRelease(v25);
    goto LABEL_14;
  }

  if (!v12)
  {
    certificatePersistentID = 0;
    goto LABEL_14;
  }

  if (error)
  {
    v20 = v13;
    certificatePersistentID = 0;
    *error = v13;
  }

  else
  {
    certificatePersistentID = 0;
  }

LABEL_16:

  return certificatePersistentID;
}

- (MCProfileHandler)profileHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_profileHandler);

  return WeakRetained;
}

@end