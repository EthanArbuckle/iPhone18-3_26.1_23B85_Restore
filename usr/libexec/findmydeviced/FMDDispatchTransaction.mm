@interface FMDDispatchTransaction
+ (void)dispatchTransactionAsync:(id)async transactionName:(id)name block:(id)block;
+ (void)dispatchTransactionSync:(id)sync transactionName:(id)name block:(id)block;
@end

@implementation FMDDispatchTransaction

+ (void)dispatchTransactionAsync:(id)async transactionName:(id)name block:(id)block
{
  blockCopy = block;
  nameCopy = name;
  asyncCopy = async;
  v10 = [objc_opt_class() transactionName:nameCopy];

  v11 = +[FMXPCTransactionManager sharedInstance];
  [v11 beginTransaction:v10];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001EED48;
  v14[3] = &unk_1002CD8B0;
  v15 = v10;
  v16 = blockCopy;
  v12 = v10;
  v13 = blockCopy;
  dispatch_async(asyncCopy, v14);
}

+ (void)dispatchTransactionSync:(id)sync transactionName:(id)name block:(id)block
{
  blockCopy = block;
  nameCopy = name;
  syncCopy = sync;
  v10 = [objc_opt_class() transactionName:nameCopy];

  v11 = +[FMXPCTransactionManager sharedInstance];
  [v11 beginTransaction:v10];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001EEEC8;
  v14[3] = &unk_1002CD8B0;
  v15 = v10;
  v16 = blockCopy;
  v12 = v10;
  v13 = blockCopy;
  dispatch_sync(syncCopy, v14);
}

@end