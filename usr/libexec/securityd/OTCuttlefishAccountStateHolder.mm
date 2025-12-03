@interface OTCuttlefishAccountStateHolder
- (BOOL)_onqueuePersistAccountChanges:(id)changes error:(id *)error;
- (BOOL)_persistEscrowRepairAttemptVersion:(int64_t)version error:(id *)error;
- (BOOL)persistAccountChanges:(id)changes error:(id *)error;
- (BOOL)persistLastEscrowRepairAttempted:(id)attempted error:(id *)error;
- (BOOL)persistLastEscrowRepairTriggered:(id)triggered error:(id *)error;
- (BOOL)persistLastHealthCheck:(id)check error:(id *)error;
- (BOOL)persistNewEgoPeerID:(id)d error:(id *)error;
- (BOOL)persistNewTrustState:(int)state error:(id *)error;
- (BOOL)persistOctagonJoinAttempt:(int)attempt error:(id *)error;
- (BOOL)persistSendingMetricsPermitted:(int)permitted error:(id *)error;
- (OTCuttlefishAccountStateHolder)initWithQueue:(id)queue container:(id)container context:(id)context personaAdapter:(id)adapter activeAccount:(id)account;
- (id)_onqueueLoadOrCreateAccountMetadata:(id *)metadata;
- (id)getEgoPeerID:(id *)d;
- (id)lastHealthCheckupDate:(id *)date;
- (id)loadOrCreateAccountMetadata:(id *)metadata;
- (int)fetchSendingMetricsPermitted:(id *)permitted;
- (void)asyncNotifyAccountStateChanges:(id)changes from:(id)from;
- (void)registerNotification:(id)notification;
@end

@implementation OTCuttlefishAccountStateHolder

- (void)asyncNotifyAccountStateChanges:(id)changes from:(id)from
{
  changesCopy = changes;
  fromCopy = from;
  objc_initWeak(&location, self);
  notifyQueue = [(OTCuttlefishAccountStateHolder *)self notifyQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001FEC60;
  v11[3] = &unk_100345310;
  objc_copyWeak(&v14, &location);
  v12 = changesCopy;
  v13 = fromCopy;
  v9 = fromCopy;
  v10 = changesCopy;
  dispatch_async(notifyQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (BOOL)_onqueuePersistAccountChanges:(id)changes error:(id *)error
{
  changesCopy = changes;
  queue = [(OTCuttlefishAccountStateHolder *)self queue];
  dispatch_assert_queue_V2(queue);

  v23 = 0;
  v8 = [(OTCuttlefishAccountStateHolder *)self _onqueueLoadOrCreateAccountMetadata:&v23];
  v9 = v23;
  if (!v8)
  {
    v11 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  errorCopy = error;
  v10 = [v8 copy];
  v21 = changesCopy;
  v11 = changesCopy[2](changesCopy, v10);

  containerName = [(OTCuttlefishAccountStateHolder *)self containerName];
  contextID = [(OTCuttlefishAccountStateHolder *)self contextID];
  personaAdapter = [(OTCuttlefishAccountStateHolder *)self personaAdapter];
  activeAccount = [(OTCuttlefishAccountStateHolder *)self activeAccount];
  personaUniqueString = [activeAccount personaUniqueString];
  v22 = v9;
  LOBYTE(v10) = [v11 saveToKeychainForContainer:containerName contextID:contextID personaAdapter:personaAdapter personaUniqueString:personaUniqueString error:&v22];
  v19 = v22;

  if ((v10 & 1) == 0)
  {

    v11 = 0;
  }

  v9 = v19;
  error = errorCopy;
  changesCopy = v21;
  if (errorCopy)
  {
LABEL_7:
    if (v9)
    {
      v17 = v9;
      *error = v9;
    }
  }

LABEL_9:
  if (v11)
  {
    [(OTCuttlefishAccountStateHolder *)self asyncNotifyAccountStateChanges:v11 from:v8];
  }

  return v11 != 0;
}

- (BOOL)_persistEscrowRepairAttemptVersion:(int64_t)version error:(id *)error
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001FEFE8;
  v5[3] = &unk_100344C40;
  v5[4] = version;
  return [(OTCuttlefishAccountStateHolder *)self persistAccountChanges:v5 error:error];
}

- (BOOL)persistLastEscrowRepairAttempted:(id)attempted error:(id *)error
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001FF0D8;
  v8[3] = &unk_100344BD8;
  attemptedCopy = attempted;
  v6 = attemptedCopy;
  LOBYTE(error) = [(OTCuttlefishAccountStateHolder *)self persistAccountChanges:v8 error:error];

  return error;
}

- (BOOL)persistLastEscrowRepairTriggered:(id)triggered error:(id *)error
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001FF1F8;
  v8[3] = &unk_100344BD8;
  triggeredCopy = triggered;
  v6 = triggeredCopy;
  LOBYTE(error) = [(OTCuttlefishAccountStateHolder *)self persistAccountChanges:v8 error:error];

  return error;
}

- (BOOL)persistSendingMetricsPermitted:(int)permitted error:(id *)error
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001FF2CC;
  v5[3] = &unk_100344BF8;
  permittedCopy = permitted;
  return [(OTCuttlefishAccountStateHolder *)self persistAccountChanges:v5 error:error];
}

