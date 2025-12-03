@interface GKFriendSuggestionDenyList
+ (GKFriendSuggestionDenyList)empty;
- (GKFriendSuggestionDenyList)initWithContactIDs:(id)ds playerIDs:(id)iDs;
@end

@implementation GKFriendSuggestionDenyList

+ (GKFriendSuggestionDenyList)empty
{
  v2 = sub_100211E04();

  return v2;
}

- (GKFriendSuggestionDenyList)initWithContactIDs:(id)ds playerIDs:(id)iDs
{
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_100211F20(v4, v5);
}

@end