@interface MISEntitlementsModel
- (MISEntitlementsModel)initWithDB:(id)a3;
- (int)insertEntitlement:(id)a3 forProfile:(id)a4;
- (void)emitEntitlementPredicates:(id)a3 predicateHandler:(id)a4;
@end

@implementation MISEntitlementsModel

- (MISEntitlementsModel)initWithDB:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MISEntitlementsModel;
  v5 = [(MISEntitlementsModel *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weak_db, v4);
    v7 = v6;
  }

  return v6;
}

- (void)emitEntitlementPredicates:(id)a3 predicateHandler:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100011D6C;
  v6[3] = &unk_10005E0A8;
  v7 = a4;
  v5 = v7;
  sub_1000105B0(a3, v6);
}

- (int)insertEntitlement:(id)a3 forProfile:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_weak_db);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100011E74;
  v12[3] = &unk_10005E0D0;
  v13 = v7;
  v14 = v6;
  v15 = [v6 hasSuffix:@"*"];
  v9 = v6;
  v10 = v7;
  LODWORD(v7) = [WeakRetained executeQuery:@"INSERT OR IGNORE INTO entitlements_provisioning_cache VALUES (NULL withBind:@uuid withResults:{@predicate, @wildcard)", v12, 0}];

  return v7;
}

@end