- (int)fetchSendingMetricsPermitted:(id *)permitted
{
  v11 = 0;
  v4 = [(OTCuttlefishAccountStateHolder *)self loadOrCreateAccountMetadata:&v11];
  v5 = v11;
  v6 = v5;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4 == 0;
  }

  if (v7)
  {
    if (permitted)
    {
      v8 = v5;
      sendingMetricsPermitted = 0;
      *permitted = v6;
    }

    else
    {
      sendingMetricsPermitted = 0;
    }
  }

  else
  {
    sendingMetricsPermitted = [v4 sendingMetricsPermitted];
  }

  return sendingMetricsPermitted;
}

- (BOOL)persistOctagonJoinAttempt:(int)attempt error:(id *)error
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001FF410;
  v5[3] = &unk_100344BF8;
  attemptCopy = attempt;
  return [(OTCuttlefishAccountStateHolder *)self persistAccountChanges:v5 error:error];
}

- (BOOL)persistLastHealthCheck:(id)check error:(id *)error
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001FF500;
  v8[3] = &unk_100344BD8;
  checkCopy = check;
  v6 = checkCopy;
  LOBYTE(error) = [(OTCuttlefishAccountStateHolder *)self persistAccountChanges:v8 error:error];

  return error;
}

- (BOOL)persistAccountChanges:(id)changes error:(id *)error
{
  changesCopy = changes;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_1001FF7BC;
  v43 = sub_1001FF7CC;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1001FF7BC;
  v37 = sub_1001FF7CC;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1001FF7BC;
  v31 = sub_1001FF7CC;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  queue = [(OTCuttlefishAccountStateHolder *)self queue];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1001FF7D4;
  v16 = &unk_100344C20;
  v19 = &v27;
  v20 = &v39;
  selfCopy = self;
  v21 = &v33;
  v8 = changesCopy;
  v18 = v8;
  v22 = &v23;
  dispatch_sync(queue, &v13);

  if (error)
  {
    v9 = v40[5];
    if (v9)
    {
      *error = v9;
    }
  }

  v10 = v34[5];
  if (v10)
  {
    [(OTCuttlefishAccountStateHolder *)self asyncNotifyAccountStateChanges:v10 from:v28[5], v13, v14, v15, v16, selfCopy];
  }

  v11 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v11;
}

- (BOOL)persistNewTrustState:(int)state error:(id *)error
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001FF9F4;
  v5[3] = &unk_100344BF8;
  stateCopy = state;
  return [(OTCuttlefishAccountStateHolder *)self persistAccountChanges:v5 error:error];
}

- (BOOL)persistNewEgoPeerID:(id)d error:(id *)error
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001FFAE4;
  v8[3] = &unk_100344BD8;
  dCopy = d;
  v6 = dCopy;
  LOBYTE(error) = [(OTCuttlefishAccountStateHolder *)self persistAccountChanges:v8 error:error];

  return error;
}

- (id)lastHealthCheckupDate:(id *)date
{
  v11 = 0;
  v4 = [(OTCuttlefishAccountStateHolder *)self loadOrCreateAccountMetadata:&v11];
  v5 = v11;
  v6 = v5;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4 == 0;
  }

  if (v7)
  {
    if (date)
    {
      v8 = v5;
      v9 = 0;
      *date = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v4 lastHealthCheckup] / 1000.0);
  }

  return v9;
}

