@interface APSConnection
- (id)description;
@end

@implementation APSConnection

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(APSConnection *)self valueForKey:@"environmentName"];
  v5 = [(APSConnection *)self valueForKey:@"connectionPortName"];
  v6 = [NSString stringWithFormat:@"<%@ %p %@ %@>", v3, self, v4, v5];

  return v6;
}

@end