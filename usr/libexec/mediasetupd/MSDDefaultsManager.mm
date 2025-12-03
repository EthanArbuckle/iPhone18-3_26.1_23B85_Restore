@interface MSDDefaultsManager
+ (id)sharedManager;
- (BOOL)clearObjectForDefault:(id)default;
- (BOOL)isDeveloperProfileLoaded;
- (BOOL)removeObjectForDefault:(id)default;
- (BOOL)setObject:(id)object forDefault:(id)default;
- (BOOL)setObjectWithCustomClass:(id)class forDefault:(id)default;
- (MSDDefaultsManager)init;
- (NSDictionary)dictionaryRepresentation;
- (id)_decodeObject:(id)object forKey:(id)key;
- (id)objectForDefault:(id)default;
- (id)objectForDefaultWithCustomClass:(id)class;
- (id)objectForKeyInDefaultDomain:(id)domain;
- (id)objectForKeyInDeveloperDomain:(id)domain;
- (void)clearDeveloperDefaults;
- (void)clearPrivateAndSharedLocalData;
@end

@implementation MSDDefaultsManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000023D8;
  block[3] = &unk_1000508C0;
  block[4] = self;
  if (qword_100059A28 != -1)
  {
    dispatch_once(&qword_100059A28, block);
  }

  v2 = qword_100059A30;

  return v2;
}

- (MSDDefaultsManager)init
{
  v10.receiver = self;
  v10.super_class = MSDDefaultsManager;
  v2 = [(MSDDefaultsManager *)&v10 init];
  if (v2)
  {
    v3 = [NSUserDefaults alloc];
    v4 = [v3 initWithSuiteName:kMediaSetupDeveloperUserDefaultsDomain];
    MSDDeveloperDefaults = v2->_MSDDeveloperDefaults;
    v2->_MSDDeveloperDefaults = v4;

    v6 = [NSUserDefaults alloc];
    v7 = [v6 initWithSuiteName:kMediaSetupUserDefaultsDomain];
    MSDDefaults = v2->_MSDDefaults;
    v2->_MSDDefaults = v7;
  }

  return v2;
}

- (BOOL)setObjectWithCustomClass:(id)class forDefault:(id)default
{
  defaultCopy = default;
  if (class)
  {
    v12 = 0;
    v7 = [NSKeyedArchiver archivedDataWithRootObject:class requiringSecureCoding:1 error:&v12];
    v8 = v12;
    if (v8)
    {
      v9 = sub_100030FE4();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100002F34(v8, v9);
      }

      v10 = 0;
    }

    else
    {
      v10 = [(MSDDefaultsManager *)self setObject:v7 forDefault:defaultCopy];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)setObject:(id)object forDefault:(id)default
{
  objectCopy = object;
  defaultCopy = default;
  if (defaultCopy)
  {
    isDeveloperProfileLoaded = [(MSDDefaultsManager *)self isDeveloperProfileLoaded];
    v9 = 8;
    if (isDeveloperProfileLoaded)
    {
      v9 = 16;
    }

    [*(&self->super.isa + v9) setObject:objectCopy forKey:defaultCopy];
  }

  else
  {
    v10 = sub_100030FE4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100002FAC();
    }
  }

  return defaultCopy != 0;
}

- (BOOL)clearObjectForDefault:(id)default
{
  defaultCopy = default;
  if (defaultCopy)
  {
    [(NSUserDefaults *)self->_MSDDeveloperDefaults removeObjectForKey:defaultCopy];
    [(NSUserDefaults *)self->_MSDDefaults removeObjectForKey:defaultCopy];
  }

  else
  {
    v5 = sub_100030FE4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100002FE0();
    }
  }

  return defaultCopy != 0;
}

- (BOOL)removeObjectForDefault:(id)default
{
  defaultCopy = default;
  if (defaultCopy)
  {
    isDeveloperProfileLoaded = [(MSDDefaultsManager *)self isDeveloperProfileLoaded];
    v6 = 8;
    if (isDeveloperProfileLoaded)
    {
      v6 = 16;
    }

    [*(&self->super.isa + v6) removeObjectForKey:defaultCopy];
  }

  else
  {
    v7 = sub_100030FE4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100002FE0();
    }
  }

  return defaultCopy != 0;
}

