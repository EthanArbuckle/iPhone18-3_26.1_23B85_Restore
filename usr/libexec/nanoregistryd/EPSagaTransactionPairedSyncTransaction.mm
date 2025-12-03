@interface EPSagaTransactionPairedSyncTransaction
+ (id)_operationTypeStringFromSyncType:(unint64_t)type;
+ (id)_syncTypeString:(unint64_t)string;
+ (void)whatKindOfSyncIsNeededForPairingID:(id)d block:(id)block;
- (EPTransactionDelegate)delegate;
- (void)_addWaitForIsSetupTransactionIfNeeded;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionPairedSyncTransaction

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  objc_storeStrong(&self->_serviceRegistry, registry);
  objc_storeStrong(&self->_routingSlipEntry, entry);
  v9 = [registryCopy serviceFromClass:objc_opt_class()];
  [entryCopy objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100006568;
  v14 = v13[3] = &unk_100175748;
  selfCopy = self;
  v16 = entryCopy;
  v17 = registryCopy;
  v10 = registryCopy;
  v11 = entryCopy;
  v12 = v14;
  [v9 grabRegistryWithReadBlockAsync:v13];
}

+ (void)whatKindOfSyncIsNeededForPairingID:(id)d block:(id)block
{
  dCopy = d;
  blockCopy = block;
  v7 = blockCopy;
  if (dCopy)
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
    v10 = dCopy;
    [v8 requestInitialNonMigrationSyncStateForPairingIdentifier:v10 completion:v9];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0);
  }
}

+ (id)_syncTypeString:(unint64_t)string
{
  if (string > 2)
  {
    return @"reunionSync";
  }

  else
  {
    return *(&off_1001757E0 + string);
  }
}

+ (id)_operationTypeStringFromSyncType:(unint64_t)type
{
  v3 = &off_100175800;
  v4 = &off_100175808;
  if (type != 2)
  {
    v4 = &off_100175820;
  }

  if (type != 1)
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
        selfCopy = self;
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