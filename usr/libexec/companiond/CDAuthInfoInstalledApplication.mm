@interface CDAuthInfoInstalledApplication
- (CDAuthInfoInstalledApplication)initWithApplicationRecord:(id)record;
- (id)applicationIdentifier;
- (id)bundleIdentifier;
- (id)localizedName;
- (id)teamIdentifier;
@end

@implementation CDAuthInfoInstalledApplication

- (CDAuthInfoInstalledApplication)initWithApplicationRecord:(id)record
{
  recordCopy = record;
  v9.receiver = self;
  v9.super_class = CDAuthInfoInstalledApplication;
  v6 = [(CDAuthInfoInstalledApplication *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationRecord, record);
  }

  return v7;
}

- (id)bundleIdentifier
{
  bundleIdentifier = [(LSApplicationRecord *)self->_applicationRecord bundleIdentifier];
  v3 = [bundleIdentifier copy];

  return v3;
}

- (id)applicationIdentifier
{
  applicationIdentifier = [(LSApplicationRecord *)self->_applicationRecord applicationIdentifier];
  v3 = [applicationIdentifier copy];

  return v3;
}

- (id)teamIdentifier
{
  teamIdentifier = [(LSApplicationRecord *)self->_applicationRecord teamIdentifier];
  v3 = [teamIdentifier copy];

  return v3;
}

- (id)localizedName
{
  localizedName = [(LSApplicationRecord *)self->_applicationRecord localizedName];
  v3 = [localizedName copy];

  return v3;
}

@end