@interface NSPPrivacyProxyNetworkRegistration
- (void)reportErrorForAgent:(id)agent error:(int)error withOptions:(id)options;
- (void)tokenLowWaterMarkReachedForAgent:(id)agent;
@end

@implementation NSPPrivacyProxyNetworkRegistration

- (void)tokenLowWaterMarkReachedForAgent:(id)agent
{
  agentCopy = agent;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_100001F24;
  v11[4] = sub_100042614;
  v12 = os_transaction_create();
  v5 = NPGetInternalQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004261C;
  block[3] = &unk_100109370;
  v8 = agentCopy;
  selfCopy = self;
  v10 = v11;
  v6 = agentCopy;
  dispatch_async(v5, block);

  _Block_object_dispose(v11, 8);
}

- (void)reportErrorForAgent:(id)agent error:(int)error withOptions:(id)options
{
  agentCopy = agent;
  optionsCopy = options;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_100001F24;
  v19[4] = sub_100042614;
  v20 = os_transaction_create();
  v10 = NPGetInternalQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000428AC;
  block[3] = &unk_100109398;
  errorCopy = error;
  v14 = agentCopy;
  selfCopy = self;
  v16 = optionsCopy;
  v17 = v19;
  v11 = optionsCopy;
  v12 = agentCopy;
  dispatch_async(v10, block);

  _Block_object_dispose(v19, 8);
}

@end