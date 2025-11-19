@interface NRDevicePairingDirector
- (NRDevicePairingDirector)init;
@end

@implementation NRDevicePairingDirector

- (NRDevicePairingDirector)init
{
  v14.receiver = self;
  v14.super_class = NRDevicePairingDirector;
  v2 = [(NRDevicePairingDirector *)&v14 init];
  if (!v2)
  {
    v9 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = sub_100123258();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v12 = *__error();
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "[NRDevicePairingDirector init]";
    sub_100123258();
    _NRLogAbortWithPack();
  }

  v3 = v2;
  v4 = sub_100003490();
  queue = v3->_queue;
  v3->_queue = v4;

  v6 = objc_alloc_init(NSMutableDictionary);
  devicePairingConnections = v3->_devicePairingConnections;
  v3->_devicePairingConnections = v6;

  return v3;
}

@end