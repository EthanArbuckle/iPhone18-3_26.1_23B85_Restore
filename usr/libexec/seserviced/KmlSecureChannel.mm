@interface KmlSecureChannel
- (KmlSecureChannel)init;
@end

@implementation KmlSecureChannel

- (KmlSecureChannel)init
{
  v6.receiver = self;
  v6.super_class = KmlSecureChannel;
  v2 = [(KmlSecureChannel *)&v6 init];
  if (v2)
  {
    v3 = [[NSMutableData alloc] initWithLength:16];
    macChainingValue = v2->_macChainingValue;
    v2->_macChainingValue = v3;

    v2->_commandCounter = 1;
    *&v2->_ignoreHeaderAndStatusWordInMacCalculation = 0;
  }

  return v2;
}

@end