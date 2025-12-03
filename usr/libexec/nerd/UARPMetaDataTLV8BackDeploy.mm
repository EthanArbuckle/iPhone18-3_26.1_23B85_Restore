@interface UARPMetaDataTLV8BackDeploy
- (UARPMetaDataTLV8BackDeploy)init;
- (id)tlvValue:(unsigned __int8)value;
@end

@implementation UARPMetaDataTLV8BackDeploy

- (UARPMetaDataTLV8BackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV8BackDeploy;
  return [(UARPMetaDataTLVBackDeploy *)&v3 init];
}

- (id)tlvValue:(unsigned __int8)value
{
  valueCopy = value;
  v3 = [[NSData alloc] initWithBytes:&valueCopy length:1];

  return v3;
}

@end