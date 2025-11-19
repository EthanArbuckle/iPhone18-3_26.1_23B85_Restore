@interface AntBlockPowerLimitNBPolicy
- (AntBlockPowerLimitNBPolicy)init;
- (void)extractPolicy:(id)a3;
@end

@implementation AntBlockPowerLimitNBPolicy

- (AntBlockPowerLimitNBPolicy)init
{
  v3.receiver = self;
  v3.super_class = AntBlockPowerLimitNBPolicy;
  result = [(AntBlockPowerLimitBasePolicy *)&v3 init];
  result->_mNbChannelStart = 0xFFFF;
  result->_mNbChannelEnd = 0xFFFF;
  return result;
}

- (void)extractPolicy:(id)a3
{
  v8.receiver = self;
  v8.super_class = AntBlockPowerLimitNBPolicy;
  v4 = a3;
  [(AntBlockPowerLimitBasePolicy *)&v8 extractPolicy:v4];
  self->_mNbChannelStart = 0xFFFF;
  self->_mNbChannelEnd = 0xFFFF;
  v5 = [v4 objectForKey:{@"NB_Antenna_Bitmap", v8.receiver, v8.super_class}];
  self->_mNbAntennaBitmap = [v5 integerValue];

  v6 = [v4 objectForKey:@"NB_Priority_Bitmap"];
  self->_mNbPrioirtyBitmap = [v6 integerValue];

  v7 = [v4 objectForKey:@"NB_Channel_Band"];

  self->_mNbChannelBand = sub_10005BA3C(v7);
}

@end