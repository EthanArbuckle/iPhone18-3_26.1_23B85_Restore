@interface ConfiguratorClientInfo
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)consumeInfoForAggregation:(id)a3;
@end

@implementation ConfiguratorClientInfo

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ConfiguratorClientInfo allocWithZone:?]];
  [(ConfiguratorClientInfo *)v4 setPrewarmUWB:self->_prewarmUWB];
  [(ConfiguratorClientInfo *)v4 setPrewarmSecureElementChannel:self->_prewarmSecureElementChannel];
  [(ConfiguratorClientInfo *)v4 setCarKeyRangingLimitExceeded:self->_carKeyRangingLimitExceeded];
  [(ConfiguratorClientInfo *)v4 setAcwgRangingLimitExceeded:self->_acwgRangingLimitExceeded];
  [(ConfiguratorClientInfo *)v4 setPassiveAccessIntent:self->_passiveAccessIntent];
  return v4;
}

- (void)consumeInfoForAggregation:(id)a3
{
  v4 = a3;
  v5 = v4;
  v11 = v4;
  if (self->_prewarmUWB)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 prewarmUWB];
    v5 = v11;
  }

  self->_prewarmUWB = v6;
  if (self->_prewarmSecureElementChannel)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 prewarmSecureElementChannel];
    v5 = v11;
  }

  self->_prewarmSecureElementChannel = v7;
  if (self->_carKeyRangingLimitExceeded)
  {
    v8 = 1;
  }

  else
  {
    v8 = [v5 carKeyRangingLimitExceeded];
    v5 = v11;
  }

  self->_carKeyRangingLimitExceeded = v8;
  if (self->_acwgRangingLimitExceeded)
  {
    v9 = 1;
  }

  else
  {
    v9 = [v5 acwgRangingLimitExceeded];
    v5 = v11;
  }

  self->_acwgRangingLimitExceeded = v9;
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