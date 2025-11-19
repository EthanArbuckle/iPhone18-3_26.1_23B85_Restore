@interface WiFiCandidateNetworkStub
- (void)dealloc;
@end

@implementation WiFiCandidateNetworkStub

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WiFiCandidateNetworkStub;
  [(WiFiCandidateNetworkStub *)&v3 dealloc];
}

@end