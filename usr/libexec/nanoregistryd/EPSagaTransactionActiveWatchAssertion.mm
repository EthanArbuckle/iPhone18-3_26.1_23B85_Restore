@interface EPSagaTransactionActiveWatchAssertion
- (id)delegate;
- (id)keymaster;
- (id)registry;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)buildRoutingSlipEntries:(id)entries serviceRegistry:(id)registry completion:(id)completion;
- (void)getBluetoothIDForPairingID:(id)d completion:(id)completion;
- (void)invalidate;
- (void)resourceAvailabilityDidChange:(id)change;
@end

@implementation EPSagaTransactionActiveWatchAssertion

- (id)registry
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (id)keymaster
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (void)getBluetoothIDForPairingID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  registry = [(EPSagaTransactionActiveWatchAssertion *)self registry];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D96B8;
  v11[3] = &unk_1001773E8;
  v12 = dCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  [registry grabRegistryWithReadBlockAsync:v11];
}

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  objc_storeStrong(&self->_routingSlipEntry, entry);
  objc_storeStrong(&self->_serviceRegistry, registry);
  self->_rollback = 0;
  v9 = [entryCopy objectForKeyedSubscript:@"switchToNRDeviceUUID"];
  registry = [(EPSagaTransactionActiveWatchAssertion *)self registry];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000D991C;
  v14[3] = &unk_100175748;
  v15 = v9;
  selfCopy = self;
  v17 = entryCopy;
  v18 = registryCopy;
  v11 = registryCopy;
  v12 = entryCopy;
  v13 = v9;
  [registry grabRegistryWithReadBlockAsync:v14];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  objc_storeStrong(&self->_routingSlipEntry, entry);
  objc_storeStrong(&self->_serviceRegistry, registry);
  self->_rollback = 1;
  v9 = [entryCopy objectForKeyedSubscript:@"switchFromNRDeviceUUID"];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if (v9)
  {
    v10 = v9;
    registry = [(EPSagaTransactionActiveWatchAssertion *)self registry];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000DA2DC;
    v25[3] = &unk_100177830;
    v12 = v10;
    v26 = v12;
    v27 = &v28;
    [registry deasyncGrabRegistryWithReadBlock:v25];
  }

  else
  {
    v12 = [[NSUUID alloc] initWithUUIDString:@"8FC052B6-229F-49A7-BC78-3F56A5149994"];
  }

  [(EPResource *)self->_assertion invalidate];
  assertion = self->_assertion;
  self->_assertion = 0;

  v14 = [registryCopy serviceFromClass:objc_opt_class()];
  v15 = [v14 assertionWithPairingID:v12 isAltAccount:*(v29 + 24) delegate:self];
  v16 = self->_assertion;
  self->_assertion = v15;

  v17 = [entryCopy objectForKeyedSubscript:@"switchToNRDeviceUUID"];
  if (!v17)
  {
    v17 = [[NSUUID alloc] initWithUUIDString:@"8FC052B6-229F-49A7-BC78-3F56A5149994"];
  }

  v18 = [registryCopy serviceFromClass:objc_opt_class()];
  v19 = +[NRQueue registryDaemonQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000DA33C;
  v22[3] = &unk_100175598;
  v20 = v18;
  v23 = v20;
  v21 = v17;
  v24 = v21;
  [v19 dispatchAsync:v22];

  _Block_object_dispose(&v28, 8);
}

- (void)resourceAvailabilityDidChange:(id)change
{
  changeCopy = change;
  v5 = changeCopy;
  if (self->_assertion == changeCopy)
  {
    if ([(EPResource *)changeCopy availability]== 1)
    {
      routingSlipEntry = self->_routingSlipEntry;
      serviceRegistry = self->_serviceRegistry;
      if (self->_rollback)
      {
        [(EPSagaTransactionRoutingSlip *)&v16 beginRollbackWithRoutingSlipEntry:routingSlipEntry serviceRegistry:serviceRegistry, v14.receiver, v14.super_class, v15.receiver, v15.super_class, self, EPSagaTransactionActiveWatchAssertion];
      }

      else
      {
        [(EPSagaTransactionRoutingSlip *)&v15 beginTransactionWithRoutingSlipEntry:routingSlipEntry serviceRegistry:serviceRegistry, v14.receiver, v14.super_class, self, EPSagaTransactionActiveWatchAssertion, v16.receiver, v16.super_class];
      }
    }

    else if ([(EPResource *)v5 availability]== 2)
    {
      [(EPResource *)self->_assertion invalidate];
      assertion = self->_assertion;
      self->_assertion = 0;

      if (self->_rollback)
      {
        [(EPSagaTransactionRoutingSlip *)&v14 beginRollbackWithRoutingSlipEntry:self->_routingSlipEntry serviceRegistry:self->_serviceRegistry, self, EPSagaTransactionActiveWatchAssertion, v15.receiver, v15.super_class, v16.receiver, v16.super_class];
      }

      else
      {
        errors = [(EPRoutingSlipEntry *)self->_routingSlipEntry errors];
        error = [(EPResource *)v5 error];
        [errors addObject:error];

        childRoutingSlip = [(EPSagaTransactionRoutingSlip *)self childRoutingSlip];
        state = [childRoutingSlip state];

        if (!state)
        {
          delegate = [(EPSagaTransactionActiveWatchAssertion *)self delegate];
          [delegate transactionDidComplete:self];
        }
      }
    }
  }
}

