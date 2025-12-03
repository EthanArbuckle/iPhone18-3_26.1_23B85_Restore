@interface EPSagaTransactionSetDaemonsEnabled
+ (void)enableDaemons:(unint64_t)daemons serviceRegistry:(id)registry completion:(id)completion;
+ (void)getNormalDaemonValueWith:(id)with serviceRegistry:(id)registry forceEnableWhenPairedOrActive:(BOOL)active completion:(id)completion;
- (EPTransactionDelegate)delegate;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionSetDaemonsEnabled

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  registryCopy = registry;
  entryCopy = entry;
  v8 = [entryCopy objectForKeyedSubscript:@"setDaemonsEnabled"];
  v9 = [entryCopy objectForKeyedSubscript:@"forceEnableIfPairedOrActive"];
  operands = [entryCopy operands];

  v11 = [operands objectForKeyedSubscript:@"setDaemonsEnabledNormalizeDeviceID"];

  if (v11)
  {
    value = [v11 value];
    v13 = objc_opt_class();
    bOOLValue = [v9 BOOLValue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001C9DC;
    v16[3] = &unk_1001760A8;
    v16[4] = self;
    v17 = registryCopy;
    [v13 getNormalDaemonValueWith:value serviceRegistry:v17 forceEnableWhenPairedOrActive:bOOLValue completion:v16];
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001CABC;
    v15[3] = &unk_100175660;
    v15[4] = self;
    [objc_opt_class() enableDaemons:objc_msgSend(v8 serviceRegistry:"integerValue") completion:{registryCopy, v15}];
  }
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  registryCopy = registry;
  entryCopy = entry;
  v8 = [entryCopy objectForKeyedSubscript:@"setDaemonsEnabledRollback"];
  v9 = [entryCopy objectForKeyedSubscript:@"forceEnableIfPairedOrActive"];
  operands = [entryCopy operands];

  v11 = [operands objectForKeyedSubscript:@"setDaemonsEnabledRollbackNormalizeDeviceID"];

  if (v11)
  {
    value = [v11 value];
    v13 = objc_opt_class();
    bOOLValue = [v9 BOOLValue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001CCF4;
    v16[3] = &unk_1001760A8;
    v16[4] = self;
    v17 = registryCopy;
    [v13 getNormalDaemonValueWith:value serviceRegistry:v17 forceEnableWhenPairedOrActive:bOOLValue completion:v16];
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001CDD4;
    v15[3] = &unk_100175660;
    v15[4] = self;
    [objc_opt_class() enableDaemons:objc_msgSend(v8 serviceRegistry:"integerValue") completion:{registryCopy, v15}];
  }
}

+ (void)getNormalDaemonValueWith:(id)with serviceRegistry:(id)registry forceEnableWhenPairedOrActive:(BOOL)active completion:(id)completion
{
  withCopy = with;
  registryCopy = registry;
  completionCopy = completion;
  v12 = [registryCopy serviceFromClass:objc_opt_class()];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001CF3C;
  v16[3] = &unk_1001760F8;
  v17 = withCopy;
  v18 = registryCopy;
  activeCopy = active;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = registryCopy;
  v15 = withCopy;
  [v12 grabRegistryWithReadBlockAsync:v16];
}

+ (void)enableDaemons:(unint64_t)daemons serviceRegistry:(id)registry completion:(id)completion
{
  registryCopy = registry;
  completionCopy = completion;
  v9 = [registryCopy serviceFromProtocol:&OBJC_PROTOCOL___NRRootCommander];
  v10 = [v9 enableNanoDaemons:daemons didEnable:0];
  if (completionCopy)
  {
    queue = [registryCopy queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001D4D0;
    block[3] = &unk_100175D58;
    v13 = completionCopy;
    dispatch_async(queue, block);
  }
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end