- (id)objectForDefault:(id)default
{
  defaultCopy = default;
  if (defaultCopy)
  {
    if ([(MSDDefaultsManager *)self isDeveloperProfileLoaded])
    {
      MSDDeveloperDefaults = self->_MSDDeveloperDefaults;
    }

    else
    {
      MSDDeveloperDefaults = self->_MSDDefaults;
    }

    v7 = [(NSUserDefaults *)MSDDeveloperDefaults objectForKey:defaultCopy];
  }

  else
  {
    v6 = sub_100030FE4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100003014();
    }

    v7 = 0;
  }

  return v7;
}

- (id)objectForKeyInDeveloperDomain:(id)domain
{
  domainCopy = domain;
  v5 = [(NSUserDefaults *)self->_MSDDeveloperDefaults objectForKey:domainCopy];
  if (v5)
  {
    v6 = [(MSDDefaultsManager *)self _decodeObject:v5 forKey:domainCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)objectForKeyInDefaultDomain:(id)domain
{
  domainCopy = domain;
  v5 = [(NSUserDefaults *)self->_MSDDefaults objectForKey:domainCopy];
  if (v5)
  {
    v6 = [(MSDDefaultsManager *)self _decodeObject:v5 forKey:domainCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)objectForDefaultWithCustomClass:(id)class
{
  classCopy = class;
  v5 = [(MSDDefaultsManager *)self objectForDefault:classCopy];
  if (v5)
  {
    v6 = [(MSDDefaultsManager *)self _decodeObject:v5 forKey:classCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  isDeveloperProfileLoaded = [(MSDDefaultsManager *)self isDeveloperProfileLoaded];
  v4 = 8;
  if (isDeveloperProfileLoaded)
  {
    v4 = 16;
  }

  dictionaryRepresentation = [*(&self->super.isa + v4) dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (BOOL)isDeveloperProfileLoaded
{
  developerProfilesCount = [(MSDDefaultsManager *)self developerProfilesCount];
  if ((developerProfilesCount != 0) != [(NSUserDefaults *)self->_MSDDeveloperDefaults BOOLForKey:@"developerProfileLoaded"])
  {
    [(NSUserDefaults *)self->_MSDDeveloperDefaults setBool:developerProfilesCount != 0 forKey:@"developerProfileLoaded"];
  }

  return developerProfilesCount != 0;
}

- (void)clearDeveloperDefaults
{
  [(MSDDefaultsManager *)self setDeveloperProfilesCount:0];
  MSDDeveloperDefaults = self->_MSDDeveloperDefaults;
  v4 = kMediaSetupDeveloperUserDefaultsDomain;

  [(NSUserDefaults *)MSDDeveloperDefaults removePersistentDomainForName:v4];
}

- (void)clearPrivateAndSharedLocalData
{
  [(MSDDefaultsManager *)self clearObjectForDefault:@"kUserIDToRecordZoneIDMap"];
  [(MSDDefaultsManager *)self clearObjectForDefault:@"privateDatabaseData"];
  [(MSDDefaultsManager *)self clearObjectForDefault:@"privateDatabaseChangesKey"];
  [(MSDDefaultsManager *)self clearObjectForDefault:@"privateDatabaseKeyRefreshTokens"];
  [(MSDDefaultsManager *)self clearObjectForDefault:@"sharedDatabaseData"];
  [(MSDDefaultsManager *)self clearObjectForDefault:@"sharedDatabaseChangesKey"];

  [(MSDDefaultsManager *)self clearObjectForDefault:@"sharedDatabaseKeyRefreshTokens"];
}

- (id)_decodeObject:(id)object forKey:(id)key
{
  keyCopy = key;
  v6 = keyCopy;
  if (object)
  {
    v25 = keyCopy;
    objectCopy = object;
    v24 = objc_opt_class();
    v23 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [NSSet setWithObjects:v24, v23, v8, v9, v10, v11, v12, v13, v14, v15, v16, objc_opt_class(), 0];
    v26 = 0;
    v18 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v17 fromData:objectCopy error:&v26];

    v19 = v26;
    if (v19)
    {
      v20 = sub_100030FE4();
      v6 = v25;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100003048(v25, v19, v20);
      }

      v21 = 0;
    }

    else
    {
      v21 = v18;
      v6 = v25;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end