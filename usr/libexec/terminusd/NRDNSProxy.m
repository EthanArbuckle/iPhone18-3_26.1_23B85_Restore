@interface NRDNSProxy
- (NRDNSProxy)initWithQueue:(id)a3 nrUUID:(id)a4 delegate:(id)a5;
- (void)cancel;
- (void)dealloc;
- (void)start;
@end

@implementation NRDNSProxy

- (void)cancel
{
  if (self)
  {
    nrUUID = self->_nrUUID;
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (self)
    {
      v6 = self->_nrUUID;
    }

    v7 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  if (self)
  {
    self->_cancelled = 1;
  }
}

- (void)dealloc
{
  if (self)
  {
    nrUUID = self->_nrUUID;
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (self)
    {
      v6 = self->_nrUUID;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = _NRCopyLogObjectForNRUUID();
    v11 = 90;
    v12 = self;
    v9 = "";
    v10 = "[NRDNSProxy dealloc]";
    _NRLogWithArgs();
  }

  if (!self || !self->_cancelled)
  {
    [(NRDNSProxy *)self cancel:v9];
  }

  v13.receiver = self;
  v13.super_class = NRDNSProxy;
  [(NRDNSProxy *)&v13 dealloc:v9];
}

- (void)start
{
  if (self)
  {
    if (self->_started)
    {
      return;
    }

    nrUUID = self->_nrUUID;
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (self)
    {
      v6 = self->_nrUUID;
    }

    v7 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  if (self)
  {
    self->_started = 1;
  }
}

- (NRDNSProxy)initWithQueue:(id)a3 nrUUID:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = NRDNSProxy;
  v11 = [(NRDNSProxy *)&v22 init];
  if (!v11)
  {
    v17 = sub_1000233CC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v19 = sub_1000233CC();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v20 = *__error();
    v21 = _os_log_pack_fill();
    *v21 = 136446210;
    *(v21 + 4) = "[NRDNSProxy initWithQueue:nrUUID:delegate:]";
    sub_1000233CC();
    _NRLogAbortWithPack();
  }

  v12 = v11;
  v11->_identifier = atomic_fetch_add_explicit(&qword_100228188, 1uLL, memory_order_relaxed);
  queue = v11->_queue;
  v11->_queue = v8;
  v14 = v8;

  nrUUID = v12->_nrUUID;
  v12->_nrUUID = v9;

  objc_storeWeak(&v12->_delegate, v10);
  v12->_state = 0;

  return v12;
}

@end