@interface MISEntitlementsModel
- (MISEntitlementsModel)initWithDB:(id)b;
- (int)insertEntitlement:(id)entitlement forProfile:(id)profile;
- (void)emitEntitlementPredicates:(id)predicates predicateHandler:(id)handler;
@end

@implementation MISEntitlementsModel

- (MISEntitlementsModel)initWithDB:(id)b
{
  bCopy = b;
  v9.receiver = self;
  v9.super_class = MISEntitlementsModel;
  v5 = [(MISEntitlementsModel *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weak_db, bCopy);
    v7 = v6;
  }

  return v6;
}

- (void)emitEntitlementPredicates:(id)predicates predicateHandler:(id)handler
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004664;
  v6[3] = &unk_100028BF8;
  handlerCopy = handler;
  v5 = handlerCopy;
  sub_10000C258(predicates, v6);
}

- (int)insertEntitlement:(id)entitlement forProfile:(id)profile
{
  entitlementCopy = entitlement;
  profileCopy = profile;
  WeakRetained = objc_loadWeakRetained(&self->_weak_db);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000476C;
  v12[3] = &unk_100028C20;
  v13 = profileCopy;
  v14 = entitlementCopy;
  v15 = [entitlementCopy hasSuffix:@"*"];
  v9 = entitlementCopy;
  v10 = profileCopy;
  LODWORD(profileCopy) = [WeakRetained executeQuery:@"INSERT OR IGNORE INTO entitlements_provisioning_cache VALUES (NULL withBind:@uuid withResults:{@predicate, @wildcard)", v12, 0}];

  return profileCopy;
}

@end