@interface MLRXPCActivityTaskWithLockedDevice
- (NSString)description;
- (id)criteria;
- (void)startTaskWithCompletion:(id)completion;
@end

@implementation MLRXPCActivityTaskWithLockedDevice

- (NSString)description
{
  identifier = [(MLRXPCActivityTaskWithLockedDevice *)self identifier];
  activity = [(MLRXPCActivityTaskWithLockedDevice *)self activity];
  criteria = [(MLRXPCActivityTaskWithLockedDevice *)self criteria];
  v6 = [NSString stringWithFormat:@"identifier=%@, activity=%@, criteria=%@", identifier, activity, criteria];

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

- (void)startTaskWithCompletion:(id)completion
{
  completionCopy = completion;
  GarbageCollectAllRecords();
  completionCopy[2](completionCopy, 0);
}

@end