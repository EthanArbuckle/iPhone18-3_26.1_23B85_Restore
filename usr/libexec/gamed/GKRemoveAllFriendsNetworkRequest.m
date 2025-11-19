@interface GKRemoveAllFriendsNetworkRequest
- (id)initRequest;
@end

@implementation GKRemoveAllFriendsNetworkRequest

- (id)initRequest
{
  v3.receiver = self;
  v3.super_class = GKRemoveAllFriendsNetworkRequest;
  return [(GKRemoveFriendNetworkRequest *)&v3 initWithFriendPlayerID:&stru_100374F10];
}

@end