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
  playerInternal = [v4 playerInternal];

  v6 = [GKPlayerInternalOnboarding alloc];
  playerID = [playerInternal playerID];
  v8 = [v6 initWithPlayerID:playerID];
  [playerInternal setOnboarding:v8];

  return playerInternal;
}

- (id)localPlayerCacheGroup
{
  v3 = +[GKClientProxy gameCenterClient];
  v4 = [NSString stringWithFormat:@"%s:%d %s", "GKPlayerInternalProvider.m", 36, "[GKPlayerInternalProvider localPlayerCacheGroup]"];
  localPlayer = [(GKPlayerInternalProvider *)self localPlayer];
  playerID = [localPlayer playerID];
  v7 = [v3 transactionGroupWithName:v4 forPlayerID:playerID];

  return v7;
}

@end