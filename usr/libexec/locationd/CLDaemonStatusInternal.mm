@interface CLDaemonStatusInternal
- (void)airplaneModeChanged;
@end

@implementation CLDaemonStatusInternal

- (void)airplaneModeChanged
{
  v2 = [+[CLServiceVendor sharedInstance](CLServiceVendor proxyForService:"proxyForService:", @"CLDaemonStatus"];

  [v2 syncgetDoSync:&stru_102464000];
}

@end