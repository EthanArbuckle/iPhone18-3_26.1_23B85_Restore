@interface MLRXPCActivityTaskWithLockedDevice
- (NSString)description;
- (id)criteria;
- (void)startTaskWithCompletion:(id)a3;
@end

@implementation MLRXPCActivityTaskWithLockedDevice

- (NSString)description
{
  v3 = [(MLRXPCActivityTaskWithLockedDevice *)self identifier];
  v4 = [(MLRXPCActivityTaskWithLockedDevice *)self activity];
  v5 = [(MLRXPCActivityTaskWithLockedDevice *)self criteria];
  v6 = [NSString stringWithFormat:@"identifier=%@, activity=%@, criteria=%@", v3, v4, v5];

  return v6;
}

- (id)criteria
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_string(v2, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_ALLOW_BATTERY, 0);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_string(v2, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION, XPC_ACTIVITY_NETWORK_TRANSFER_BIDIRECTIONAL);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_CPU_INTENSIVE, 1);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_MEMORY_INTENSIVE, 1);

  return v2;
}

- (void)startTaskWithCompletion:(id)a3
{
  v3 = a3;
  GarbageCollectAllRecords();
  v3[2](v3, 0);
}

@end