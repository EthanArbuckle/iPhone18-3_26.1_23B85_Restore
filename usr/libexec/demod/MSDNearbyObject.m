@interface MSDNearbyObject
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation MSDNearbyObject

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 identifier];
    v6 = [(MSDNearbyObject *)self identifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(MSDNearbyObject *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(MSDNearbyObject *)self identifier];
  v6 = [NSString stringWithFormat:@"<%@[%p]: Identifier=%@ IsInBubble=%d>", v4, self, v5, [(MSDNearbyObject *)self isInBubble]];

  return v6;
}

@end