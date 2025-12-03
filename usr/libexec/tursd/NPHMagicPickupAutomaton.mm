@interface NPHMagicPickupAutomaton
- (NPHMagicPickupAutomaton)init;
- (void)stateManager:(id)manager callConfigurationUpdated:(id)updated;
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

- (void)stateManager:(id)manager callConfigurationUpdated:(id)updated
{
  incomingCall = [updated incomingCall];
  if (incomingCall)
  {
    v7 = incomingCall;
    v5 = +[TUCallCenter sharedInstance];
    onlyTUCall = [v7 onlyTUCall];
    [v5 answerCall:onlyTUCall];

    incomingCall = v7;
  }
}

@end