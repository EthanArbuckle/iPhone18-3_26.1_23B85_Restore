@interface MCNewDefaultsPayloadHandler
- (BOOL)_install;
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (MCNewDefaultsPayloadHandler)initWithPayload:(id)payload profileHandler:(id)handler;
- (void)_remove;
- (void)didInstallOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions;
- (void)didRemoveOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions;
- (void)remove;
@end

@implementation MCNewDefaultsPayloadHandler

- (MCNewDefaultsPayloadHandler)initWithPayload:(id)payload profileHandler:(id)handler
{
  v8.receiver = self;
  v8.super_class = MCNewDefaultsPayloadHandler;
  v4 = [(MCNewPayloadHandler *)&v8 initWithPayload:payload profileHandler:handler];
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableSet);
    changedDomains = v4->_changedDomains;
    v4->_changedDomains = v5;
  }

  return v4;
}

- (BOOL)_install
{
  payload = [(MCNewPayloadHandler *)self payload];
  domains = [payload domains];
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [domains count]);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  domains2 = [payload domains];
  v7 = [domains2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(domains2);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        [(NSMutableSet *)self->_changedDomains addObject:v11];
        v12 = [payload defaultsForDomain:v11];
        if (![MCManagedPreferencesManager addManagedPreferences:v12 toDomain:v11])
        {

          v15 = 0;
          goto LABEL_14;
        }

        v13 = [v5 objectForKey:v11];
        if (v13)
        {
          v14 = v13;
          [v13 addEntriesFromDictionary:v12];
        }

        else
        {
          v14 = [v12 mutableCopy];
        }

        [v5 setObject:v14 forKey:v11];
      }

      v8 = [domains2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_14:

  v16 = +[MCHacks sharedHacks];
  [v16 _sendChangeNotificationsBasedOnDefaultsAdditionByDomain:v5];

  return v15;
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  if ([(MCNewDefaultsPayloadHandler *)self _install:installer])
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v9 = MCDefaultsErrorDomain;
    v10 = MCErrorArray();
    v7 = [NSError MCErrorWithDomain:v9 code:10000 descriptionArray:v10 errorType:MCErrorTypeFatal, 0];

    v8 = v7 == 0;
    if (error && v7)
    {
      v11 = v7;
      v8 = 0;
      *error = v7;
    }
  }

  return v8;
}

- (void)_remove
{
  payload = [(MCNewPayloadHandler *)self payload];
  domains = [payload domains];
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [domains count]);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [payload domains];
  v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        [(NSMutableSet *)self->_changedDomains addObject:v10];
        v11 = [payload defaultsForDomain:v10];
        allKeys = [v11 allKeys];
        [MCManagedPreferencesManager removeManagedPreferences:allKeys fromDomain:v10];
        [v5 setObject:allKeys forKey:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = +[MCHacks sharedHacks];
  [v13 _sendChangeNotificationsBasedOnDefaultsRemovalByDomain:v5];
}

- (void)remove
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if ((isSetAside & 1) == 0)
  {

    [(MCNewDefaultsPayloadHandler *)self _remove];
  }
}

- (void)didInstallOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions
{
  v4 = [(NSMutableSet *)self->_changedDomains allObjects:restrictions];
  [MCManagedPreferencesManager sendManagedPreferencesChangedNotificationForDomains:v4];
}

- (void)didRemoveOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions
{
  v4 = [(NSMutableSet *)self->_changedDomains allObjects:restrictions];
  [MCManagedPreferencesManager sendManagedPreferencesChangedNotificationForDomains:v4];
}

@end