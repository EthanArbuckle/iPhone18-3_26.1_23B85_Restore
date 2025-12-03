@interface GKAchievementThatAFriendHasCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)representation;
@end

@implementation GKAchievementThatAFriendHasCacheObject

- (void)updateWithServerRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"friend"];
  [(GKAchievementThatAFriendHasCacheObject *)self setFriend:v5];

  v6 = [representationCopy objectForKeyedSubscript:@"timestamp"];

  [(GKAchievementThatAFriendHasCacheObject *)self setTimestamp:v6];
}

- (id)internalRepresentation
{
  v3 = +[GKAchievementThatAFriendHasInternal internalRepresentation];
  friend = [(GKAchievementThatAFriendHasCacheObject *)self friend];
  internalRepresentation = [friend internalRepresentation];
  [v3 setFriendPlayer:internalRepresentation];

  timestamp = [(GKAchievementThatAFriendHasCacheObject *)self timestamp];
  [v3 setTimestamp:timestamp];

  return v3;
}

@end