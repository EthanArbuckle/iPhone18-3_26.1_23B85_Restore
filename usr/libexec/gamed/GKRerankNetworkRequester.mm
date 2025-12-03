@interface GKRerankNetworkRequester
- (GKRerankNetworkRequester)initWithClientProxy:(id)proxy networkManager:(id)manager transactionGroupProvider:(id)provider;
- (void)requestSortedContactAssociationIDs:(id)ds handler:(id)handler;
@end

@implementation GKRerankNetworkRequester

- (GKRerankNetworkRequester)initWithClientProxy:(id)proxy networkManager:(id)manager transactionGroupProvider:(id)provider
{
  proxyCopy = proxy;
  managerCopy = manager;
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = GKRerankNetworkRequester;
  v12 = [(GKRerankNetworkRequester *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_networkManager, manager);
    objc_storeStrong(&v13->_clientProxy, proxy);
    v14 = objc_retainBlock(providerCopy);
    transactionGroupProvider = v13->_transactionGroupProvider;
    v13->_transactionGroupProvider = v14;
  }

  return v13;
}

- (void)requestSortedContactAssociationIDs:(id)ds handler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
  {
    sub_1002960DC(dsCopy, v9);
  }

  v20 = @"contact-association-ids";
  v21 = dsCopy;
  v10 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  objc_initWeak(&location, self);
  networkManager = [(GKRerankNetworkRequester *)self networkManager];
  clientProxy = [(GKRerankNetworkRequester *)self clientProxy];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10019D0E8;
  v15[3] = &unk_10036A3F0;
  objc_copyWeak(&v18, &location);
  v13 = handlerCopy;
  v17 = v13;
  v14 = dsCopy;
  v16 = v14;
  [networkManager issueRequest:v10 bagKey:@"gk-get-suggested-friends" clientProxy:clientProxy handler:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

@end