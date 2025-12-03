@interface MSDSessionTaskInfo
- (id)description;
@end

@implementation MSDSessionTaskInfo

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  request = [(MSDSessionTaskInfo *)self request];
  v6 = [NSString stringWithFormat:@"<%@: request=%@>", v4, request];

  return v6;
}

@end