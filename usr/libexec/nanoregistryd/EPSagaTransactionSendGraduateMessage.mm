@interface EPSagaTransactionSendGraduateMessage
- (EPTransactionDelegate)delegate;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionSendGraduateMessage

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  objc_storeStrong(&self->_routingSlipEntry, entry);
  registryCopy = registry;
  v9 = [registryCopy serviceFromClass:objc_opt_class()];

  v10 = [entryCopy objectForKeyedSubscript:@"coreBluetoothID"];
  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Telling Watch to Graduate! BT UUID %@", buf, 0xCu);
    }
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000724B4;
  v15[3] = &unk_100177410;
  v16 = v10;
  selfCopy = self;
  v14 = v10;
  [v9 sendGraduationRequestToIDSBTUUID:v14 withResponseBlock:v15];
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end