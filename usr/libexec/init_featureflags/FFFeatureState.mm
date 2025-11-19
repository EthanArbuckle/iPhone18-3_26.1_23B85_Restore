@interface FFFeatureState
- (id)name;
@end

@implementation FFFeatureState

- (id)name
{
  v3 = [NSString alloc];
  v4 = [(FFFeatureState *)self domain];
  v5 = [(FFFeatureState *)self feature];
  v6 = [v3 initWithFormat:@"%@/%@", v4, v5];

  return v6;
}

@end