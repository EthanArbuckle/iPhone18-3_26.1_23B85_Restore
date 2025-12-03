@interface SuggestedActionsService
- (void)suggestedActionsForSuggestionsRequests:(NSArray *)requests reply:(id)reply;
@end

@implementation SuggestedActionsService

- (void)suggestedActionsForSuggestionsRequests:(NSArray *)requests reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = swift_allocObject();
  v7[2] = requests;
  v7[3] = v6;
  v7[4] = self;
  requestsCopy = requests;
  selfCopy = self;

  sub_100006240(&unk_10014F3D0, v7);
}

@end