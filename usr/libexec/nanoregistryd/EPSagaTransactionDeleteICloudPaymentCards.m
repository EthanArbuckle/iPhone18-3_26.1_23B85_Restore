@interface EPSagaTransactionDeleteICloudPaymentCards
- (EPTransactionDelegate)delegate;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionDeleteICloudPaymentCards

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v8 = qword_1001B3738;
  v21 = qword_1001B3738;
  if (!qword_1001B3738)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000112E0;
    v17[3] = &unk_100175880;
    v17[4] = &v18;
    sub_1000112E0(v17);
    v8 = v19[3];
  }

  v9 = v8;
  _Block_object_dispose(&v18, 8);
  v10 = objc_opt_new();
  connection = self->_connection;
  self->_connection = v10;

  v12 = self->_connection;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100011174;
  v14[3] = &unk_100175598;
  v15 = v7;
  v16 = self;
  v13 = v7;
  [(NPKCompanionAgentConnection *)v12 handlePendingUnpairingWithCompletion:v14];
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end