@interface CAPProcedure
- (CAPProcedure)init;
- (void)description;
@end

@implementation CAPProcedure

- (CAPProcedure)init
{
  v3.receiver = self;
  v3.super_class = CAPProcedure;
  result = [(CAPProcedure *)&v3 init];
  if (result)
  {
    *&result->_currentState = 1;
  }

  return result;
}

- (void)description
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    currentState = self->_currentState;
    currentStateMachine = self->_currentStateMachine;
    v6 = v3;
    v7 = [ClientCommonAudioProfile stateToString:currentState withCurrentSM:currentStateMachine];
    v8 = [ClientCommonAudioProfile eventToString:self->_nextEvent];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CAP Procedure State Machine Dump:\n            Current State: %@\n            Next Event: %@\n", &v9, 0x16u);
  }
}

@end