@interface KTIDSOpsOptInOutData
- (id)description;
@end

@implementation KTIDSOpsOptInOutData

- (id)description
{
  optInStatus = [(KTIDSOpsOptInOutData *)self optInStatus];
  bOOLValue = [optInStatus BOOLValue];
  publicAccountKey = [(KTIDSOpsOptInOutData *)self publicAccountKey];
  kt_hexString = [publicAccountKey kt_hexString];
  v7 = [NSString stringWithFormat:@"<KTIDSOpsOptInOutData: %d publicKey: %@ changeReason: %d>", bOOLValue, kt_hexString, [(KTIDSOpsOptInOutData *)self optChangeReason]];

  return v7;
}

@end