@interface FFFeatureState
- (id)name;
@end

@implementation FFFeatureState

- (id)name
{
  v3 = [NSString alloc];
  domain = [(FFFeatureState *)self domain];
  feature = [(FFFeatureState *)self feature];
  v6 = [v3 initWithFormat:@"%@/%@", domain, feature];

  return v6;
}

@end