@interface BTVCConnectionParams
- (BTVCConnectionParams)init;
@end

@implementation BTVCConnectionParams

- (BTVCConnectionParams)init
{
  v3.receiver = self;
  v3.super_class = BTVCConnectionParams;
  return [(BTVCConnectionParams *)&v3 init];
}

@end