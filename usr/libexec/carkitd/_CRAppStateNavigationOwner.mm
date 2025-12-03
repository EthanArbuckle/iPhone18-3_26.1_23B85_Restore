@interface _CRAppStateNavigationOwner
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOwner:(id)owner;
- (id)description;
- (unint64_t)hash;
@end

@implementation _CRAppStateNavigationOwner

- (id)description
{
  v3 = objc_opt_class();
  identifier = [(_CRAppStateNavigationOwner *)self identifier];
  connection = [(_CRAppStateNavigationOwner *)self connection];
  processIdentifier = [connection processIdentifier];
  v7 = sub_100042438([(_CRAppStateNavigationOwner *)self accNavRole]);
  connection2 = [(_CRAppStateNavigationOwner *)self connection];
  v9 = [NSString stringWithFormat:@"<%@: %p %@(%d) accNavRole=%@ connection=%p>", v3, self, identifier, processIdentifier, v7, connection2];

  return v9;
}

- (BOOL)isEqualToOwner:(id)owner
{
  ownerCopy = owner;
  identifier = [(_CRAppStateNavigationOwner *)self identifier];
  identifier2 = [ownerCopy identifier];
  if ([identifier isEqualToString:identifier2])
  {
    connection = [(_CRAppStateNavigationOwner *)self connection];
    processIdentifier = [connection processIdentifier];
    connection2 = [ownerCopy connection];
    v10 = processIdentifier == [connection2 processIdentifier];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(_CRAppStateNavigationOwner *)self isEqualToOwner:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  identifier = [(_CRAppStateNavigationOwner *)self identifier];
  v4 = [identifier hash];
  connection = [(_CRAppStateNavigationOwner *)self connection];
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [connection processIdentifier]);
  v7 = [v6 hash];

  return v7 ^ v4;
}

@end