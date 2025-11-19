@interface EPSagaTransactionUnpairDevice
- (id)_deviceCollectionDiffWithPairingID:(id)a3;
- (id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)buildRoutingSlipEntries:(id)a3 serviceRegistry:(id)a4 completion:(id)a5;
@end

@implementation EPSagaTransactionUnpairDevice

- (id)registry
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (id)_deviceCollectionDiffWithPairingID:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [[NRDeviceDiffType alloc] initWithDiff:0 andChangeType:2];
  [v4 setObject:v5 forKeyedSubscript:v3];

  v6 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v4];

  return v6;
}

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_storeStrong(&self->_serviceRegistry, a4);
  v8 = [v6 objectForKeyedSubscript:@"nrDeviceIdentifier"];
  if (v8)
  {
    v9 = [(EPSagaTransactionUnpairDevice *)self registry];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100081D44;
    v11[3] = &unk_100175748;
    v12 = v8;
    v13 = v6;
    v14 = v7;
    v15 = self;
    [v9 grabRegistryWithReadBlockAsync:v11];
  }

  else
  {
    v10 = [(EPSagaTransactionRoutingSlip *)self delegate];
    [v10 transactionDidComplete:self];
  }
}

- (void)buildRoutingSlipEntries:(id)a3 serviceRegistry:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_storeStrong(&self->_parentRoutingSlipEntry, a3);
  objc_storeStrong(&self->_serviceRegistry, a4);
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_100082524;
  v41[4] = sub_100082534;
  v42 = [v9 objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v12 = [v9 objectForKeyedSubscript:@"shouldBrick"];
  v13 = [v9 objectForKeyedSubscript:@"storeUnpair"];
  v14 = [v9 objectForKeyedSubscript:@"migrationUnpair"];
  v15 = [v9 objectForKeyedSubscript:@"shouldPreserveESim"];
  v27 = v10;
  v16 = [v9 objectForKeyedSubscript:@"pairingReport"];
  v17 = [v9 objectForKeyedSubscript:@"remoteUnpairRequestID"];
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_100082524;
  v39[4] = sub_100082534;
  v40 = [v9 objectForKeyedSubscript:@"obliterationString"];
  v18 = [(EPSagaTransactionUnpairDevice *)self registry];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10008253C;
  v28[3] = &unk_1001784F8;
  v37 = v41;
  v28[4] = self;
  v19 = v11;
  v36 = v19;
  v20 = v14;
  v29 = v20;
  v21 = v9;
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
  [v18 grabRegistryWithReadBlockAsync:v28];

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);
}

@end