@interface NRAnalytics
- (NRAnalytics)init;
@end

@implementation NRAnalytics

- (NRAnalytics)init
{
  v12.receiver = self;
  v12.super_class = NRAnalytics;
  v2 = [(NRAnalytics *)&v12 init];
  if (!v2)
  {
    v7 = sub_100155154();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_100155154();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "[NRAnalytics init]";
    sub_100155154();
    _NRLogAbortWithPack();
  }

  v3 = v2;
  v4 = objc_alloc_init(NSMutableDictionary);
  eventDictionary = v3->_eventDictionary;
  v3->_eventDictionary = v4;

  return v3;
}

@end