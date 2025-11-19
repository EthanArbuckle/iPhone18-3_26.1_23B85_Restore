@interface GKRerankNetworkRequester
- (GKRerankNetworkRequester)initWithClientProxy:(id)a3 networkManager:(id)a4 transactionGroupProvider:(id)a5;
- (void)requestSortedContactAssociationIDs:(id)a3 handler:(id)a4;
@end

@implementation GKRerankNetworkRequester

- (GKRerankNetworkRequester)initWithClientProxy:(id)a3 networkManager:(id)a4 transactionGroupProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = GKRerankNetworkRequester;
  v12 = [(GKRerankNetworkRequester *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_networkManager, a4);
    objc_storeStrong(&v13->_clientProxy, a3);
    v14 = objc_retainBlock(v11);
    transactionGroupProvider = v13->_transactionGroupProvider;
    v13->_transactionGroupProvider = v14;
  }

  return v13;
}

- (void)requestSortedContactAssociationIDs:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
  {
    sub_1002960DC(v6, v9);
  }

  v20 = @"contact-association-ids";
  v21 = v6;
  v10 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  objc_initWeak(&location, self);
  v11 = [(GKRerankNetworkRequester *)self networkManager];
  v12 = [(GKRerankNetworkRequester *)self clientProxy];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10019D0E8;
  v15[3] = &unk_10036A3F0;
  objc_copyWeak(&v18, &location);
  v13 = v7;
  v17 = v13;
  v14 = v6;
  v16 = v14;
  [v11 issueRequest:v10 bagKey:@"gk-get-suggested-friends" clientProxy:v12 handler:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

@end