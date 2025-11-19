@interface GKPlayerInternalProvider
- (id)localPlayer;
- (id)localPlayerCacheGroup;
@end

@implementation GKPlayerInternalProvider

- (id)localPlayer
{
  v2 = +[GKClientProxy gameCenterClient];
  v3 = +[GKPlayerCredentialController sharedController];
  v4 = [v3 primaryCredentialForEnvironment:{objc_msgSend(v2, "environment")}];
  v5 = [v4 playerInternal];

  v6 = [GKPlayerInternalOnboarding alloc];
  v7 = [v5 playerID];
  v8 = [v6 initWithPlayerID:v7];
  [v5 setOnboarding:v8];

  return v5;
}

- (id)localPlayerCacheGroup
{
  v3 = +[GKClientProxy gameCenterClient];
  v4 = [NSString stringWithFormat:@"%s:%d %s", "GKPlayerInternalProvider.m", 36, "[GKPlayerInternalProvider localPlayerCacheGroup]"];
  v5 = [(GKPlayerInternalProvider *)self localPlayer];
  v6 = [v5 playerID];
  v7 = [v3 transactionGroupWithName:v4 forPlayerID:v6];

  return v7;
}

@end