@interface NRSCDInterfaceConfig
- (id)description;
@end

@implementation NRSCDInterfaceConfig

- (id)description
{
  v3 = [[NSMutableString alloc] initWithString:@"NRSCDInterfaceConfig["];
  interfaceName = self->_interfaceName;
  interfaceIndex = self->_interfaceIndex;
  if (interfaceIndex && self->_isLinkActive)
  {
    v6 = self->_ipv4Addresses;
    if ([(NSMutableArray *)v6 count])
    {

LABEL_6:
      v8 = "";
      goto LABEL_8;
    }

    v7 = [(NSMutableArray *)self->_ipv6Addresses count];

    if (v7)
    {
      goto LABEL_6;
    }
  }

  v8 = "!";
LABEL_8:
  [v3 appendFormat:@"%@(%u), %savailable, v4:[%@], v6:[%@]", interfaceName, interfaceIndex, v8, self->_ipv4Addresses, self->_ipv6Addresses];
  [v3 appendString:@"]"];

  return v3;
}

@end