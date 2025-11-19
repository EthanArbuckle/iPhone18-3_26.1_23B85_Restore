@interface NRBabelInstanceFake
- (NRBabelInstanceFake)initWithName:(id)a3;
- (id)description;
@end

@implementation NRBabelInstanceFake

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"{%@} ", self->_name];

  return v2;
}

- (NRBabelInstanceFake)initWithName:(id)a3
{
  v4 = a3;
  v6 = a3;
  v27.receiver = self;
  v27.super_class = NRBabelInstanceFake;
  v7 = [(NRBabelInstance *)&v27 init];
  if (v7)
  {
    v8 = v7;
    v3 = 96;
    objc_storeStrong(&v7->_name, v4);
    [(NRBabelInstance *)v8 setRouterID:bswap64(atomic_fetch_add_explicit(&qword_1002284C0, 1uLL, memory_order_relaxed))];
    [(NRBabelInstance *)v8 setNodeSeqno:0];
    v4 = &qword_100229000;
    if (qword_100229100 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = sub_1000CB9A8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v23 = sub_1000CB9A8();
      _NRLogWithArgs();
    }

    v6 = _os_log_pack_size();
    v8 = (&v26 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = *__error();
    v25 = _os_log_pack_fill();
    *v25 = 136446210;
    *(v25 + 4) = "[NRBabelInstanceFake initWithName:]";
    sub_1000CB9A8();
    _NRLogAbortWithPack();
  }

  dispatch_once(&qword_100229100, &stru_1001FB6C8);
LABEL_3:
  if (_NRLogIsLevelEnabled())
  {
    if (v4[32] != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v9 = *(&v8->super.super.isa + v3);
    v10 = qword_1002290F8;
    v11 = [(NRBabelInstance *)v8 routerID];
    v12 = bswap64(v11);
    if (v12 > 0xFFFE)
    {
      v14 = HIWORD(v11);
      v15 = HIDWORD(v11);
      v16 = v11;
      v17 = [NSString alloc];
      v18 = bswap32(v16);
      v13 = [v17 initWithFormat:@"<%x:%x:%x:%x>", HIWORD(v18), v18, bswap32(v15) >> 16, __rev16(v14)];
    }

    else
    {
      v13 = [[NSString alloc] initWithFormat:@"<%llx>", v12];
    }

    v19 = v13;
    _NRLogWithArgs();
  }

  return v8;
}

@end