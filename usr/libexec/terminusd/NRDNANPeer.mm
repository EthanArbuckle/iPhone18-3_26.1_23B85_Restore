@interface NRDNANPeer
- (NRDNANPeer)init;
- (id)description;
@end

@implementation NRDNANPeer

- (id)description
{
  v3 = [NSString alloc];
  if (self->_isInitiator)
  {
    v4 = "I";
  }

  else
  {
    v4 = "R";
  }

  peerInstanceID = self->_peerInstanceID;
  identifier = self->_identifier;
  hostname = [(NWAddressEndpoint *)self->_peerEndpoint hostname];
  v8 = [v3 initWithFormat:@"NRDNANPeer[%u, %s, id %u, %@]", identifier, v4, peerInstanceID, hostname];

  return v8;
}

- (NRDNANPeer)init
{
  v8.receiver = self;
  v8.super_class = NRDNANPeer;
  result = [(NRDNANPeer *)&v8 init];
  if (!result)
  {
    v3 = sub_10014A248();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = sub_10014A248();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v6 = *__error();
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "[NRDNANPeer init]";
    sub_10014A248();
    _NRLogAbortWithPack();
  }

  result->_identifier = ++dword_100229390;
  return result;
}

@end