- (void)invalidate
{
  [(EPResource *)self->_assertion invalidate];
  assertion = self->_assertion;
  self->_assertion = 0;

  v4.receiver = self;
  v4.super_class = EPSagaTransactionActiveWatchAssertion;
  [(EPSagaTransactionRoutingSlip *)&v4 invalidate];
}

- (void)buildRoutingSlipEntries:(id)entries serviceRegistry:(id)registry completion:(id)completion
{
  entriesCopy = entries;
  registryCopy = registry;
  completionCopy = completion;
  objc_storeStrong(&self->_parentRoutingSlipEntry, entries);
  objc_storeStrong(&self->_serviceRegistry, registry);
  v10 = [entriesCopy objectForKeyedSubscript:@"switchFromNRDeviceUUID"];
  v11 = [entriesCopy objectForKeyedSubscript:@"switchFromIDSDeviceUUID"];
  v12 = [entriesCopy objectForKeyedSubscript:@"switchToNRDeviceUUID"];
  v13 = [entriesCopy objectForKeyedSubscript:@"switchToIDSDeviceUUID"];
  v72 = [entriesCopy objectForKeyedSubscript:@"isPaired"];
  v14 = [entriesCopy objectForKeyedSubscript:?];
  v74 = [entriesCopy objectForKeyedSubscript:?];
  v76 = [entriesCopy objectForKeyedSubscript:@"shouldKeepLaunchedDameonsDisabled"];
  v15 = +[NSMutableArray array];
  v78 = v15;
  if (v11 && ([v10 isEqual:v12] & 1) == 0)
  {
    v17 = [EPRoutingSlipEntry alloc];
    v18 = objc_opt_class();
    v91 = @"nrDeviceIdentifier";
    v19 = [[EPSagaOperandUUID alloc] initWithUUID:v10];
    v92 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
    v16 = [(EPRoutingSlipEntry *)v17 initWithName:@"healthSync" transactionClass:v18 operands:v20];

    v15 = v78;
    [v78 addObject:v16];
  }

  else
  {
    v16 = 0;
  }

  v75 = v10;
  v77 = v14;
  v73 = v11;
  if (v10 != v12 && ([v10 isEqual:v12] & 1) == 0)
  {
    if ([v76 BOOLValue])
    {
      v21 = 0;
    }

    else
    {
      v21 = 2;
    }

    v65 = [EPRoutingSlipEntry alloc];
    v67 = v13;
    v22 = objc_opt_class();
    v89[0] = @"setDaemonsEnabled";
    v23 = [EPSagaOperandNumber alloc];
    v24 = [NSNumber numberWithUnsignedInteger:v21];
    v25 = [(EPSagaOperandNumber *)v23 initWithNumber:v24];
    v90[0] = v25;
    v89[1] = @"shouldRollBack";
    v26 = [[EPSagaOperandNumber alloc] initWithNumber:v77];
    v90[1] = v26;
    v89[2] = @"setDaemonsEnabledRollbackNormalizeDeviceID";
    v27 = [[EPSagaOperandUUID alloc] initWithUUID:v10];
    v90[2] = v27;
    v28 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:3];
    v29 = [(EPRoutingSlipEntry *)v65 initWithName:@"disableDaemons" transactionClass:v22 operands:v28];

    v14 = v77;
    v11 = v73;

    v15 = v78;
    [v78 addObject:v29];
    v16 = v29;
    v13 = v67;
  }

  if (v10 && ([v10 isEqual:v12] & 1) == 0)
  {
    v30 = [EPRoutingSlipEntry alloc];
    v31 = objc_opt_class();
    v87 = @"shouldRollBack";
    v32 = [[EPSagaOperandNumber alloc] initWithNumber:v14];
    v88 = v32;
    v33 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    v34 = v31;
    v15 = v78;
    v35 = [(EPRoutingSlipEntry *)v30 initWithName:@"deactivateDevice" transactionClass:v34 operands:v33];

    v14 = v77;
    [v78 addObject:v35];
    v16 = v35;
  }

  if (!v13 || ([v13 isEqual:v11] & 1) == 0 && objc_msgSend(v72, "BOOLValue"))
  {
    v66 = [EPRoutingSlipEntry alloc];
    v36 = objc_opt_class();
    v85[0] = @"idsDeviceIdentifier";
    v37 = [[EPSagaOperandUUID alloc] initWithUUID:v13];
    v86[0] = v37;
    v85[1] = @"shouldRollBack";
    v68 = v13;
    v38 = [[EPSagaOperandNumber alloc] initWithNumber:v14];
    v86[1] = v38;
    v85[2] = @"shouldWaitForConnectivity";
    v39 = [[EPSagaOperandNumber alloc] initWithNumber:v74];
    v86[2] = v39;
    v85[3] = @"coreBluetoothSwitchBackID";
    v40 = [[EPSagaOperandUUID alloc] initWithUUID:v11];
    v86[3] = v40;
    v85[4] = @"nrDeviceIdentifier";
    v41 = [[EPSagaOperandUUID alloc] initWithUUID:v12];
    v86[4] = v41;
    v42 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:5];
    v43 = [(EPRoutingSlipEntry *)v66 initWithName:@"switchIDS" transactionClass:v36 operands:v42];

    v14 = v77;
    v13 = v68;

    v15 = v78;
    [v78 addObject:v43];
    v16 = v43;
  }

  bOOLValue = [v76 BOOLValue];
  v45 = v75;
  if (v75 != v12 && (bOOLValue & 1) == 0 && ([v75 isEqual:v12] & 1) == 0)
  {
    v69 = [EPRoutingSlipEntry alloc];
    v46 = objc_opt_class();
    v83[0] = @"setDaemonsEnabledNormalizeDeviceID";
    v47 = [[EPSagaOperandUUID alloc] initWithUUID:v12];
    v84[0] = v47;
    v83[1] = @"shouldRollBack";
    v48 = [[EPSagaOperandNumber alloc] initWithNumber:v14];
    v84[1] = v48;
    v83[2] = @"setDaemonsEnabledRollback";
    v49 = [[EPSagaOperandNumber alloc] initWithNumber:&off_1001877E0];
    v84[2] = v49;
    v83[3] = @"forceEnableIfPairedOrActive";
    v50 = [[EPSagaOperandNumber alloc] initWithNumber:&__kCFBooleanTrue];
    v84[3] = v50;
    [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:4];
    v52 = v51 = v13;
    v53 = [(EPRoutingSlipEntry *)v69 initWithName:@"enableDaemons" transactionClass:v46 operands:v52];

    v13 = v51;
    v14 = v77;

    v45 = v75;
    [v78 addObject:v53];
    v54 = [EPRoutingSlipEntry alloc];
    v55 = objc_opt_class();
    v81 = @"timeoutDuration";
    v56 = [[EPSagaOperandNumber alloc] initWithNumber:&off_100187888];
    v82 = v56;
    v57 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    v16 = [(EPRoutingSlipEntry *)v54 initWithName:@"wallClockWaitForDaemonsToEnable" transactionClass:v55 operands:v57];

    v15 = v78;
    [v78 addObject:v16];
  }

  if (v12)
  {
    v58 = [EPRoutingSlipEntry alloc];
    v59 = objc_opt_class();
    v79[0] = @"nrDeviceIdentifier";
    v60 = [[EPSagaOperandUUID alloc] initWithUUID:v12];
    v79[1] = @"shouldRollBack";
    v80[0] = v60;
    v61 = [[EPSagaOperandNumber alloc] initWithNumber:v14];
    v80[1] = v61;
    v62 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:2];
    v63 = v59;
    v15 = v78;
    v64 = [(EPRoutingSlipEntry *)v58 initWithName:@"activateDevice" transactionClass:v63 operands:v62];

    v14 = v77;
    [v78 addObject:v64];
    v16 = v64;
  }

  (*(completionCopy + 2))(completionCopy, v15, 0, 0);
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end