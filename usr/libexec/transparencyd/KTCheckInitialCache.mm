@interface KTCheckInitialCache
- (KTCheckInitialCache)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 stateMachine:(id)a6;
- (void)setPendingFlag:(id)a3 stateMachine:(id)a4;
@end

@implementation KTCheckInitialCache

- (void)setPendingFlag:(id)a3 stateMachine:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[KTPendingFlag alloc] initWithFlag:v6 conditions:2 delayInSeconds:60.0];

  [v5 _onqueueHandlePendingFlagLater:v7];
}

- (KTCheckInitialCache)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5 stateMachine:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v21.receiver = self;
  v21.super_class = KTCheckInitialCache;
  v12 = [(KTGroupOperation *)&v21 init];
  v13 = v12;
  if (v12)
  {
    [(KTCheckInitialCache *)v12 setNextState:v10];
    v14 = [v9 smDataStore];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001A6358;
    v18[3] = &unk_100325F70;
    v15 = v13;
    v19 = v15;
    v20 = v11;
    [v14 fetchIDMSDeviceList:v18];

    v16 = v15;
  }

  return v13;
}

@end