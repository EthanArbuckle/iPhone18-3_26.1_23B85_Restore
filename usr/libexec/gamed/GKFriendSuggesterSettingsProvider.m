@interface GKFriendSuggesterSettingsProvider
- (GKFriendSuggesterSettingsProvider)initWithStoreBag:(id)a3;
- (void)fetchSettingsWithQueue:(id)a3 handler:(id)a4;
- (void)fetchSettingsWithQueue:(id)a3 valuesForKeys:(id)a4 handler:(id)a5;
@end

@implementation GKFriendSuggesterSettingsProvider

- (GKFriendSuggesterSettingsProvider)initWithStoreBag:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GKFriendSuggesterSettingsProvider;
  v6 = [(GKFriendSuggesterSettingsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeBag, a3);
  }

  return v7;
}

- (void)fetchSettingsWithQueue:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[GKFriendSuggesterSettings allBagKeys];
  [(GKFriendSuggesterSettingsProvider *)self fetchSettingsWithQueue:v7 valuesForKeys:v8 handler:v6];
}

- (void)fetchSettingsWithQueue:(id)a3 valuesForKeys:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(GKFriendSuggesterSettingsProvider *)self storeBag];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10019AA50;
  v13[3] = &unk_100362868;
  v14 = v8;
  v12 = v8;
  [v11 getValuesForKeys:v9 queue:v10 completion:v13];
}

@end