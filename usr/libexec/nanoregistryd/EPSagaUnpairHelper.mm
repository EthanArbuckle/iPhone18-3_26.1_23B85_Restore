@interface EPSagaUnpairHelper
- (BOOL)startUnpairDueToError:(id)error;
- (EPSagaUnpairHelperDelegate)delegate;
- (NRPairingReport)pairingReport;
- (id)registry;
- (id)routingSlipEntry;
- (id)serviceRegistry;
- (void)filePairingReportWithPairingID:(id)d;
- (void)savePairingReport;
@end

@implementation EPSagaUnpairHelper

- (id)routingSlipEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  routingSlipEntry = [WeakRetained routingSlipEntry];

  return routingSlipEntry;
}

- (id)serviceRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  serviceRegistry = [WeakRetained serviceRegistry];

  return serviceRegistry;
}

- (id)registry
{
  serviceRegistry = [(EPSagaUnpairHelper *)self serviceRegistry];
  v3 = [serviceRegistry serviceFromClass:objc_opt_class()];

  return v3;
}

- (BOOL)startUnpairDueToError:(id)error
{
  errorCopy = error;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      routingSlipEntry = [(EPSagaUnpairHelper *)self routingSlipEntry];
      name = [routingSlipEntry name];
      *buf = 138412546;
      v42 = name;
      v43 = 2112;
      v44 = errorCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "routingSlipEntry:%@ cancelWithError: %@", buf, 0x16u);
    }
  }

  unpairing = self->_unpairing;
  if (!unpairing)
  {
    self->_unpairing = 1;
    routingSlipEntry2 = [(EPSagaUnpairHelper *)self routingSlipEntry];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    routingSlipEntryPairingIDKey = [WeakRetained routingSlipEntryPairingIDKey];
    v17 = [routingSlipEntry2 objectForKeyedSubscript:routingSlipEntryPairingIDKey];

    v18 = objc_loadWeakRetained(&self->_delegate);
    LOBYTE(WeakRetained) = objc_opt_respondsToSelector();

    if (WeakRetained)
    {
      v19 = objc_loadWeakRetained(&self->_delegate);
      routingSlipEntryPairingStartedIDKey = [v19 routingSlipEntryPairingStartedIDKey];

      routingSlipEntry3 = [(EPSagaUnpairHelper *)self routingSlipEntry];
      v22 = [routingSlipEntry3 objectForKeyedSubscript:routingSlipEntryPairingStartedIDKey];

      LOBYTE(routingSlipEntry3) = [v22 BOOLValue];
      v23 = routingSlipEntry3 ^ 1;
      if (!errorCopy)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v23 = 0;
      if (!errorCopy)
      {
LABEL_13:
        errorCopy = nrGetPairingError();
      }
    }

    pairingReport = [(EPSagaUnpairHelper *)self pairingReport];
    isErrorSet = [pairingReport isErrorSet];

    if ((isErrorSet & 1) == 0)
    {
      pairingReport2 = [(EPSagaUnpairHelper *)self pairingReport];
      [pairingReport2 setOriginalError:errorCopy];
    }

    if (!((v17 == 0) | v23 & 1))
    {
      pairingReport3 = [(EPSagaUnpairHelper *)self pairingReport];
      isErrorSet2 = [pairingReport3 isErrorSet];

      if (isErrorSet2)
      {
        routingSlipEntry4 = [(EPSagaUnpairHelper *)self routingSlipEntry];
        errors = [routingSlipEntry4 errors];
        pairingReport4 = [(EPSagaUnpairHelper *)self pairingReport];
        detailedError = [pairingReport4 detailedError];
        [errors addObject:detailedError];

        pairingReport5 = [(EPSagaUnpairHelper *)self pairingReport];
        -[EPSagaUnpairHelper addToOrCapOffRTCPairingMetric:](self, "addToOrCapOffRTCPairingMetric:", [pairingReport5 subreason]);

        [(EPSagaUnpairHelper *)self filePairingReportWithPairingID:v17];
      }
    }

    pairingReport6 = [(EPSagaUnpairHelper *)self pairingReport];
    v35 = +[NRQueue registryDaemonQueue];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10006CD64;
    v38[3] = &unk_1001758F8;
    v38[4] = self;
    v39 = v17;
    v40 = pairingReport6;
    v36 = pairingReport6;
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
  serviceRegistry = [(EPSagaUnpairHelper *)self serviceRegistry];
  v4 = [serviceRegistry optionalServiceFromClass:objc_opt_class()];

  if (!v4)
  {
    v4 = objc_opt_new();
    routingSlipEntry = [(EPSagaUnpairHelper *)self routingSlipEntry];
    v6 = [routingSlipEntry objectForKeyedSubscript:@"extensiblePairingGizmoPairingVersion"];
    [v4 setGizmoMaxPairingVersion:{objc_msgSend(v6, "integerValue")}];

    v7 = [[EPSagaOperandPairingReport alloc] initWithPairingReport:v4];
    routingSlipEntry2 = [(EPSagaUnpairHelper *)self routingSlipEntry];
    operands = [routingSlipEntry2 operands];
    [operands setObject:v7 forKeyedSubscript:@"pairingReport"];

    serviceRegistry2 = [(EPSagaUnpairHelper *)self serviceRegistry];
    [serviceRegistry2 addService:v4];
  }

  routingSlipEntry3 = [(EPSagaUnpairHelper *)self routingSlipEntry];
  v12 = [routingSlipEntry3 objectForKeyedSubscript:@"pairingReport"];

  if (v12 != v4)
  {
    v13 = [[EPSagaOperandPairingReport alloc] initWithPairingReport:v4];
    routingSlipEntry4 = [(EPSagaUnpairHelper *)self routingSlipEntry];
    operands2 = [routingSlipEntry4 operands];
    [operands2 setObject:v13 forKeyedSubscript:@"pairingReport"];

    [(EPSagaUnpairHelper *)self savePairingReport];
  }

  return v4;
}

- (void)savePairingReport
{
  routingSlipEntry = [(EPSagaUnpairHelper *)self routingSlipEntry];
  v5 = [routingSlipEntry objectForKeyedSubscript:@"pairingReport"];

  if (v5)
  {
    routingSlipEntry2 = [(EPSagaUnpairHelper *)self routingSlipEntry];
    [routingSlipEntry2 persist];
  }
}

- (void)filePairingReportWithPairingID:(id)d
{
  dCopy = d;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      routingSlipEntry = [(EPSagaUnpairHelper *)self routingSlipEntry];
      name = [routingSlipEntry name];
      *buf = 138412290;
      v14 = name;
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
    v12 = dCopy;
    dispatch_async(v10, v11);
  }
}

- (EPSagaUnpairHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end