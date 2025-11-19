@interface MSDSessionDataPoint
- (id)print;
@end

@implementation MSDSessionDataPoint

- (id)print
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"Override %@ in a subclass", v2];

  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  objc_exception_throw(v4);
}

@end