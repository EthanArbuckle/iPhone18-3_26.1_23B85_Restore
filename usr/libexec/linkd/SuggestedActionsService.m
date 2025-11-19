@interface SuggestedActionsService
- (void)suggestedActionsForSuggestionsRequests:(NSArray *)a3 reply:(id)a4;
@end

@implementation SuggestedActionsService

- (void)suggestedActionsForSuggestionsRequests:(NSArray *)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_100006240(&unk_10014F3D0, v7);
}

@end