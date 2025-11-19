@interface FMDDispatchTransaction
+ (void)dispatchTransactionAsync:(id)a3 transactionName:(id)a4 block:(id)a5;
+ (void)dispatchTransactionSync:(id)a3 transactionName:(id)a4 block:(id)a5;
@end

@implementation FMDDispatchTransaction

+ (void)dispatchTransactionAsync:(id)a3 transactionName:(id)a4 block:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() transactionName:v8];

  v11 = +[FMXPCTransactionManager sharedInstance];
  [v11 beginTransaction:v10];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001EED48;
  v14[3] = &unk_1002CD8B0;
  v15 = v10;
  v16 = v7;
  v12 = v10;
  v13 = v7;
  dispatch_async(v9, v14);
}

+ (void)dispatchTransactionSync:(id)a3 transactionName:(id)a4 block:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() transactionName:v8];

  v11 = +[FMXPCTransactionManager sharedInstance];
  [v11 beginTransaction:v10];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001EEEC8;
  v14[3] = &unk_1002CD8B0;
  v15 = v10;
  v16 = v7;
  v12 = v10;
  v13 = v7;
  dispatch_sync(v9, v14);
}

@end