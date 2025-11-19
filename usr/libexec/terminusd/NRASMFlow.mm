@interface NRASMFlow
- (id)description;
@end

@implementation NRASMFlow

- (id)description
{
  v3 = objc_alloc_init(NSMutableArray);
  client = self->_client;
  v5 = nw_agent_client_copy_endpoint();
  [v3 addObject:v5];
  v6 = sub_10011903C(self);

  if (v6)
  {
    v7 = sub_10011903C(self);
    [v3 addObject:v7];
  }

  if (self->_incoming)
  {
    [v3 addObject:@"incoming"];
  }

  if (self->_pendingTeardown)
  {
    [v3 addObject:@"teardown"];
  }

  v8 = [NSString alloc];
  v9 = [v3 componentsJoinedByString:{@", "}];
  v10 = [v8 initWithFormat:@"[%@]", v9];

  return v10;
}

@end