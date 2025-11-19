@interface _CRAppStateNavigationOwner
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOwner:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation _CRAppStateNavigationOwner

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(_CRAppStateNavigationOwner *)self identifier];
  v5 = [(_CRAppStateNavigationOwner *)self connection];
  v6 = [v5 processIdentifier];
  v7 = sub_100042438([(_CRAppStateNavigationOwner *)self accNavRole]);
  v8 = [(_CRAppStateNavigationOwner *)self connection];
  v9 = [NSString stringWithFormat:@"<%@: %p %@(%d) accNavRole=%@ connection=%p>", v3, self, v4, v6, v7, v8];

  return v9;
}

- (BOOL)isEqualToOwner:(id)a3
{
  v4 = a3;
  v5 = [(_CRAppStateNavigationOwner *)self identifier];
  v6 = [v4 identifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(_CRAppStateNavigationOwner *)self connection];
    v8 = [v7 processIdentifier];
    v9 = [v4 connection];
    v10 = v8 == [v9 processIdentifier];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(_CRAppStateNavigationOwner *)self isEqualToOwner:v4];
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
  v3 = [(_CRAppStateNavigationOwner *)self identifier];
  v4 = [v3 hash];
  v5 = [(_CRAppStateNavigationOwner *)self connection];
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 processIdentifier]);
  v7 = [v6 hash];

  return v7 ^ v4;
}

@end