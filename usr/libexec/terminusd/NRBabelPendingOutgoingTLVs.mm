@interface NRBabelPendingOutgoingTLVs
- (NRBabelPendingOutgoingTLVs)initWithInterval:(unsigned __int16)a3;
@end

@implementation NRBabelPendingOutgoingTLVs

- (NRBabelPendingOutgoingTLVs)initWithInterval:(unsigned __int16)a3
{
  v3 = a3;
  v15.receiver = self;
  v15.super_class = NRBabelPendingOutgoingTLVs;
  v4 = [(NRBabelPendingOutgoingTLVs *)&v15 init];
  if (!v4)
  {
    v10 = sub_1000CB9A8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = sub_1000CB9A8();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v13 = *__error();
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "[NRBabelPendingOutgoingTLVs initWithInterval:]";
    sub_1000CB9A8();
    _NRLogAbortWithPack();
  }

  v5 = v4;
  +[NSDate timeIntervalSinceReferenceDate];
  v5->_minTime = v6 + ((429496730 * (9 * v3)) >> 32) * 0.01;
  v5->_maxTime = v6 + v3 * 0.01;
  v7 = objc_alloc_init(NSMutableArray);
  tlvs = v5->_tlvs;
  v5->_tlvs = v7;

  return v5;
}

@end