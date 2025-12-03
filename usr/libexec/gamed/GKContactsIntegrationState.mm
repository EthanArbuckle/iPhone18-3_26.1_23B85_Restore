@interface GKContactsIntegrationState
- (id)initWithMoc:(id)moc settings:(id)settings controllerState:(unint64_t)state;
@end

@implementation GKContactsIntegrationState

- (id)initWithMoc:(id)moc settings:(id)settings controllerState:(unint64_t)state
{
  settingsCopy = settings;
  mocCopy = moc;
  v10 = [GKContactsIntegrationCohortState stateWithMoc:mocCopy];
  v11 = [GKContactsIntegrationIDSUpdateIntervalState stateWithMoc:mocCopy];

  v12 = [(GKContactsIntegrationState *)self initCohortStates:v10 controllerState:state idsUpdateIntervalState:v11 settings:settingsCopy];
  return v12;
}

@end