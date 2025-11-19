@interface NPHMagicPickupAutomaton
- (NPHMagicPickupAutomaton)init;
- (void)stateManager:(id)a3 callConfigurationUpdated:(id)a4;
@end

@implementation NPHMagicPickupAutomaton

- (NPHMagicPickupAutomaton)init
{
  v8.receiver = self;
  v8.super_class = NPHMagicPickupAutomaton;
  v2 = [(NPHMagicPickupAutomaton *)&v8 init];
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"NPHMagicPickupAutomaton"];

    if (v4)
    {
      v5 = [[NPHStateManager alloc] initWithDelegate:v2];
      stateManager = v2->_stateManager;
      v2->_stateManager = v5;
    }
  }

  return v2;
}

- (void)stateManager:(id)a3 callConfigurationUpdated:(id)a4
{
  v4 = [a4 incomingCall];
  if (v4)
  {
    v7 = v4;
    v5 = +[TUCallCenter sharedInstance];
    v6 = [v7 onlyTUCall];
    [v5 answerCall:v6];

    v4 = v7;
  }
}

@end