@interface EPSagaTransactionCreatePhoneSideWatchBackup
- (EPTransactionDelegate)delegate;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionCreatePhoneSideWatchBackup

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  v6 = [entryCopy objectForKeyedSubscript:@"nrDeviceIdentifier"];
  if (!v6)
  {
    v13 = nr_daemon_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

    if (v14)
    {
      v15 = nr_daemon_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100105A48();
      }

      goto LABEL_10;
    }

LABEL_11:
    delegate = [(EPSagaTransactionCreatePhoneSideWatchBackup *)self delegate];
    [delegate transactionDidComplete:self];
    goto LABEL_12;
  }

  if (!sub_1000E5280())
  {
    v16 = nr_daemon_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

    if (v17)
    {
      v15 = nr_daemon_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1001059B4();
      }

LABEL_10:

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  delegate = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = objc_alloc(sub_1000E5280());
  v9 = dispatch_queue_create("com.apple.nanoregistry.recoverymanager.backup", delegate);
  v10 = [v8 initWithQueue:v9];
  backupManager = self->_backupManager;
  self->_backupManager = v10;

  v12 = self->_backupManager;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000E5360;
  v18[3] = &unk_1001799D0;
  v18[4] = self;
  v19 = v6;
  v20 = entryCopy;
  [v12 createBackupForPairingID:v19 completionHandler:v18];

LABEL_12:
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  queue = [entry queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E5710;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end