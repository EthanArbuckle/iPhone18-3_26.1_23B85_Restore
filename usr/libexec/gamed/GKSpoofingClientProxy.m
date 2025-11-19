@interface GKSpoofingClientProxy
- (id)transportWithCredential:(id)a3;
@end

@implementation GKSpoofingClientProxy

- (id)transportWithCredential:(id)a3
{
  v3 = a3;
  v4 = +[GKClientProxy gameCenterClient];
  v5 = [v4 transportWithCredential:v3];

  return v5;
}

@end