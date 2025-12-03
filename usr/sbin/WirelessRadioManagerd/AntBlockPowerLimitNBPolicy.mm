@interface AntBlockPowerLimitNBPolicy
- (AntBlockPowerLimitNBPolicy)init;
- (void)extractPolicy:(id)policy;
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

- (void)extractPolicy:(id)policy
{
  v8.receiver = self;
  v8.super_class = AntBlockPowerLimitNBPolicy;
  policyCopy = policy;
  [(AntBlockPowerLimitBasePolicy *)&v8 extractPolicy:policyCopy];
  self->_mNbChannelStart = 0xFFFF;
  self->_mNbChannelEnd = 0xFFFF;
  v5 = [policyCopy objectForKey:{@"NB_Antenna_Bitmap", v8.receiver, v8.super_class}];
  self->_mNbAntennaBitmap = [v5 integerValue];

  v6 = [policyCopy objectForKey:@"NB_Priority_Bitmap"];
  self->_mNbPrioirtyBitmap = [v6 integerValue];

  v7 = [policyCopy objectForKey:@"NB_Channel_Band"];

  self->_mNbChannelBand = sub_10005BA3C(v7);
}

@end