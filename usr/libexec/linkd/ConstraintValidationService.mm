@interface ConstraintValidationService
- (void)validateAction:(LNAction *)action reply:(id)reply;
@end

@implementation ConstraintValidationService

- (void)validateAction:(LNAction *)action reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = swift_allocObject();
  v7[2] = action;
  v7[3] = v6;
  v7[4] = self;
  actionCopy = action;
  selfCopy = self;

  sub_100006240(&unk_10014EF68, v7);
}

@end