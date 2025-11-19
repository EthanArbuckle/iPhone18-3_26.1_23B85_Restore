@interface MCNewPayloadHandler
- (MCNewPayloadHandler)initWithPayload:(id)a3 profileHandler:(id)a4;
- (MCProfileHandler)profileHandler;
- (id)_temporaryPersistentIDForIdentityUUID:(id)a3 outError:(id *)a4;
- (void)_touchDependencyBetweenPersistentID:(id)a3 andUUID:(id)a4;
- (void)_touchDependencyBetweenPersistentID:(id)a3 andUUID:(id)a4 personaID:(id)a5;
@end

@implementation MCNewPayloadHandler

- (MCNewPayloadHandler)initWithPayload:(id)a3 profileHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MCNewPayloadHandler;
  v9 = [(MCNewPayloadHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_payload, a3);
    objc_storeWeak(&v10->_profileHandler, v8);
  }

  return v10;
}

- (void)_touchDependencyBetweenPersistentID:(id)a3 andUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v7 andUUID:v6];
  [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v7 andUUID:v6];
}

- (void)_touchDependencyBetweenPersistentID:(id)a3 andUUID:(id)a4 personaID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v10 andUUID:v9 forSystem:1 user:0 personaID:v8];
  [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v10 andUUID:v9 forSystem:1 user:0 personaID:v8];
}

- (id)_temporaryPersistentIDForIdentityUUID:(id)a3 outError:(id *)a4
{
  v6 = a3;
  if (!v6 || (-[MCNewPayloadHandler profileHandler](self, "profileHandler"), v7 = objc_claimAutoreleasedReturnValue(), [v7 payloadHandlerWithUUID:v6], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v10 = 0;
LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  v9 = [v8 payload];
  v10 = [v9 certificatePersistentID];
  if (v10)
  {
LABEL_14:
    v21 = [(MCNewPayloadHandler *)self payload];
    v22 = [v21 UUID];
    [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v10 andUUID:v22];

    goto LABEL_15;
  }

  v26 = 0;
  v11 = [v8 copyIdentityImmediatelyWithInteractionClient:0 outError:&v26];
  v12 = v26;
  v13 = v12;
  if (!v12 && v11)
  {
    v25 = v11;
    v14 = [v8 accessibility];
    v15 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v28 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Getting temporary persistent ID for identity, storing with accessibility %@", buf, 0xCu);
    }

    v24 = [(MCNewPayloadHandler *)self payload];
    v16 = [v24 UUID];
    v17 = kMCAppleIdentitiesKeychainGroup;
    v18 = [(MCNewPayloadHandler *)self profileHandler];
    v19 = [v18 profile];
    v10 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", v25, v16, v17, [v19 isInstalledForSystem], v14);

    CFRelease(v25);
    goto LABEL_14;
  }

  if (!v12)
  {
    v10 = 0;
    goto LABEL_14;
  }

  if (a4)
  {
    v20 = v13;
    v10 = 0;
    *a4 = v13;
  }

  else
  {
    v10 = 0;
  }

LABEL_16:

  return v10;
}

- (MCProfileHandler)profileHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_profileHandler);

  return WeakRetained;
}

@end