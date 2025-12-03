@interface MSDNearbyObject
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation MSDNearbyObject

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [equalCopy identifier];
    identifier2 = [(MSDNearbyObject *)self identifier];
    v7 = [identifier isEqual:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  identifier = [(MSDNearbyObject *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  identifier = [(MSDNearbyObject *)self identifier];
  v6 = [NSString stringWithFormat:@"<%@[%p]: Identifier=%@ IsInBubble=%d>", v4, self, identifier, [(MSDNearbyObject *)self isInBubble]];

  return v6;
}

@end