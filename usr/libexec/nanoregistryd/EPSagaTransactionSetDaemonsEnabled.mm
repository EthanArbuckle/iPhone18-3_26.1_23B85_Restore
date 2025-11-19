@interface EPSagaTransactionSetDaemonsEnabled
+ (void)enableDaemons:(unint64_t)a3 serviceRegistry:(id)a4 completion:(id)a5;
+ (void)getNormalDaemonValueWith:(id)a3 serviceRegistry:(id)a4 forceEnableWhenPairedOrActive:(BOOL)a5 completion:(id)a6;
- (EPTransactionDelegate)delegate;
- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionSetDaemonsEnabled

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"setDaemonsEnabled"];
  v9 = [v7 objectForKeyedSubscript:@"forceEnableIfPairedOrActive"];
  v10 = [v7 operands];

  v11 = [v10 objectForKeyedSubscript:@"setDaemonsEnabledNormalizeDeviceID"];

  if (v11)
  {
    v12 = [v11 value];
    v13 = objc_opt_class();
    v14 = [v9 BOOLValue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001C9DC;
    v16[3] = &unk_1001760A8;
    v16[4] = self;
    v17 = v6;
    [v13 getNormalDaemonValueWith:v12 serviceRegistry:v17 forceEnableWhenPairedOrActive:v14 completion:v16];
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001CABC;
    v15[3] = &unk_100175660;
    v15[4] = self;
    [objc_opt_class() enableDaemons:objc_msgSend(v8 serviceRegistry:"integerValue") completion:{v6, v15}];
  }
}

- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"setDaemonsEnabledRollback"];
  v9 = [v7 objectForKeyedSubscript:@"forceEnableIfPairedOrActive"];
  v10 = [v7 operands];

  v11 = [v10 objectForKeyedSubscript:@"setDaemonsEnabledRollbackNormalizeDeviceID"];

  if (v11)
  {
    v12 = [v11 value];
    v13 = objc_opt_class();
    v14 = [v9 BOOLValue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001CCF4;
    v16[3] = &unk_1001760A8;
    v16[4] = self;
    v17 = v6;
    [v13 getNormalDaemonValueWith:v12 serviceRegistry:v17 forceEnableWhenPairedOrActive:v14 completion:v16];
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001CDD4;
    v15[3] = &unk_100175660;
    v15[4] = self;
    [objc_opt_class() enableDaemons:objc_msgSend(v8 serviceRegistry:"integerValue") completion:{v6, v15}];
  }
}

+ (void)getNormalDaemonValueWith:(id)a3 serviceRegistry:(id)a4 forceEnableWhenPairedOrActive:(BOOL)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v10 serviceFromClass:objc_opt_class()];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001CF3C;
  v16[3] = &unk_1001760F8;
  v17 = v9;
  v18 = v10;
  v20 = a5;
  v19 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  [v12 grabRegistryWithReadBlockAsync:v16];
}

+ (void)enableDaemons:(unint64_t)a3 serviceRegistry:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 serviceFromProtocol:&OBJC_PROTOCOL___NRRootCommander];
  v10 = [v9 enableNanoDaemons:a3 didEnable:0];
  if (v8)
  {
    v11 = [v7 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001D4D0;
    block[3] = &unk_100175D58;
    v13 = v8;
    dispatch_async(v11, block);
  }
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end