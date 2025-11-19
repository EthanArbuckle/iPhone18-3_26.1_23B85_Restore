@interface MCNewDefaultsPayloadHandler
- (BOOL)_install;
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (MCNewDefaultsPayloadHandler)initWithPayload:(id)a3 profileHandler:(id)a4;
- (void)_remove;
- (void)didInstallOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4;
- (void)didRemoveOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4;
- (void)remove;
@end

@implementation MCNewDefaultsPayloadHandler

- (MCNewDefaultsPayloadHandler)initWithPayload:(id)a3 profileHandler:(id)a4
{
  v8.receiver = self;
  v8.super_class = MCNewDefaultsPayloadHandler;
  v4 = [(MCNewPayloadHandler *)&v8 initWithPayload:a3 profileHandler:a4];
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
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 domains];
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v3 domains];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        [(NSMutableSet *)self->_changedDomains addObject:v11];
        v12 = [v3 defaultsForDomain:v11];
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

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  if ([(MCNewDefaultsPayloadHandler *)self _install:a3])
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
    if (a6 && v7)
    {
      v11 = v7;
      v8 = 0;
      *a6 = v7;
    }
  }

  return v8;
}

- (void)_remove
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 domains];
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [v3 domains];
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
        v11 = [v3 defaultsForDomain:v10];
        v12 = [v11 allKeys];
        [MCManagedPreferencesManager removeManagedPreferences:v12 fromDomain:v10];
        [v5 setObject:v12 forKey:v10];
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
  v3 = [(MCNewPayloadHandler *)self profileHandler];
  v4 = [v3 isSetAside];

  if ((v4 & 1) == 0)
  {

    [(MCNewDefaultsPayloadHandler *)self _remove];
  }
}

- (void)didInstallOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4
{
  v4 = [(NSMutableSet *)self->_changedDomains allObjects:a3];
  [MCManagedPreferencesManager sendManagedPreferencesChangedNotificationForDomains:v4];
}

- (void)didRemoveOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4
{
  v4 = [(NSMutableSet *)self->_changedDomains allObjects:a3];
  [MCManagedPreferencesManager sendManagedPreferencesChangedNotificationForDomains:v4];
}

@end