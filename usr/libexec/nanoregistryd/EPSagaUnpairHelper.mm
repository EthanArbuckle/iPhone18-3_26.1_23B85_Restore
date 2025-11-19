@interface EPSagaUnpairHelper
- (BOOL)startUnpairDueToError:(id)a3;
- (EPSagaUnpairHelperDelegate)delegate;
- (NRPairingReport)pairingReport;
- (id)registry;
- (id)routingSlipEntry;
- (id)serviceRegistry;
- (void)filePairingReportWithPairingID:(id)a3;
- (void)savePairingReport;
@end

@implementation EPSagaUnpairHelper

- (id)routingSlipEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained routingSlipEntry];

  return v3;
}

- (id)serviceRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained serviceRegistry];

  return v3;
}

- (id)registry
{
  v2 = [(EPSagaUnpairHelper *)self serviceRegistry];
  v3 = [v2 serviceFromClass:objc_opt_class()];

  return v3;
}

- (BOOL)startUnpairDueToError:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(EPSagaUnpairHelper *)self routingSlipEntry];
      v9 = [v8 name];
      *buf = 138412546;
      v42 = v9;
      v43 = 2112;
      v44 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "routingSlipEntry:%@ cancelWithError: %@", buf, 0x16u);
    }
  }

  unpairing = self->_unpairing;
  if (!unpairing)
  {
    self->_unpairing = 1;
    v14 = [(EPSagaUnpairHelper *)self routingSlipEntry];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v16 = [WeakRetained routingSlipEntryPairingIDKey];
    v17 = [v14 objectForKeyedSubscript:v16];

    v18 = objc_loadWeakRetained(&self->_delegate);
    LOBYTE(WeakRetained) = objc_opt_respondsToSelector();

    if (WeakRetained)
    {
      v19 = objc_loadWeakRetained(&self->_delegate);
      v20 = [v19 routingSlipEntryPairingStartedIDKey];

      v21 = [(EPSagaUnpairHelper *)self routingSlipEntry];
      v22 = [v21 objectForKeyedSubscript:v20];

      LOBYTE(v21) = [v22 BOOLValue];
      v23 = v21 ^ 1;
      if (!v4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v23 = 0;
      if (!v4)
      {
LABEL_13:
        v4 = nrGetPairingError();
      }
    }

    v24 = [(EPSagaUnpairHelper *)self pairingReport];
    v25 = [v24 isErrorSet];

    if ((v25 & 1) == 0)
    {
      v26 = [(EPSagaUnpairHelper *)self pairingReport];
      [v26 setOriginalError:v4];
    }

    if (!((v17 == 0) | v23 & 1))
    {
      v27 = [(EPSagaUnpairHelper *)self pairingReport];
      v28 = [v27 isErrorSet];

      if (v28)
      {
        v29 = [(EPSagaUnpairHelper *)self routingSlipEntry];
        v30 = [v29 errors];
        v31 = [(EPSagaUnpairHelper *)self pairingReport];
        v32 = [v31 detailedError];
        [v30 addObject:v32];

        v33 = [(EPSagaUnpairHelper *)self pairingReport];
        -[EPSagaUnpairHelper addToOrCapOffRTCPairingMetric:](self, "addToOrCapOffRTCPairingMetric:", [v33 subreason]);

        [(EPSagaUnpairHelper *)self filePairingReportWithPairingID:v17];
      }
    }

    v34 = [(EPSagaUnpairHelper *)self pairingReport];
    v35 = +[NRQueue registryDaemonQueue];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10006CD64;
    v38[3] = &unk_1001758F8;
    v38[4] = self;
    v39 = v17;
    v40 = v34;
    v36 = v34;
    v13 = v17;
    [v35 dispatchAsync:v38];

    goto LABEL_20;
  }

  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "already unpairing", buf, 2u);
    }

LABEL_20:
  }

  return !unpairing;
}

- (NRPairingReport)pairingReport
{
  v3 = [(EPSagaUnpairHelper *)self serviceRegistry];
  v4 = [v3 optionalServiceFromClass:objc_opt_class()];

  if (!v4)
  {
    v4 = objc_opt_new();
    v5 = [(EPSagaUnpairHelper *)self routingSlipEntry];
    v6 = [v5 objectForKeyedSubscript:@"extensiblePairingGizmoPairingVersion"];
    [v4 setGizmoMaxPairingVersion:{objc_msgSend(v6, "integerValue")}];

    v7 = [[EPSagaOperandPairingReport alloc] initWithPairingReport:v4];
    v8 = [(EPSagaUnpairHelper *)self routingSlipEntry];
    v9 = [v8 operands];
    [v9 setObject:v7 forKeyedSubscript:@"pairingReport"];

    v10 = [(EPSagaUnpairHelper *)self serviceRegistry];
    [v10 addService:v4];
  }

  v11 = [(EPSagaUnpairHelper *)self routingSlipEntry];
  v12 = [v11 objectForKeyedSubscript:@"pairingReport"];

  if (v12 != v4)
  {
    v13 = [[EPSagaOperandPairingReport alloc] initWithPairingReport:v4];
    v14 = [(EPSagaUnpairHelper *)self routingSlipEntry];
    v15 = [v14 operands];
    [v15 setObject:v13 forKeyedSubscript:@"pairingReport"];

    [(EPSagaUnpairHelper *)self savePairingReport];
  }

  return v4;
}

- (void)savePairingReport
{
  v3 = [(EPSagaUnpairHelper *)self routingSlipEntry];
  v5 = [v3 objectForKeyedSubscript:@"pairingReport"];

  if (v5)
  {
    v4 = [(EPSagaUnpairHelper *)self routingSlipEntry];
    [v4 persist];
  }
}

- (void)filePairingReportWithPairingID:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(EPSagaUnpairHelper *)self routingSlipEntry];
      v9 = [v8 name];
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Transaction: %@ file pairing report with pairing id called", buf, 0xCu);
    }
  }

  if (self->_shouldFilePairingReport)
  {
    v10 = dispatch_get_global_queue(17, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006D214;
    v11[3] = &unk_100175598;
    v11[4] = self;
    v12 = v4;
    dispatch_async(v10, v11);
  }
}

- (EPSagaUnpairHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end