@interface SDAirDropSendStateMachine.ClassroomRunner
- (void)operationStartedWithOperation:(id)operation;
@end

@implementation SDAirDropSendStateMachine.ClassroomRunner

- (void)operationStartedWithOperation:(id)operation
{
  operationCopy = operation;
  selfCopy = self;
  sub_10062CD8C();
}

@end