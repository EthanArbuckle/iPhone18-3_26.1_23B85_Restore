@interface EPSagaTransactionSwitchAndSync
- (void)buildRoutingSlipEntries:(id)a3 serviceRegistry:(id)a4 completion:(id)a5;
@end

@implementation EPSagaTransactionSwitchAndSync

- (void)buildRoutingSlipEntries:(id)a3 serviceRegistry:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 objectForKeyedSubscript:@"switchToNRDeviceUUID"];
  v11 = [v7 objectForKeyedSubscript:@"shouldWaitForAssertion"];
  v12 = [v8 serviceFromClass:objc_opt_class()];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000803B8;
  v18[3] = &unk_1001783E0;
  v19 = v10;
  v20 = v8;
  v21 = v11;
  v22 = v7;
  v23 = v9;
  v13 = v9;
  v14 = v7;
  v15 = v11;
  v16 = v8;
  v17 = v10;
  [v12 grabRegistryWithReadBlockAsync:v18];
}

@end