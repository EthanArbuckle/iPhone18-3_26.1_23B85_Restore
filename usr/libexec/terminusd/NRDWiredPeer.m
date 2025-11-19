@interface NRDWiredPeer
- (NRDWiredPeer)init;
@end

@implementation NRDWiredPeer

- (NRDWiredPeer)init
{
  v12.receiver = self;
  v12.super_class = NRDWiredPeer;
  v2 = [(NRDWiredPeer *)&v12 init];
  if (!v2)
  {
    v7 = sub_1000E2538();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_1000E2538();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "[NRDWiredPeer init]";
    sub_1000E2538();
    _NRLogAbortWithPack();
  }

  v3 = v2;
  v4 = objc_alloc_init(NSMutableDictionary);
  interfaceToPeerAddressDictionary = v3->_interfaceToPeerAddressDictionary;
  v3->_interfaceToPeerAddressDictionary = v4;

  return v3;
}

@end