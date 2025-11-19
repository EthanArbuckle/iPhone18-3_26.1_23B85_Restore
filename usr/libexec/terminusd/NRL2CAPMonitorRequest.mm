@interface NRL2CAPMonitorRequest
- (id)description;
@end

@implementation NRL2CAPMonitorRequest

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"NRL2CAPMonitorRequest[psm: %u, channels: %@]", self->_psm, self->_connectedChannels];

  return v2;
}

@end