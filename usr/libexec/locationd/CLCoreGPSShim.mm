@interface CLCoreGPSShim
- (void)sendRequestWithBytes:(const char *)bytes size:(int64_t)size;
@end

@implementation CLCoreGPSShim

- (void)sendRequestWithBytes:(const char *)bytes size:(int64_t)size
{
  selfCopy = self;
  sub_100134638(bytes, size);
}

@end