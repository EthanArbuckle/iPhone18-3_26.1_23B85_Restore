@interface KmlEntitlementChecker
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation KmlEntitlementChecker

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[KmlEntitlementChecker allocWithZone:](KmlEntitlementChecker init];
  if (v5)
  {
    v6 = [(NSString *)self->_clientName copyWithZone:a3];
    clientName = v5->_clientName;
    v5->_clientName = v6;

    v5->_xpcAccess = self->_xpcAccess;
    v5->_allowBackGroundClient = self->_allowBackGroundClient;
  }

  return v5;
}

@end