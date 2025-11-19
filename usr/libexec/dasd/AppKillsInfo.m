@interface AppKillsInfo
- (AppKillsInfo)init;
@end

@implementation AppKillsInfo

- (AppKillsInfo)init
{
  v6.receiver = self;
  v6.super_class = AppKillsInfo;
  v2 = [(AppKillsInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 24) = 0u;
    *(v2 + 8) = 0u;
    v4 = *(v2 + 5);
    *(v2 + 5) = 0;
  }

  return v3;
}

@end