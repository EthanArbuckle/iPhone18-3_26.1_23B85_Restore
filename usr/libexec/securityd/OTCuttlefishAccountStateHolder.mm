@interface OTCuttlefishAccountStateHolder
- (BOOL)_onqueuePersistAccountChanges:(id)a3 error:(id *)a4;
- (BOOL)_persistEscrowRepairAttemptVersion:(int64_t)a3 error:(id *)a4;
- (BOOL)persistAccountChanges:(id)a3 error:(id *)a4;
- (BOOL)persistLastEscrowRepairAttempted:(id)a3 error:(id *)a4;
- (BOOL)persistLastEscrowRepairTriggered:(id)a3 error:(id *)a4;
- (BOOL)persistLastHealthCheck:(id)a3 error:(id *)a4;
- (BOOL)persistNewEgoPeerID:(id)a3 error:(id *)a4;
- (BOOL)persistNewTrustState:(int)a3 error:(id *)a4;
- (BOOL)persistOctagonJoinAttempt:(int)a3 error:(id *)a4;
- (BOOL)persistSendingMetricsPermitted:(int)a3 error:(id *)a4;
- (OTCuttlefishAccountStateHolder)initWithQueue:(id)a3 container:(id)a4 context:(id)a5 personaAdapter:(id)a6 activeAccount:(id)a7;
- (id)_onqueueLoadOrCreateAccountMetadata:(id *)a3;
- (id)getEgoPeerID:(id *)a3;
- (id)lastHealthCheckupDate:(id *)a3;
- (id)loadOrCreateAccountMetadata:(id *)a3;
- (int)fetchSendingMetricsPermitted:(id *)a3;
- (void)asyncNotifyAccountStateChanges:(id)a3 from:(id)a4;
- (void)registerNotification:(id)a3;
@end

@implementation OTCuttlefishAccountStateHolder

- (void)asyncNotifyAccountStateChanges:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(OTCuttlefishAccountStateHolder *)self notifyQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001FEC60;
  v11[3] = &unk_100345310;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (BOOL)_onqueuePersistAccountChanges:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(OTCuttlefishAccountStateHolder *)self queue];
  dispatch_assert_queue_V2(v7);

  v23 = 0;
  v8 = [(OTCuttlefishAccountStateHolder *)self _onqueueLoadOrCreateAccountMetadata:&v23];
  v9 = v23;
  if (!v8)
  {
    v11 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v20 = a4;
  v10 = [v8 copy];
  v21 = v6;
  v11 = v6[2](v6, v10);

  v12 = [(OTCuttlefishAccountStateHolder *)self containerName];
  v13 = [(OTCuttlefishAccountStateHolder *)self contextID];
  v14 = [(OTCuttlefishAccountStateHolder *)self personaAdapter];
  v15 = [(OTCuttlefishAccountStateHolder *)self activeAccount];
  v16 = [v15 personaUniqueString];
  v22 = v9;
  LOBYTE(v10) = [v11 saveToKeychainForContainer:v12 contextID:v13 personaAdapter:v14 personaUniqueString:v16 error:&v22];
  v19 = v22;

  if ((v10 & 1) == 0)
  {

    v11 = 0;
  }

  v9 = v19;
  a4 = v20;
  v6 = v21;
  if (v20)
  {
LABEL_7:
    if (v9)
    {
      v17 = v9;
      *a4 = v9;
    }
  }

LABEL_9:
  if (v11)
  {
    [(OTCuttlefishAccountStateHolder *)self asyncNotifyAccountStateChanges:v11 from:v8];
  }

  return v11 != 0;
}

- (BOOL)_persistEscrowRepairAttemptVersion:(int64_t)a3 error:(id *)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001FEFE8;
  v5[3] = &unk_100344C40;
  v5[4] = a3;
  return [(OTCuttlefishAccountStateHolder *)self persistAccountChanges:v5 error:a4];
}

- (BOOL)persistLastEscrowRepairAttempted:(id)a3 error:(id *)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001FF0D8;
  v8[3] = &unk_100344BD8;
  v9 = a3;
  v6 = v9;
  LOBYTE(a4) = [(OTCuttlefishAccountStateHolder *)self persistAccountChanges:v8 error:a4];

  return a4;
}

- (BOOL)persistLastEscrowRepairTriggered:(id)a3 error:(id *)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001FF1F8;
  v8[3] = &unk_100344BD8;
  v9 = a3;
  v6 = v9;
  LOBYTE(a4) = [(OTCuttlefishAccountStateHolder *)self persistAccountChanges:v8 error:a4];

  return a4;
}

- (BOOL)persistSendingMetricsPermitted:(int)a3 error:(id *)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001FF2CC;
  v5[3] = &unk_100344BF8;
  v6 = a3;
  return [(OTCuttlefishAccountStateHolder *)self persistAccountChanges:v5 error:a4];
}

- (int)fetchSendingMetricsPermitted:(id *)a3
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
    if (a3)
    {
      v8 = v5;
      v9 = 0;
      *a3 = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [v4 sendingMetricsPermitted];
  }

  return v9;
}

- (BOOL)persistOctagonJoinAttempt:(int)a3 error:(id *)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001FF410;
  v5[3] = &unk_100344BF8;
  v6 = a3;
  return [(OTCuttlefishAccountStateHolder *)self persistAccountChanges:v5 error:a4];
}