- (id)getEgoPeerID:(id *)d
{
  v12 = 0;
  v4 = [(OTCuttlefishAccountStateHolder *)self loadOrCreateAccountMetadata:&v12];
  v5 = v12;
  v6 = v5;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4 == 0;
  }

  if (v7)
  {
    if (d)
    {
      v8 = v5;
      peerID2 = 0;
      *d = v6;
      goto LABEL_13;
    }
  }

  else
  {
    peerID = [v4 peerID];

    if (peerID)
    {
      peerID2 = [v4 peerID];
      goto LABEL_13;
    }

    if (d)
    {
      [NSError errorWithDomain:@"otcuttlefish" code:0 description:@"No existing ego peer ID"];
      *d = peerID2 = 0;
      goto LABEL_13;
    }
  }

  peerID2 = 0;
LABEL_13:

  return peerID2;
}

- (id)_onqueueLoadOrCreateAccountMetadata:(id *)metadata
{
  queue = [(OTCuttlefishAccountStateHolder *)self queue];
  dispatch_assert_queue_V2(queue);

  containerName = [(OTCuttlefishAccountStateHolder *)self containerName];
  contextID = [(OTCuttlefishAccountStateHolder *)self contextID];
  personaAdapter = [(OTCuttlefishAccountStateHolder *)self personaAdapter];
  activeAccount = [(OTCuttlefishAccountStateHolder *)self activeAccount];
  personaUniqueString = [activeAccount personaUniqueString];
  v19 = 0;
  v11 = [OTAccountMetadataClassC loadFromKeychainForContainer:containerName contextID:contextID personaAdapter:personaAdapter personaUniqueString:personaUniqueString error:&v19];
  v12 = v19;

  if (v11 && !v12)
  {
    goto LABEL_3;
  }

  domain = [v12 domain];
  if ([domain isEqualToString:NSOSStatusErrorDomain])
  {
    code = [v12 code];

    if (code == -25300)
    {
      v16 = objc_alloc_init(OTAccountMetadataClassC);

      [(OTAccountMetadataClassC *)v16 setAttemptedJoin:1];
      v11 = v16;
LABEL_3:
      v13 = v11;
      v11 = v13;
      goto LABEL_11;
    }
  }

  else
  {
  }

  if (metadata)
  {
    v17 = v12;
    v13 = 0;
    *metadata = v12;
  }

  else
  {
    v13 = 0;
  }

LABEL_11:

  return v13;
}

- (id)loadOrCreateAccountMetadata:(id *)metadata
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1001FF7BC;
  v20 = sub_1001FF7CC;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1001FF7BC;
  v14 = sub_1001FF7CC;
  v15 = 0;
  queue = [(OTCuttlefishAccountStateHolder *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100200034;
  block[3] = &unk_100344BB0;
  block[4] = self;
  block[5] = &v16;
  block[6] = &v10;
  dispatch_sync(queue, block);

  if (metadata)
  {
    v6 = v11[5];
    if (v6)
    {
      *metadata = v6;
    }
  }

  v7 = v17[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

- (void)registerNotification:(id)notification
{
  notificationCopy = notification;
  monitors = [(OTCuttlefishAccountStateHolder *)self monitors];
  [monitors addObject:notificationCopy];
}

- (OTCuttlefishAccountStateHolder)initWithQueue:(id)queue container:(id)container context:(id)context personaAdapter:(id)adapter activeAccount:(id)account
{
  queueCopy = queue;
  containerCopy = container;
  contextCopy = context;
  adapterCopy = adapter;
  accountCopy = account;
  v25.receiver = self;
  v25.super_class = OTCuttlefishAccountStateHolder;
  v17 = [(OTCuttlefishAccountStateHolder *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_queue, queue);
    v19 = dispatch_queue_create("OTCuttlefishAccountStateHolderNotifier", 0);
    notifyQueue = v18->_notifyQueue;
    v18->_notifyQueue = v19;

    objc_storeStrong(&v18->_containerName, container);
    objc_storeStrong(&v18->_contextID, context);
    v21 = +[NSMutableSet set];
    monitors = v18->_monitors;
    v18->_monitors = v21;

    objc_storeStrong(&v18->_personaAdapter, adapter);
    objc_storeStrong(&v18->_activeAccount, account);
  }

  return v18;
}

@end