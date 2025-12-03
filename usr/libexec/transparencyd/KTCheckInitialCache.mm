@interface KTCheckInitialCache
- (KTCheckInitialCache)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState stateMachine:(id)machine;
- (void)setPendingFlag:(id)flag stateMachine:(id)machine;
@end

@implementation KTCheckInitialCache

- (void)setPendingFlag:(id)flag stateMachine:(id)machine
{
  machineCopy = machine;
  flagCopy = flag;
  v7 = [[KTPendingFlag alloc] initWithFlag:flagCopy conditions:2 delayInSeconds:60.0];

  [machineCopy _onqueueHandlePendingFlagLater:v7];
}

- (KTCheckInitialCache)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState stateMachine:(id)machine
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  machineCopy = machine;
  v21.receiver = self;
  v21.super_class = KTCheckInitialCache;
  v12 = [(KTGroupOperation *)&v21 init];
  v13 = v12;
  if (v12)
  {
    [(KTCheckInitialCache *)v12 setNextState:stateCopy];
    smDataStore = [dependenciesCopy smDataStore];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001A6358;
    v18[3] = &unk_100325F70;
    v15 = v13;
    v19 = v15;
    v20 = machineCopy;
    [smDataStore fetchIDMSDeviceList:v18];

    v16 = v15;
  }

  return v13;
}

@end