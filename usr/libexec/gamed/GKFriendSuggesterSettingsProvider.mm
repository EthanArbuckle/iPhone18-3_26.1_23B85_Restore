@interface GKFriendSuggesterSettingsProvider
- (GKFriendSuggesterSettingsProvider)initWithStoreBag:(id)bag;
- (void)fetchSettingsWithQueue:(id)queue handler:(id)handler;
- (void)fetchSettingsWithQueue:(id)queue valuesForKeys:(id)keys handler:(id)handler;
@end

@implementation GKFriendSuggesterSettingsProvider

- (GKFriendSuggesterSettingsProvider)initWithStoreBag:(id)bag
{
  bagCopy = bag;
  v9.receiver = self;
  v9.super_class = GKFriendSuggesterSettingsProvider;
  v6 = [(GKFriendSuggesterSettingsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeBag, bag);
  }

  return v7;
}

- (void)fetchSettingsWithQueue:(id)queue handler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  v8 = +[GKFriendSuggesterSettings allBagKeys];
  [(GKFriendSuggesterSettingsProvider *)self fetchSettingsWithQueue:queueCopy valuesForKeys:v8 handler:handlerCopy];
}

- (void)fetchSettingsWithQueue:(id)queue valuesForKeys:(id)keys handler:(id)handler
{
  handlerCopy = handler;
  keysCopy = keys;
  queueCopy = queue;
  storeBag = [(GKFriendSuggesterSettingsProvider *)self storeBag];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10019AA50;
  v13[3] = &unk_100362868;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [storeBag getValuesForKeys:keysCopy queue:queueCopy completion:v13];
}

@end