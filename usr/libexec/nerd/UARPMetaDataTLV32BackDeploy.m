@interface UARPMetaDataTLV32BackDeploy
- (UARPMetaDataTLV32BackDeploy)init;
- (id)tlvValue:(unsigned int)a3;
@end

@implementation UARPMetaDataTLV32BackDeploy

- (UARPMetaDataTLV32BackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV32BackDeploy;
  return [(UARPMetaDataTLVBackDeploy *)&v3 init];
}

- (id)tlvValue:(unsigned int)a3
{
  v5 = uarpHtonl(a3);
  v3 = [[NSData alloc] initWithBytes:&v5 length:4];

  return v3;
}

@end