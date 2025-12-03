@interface NRBluetoothPairer
- (id)description;
- (void)dealloc;
@end

@implementation NRBluetoothPairer

- (void)dealloc
{
  if (qword_100228EF8 != -1)
  {
    dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    v5 = 65;
    selfCopy = self;
    v3 = "";
    v4 = "[NRBluetoothPairer dealloc]";
    _NRLogWithArgs();
  }

  v7.receiver = self;
  v7.super_class = NRBluetoothPairer;
  [(NRBluetoothPairer *)&v7 dealloc:v3];
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = "pairing";
  if (self->_isUnpairRequest)
  {
    v4 = "unpairing";
  }

  v5 = [v3 initWithFormat:@"NRBTPairer[%llu %s %@]", self->_identifier, v4, self->_nrUUID];

  return v5;
}

@end