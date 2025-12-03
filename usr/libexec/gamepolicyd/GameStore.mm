@interface GameStore
- (void)gamingMetadataBlobDidChange:(id)change;
@end

@implementation GameStore

- (void)gamingMetadataBlobDidChange:(id)change
{
  changeCopy = change;

  sub_1000081E0(changeCopy);
}

@end