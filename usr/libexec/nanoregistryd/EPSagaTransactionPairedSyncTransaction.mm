@interface EPSagaTransactionPairedSyncTransaction
+ (id)_operationTypeStringFromSyncType:(unint64_t)a3;
+ (id)_syncTypeString:(unint64_t)a3;
+ (void)whatKindOfSyncIsNeededForPairingID:(id)a3 block:(id)a4;
- (EPTransactionDelegate)delegate;
- (void)_addWaitForIsSetupTransactionIfNeeded;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionPairedSyncTransaction

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_serviceRegistry, a4);
  objc_storeStrong(&self->_routingSlipEntry, a3);
  v9 = [v8 serviceFromClass:objc_opt_class()];
  [v7 objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100006568;
  v14 = v13[3] = &unk_100175748;
  v15 = self;
  v16 = v7;
  v17 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v14;
  [v9 grabRegistryWithReadBlockAsync:v13];
}

+ (void)whatKindOfSyncIsNeededForPairingID:(id)a3 block:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_100006CA8;
    v17 = sub_100006CB8;
    v18 = objc_opt_new();
    v8 = v14[5];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100006CC0;
    v9[3] = &unk_100175798;
    v12 = &v13;
    v11 = v7;
    v10 = v5;
    [v8 requestInitialNonMigrationSyncStateForPairingIdentifier:v10 completion:v9];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

+ (id)_syncTypeString:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"reunionSync";
  }

  else
  {
    return *(&off_1001757E0 + a3);
  }
}

+ (id)_operationTypeStringFromSyncType:(unint64_t)a3
{
  v3 = &off_100175800;
  v4 = &off_100175808;
  if (a3 != 2)
  {
    v4 = &off_100175820;
  }

  if (a3 != 1)
  {
    v3 = v4;
  }

  return *v3;
}

- (void)_addWaitForIsSetupTransactionIfNeeded
{
  if (self->_syncType == 1)
  {
    v12 = v2;
    v13 = v3;
    v5 = [(EPRoutingSlipEntry *)self->_routingSlipEntry objectForKeyedSubscript:@"nrDeviceIdentifier"];
    v6 = [(EPRoutingSlipEntry *)self->_routingSlipEntry objectForKeyedSubscript:@"shouldWaitForIsSetup"];
    v7 = v6;
    if (v6)
    {
      if ([v6 BOOLValue])
      {
        v8 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_1000071A4;
        v9[3] = &unk_1001757C0;
        v10 = v5;
        v11 = self;
        [v8 grabRegistryWithReadBlockAsync:v9];
      }
    }
  }
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end