- (BOOL)persistLastHealthCheck:(id)a3 error:(id *)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001FF500;
  v8[3] = &unk_100344BD8;
  v9 = a3;
  v6 = v9;
  LOBYTE(a4) = [(OTCuttlefishAccountStateHolder *)self persistAccountChanges:v8 error:a4];

  return a4;
}

- (BOOL)persistAccountChanges:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v7 = [(OTCuttlefishAccountStateHolder *)self queue];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1001FF7D4;
  v16 = &unk_100344C20;
  v19 = &v27;
  v20 = &v39;
  v17 = self;
  v21 = &v33;
  v8 = v6;
  v18 = v8;
  v22 = &v23;
  dispatch_sync(v7, &v13);

  if (a4)
  {
    v9 = v40[5];
    if (v9)
    {
      *a4 = v9;
    }
  }

  v10 = v34[5];
  if (v10)
  {
    [(OTCuttlefishAccountStateHolder *)self asyncNotifyAccountStateChanges:v10 from:v28[5], v13, v14, v15, v16, v17];
  }

  v11 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v11;
}

- (BOOL)persistNewTrustState:(int)a3 error:(id *)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001FF9F4;
  v5[3] = &unk_100344BF8;
  v6 = a3;
  return [(OTCuttlefishAccountStateHolder *)self persistAccountChanges:v5 error:a4];
}

- (BOOL)persistNewEgoPeerID:(id)a3 error:(id *)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001FFAE4;
  v8[3] = &unk_100344BD8;
  v9 = a3;
  v6 = v9;
  LOBYTE(a4) = [(OTCuttlefishAccountStateHolder *)self persistAccountChanges:v8 error:a4];

  return a4;
}

- (id)lastHealthCheckupDate:(id *)a3
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
    if (a3)
    {
      v8 = v5;
      v9 = 0;
      *a3 = v6;
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

- (id)getEgoPeerID:(id *)a3
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
    if (a3)
    {
      v8 = v5;
      v9 = 0;
      *a3 = v6;
      goto LABEL_13;
    }
  }

  else
  {
    v10 = [v4 peerID];

    if (v10)
    {
      v9 = [v4 peerID];
      goto LABEL_13;
    }

    if (a3)
    {
      [NSError errorWithDomain:@"otcuttlefish" code:0 description:@"No existing ego peer ID"];
      *a3 = v9 = 0;
      goto LABEL_13;
    }
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (id)_onqueueLoadOrCreateAccountMetadata:(id *)a3
{
  v5 = [(OTCuttlefishAccountStateHolder *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(OTCuttlefishAccountStateHolder *)self containerName];
  v7 = [(OTCuttlefishAccountStateHolder *)self contextID];
  v8 = [(OTCuttlefishAccountStateHolder *)self personaAdapter];
  v9 = [(OTCuttlefishAccountStateHolder *)self activeAccount];
  v10 = [v9 personaUniqueString];
  v19 = 0;
  v11 = [OTAccountMetadataClassC loadFromKeychainForContainer:v6 contextID:v7 personaAdapter:v8 personaUniqueString:v10 error:&v19];
  v12 = v19;

  if (v11 && !v12)
  {
    goto LABEL_3;
  }

  v14 = [v12 domain];
  if ([v14 isEqualToString:NSOSStatusErrorDomain])
  {
    v15 = [v12 code];

    if (v15 == -25300)
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

  if (a3)
  {
    v17 = v12;
    v13 = 0;
    *a3 = v12;
  }

  else
  {
    v13 = 0;
  }

LABEL_11:

  return v13;
}

- (id)loadOrCreateAccountMetadata:(id *)a3
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
  v5 = [(OTCuttlefishAccountStateHolder *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100200034;
  block[3] = &unk_100344BB0;
  block[4] = self;
  block[5] = &v16;
  block[6] = &v10;
  dispatch_sync(v5, block);

  if (a3)
  {
    v6 = v11[5];
    if (v6)
    {
      *a3 = v6;
    }
  }

  v7 = v17[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

- (void)registerNotification:(id)a3
{
  v4 = a3;
  v5 = [(OTCuttlefishAccountStateHolder *)self monitors];
  [v5 addObject:v4];
}

- (OTCuttlefishAccountStateHolder)initWithQueue:(id)a3 container:(id)a4 context:(id)a5 personaAdapter:(id)a6 activeAccount:(id)a7
{
  v24 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = OTCuttlefishAccountStateHolder;
  v17 = [(OTCuttlefishAccountStateHolder *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_queue, a3);
    v19 = dispatch_queue_create("OTCuttlefishAccountStateHolderNotifier", 0);
    notifyQueue = v18->_notifyQueue;
    v18->_notifyQueue = v19;

    objc_storeStrong(&v18->_containerName, a4);
    objc_storeStrong(&v18->_contextID, a5);
    v21 = +[NSMutableSet set];
    monitors = v18->_monitors;
    v18->_monitors = v21;

    objc_storeStrong(&v18->_personaAdapter, a6);
    objc_storeStrong(&v18->_activeAccount, a7);
  }

  return v18;
}

@end