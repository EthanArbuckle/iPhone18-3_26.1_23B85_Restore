@interface NRCBScalablePipeRegistrationState
- (NRCBScalablePipeRegistrationState)init;
@end

@implementation NRCBScalablePipeRegistrationState

- (NRCBScalablePipeRegistrationState)init
{
  v12.receiver = self;
  v12.super_class = NRCBScalablePipeRegistrationState;
  v2 = [(NRCBScalablePipeRegistrationState *)&v12 init];
  if (!v2)
  {
    v7 = sub_10002D6B4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_10002D6B4();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "[NRCBScalablePipeRegistrationState init]";
    sub_10002D6B4();
    _NRLogAbortWithPack();
  }

  v3 = v2;
  v4 = objc_alloc_init(NSMutableSet);
  connectedPipes = v3->_connectedPipes;
  v3->_connectedPipes = v4;

  return v3;
}

@end