@interface CLCoreGPSShim
- (void)sendRequestWithBytes:(const char *)a3 size:(int64_t)a4;
@end

@implementation CLCoreGPSShim

- (void)sendRequestWithBytes:(const char *)a3 size:(int64_t)a4
{
  v6 = self;
  sub_100134638(a3, a4);
}

@end