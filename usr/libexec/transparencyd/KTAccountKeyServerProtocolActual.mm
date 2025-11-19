@interface KTAccountKeyServerProtocolActual
- (KTAccountKeyServerProtocolActual)initWithSettings:(id)a3;
- (id)accountKeyService:(id)a3;
- (id)copyCachedPCSIdentityForApplication:(id)a3;
@end

@implementation KTAccountKeyServerProtocolActual

- (KTAccountKeyServerProtocolActual)initWithSettings:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = KTAccountKeyServerProtocolActual;
  v5 = [(KTAccountKeyServerProtocolActual *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(KTAccountKeyServerProtocolActual *)v5 setSettings:v4];
    v7 = v6;
  }

  return v6;
}

- (id)accountKeyService:(id)a3
{
  v4 = a3;
  v5 = [(KTAccountKeyServerProtocolActual *)self settings];
  v6 = [v5 allowsInternalSecurityPolicies];

  if (v6 && (-[KTAccountKeyServerProtocolActual settings](self, "settings"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 getBool:@"noAccountKey"], v7, (v8 & 1) != 0))
  {
    v9 = 0;
  }

  else
  {
    v9 = [KTAccountKeyServer sharedKeyServiceForApplication:v4];
  }

  return v9;
}

- (id)copyCachedPCSIdentityForApplication:(id)a3
{
  v3 = [(KTAccountKeyServerProtocolActual *)self accountKeyService:a3];
  v4 = [v3 copyCachedPCSIdentity];

  return v4;
}

@end