@interface DefaultPINController
- (void)recordingStateDidChange:(id)change;
@end

@implementation DefaultPINController

- (void)recordingStateDidChange:(id)change
{
  changeCopy = change;

  sub_1000D497C(changeCopy);
}

@end