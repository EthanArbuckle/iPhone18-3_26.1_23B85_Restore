@interface EPSagaTransactionUnpairDevice
- (id)_deviceCollectionDiffWithPairingID:(id)d;
- (id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)buildRoutingSlipEntries:(id)entries serviceRegistry:(id)registry completion:(id)completion;
@end

@implementation EPSagaTransactionUnpairDevice

- (id)registry
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (id)_deviceCollectionDiffWithPairingID:(id)d
{
  dCopy = d;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [[NRDeviceDiffType alloc] initWithDiff:0 andChangeType:2];
  [v4 setObject:v5 forKeyedSubscript:dCopy];

  v6 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v4];

  return v6;
}

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  objc_storeStrong(&self->_serviceRegistry, registry);
  v8 = [entryCopy objectForKeyedSubscript:@"nrDeviceIdentifier"];
  if (v8)
  {
    registry = [(EPSagaTransactionUnpairDevice *)self registry];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100081D44;
    v11[3] = &unk_100175748;
    v12 = v8;
    v13 = entryCopy;
    v14 = registryCopy;
    selfCopy = self;
    [registry grabRegistryWithReadBlockAsync:v11];
  }

  else
  {
    delegate = [(EPSagaTransactionRoutingSlip *)self delegate];
    [delegate transactionDidComplete:self];
  }
}

- (void)buildRoutingSlipEntries:(id)entries serviceRegistry:(id)registry completion:(id)completion
{
  entriesCopy = entries;
  registryCopy = registry;
  completionCopy = completion;
  objc_storeStrong(&self->_parentRoutingSlipEntry, entries);
  objc_storeStrong(&self->_serviceRegistry, registry);
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_100082524;
  v41[4] = sub_100082534;
  v42 = [entriesCopy objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v12 = [entriesCopy objectForKeyedSubscript:@"shouldBrick"];
  v13 = [entriesCopy objectForKeyedSubscript:@"storeUnpair"];
  v14 = [entriesCopy objectForKeyedSubscript:@"migrationUnpair"];
  v15 = [entriesCopy objectForKeyedSubscript:@"shouldPreserveESim"];
  v27 = registryCopy;
  v16 = [entriesCopy objectForKeyedSubscript:@"pairingReport"];
  v17 = [entriesCopy objectForKeyedSubscript:@"remoteUnpairRequestID"];
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_100082524;
  v39[4] = sub_100082534;
  v40 = [entriesCopy objectForKeyedSubscript:@"obliterationString"];
  registry = [(EPSagaTransactionUnpairDevice *)self registry];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10008253C;
  v28[3] = &unk_1001784F8;
  v37 = v41;
  v28[4] = self;
  v19 = completionCopy;
  v36 = v19;
  v20 = v14;
  v29 = v20;
  v21 = entriesCopy;
  v30 = v21;
  v38 = v39;
  v22 = v16;
  v31 = v22;
  v23 = v13;
  v32 = v23;
  v24 = v15;
  v33 = v24;
  v25 = v12;
  v34 = v25;
  v26 = v17;
  v35 = v26;
  [registry grabRegistryWithReadBlockAsync:v28];

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);
}

@end