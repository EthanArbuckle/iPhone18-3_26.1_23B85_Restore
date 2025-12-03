@interface EKQueryDelegate
- (void)queryControllerDidUpdate:(id)update;
@end

@implementation EKQueryDelegate

- (void)queryControllerDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_1000BE874(updateCopy);
}

@end