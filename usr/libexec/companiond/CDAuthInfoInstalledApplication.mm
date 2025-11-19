@interface CDAuthInfoInstalledApplication
- (CDAuthInfoInstalledApplication)initWithApplicationRecord:(id)a3;
- (id)applicationIdentifier;
- (id)bundleIdentifier;
- (id)localizedName;
- (id)teamIdentifier;
@end

@implementation CDAuthInfoInstalledApplication

- (CDAuthInfoInstalledApplication)initWithApplicationRecord:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDAuthInfoInstalledApplication;
  v6 = [(CDAuthInfoInstalledApplication *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationRecord, a3);
  }

  return v7;
}

- (id)bundleIdentifier
{
  v2 = [(LSApplicationRecord *)self->_applicationRecord bundleIdentifier];
  v3 = [v2 copy];

  return v3;
}

- (id)applicationIdentifier
{
  v2 = [(LSApplicationRecord *)self->_applicationRecord applicationIdentifier];
  v3 = [v2 copy];

  return v3;
}

- (id)teamIdentifier
{
  v2 = [(LSApplicationRecord *)self->_applicationRecord teamIdentifier];
  v3 = [v2 copy];

  return v3;
}

- (id)localizedName
{
  v2 = [(LSApplicationRecord *)self->_applicationRecord localizedName];
  v3 = [v2 copy];

  return v3;
}

@end