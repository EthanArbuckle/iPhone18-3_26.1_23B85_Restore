@interface NRBabelLinkFake
- (NRBabelLinkFake)initWithName:(id)a3;
@end

@implementation NRBabelLinkFake

- (NRBabelLinkFake)initWithName:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NRBabelLinkFake;
  v5 = [(NRBabelLinkFake *)&v17 init];
  if (!v5)
  {
    v12 = sub_1000CB9A8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = sub_1000CB9A8();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v15 = *__error();
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "[NRBabelLinkFake initWithName:]";
    sub_1000CB9A8();
    _NRLogAbortWithPack();
  }

  v6 = v5;
  name = v5->_name;
  v5->_name = v4;
  v8 = v4;

  v9 = objc_alloc_init(NSMutableArray);
  fakeInterfaces = v6->_fakeInterfaces;
  v6->_fakeInterfaces = v9;

  v6->_fakeLinkIndex = atomic_fetch_add_explicit(word_1002284B8, 1u, memory_order_relaxed);
  return v6;
}

@end