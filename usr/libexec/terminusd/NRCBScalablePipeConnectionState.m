@interface NRCBScalablePipeConnectionState
- (id)description;
@end

@implementation NRCBScalablePipeConnectionState

- (id)description
{
  state = self->_state;
  if (state == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (state == 2)
  {
    v4 = 24;
LABEL_5:
    v5 = *(&self->super.isa + v4);
    nr_continuous_time();
    NRDiffMachTimeInSeconds();
    v7 = [[NSString alloc] initWithFormat:@"%.2fs", v6];
    goto LABEL_7;
  }

  v7 = @"<unknown>";
LABEL_7:
  v8 = [NSString alloc];
  v9 = self->_state;
  if (v9 >= 3)
  {
    v11 = v8;
    v10 = [[NSString alloc] initWithFormat:@"UnknownType(%lld)", v9];
    v8 = v11;
  }

  else
  {
    v10 = *(&off_1001FA900 + v9);
  }

  v12 = [v8 initWithFormat:@"NRBTPipe[%@ %@]", v10, v7];

  return v12;
}

@end