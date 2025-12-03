@interface KTAccountKeyServerProtocolActual
- (KTAccountKeyServerProtocolActual)initWithSettings:(id)settings;
- (id)accountKeyService:(id)service;
- (id)copyCachedPCSIdentityForApplication:(id)application;
@end

@implementation KTAccountKeyServerProtocolActual

- (KTAccountKeyServerProtocolActual)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = KTAccountKeyServerProtocolActual;
  v5 = [(KTAccountKeyServerProtocolActual *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(KTAccountKeyServerProtocolActual *)v5 setSettings:settingsCopy];
    v7 = v6;
  }

  return v6;
}

- (id)accountKeyService:(id)service
{
  serviceCopy = service;
  settings = [(KTAccountKeyServerProtocolActual *)self settings];
  allowsInternalSecurityPolicies = [settings allowsInternalSecurityPolicies];

  if (allowsInternalSecurityPolicies && (-[KTAccountKeyServerProtocolActual settings](self, "settings"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 getBool:@"noAccountKey"], v7, (v8 & 1) != 0))
  {
    v9 = 0;
  }

  else
  {
    v9 = [KTAccountKeyServer sharedKeyServiceForApplication:serviceCopy];
  }

  return v9;
}

- (id)copyCachedPCSIdentityForApplication:(id)application
{
  v3 = [(KTAccountKeyServerProtocolActual *)self accountKeyService:application];
  copyCachedPCSIdentity = [v3 copyCachedPCSIdentity];

  return copyCachedPCSIdentity;
}

@end