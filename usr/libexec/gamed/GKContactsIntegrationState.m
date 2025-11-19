@interface GKContactsIntegrationState
- (id)initWithMoc:(id)a3 settings:(id)a4 controllerState:(unint64_t)a5;
@end

@implementation GKContactsIntegrationState

- (id)initWithMoc:(id)a3 settings:(id)a4 controllerState:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [GKContactsIntegrationCohortState stateWithMoc:v9];
  v11 = [GKContactsIntegrationIDSUpdateIntervalState stateWithMoc:v9];

  v12 = [(GKContactsIntegrationState *)self initCohortStates:v10 controllerState:a5 idsUpdateIntervalState:v11 settings:v8];
  return v12;
}

@end