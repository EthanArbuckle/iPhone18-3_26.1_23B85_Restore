@interface NRNWActivityReporter
- (id)description;
- (void)dealloc;
@end

@implementation NRNWActivityReporter

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
      v7 = self->_nrUUID;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = _NRCopyLogObjectForNRUUID();
    v14 = 63;
    v15 = self;
    v12 = "";
    v13 = "[NRNWActivityReporter dealloc]";
    _NRLogWithArgs();
  }

  if (self)
  {
    self->_started = 0;
    objc_setProperty_nonatomic_copy(self, v6, 0, 40);
    v10 = self->_nrUUID;
    v11 = [(NRNWActivityReporter *)self description];
    sub_1000059A8(v10, 40003, v11, 0);
  }

  v16.receiver = self;
  v16.super_class = NRNWActivityReporter;
  [(NRNWActivityReporter *)&v16 dealloc:v12];
}

- (id)description
{
  v3 = [NSString alloc];
  if (self->_started)
  {
    v4 = "";
  }

  else
  {
    v4 = "!";
  }

  v5 = [v3 initWithFormat:@"[%llu %sreporting %@]", self->_identifier, v4, self->_nrUUID];

  return v5;
}

@end