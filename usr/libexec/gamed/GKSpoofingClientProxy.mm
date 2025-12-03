@interface GKSpoofingClientProxy
- (id)transportWithCredential:(id)credential;
@end

@implementation GKSpoofingClientProxy

- (id)transportWithCredential:(id)credential
{
  credentialCopy = credential;
  v4 = +[GKClientProxy gameCenterClient];
  v5 = [v4 transportWithCredential:credentialCopy];

  return v5;
}

@end