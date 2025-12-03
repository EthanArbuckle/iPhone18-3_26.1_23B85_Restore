@interface ConfiguratorClientInfo
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)consumeInfoForAggregation:(id)aggregation;
@end

@implementation ConfiguratorClientInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ConfiguratorClientInfo allocWithZone:?]];
  [(ConfiguratorClientInfo *)v4 setPrewarmUWB:self->_prewarmUWB];
  [(ConfiguratorClientInfo *)v4 setPrewarmSecureElementChannel:self->_prewarmSecureElementChannel];
  [(ConfiguratorClientInfo *)v4 setCarKeyRangingLimitExceeded:self->_carKeyRangingLimitExceeded];
  [(ConfiguratorClientInfo *)v4 setAcwgRangingLimitExceeded:self->_acwgRangingLimitExceeded];
  [(ConfiguratorClientInfo *)v4 setPassiveAccessIntent:self->_passiveAccessIntent];
  return v4;
}

- (void)consumeInfoForAggregation:(id)aggregation
{
  aggregationCopy = aggregation;
  v5 = aggregationCopy;
  v11 = aggregationCopy;
  if (self->_prewarmUWB)
  {
    prewarmUWB = 1;
  }

  else
  {
    prewarmUWB = [aggregationCopy prewarmUWB];
    v5 = v11;
  }

  self->_prewarmUWB = prewarmUWB;
  if (self->_prewarmSecureElementChannel)
  {
    prewarmSecureElementChannel = 1;
  }

  else
  {
    prewarmSecureElementChannel = [v5 prewarmSecureElementChannel];
    v5 = v11;
  }

  self->_prewarmSecureElementChannel = prewarmSecureElementChannel;
  if (self->_carKeyRangingLimitExceeded)
  {
    carKeyRangingLimitExceeded = 1;
  }

  else
  {
    carKeyRangingLimitExceeded = [v5 carKeyRangingLimitExceeded];
    v5 = v11;
  }

  self->_carKeyRangingLimitExceeded = carKeyRangingLimitExceeded;
  if (self->_acwgRangingLimitExceeded)
  {
    acwgRangingLimitExceeded = 1;
  }

  else
  {
    acwgRangingLimitExceeded = [v5 acwgRangingLimitExceeded];
    v5 = v11;
  }

  self->_acwgRangingLimitExceeded = acwgRangingLimitExceeded;
  passiveAccessIntent = self->_passiveAccessIntent;
  self->_passiveAccessIntent = [v5 passiveAccessIntent] | passiveAccessIntent;
}

- (id)description
{
  prewarmUWB = self->_prewarmUWB;
  prewarmSecureElementChannel = self->_prewarmSecureElementChannel;
  carKeyRangingLimitExceeded = self->_carKeyRangingLimitExceeded;
  acwgRangingLimitExceeded = self->_acwgRangingLimitExceeded;
  v6 = [NIInternalUtils NISystemPassiveAccessIntentToString:self->_passiveAccessIntent];
  v7 = [NSString stringWithFormat:@"[prewarm [UWB: %d, SE channel: %d], limits exceeded [CarKey: %d, ACWG: %d], passive access intent: %@]", prewarmUWB, prewarmSecureElementChannel, carKeyRangingLimitExceeded, acwgRangingLimitExceeded, v6];

  return v7;
}

@end