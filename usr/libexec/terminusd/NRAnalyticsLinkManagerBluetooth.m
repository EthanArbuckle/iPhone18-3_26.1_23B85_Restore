@interface NRAnalyticsLinkManagerBluetooth
- (void)submit;
@end

@implementation NRAnalyticsLinkManagerBluetooth

- (void)submit
{
  if (self)
  {
    if (self->_peerRemovedPairingInformation)
    {
      v3 = [NSNumber numberWithBool:1];
      [(NSMutableDictionary *)self->super._eventDictionary setObject:v3 forKeyedSubscript:@"peerRemovedPairingInformation"];
    }

    if (self->_noBTPipeCallbacks)
    {
      v4 = [NSNumber numberWithBool:1];
      [(NSMutableDictionary *)self->super._eventDictionary setObject:v4 forKeyedSubscript:@"noBTPipeCallbacks"];
    }

    if (self->_pipeConnectedDuration)
    {
      v5 = [NSNumber numberWithUnsignedLongLong:?];
      [(NSMutableDictionary *)self->super._eventDictionary setObject:v5 forKeyedSubscript:@"pipeConnectedDuration"];
    }

    if (self->_pipeDisconnectedDuration)
    {
      v6 = [NSNumber numberWithUnsignedLongLong:?];
      [(NSMutableDictionary *)self->super._eventDictionary setObject:v6 forKeyedSubscript:@"pipeDisconnectedDuration"];
    }
  }

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.lnkMgrbluetooth");
}

@end