@interface KTIDSOpsOptInOutData
- (id)description;
@end

@implementation KTIDSOpsOptInOutData

- (id)description
{
  v3 = [(KTIDSOpsOptInOutData *)self optInStatus];
  v4 = [v3 BOOLValue];
  v5 = [(KTIDSOpsOptInOutData *)self publicAccountKey];
  v6 = [v5 kt_hexString];
  v7 = [NSString stringWithFormat:@"<KTIDSOpsOptInOutData: %d publicKey: %@ changeReason: %d>", v4, v6, [(KTIDSOpsOptInOutData *)self optChangeReason]];

  return v7;
}

@end