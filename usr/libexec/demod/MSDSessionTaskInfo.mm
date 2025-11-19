@interface MSDSessionTaskInfo
- (id)description;
@end

@implementation MSDSessionTaskInfo

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(MSDSessionTaskInfo *)self request];
  v6 = [NSString stringWithFormat:@"<%@: request=%@>", v4, v5];

  return v6;
}

@end